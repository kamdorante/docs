---
title: Reporte de Costo de Expediente
category: Documentation
star: 9
sticky: 9
article: false
---

# Reporte de Costo de Expediente

## Descripción

El reporte **Reporte de Costo de Expediente** presenta, por producto, una vista consolidada de costos, precios, existencias y ventas a una fecha determinada. Combina en una sola grilla la información de la **última importación** del producto (costo de origen y fecha), su **costo actual** según el motor de costeo, los **precios de las listas** configuradas para la organización y la **rotación** (ventas de los últimos 30 días, de los últimos 60 días y totales).

A diferencia de los [Reportes de Costos del Expediente de Importación](import-cost-reports), que se ejecutan desde un expediente puntual y muestran la apertura de costos de ese expediente, este reporte se ejecuta desde el menú y recorre **todos los productos** (o los que se filtren), tomando para cada uno el último expediente de importación anterior a la fecha indicada. Es la herramienta pensada para el área comercial al momento de revisar precios y márgenes frente al costo de reposición.

Para que el reporte encuentre rápidamente los expedientes de cada producto, el sistema mantiene la relación **producto ↔ expediente** en la pestaña [Expediente de Producto](../../material-management/material-rules/product#expediente-de-producto) de la ventana **Producto**.

<!-- ![Resultado del Reporte de Costo de Expediente](/assets/img/docs/purchase-management/expedient-cost-report-result.png) -->

## ¿Cuándo se utiliza?

Se utiliza cuando la organización necesita:

- Comparar el costo de la última importación de cada producto con su costo actual.
- Revisar los precios de venta (distribuidor, mayorista y consumidor final) frente al costo del producto.
- Conocer la última fecha de importación y la última fecha de venta de cada producto.
- Analizar la rotación: existencias, ventas de los últimos 30 y 60 días y ventas totales.
- Obtener la misma información a una **fecha pasada**, para reconstruir cómo estaba el producto en ese momento.
- Ver los montos expresados en otra moneda (por ejemplo, dólares) además de la moneda local.

## Acceso

Menú: **Gestión de Importación y Exportación → Reporte de Costo de Expediente**

## Configuración previa

Antes de ejecutar el reporte por primera vez se deben cumplir dos requisitos.

### 1. Listas de precios en la organización

En la ventana **Organización**, pestaña **Información de la Organización**, completar los tres campos de listas de precios que alimentan las columnas de precios del reporte:

- **Lista de Precios Distribuidor**
  Lista de la que se toma el *Precio Distribuidor*.

- **Lista de Precios Mayorista**
  Lista de la que se toma el *Precio Mayorista*.

- **Lista de Precios Detalle**
  Lista de la que se toma el *Precio Consumidor Final*.

<!-- ![Listas de precios en Información de la Organización](/assets/img/docs/purchase-management/expedient-cost-report-org-price-lists.png) -->

::: warning Configuración por organización
Los campos se configuran **en cada organización** que vaya a usar el reporte. Si una organización no tiene las listas asignadas, las columnas de precios salen vacías para esa organización.
:::

### 2. Relación producto ↔ expediente cargada

La pestaña **Expediente de Producto** de la ventana **Producto** debe tener datos. Esta relación se carga de dos formas:

- **Datos históricos:** con el script de carga inicial que se entrega junto con la funcionalidad. Se ejecuta una sola vez, al instalarla, y relaciona cada producto con los expedientes de importación/exportación en cuyas facturas aparece.
- **Datos nuevos:** automáticamente, cada vez que se **completa** un expediente de importación/exportación.

<!-- ![Pestaña Expediente de Producto en la ventana Producto](/assets/img/docs/purchase-management/expedient-cost-report-product-tab.png) -->

## Parámetros

| Parámetro | Descripción | Obligatorio |
|---|---|---|
| Esquema Contable | Esquema contable del que se toman los costos. Por defecto se propone el esquema principal de la instancia | No |
| Moneda | Moneda en la que se expresan los montos del reporte | No |
| Organización | Organización de la que se toman costos, precios, existencias y ventas | No |
| A Fecha | Fecha de corte del reporte. Todos los datos se calculan hasta esa fecha | No |
| Producto | Filtra un producto específico | No |
| Socio de Negocio | Filtra por el **proveedor predeterminado** del producto | No |
| Categoría del Producto | Filtra por categoría | No |
| Grupo de Producto | Filtra por grupo | No |
| Clase de Producto | Filtra por clase | No |
| Clasificación del Producto | Filtra por clasificación | No |

Los parámetros **Esquema Contable**, **Moneda**, **Organización** y **A Fecha** definen el contexto del cálculo; los demás son filtros para acotar los productos que se listan.

<!-- ![Parámetros del Reporte de Costo de Expediente](/assets/img/docs/purchase-management/expedient-cost-report-parameters.png) -->

## Columnas del reporte

| Columna | Descripción |
|---|---|
| Organización | Organización del cálculo |
| Proveedor Predeterminado | Proveedor marcado como predeterminado en el producto |
| Producto | Producto listado |
| Costo de Origen | Costo de material de la **última importación** del producto antes de la fecha del reporte |
| Costo Actual | Último costo del producto según el detalle de costos, **incluidos los costos adicionales** |
| Última Fecha de Importación | Fecha de la última importación del producto hasta la fecha del reporte |
| Cantidad en Existencia | Existencia del producto a la fecha del reporte |
| Precio Distribuidor | Precio del producto en la lista de precios distribuidor de la organización |
| Margen Distribuidor % | Margen del precio distribuidor sobre el costo, en porcentaje |
| Margen Distribuidor (Monto) | Margen del precio distribuidor sobre el costo, en monto |
| Precio Mayorista | Precio del producto en la lista de precios mayorista de la organización |
| Margen Mayorista % | Margen del precio mayorista sobre el costo, en porcentaje |
| Margen Mayorista (Monto) | Margen del precio mayorista sobre el costo, en monto |
| Precio Consumidor Final | Precio del producto en la lista de precios detalle de la organización |
| Margen % | Margen del precio consumidor final sobre el costo, en porcentaje |
| Margen (Monto) | Margen del precio consumidor final sobre el costo, en monto |
| Ventas Últimos 30 Días | Cantidad vendida en los 30 días anteriores a la fecha del reporte |
| Ventas Últimos 60 Días | Cantidad vendida en los 60 días anteriores a la fecha del reporte |
| Ventas Totales | Cantidad total vendida hasta la fecha del reporte |
| Última Fecha de Venta | Fecha de la última venta del producto hasta la fecha del reporte |

## Cómo se calcula cada dato

### Costo de Origen

Es el costo registrado en el **detalle de costos** para la línea de factura del producto vinculada al **último expediente de importación** anterior a la fecha del reporte. Representa lo que costó el producto en su última importación.

- Solo considera el costo de tipo **Material**; **no incluye** costos adicionales (flete, seguro, aranceles, etc.).
- Si el producto nunca se importó, o se importó pero la línea de factura no quedó relacionada con un expediente, la columna sale **vacía**.

### Costo Actual

Es el **último costo** registrado para el producto en el detalle de costos hasta la fecha del reporte. A diferencia del costo de origen, **incluye todos los costos adicionales** distribuidos al producto.

::: tip Filtro por esquema contable y organización
Tanto el costo de origen como el costo actual se filtran por el **esquema contable** y la **organización** indicados en los parámetros. Si la instancia tiene varios esquemas contables, cada uno puede mostrar costos distintos.
:::

### Existencias y ventas a una fecha

Para obtener la **cantidad en existencia** y las **ventas** a la fecha del reporte sin recorrer todo el historial, el sistema toma la última **instantánea de inventario** anterior a esa fecha y le suma las transacciones registradas desde la instantánea hasta el día del reporte. Con ese mismo cálculo se obtienen las ventas de los últimos 30 días, de los últimos 60 días y las ventas totales.

### Conversión de moneda

Cuando se elige una moneda distinta a la de los documentos, **todos los montos** (costos y precios) se convierten desde la moneda del documento original **a la tasa de cambio de la fecha del reporte**. Por eso, el mismo producto puede mostrar montos diferentes si el reporte se emite en fechas distintas: la variación se debe al tipo de cambio, no a un cambio en el costo.

## Flujo del proceso

### 1. Verificar la configuración

Confirmar que la organización tiene asignadas las tres listas de precios en **Información de la Organización** y que la pestaña **Expediente de Producto** de los productos tiene datos.

### 2. Abrir el reporte

Buscar **Reporte de Costo de Expediente** en el menú.

### 3. Completar los parámetros de contexto

- **Esquema Contable:** se propone automáticamente el esquema principal.
- **Moneda:** elegir la moneda en la que se quieren ver los montos.
- **Organización:** elegir la organización a analizar.
- **A Fecha:** indicar la fecha de corte (por ejemplo, la fecha del día).

### 4. Aplicar filtros (opcional)

Para acotar el resultado, filtrar por producto, proveedor predeterminado, categoría, grupo, clase o clasificación. Sin filtros, el reporte lista todos los productos de la organización y puede ocupar varias páginas.

### 5. Ejecutar y revisar

Ejecutar el reporte y revisar las columnas de costo, precios, fechas, existencias y ventas de cada producto.

## Ejemplo de uso

**Prueba con un solo producto, en moneda local:**

1. Abrir **Reporte de Costo de Expediente**.
2. Dejar el esquema contable propuesto, elegir moneda **UYU**, la organización a analizar y **A Fecha** = fecha del día.
3. En **Producto**, seleccionar un producto que tenga importaciones y al que se le hayan corregido los costos.
4. Ejecutar. El reporte muestra una línea con el costo de origen (material de la última importación), el costo actual (con costos adicionales), el proveedor predeterminado, los tres precios de lista, la última fecha de importación y de venta, la existencia y las ventas de 30 días, 60 días y totales.

**Mismo producto, en dólares:**

5. Ejecutar de nuevo con los mismos parámetros pero moneda **USD**. Costos y precios aparecen convertidos a dólares con la tasa de la fecha del reporte; las cantidades (existencia y ventas) y las fechas no cambian.

**Todos los productos:**

6. Ejecutar con moneda **UYU**, la organización y la fecha del día, **sin filtrar producto**. El reporte lista todos los productos. Muchos aparecen sin costo de origen porque nunca se importaron o porque sus facturas no están relacionadas con un expediente; algunos tampoco tienen costo actual.

**A una fecha anterior:**

7. Ejecutar para el mismo producto con una fecha pasada. Cambian la existencia y las ventas, porque se calculan hasta esa fecha.
8. Si la fecha elegida es **anterior a la primera importación** del producto, el costo de origen sale vacío, mientras que el costo actual, la existencia y las ventas muestran los valores a esa fecha.

## Consideraciones importantes

- El reporte depende de la pestaña **Expediente de Producto**. Si no se ejecutó la carga inicial de datos históricos, los productos importados antes de la instalación no muestran costo de origen.
- El **costo de origen** solo incluye el costo de **material**. Para ver la apertura completa de una importación (flete, seguro, arancel, tasas) usar los [Reportes de Costos del Expediente de Importación](import-cost-reports).
- Un producto sin costo de origen indica que **no tiene importación relacionada** hasta la fecha del reporte: no se importó, o su línea de factura no quedó asociada a un expediente.
- Si un producto muestra un **costo actual vacío o incoherente**, ejecutar el proceso **Generar Transacciones de Costo** para ese producto corrige el detalle de costos y, con ello, el costo actual. No modifica el costo de origen si la importación no está relacionada con un expediente. Para acelerar la corrección, el proceso puede ejecutarse por producto.
- Todos los datos (costos, fechas, existencias, ventas) se calculan **hasta la fecha** indicada en el parámetro **A Fecha**, lo que permite reconstruir la situación de un producto en el pasado.
- Al emitir el reporte en otra moneda, los montos varían según la **tasa de cambio** de la fecha del reporte.
- Los costos se filtran por **esquema contable** y **organización**: emitir el reporte con la organización correcta es indispensable para obtener los costos y precios esperados.

## Ventanas relacionadas

- [Expediente de Importación](import-expedient)
- [Reportes de Costos del Expediente de Importación](import-cost-reports)
- [Producto](../../material-management/material-rules/product)
- [Factura (Proveedor)](../payable-documents/invoice-vendor)
