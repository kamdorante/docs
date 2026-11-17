---
title: Depósito de Cheques
category: Documentation
star: 9
sticky: 9
article: false
---

# Depósito de Cheques

## Descripción

El navegador **Depósito de Cheques** es la herramienta que permite depositar uno o varios **Cheques Diferidos por Cobrar** en una cuenta bancaria propia. Al confirmar la acción, el sistema genera el documento **Depósito Cheque Tercero**, que cancela el cheque diferido y lo deja como un cobro depositado en el banco.

Mientras un cheque diferido no tiene su depósito, el sistema lo considera un **documento por cobrar abierto**: sigue figurando en el reporte **Saldos Abiertos a la Fecha**, aunque el dinero ya haya sido cobrado en el banco. Registrar el depósito es el paso que cierra ese documento y lo retira del reporte.

## ¿Cuándo se utiliza?

Se utiliza cuando la organización necesita:

- Depositar en el banco los cheques diferidos recibidos de clientes, de forma individual o masiva.
- Cerrar cheques diferidos que ya fueron cobrados en el banco pero que siguen apareciendo como abiertos en el reporte **Saldos Abiertos a la Fecha**.
- Regularizar cheques diferidos antiguos que nunca tuvieron su depósito registrado en el sistema.
- Depositar cheques de varios socios del negocio en una sola operación.

## Acceso

Menú: **Cheques Diferidos → Depósito de Cheques**

## Criterios de búsqueda

- **Socio del Negocio** — Limita la búsqueda a los cheques de un cliente en particular.
- **Moneda** — Muestra solo los cheques emitidos en la moneda indicada.
- **Fecha de Emisión** — Acota los cheques por la fecha en que fueron emitidos.
- **Fecha de Vencimiento** — Acota los cheques por su fecha de vencimiento.

Los filtros son opcionales. Para localizar cheques antiguos conviene dejarlos vacíos o ampliar el rango de fechas.

## Columnas de resultado

| Columna | Descripción |
|---|---|
| Número de Documento | Número que identifica el cheque diferido. |
| Socio del Negocio | Cliente que entregó el cheque. |
| Moneda | Moneda del cheque. |
| Total General | Importe del cheque. |
| Fecha de Emisión | Fecha en que se emitió el cheque. |
| Fecha de Vencimiento | Fecha en que el cheque puede cobrarse. |

## Parámetros de la acción

Al seleccionar los cheques, la parte inferior del navegador solicita:

| Parámetro | Descripción | Obligatorio |
|---|---|---|
| Cuenta Bancaria | Cuenta propia en la que se depositan los cheques seleccionados. | Sí |
| Fecha de la Transacción | Fecha del depósito. Para regularizar un cheque antiguo, usar la fecha en que realmente se cobró. | Sí |

## Acciones disponibles

- **Comenzar Búsqueda**
  Carga en la grilla los cheques diferidos abiertos que cumplen con los filtros.

- **Seleccionar cheques**
  Permite marcar uno o varios cheques, incluso de distintos socios del negocio, para depositarlos en una sola operación.

- **OK**
  Genera el documento **Depósito Cheque Tercero** con los cheques seleccionados y los asigna al depósito.

## Flujo del proceso

### 1. Verificar el cheque abierto

Consultar el cheque en la ventana **Cheque Diferido por Cobrar** y confirmar que no tiene un depósito asociado. Un cheque sin depósito permanece como documento por cobrar abierto.

### 2. Abrir el navegador Depósito de Cheques

Ingresar desde el menú y ejecutar **Comenzar Búsqueda**. Si el cheque es antiguo, ampliar las fechas de emisión y vencimiento para que aparezca.

### 3. Seleccionar los cheques

Marcar el cheque o los cheques que se quieren depositar. Todos los cheques seleccionados se depositan en la misma cuenta bancaria.

### 4. Indicar la cuenta y la fecha

Seleccionar la **Cuenta Bancaria** en la que ingresó el dinero y la **Fecha de la Transacción**. Para un cheque con vencimiento en una fecha pasada, se recomienda usar esa misma fecha (o el mes del vencimiento) para que el depósito quede en el período correcto.

### 5. Confirmar con OK

El sistema genera el **Depósito Cheque Tercero** en estado completo.

### 6. Verificar el resultado

- En la ventana **Cheque Diferido por Cobrar**, el cheque muestra el depósito asociado.
- Al volver a ejecutar el reporte **Saldos Abiertos a la Fecha**, el cheque ya no aparece.

## Ejemplo de uso

Un cliente reporta que varios cheques diferidos de terceros, recibidos a comienzos de 2023, siguen apareciendo en **Saldos Abiertos a la Fecha**, aunque ya fueron cobrados en el banco.

1. Se consulta el primer cheque en **Cheque Diferido por Cobrar** y se comprueba que no tiene ningún depósito: por eso sigue abierto.
2. Se abre **Depósito de Cheques** y se buscan los cheques del socio del negocio.
3. Se selecciona el cheque (o todos los cheques pendientes) y se indica la cuenta bancaria donde ingresó el dinero.
4. Se coloca como **Fecha de la Transacción** el mes del vencimiento del cheque (febrero de 2023 en este caso).
5. Se confirma con **OK**. El sistema genera el depósito.
6. Se vuelve a consultar el cheque: ya muestra el depósito. Al ejecutar nuevamente **Saldos Abiertos a la Fecha**, el cheque desaparece del reporte.
7. El mismo procedimiento se repite con los demás cheques de la lista.

## Consideraciones importantes

- Los **Cheques Diferidos por Cobrar** no se cierran manualmente ni se pueden eliminar: la única forma de cancelarlos es mediante su depósito. Si se registraron por error, se anulan desde el **Recibo de Cobro** que los generó.
- El reporte **Saldos Pendientes** (por facturas) no muestra los cheques diferidos; sí los muestra **Saldos Abiertos a la Fecha**, porque este último incluye todos los documentos por cobrar.
- Antes de depositar un cheque antiguo, confirmar que ese dinero no ingresó ya al banco por otro movimiento (otro depósito, línea de extracto o cobro). De lo contrario, el ingreso quedaría duplicado en la conciliación bancaria.
- Si el depósito se registra con una fecha anterior, el período contable correspondiente debe estar abierto.
- El rol que ejecuta la acción debe tener acceso al navegador **Depósito de Cheques**. Los usuarios con rol Administrador lo tienen disponible.
- Una vez generado el depósito, se puede vincular con la línea del extracto bancario desde la [Conciliación de Estado de Cuenta](bank-statement-match).
- Si el banco devuelve un cheque ya depositado, el rechazo se registra sobre el depósito, no sobre el cheque diferido. Ver [Cheques Diferidos](../../../financial-management/payments-methods/deferred-checks).

## Ventanas relacionadas

- [Estado de Cuenta Bancario](bank-statement)
- [Conciliación de Estado de Cuenta](bank-statement-match)
- [Libreta de Cheques](check-book)
- [Pagos sin Conciliar](unreconciled-payments)
- [Cheques Diferidos](../../../financial-management/payments-methods/deferred-checks)
- [Saldos Pendientes](../../../balance-management/pending-balance-reports)
