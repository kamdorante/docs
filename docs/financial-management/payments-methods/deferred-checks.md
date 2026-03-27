---
title: Cheques Diferidos
category: Documentation
star: 9
sticky: 9
article: false
---

Un cheque diferido (o cheque de pago diferido) es una orden de pago emitida por una cuenta bancaria que se puede presentar para su cobro en una fecha posterior a la de su emisión.

A diferencia de un cheque común, que se debe presentar al cobro inmediatamente, un cheque diferido permite al emisor fijar una fecha futura para el cobro. 

### Creación cheque por cobrar

Los **Cheques Diferidos por Cobrar** son generados al momento de ingresar el **Recibo de Cobro**, creándolo en ese mismo momento desde esa ventana.

Podrá emitir un cheque diferido por Cobrar desde la ventana de Recibo de Cobro presionando el botón **Generar Cheque Diferido**.

![Generar Cheque Diferido](/assets/img/docs/balance-management/bam-deferred1.png)

#### Proceso 

Deberá ingresar la información del Cheque Diferido a Cobrar que está recibiendo:

* **Nro. de Documento**: Es el número que identifica el Cheque Diferido a Cobrar
* Banco: Es el Banco emisor del cheque. Esta es una lista desplegable, por lo que el Banco deberá estar creado.
* **Moneda**: Campo de sólo lectura. Es la moneda del Recibo de Cobro
* **Monto**: Monto del Cheque
* **Fecha de la Transacción**: Es la fecha en que se emitió el cheque. No podrá ser anterior a la fecha del recibo.
* **Fecha de Vencimiento**: Fecha de vencimiento del Cheque Diferido. No podrá ser anterior a la fecha del recibo.
* Aceptar

![Información de Cheque](/assets/img/docs/balance-management/bam-deferred2.png)

El Cheque Diferido por Cobrar será creado y lo podrá ver en la ventana de Cheque Diferido por Cobrar.

![Ventana Cheque Diferido](/assets/img/docs/balance-management/bam-deferred3.png)

### Anulación

En este caso, para anular el cheque diferido por cobrar se deberá anular el documento que generó el Cheque Diferido por Cobrar. Desde el Recibo de Cobro que lo generó.
Al anular el recibo de cobro se anulará el cheque diferido por cobrar generado.

### Ventana

Los cheques diferidos por cobrar se visualizan en la ventana **Cheque Diferido Por Cobrar**.

Esta ventana es solamente de lectura (consulta), ya que los cheques por cobrar se generan automáticamente desde el recibo de cobro.

![Ventana Cheque Diferido](/assets/img/docs/balance-management/bam-deferred4.png)

![Ventana Cheque Diferido](/assets/img/docs/balance-management/bam-deferred4b.png)

El Vencimiento desde la ventana se verá en la Pestaña **Vencimiento**. De todas maneras la manera más ágil de ver estos vencimientos será mediante el **Reporte de Cheques Diferidos**.

![Reporte](/assets/img/docs/balance-management/bam-deferred5.png)

### Depósito de Cheques

En paso posterior a su creación desde **recibo de pago** un **cheque diferido por cobrar** es posible depositarlo desde **Depósito de Cheques**. 
Presenta filtros de **Socio del negocio**, **moneda**, **fecha de facturación** y **fecha de vencimiento** que permiten agilizar el proceso de depósito de cheques (en forma individual o masiva).

![Depósito de Cheques](/assets/img/docs/balance-management/bam-deferred6.png)

#### Débito Cheques Propios

Los Débitos de Cheques Propios se deben realizar mediante el proceso automatizado de **Débito de Cheques**, el cual representa la salida de fondos de la empresa a causa del vencimiento de la fecha del cheque diferido.

La ventaja de utilizar este proceso en vez de la ventana de **Depósito de Cheque Propio**, es que se pueden hacer los Débitos de una manera mucho más ágil.

Se permite filtrar los cheques a depositar por socio de negocio, moneda, fecha de emisión y vencimiento del cheque.

Luego de oprimir el botón **Comenzar Búsqueda**, se cargan automáticamente en la grilla de abajo los cheques encontrados, pudiendo seleccionar uno o más. En la parte inferior se deberá indicar la **Fecha de transacción** (fecha del depósito) y el **Tipo de documento**. Para finalizar se confirma la acción mediante el botón de OK.

El documento generado por este depósito podrá ser visualizado en la ventana **Depósito de Cheque Propio**.

Luego veremos el documento generado en la ventana **Depósito de Cheque Propio** (solapa general).

![Débito de Cheques](/assets/img/docs/balance-management/bam-deferred9.png)

### Cheque por Pagar

Un "cheque diferido por pagar" (o cheque de pago diferido) es una orden de pago emitida a una fecha futura, no a la vista. Es decir, el cheque se emite hoy, pero se indica una fecha posterior para su cobro. Esto permite al emisor (el que escribe el cheque) tener tiempo para reunir los fondos necesarios en su cuenta bancaria antes de que el cheque pueda ser cobrado. 

### Libreta de Cheques

Cómo primer paso para emitir cheques manuales en libretas, se deberán crear las libretas de Cheques en el sistema, así como las secuencias para las mismas. Para ello se deberá ir a la ventana **Libreta de Cheques** y (Pestaña) **Secuencia de Cheques**.

Antes que nada se deberá generar un nuevo registro en la ventana **Libreta de Cheques**, completando el **Nombre** y la **cuenta bancaria**, **Número de Cheque Inicial** y **Número de Cheque Final** de la misma.

Luego de guardar la libreta, en la pestaña **Secuencia de Cheques** se asignará en forma automática la numeración que tendrá dicha libreta de Cheques.

![Libretas](/assets/img/docs/balance-management/bam-deferred7.png)

En la pestaña **Secuencia de Cheques** se visualiza el estado de los mismos.

![Pestaña Cheques](/assets/img/docs/balance-management/bam-deferred8.png)

Puede emitir un cheque diferido por pagar de dos formas diferentes:

1. Con Proceso desde **Recibo de Pago**
2. Desde ventana de **Cheque Diferido por Pagar**

#### 1. Recibo de Pago

Podrá generar los cheques recibidos con el botón de la ventana **Recibo de pago**.
Desde esta ventana, al completar el recibo de pago se generan dos movimientos, por un lado el movimiento de **cheque diferido por pagar** y por otro el de **pago diferido**.
El **Recibo de Pago** es un documento que genera asignaciones: Asocia en este caso un cheque diferido con Facturas (una o varias).

![Recibo de Pago](/assets/img/docs/balance-management/bam-deferred10.png)

#### 2. Cheque por pagar

La emisión de cheques diferidos propios a Pagar se puede realizar mediante la opciòn **Generar Cheque Diferido Por Pagar**.

Deberá completar los siguientes campos:

* **Moneda**: Moneda del cheque.
* **Chequera**: Se debe seleccionar la libreta previamente generada.
* **Nro. de Cheque**: Número correspondiente al cheque.
* **Socio del Negocio**: un cheque siempre deberá ser nominado a un Socio de Negocio.
* **Monto**: Importe del cheque.
* **Fecha de la Transacción**: Fecha de emisión del cheque
* **Fecha de Vencimiento**: Fecha de vencimiento del Cheque

Al aceptar se creará el cheque de acuerdo a los datos ingresados. El mismo podrá visualizar desde la ventana cheque diferido por pagar

El Vencimiento desde la ventana se verá en la Pestaña **Vencimiento**. De todas maneras la manera más ágil de ver estos vencimientos será mediante el **Reporte de Cheques Diferidos**.

![Cheque Diferido por Pagar](/assets/img/docs/balance-management/bam-deferred11.png)

#### Proceso automático de Debitar los Cheques Diferidos por Pagar

De forma automática el sistema diariamente convierte los documentos de **Cheque Diferido por Pagar** en un documento día, realizando la aplicación contable correspondiente.

#### Débito de Cheques Diferidos Propios a pagar (proceso manual)

También es posible cambiar el estado de un Cheque Diferido por Pagar de forma manual mediante el proceso de **Débito de Cheques**.

Mediante los filtros deberá seleccionar el Cheque Diferido y marcar aceptar.

El vencimiento de la fecha “diferida” representa la posibilidad salida de fondos de la empresa a causa del vencimiento de la fecha del cheque diferido.

#### Anulación de Cheques Diferidos a Pagar

Anular un **Cheque Diferido por Pagar**: Por ejemplo cuando el mismo se rompió o consumió el Folio mal escrito, etc. Este proceso debe dejar “Consumido” el Nro de la Libreta pero no debe tener ni un Importe ni estar contabilizado de ninguna manera.

  * Para esto existe el proceso **Anular Folio y Consumir Secuencia de Cheque**, en el cual se debe seleccionar una libreta y el cheque que se quiere anular la emisión para volver a generarlo. Al dar OK se anulará dicho documento igual que si lo realizara desde la ventana pero con la diferencia que además se consumirá el Folio de la Libreta de Cheques para que no pueda ser utilizado nuevamente.

Anular la emisión y Liberar Folio: Por otro lado, puede suceder que el error fue sólo en el sistema, y el Folio del Cheque se encuentra perfecto por lo que se querrá volver a ingresar de manera correcta al sistema. En este caso, si ya completó el **Cheque Diferido por Pagar** se deberá permitir Anular este cheque, y liberar el nro de la libreta para que pueda volver a generar el mismo.

  * Para realizar esta acción simplemente se deberá Anular el Documento directo desde la ventana de **Cheques Diferidos por Cobrar** o **Cheques Diferidos por Pagar**.

La ventaja de utilizar este proceso en vez de la ventana de **Depósito de Cheque Propio**, es que se pueden hacer los Débitos de una manera mucho más ágil.

Se permite filtrar los cheques a depositar por socio de negocio, moneda, fecha de emisión y vencimiento del cheque.

Luego de oprimir el botón **Comenzar Búsqueda**, se cargan automáticamente en la grilla de abajo los cheques encontrados, pudiendo seleccionar uno o más. En la parte inferior se indica la cuenta bancaria de destino y la fecha de transacción (fecha del depósito). Para finalizar se confirma la acción mediante el botón.

El documento generado por este depósito podrá ser visualizado en la ventana “Débito de Cheque Propio”.

### Débito de Cheque Propio

Esta ventana es igual a la ventana **Depósito Cheque Tercero**, con la diferencia que la cuenta seleccionada en el campo **Cuenta Bancaria** debe ser la cuenta del/los cheque/s a depositar.

### Casos Especiales

#### Cancelando un Documento por Pagar con un Cheque Recibido

El sistema actualmente no cuenta con esta funcionalidad de una manera directa pero de todas formas se pueden registrar siguiente los siguientes pasos.

* Crear una Cuenta Bancaria llamada “Endoso de Cheques” (o como guste) con la moneda que realizará este tipo de transacciones.
* Una vez se tenga la cuenta bancaria creada, deberá realizar el depósito del **Cheque Diferido por Cobrar** en la Cuenta Bancaria de “Endoso de Cheques”.
* Luego de hacer el Depósito en dicha cuenta, deberá realizar directamente el pago correspondiente a el **Socio del Negocio** que desea entregar dicho **Cheque Diferido por Cobrar**.

#### Cheque Común a Pagar Devuelto por el Banco

Cheque a Pagar

* Se concilia el cheque original
* Se debe anular el pago del cheque original.
* Se concilia el “Rechazo del Cheque” que está positivo con la “Reversión” del Pago.

::: tip
El asiento se neutraliza.
:::

#### Cheque Común a Cobrar Devuelto por el Banco

Cheque a Cobrar

* Se concilia el cheque original
* Se debe anular el cobro del cheque original.
* Se concilia el “Rechazo del Cheque” que está positivo con la “Reversión” del cobro.

::: tip
El asiento se neutraliza.
:::

#### Cheque Diferido a Pagar Devuelto por el Banco

Cheque a Diferido a Pagar

* Se concilia el cheque original
* Se debe anular el pago del cheque original.
* Se concilia el “Rechazo del Cheque” que está positivo con la “Reversión” del Pago.

::: tip
El asiento se neutraliza.
:::

#### Cheque Diferido a Cobrar Devuelto por el Banco

Cheque Diferido a Cobrar

* Se concilia el cheque original
* Se debe anular el cobro del cheque original.
* Se concilia el “Rechazo del Cheque” que está positivo con la “Reversión” del cobro.

::: tip
El asiento se neutraliza.
:::

::: tip
Importante: cuando un Pago/Cobro se encuentra vinculado a una línea de estado de cuenta bancario, al anularlo se marcará (tanto en el documento original como en el reverso) el check **Asignado** mientras que el check **Conciliado** se mantendrá sin marcar. Esto permite conciliar el rechazo del cheque con la reversión del cobro.
:::

#### Sustitución de Cheque Devuelto

Si se sustituye con cheque día, realizar el pago o cobro nuevamente.

Si está sustituyendo un Cheque diferido:

* Anular Recibo
* Anular Cheque
* Emitir nuevo Recibo con nuevo cheque

#### Depósito del Cheque Diferido:

* Para hacer el depósito del cheque diferido de tercero iremos a la ventana “Depósito de cheques” aplicaremos los filtros deseados y realizaremos la búsqueda **Smart browser** (o buscador inteligente). Luego seleccionaremos el cheque a depositar indicando la Cuenta bancaria destino, la Fecha de la transacción y confirmaremos con el botón de OK. El documento generado por este depósito podrá ser visualizado en la ventana **“Depósito de Cheque Tercero”**.

* Asignar el Depósito a la Entrega/Salida del dinero desde la Cuenta Bancaria en la Conciliación Bancaria

* Luego de realizar el Match entre el Depósito y el Movimiento Bancario de la Conciliación Reversar el Depósito para que se genere un nuevo Depósito con signo contrario

* Realizar el Match en la conciliación entre el Reverso del Depósito con la Línea de la conciliación Bancaria del Rechazo

### Depósito Cheque Cliente

Los Depósitos de Cheques de Clientes se deben realizar mediante el proceso automatizado de **Depósito de Cheques**.

La ventaja de utilizar este proceso en vez de la ventana de “Depósito de Cheque de Tercero”, es que se pueden hacer los depósitos de una manera mucho más ágil, para diferentes socios de negocio al mismo tiempo.

Permite filtrar los cheques a depositar por socio de negocio, moneda, fecha de emisión y vencimiento del cheque.

Luego de oprimir el botón **Comenzar Búsqueda**, se cargan automáticamente en la grilla de abajo los cheques encontrados, pudiendo seleccionar uno o más. En la parte inferior se indica la **cuenta bancaria** de destino y la **fecha de transacción** (fecha del depósito). Para finalizar se confirma la acción mediante el botón.

El documento generado por este depósito podrá ser visualizado en la ventana **Depósito Cheque Tercero**.

Para visualizar la información del Documento generado de Depósito de Cheque de Tercero se ve desde la ventana **Depósito Cheque Tercero**.

### Depósito Cheque Tercero

En el cabezal de la Ventana Depósito de Cheque Tercero se verán los siguientes campos:

**Cuenta Bancaria**: es la cuenta bancaria de destino (cuenta en la que se hará el depósito)

***Fecha de la Transacción**: fecha en que se realiza el depósito

**Socio del Negocio**: socio del negocio del cheque depositado.

**Cheque**: aquí se busca y selecciona el cheque a depositar. Si se desea depositar más de un cheque para el mismo socio de negocios, se puede utilizar la pestaña **Depositar Varios Cheques**.

En caso de desear también se podrá generar los depósitos directo desde esta ventana. Para ello se deberá generar un nuevo registro y completar todos los campos. Para finalizar se procederá a Completar el documento, y de esa manera quedará realizado el depósito del cheque en la cuenta bancaria seleccionada.

![Depósito de Cheque Tercero](/assets/img/docs/balance-management/bam-deferred12.png)

### Cheque Diferido por Pagar

Tanto la Factura como el Cheque Diferido a Pagar son Documentos por Pagar, que se diferenciar por el grado de certeza del Pago o por aspectos jurídicos (con diferente forma y con diferentes atributos).

Un Cheque Diferido por Pagar (C_Invoice), es un Documento por Pagar tipo “Factura” que tiene el mismo signo de la Factura por Pagar que se quiere cancelar. Es decir es una Factura Cheque Diferido.

Es por eso que para Cancelar la Factura Común mediante un Documento de Pago Diferido, se genera automáticamente por detrás un **Pago Diferido**, esto no es otra cosa que una **Nota de Crédito Diferida**.

Este Documento de Pago Diferido tendrá 1 sola línea con el mismo **Cargo** definido que el que tiene el **Cheque Diferido por Pagar** de manera que el mismo se netee entre sí y reclasifique el **Documento por Pagar** (Abierto) a Documento por Pagar (cheque de pago Diferido)

El **Pago Diferido** (Nota de Crédito Diferida) es el que se asignará con el Documento por Pagar que se está cancelando, reduciendo así su saldo, tanto Contablemente como su Saldo Abierto.

Este paso será solamente para cancelar el Saldo Abierto del Documento por Pagar ya que Contablemente como se puede apreciar, al ser Nota de Crédito descuenta el importe de la misma de la cuenta de Cuentas por Pagar.

#### Asignación de Documento por Pagar y Cheque Diferido por Pagar

El **Pago Diferido** generado por el cheque es el que será Asignado con el **Documento por Pagar** que está cancelando. Dicha asignación se realizará cuando se asigne el Pago Diferido con el Documento por Pagar. Esta asignación puede ser automática desde el recibo o bien realizarse luego desde el proceso de Asignación de Recibos.

#### Asignación de Cheque Diferido por Pagar y Pago Diferido

El Cheque Diferido por Pagar será asignado cuando el mismo sea Cancelado, esto será cuando se realice el Débito del mismo en el Banco o en su Vencimiento (la empresa decide si el procedimiento de generar el Débito correspondiente al cheque sea Automático o manual).

Asientos Contables:

Ejemplo (pago mixto):

Documento por Pagar: 7700

Pago Contado: 4700

Pago Cheque Dif. por Pagar 3000

**Documentos por Pagar**

74100-Impuestos D 700

51400-Inventario D 7.000

21100 - Cuentas por Pagar H 7.700

**Pago (contado)**

21300 Pagos seleccionados D 4.700

11110 - Cheques en Tránsito H 4.700

**Cheque Diferido**

**Emisión de Cheque**

Cuenta Puente Diferidos D 3.000

Documentos por pagar Diferidos H 3.000

**Pago Diferido**

**Nota de Crédito Automática**

21100 Cuentas por Pagar D 3.000

Cuenta Puente Diferidos H 3.000

**Consulta de Asignación Factura/Cheque diferido**

21100 - Cuentas por Pagar D 4.700 (por el Pago Contado)

21300 - Cuentas Seleccionadas H 4.700 (por el Pago Contado)

21100 - Cuentas por Pagar D 3.000 (Por el Pago Diferido)

21100 - Cuentas por Pagar H 3.000 (Por el Pago Diferido)

**Consulta de Asignación Cheque diferido/Débito**

21100 - Cuentas por Pagar D 3.000 por el Débito

21100 - Cuentas por Pagar H 3.000

#### Pagos no Comerciales con Cheques Diferidos

Si se requiere emitir y pagar una transacción no comercial, es decir que no corresponde al pago de Documentos por Pagar de proveedores, se deberá utilizar la ventana de **Recibo de Pago** y desde allí, emitir el **Cheque Diferido por Pagar** imputándolo al cargo que requiera.

Si no se desea utilizar el **Recibo de Pago** con la numeración correlativa del documento oficial, utilice la numeración correlativa del sistema o ingrese la numeración manual que desee.