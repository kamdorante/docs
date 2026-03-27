---
title: Recibo de Pago/Cobro
category: Documentation
star: 9
sticky: 9
article: false
---

## Recibo

### Recibo de Pago

El recibo de pago opera de manera similar al de Recibo de Cobro.

Para realizar un Recibo de Pago se deberá ingresar a la ventana “Recibo de Pago”.

**Número:** Definir manualmente el Número del Recibo entregado por el Proveedor, si no lo define el sistema lo definirá automáticamente.

**Proveedor:** donde se deberá ingresar el Proveedor a quién se le está pagando. **Moneda:** La Moneda del recibo determinará la Moneda que se entregará el/los Medio de Pago.

**Observaciones:** Observaciones sobre el documento en cuestión.

**Referencia:** Referencia del Documento, se podrá poner la OC que corresponde por ejemplo.

![Recibo de Pago](/assets/img/docs/balance-management/bam-receipt1.png)

Acciones

### Asignar Facturas (Documentos por Pagar)

Haciendo click en este botón podrá seleccionar directamente qué facturas se estarán cobrando.

Si la suma de todos los Documentos seleccionados es igual al importe del Recibo de Cobro se realizará la Asignación correspondiente de manera automática.

Si existe una diferencia pero no se selecciona un Cargo, los importes no cerrarán por lo que no se generará la Asignación automática.

### Seleccionar Cheque Diferido

En caso de realizar un Pago con un Cheque Diferido se deberá generar el mismo previamente para luego desde el Recibo de Pago simplemente seleccionar el mismo.

### Generar Pago Contado

Definir con qué medio de pago se estará pagando (Contado, Cheque al día o Transferencia). Así como también el importe del mismo.

Total Medios de Pago: Total de medios de pago asignados al recibo

Importe Asignado: Total de facturas asignadas en el recibo

Total Pendiente de Asignar: Total pendiente de asignar (Monto abierto del recibo). No puede ser positivo sin tener un Cargo asignado para saldar la diferencia.

### Ajuste

En caso de que exista una diferencia entre los Medios de Pago y los Documentos a Asignar (redondeo, gastos bancarios por transferencias, etc) , se podrá aplicar dicha diferencia a un Cargo.

Si existe diferencia y no se selecciona un Cargo, los importes no equilibrarán exactamente, por lo que no se generará la Asignación automática.

*Cargo:* Seleccionar entre los cargos definidos el cargo que se desea aplicar la diferencia.

Importe del Cargo: Diferencia existente entre los Medios de Pago seleccionados y los Documentos Asignados.

### Recibo de Canje

Acción igual a la explicada para Recibos de Cobro.

**Nro de Documento de Pago:** En este campo se podrá definir el Nro de Recibo de Pago recibido por el Socio del Negocio. En caso de dejar el campo en blanco se definirá un nro por defecto. Luego se podrá definir el Nro de Recibo real en el Campo Descripción del Recibo de Pago.

Una vez terminado todos los pasos se deberá completar el documento.

### Recibo de Cobro

Es un documento que la empresa emite indicando que cobró a un tercero uno o varios Documentos por Cobrar, indicando qué Documentos está cobrando y con qué medios de pago le están pagando.

Es un documento emitido por la empresa que relaciona qué está cobrando y con qué le están pagando.

El recibo de cobro tiene un total monetario que está formado por la suma de los “Medios de Pago”, este total nunca puede exceder el total del recibo de cobro

El recibo de cobro tiene documentos afectados o “Documentos Por Cobrar”, que pueden afectarse total o parcialmente, la suma de esta relación puede ser igual o menor que el Recibo de Cobro pero nunca superior.

![Recibo de Cobro](/assets/img/docs/balance-management/bam-receipt2.png)

### Ingreso del Recibo de Cobro una moneda

Para realizar un Recibo de Cobro se deberá ingresar a la ventana llamada Recibo de Cobro.

* Nro. del Documento: En caso de contar con Libretas de Recibos se deberá definir el Nro. del Recibo de manera manual.
* Cliente: donde se deberá ingresar el cliente a quién se le cobrará.
* Moneda: La Moneda del recibo determinará la Moneda que se recibirá el/los Medio de Pago.
* Descripción: Observaciones sobre el documento en cuestión.

En la sección Referencia podrá ver datos sobre los importes definidos en el Recibo. Los campos son los siguientes:

* Total Medios de Pago: Total de medios de pago asignados al recibo.
* Importe Asignado: Total de facturas asignadas en el recibo.

Total Pendiente de Asignar: Total pendiente de asignar (Monto abierto del recibo).

En algunas oportunidades el total de los Documentos por Cobrar no coinciden con exactitud a los importes recibidos, generando un Importe sin Asignar. Por ejemplo un redondeo.

En el caso que exista un importe Pendiente de asignar positivo, se le deberá asignar un Cargo para saldar la diferencia. Por ejemplo un Cargo de “Redondeo”

Esto permitirá que el sistema realice la asignación automática.

### Acciones

Las acciones que se pueden realizar serán:

* Asignar facturas
* Generar Cheques Diferidos
* Generar Cobro/Pagos Contados

y se deberán realizar con los botones que está en la imagen de abajo.

#### 1- Asignar Facturas

Con el botón Asignar Facturas podrá seleccionar directamente qué Documentos por Cobrar está cobrando.

Si la suma de todos los Documentos seleccionados es igual al importe del Recibo de Cobro se realizará la Asignación correspondiente de manera automática.

#### 2- Generar Documento de Cobro Diferido

Definir el Cheque Diferido que se está recibiendo. Se deberá definir la siguiente información: Nro de Cheque, Banco del Cheque, Importe, Fecha de Emisión y Fecha. Vencimiento.

#### 3- Generar Cobro Contado

Seleccionar con qué medio de pago se estará cobrando. Contado, Cheque al día, cheque diferido, conforme, canje o Transferencia.

En caso de que exista una diferencia entre los Medios de Pago y los Documentos a Asignar, se podrá enviar dicha diferencia a un Cargo.

::: tip
Si existe una diferencia pero no se selecciona un Cargo, los importes no cerrarán por lo que no se generará la Asignación automática.
:::

Cargo: Seleccionar entre los cargos definidos allí que se desea enviar la diferencia.

Importe del Cargo: Diferencia existente entre los Medios de Pago seleccionados y los Documentos Asignados.

### Recibo de Canje

Si dentro del recibo se han ingresado Documentos por Cobrar, pero también Documentos por Pagar, estos serán sumarizados con signo contrario para la Asignación de Facturas. Al completar este Recibo estas Facturas serán Asignadas entre si descontando correctamente el Saldo y quedando las mismas como Canceladas también.

Opcionalmente podrá definir en el campo “Recibo de Canje” el nro del Recibo de Canje que en este caso generará de manera automática pero en la Cuenta Corriente de Cuentas por Pagar con este Socio del Negocio. De esta manera quedará correctamente representado en ambos estados de cuenta corriente quedando claro el “Canje” que realizó.

### Acciones al Completar un Recibo

Al Completar un Recibo de Cobro, se completarán así como los Cobros definidos en el mismo como también se generará una Asignación entre todos los documentos definidos en sus pestañas. Será la Asignación el documento que realmente cancelará el Saldo Abierto de aquellos Documentos por Cobrar y Documentos por Pagar con sus correspondientes Pago/Cobro.

### Recibo Multimoneda

Los pasos a seguir para generar un Recibo Multimoneda son los siguientes:

Acceder a la ventana Recibo de Cobro o Recibo de Pago según corresponda.

En el cabezal deberán definirse los siguientes campos:

* Tipo de documento
* Socio de Negocio
* Moneda (moneda con la que realizó el pago/cobro)
* Seleccionar el “check multimoneda”
* En el campo “Moneda hacia” indicaremos la moneda a considerar para seleccionar las facturas a asignar, la moneda a la que se convertirá.
* El campo “Tipo de Conversión”, permitirá seleccionar las opciones “Spot”, “Company” o “Documento”.
  * Si elegimos **“Documento”**, podremos elegir la tasa a utilizar, la cual será válida sólo para este recibo.
  * Las otras opciones aquí con “Spot” o “Company” donde se cargaran estas tasas en modo “sólo lectura”.
* Por último el campo “Tasa”, donde definiremos la correspondiente tasa manualmente en caso de haber elegido Tipo de conversión: “Documento”.

Luego seleccionaremos las facturas a asignar mediante el botón “Asignar facturas”.

Se abrirá un Smartbrowser donde seleccionaremos las facturas que se desean asignar.

En los filtros verá las condiciones por la cuál se filtraran las facturas, siempre mostrando facturas con saldo abierto.

Aquí por defecto nos trae en el campo “Moneda” la moneda en la que se cobra o paga, y podemos aplicar además otros filtros que deseemos.

Luego daremos click en “comenzar búsqueda” para correr el proceso de Smartbrowser.

Elegimos las facturas y en total de pago indicamos el importe a asignar al Recibo (convertido a la moneda con la que se va a pagar/cobrar). Luego daremos OK.

Por último, generamos el cobro/pago mediante la opción “Generar cheque diferido” o “Generar pago contado” según corresponda y completaremos el documento.

### Recibo de Cobro con Redondeo

Para generar un recibo de cobro se comenzará completando los siguientes campos:

* Tipo de Documento
* Socio del Negocio
* Moneda

Luego se procederá a asignar las Facturas y a generar el Cobro.

El Recibo de cobro posee un check de “Redondeo” donde será obligatorio el importe y se define por defecto el cargo Redondeo.

Si no se marca el check de Redondeo, el importe asignado de Facturas y el importe asignado de Pago deben ser iguales.

### COBRO SUPERIOR A FACTURAS (Signo Negativo)

* Puede ser que la Asignación por importe de Facturas sea menor al Cobro y se desee dejar un saldo abierto del Cobro.

En este caso **NO** se deberá marcar el check de Redondeo.

* La otra opción es Asignar el total del Cobro mandando el resto a un Cargo.

Aquí **SI** deberemos marcar el check de Redondeo.

### FACTURAS SUPERIOR AL COBRO (Signo POSITIVO)

* **Asignación Parcial:** Para poder hacer una asignación Parcial de las Facturas se deberá seleccionar las mismas desde el Smartbrowser de Asignar Facturas por el importe que se desea asignar.

::: tip 
Para poder asignar parcialmente un DxC en un recibo de cobro, al asignarlo, deben modificar en la columna "total del pago" el importe (inferior al total de la factura) que quieran aplicar. Esto dejará un importe abierto del Documento por Cobrar
:::

* **Asignación total:** Si se tiene un importe superior de las facturas al Cobro, se marca el check “redondeo” y se enviará dicha diferencia al Cargo Redondeo.

Como último paso en todos los casos se deberá Completar el documento mediante el botón Completar.

::: tip
El sistema NO PERMITE asignar de más si no se marca el check de Redondeo.
:::

### Impresión de Recibo de Cobro

Es posible imprimir el detalle del Recibo de Cobro realizado a los clientes de la empresa con un formato y pre-numeración oficial.

Para esto presione imprimir en la Barra de Herramientas y el Reporte mostrará:

* Documentos por Cobrar cancelados
* Documentos de Pago recibidos

### Canje de Recibos (misma moneda)

Directamente desde el Recibo se puede generar un Canje de Recibos, ya sea desde un Recibo de Cobro como desde un Recibo de Pago.

Para realizar el Canje simplemente bastaría Asignar el Documento que querría “Canjear” desde el botón Asignar Facturas.

En caso de estar posicionado en un Recibo de Cobro donde se quiere asignar un **“Documento por Pagar”** para utilizar en modo de “Canje” simplemente se deberá hacer los **2 procesos** siguientes:

* **Asignar Facturas de Venta:** Al oprimir el botón “Asignar Facturas” de desplegará un Smart Browser donde podrá filtrar los Documentos a ser asignados. En sus Filtros podrá apreciar que se encuentra definido por defecto el Socio del Negocio del Recibo así como la Moneda del mismo. Además, si está en un Recibo de Cobro, por defecto se visualizarán Documentos por Cobrar (Facturas Cliente) que se filtran con el check “Transacción de Ventas” en SI.

* **Asignar Facturas de Compra:** si desea seleccionar “Documentos por Pagar” para Canjear deberá desmarcar el Check “Transacción de Ventas” en “N”. De esta manera al aplicar la búsqueda se desplegarán todos los Documentos por Pagar que tengan saldo abierto del Socio de Negocio en cuestión.

* En caso de que el importe de los Documentos que se desean “Canjear” no alcance al importe que se quiere Asignar de Documentos por Cobrar se deberá complementar el importe a asignar agregando uno o los Medios de Pago que desee de la manera habitual.

* Luego de terminar de generar todos los Medios de Pago y Documentos a ser Asignados, si incluyó Documentos a ser Canjeados en la Asignación, el Recibo al ser Completado generará de manera automática el Recibo contrario generado mediante el Canje. En este ejemplo generará un Recibo de Pago por el importe asignado de los Documentos por Pagar asignados. Para definir el Nro de Recibo de Canje, en este ejemplo el que sería entregado por el Proveedor, antes de Completar el mismo, deberá definir su nro en el campo “Nro de Recibo de Canje” para que sea creado correctamente.

* Este recibo podrá visualizarse en el Estado de Cuenta del Proveedor que está cancelando.

**Nro de Documento de Pago:** En este campo se podrá definir el Nro de Recibo de Pago recibido por el Socio del Negocio. En caso de dejar el campo en blanco se definirá un nro por defecto. Luego se podrá definir el Nro de Recibo real en el Campo Descripción del Recibo de Pago.

Una vez terminado todos los pasos se deberá completar el documento.

**Impresión del Recibo**

En caso de contar con Impresión de Recibos, una vez que esté completo el Recibo de Cobro aparecerá el botón para imprimir el documento. Dándole click deberá imprimir el documento correspondiente.