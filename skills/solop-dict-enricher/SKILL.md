---
name: solop-dict-enricher
description: >
  Agente que enriquece la documentación del diccionario de Solop ERP cruzando transcripciones de
  capacitación con el diccionario de aplicación (MCP). Lee transcripciones (.srt/.vtt/.txt), identifica
  ventanas, procesos y browsers mencionados, los verifica en el MCP, y genera/actualiza documentación
  user-friendly en docs/dictionary/. También actualiza el SQL de DocBaseURL.
  Triggers: "enriquecer documentación", "documentar desde transcripciones", "enriquecer diccionario",
  "cruzar transcripciones con MCP", "documentar módulo desde videos".
---

# Solop Dict Enricher

Agente especializado en enriquecer la documentación del diccionario de Solop ERP a partir de transcripciones de videos de capacitación, cruzando el contenido con el diccionario de aplicación via MCP.

## Flujo de Interacción

```
USUARIO: "Enriquece la documentación usando las transcripciones en /ruta/directorio/"
   │
   ▼
AGENTE: Escanea directorio, lee transcripciones, extrae componentes mencionados
   │
   ▼
AGENTE: Busca cada componente en el MCP (search_windows, search_processes, etc.)
   │
   ▼
AGENTE: "Encontré estos componentes en el diccionario:
         | Componente | Tipo | ID | Archivo | Acción |
         | Tipo de Permiso | Ventana | W:53325 | leave-type.md | CREAR |
         ¿Es correcto?"
   │
   ▼
USUARIO: "Sí" / "Agrega/quita X"
   │
   ▼
AGENTE: Genera docs user-friendly + actualiza index + actualiza SQL
```

## Qué Pregunta el Agente

| Pregunta | Cuándo |
|----------|--------|
| ¿Dónde están las transcripciones? | Si no se indicó ruta |
| ¿Es correcta esta lista de componentes? | **Siempre** (antes de generar) |
| ¿En qué módulo/subcarpeta? | Si no es evidente del menú MCP |

## Qué Deduce Automáticamente

| Elemento | Lo deduce de... |
|----------|-----------------|
| Componentes ERP mencionados | Transcripciones: "tipo de permiso", "solicitud de permiso", etc. |
| IDs del diccionario | MCP: search_windows, search_processes, search_browsers |
| Tabs y parámetros | MCP: get_window, get_process (includeParameters=true) |
| Ruta de menú | MCP: get_menu_tree + get_translations |
| Si archivo existe o debe crearse | Buscar en docs/dictionary/ |
| Flujo de uso, ejemplos, consideraciones | Transcripciones: pasos, tips, warnings |
| Nombre de archivo | Nombre inglés del componente MCP → kebab-case |

---

## Proceso Completo (7 Pasos)

### PASO 1: Escanear Transcripciones

```
├── Leer TODOS los archivos .srt, .vtt, .txt, .md del directorio indicado
├── Procesar transcripciones: eliminar timestamps y metadata de subtítulos
├── Anonimizar datos sensibles (nombres de empresas, RIF, cédulas, etc.)
│   └── Usar: python skills/solop-docs-generator/scripts/anonymize_data.py
└── Extraer menciones de componentes ERP:
    ├── Buscar: "ventana", "tipo de permiso", "solicitud", "proceso", "reporte"
    ├── Buscar: menús ("vamos a...", "en el menú...")
    ├── Buscar: campos y configuraciones explicadas
    ├── Buscar: flujos ("primero...", "luego...", "después...")
    └── Buscar: tips ("importante", "tener en cuenta", "cuidado")
```

### PASO 2: Identificar Componentes en MCP

Para cada componente detectado en las transcripciones:

```
├── search_windows(query="nombre en español del componente")
├── search_processes(query="nombre en español")
├── search_browsers(query="nombre en español")
│
├── Si se encuentra, obtener datos completos:
│   ├── get_window(windowId=X, includeFields=false) → tabs
│   ├── get_process(processId=X, includeParameters=true) → parámetros
│   ├── get_translations(recordId=X, tableName="AD_Window"|"AD_Process"|"AD_Browse")
│   └── get_menu_tree(parentId=menú_padre) → ruta de acceso + AD_Menu_ID
│
└── Si NO se encuentra → DESCARTAR (no crear archivo)
```

**Regla fundamental**: Solo se crean archivos para componentes que existen en el diccionario MCP. Si una transcripción menciona algo que no tiene AD_Window, AD_Process o AD_Browse, no se documenta como archivo independiente.

### PASO 3: Verificar Archivos Existentes

```
├── Para cada componente encontrado en MCP:
│   ├── Buscar si ya existe un .md en docs/dictionary/
│   │   └── Buscar por: nombre de archivo, título en frontmatter, o grep del nombre
│   ├── Si existe → marcar como MODIFICAR
│   ├── Si no existe → marcar como CREAR
│   └── Si es pestaña de otro componente → marcar como CROSS-REF
└── Determinar módulo/subcarpeta:
    └── Usar ruta de menú del MCP para deducir ubicación
```

### PASO 4: Confirmar con Usuario

Presentar tabla resumen y pedir confirmación:

```markdown
| Componente | Tipo | MCP ID | Archivo | Acción |
|---|---|---|---|---|
| Tipo de Permiso | Ventana | W:53325 | leave-management/leave-type.md | CREAR |
| Motivos de Permiso | Ventana | W:53324 | leave-management/leave-reasons.md | CREAR |
| Solicitud de Permiso | Ventana | W:53629 | leave-management/leave-request.md | CREAR |
| Crear Permiso Repetido | Proceso | P:54259 | leave-management/create-repeated-leave.md | CREAR |
| Detalle de Permiso | Tab de Empleado | — | employee/index.md | CROSS-REF |
```

### PASO 5: Generar Documentación

Para cada componente confirmado, usar el template `references/enrichment-template.md`:

**Para VENTANAS:**
- Descripción: combinar MCP help + contexto de transcripciones
- ¿Cuándo se utiliza?: extraer de transcripciones
- Acceso: ruta del menú MCP
- Pestañas: nombre + descripción resumida de cada tab (del MCP). **SIN tablas de campos**. Campos importantes como bullets con negrita
- Flujo del proceso: pasos extraídos de transcripciones
- Ejemplo de uso: escenario concreto de transcripciones
- Consideraciones: tips y warnings de transcripciones

**Para PROCESOS:**
- Todo lo anterior, más:
- Parámetros: tabla con nombre, descripción y obligatoriedad (del MCP). **SÍ se incluye tabla**

**Para BROWSERS:**
- Todo lo anterior, más:
- Columnas de resultado del MCP

**Para CROSS-REF (tabs de otras ventanas):**
- Agregar una nota en el archivo existente de la ventana padre, con link a la sección relevante

**Después de generar:**
- Actualizar `index.md` del módulo/subcarpeta con enlaces a los nuevos archivos
- Usar formato de tabla: `| [Nombre](./archivo) | Tipo | Descripción |`

### PASO 6: Actualizar SQL

Agregar al archivo `doc-base-url-migration.sql` existente en la raíz del proyecto:

```sql
-- === [Nombre del Módulo] ===

-- [Nombre componente] (AD_Window)
UPDATE AD_Window SET DocBaseURL = '/dictionary/modulo/subcarpeta/archivo' WHERE AD_Window_ID = X;

-- [Nombre componente] (AD_Process)
UPDATE AD_Process SET DocBaseURL = '/dictionary/modulo/subcarpeta/archivo' WHERE AD_Process_ID = X;

-- [Nombre componente] (AD_Menu)
UPDATE AD_Menu SET DocBaseURL = '/dictionary/modulo/subcarpeta/archivo' WHERE AD_Menu_ID = X;
```

Tablas a actualizar:
- `AD_Window` (columna DocBaseURL) — para ventanas
- `AD_Process` (columna DocBaseURL) — para procesos y reportes
- `AD_Browse` (columna DocBaseURL) — para browsers
- `AD_Workflow` (columna DocBaseURL) — para workflows
- `AD_Menu` (columna DocBaseURL) — para TODOS los componentes (via AD_Menu_ID del get_menu_tree)

### PASO 7: Validar

```
├── pnpm docs:build → debe compilar sin errores
├── Verificar que cada archivo creado tiene un ID MCP válido
├── Verificar que los links en index.md apuntan a archivos existentes
└── Verificar que doc-base-url-migration.sql tiene sintaxis SQL válida
```

---

## Extracción de Transcripciones

### Qué buscar en las transcripciones

| Sección del doc | Qué buscar | Palabras clave |
|---|---|---|
| Componentes | Nombres de ventanas/procesos | "ventana", "tipo de permiso", "solicitud", "proceso" |
| Menú | Rutas de acceso | "vamos a", "en el menú", "accedemos desde" |
| Descripción | Explicaciones de propósito | "esto sirve para", "esto define", "esto permite" |
| Campos clave | Configuraciones explicadas | "el campo X", "esto que dice", "aquí se coloca" |
| Flujo | Pasos secuenciales | "primero", "luego", "después", "ahora" |
| Ejemplo | Casos concretos | nombres de empleados, tipos de permiso, cantidades |
| Tips | Advertencias y requisitos | "importante", "tener en cuenta", "tiene que" |

### Qué NO extraer

- Datos personales reales (anonimizar)
- Comentarios coloquiales o muletillas
- Errores o correcciones del capacitador
- Referencias a bugs o problemas temporales

---

## Herramientas MCP Utilizadas

| Tool | Uso |
|---|---|
| `search_windows(query)` | Buscar ventanas por nombre |
| `search_processes(query)` | Buscar procesos/reportes por nombre |
| `search_browsers(query)` | Buscar browsers por nombre |
| `get_window(windowId, includeFields=false)` | Obtener tabs de una ventana |
| `get_process(processId, includeParameters=true)` | Obtener parámetros de un proceso |
| `get_browser(browserId)` | Obtener campos de un browser |
| `get_translations(recordId, tableName)` | Obtener nombre en español |
| `get_menu_tree(parentId)` | Obtener estructura de menú y AD_Menu_ID |

---

## Formato del Documento Generado

Ver `references/enrichment-template.md` para el template completo.

Reglas de formato:
- **Frontmatter**: title, category: Documentation, star: 9, sticky: 9, article: false
- **Nombres de archivo**: inglés, kebab-case (ej: `leave-type.md`)
- **Contenido**: español
- **Imágenes**: si hay capturas, ruta absoluta `/assets/img/docs/[modulo]/`
- **Links internos**: rutas relativas `./otro-archivo`
- **Tablas con montos**: columnas numéricas alineadas a la derecha
- **Tono**: formal pero accesible, tercera persona, presente indicativo

---

## Scripts Reutilizados

Del skill hermano `solop-docs-generator`:

| Script | Ubicación | Uso |
|---|---|---|
| `process_transcript.py` | `skills/solop-docs-generator/scripts/` | Limpiar timestamps de .srt/.vtt |
| `anonymize_data.py` | `skills/solop-docs-generator/scripts/` | Reemplazar datos sensibles |

---

## Checklist Final

- [ ] Transcripciones leídas y procesadas
- [ ] Datos sensibles anonimizados
- [ ] Componentes identificados en MCP con IDs válidos
- [ ] Lista de componentes confirmada con el usuario
- [ ] Componentes sin entrada en MCP descartados
- [ ] Documentos generados con template enrichment
- [ ] Ventanas SIN tablas de campos
- [ ] Procesos CON tabla de parámetros
- [ ] Nombres de archivos en inglés (kebab-case)
- [ ] Contenido en español
- [ ] index.md actualizado con enlaces
- [ ] doc-base-url-migration.sql actualizado (AD_Window + AD_Process + AD_Browse + AD_Menu)
- [ ] `pnpm docs:build` exitoso
