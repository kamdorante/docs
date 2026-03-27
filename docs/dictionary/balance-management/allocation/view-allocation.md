---
title: Consulta de Asignación
category: Documentation
star: 9
sticky: 9
article: false
---

# Consulta de Asignación

## Descripción
Consulta de asignaciones realizadas. Permite ver y reversar asignaciones de pagos a facturas.

## Acceso
Menú: Gestión de Saldos Pendientes → Asignación → Consulta de Asignación

## Pestañas

### Asignación
Define la asignación de pago a reversar.

#### Campos principales
| Campo | Descripción | Tipo | Obligatorio |
|---|---|---|---|
| No. del Documento | Número de secuencia del documento | Texto | Sí |
| Tipo de Documento | Tipo de documento o reglas | Búsqueda directa | Sí |
| Descripción | Descripción corta opcional del registro | Texto | No |
| Fecha de Transacción | Fecha de la transacción | Fecha | Sí |
| Fecha Contable | Fecha contable | Fecha | Sí |
| Aprobado | Indica si el documento requiere aprobación | Sí/No | No |
| Manual | Indica si es un proceso manual | Sí/No | No |
| Moneda | Moneda para este registro | Búsqueda directa | Sí |
| Monto de Aprobación | Monto de aprobación del documento | Monto | No |
| Estado del Documento | Estado actual del documento | Lista | No |
| Procesar Asignación | Acción del documento | Botón | No |
| Selección de Pago | Selección de pago asociada | Búsqueda directa | No |

### Línea de Asignación
Detalle de las líneas de asignación.

#### Campos principales
| Campo | Descripción | Tipo | Obligatorio |
|---|---|---|---|
| Asignación | Asignación de pago | Búsqueda directa | Sí |
| Socio del Negocio | Identifica un socio del negocio | Búsqueda | No |
| Orden | Orden de compra/venta | Búsqueda | No |
| Factura | Documento de factura | Búsqueda | No |
| Línea de Caja | Línea de diario de caja | Búsqueda directa | No |
| Pago | Identificador de pago | Búsqueda | No |
| Cargo | Cargos adicionales del documento | Búsqueda directa | No |
| Monto | Monto en una moneda definida | Monto | Sí |
| Fecha de Transacción | Fecha de la transacción | Fecha | No |
| Monto de Descuento | Monto calculado de descuento | Monto | No |
| Monto de Castigo | Monto a dar de baja como incobrable | Monto | No |
| Sobre/Sub Pago | Monto de sobrepago o pago parcial | Monto | No |
