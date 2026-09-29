---
title: Consulta de Asignación
category: Documentation
star: 9
sticky: 9
article: false
---

# Consulta de Asignación

## Descripción

La ventana **Consulta de Asignación** muestra cada una de las asignaciones registradas en el sistema entre facturas y pagos, cobros, notas de crédito o cargos. Es el documento donde se genera el asiento contable propio de la asignación (por ejemplo, la cancelación de la cuenta por pagar contra el desembolso realizado), y es también el punto donde se **revierte** una asignación cuando fue hecha por error.

No distingue entre operaciones de compra y de venta: la misma ventana se usa tanto para revisar asignaciones de **Facturas por Pagar** (AP) contra pagos, como de **Facturas por Cobrar** (AR) contra cobros.

## ¿Cuándo se utiliza?

Se utiliza cuando la organización necesita:

- Revisar el detalle de una asignación ya realizada, para auditar o entender un saldo.
- Confirmar qué factura quedó vinculada a qué pago, cobro, nota de crédito o cargo.
- Navegar desde un asiento contable hacia el documento de asignación que lo originó.
- **Reversar** una asignación hecha por error, cuando el período contable ya está cerrado.

## Acceso

Existen dos formas de acceder:

1. **Desde el menú:** Gestión de Saldos Pendientes → Asignación → Consulta de Asignación
2. **Desde el documento:** abrir la Factura, el Pago/Cobro o el asiento contable relacionado y navegar al registro de asignación vinculado (ver [Trazabilidad](#trazabilidad-desde-otros-documentos) más abajo)

## Pestañas

### Asignación

Pestaña principal, con el encabezado del documento de asignación:

- **No. del Documento y Tipo de Documento**
  Identifican la asignación como documento propio del sistema.
- **Fecha de Transacción y Fecha Contable**
  Fechas que determinan en qué período contable impacta la asignación.
- **Moneda**
  Moneda en la que está expresada la asignación.
- **Selección de Pago**
  Referencia a la selección de pago asociada, cuando aplica.
- **Estado del Documento**
  Estado actual (Completo, Reversado, etc.).

### Línea de Asignación

Detalle de cada combinación vinculada por la asignación. Una misma asignación puede tener varias líneas, cada una con una combinación distinta:

- **Factura**
  Documento de factura (por pagar o por cobrar) involucrado en la línea.
- **Pago**
  Pago o cobro vinculado a la factura en esa línea.
- **Cargo**
  Cargo adicional utilizado en lugar de, o junto con, un pago (por ejemplo, diferencias de cambio).
- **Socio del Negocio**
  Cliente o proveedor de la línea.
- **Monto**
  Importe asignado en esa línea.
- **Monto de Descuento y Monto de Castigo**
  Importes de descuento por pronto pago o de baja como incobrable, cuando corresponden.
- **Sobre/Sub Pago**
  Diferencia registrada cuando el pago no coincide exactamente con el importe de la factura.

## Combinaciones posibles

El detalle de la asignación admite distintas combinaciones entre documentos:

- Factura – Pago/Cobro
- Factura – Nota de Crédito
- Factura – Cargo
- Pago – Cargo

## Flujo del proceso

### 1. Ubicar la asignación

Buscar la asignación directamente desde el menú, o navegar hacia ella desde el documento relacionado (factura, pago/cobro o asiento contable).

### 2. Revisar el detalle

En la pestaña **Línea de Asignación**, identificar qué factura quedó vinculada a qué pago, cobro o cargo, y por qué importe.

### 3. Decidir la corrección, si corresponde

Si la asignación está mal hecha (por ejemplo, un cobro se vinculó a la factura incorrecta):

- Si el **período contable está abierto**, se recomienda usar el proceso [Asignación (Restaurar)](./reset-allocation), que borra la asignación sin dejar registro histórico.
- Si el **período contable está cerrado**, usar la acción **Reversar** desde esta ventana. A diferencia de Restaurar, Reversar genera el contra-asiento correspondiente y deja registro de la operación.

### 4. Reasignar correctamente

Una vez liberados la factura y el pago/cobro, volver a vincularlos desde la ventana [Asignación de Pagos](../../../balance-management/assignment-management-general/assignment).

## Trazabilidad desde otros documentos

Es posible llegar a una asignación específica navegando desde:

- **Documentos por Pagar** → pestaña **Pagos Asignados**
- **Documentos por Cobrar** → pestaña **Facturas Pagadas**
- **Recibo de Pago** → pestaña **Documentos Asignados**
- **Recibo de Cobro** → pestaña **Documentos Asignados**

En todos los casos, hacer clic sobre el documento vinculado abre directamente el registro de asignación correspondiente.

## Ejemplo de uso

Un cobro se vinculó por error a la factura de saldo inicial de un cliente en lugar de a la factura correcta:

1. Desde la ficha de la Factura por Cobrar, abrir la pestaña **Facturas Pagadas** y hacer clic sobre el cobro para llegar a la **Consulta de Asignación**.
2. En la pestaña **Línea de Asignación**, confirmar que efectivamente el cobro quedó vinculado a la factura equivocada.
3. Como el período contable del cobro sigue abierto, se ejecuta el proceso **Asignación (Restaurar)** indicando el socio del negocio y la asignación puntual a borrar.
4. Con la factura y el cobro nuevamente libres, se ingresa a **Asignación de Pagos** y se vincula el cobro con la factura correcta.

## Consideraciones importantes

- Esta ventana es de **consulta y reversión**; para crear asignaciones nuevas se utiliza el formulario [Asignación de Pagos](../../../balance-management/assignment-management-general/assignment).
- La acción **Reversar** no borra la asignación original: genera un documento de reverso y conserva ambos en el historial. Por eso es la opción segura para períodos cerrados.
- Una misma línea puede combinar Factura con Pago, Nota de Crédito o Cargo; no todas las asignaciones representan un cobro o pago directo.
- Antes de reasignar, conviene verificar que la factura y el pago/cobro liberados no tengan otras vinculaciones pendientes que puedan generar inconsistencias en el saldo.

## Ventanas relacionadas

- [Asignación de Pagos](../../../balance-management/assignment-management-general/assignment)
- [Asignación (Restaurar)](./reset-allocation)
- [Asignación (Automática)](./auto-allocation)
- [Reporte de Asignación de Pago](./allocation-report)
