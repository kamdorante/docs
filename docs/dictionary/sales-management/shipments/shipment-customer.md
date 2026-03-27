---
title: Entregas (Cliente)
category: Documentation
star: 9
sticky: 9
article: false
---

# Entregas (Cliente)

## Descripción

Define las entregas hechas o por hacer a un cliente. Las entregas son generadas desde una orden de un cliente. Los documentos de entrega generarán la factura del cliente.

## Acceso

Menú: Gestión de Ventas → Entregas → Entregas (Cliente)

## Pestañas

### Entrega

Entregas y devoluciones del cliente. La pestaña Entrega permite generar, mantener, entrar y procesar entregas a clientes o devoluciones de clientes.

#### Campos principales

| Campo | Descripción | Tipo | Obligatorio |
|---|---|---|---|
| Tipo de Documento | Tipo de documento o reglas | Búsqueda directa | No |
| No. del Documento | Número de secuencia del documento | Texto | No |
| Socio del Negocio | Identifica al socio del negocio | Texto | No |
| Fecha de Movimiento | Fecha en que se realizó el movimiento de inventario | Texto | No |
| Descripción | Descripción corta opcional del registro | Texto | No |
| Contrato | Contrato de servicio asociado | Texto | No |
| Orden | Orden de venta asociada | Texto | No |
| Almacén | Almacén de almacenamiento o punto de servicio | Texto | No |
| Agente Comercial | Representante de ventas asignado | Texto | No |
| Fecha de la Orden | Fecha en que se realizó la orden | Texto | No |
| Dirección del Socio | Dirección del socio del negocio | Texto | No |
| Referencia de Orden | Número de referencia de la transacción del socio del negocio | Texto | No |
| ADM | Autorización de devolución de mercancía | Texto | No |
| Fecha Contable | Fecha contable del documento | Texto | No |
| Usuario/Contacto | Contacto del socio del negocio | Texto | No |
| Prioridad | Prioridad del documento | Texto | No |
| Regla de Entrega | Define la regla para la entrega de productos | Texto | No |
| Fecha de Recogida | Fecha y hora de recogida para el envío | Texto | No |
| Vía de Entrega | Método de envío utilizado | Texto | No |
| Transportista | Método de entrega del producto | Texto | No |
| Regla de Costo de Flete | Regla para el cálculo del costo de flete | Texto | No |
| Categoría de Flete | Categoría de flete asociada | Texto | No |
| Importe de Flete | Monto del flete | Texto | No |
| Crear Paquete | Permite crear paquete para envío | Texto | No |
| Fecha de Envío | Fecha del envío | Texto | No |
| No. de Paquetes | Número de paquetes del envío | Texto | No |
| No. de Seguimiento | Número de rastreo del envío | Texto | No |
| Crear Desde Orden/ADM | Crear líneas desde una orden o ADM existente | Texto | No |
| Entrega Directa | Indica si es un envío directo al cliente | Texto | No |
| Socio Entrega Directa | Socio del negocio para entrega directa | Texto | No |
| Dirección Entrega Directa | Dirección para la entrega directa | Texto | No |
| Contacto Entrega Directa | Contacto para la entrega directa | Texto | No |
| Generar Facturas desde Recibos | Permite generar facturas desde este documento | Texto | No |
| Cargo | Cargos adicionales del documento | Texto | No |
| Importe de Cargo | Monto del cargo adicional | Texto | No |
| Proyecto | Proyecto financiero asociado | Texto | No |
| Actividad | Actividad de negocio asociada | Texto | No |
| Campaña | Campaña de marketing asociada | Texto | No |
| Organización de la Transacción | Organización que ejecuta la transacción | Texto | No |
| Lista de Usuario 1 | Elemento definido por el usuario #1 | Texto | No |
| Lista de Usuario 2 | Elemento definido por el usuario #2 | Texto | No |
| Lista de Usuario 3 | Elemento definido por el usuario #3 | Texto | No |
| Lista de Usuario 4 | Elemento definido por el usuario #4 | Texto | No |
| Tipo de Movimiento | Método de movimiento del inventario | Texto | No |
| Crear Confirmación | Crear confirmación de envío | Texto | No |
| En Tránsito | Indica si el envío está en tránsito | Texto | No |
| Fecha de Recepción | Fecha en que se recibió el producto | Texto | No |
| Estado del Documento | Estado actual del documento | Texto | No |
| Procesar Entrega | Ejecuta el procesamiento del documento | Texto | No |
| En Disputa | Indica si el documento está en disputa | Texto | No |
| Contabilizado | Estado de contabilización del documento | Texto | No |

### Línea de la Entrega

La pestaña Línea de la Entrega define cada ítem en una entrega.

#### Campos principales

| Campo | Descripción | Tipo | Obligatorio |
|---|---|---|---|
| No. de Línea | Número de línea del documento | Texto | No |
| Producto | Producto, servicio o artículo | Texto | No |
| Ubicación | Ubicación dentro del almacén | Texto | Sí |
| Cargo | Cargos adicionales | Texto | No |
| Descripción | Descripción del ítem | Texto | No |
| Línea de Contrato | Línea de contrato de servicio asociada | Texto | No |
| Cantidad | Cantidad ingresada | Texto | No |
| UM | Unidad de medida | Texto | No |
| Cantidad del Movimiento | Cantidad del movimiento de inventario | Texto | No |
| Cantidad Recogida | Cantidad preparada para envío | Texto | No |
| Cantidad Objetivo | Cantidad objetivo esperada | Texto | No |
| Cantidad Confirmada | Cantidad confirmada | Texto | No |
| Cantidad Desechada | Cantidad desechada o perdida | Texto | No |
| Línea de Orden de Venta | Línea de la orden de venta asociada | Texto | No |
| Transportista | Método de entrega del producto | Texto | No |
| Categoría de Flete | Categoría de flete asociada | Texto | No |
| Importe de Flete | Monto del flete | Texto | No |
| Organización de la Transacción | Organización que ejecuta la transacción | Texto | No |
| Lista de Usuario 2 | Elemento definido por el usuario #2 | Texto | No |
| Línea de Orden de Salida | Línea de orden de salida asociada | Texto | No |
| Fase del Proyecto | Fase del proyecto asociada | Texto | No |
| Actividad | Actividad de negocio asociada | Texto | No |
| Proyecto | Proyecto financiero asociado | Texto | No |
| Tarea del Proyecto | Tarea del proyecto asociada | Texto | No |
| Campaña | Campaña de marketing asociada | Texto | No |
| Lista de Usuario 1 | Elemento definido por el usuario #1 | Texto | No |
| Lista de Usuario 3 | Elemento definido por el usuario #3 | Texto | No |
| Línea del Proyecto | Línea del proyecto asociada | Texto | No |
| Lista de Usuario 4 | Elemento definido por el usuario #4 | Texto | No |

### Confirmaciones

Confirmaciones opcionales de líneas de envío. Las cantidades están en la unidad de almacenamiento.

#### Campos principales

| Campo | Descripción | Tipo | Obligatorio |
|---|---|---|---|
| Línea de Entrega/Recibo | Línea del documento de entrega | Texto | No |
| Confirmación de Entrega/Recibo | Confirmación del documento de entrega | Texto | No |
| Línea de Confirmación de Entrega | Línea de confirmación del envío | Texto | No |
| No. de Confirmación | Número de confirmación del envío | Texto | No |
| Cantidad Objetivo | Cantidad objetivo esperada | Texto | No |
| Cantidad Confirmada | Cantidad confirmada | Texto | No |
| Diferencia | Diferencia entre cantidad objetivo y confirmada | Texto | No |
| Cantidad Desechada | Cantidad desechada o perdida | Texto | No |
| Descripción | Descripción adicional | Texto | No |

### Atributos

Producto, instancia de atributo y asignación de material.

#### Campos principales

| Campo | Descripción | Tipo | Obligatorio |
|---|---|---|---|
| Línea de Entrega/Recibo | Línea del documento de entrega | Texto | No |
| Instancia de Conjunto de Atributos | Instancia de atributos del producto | Texto | No |
| Cantidad del Movimiento | Cantidad del movimiento de inventario | Texto | No |

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
