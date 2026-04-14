---
title: Bandeja CFE
category: Documentation
star: 9
sticky: 9
article: false
---

# Bandeja CFE

## Descripción

La ventana **Bandeja CFE** es la bandeja de entrada de los Comprobantes Fiscales Electrónicos (CFE) descargados desde el proveedor de facturación electrónica. Cada registro representa un CFE emitido por un proveedor contra la organización y contiene los datos originales del comprobante (emisor, número, fecha, importe, líneas) antes de convertirse en un documento por pagar.

Desde esta ventana se revisa el contenido descargado, se completan datos faltantes, se vincula la factura a una orden de compra o a un informe de gasto, y se ejecuta el paso final de generación del documento por pagar. También consolida los errores de importación detectados por el proceso automático.

## ¿Cuándo se utiliza?

Se utiliza cuando la organización necesita:

- Revisar los CFE descargados antes de convertirlos en facturas de proveedor.
- Completar manualmente datos faltantes (término de pago, cargo, producto) que el proceso automático no pudo resolver.
- Vincular un CFE con una orden de compra existente o con un informe de gasto.
- Generar la factura de proveedor a partir del CFE recibido.
- Diagnosticar errores de importación y corregir la configuración origen.

## Acceso

Menú: **Gestión de Ventas → Facturas de Venta → Bandeja CFE**

Alternativamente, la Bandeja CFE es donde quedan depositados los registros generados por el proceso **Obtener Facturas Electrónicas** disponible desde el menú de Facturación Electrónica.

## Pestañas

### Importar Factura

Pestaña principal que muestra el encabezado de cada CFE descargado. La información se organiza en:

- **Número del Documento**
  Número de secuencia interno del registro en la Bandeja CFE.

- **Nombre y Descripción**
  Identificación breve del registro importado.

- **Emisor del CFE**
  Socio de negocio emisor según los datos del CFE. Si no existe en el sistema y la compañía/organización tiene habilitado *Crear Socios al Importar Documentos*, se crea automáticamente.

- **Tipo de Documento Fiscal y Tipo de Transacción Fiscal**
  Clasificación del comprobante utilizada para resolver el tipo de documento del sistema al importar.

- **Estado**
  Estado del registro (pendiente, importado, con error). Los registros con error incluyen un mensaje descriptivo.

- **Acciones de vinculación**
  Campos que habilitan las acciones *Vincular Factura a Informe de Gasto* y *Generar Factura desde Informe de Gasto*.

### Línea de CFE

Líneas del CFE tal como se descargaron del proveedor de facturación electrónica. Son las líneas originales que se usan como base para generar las líneas definitivas del documento por pagar. La información incluye:

- **Socio del Negocio** y **Socio de Facturación**
  Socio emisor y socio destinatario de la factura.

- **Fecha del Comprobante**
  Fecha en que se emitió el CFE.

- **Producto**
  Producto del sistema, cuando el código del CFE coincide con un producto existente. Si no coincide, queda vacío y se resuelve con el cargo por defecto.

- **Impuesto**
  Tipo de impuesto aplicado a la línea.

- **Monto del Gasto / Cantidad / Moneda**
  Importe, cantidad y moneda de la línea.

- **Facturado**
  Indica si la línea ya fue convertida en línea de factura del sistema.

- **Número de Línea**
  Posición de la línea en el CFE original.

### Factura

Factura de proveedor generada a partir del CFE una vez importado. La pestaña muestra:

- **Tipo de Documento y Número**
- **Socio del Negocio**
- **Fecha de Facturación**
- **Estado del Documento**
- **Campaña, Moneda, Total de Líneas, Gran Total**

### Socio a Crear

Registros con socio de negocio no encontrado. Si está activo *Crear Socios al Importar Documentos*, el socio se crea automáticamente con los datos del CFE; en caso contrario, el CFE queda con error hasta que se cree manualmente el socio.

## Acciones disponibles

- **Completar Datos de Factura**
  Resuelve automáticamente los datos derivados del CFE (término de pago, cargo por defecto, producto) a partir de la configuración del socio de negocio y del producto.

- **Importar Facturas**
  Convierte los CFE completados en documentos por pagar usando la acción seleccionada (Preparar o Completar).

- **Importar Facturas con Enlace a Orden de Compra**
  Importa el CFE y lo enlaza automáticamente a la orden de compra referenciada por el proveedor, heredando cantidades, precios y dimensiones (proyecto, sellos, campaña) y generando el match.

- **Vincular Factura a Informe de Gasto**
  Relaciona el CFE con un informe de gasto existente.

- **Generar Factura desde Informe de Gasto**
  Genera la factura de proveedor tomando las líneas del informe de gasto vinculado.

- **Eliminar CFE**
  Elimina el registro de la bandeja si aún no ha sido convertido en factura.

## Flujo del proceso

### 1. Descargar los CFE desde el proveedor fiscal

Ejecutar el proceso **Obtener Facturas Electrónicas**. Los CFE descargados quedan visibles en la Bandeja CFE.

### 2. Revisar el encabezado

Abrir cada registro en la pestaña *Importar Factura* y confirmar emisor, tipo de documento fiscal, importes y moneda. Ajustar manualmente lo que el proveedor no haya enviado (por ejemplo, el término de pago).

### 3. Verificar las líneas del CFE

Ir a la pestaña *Línea de CFE* y confirmar productos, cantidades e impuestos. Si la línea no resuelve a un producto del sistema, el *Cargo por Defecto* del socio se aplicará al importar.

### 4. Completar datos

Ejecutar **Completar Datos de Factura** para resolver automáticamente la información derivada.

### 5. Importar la factura

Ejecutar **Importar Facturas** o **Importar Facturas con Enlace a Orden de Compra** según corresponda. La acción genera la factura en el estado indicado (Preparar o Completar).

### 6. Validar el documento generado

Abrir la pestaña *Factura* para verificar el documento resultante. Si se usó *Preparar*, revisar totales y dimensiones antes de completar manualmente desde el documento por pagar.

### 7. Completar la factura

Al completar la factura, si existe enlace con orden de compra, el sistema genera el match automáticamente actualizando las cantidades facturadas de la OC.

## Ejemplo de uso

Un analista administrativo debe importar un CFE recibido enlazándolo con una orden de compra existente:

1. Ejecutar **Obtener Facturas Electrónicas** para la organización.
2. En la Bandeja CFE, abrir el registro del CFE recibido y verificar que tiene referencia de compra (el proveedor envió *CC ID Compra*).
3. Completar manualmente el **Término de Pago** porque el CFE no lo incluyó; elegir "30 días" según la configuración del proveedor.
4. Ejecutar **Importar Facturas con Enlace a Orden de Compra** con *Acción del Documento = Preparar*.
5. El sistema crea la factura de proveedor, hereda el ID de la orden de compra y sus líneas (cantidad, precio, producto, proyecto, sellos).
6. Verificar en la pestaña *Factura* el documento generado en estado *Preparado* con la cantidad correcta heredada.
7. Al completar la factura desde el documento por pagar, el sistema genera el match con la OC automáticamente y actualiza la cantidad facturada de la orden.

## Consideraciones importantes

- El proceso automático resuelve datos solo cuando la **configuración está completa**: tipos de documento marcados como *Documento de Compra Electrónico*, listas de precios con *Impuesto Incluido = Sí* y moneda adecuada, y socios configurados con *Cargo por Defecto* cuando no hay producto.
- Si el CFE viene con **número de referencia** (por ejemplo, *CC ID Compra*), el sistema puede enlazarlo a una orden de compra existente al usar *Importar Facturas con Enlace a Orden de Compra*. El match se genera automáticamente al completar.
- Los CFE **duplicados** (mismo socio, mismo tipo de documento y número) se ignoran para evitar importaciones repetidas.
- Cuando el proveedor envía **código de país** en el CFE y el socio no existe, el sistema lo crea usando ese código al importar.
- Al generar la factura en estado *Preparar*, aún no se actualiza la cantidad facturada de la OC; esto ocurre al completar el documento.
- Si un registro queda con error, el mensaje describe la causa exacta (tipo de documento faltante, lista de precios incompatible, moneda no soportada). Corregir la configuración y reintentar el proceso sin necesidad de volver a descargar el CFE.
- La pestaña **Línea de CFE** conserva las líneas originales del proveedor y no debe editarse; cualquier ajuste se hace sobre la factura generada.
- Cuando el socio tiene **Criterio de Facturación Electrónica** configurado (Proyecto, Fase, Tarea, Por Factura, Por Línea, Contrato), las líneas de resumen se generan automáticamente al preparar el documento según el criterio seleccionado.

## Ventanas relacionadas

- [Importación de CFE Recibidos](../../electronic-billing/get-electronic-invoices)
- [Factura (Cliente)](invoice-customer)
