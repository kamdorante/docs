---
title: Crear Factura de Venta en Consignación
category: Documentation
star: 9
sticky: 9
article: false
---

# Crear Factura de Venta en Consignación

## Descripción
Consulta inteligente para crear líneas de factura de cuentas por cobrar a partir de transacciones de venta. Permite seleccionar todas las ventas de productos en consignación (drop shipment) y crear las líneas correspondientes para la factura.

## Acceso
Menú: Gestión de Ventas → Crear Factura de Venta en Consignación

## Criterios de búsqueda
| Campo | Descripción | Tipo | Rango |
|---|---|---|---|
| Socio del Negocio | Socio del Negocio de la transacción | Búsqueda | No |
| Orden | Orden de venta de origen | Búsqueda | No |
| Producto | Producto vendido en consignación | Búsqueda | No |

## Columnas de resultado
| Campo | Descripción |
|---|---|
| Socio del Negocio | Socio del Negocio asociado a la venta |
| Orden | Orden de venta de referencia |
| Producto | Producto en consignación |
| Cantidad Consignada | Cantidad enviada en consignación |
| Cantidad Pendiente | Cantidad pendiente de facturación |
| Cantidad Vendida | Cantidad vendida al cliente final |
| Cantidad a Facturar | Cantidad a incluir en la factura |
| Fecha de Factura | Fecha para la factura a generar |
| Cantidad | Cantidad en la línea de la orden |

## Notas
- Este proceso está diseñado para el flujo de ventas en consignación donde los productos se envían a un punto de venta y se facturan cuando se venden al cliente final.
- La factura se genera como un documento de cuentas por cobrar (AR Invoice).
