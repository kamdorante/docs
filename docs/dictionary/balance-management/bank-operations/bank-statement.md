---
title: Estado de Cuenta Bancario
category: Documentation
star: 9
sticky: 9
article: false
---

# Estado de Cuenta Bancario

## Descripción
Ventana para registrar y gestionar los estados de cuenta bancarios. Permite ingresar las transacciones bancarias y conciliarlas con los pagos y cobros registrados en el sistema.

## Acceso
Menú: Gestión de Saldos Pendientes → Operaciones Bancarias → Estado de Cuenta Bancario

## Pestañas

### Estado de Cuenta Bancario
Configuración del estado de cuenta bancario.

#### Campos principales
| Campo | Descripción | Tipo | Obligatorio |
|---|---|---|---|
| No. del Documento | Número de secuencia del documento | Texto | Sí |
| Nombre | Identificador alfanumérico de la entidad | Texto | Sí |
| Descripción | Descripción corta opcional del registro | Texto | No |
| Cuenta Bancaria | Cuenta en el banco | Búsqueda directa | Sí |
| Fecha del Estado de Cuenta | Fecha del estado de cuenta | Fecha | Sí |
| Fecha Contable | Fecha contable | Fecha | Sí |
| Saldo Inicial | Saldo previo a cualquier transacción | Monto | No |
| Diferencia del Estado de Cuenta | Diferencia entre saldo del estado y saldo real | Monto | No |
| Saldo Final | Saldo final o de cierre | Monto | No |
| Estado del Documento | Estado actual del documento | Lista | No |
| Acción del Documento | Acción a realizar sobre el documento | Botón | No |

### Línea del Estado de Cuenta
Líneas del estado de cuenta bancario.

#### Campos principales
| Campo | Descripción | Tipo | Obligatorio |
|---|---|---|---|
| No. de Línea | Número de línea del documento | Numérico entero | Sí |
| Fecha del Estado de Cuenta | Fecha de la línea del estado | Fecha | Sí |
| Fecha de Valor | Fecha de valor de la transacción | Fecha | No |
| Pago | Pago asociado | Búsqueda | No |
| Tipo de Referencia | Tipo de referencia de la transacción | Lista | No |
| No. de Referencia | Número de referencia | Texto | No |
| Descripción | Descripción de la línea | Texto | No |
| Memo | Nota adicional | Texto | No |
| Cargo | Cargo asociado | Búsqueda directa | No |
| Moneda | Moneda de la transacción | Búsqueda directa | No |
| Monto del Estado de Cuenta | Monto de la línea del estado | Monto | Sí |
| Monto de la Transacción | Monto de la transacción | Monto | No |
