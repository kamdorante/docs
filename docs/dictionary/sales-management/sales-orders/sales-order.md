---
title: Orden de Venta
category: Documentation
star: 9
sticky: 9
article: false
---

# Orden de Venta

## Descripción

La ventana de Orden de Venta permite ingresar y modificar órdenes de venta. Es el documento principal para registrar las solicitudes de productos o servicios realizadas por los clientes, incluyendo información sobre precios, cantidades, condiciones de entrega y facturación.

## Acceso

Menú: Gestión de Ventas → Órdenes de Venta → Orden de Venta

## Pestañas

### Orden

La pestaña de Orden define los parámetros principales de una orden de venta. Al cambiar la Organización, Socio del Negocio, Almacén, Fecha Prometida, etc., estos valores se actualizan en todas las líneas.

#### Campos principales

| Campo | Descripción | Tipo | Obligatorio |
|---|---|---|---|
| Tipo de Documento Destino | Tipo de documento destino para la orden | Búsqueda directa | Sí |
| No. del Documento | Número identificador del documento | Texto | Sí |
| Socio del Negocio | Identifica al socio del negocio (cliente) | Búsqueda directa | Sí |
| Fecha de la Orden | Fecha en que se realizó la orden | Fecha | Sí |
| Origen de la Orden | Origen o fuente de la orden de venta | Búsqueda directa | No |
| Dirección del Socio | Dirección de entrega del socio del negocio | Búsqueda directa | Sí |
| Dirección de Facturación | Dirección para la facturación | Búsqueda directa | No |
| Descripción | Descripción corta opcional del registro | Texto | No |
| Almacén | Almacén de donde se despacharán los productos | Búsqueda directa | Sí |
| Lista de Precios | Lista de precios utilizada para la orden | Búsqueda directa | Sí |
| Moneda | Moneda para el procesamiento de la orden | Búsqueda directa | Sí |
| Agente Comercial | Representante de ventas asignado | Búsqueda directa | No |
| Total de Líneas | Suma total de las líneas de la orden | Monto | No |
| Gran Total | Monto total del documento incluyendo impuestos | Monto | No |
| Regla de Entrega | Define la regla para la entrega de productos | Lista | Sí |
| Regla de Facturación | Define cuándo se generará la factura | Lista | Sí |
| Regla de Pago | Forma en que se realizará el pago | Lista | Sí |
| Estado del Documento | Estado actual del documento | Lista | No |
| Vía de Entrega | Método de envío utilizado | Lista | No |
| Término de Pago | Condiciones de pago acordadas | Búsqueda directa | Sí |
| Orden de Referencia | Orden referenciada | Búsqueda directa | No |
| Referencia de Orden | Referencia externa de la orden (ej. número de OC del cliente) | Texto | No |
| Orden Vinculada | Orden vinculada a este documento | Búsqueda directa | No |
| Entrega Directa | Indica si el envío es directo del proveedor al cliente | Sí/No | No |
| Dirección Entrega Directa | Dirección para la entrega directa | Búsqueda directa | No |
| Socio Entrega Directa | Socio del negocio para entrega directa | Tabla | No |
| Entregado | Indica si la orden ha sido entregada | Sí/No | No |
| Copiar Líneas | Permite copiar líneas desde otra orden | Botón | No |
| Terminal PDV | Terminal de punto de venta asociado | Búsqueda directa | No |
| Procesar Orden | Ejecuta el procesamiento del documento | Botón | No |
| Presupuesto de Proyecto | Presupuesto del proyecto asociado | Búsqueda directa | No |
| Acción del Documento | Acción a ejecutar sobre el documento | Botón | No |
| Definición de Calendario de Facturación | Calendario para la generación de facturas | Búsqueda directa | No |
| Expediente Importación / Exportación | Expediente asociado de importación o exportación | Búsqueda directa | No |
| Generar Tarjeta de Regalo | Indica si se generará una tarjeta de regalo | Sí/No | No |

### Línea de la Orden

La pestaña de Línea de la Orden define los artículos individuales que componen la orden.

#### Campos principales

| Campo | Descripción | Tipo | Obligatorio |
|---|---|---|---|
| No. de Línea | Número de línea del documento | Numérico entero | Sí |
| Producto | Producto, servicio o artículo | Búsqueda directa | Sí |
| Cantidad | Cantidad ingresada en la unidad de medida seleccionada | Cantidad | Sí |
| Línea de Contrato | Línea de contrato de servicio asociada | Búsqueda directa | No |
| Precio | Precio ingresado por unidad | Monto | Sí |
| Descripción | Descripción de la línea | Texto | No |
| UM | Unidad de medida del producto | Búsqueda directa | Sí |
| Categoría del Producto | Categoría a la que pertenece el producto | Búsqueda directa | No |
| Monto de Línea | Monto neto de la línea (cantidad x precio) | Monto | No |
| Grupo de Producto | Grupo al que pertenece el producto | Búsqueda directa | No |
| Referencia | Referencia adicional para la línea | Texto | No |
| Cantidad Ordenada | Cantidad ordenada del producto | Cantidad | No |
| Cantidad Entregada | Cantidad que ha sido entregada | Cantidad | No |
| Cantidad Facturada | Cantidad que ha sido facturada | Cantidad | No |
| Precio Unitario | Precio actual por unidad del producto | Monto | No |
| Precio de Lista | Precio de lista del producto | Monto | No |
| % Descuento | Porcentaje de descuento aplicado | Numérico | No |
| Impuesto | Impuesto aplicado a la línea | Búsqueda directa | Sí |
| Procesado | Indica si la línea ha sido procesada | Sí/No | No |
| Producto Bonificado | Indica si es un producto de bonificación | Sí/No | No |
| Generar Tarjeta de Regalo | Indica si se generará una tarjeta de regalo | Sí/No | No |
| Cantidad Tarjeta de Regalo | Cantidad de tarjetas de regalo a generar | Cantidad | No |
| Línea de Proyecto | Línea de proyecto asociada | Búsqueda directa | No |

### Conversión de Moneda de la Orden

Pestaña para definir la conversión de moneda utilizada en la orden de venta.

#### Campos principales

| Campo | Descripción | Tipo | Obligatorio |
|---|---|---|---|
| Orden | Orden de venta asociada | Búsqueda directa | Sí |
| Fecha del Documento | Fecha del documento | Fecha | No |
| Moneda | Moneda del documento | Búsqueda directa | No |
| Tipo de Conversión | Tipo de conversión de moneda | Búsqueda directa | No |
| Fecha de Tasa Negociada | Fecha de la tasa de conversión negociada | Fecha | No |
| Tasa de Conversión Negociada | Tasa de conversión negociada | Numérico | No |
| Procesado | Indica si el registro ha sido procesado | Sí/No | No |

### Impuesto de la Orden

La pestaña de Impuesto de la Orden muestra el monto de impuesto de la orden basado en las líneas ingresadas.

#### Campos principales

| Campo | Descripción | Tipo | Obligatorio |
|---|---|---|---|
| Orden | Orden de venta asociada | Búsqueda directa | Sí |
| Impuesto | Tipo de impuesto aplicado | Búsqueda directa | Sí |
| Monto del Impuesto | Monto calculado del impuesto | Monto | No |
| Base del Impuesto | Monto base sobre el cual se calcula el impuesto | Monto | No |
| Precio incluye Impuesto | Indica si el precio incluye impuesto | Sí/No | No |

### Referencia de Pago

Pestaña de referencia de pago basada en montos abiertos de la orden.

#### Campos principales

| Campo | Descripción | Tipo | Obligatorio |
|---|---|---|---|
| Orden | Orden de venta asociada | Búsqueda directa | Sí |
| Socio del Negocio | Socio del negocio para el pago | Búsqueda directa | No |
| Cuenta Bancaria del Socio | Cuenta bancaria del socio del negocio | Búsqueda directa | No |
| Moneda | Moneda del pago | Búsqueda directa | No |
| Tipo de Conversión | Tipo de conversión de moneda | Búsqueda directa | No |
| Tipo de Licitación | Tipo de medio de pago | Lista | No |
| Método de Pago | Método de pago de la tienda | Búsqueda directa | No |
| Monto Fuente | Monto en moneda de origen | Monto | No |
| Monto | Monto del pago | Monto | No |
| Fecha de Pago | Fecha en que se realizó el pago | Fecha | No |
| Recibo | Indica si es un recibo de cobro | Sí/No | No |
| Pagado | Indica si ha sido pagado | Sí/No | No |
| Terminal PDV | Terminal de punto de venta | Búsqueda directa | No |
| Agente Comercial | Representante de ventas | Búsqueda directa | No |
| Descripción | Descripción del pago | Texto | No |
| Base | Base para el cálculo | Monto | No |
| Tasa | Tasa aplicada | Numérico | No |
| Referencia Creada Automáticamente | Indica si la referencia fue creada automáticamente | Sí/No | No |
| Procesado | Indica si ha sido procesado | Sí/No | No |
| Mantener Referencia después del Proceso | Mantener la referencia después de procesar la orden | Sí/No | No |
| Método de Pago Fuente | Método de pago de origen | Búsqueda directa | No |
| Referencia de Factura para Documento | Referencia de factura asociada al documento | Búsqueda directa | No |
| Tarjeta de Regalo | Tarjeta de regalo utilizada para el pago | Búsqueda directa | No |

### Comisiones de la Orden

Pestaña que define las comisiones asociadas a la orden de venta.

#### Campos principales

| Campo | Descripción | Tipo | Obligatorio |
|---|---|---|---|
| Orden | Orden de venta asociada | Búsqueda directa | Sí |
| Tasa de Comisión | Porcentaje de comisión aplicado | Numérico | No |
| Sector Industrial | Sector industrial del producto | Búsqueda directa | No |
| Grupo de Material | Grupo de material del producto | Búsqueda directa | No |
| Tipo de Material | Tipo de material del producto | Búsqueda directa | No |
| Grupo de Compra | Grupo de compra del producto | Búsqueda directa | No |
| Grupo de Venta | Grupo de venta del producto | Búsqueda directa | No |
| Categoría del Producto | Categoría del producto | Búsqueda directa | No |
| Grupo de Producto | Grupo del producto | Búsqueda directa | No |
| Clase de Producto | Clase del producto | Búsqueda directa | No |
| Clasificación de Producto | Clasificación del producto | Búsqueda directa | No |
| Producto | Producto específico | Búsqueda directa | No |
| Tipo de Cargo | Tipo de cargo aplicado | Búsqueda directa | No |
| Cargo | Cargo adicional del documento | Búsqueda directa | No |

### Configuración de Reconocimiento

Pestaña para la configuración de reconocimiento de ingresos de la orden.

#### Campos principales

| Campo | Descripción | Tipo | Obligatorio |
|---|---|---|---|
| Orden | Orden de venta asociada | Búsqueda directa | Sí |
| Tipo de Reconocimiento | Tipo de reconocimiento de ingresos | Lista | No |
| Fecha de Inicio | Fecha de inicio del reconocimiento | Fecha | No |
| Número de Meses | Cantidad de meses para el reconocimiento | Numérico entero | No |
| Fecha Final | Fecha final del reconocimiento | Fecha | No |

### Calendario de Facturación

Pestaña para definir el calendario de facturación de la orden.

#### Campos principales

| Campo | Descripción | Tipo | Obligatorio |
|---|---|---|---|
| Orden | Orden de venta asociada | Búsqueda directa | Sí |
| Monto | Monto de la cuota | Monto | No |
| Fecha de Vencimiento | Fecha de vencimiento de la cuota | Fecha | No |
| Facturado | Indica si la cuota ha sido facturada | Sí/No | No |
| Factura | Factura generada para la cuota | Búsqueda directa | No |
| Descripción | Descripción de la cuota | Texto | No |
| Número de Cuota | Número secuencial de la cuota | Numérico entero | No |
