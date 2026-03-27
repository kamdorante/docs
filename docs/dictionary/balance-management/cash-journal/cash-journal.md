---
title: Diario de Caja Chica
category: Documentation
star: 9
sticky: 9
article: false
---

# Diario de Caja Chica

## Descripción
Esta ventana es usada para registrar los pagos y recibos de una caja chica.

## Acceso
Menú: Gestión de Saldos Pendientes → Diario de Caja → Diario de Caja Chica

## Pestañas

### Diario de Caja
Define los parámetros para este diario de caja.

#### Campos principales
| Campo | Descripción | Tipo | Obligatorio |
|---|---|---|---|
| Libro de Caja | Libro de caja para registrar transacciones de caja chica | Búsqueda directa | Sí |
| Nombre | Identificador alfanumérico de la entidad | Texto | Sí |
| Descripción | Descripción corta opcional del registro | Texto | No |
| Fecha del Estado de Cuenta | Fecha del estado de cuenta | Fecha | Sí |
| Fecha Contable | Fecha contable utilizada en las entradas del libro mayor | Fecha | Sí |
| Proyecto | Proyecto financiero | Búsqueda directa | No |
| Actividad | Actividad de negocio | Búsqueda directa | No |
| Campaña | Campaña de marketing | Búsqueda directa | No |
| Organización de Transacción | Organización que ejecuta o inicia la transacción | Búsqueda directa | No |
| Saldo Inicial | Saldo previo a cualquier transacción | Monto | No |
| Aprobado | Indica si el documento requiere aprobación | Sí/No | No |
| Diferencia del Estado de Cuenta | Diferencia entre saldo final del estado de cuenta y saldo final real | Monto | No |
| Saldo Final | Saldo final o de cierre | Monto | No |
| Estado del Documento | Estado actual del documento | Lista | No |
| Procesar Caja | Acción del documento | Botón | No |
| Contabilizado | Estado de contabilización | Botón | No |

### Línea de Caja
Define las líneas individuales para este diario.

#### Campos principales
| Campo | Descripción | Tipo | Obligatorio |
|---|---|---|---|
| No. de Línea | Línea única para este documento | Numérico entero | Sí |
| Descripción | Descripción corta opcional del registro | Texto | No |
| Tipo de Efectivo | Fuente de efectivo | Lista | Sí |
| Moneda | Moneda para este registro | Búsqueda directa | Sí |
| Monto | Monto en una moneda definida | Monto | Sí |
| Cuenta Bancaria | Cuenta en el banco (visible cuando Tipo=Transferencia) | Búsqueda directa | No |
| Cargo | Cargos adicionales del documento (visible cuando Tipo=Cargo) | Búsqueda directa | No |
| Factura | Identificador de la factura (visible cuando Tipo=Factura) | Búsqueda | No |
| Monto de Descuento | Monto calculado de descuento | Monto | No |
| Monto de Castigo | Monto a dar de baja como incobrable | Monto | No |
