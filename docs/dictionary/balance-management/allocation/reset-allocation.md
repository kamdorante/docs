---
title: Asignación (Restaurar)
category: Documentation
star: 9
sticky: 9
article: false
---

# Asignación (Restaurar)

## Descripción

El proceso **Asignación (Restaurar)** borra asignaciones existentes entre facturas y pagos, cobros, notas de crédito o cargos, para un socio del negocio o un grupo de socios del negocio. A diferencia de la acción **Reversar** disponible en [Consulta de Asignación](./view-allocation), este proceso **elimina** el registro de la asignación sin dejar un documento de reverso en el historial, siempre que el período contable de la asignación esté **abierto**.

No hace distinción entre asignaciones de compra o de venta: sirve tanto para deshacer una asignación **Factura por Pagar – Pago**, como una asignación **Factura por Cobrar – Cobro**, ya que ambos casos utilizan la misma estructura de asignación en el sistema.

## ¿Cuándo se utiliza?

Se utiliza cuando se necesita:

- Deshacer una asignación realizada por error (por ejemplo, un cobro vinculado a la factura incorrecta) para volver a asignarla correctamente.
- Liberar de forma masiva todas las asignaciones de un socio del negocio, cuando se requiere reconstruir su cuenta corriente.
- Corregir asignaciones automáticas que no reflejan la intención real del usuario, antes de que el período contable se cierre.

No corresponde utilizarlo cuando el período contable ya está cerrado; en ese caso se debe usar la acción **Reversar** desde [Consulta de Asignación](./view-allocation), que sí deja registro contable del reverso.

## Acceso

Menú: Gestión de Saldos Pendientes → Asignación → Asignación (Restaurar)

## Parámetros

| Parámetro | Descripción | Tipo | Obligatorio | Valor por defecto |
|---|---|---|---|---|
| Grupo de Socio del Negocio | Restringe el proceso a los socios del negocio pertenecientes a ese grupo | Búsqueda directa | No | |
| Socio del Negocio | Restringe el proceso a un socio del negocio específico | Búsqueda | No | |
| Fecha Contable | Limita el borrado a asignaciones con esa fecha contable | Fecha | No | |
| Asignación | Restringe el proceso a una asignación puntual | Búsqueda | No | |
| Todas las Asignaciones | Si se activa, borra todas las asignaciones que cumplan el resto de los filtros, en lugar de una sola | Sí/No | No | No |

## Flujo del proceso

### 1. Identificar la asignación a corregir

Desde [Consulta de Asignación](./view-allocation) o desde la trazabilidad del documento (factura, pago o cobro), confirmar cuál es la asignación incorrecta y verificar que el período contable siga abierto.

### 2. Ejecutar el proceso

Abrir **Asignación (Restaurar)** desde el menú e indicar los parámetros que acoten la operación al caso puntual:

- Completar **Socio del Negocio** con el cliente o proveedor correspondiente.
- Completar **Asignación** con el documento de asignación puntual a borrar.
- Dejar el check **Todas las Asignaciones** desactivado, salvo que la intención sea liberar de forma masiva todas las asignaciones del socio del negocio filtrado.

### 3. Confirmar la ejecución

Al procesar, el sistema elimina el/los registro/s de asignación indicados. La factura y el pago o cobro involucrados quedan nuevamente disponibles, sin vinculación entre sí.

### 4. Reasignar correctamente

Con los documentos liberados, ingresar a la ventana [Asignación de Pagos](../../../balance-management/assignment-management-general/assignment) y vincular la factura con el pago o cobro correcto.

## Ejemplo de uso

Un cobro quedó asignado por error a la factura de saldo inicial de un cliente, en lugar de a la factura que efectivamente debía cancelar:

1. Desde la Factura por Cobrar, se navega a la pestaña **Facturas Pagadas** y se identifica el cobro mal asignado.
2. Se verifica en **Consulta de Asignación** que el período contable del cobro sigue abierto.
3. Se ejecuta **Asignación (Restaurar)**, indicando el Socio del Negocio y la Asignación puntual a borrar (sin marcar "Todas las Asignaciones").
4. El sistema borra la asignación; la factura de saldo inicial y el cobro quedan libres.
5. Se ingresa a **Asignación de Pagos** y se vincula el cobro con la factura correcta.

## Consideraciones importantes

- El borrado realizado por este proceso **no genera log ni asiento de reverso**; solo puede ejecutarse mientras el período contable de la asignación esté abierto.
- Si el período está cerrado, este proceso no es la herramienta adecuada: usar la acción **Reversar** desde [Consulta de Asignación](./view-allocation).
- Activar el check **Todas las Asignaciones** borra en un solo paso **todas** las asignaciones que cumplan los filtros indicados; usarlo con precaución y preferentemente acotado por Socio del Negocio y Fecha Contable.
- Aplica por igual a asignaciones de Cuentas por Pagar y de Cuentas por Cobrar: el proceso no filtra por tipo de operación, sino por los parámetros indicados.
- Después de restaurar la asignación, la factura y el pago/cobro vuelven a aparecer como pendientes en los reportes de [Facturas sin Asignar](./unallocated-invoices) y [Pagos sin Asignar](./unallocated-payments) hasta que se reasignen.

## Ventanas relacionadas

- [Consulta de Asignación](./view-allocation)
- [Asignación de Pagos](../../../balance-management/assignment-management-general/assignment)
- [Facturas sin Asignar](./unallocated-invoices)
- [Pagos sin Asignar](./unallocated-payments)
