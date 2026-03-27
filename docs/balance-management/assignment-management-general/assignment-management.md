---
title: Gestión de Asignaciones
category: Documentation
star: 9
sticky: 9
article: false
---

## Asignaciones

### Consulta de Asignación

Cada una de las asignaciones realizadas en el sistema se podrán ver individualmente desde la ventana “Consulta de Asignación”. Este documento es donde se realiza el Asiento Contable propio de la asignación, donde cancela las cuentas por pagar contra el desembolso realizado por ejemplo.

El detalle de la asignación se ve en sus líneas donde se pueden realizar diversas combinaciones (Factura – Nota de crédito, Factura – Pago, Factura – Cargo o Pago - Cargo).

![Consulta de asignación](/assets/img/docs/balance-management/bam-am1.png)

### Trazabilidad de Asignaciones en los Documentos

#### Documentos por Pagar

Podrá ver las asignaciones a este documento en la pestaña de Pagos Asignados.

Podrá navegar a la asignación haciendo clic en el documento.

![Documento por Pagar](/assets/img/docs/balance-management/bam-am2.png)

#### Documentos por Cobrar

Podrá ver las asignaciones a este documento en la pestaña de Facturas Pagadas.

Podrá navegar a la asignación haciendo clic en el documento.

![Documento por Cobrar](/assets/img/docs/balance-management/bam-am3.png)

#### Recibo de Pago

Podrá ver las asignaciones a este documento en la pestaña de Documentos Asignados.

Podrá navegar a la asignación haciendo clic en el documento.

![Recibo de Pago](/assets/img/docs/balance-management/bam-am4.png)

#### Recibo de Cobro

Podrá ver las asignaciones a este documento en la pestaña de Documentos Asignados.

Podrá navegar a la asignación haciendo clic en el documento.

![Recibo de Cobro](/assets/img/docs/balance-management/bam-am5.png)

### Asignación

Es un documento que vincula dos o más elementos, de forma que se pueda tener una trazabilidad perfecta a causa de esta vinculación.

#### Tipos de Documentos de Asignación

* Asignación Factura - Pago/Cobro
* Asignación Factura - Nota de Crédito
* Asignación por Anulación
* Asignación por Documento Diferido

#### Asignación Factura Pago/Cobro

**Documento por Cobrar/Pagar                          Pago/cobro, Cargo Contable**

Asignación entre Facturas a Pagar y Pagos o entre Facturas a Cobrar y Cobros.

La Asignación disminuirá el Saldo Pendiente del Documento por Pagar/Cobrar.

#### Asignación por Nota de Crédito

Documentos por Cobrar/Pagar                    Nota de Crédito de documento por Cobrar/Pagar

Asignación Nota de Crédito 1

Asignación Nota de Crédito 2

Asignación Nota de Crédito 3

#### Asignación por Anulación

Documentos por Cobrar/Pagar                    Anulación de documento por Cobrar/Pagar

En cada oportunidad que un documento completo es Anulado el Sistema crea el Reverso de ese mismo documento y lo asigna mediante este documento.

#### Asignación por Documento Diferido[](https://docs.solop.io/luy/procedures/open-items/allocations/allocations.html#asignacion-por-documento-diferido "Permalink to this headline")

Es la que se realiza cuando el Documento a Pagar / Cobrar se sustituye por un Documento por Pagar/Cobrar de otro Tipo Diferido (por ejemplo una Factura se paga o cobra con un Documentos Cheque de Pago/Cobro Diferido).

De esta manera el saldo del Documento por Pagar/Cobrar original (Facturas) disminuye por la sustitución con otro Documento de diferente Tipo y características, como por ejemplo un Cheque Diferido por Pagar.

El Documento por Pagar (Factura de Proveedor) se sustituye por otro Documento a Pagar (Cheque Diferido por Pagar).

El Saldo Abierto del Documento por Pagar que se estará Cancelando con el documento Pago Diferido.

El Documento por Cobrar (Factura Cliente) se sustituye por otro Documento a Cobrar (Cheque Diferido a Cobrar)

#### Asignación Automática de Nota de Crédito[](https://docs.solop.io/luy/procedures/open-items/allocations/allocations.html#asignacion-automatica-de-nota-de-credito "Permalink to this headline")

Se utilizan los campos en pestaña “CFE Referidos” de “Total Abierto” y “Total Asignado”. Estos campos, cuando las líneas en esta pestaña son generadas mediante un proceso, se cargan de la siguiente manera:

* Desde botón “Crear Desde” (desde Factura) en cabezal de documento: se

setea el importe abierto de la factura y el importe total asignado, según el total de líneas agregadas a la nota de crédito.

* Desde proceso “Generar Nota de Crédito desde Factura” (en el ícono del

engranaje en cabezal de factura): se setea el importe abierto de la factura y el importe total asignado, según el total de líneas agregadas a la nota de crédito.

* Desde proceso “Generar Nota de Crédito desde Devolución”: se setea el

importe abierto de la factura y el importe total asignado se toma del importe total del cabezal de RMA (Autorización de Devolución)

Si se genera una línea manualmente en pestaña “CFE Referidos”, también se carga el importe abierto, y el importe asignado con igual valor.

Luego, al momento de completarse la NC, se genera la asignación automática creando una línea por la NC, y las N líneas por cada una de las facturas presentes en los CFE Referidos, por el importe asignado indicado en cada una.

Al momento de ejecutarse este proceso, se verifica que cada una de las facturas siga teniendo un saldo abierto igual o mayor al indicado en la NC, y también que la moneda sea la misma de la NC, de lo contrario se retorna mensaje de error indicando el motivo.

CONTROLES:

* No se permite guardar una línea en CFE referidos, si hay una factura

seleccionada y al menos uno de los campos de importe (total abierto o total asignado) es menor o igual a cero.

* No se permite completar la NC si el monto total de facturas asignadas

es mayor al importe de la NC. En el caso que sea menor, entonces la NC se asigna con el importe de las facturas asignadas, quedando un pendiente en la NC.

En ningún caso se toman en cuenta las lineas de CFE referidos que no tienen factura seleccionada.

### Documentos por Pagar

#### Pago (contado)

| Descripción | Cargo | Abono |
| :--- | :--- | :--- |
| 21300 - Payment Selection | 4.700,00 | 0.00 |
| 11110 - Checking In-Transfer | 143.459,81 | 4.700,00 |

### Cheque Diferido

**Emisión de Cheque**

| Descripción | Debe | Haber |
| :--- | :---: | :---: |
| Cuenta Puente Diferidos | 3.000,00 | 0.00 |
| Documentos a Pagar Diferidos | 0.00 | 3.000,00 |

**Nota de Crédito Automática.**

| Cuenta | Debe | Haber |
| :--- | :---: | :---: |
| 21100 - Accounts Payable Trade | 3.000,00 | 0.00 |
| Cuenta Puente Diferidos | 0.00 | 3.000,00 |

### Asignación de Pagos

| Cuenta | Debe | Haber |
| :--- | :---: | :---: |
| 21100 - Accounts Payable Trade | 500 | 0.00 |
| 21300 - Payment Selection | 0.00 | 500 |

#### Asignación por Depósito

Cheque Diferido por Cobrar/Pagar        Depósito Cheque/Débito Cheque

#### Asignación Cliente Proveedor

#### Asignación Pago Cobro                                                                         

Pago                 Cobro/Cargo