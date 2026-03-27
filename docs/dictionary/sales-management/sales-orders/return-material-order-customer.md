---
title: Orden de Devolución (Cliente)
category: Documentation
star: 9
sticky: 9
article: false
---

# Orden de Devolución (Cliente)

## Descripción

La ventana de Orden de Devolución permite ingresar y modificar autorizaciones de devolución de material (RMA) de clientes. Se utiliza cuando un cliente necesita devolver productos previamente entregados, generando el documento de autorización correspondiente.

## Acceso

Menú: Gestión de Ventas → Órdenes de Venta → Orden de Devolución (Cliente)

## Pestañas

### RMA

Pestaña principal de la Autorización de Devolución de Material. Define los parámetros generales de la devolución.

#### Campos principales

| Campo | Descripción | Tipo | Obligatorio |
|---|---|---|---|
| Tipo de Documento Destino | Tipo de documento destino para la devolución | Búsqueda directa | Sí |
| No. del Documento | Número identificador del documento | Texto | Sí |
| Socio del Negocio | Cliente que realiza la devolución | Búsqueda directa | Sí |
| Fecha de la Orden | Fecha en que se registra la devolución | Fecha | Sí |
| Descripción | Descripción del motivo de la devolución | Texto | No |
| Orden Fuente | Orden de venta original asociada a la devolución | Búsqueda directa | No |
| Tipo de RMA | Tipo de autorización de devolución de material | Búsqueda directa | No |
| Agente Comercial | Representante de ventas asignado | Búsqueda directa | No |
| Usuario/Contacto | Usuario o contacto asociado | Búsqueda directa | No |
| Lista de Precios | Lista de precios utilizada | Búsqueda directa | Sí |
| Moneda | Moneda de la devolución | Búsqueda directa | Sí |
| Regla de Entrega | Regla para la recepción de la devolución | Lista | Sí |
| Prioridad | Prioridad de la devolución | Lista | No |
| Almacén | Almacén donde se recibirán los productos devueltos | Búsqueda directa | Sí |
| Vía de Entrega | Método de envío utilizado | Lista | No |
| Transportista | Transportista asignado | Búsqueda directa | No |
| Regla de Costo de Flete | Regla para el cálculo del costo de flete | Lista | No |
| Regla de Facturación | Regla de facturación para la nota de crédito | Lista | Sí |
| Regla de Pago | Forma de pago | Lista | Sí |
| Término de Pago | Condiciones de pago | Búsqueda directa | Sí |
| Proyecto | Proyecto asociado a la devolución | Búsqueda directa | No |
| Total de Líneas | Suma total de las líneas | Monto | No |
| Gran Total | Monto total del documento incluyendo impuestos | Monto | No |
| Estado del Documento | Estado actual del documento | Lista | No |
| Ejecución de Comisión | Ejecución de comisión asociada | Búsqueda directa | No |

### Línea de RMA

Pestaña de líneas de la autorización de devolución de material. Define los artículos individuales a devolver.

#### Campos principales

| Campo | Descripción | Tipo | Obligatorio |
|---|---|---|---|
| No. de Línea | Número de línea del documento | Numérico entero | Sí |
| Producto | Producto a devolver | Búsqueda directa | Sí |
| Cantidad | Cantidad a devolver | Cantidad | Sí |
| Precio | Precio por unidad | Monto | Sí |
| Descripción | Descripción de la línea de devolución | Texto | No |
| UM | Unidad de medida | Búsqueda directa | Sí |
| % Descuento | Porcentaje de descuento aplicado | Numérico | No |
| Monto de Línea | Monto neto de la línea | Monto | No |
| Impuesto | Impuesto aplicado | Búsqueda directa | Sí |
| Precio Unitario | Precio unitario actual | Monto | No |
| Precio de Lista | Precio de lista | Monto | No |
| Cantidad Ordenada | Cantidad ordenada | Cantidad | No |
| Cantidad Entregada | Cantidad entregada | Cantidad | No |
| Cantidad Reservada | Cantidad reservada | Cantidad | No |
| Cantidad Facturada | Cantidad facturada | Cantidad | No |
| Línea de Entrega Referenciada | Línea de entrega/recepción de referencia | Búsqueda directa | No |
| Línea de Factura Referenciada | Línea de factura de referencia | Búsqueda directa | No |
| Proyecto | Proyecto asociado a la línea | Búsqueda directa | No |

### Impuesto de RMA

Pestaña que muestra el impuesto calculado para la autorización de devolución de material.

#### Campos principales

| Campo | Descripción | Tipo | Obligatorio |
|---|---|---|---|
| Orden | Orden asociada | Búsqueda directa | Sí |
| Impuesto | Tipo de impuesto aplicado | Búsqueda directa | Sí |
| Monto del Impuesto | Monto calculado del impuesto | Monto | No |
| Base del Impuesto | Monto base sobre el cual se calcula el impuesto | Monto | No |
| Precio incluye Impuesto | Indica si el precio incluye impuesto | Sí/No | No |
