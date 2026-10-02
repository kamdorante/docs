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
- **Desasignar** una factura de un pago o cobro con la acción **Restaura Asignación Directa**, cuando el período contable está abierto.
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

## Acciones

- **Restaura Asignación Directa**
  Borra la asignación que se está consultando y libera el enlace entre la factura y el pago o cobro. No solicita parámetros y no deja registro histórico; solo puede ejecutarse si el período contable de la asignación está abierto.
- **Reversar** (acción de documento)
  Genera un documento de reverso de la asignación y conserva ambos en el historial. Es la opción para períodos contables cerrados.

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

- Si el **período contable está abierto**, ejecutar la acción **Restaura Asignación Directa** desde esta ventana. Borra la asignación sin dejar registro histórico. Para borrar varias asignaciones a la vez, usar el proceso [Asignación (Restaurar)](./reset-allocation).
- Si el **período contable está cerrado**, usar la acción **Reversar** desde esta ventana. A diferencia de Restaurar, Reversar genera el contra-asiento correspondiente y deja registro de la operación.

### 4. Reasignar correctamente

Una vez liberados la factura y el pago/cobro, volver a vincularlos desde la ventana [Asignación de Pagos](./payment-allocation).

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
3. Como el período contable del cobro sigue abierto, se ejecuta la acción **Restaura Asignación Directa** sobre esa asignación.
4. Con la factura y el cobro nuevamente libres, se ingresa a **Asignación de Pagos** y se vincula el cobro con la factura correcta.

## Preguntas frecuentes

### Asigné una factura a un cobro equivocado. ¿Cómo la desasigno para asignarla al cobro correcto?

Desde esta misma ventana, con la acción **Restaura Asignación Directa**:

1. Ubicar la asignación incorrecta (desde el menú o navegando desde la factura o el cobro, ver [Trazabilidad](#trazabilidad-desde-otros-documentos)).
2. Con el registro de asignación abierto, ejecutar **Acciones → Restaura Asignación Directa**.
3. El sistema borra el vínculo entre la factura y el cobro; ambos documentos quedan nuevamente pendientes.
4. Ingresar a [Asignación de Pagos](./payment-allocation) y vincular la factura con el cobro correcto.

### ¿"Restaura Asignación Directa" sirve también para facturas de venta y cobros (recibos)?

Sí. La acción no distingue entre compras y ventas: libera el enlace de cualquier asignación, ya sea **Factura por Pagar – Pago** o **Factura por Cobrar – Cobro**. El nombre "pagos/cobros" se refiere al mismo tipo de documento de asignación en ambos casos.

### ¿Se anula el cobro o la factura al restaurar la asignación?

No. Solo se elimina el **vínculo** entre los documentos. La factura y el cobro siguen en estado *Completo*, con sus importes originales, y quedan disponibles para asignarse nuevamente. Mientras no se reasignen, aparecen en los reportes [Facturas sin Asignar](./unallocated-invoices) y [Pagos sin Asignar](./unallocated-payments).

### ¿Funciona con la factura de saldo inicial?

Sí. Una factura de saldo inicial se asigna igual que cualquier otra factura, por lo que su asignación puede restaurarse con el mismo procedimiento.

### ¿Cuál es la diferencia entre "Restaura Asignación Directa", "Asignación (Restaurar)" y "Reversar"?

| Opción | Dónde se ejecuta | Alcance | Deja registro | Período contable |
|---|---|---|---|---|
| **Restaura Asignación Directa** | Acción de esta ventana | La asignación abierta | No | Debe estar abierto |
| **[Asignación (Restaurar)](./reset-allocation)** | Proceso del menú | Una o varias asignaciones, filtradas por socio del negocio, grupo o fecha | No | Debe estar abierto |
| **Reversar** | Acción de documento de esta ventana | La asignación abierta | Sí, genera el documento de reverso | Abierto o cerrado |

### La acción "Restaura Asignación Directa" no me deja borrar la asignación. ¿Por qué?

La causa más común es que el **período contable** de la asignación esté cerrado. En ese caso, usar la acción **Reversar**, que deja registro del reverso y no requiere borrar la asignación original. Si el período está abierto y el error persiste, verificar que el rol tenga acceso al proceso.

## Consideraciones importantes

- Esta ventana es de **consulta y reversión**; para crear asignaciones nuevas se utiliza el formulario [Asignación de Pagos](./payment-allocation).
- La acción **Reversar** no borra la asignación original: genera un documento de reverso y conserva ambos en el historial. Por eso es la opción segura para períodos cerrados.
- Una misma línea puede combinar Factura con Pago, Nota de Crédito o Cargo; no todas las asignaciones representan un cobro o pago directo.
- Antes de reasignar, conviene verificar que la factura y el pago/cobro liberados no tengan otras vinculaciones pendientes que puedan generar inconsistencias en el saldo.

## Ventanas relacionadas

- [Asignación de Pagos](./payment-allocation)
- [Asignación (Restaurar)](./reset-allocation)
- [Asignación (Automática)](./auto-allocation)
- [Reporte de Asignación de Pago](./allocation-report)
- [Facturas sin Asignar](./unallocated-invoices)
- [Pagos sin Asignar](./unallocated-payments)
