---
title: Factura (Retención)
category: Documentation
star: 9
sticky: 9
article: false
---

# Factura (Retención)

## Descripción

Ventana para gestionar facturas con retención de impuestos aplicadas a proveedores. Permite registrar facturas de compra donde se aplican retenciones de impuestos, con sus líneas de retención y asignaciones de pago.

## Acceso

Menú: Gestión de Compras → Documentos por Pagar → Factura (Retención)

## Pestañas

### Retención

Encabezado de la factura con retención. Contiene la información del proveedor, tipo de documento, fechas y condiciones de pago.

#### Campos

| Campo | Descripción | Tipo | Obligatorio |
|-------|-------------|------|-------------|
| No. del Documento | Número de secuencia del documento | Texto | No |
| Referencia de Orden | Número de referencia de la orden del proveedor | Texto | No |
| Descripción | Descripción corta opcional | Texto | No |
| Tipo de Documento Destino | Tipo de documento destino | Búsqueda | Sí |
| Fecha Facturada | Fecha de la factura | Fecha | Sí |
| Fecha Contable | Fecha de contabilización | Fecha | Sí |
| Socio de Negocio | Proveedor de la factura | Búsqueda | Sí |
| Dirección del Socio | Dirección del proveedor | Búsqueda | No |
| Usuario/Contacto | Contacto del proveedor | Búsqueda | No |
| Lista de Precios | Lista de precios | Búsqueda | No |
| Moneda | La moneda para este registro | Búsqueda | No |
| Tipo de Moneda | Tipo de conversión de moneda | Búsqueda | No |
| Agente de la Empresa | Agente de compras responsable | Búsqueda | No |
| Regla de Pago | Forma de pago | Lista | No |
| Término de Pago | Condiciones de pago | Búsqueda | No |
| Proyecto | Proyecto financiero relacionado | Búsqueda | No |
| Actividad | Actividad de negocio | Búsqueda | No |
| Campaña | Campaña de marketing | Búsqueda | No |
| Total de Líneas | Suma de todas las líneas | Monto | No |
| Total | Total incluyendo impuestos | Monto | No |
| Estado del Documento | Estado actual del documento | Lista | No |
| Acción del Documento | Acción a ejecutar | Lista | No |
| Contabilizado | El documento ha sido contabilizado | Sí/No | No |
| Pagado | La factura ha sido pagada | Sí/No | No |

### Línea de Retención

Líneas de la factura con los productos, servicios y retenciones aplicadas.

#### Campos

| Campo | Descripción | Tipo | Obligatorio |
|-------|-------------|------|-------------|
| Retención | Tipo de retención aplicada | Búsqueda | No |
| Cantidad Facturada | Cantidad facturada | Número | No |
| Precio de Lista | Precio de lista del producto | Monto | No |
| Precio Unitario | Precio unitario del producto | Monto | No |
| Unidad de Medida | Unidad de medida | Búsqueda | No |
| Monto de Impuesto | Monto de impuesto de la línea | Monto | No |

### Asignación

Asignaciones de pagos y cobros realizadas contra esta factura.

#### Campos

| Campo | Descripción | Tipo | Obligatorio |
|-------|-------------|------|-------------|
| Factura | Factura asignada | Búsqueda | No |
| Asignación | Encabezado de asignación | Búsqueda | No |
| Fecha de Transacción | Fecha de la transacción | Fecha | No |
| Pago | Pago asignado | Búsqueda | No |
| Línea de Diario de Caja | Línea de caja asignada | Búsqueda | No |
| Monto | Monto asignado | Monto | No |
| Monto de Descuento | Monto de descuento aplicado | Monto | No |
| Monto de Cancelación | Monto cancelado (write-off) | Monto | No |
| Sobre/Sub Pago | Monto de sobre o sub pago | Monto | No |
