# Template de Enriquecimiento — Diccionario Solop ERP

## Estructura para Ventanas

```markdown
---
title: [Nombre del Componente en Español]
category: Documentation
star: 9
sticky: 9
article: false
---

# [Nombre del Componente]

## Descripción

La ventana **[Nombre]** permite [descripción funcional accesible].
[Contexto adicional extraído de transcripciones: por qué existe, qué problema resuelve].

## ¿Cuándo se utiliza?

Se utiliza cuando se necesita:

- [Caso de uso 1 — extraído de transcripciones]
- [Caso de uso 2]
- [Caso de uso 3]

## Acceso

Menú: [Ruta completa del menú obtenida de get_menu_tree]

## Pestañas

### [Nombre de Pestaña 1]

[Descripción resumida de la pestaña y su propósito].

- **[Campo Clave 1]**
  [Para qué sirve este campo, en lenguaje simple].

- **[Campo Clave 2]**
  [Para qué sirve este campo].

### [Nombre de Pestaña 2] (si aplica)

[Descripción de qué contiene y para qué se usa].

## Acciones disponibles

- **[Nombre de Acción]**
  [Qué hace esta acción].

## Flujo del proceso

### 1. [Nombre del paso]

[Descripción del paso basada en las transcripciones de capacitación].

### 2. [Nombre del paso]

[Descripción del paso].

### 3. [Nombre del paso]

[Descripción del paso].

## Consideraciones importantes

- [Prerrequisito o tip extraído de las transcripciones]
- [Advertencia o punto a tener en cuenta]
- [Relación con otros componentes]

## Ejemplo de uso

[Escenario concreto mencionado en las transcripciones, con datos anonimizados.
Describir desde el inicio hasta el resultado esperado.]
```

---

## Estructura para Procesos

```markdown
---
title: [Nombre del Proceso en Español]
category: Documentation
star: 9
sticky: 9
article: false
---

# [Nombre del Proceso]

## Descripción

El proceso **[Nombre]** permite [descripción funcional accesible].
[Contexto adicional: cuándo se ejecuta, si es automático o manual].

## ¿Cuándo se utiliza?

Se utiliza cuando se necesita:

- [Caso de uso 1]
- [Caso de uso 2]

## Acceso

Menú: [Ruta completa del menú obtenida de get_menu_tree]

## Parámetros

| Parámetro | Descripción | Obligatorio |
|---|---|---|
| [Nombre del parámetro] | [Descripción accesible] | Sí / No |
| [Nombre del parámetro] | [Descripción accesible] | Sí / No |

## Flujo del proceso

### 1. [Nombre del paso]

[Descripción del paso].

### 2. [Nombre del paso]

[Descripción del paso].

## Consideraciones importantes

- [Prerrequisito]
- [Advertencia]

## Ejemplo de uso

[Escenario concreto de las transcripciones.]
```

---

## Estructura para Browsers

```markdown
---
title: [Nombre del Browser en Español]
category: Documentation
star: 9
sticky: 9
article: false
---

# [Nombre del Browser]

## Descripción

El navegador **[Nombre]** permite [descripción funcional].

## ¿Cuándo se utiliza?

Se utiliza cuando se necesita:

- [Caso de uso 1]
- [Caso de uso 2]

## Acceso

Menú: [Ruta del menú]

## Criterios de búsqueda

- **[Filtro 1]** — [Qué filtra]
- **[Filtro 2]** — [Qué filtra]

## Columnas de resultado

| Columna | Descripción |
|---|---|
| [Nombre] | [Qué muestra] |
| [Nombre] | [Qué muestra] |

## Acciones disponibles

- **[Acción]** — [Qué hace al seleccionar registros]

## Ejemplo de uso

[Escenario de uso concreto.]
```

---

## Reglas de Contenido

### Lo que SÍ incluir
- Descripciones en lenguaje simple y accesible
- Casos de uso reales extraídos de transcripciones
- Flujos paso a paso basados en las demos del video
- Ejemplos concretos con datos anonimizados
- Tips y advertencias mencionados por el capacitador
- Referencias cruzadas a componentes relacionados con links

### Lo que NO incluir
- Tablas de campos para ventanas (regla de memoria del proyecto)
- Datos personales reales (anonimizar)
- Jerga técnica innecesaria (AD_Table, AD_Column, etc.)
- IDs internos del diccionario en el contenido visible
- Comentarios sobre bugs o problemas temporales
- Muletillas o correcciones del capacitador

### Tono
- Formal pero accesible
- Tercera persona o impersonal
- Verbos en presente indicativo
- Evitar jerga técnica innecesaria
