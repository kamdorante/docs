---
title: Gestión Financiera
category: Documentation
star: 9
sticky: 9
article: false
---

## Acciones

### Gestión de Cheques Diferidos

### Libretas/Resmas de Cheques Propios

Para emitir cheques manuales en libretas, se deben crear las libretas/resmas en el sistema, así como las secuencias para las mismas en las ventanas “Libreta/Resma Cheques” y “Secuencia de Documentos Controlados”.
Se debe generar un nuevo registro en la ventana “Libreta/Resma Cheques”, completando el Nombre y la cuenta bancaria de la misma.

1. Navegar en el campo “Numeración de Libreta”, abriendo la ventana Secuencia de Documentos Controlados.

2. Aquí se debe ingresar el nombre, descripción opcional, número de inicio y fin de la libreta, y si fuera necesario un sufijo o prefijo para la numeración.

3. Guardar el registro, mediante el botón “Generar Líneas”.

4. De regreso en la ventana de libreta/resma de cheques, se debe ingresar el nombre, nombre a ser impreso, cuenta bancaria y la secuencia del documento (definida anteriormente).

En la pestaña “Cheques” se visualiza el estado de los mismos.

### Cheque Diferido Por Pagar

La emisión de cheques diferidos propios se debe realizar mediante la ventana “Cheque Diferido Por Pagar”. 
En el cabezal de la misma se deberá completar los siguientes campos:

Libreta, Nro. Cheque, Fecha Emisión, Socio del Negocio, Dirección del Socio de Negocio.

Luego, debe ingresar a la siguiente pestaña y abrir una “Línea” accionando Nuevo, clickeando en la línea, se debe ingresar el importe del cheque (el Cargo aparecerá de manera predeterminada).

### Anular un cheque diferido por pagar

Para anular un cheque diferido por pagar el mismo NO debe estar en Estado de Cheque "Entregado".

El estado del cheque se modifica cuando el mismo se "Entrega" en un Recibo de Pago.

Para anular el cheque primero hay que anular el recibo. Esto permite anular el Cheque diferido por pagar.

### Depósito de un cheque diferido

Para hacer un depósito de cheque diferido, debe ingresarse en ventana “Depósito de cheques”. 
Definimos los filtros que deseemos aplicar y realizamos la búsqueda “Smart browser”.

Luego seleccionamos los cheques a depositar indicando la Cuenta bancaria destino y la Fecha de la transacción y hacemos click en la opción “OK”.
  
### Check Conciliado al Anular un Pago/Cobro

Al anularse un depósito de cheque de tercero, al reversar el documento, se consulta si para el pago hay una linea de conciliación con dicho pago, si no existe entonces se marca el check de conciliado a ambos documentos.

### Rechazo de Cheque

Para hacer un rechazo de un pago/cobro se debe utilizar el siguiente proceso:

En el mismo se debe indicar el tipo de documento de rechazo y la fecha.

### Cuándo se crea un Cheque Diferido por Cobrar ¿Qué BANCO se define? 

Se define un Banco, no una Cuenta Bancaria.

El banco que se define es el del “CHEQUE DIFERIDO” que el cliente nos está entregando. 

Las cuentas bancarias son con Nro de cuenta y no es necesario al momento de crear un cheque diferido del cliente.

Ahora cuando se deba depositar este cheque diferido, necesitaremos saber exactamente la cuenta bancaria propia donde se debe depositar.

### ¿Cómo sé si una cuenta bancaria es propia o de un cliente?

Todas las cuentas bancarias son propias.

Las Cuentas bancarias del Cliente se definen en la ventana del SDN, pestaña Cuenta bancaria

### ¿En qué afecta cambiarle el número o nombre a una cuenta contable?

Los registros y las definiciones se rigen por ID de cuenta, no por nombre ni número; lo mismo con los SDN, Productos, etc

Como las cuentas se manejan por ID, y no por el número ( a diferencia de Memory por ejemplo); cambiarle el número o el nombre no afecta en nada en toda la definición, el histórico va a pasar a ese número o nombre también. 

### ¿Qué Socio del Negocio se debe definir si se quiere hacer una transferencia entre cuentas propias?

Se debería definir el Socio del Negocio definido en cada Organización. Si no tiene un Socio del Negocio creado con el nombre de la Organización debería generarlo para estos casos.

### ¿Cómo encontrar un pago en una conciliación?

Desde la conciliación: Para buscarlo hay que saber en qué Línea de la Conciliación está el Pago, luego ese nro. se puede ver en la descripción.

Desde el Pago: si el pago está conciliado entonces se podría visualizar la línea de Conciliación donde se encuentra conciliado en la pestaña “Bank Statement Line” en la ventana Pago/Cobro.

### ¿ Cuál es el comportamiento del sistema cuando anulo un cobro que se encuentra en una línea de conciliación?

cuando se anula un pago/cobro que se encuentra en una conciliación bancaria que no está completa, tanto el pago/cobro anulado como el reversado quedarán con el check de "Conciliado" = N

Si la conciliación está completa, el pago/cobro anulado quedará con el check "Conciliado" = Y, y el reversado con "Conciliado" = N

Este comportamiento es el deseado, debido a que de no realizarse de esta manera (o sea, si se marcaran como Conciliado = Y) el saldo de la conciliación quedaría mal a menos que se borre la línea manualmente.

### ¿Cómo se puede sortear los controles de Cuenta Controlada en los asientos diarios?

Para poder sortear los controles de "Cuenta Controlada" en los asientos diarios en Lote se debe marcar en Y el check de Apertura/Cierre de Ejercicio. 

::: tip
Esto no se debe realizar sin verificación de un consultor
:::

### ¿Se puede rechazar un cheque diferido de tercero como un cheque diferido propio?

No es posible, pero no por ser de terceros sino por ser “diferido”. Para Rechazar un cheque hay que primero depositarlo, el cheque diferido en si no se deposita sino que se genera otro tipo de documento de “Depósito de cheque” que es quién se deposita (el Depósito actúa como un PAGO/COBRO y un Cheque Diferido actúa como una FACTURA). Para rechazar un Ch. Diferido habría que primero depositarlo y lo que se rechazaría sería el Depósito, no el cheque diferido.

### Recibo de Cobro

Es un documento que una entidad (comercial/personal) emite indicando que cobró a un tercero por un bien o servicio.

El recibo de cobro tiene un total monetario que está formado por la suma de los "Medios de Pago", este total nunca puede exceder el total del recibo de cobro (el total de los medios de pago puede ser menor o igual al recibo de cobro), estos medios de pago pueden ser:

* Cheque diferido
* Efectivo
* Canje

El recibo de cobro tiene documentos afectados o "Documentos Por Cobrar", la suma de esta relación puede ser igual o menor que el Recibo de Cobro pero nunca superior.

**Es posible que esta misma Entidad a su vez deba pagar por un bien o servicio al mismo tercero al que le está cobrando, pero que, en vez de pagarlo en Cheque diferido o Efectivo, lo paga en "Canje"**

En ese caso, por ejemplo, si la Entidad debe pagar 1000 y a su vez debe cobrar 300, generará un Recibo de pago cuyos Medios de Pago serán ya sea Efectivo o Chequeo por 700 y un documento en "Canje" por 300.

Del lado de la otra Empresa (la que debía pagar 300 a la Entidad), la deuda quedaría saldada.

Solop ERP tiene una funcionalidad en su menú de "Recibo de Cobro" o "Recibo de Pago", con una caja de verificación llamada "Transacción de Venta". Cuando el menú es "Recibo de Cobro" y está marcada la caja de verificación, el sistema mostrará la relación de los "Documentos Por Cobrar".

Cuando el menú es "Recibo de Pago" y está marcada la caja de verificación, el sistema mostrará la relación de los "Documentos Por Cobrar", con lo cual, se habilitará la opción de pagar por medio de la generación de un documento en "Canje".

Este documento debe relacionar los Documentos Por Cobrar que se canjearán por el/los Documentos Por Pagar. Y cuando se completa, genera de forma automática el "Recibo de Pago".

Solop ERP tiene una funcionalidad en el Documento / Ventana de "Recibo de Cobro" o "Recibo de Pago" para incorporar al Recibo un Documento de CANJE. 

Si estamos en un Recibo de Pago, el CANJE es realizado asignando un Documento por Cobrar desde la Asignación. Para ello se debe hacer click en el Botón de Asignar Facturas donde se abrirá la ventana para seleccionar los Documentos a Asignar. 

Por defecto la misma mostrará Documentos por Pagar (Transacción de Ventas = N), se debe marcar el Check "Transacción de Venta" en Y para que la ventana muestre todos los Documentos por Cobrar que existen para dicho Socio Del Negocio.
  
Luego de seleccionar el mismo, al Completar el Recibo de Pago se generará un Recibo de COBRO por el importe de dicho CANJE. Este importe lo determinará la suma total de Documentos CANJEADOS (DxC asignados al Recibo de PAGO). 

Por último, se deberá definir el NRO del Recibo de COBRO que será generado automáticamente. Este nro se debe definir en el campo “Nro. Recibo de Cobro”

### Canje en Recibo de Cobro

Para el caso de la funcionalidad en el Documento / Ventana de “Recibo de Pago” se entiende al revés, pero la lógica es la misma.

### Como realizar recibo pago/cobro multimoneda

Cuando se marca el check “Multimoneda” en un recibo, se habilitan los siguientes campos obligatorios:

* **Segunda Moneda:** indica la segunda moneda a considerar para seleccionar las  facturas a asignar

* **Tipo de Conversión:** indica el tipo de conversión a utilizar, si se elige SPOT o COMPANY se cargan dichas tasas en modo sólo lectura, se se elige DOCUMENTO, entonces el usuario debe ingresar la tasa a utilizar, que será válida solamente para el recibo en cuestión.

* **Tasa:** indica la tasa a utilizar para convertir en las dos monedas del recibo

No se permite realizar cambios en el cabezal del recibo, si el mismo ya tiene líneas y se está queriendo cambiar alguno de los siguientes campos:

* Socio del negocio
* Moneda
* Número
* Fecha
* En Representación
* Proyecto
* Tipo de Documento
* Es Anticipo
* Multimoneda (check)
* Tasa
* Tipo de Conversión
* Segunda Moneda

Si el recibo es multimoneda y aún no tiene líneas, se vuelve a obtener y cargar la tasa de cambio cuando se modifica alguno de los siguientes campos:

* Fecha
* Moneda
* Segunda Moneda
* Tipo de Conversión
* Multimoneda (check)

En este caso, si es multimoneda y el tipo de conversión es SPOT o COMPANY, se obtiene y carga la tasa. Si no es multimoneda, entonces se setea vacía la segunda moneda.

Luego de guardarse el cabezal de recibo, si se modificó alguno de los 4 campos de multimoneda, se borran las tasas de conversión creadas y, si el tipo de conversión seleccionado es DOCUMENTO, entonces se vuelven a generar (ventana de Tasa de Cambio).

Luego, al momento de completarse el recibo multimoneda, si el mismo genera una asignación, en dicha asignación se le setea también los siguientes campos:

* Multimoneda (check)
* Tipo de Conversión
* Tasa

Estos datos son necesarios al momento de contabilizar la asignación de pagos, para obtener la tasa utilizada al momento de los cálculos para la pérdida/ganancia realizada.

### Recibo de anualidad (Servicios)

**Al crear un recibo de anualidad se debe marcar el check "anticipo"**

**Cómo realizar** Redondeo en Recibo de Cobro (**Check Redondeo)**

Si no se marca el check, el Asignado de Facturas y el Asignado de Pago debe ser IGUAL.

### Situación: FACTURAS SUPERIOR AL COBRO - Signo POSITIVO

 ¿Se puede hacer una asignación Parcial del Cobro y dejar el resto "Pendiente de Asignar"?

1. **Check Redondeo = N** Asignación por importe de Facturas, menor al Cobro dejando saldo abierto del Cobro.

2. **Check Redondeo = Y** Asignar el 100% del Cobro mandando el resto a un Cargo.

### Situación: FACTURAS SUPERIOR AL COBRO - Signo POSITIVO

  
1. **Check Redondeo = N** Asignación Parcial: Para poder hacer una asignación Parcial de las Facturas se deberá seleccionar las mismas desde el proceso de Asignar Facturas por el importe que se desea asignar. No debería permitir asignar de más si no se marca el Redondeo en Y. CONTROL

2. **Check Redondeo = Y** si se tiene un importe superior de las facturas al Cobro, se marca el check "redondeo" y se enviará dicha diferencia al Cargo Redondeo.

### ¿Puede ocurrir en el estado de cuenta bancario que en una de sus líneas el SDN sea diferente al Socio de Negocio que tiene el pago/cobro asociado?

No. Existe un control para evitar completar el estado de cuenta bancario si existen líneas con socio del negocio distinto al del pago/cobro asociado. En este caso emite mensaje informando esta situación.

### ¿Qué ocurre en el caso de que alguna fecha de una línea de estado bancario no tenga tasa de cambio, permite completar igual el documento?

No. Existe control antes de completar el documento de estado de cuentas bancario, el cual verifica que exista tasa de cambio para todas las fechas contables (sin repetir) de las líneas del documento.

En caso de no existir tasa para una fecha, se muestra mensaje de error indicando la fecha correspondiente, no pudiendo ser completado el documento.

### ¿Es posible imprimir un recibo de cobro con un estado de documento diferente a "Completo?

Si. Se puede imprimir el recibo de cobro cuando no esté completo. Pero en esos casos tiene el siguiente comportamiento:

* Si se encuentra en estado Borrador: agrega un texto a la impresión informando el estado BORRADOR.

* Si se encuentra en estado Anulado: agrega un texto a la impresión informando el estado ANULADO.

## Procesos

### Débito automático de cheques diferidos por Pagar

Proceso que corre en la noche para generar los Débitos de los cheques diferidos por pagar ya entregados.

### Conciliación de Cheque Común Devuelto

Cheque a Pagar

Se debe anular el pago del cheque original. 

Se concilia el “Rechazo del Cheque” que está positivo con la “Reversión”  del Pago.

El asiento se neutraliza.

### Conciliación Bancaria

* Una conciliación sube y se baja con el pago que tenga asignado. 

Al navegar al pago deberíamos ver el movimiento de la cuenta que deja en 0 a la misma.

::: tip
El Saldo Inicial no permite editarlo con 0.
El campo saldo inicial se puede modificar a mano, pero nunca podrá ser cero.
:::

En la conciliación, al seleccionar la cuenta bancaria, el campo "Saldo Inicial" se carga automáticamente el importe del campo "Saldo Actual" de la cuenta bancaria (pestaña Cuenta de la ventana Banco). 

El “Saldo Actual” de la Cuenta Bancaria  (pestaña Cuenta de la ventana Banco). 

se calcula con los saldos de las conciliaciones Completas o Cerradas (que es un estado posterior a Completo).

::: tip
Es importante que no haya conciliaciones en estado CERRADO, ya que pueden no ser consideradas en los reportes.
:::

### ¿En el proceso de “Generar Cobro Contado” en Recibo de Cobro, en el campo “Cuenta bancaria” aparecen las cuentas bancarias de los clientes o propias también?

Aparecen Cuentas Bancarias propias. Las cuentas Bancarias de Clientes no se definen de esta manera. 

Si bien se puede manejar las cuentas bancarias de clientes, esto es desde la pestaña “Cuenta Bancaria” de la ventana del SDN.
  
Todas esas cuentas bancarias son las de la Organización. Es de donde se envía o desde donde se extrae el dinero de la empresa.

### ¿Qué proceso debe utilizarse para hacer una transferencia?

Este proceso es "Transferencia bancaria multimoneda".

### ¿En el proceso "Transferencia bancaria multimoneda" Qué número deberá definirse en nro. Documento destino?

El nro. que debe definirse en este campo es el mismo que se defina en el campo anterior “nro Documento origen”. para mayor facilidad de encontrar el Pago y el Cobro que se generará se sugiere definir el mismo número tanto de origen como de destino.

### Transferencia bancaria entre bancos propios con cobro "sin conciliar"

Puede existir la posibilidad de que en la transferencia solo se realice la "Conciliación" del "PAGO", y que no deseen conciliar el "COBRO".
Cuando se requiere "Contabilizar" el Cobro (de la transferencia) en una cuenta contable del "BANCO" y no una cuenta de Tránsito como lo es "CHEQUES EN TRANSITO" (cuenta puente) pero no lo quieren CONCILIAR -> entonces deben definir la cuenta contable del banco en el campo de "Pagos sin Conciliar" y ahi quedará correctamente contabilizado (en ventana Banco, pestaña Contabilidad).

### Al completar la conciliación de un mes, ¿por qué motivo no se actualiza el saldo inicial de mes siguiente?

 El saldo inicial de la cuenta se actualiza al crear nueva cuenta. Cuando se crea un nuevo estado de cuenta, o sea, una conciliación, va a definir en saldo inicial el mismo saldo que tiene definido en la cuenta bancaria desde la ventana banco pestaña cuenta bancaria, saldo actual.

El saldo de la cuenta bancaria se nutre de todas los movimientos de las conciliaciones en estado completo por eso es vital siempre crear nuevas conciliaciones luego de haber completado la anterior.

::: tip
No se recomiennda dejar conciliaciones vivas(en estado borrador).
:::

Si dejan conciliaciones en proceso (y muchas) todos los saldos iniciales van a estar mal, entonces se tiene, para para que quede correctamente el saldo, ir modificando el saldo correcto para que luego se defina el saldo final que corresponda (esta editable el campo saldo inicial cuando esta en proceso la conciliación).

dDe lo contrario los saldos finales también quedarán mal (esta editable el campo saldo inicial cuando esta en proceso la conciliación).

## Reportes

### ¿Qué funcionalidad tiene la ventana Informe Financiero?

Desde esta ventana se podrán emitir Informes financieros como Balances, Balancetes, Centro de Costos, etc.

Ejemplo de Informes Financieros

* Balance Mes y Acumulado
* Informe por Centro de Costos Acumulado
* Informe por Centro de Costos MES

### ¿Por qué motivo puede ocurrir que en el Balance comparativo mensual falten columnas de ciertos meses?

De manera aleatoria puede ocurrir que al solicitar el mismo reporte en diferentes fechas quede guardada en memoria la búsqueda anterior y en la nueva búsqueda le falten columnas de meses.
Para corregirlo debería bastar con una de las siguientes opciones:

1. Refrescar directo el reporte desde el formato HTML
2. Borrar Caché y volver a generar el reporte
3. Salir y volver a ingresar al sistema

### ¿Cómo puedo emitir un balance mensual ?

Los balances mensuales se generan desde la ventana “Informe financiero".

### ¿Qué representa la columna Total en un Balance mensual ?

Esta columna representa el total acumulado de la cuenta, es decir, el saldo del mes para el que generamos el balance más el saldo anterior.

### ¿Cómo puedo visualizar el Mayor contable de una cuenta?

El reporte que se utiliza para visualizar el Mayor contable de una cuenta es **“Balance de prueba**”.

¿Cómo se compone el Mayor contable de la cuenta de activo “Cuentas por Cobrar Comerciales”?

Los débitos del Mayor contable de esta cuenta se componen por:.

1. Un Saldo inicial, 
2. Las Facturas
3. Los Reversos de facturas anuladas (en negativo)
4. Parte positiva de las Asignaciones

Los créditos se componen por :

1. Los Cobros 
2. Parte negativa de las Asignaciones.

### ¿Qué representan los Saldos iniciales que aparecen en los mayores?

Representan el Saldo acumulado dentro del ejercicio para el cual emito el Mayor, es decir, si solicito un Mayor para el período 01/04 - 30/04 figurará en éste un Saldo inicial que corresponderá al saldo acumulado del 01/01 al 31/03.

### ¿Cómo puedo obtener un reporte de las Ventas o de la Facturación mensual?

Esta información puede obtenerse mediante el reporte “Diario Compras y Ventas” marcando el check de Transacción de Ventas,.

¿Cómo hacer el depósito de un cheque diferido?

Para hacer un depósito de cheque diferido vamos a la ventana “Depósito de cheques” aplicamos los filtros que deseemos aplicar y realizamos la búsqueda “Smart browser”.

Luego seleccionamos los cheques a depositar indicando la Cuenta bancaria destino y la Fecha de la transacción y hacemos click en la opción “OK”.

### ¿Es posible hacer una converión a cierta moneda en columnas de importe en el Informe Financiero?

En ventana "Columna de Informe", pestaña "Columna del Informe" existe un check "Convertir Importe" y "Moneda Hacia" para estos fines.

Al marcarse este check y elegir la moneda hacia, se obtiene la tasa de cambio del tipo "Period End" para el período seleccionado al ejecutar el informe (si no se encuentra se devuelve mensaje de error), y se convierte el importe de la columna en cuestión con dicha tasa, a la moneda de destino elegida.