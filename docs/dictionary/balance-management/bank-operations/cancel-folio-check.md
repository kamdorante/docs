---
title: Cancelar Folio de Cheque
category: Documentation
star: 9
sticky: 9
article: false
---

# Cancelar Folio de Cheque

## Descripción

El proceso **Cancelar Folio de Cheque** anula un folio específico dentro de una **Libreta de Cheques** cuando el cheque físico se daña, se pierde o se decide no utilizarlo. El folio anulado deja de estar disponible como *Pendiente*, no puede usarse para emitir un nuevo cheque diferido y queda registrado en la libreta con su estado *Anulado* para auditoría.

Es la acción complementaria al ciclo normal de emisión: mantiene la integridad de la secuencia de folios sin tener que reorganizar la libreta cuando ocurre una incidencia con un cheque físico.

## ¿Cuándo se utiliza?

Se utiliza cuando la organización necesita:

- Anular un cheque físico dañado o impreso con error.
- Dejar fuera de uso un folio extraviado de la chequera.
- Marcar como anulado un cheque que se decidió no emitir y debe mantenerse registrado en la secuencia.
- Mantener la trazabilidad del folio en el sistema sin alterar la numeración correlativa.

## Acceso

Menú: **Gestión de Saldos Pendientes → Operaciones Bancarias → Cancelar Folio de Cheque**

## Parámetros

| Parámetro | Descripción | Tipo | Obligatorio |
|-----------|-------------|------|-------------|
| Cuenta Bancaria | Cuenta a la que pertenece la libreta del cheque a anular | Búsqueda directa | Sí |
| No. de Cheque | Número del folio dentro de la libreta que se desea cancelar | Texto | Sí |

## Acciones disponibles

- **Ejecutar Cancelación**
  Marca el folio indicado como *Anulado* en la libreta. Tras ejecutar el proceso, el folio deja de aparecer como pendiente en la secuencia.

- **Verificar en Libreta**
  Después de cancelar, abrir la **Libreta de Cheques** correspondiente y revisar la pestaña *Folios* para confirmar que el folio quedó marcado como *Anulado*.

## Flujo del proceso

### 1. Identificar el folio a cancelar

Determinar la **cuenta bancaria** a la que pertenece la libreta y el **número de cheque** físico que debe anularse (por daño, pérdida o cualquier otra causa que impida su uso).

### 2. Validar que el folio esté pendiente

Antes de cancelar, abrir la **Libreta de Cheques** y verificar que el folio está en estado *Pendiente*. Un folio ya emitido (asociado a un cheque diferido vigente) no se anula con este proceso; corresponde anular el cheque diferido primero.

### 3. Ejecutar el proceso

Abrir **Cancelar Folio de Cheque**, indicar la cuenta bancaria y el número de cheque, y ejecutar.

### 4. Confirmar en la libreta

Abrir la libreta correspondiente y revisar el folio: debe figurar con estado *Anulado*. El sistema no lo ofrece para nuevas emisiones.

## Ejemplo de uso

Anular un cheque que se imprimió con un error:

1. Identificar la libreta y el número del cheque dañado.
2. Confirmar en **Libreta de Cheques** que el folio está en estado *Pendiente* (no fue emitido todavía).
3. Abrir **Cancelar Folio de Cheque**, indicar la cuenta bancaria de la libreta y el número del folio dañado.
4. Ejecutar. El sistema marca el folio como *Anulado*.
5. Abrir la libreta y verificar que el folio aparece con estado *Anulado*. El siguiente folio disponible queda intacto y puede emitirse normalmente.

## Consideraciones importantes

- El proceso solo anula folios en estado **Pendiente**. Si el folio ya fue emitido (asociado a un *Cheque Diferido por Pagar* vigente), debe primero anularse el cheque diferido y luego, si corresponde, cancelar el folio.
- Un folio **anulado no se reutiliza**: la secuencia se mantiene intacta y el folio anulado queda registrado en la libreta para auditoría.
- La numeración del sistema debe mantenerse alineada con la **chequera física** de la organización. Cancelar folios sin destruir el cheque físico puede generar inconsistencias.
- La acción es **irreversible** desde el sistema: una vez anulado el folio, no puede volverse a *Pendiente*. Si por error se anuló un folio que sí se va a usar, agregar otro folio o crear una nueva libreta para el cheque.
- Para un cheque ya **emitido y depositado** que requiere reverso por motivos contables, el procedimiento es distinto y se gestiona desde el documento *Cheque Diferido por Pagar* o desde el flujo de **Rechazo de Pago / Cobro** según el caso.

## Ventanas relacionadas

- [Libreta de Cheques](check-book)
- [Estado de Cuenta Bancario](bank-statement)
- [Rechazo de Pago / Cobro](../payments-and-receipts/payment-return)
