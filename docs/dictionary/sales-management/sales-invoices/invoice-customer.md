---
title: Documentos por Cobrar
category: Documentation
star: 9
sticky: 9
article: false
---

# Documentos por Cobrar

## Descripción

La ventana permite desplegar y entrar facturas para un cliente. Las facturas pueden también ser generadas desde una orden de ventas o una entrega.

## Acceso

Menú: Gestión de Ventas → Facturas de Venta → Documentos por Cobrar

## Pestañas

### Factura

Factura del Cliente. La pestaña Factura define los parámetros de una factura generada para un tercero. Constituye una cuenta por recibir (CXR).

#### Campos principales

| Campo | Descripción | Tipo | Obligatorio |
|---|---|---|---|
| Tipo de Documento Destino | Tipo de documento destino para la factura | Texto | No |
| No. del Documento | Número de secuencia del documento | Texto | No |
| Socio del Negocio | Identifica al socio del negocio (cliente) | Texto | No |
| Fecha de Facturación | Fecha impresa en la factura | Texto | No |
| Orden | Orden de venta asociada | Texto | No |
| Dirección del Socio | Dirección del socio del negocio | Texto | No |
| Fecha Contable | Fecha contable del documento | Texto | No |
| Descripción | Descripción corta opcional del registro | Texto | No |
| Moneda | Moneda para el procesamiento del documento | Texto | No |
| Presupuesto de Proyecto | Presupuesto del proyecto asociado | Texto | No |
| Lista de Precios | Lista de precios utilizada | Texto | No |
| Agente Comercial | Representante de ventas asignado | Texto | No |
| Regla de Pago | Forma en que se realizará el pago | Texto | No |
| Término de Pago | Condiciones de pago acordadas | Texto | No |
| Documento Enviado | Indica si el documento fue enviado al proveedor fiscal | Texto | No |
| Imprimir Recibo de Factura | Imprime el recibo de la factura | Texto | No |
| Comentario Fiscal | Comentario fiscal asociado al documento | Texto | No |
| Crear Desde Orden/Recibo | Crear líneas desde una orden o recibo existente | Texto | No |
| Tipo de Conversión | Tipo de conversión de moneda | Texto | No |
| Tipo de ADM | Tipo de autorización de devolución | Texto | No |
| Tipo de Documento | Tipo de documento | Texto | No |
| Referencia de Orden | Referencia externa de la orden | Texto | No |
| Total de Líneas | Suma total de las líneas | Monto | No |
| Gran Total | Monto total del documento incluyendo impuestos | Monto | No |
| En Disputa | Indica si el documento está en disputa | Texto | No |
| Campaña | Campaña de marketing asociada | Texto | No |
| Proyecto | Proyecto financiero asociado | Texto | No |
| Actividad | Actividad de negocio asociada | Texto | No |
| Organización de la Transacción | Organización que ejecuta la transacción | Texto | No |
| Lista de Usuario 1 | Elemento definido por el usuario #1 | Texto | No |
| Lista de Usuario 2 | Elemento definido por el usuario #2 | Texto | No |
| Lista de Usuario 3 | Elemento definido por el usuario #3 | Texto | No |
| Lista de Usuario 4 | Elemento definido por el usuario #4 | Texto | No |
| Estado del Documento | Estado actual del documento | Texto | No |
| Procesar Factura | Ejecuta el procesamiento del documento | Texto | No |
| Pagado | Indica si la factura ha sido pagada | Texto | No |
| Contabilizado | Estado de contabilización del documento | Texto | No |

### Línea de la Factura

Línea de Factura del Cliente. La pestaña Línea de Factura define el ítem individual o cargos adicionales de una factura.

#### Campos principales

| Campo | Descripción | Tipo | Obligatorio |
|---|---|---|---|
| No. de Línea | Número de línea del documento | Texto | No |
| Producto | Producto, servicio o artículo | Texto | No |
| Cargo | Cargos adicionales | Texto | No |
| Línea de Contrato | Línea de contrato de servicio asociada | Texto | No |
| Descripción | Descripción del ítem | Texto | No |
| Cantidad | Cantidad ingresada | Texto | No |
| Precio | Precio ingresado por unidad | Texto | No |
| Impuesto | Monto del impuesto | Texto | No |
| UM | Unidad de medida | Texto | No |
| Impuesto Aplicado | Tipo de impuesto aplicado a la línea | Texto | No |
| Total de Línea | Total de la línea incluyendo impuestos | Texto | No |
| Precio Unitario | Precio actual del producto | Texto | No |
| Precio de Lista | Precio de lista del producto | Texto | No |
| Descuento % | Porcentaje de descuento aplicado | Texto | No |
| Actividad | Actividad de negocio asociada | Texto | No |
| Neto de Línea | Monto neto de la línea | Texto | No |
| Línea de Orden de Salida | Línea de orden de salida asociada | Texto | No |
| Línea del Proyecto | Línea del proyecto asociada | Texto | No |

### Impuesto de la Factura

Impuesto de Factura del Cliente. La pestaña Impuesto de Factura despliega el impuesto total por pagar basado en las líneas de la factura.

#### Campos principales

| Campo | Descripción | Tipo | Obligatorio |
|---|---|---|---|
| Impuesto | Tipo de impuesto aplicado | Texto | No |
| Monto del Impuesto | Monto total del impuesto | Texto | No |
| Monto Base del Impuesto | Monto base sobre el cual se calcula el impuesto | Texto | No |
| Precio Incluye Impuesto | Indica si el precio incluye impuesto | Texto | No |

### Bitácora de Documento Electrónico

Bitácora de documento electrónico y envío.

#### Campos principales

| Campo | Descripción | Tipo | Obligatorio |
|---|---|---|---|
| Identificador | Identificador del documento electrónico | Texto | No |
| Serie | Serie del documento electrónico | Texto | No |
| Número de Serie | Número de serie del documento | Texto | No |
| Número Inicial | Número inicial del rango | Texto | No |
| Número Final | Número final del rango | Texto | No |
| Código de Seguridad | Código de seguridad del documento | Texto | No |
| Hash | Hash de verificación del documento | Texto | No |
| No. de Referencia | Número de referencia del procesamiento | Texto | No |
| Código de Mensaje | Código de mensaje de respuesta | Texto | No |
| Descripción del Mensaje | Descripción del mensaje de respuesta | Texto | No |
| URL de Descarga | URL para descarga del documento | Texto | No |
| Código QR | Código QR del documento | Texto | No |
| Fecha de Vencimiento | Fecha de vencimiento del documento | Texto | No |
| Resolución | Resolución asociada al documento | Texto | No |
| Nota | Nota adicional | Texto | No |
| Información Adicional | Información complementaria del documento | Texto | No |
| Código de Estado | Código de estado del procesamiento | Texto | No |

### Bitácora de Envío a Shopping

Bitácora de envío a Shopping. Muestra la bitácora de los intentos de envío al servicio de shopping para declaración.

#### Campos principales

| Campo | Descripción | Tipo | Obligatorio |
|---|---|---|---|
| Conexión Shopping | Conexión al servicio de shopping | Texto | No |
| Error | Indica si hubo un error en el envío | Texto | No |
| No. de Referencia | Número de referencia del envío | Texto | No |
| Mensaje de Error | Descripción del error ocurrido | Texto | No |

### Facturas Pagadas

Asignación de la Factura a los Pagos o al Efectivo.

#### Campos principales

| Campo | Descripción | Tipo | Obligatorio |
|---|---|---|---|
| Asignación | Encabezado de la asignación | Texto | No |
| Fecha de la Transacción | Fecha de la transacción | Texto | No |
| Pago | Pago asociado | Texto | No |
| Línea de Caja | Línea del diario de caja | Texto | No |
| Monto | Monto asignado | Texto | No |
| Monto de Descuento | Monto del descuento aplicado | Texto | No |
| Monto de Ajuste | Monto del ajuste por diferencia | Texto | No |
| Sobre/Sub Pago | Monto de sobre o sub pago | Texto | No |
