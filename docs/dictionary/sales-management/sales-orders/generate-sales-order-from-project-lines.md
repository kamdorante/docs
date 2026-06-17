---
title: Generar Orden de Venta desde Líneas de Proyecto
category: Documentation
star: 9
sticky: 9
article: false
---

# Generar Orden de Venta desde Líneas de Proyecto

## Descripción

El proceso **Generar Orden de Venta (desde Líneas)** permite emitir una orden de venta a un cliente tomando como base las **Fases del Proyecto** (o de la Orden de Trabajo). El proceso soporta dos modos de funcionamiento:

- **Una orden por fase**: comportamiento clásico; se genera una orden de venta por cada fase seleccionada.
- **Una sola orden consolidada**: con el parámetro **Consolidado en un Documento** marcado, todas las fases seleccionadas se agrupan en **una única orden de venta** con tantas líneas como fases (o tareas) correspondan.

Esto resuelve el caso típico de proyectos/órdenes de trabajo donde se necesita facturar al cliente un único documento con el detalle planeado de varias fases, en lugar de gestionar múltiples órdenes pequeñas.

## ¿Cuándo se utiliza?

Se utiliza cuando la organización necesita:

- Emitir al cliente la orden de venta correspondiente al trabajo planeado en un proyecto u orden de trabajo.
- Consolidar en un solo documento varias fases del proyecto que se entregarán o facturarán al mismo cliente.
- Generar órdenes parciales seleccionando solo las fases que ya están listas para facturar.
- Mantener la trazabilidad entre el planeamiento del proyecto (cantidades y precios planeados por fase) y las órdenes de venta emitidas.

## Acceso

**Menú:** Gestión de Ventas → Proyectos → **Proyectos** (o **Orden de Trabajo**) → abrir el registro → pestaña **Fase del Proyecto** → acción **Generar Orden de Venta (desde Líneas)**.

El proceso se ejecuta desde la **pestaña de Fase del Proyecto en modo multi-registro**: se seleccionan una o varias fases y se lanza la acción.

## Configuración previa

Para que la orden generada salga correctamente, cada **Fase del Proyecto** debe tener bien definido:

- **Producto** (en caso de querer que la fase se convierta directamente en línea de la orden).
- **Regla de Factura** = *Cantidad de Producto* (también en ese caso).
- **Cantidad Planificada** correcta.
- **Precio Planificado** correcto.

Adicionalmente, el proyecto u orden de trabajo debe tener su cliente, su localización y su moneda definidos en la cabecera.

::: tip Regla operativa clave
El **comportamiento por fase** depende de su configuración:

- **Fase con Regla de Factura = Cantidad de Producto y con Producto asignado** → la **fase** se convierte directamente en línea de la orden (una línea por fase).
- **Fase sin esa regla o sin producto** → la orden se arma con las **líneas hijas (tareas)** asociadas a la fase.
:::

## Pestañas

### Fase del Proyecto

Es la pestaña desde la cual se lanza el proceso. Para cada fase es relevante:

- **Producto**
  Producto o servicio que representa la fase. Si está cargado y la fase usa Regla de Factura = *Cantidad de Producto*, esta fase se convierte en línea directa de la orden.

- **Regla de Factura**
  Determina si la fase se factura por sí misma (*Cantidad de Producto*) o si la facturación se delega a sus líneas hijas (tareas).

- **Cantidad Planificada**
  Cantidad que se traslada a la línea de la orden.

- **Precio Planificado**
  Precio unitario que se traslada a la línea de la orden.

- **Monto Planificado**
  Total de la fase. Para que la orden generada sea coherente con el planeamiento, este monto debe coincidir con *Cantidad Planificada × Precio Planificado*.

## Acciones disponibles

- **Generar Orden de Venta (desde Líneas)**
  Lanza el proceso de generación. Solicita los parámetros descritos abajo y crea la(s) orden(es) de venta resultante(s).

## Parámetros

| Parámetro | Descripción | Tipo | Obligatorio |
|-----------|-------------|------|-------------|
| Tipo de Documento | Tipo de documento de la orden a generar (por ejemplo, *Orden de Venta al Cliente*) | Tabla Directa | Sí |
| Fecha del Documento | Fecha que llevará la orden de venta generada | Fecha | Sí |
| Consolidado en un Documento | Si está marcado, todas las fases seleccionadas se agrupan en **una sola** orden de venta. Si está desmarcado, se genera **una orden por fase** | Casilla de Verificación | No |

## Flujo del proceso

### 1. Verificar el planeamiento de las fases

Abrir el proyecto u orden de trabajo. En la pestaña **Fase del Proyecto**, validar para cada fase a procesar:

- Producto asignado (si aplica).
- Regla de Factura correcta.
- Cantidad Planificada y Precio Planificado consistentes con el Monto Planificado.

Si hay inconsistencias, corregirlas antes de continuar: el proceso usa estos valores tal cual están.

### 2. Pasar la pestaña a multi-registro

Desde la pestaña **Fase del Proyecto**, cambiar a **vista multi-registro** (grilla) para poder seleccionar varias fases simultáneamente.

### 3. Seleccionar las fases a procesar

Marcar las casillas de las fases que se quieren incluir en la orden:

- **Todas** las fases, si la idea es emitir la orden completa del proyecto.
- **Solo las necesarias**, si se quiere emitir una orden parcial (por ejemplo, una orden por las fases ya entregables).

### 4. Lanzar el proceso

Ejecutar la acción **Generar Orden de Venta (desde Líneas)** y completar los parámetros:

- **Tipo de Documento**: seleccionar el tipo de orden de venta deseado.
- **Fecha del Documento**: indicar la fecha. Debe permitir generar la orden (sin períodos cerrados ni restricciones por calendario).
- **Consolidado en un Documento**: marcar para una sola orden consolidada; dejar sin marcar para generar una orden por fase.

### 5. Revisar el resultado

El sistema procesa las fases y devuelve el número (o números) de la orden generada. Abrir la orden:

- **Consolidado marcado**: una única orden con tantas líneas como fases (o tareas) correspondan, cada una con su producto, cantidad, precio y total.
- **Consolidado desmarcado**: varias órdenes, una por fase.

### 6. Continuar el flujo estándar

A partir de aquí, la(s) orden(es) sigue(n) el ciclo normal: completar, entregar, facturar y despachar según corresponda.

## Ejemplo de uso

Una orden de trabajo tiene dos fases planeadas:

| Fase | Producto | Cantidad Planificada | Precio Planificado | Monto Planificado |
|------|----------|----------------------|--------------------|-------------------|
| *Tarjeta Personal* | Tarjeta Personal | 75 | 10 | 750 |
| *Tríptico* | Tríptico | 1 | 900 | 900 |

**Caso A — Orden consolidada (Consolidado en un Documento = Sí):**

1. Abrir la orden de trabajo y pasar la pestaña *Fase del Proyecto* a multi-registro.
2. Seleccionar ambas fases.
3. Ejecutar **Generar Orden de Venta (desde Líneas)** con *Tipo de Documento = Orden de Venta al Cliente*, *Fecha = hoy*, *Consolidado en un Documento = Sí*.
4. El sistema genera **una sola** orden de venta con dos líneas:
   - Tarjeta Personal × 75 a 10 = 750.
   - Tríptico × 1 a 900 = 900.

**Caso B — Una orden por fase (Consolidado en un Documento = No):**

1. Misma selección.
2. Ejecutar el proceso con *Consolidado en un Documento = No*.
3. El sistema genera **dos órdenes** separadas, una por cada fase, cada una con su única línea.

## Consideraciones importantes

- El comportamiento de cada fase depende de su configuración: **Regla de Factura = Cantidad de Producto + Producto asignado** convierte la fase en línea; en caso contrario, la orden se arma con las **líneas hijas (tareas)** de esa fase.
- El **Monto Planificado** de la fase debe coincidir con *Cantidad × Precio*. Si no coincide, la orden generada va a reflejar *Cantidad × Precio*, no el monto planeado; es la causa más común de diferencias entre lo planeado y lo facturado.
- Se puede ejecutar el proceso de forma **parcial**: seleccionar solo las fases que se quieren facturar en este momento y dejar el resto para una emisión posterior. Cada nueva ejecución genera una nueva orden con las fases seleccionadas.
- El parámetro **Consolidado en un Documento** no altera la regla de fase: si una fase sin Regla de Factura *Cantidad de Producto* se incluye en una orden consolidada, sus **tareas hijas** son las que aparecen como líneas, no la fase en sí.
- Si la **Fecha del Documento** cae en un período cerrado o fuera del calendario habilitado, el proceso falla con error. Usar una fecha permitida.
- El proceso usa el **Tipo de Documento** indicado en el parámetro; conviene tener un tipo dedicado para órdenes generadas desde proyectos para identificarlas fácilmente en consultas y reportes.
- Tras generar la orden, el seguimiento del proyecto continúa en sus pestañas habituales. La emisión de orden no afecta automáticamente el avance ni el porcentaje de completado de la fase; esos campos se gestionan por separado.

## Ventanas relacionadas

- [Proyectos](../projects/project)
- [Orden de Trabajo](../projects/work-order)
- [Navegador de Líneas de Proyectos](../projects/project-lines-browser)
- [Detalle de Avance de Proyecto](../projects/project-advance-detail)
- [Orden de Venta](sales-order)
- [Generar Orden desde Proyecto](generate-order-from-project)
- [Crear OC desde Proyectos](create-order-po-from-projects)
