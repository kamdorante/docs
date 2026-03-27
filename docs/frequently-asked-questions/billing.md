---
title: Procesos de Facturación
category: Documentation
star: 9
sticky: 9
article: false
---

## Mantenimientos

### ¿Por que motivo no se visualiza una Orden de Venta para Facturar?

Puede ser por 3 motivos:

* Que NO esté COMPLETA
* Que no tenga el check de “Permite facturar”
* Ver que Regla de facturación tiene la misma (debería ser "Inmediato")
* Verificar en la línea de la Orden que no tenga Cantidades facturadas

### ¿Por qué puede ser que al generar documento por cobrar manual no me muestre ningún producto?

Es importante primero verificar que la lista de precios definida en el cabezal del documento por cobrar tenga vinculados productos.
el problema podría ser que esa lista de precios no presente productos. 

Si se navega de la lista de precio a la solapa precio de producto es posible confirmar si existen productos vinculados (en cada línea de producto verán el campo activo SI/NO pero esto solo define si el precio está activo, no el producto).
Es posbible que los productos que estén asociados a esa lista de precio se encuentren como Activos = no (navegando al producto es posible confirmar esto).
Y es por ese motivo que no los muestra al abrir la ventana de producto en la línea de factura.

### Nota de crédito manual.

Error: Monto total asignado de facturas no puede ser mayor al monto de la nota de crédito

Cuando las Notas de crédito se crean desde el Botón Crear desde en el cabezal de la ventana se crean los registros en la pestaña CFE Referidos y quedarán las lineas de la factura con el monto asignado correcto.

El problema surge cuando la Nota de crédito se crea manualmente, aquí hay que ajustar manualmente el campo Total asignado de la pestaña CFE Referidos en la Nota de crédito, ya que el importe asignado de la factura quedará como todo el disponible de la misma, siendo mayor al de la Nota de crédito.

### ¿De qué manera se define la Forma de pago como Contado en un documento por cobrar?

La definición de la Forma de Pago en el CFE se definirá según la Regla de Pago definida en el Documento por Cobrar en Solop.

Entre las diferentes Reglas de pago disponibiles en Solop podremos separar por un lado la que serían de "Forma de Pago = Contado", que normalmente sólo se maneja una única regla de pago que es "Efectivo".

Por otro lado tenemos todas las Reglas de Pago que tienen como Forma de Pago "Crédito" que serían todas las demás.

El criterio que se maneja es que sólo será Contado una factura si junto al completarse la misma, se genere un cobro de manera automática por el importe del Documento en cuestión.

En caso de que el Cobro no se genere automáticamente con la facturación, se entiende que serán siempre a crédito aunque su crédito sea con un plazo de vencimiento "inmediato".

::: tip
Para poder generar una factura con Regla de Pago "Efectivo" será necesario crear una caja chica (en ventana Definición de Cajas) en la organización en cuestión.
:::

### En la representación física de la factura cliente está incorrecta la dirección de la empresa. ¿Dónde puedo cambiar ese dato?

Este dato es posible definirlo/modificarlo en la ventana "Organización", solapa Información de la Organización, campo Localización/Dirección.

### ¿Por qué motivo al generar un Documento por cobrar de una Organización a otra se pudo haber generado un Documento por pagar en la Organización destino de la factura cliente?

Esto ocurre debido a la funcionalidad de "Contra Documentos" que existe en el sistema considerando que el Tipo de Documento "Factura Cliente" está definido como "Crea Contra-Documentos" = SI, lo que genera automáticamente el documento en cuestión.

la idea de esta funcionalidad es simplemente facilitar el trabajo ahorrando que deban digitar la misma (la función genera el documento por pagar en estado borrador).

## Acciones

### ¿Puedo modificar los importes de una factura si el proveedor no entrega exactamente lo solicitado?

Es posible, en el caso que el proveedor **no entrega** exactamente lo solicitado:

El sistema permite modificar las cantidades en las líneas.

El sistema NO permite modificar importes.

Por lo tanto, para modificar un importe será necesario modificar las cantidades.

Si lo que se conoce de una factura al registrarla es únicamente el importe final, se deberá definir en cantidad la cantidad exacta (con decimales) para que el importe de la factura del proveedor coincida.

Ajuste del registro de la factura proveedor al comprobante físico.

Existen 2 maneras de ajustar el registro de la factura al documento físico:

* Ajustando las cantidades, y el importe se ajustará automáticamente
* Incorporando una línea adicional por el concepto “Ajuste”

### ¿Cómo genero una Factura Cliente (Documento por Cobrar) a Crédito manualmente?

selecciona el botón forma de pago “A credito”, una vez seleccionado, se despliega el campo “Término de pago”, donde definirá el término deseado. Esta conducta se puede definir en las propiedades del Socio del Negocio para el siguiente Documento por cobrar. Luego de ingresados todos los datos, se da clic en “Completar”.

### Cómo generar una Nota de crédito

### Solicitud de Nota de Crédito

La Solicitud de Notas de Crédito por parte de los usuarios a ADministración se realiza en Solop ERP mediante la creación de una Solicitud de Devolución de Cliente. 

Administración recepciona todas las Autorización de Devolución de Cliente para definir cuáles corresponden y si se les debe generar una Nota de Crédito sobre las cantidades definidas.

Para ello, deben estar creados los Tipos de Documento de “Solicitud de Devolución” donde el Usuario definirá la “Entrega” que el Cliente solicita su Nota de Crédito. 
Dicho Documento debe tener el Tipo de Documento de Recepción así como también el Tipo de Documento de Facturación (en este caso Nota de Crédito).

Luego desde la Ventana se realiza la Devolución correspondiente y desde la misma se puede generar la Nota de Crédito al Cliente en cuestión. 

### Procedimiento para realizar una Nota de Crédito

Hay varios procesos de generar Notas de Crédito (Nota de Débito es otra cosa, es similar a una factura). 

1. Crear Desde (Orden de venta, Factura o Devolución)
2. Copiar Líneas. (Factura)
3. Proceso de Crear NC desde Devolución.

::: tip
Educación y Agencia utilizan el primero generalmente.
:::

### Nota de Crédito Cliente/Proveedor utilizando la opción de Copiar líneas

Para generar una Nota de Crédito Cliente o  Proveedor se utilizará la ventana Documentos por Cobrar o Pagar respectivamente.

Se deberá ingresar:

* Tipo de Documento: Nota de Crédito
* Socio de Negocio: Proveedor que nos facturará
* Dirección de Socio de Negocio

Luego se deberá seleccionar el botón “Copiar líneas”, ubicado en la parte inferior de la pantalla.

Esta opción copiará todas las líneas de la factura a la Nota de crédito, donde se podrán modificar las cantidades y los importes para luego completarla.

### Nota de Crédito Cliente utilizando la opción “Crear desde”

Para generar una Nota de Crédito Cliente se utilizará la ventana Documentos por Cobrar.

Se deberá ingresar:

* Tipo de Documento: Nota de Crédito
* Socio de Negocio: Proveedor que nos facturará
* Dirección de Socio de Negocio

Luego se deberá seleccionar el botón “Crear desde”:

Este botón permitirá crear la Nota de crédito desde una Orden de venta, Factura o Recibo.

Luego de ingresado el documento permitirá modificarse en la línea de la factura, las cantidades y los importes de la misma para luego proceder a completarla.

### Asignar una Nota de Crédito con su correspondiente Factura relacionada de manera automática

* 1. Desde el proceso de copiar líneas o Crear Desde, además de definir las líneas se agrega dicho Documento por Pagar en la pestaña de "CFE Relacionado".

* 2. Si un Documento por Pagar está definido en la pestaña de CFE relacionado se genera automáticamente la asignación (si es por el 100% del documento).

### Funcionalidad de la Nota de débito en el sistema

Las notas de débito se hacen cuando una empresa ingresa o genera documentos pero que es sólo un traspaso de gasto. 

Las Notas de Débito Proveedor son Facturas que el Proveedor le emite al CLIENTE, es decir pone el RUT del Cliente, pero la Organización las ingresa al sistema ya que ellos le pagan al proveedor.

Para luego cobrarle al cliente se genera una Nota de Débito al Cliente por este mismo importe.

::: tip
Estas Notas de Débito NO TIENEN IVA, son todas exentas, ya que el que descuenta el iva compras  es el Cliente.
:::

### ¿Es posible vincular notas de crédito manuales a facturas en tiempo posterior a su creación?

En el caso de no haber generado una Nota de Crédito desde "copiar líneas" o "Crear Desde" es posible generar la vinculación desde el proceso de *Asignación de Pagos*. Desde esta opción es posible seleccionar factura y Nota de crédito que se deseen vincular.

### ¿Cómo llegar a un recibo desde Documentos por cobrar?

Para llegar a un recibo desde la ventana de Documentos por cobrar se debe ir a la pestaña “Facturas pagadas”, elegir la factura y dentro de la misma hacer click en “Asignación”. Esto nos abrirá la ventana “Consulta de asignación” donde en el campo “Descripción” nos dirá que Recibo de cobro la generó la misma.

### ¿Cómo podemos ver el saldo pendiente de una factura?

El saldo pendiente de un Documento por cobrar lo podemos ver desde la pestaña “Facturas pagadas”.

### ¿Cómo puedo vincular una NC de valor parcial sobre factura a un Contrato de Servicio?

 Es posible vincular la Nota de crédito parcial en el campo "Línea de Contrato" en pestaña de líneas de la Factura, en ventana Documentos por Cobrar. 
 
 El campo filtra las líneas de contratos en estado COMPLETO (deben pertenecer a contratos cuyo socio del negocio a facturar sea el mismo socio del negocio de la factura en cuestión).

De esta manera se puede elegir manualmente la línea de contrato requerida.

El campo desplegará dos números por registro (por ejemplo: "0-590") en el campo de línea de contrato, lo que significa:

0 = Nro de línea de contrato
590 = Nro. de contrato

### ¿Cómo puedo eliminar el automatismo que genera la asignación al aplicar NC desde el proceso de "Crear Desde" o "Copiar Líneas"?

Existe un configurador del sistema para indicar si se debe crear o no la asignación automática al completarse una Nota de Crédito.

El valor por defecto, en caso de no existir el configurador, es SI.
En el caso de requerir cambiar esta esta función (no generar asignación automática), deben comunicarse con Soporte de Solop ERP para aplicar la definición deseada.

### Como generar Asignación (Automática) de facturas a los pagos:

El proceso permite asignar facturas a los pagos para un socio de negocio o grupo de socios de negocio.
A este proceso se le agregó el check “Factura Asignada Totalmente”, mediante el cual se indica que una factura no puede quedar asignada parcialmente, sino que siempre se debe asignar por el total de su monto abierto. También realiza un control para no considerar notas de crédito, solamente facturas.

Cuando se marca el check “Asignación a las Primeras” llama a una función que permite asignar todo lo que se pueda, aunque el total de cobros sea distinto al de facturas, creando primero todas las líneas de asignación para los pago/cobro, y luego todas las líneas para las facturas. En este caso, si también se marcó el check “Factura Asignada Totalmente”, se controla e impide que la factura quede con saldo abierto.

* Funcionamiento con ambos check = Y:

El importe de cobros es mayor al importe de  facturas -> se genera asignación

El importe de cobros es igual al importe de  facturas -> se genera asignación

Hay N facturas y 1 cobro por el total de las facturas -> se genera asignación

  
En estos casos no quedarán saldos abiertos en las facturas, y para cualquier otro caso (diferentes combinaciones de facturas y cobros), si una factura llegara a quedar con saldo abierto, **el proceso no realizará la asignación y devolverá mensaje de error.**

### como generar Asignación (Automática con Exclusión)

Este proceso funciona igual al anterior, con la diferencia de que NO considera las facturas que tengan marcado el check “IsSelfService” (Auto Servicio).

A los Informes de Gasto que se generan desde el proceso "Generar Servicio a Facturar" se les define el check de "IsSelfService" en Y por defecto.

Las Facturas que se generan desde el Proceso "Generar Factura desde Cuota Contrato" consideran si el Informe de Gasto que se está facturando tiene el check "IsSelfService=Y", y en ese caso la factura se genera con el check en Y. 

Si se agregan varios informes y al menos uno tiene el check “IsSelfService” en Y,  entonces se define el check en la factura.

  
Se utilizan los campos en pestaña "CFE Referidos" de "Total Abierto" y "Total Asignado". Estos campos, cuando las líneas en esta pestaña son generadas mediante un proceso, se cargan de la siguiente manera:
  
**Desde el botón "Crear Desde" (desde Factura) en cabezal de documento:** se setea el importe abierto de la factura y el importe total asignado, según el total de líneas agregadas a la nota de crédito.

**Desde proceso "Crear Nota de Crédito desde Factura" (en el ícono del engranaje en cabezal de factura):** se setea el importe abierto de la factura y el importe total asignado, según el total de líneas agregadas a la nota de crédito.

**Desde proceso "Generar Nota de Crédito desde Devolución":** se setea el importe abierto de la factura y el importe total asignado se toma del importe total del cabezal de RMA (Autorización de Devolución)

Si se genera una línea manualmente en pestaña "CFE Referidos", también se carga el importe abierto, y el importe asignado con igual valor.

Luego, al momento de completarse la Nota de Crédito, se genera la asignación automática creando una línea por la Nota de Crédito, y las N líneas por cada una de las facturas presentes en los CFE Referidos, por el importe asignado indicado en cada una.

Al momento de ejecutarse este proceso, se verifica que cada una de las facturas siga teniendo un saldo abierto igual o mayor al indicado en la Nota de Crédito, y también que la moneda sea la misma de la Nota de Crédito, de lo contrario se retorna mensaje de error indicando el motivo.

Al completarse la Nota de Crédito de Documento por Cobrar, se verifican las líneas de orden de los Documentos por Cobrar asignados en pestaña "CFE Referidos", y en caso de que ninguna línea tenga cantidad ordenada distinta a la facturada, se quita el check de "En Negociacion" del Documento por Cobrar.

::: tip
EL SISTEMA NO REALIZA ASIGNACIONES POR LÍNEA SINO POR FACTURA, por lo que si los pagos no cancelan totalmente los Documentos por Cobrar no se deben asignar parcialmente.
:::

CONTROLES:

* No se permite guardar una línea en CFE referidos, si hay una factura seleccionada y al menos uno de los campos de importe (total abierto o total asignado) es menor o igual a cero.

* No se permite completar la NC si el monto total de facturas asignadas es mayor al importe de la NC. En el caso que sea menor, entonces la NC se asigna con el importe de las facturas asignadas, quedando un pendiente en la NC.

### ¿Dónde puedo consultar la descripción de error CFE de una factura a cliente?

Desde la ventana Respuestas CFE es posible realizar la búsqueda de un envío de CFE desde Solop ERP cuando se emite una POSOrder y la factura no se genera, se emite un error (por CFE rechazado por parte de entidad fiscal).
Para una búsqueda más eficiente, en la solapa búsqueda avanzada permite filtrar por columna "Número de Serie CFE" (número de factura) o bien por "Código Mensaje CFE" (por ejemplo: CFE rechazado es código 159).

### ¿Es posible habilitar y deshabilitar el descuento en las lineas de la Factura CFE?

Esto es posible realizarlo en la ventana "LUY Sender" con el check "Utiliza Lista de Precios":

* Si este check está desactivado el envío de CFE no manejará descuentos de linea, y se utilizará solamente el monto del campo "Precio" (PriceEntered) como monto base para Precio Unitario, de ahí se calculará el total de linea (Cantidad * Precio (PriceEntered)).

* Si el check está activado, se manejará como monto base el monto del campo "Precio de Lista" (PriceList) donde aplicando un porcentaje de descuento en el campo Descuento (Discount) se aplicará dicho porcentaje en el campo "Precio" (PriceEntered).
Para realizar el envío a InvoiCy se tomará el Precio de Lista como monto base, se le calculará el monto de descuento para enviar como descuento y se calculará el total de linea como (Cantidad * (Precio de Lista - descuento)).

### ¿Al contabilizar/reversar documentos, cuál es la fecha que el sistema toma como referencia para aplicar la tasa de cambio?

Esta acción posee el siguiente comportamiento:

* Para todo documento (todas las tablas) al momento de contabilizarse, se utiliza la fecha de transacción en vez de la contable, para obtener la tasa de cambio a aplicar.

* Al generarse el reverso de una Invoice, al mismo se le asigna como fecha de facturación, la fecha de facturación de la invoice original.

Al generarse el reverso de una Invoice, a la asignación de pagos creada se le asigna como fecha de facturación, la fecha de facturación de la invoice original.

### ¿Existe alguna rutina que valide una tolerancia para el importe asignado de una factura (compra y venta), para que a la misma se le marcara el check PAGADO = Y, si fue asignada con un cobro menor o mayor dentro de dicha tolerancia?

No, actualmente no existe rutina que marqué con check pagado SI la factura por tolerancia de centavos respecto al cobro. En ese caso el comprobante quedaría como pagado = NO. Y esos saldos abiertos o picos pendientes pueden eliminarse mediante el proceso de "Dar de baja Cuentas por Cobrar" (solo da de baja saldos abiertos de facturas y no de pagos o cobros).

### ¿Como diferencia el sistema la generación de retenciones de proveedor, de la generación de retenciones de cliente?

Al momento de crearse la Retención cuando se completa la factura o mediante el proceso manual; el tipo de documento para la misma es obtenido según el check de transacción de ventas de la factura. Para esto se existe el documento "Retención Cliente", y el comportamiento es el siguiente:

* Si es Documento por Pagar, se obtiene un tipo de documento con check transacción de ventas = N, y tipo de documento base "Retencion" --> "Documento Retención"

* Si es Documento por Cobrar, se obtiene un tipo de documento con check transacción de ventas = Y, y tipo de documento base "Retencion" --> "Retención Cliente"

En el proceso del "Generar Resguardos Masivo", para que el tipo de documento para el resguardo sea obtenido según el tipo de documento de la retención, presenta el siguiente comportamiento:

* Si tipo de doc de retención es transacción de ventas, se obtiene el tipo de doc definido en el campo "Tipo de Documento de Retencion (Débito)" en la definición de retenciones asociada a la retención.

* Si tipo de doc de retención no es transacción de ventas, se obtiene el tipo de doc desde la ventana "LUY CFE Type" para la organización correspondiente y el tipo de CFE "e-Resguardo"

### ¿Como identifica el sistema cuando un CFE Recibidos tiene descuentos en sus líneas?

Realiza la identificación del descuento porque el CFE Recibido posee dos campos de Precio.
Uno es el campo Precio de Lista (I_Invoice.PriceList) donde se agrega el precio del producto sin descuento y el segundo es el Precio Actual (I_Invoice.PriceActual) donde muestra el precio con descuento.


::: tip
En el xml de respuesta, el MontoTiemTotal viene multiplicado por la cantidad, el sistema procede a dividir la cantidad para tener el monto de item por el valor real. De esta forma el Precio Actual refleja correctamente el monto con descuento.
:::

### ¿Existe la posibilidad de modificar la secuencia de Documentos para los casos en qué la numeración por algún problema en invoicy sea afectada?

Para estos casos existe la ventana de "Adelantar Secuencia de CFE" que permite modificar la secuencia por tipo de documento (CFE type) con el objeto de corregir el número siguiente (que se espera en invoicy).

## Procesos

### Generar factura desde Línea de Orden

### Varios Términos de Pago en las Órdenes de Venta seleccionadas

Cuando se están facturando en una misma factura varias Órdenes de Venta que tienen diferentes Términos de Pago no permitirá generar una única factura y emitirá mensaje de Error:

Esto se debe a que no puede determinar que término de pago se desea definir en la Factura a Generar.

**Solución:** Para solucionarlo lo ideal sería abrir en la ventana de “Órdenes de Venta” todas las Ordenes de venta que se están intentando facturar Varios Términos de Pago en las Órdenes de Venta seleccionadas.

::: tip
Ver las mismas en formato “Grilla” para identificar qué Orden de Venta tiene un Término de Pago diferente.
Para modificarlo deberá Rectivar la Orden, modificar el Término de Pago y luego completarla nuevamente.
:::

### Campo OC cliente debe ser el mismo para todas las órdenes del grupo

Al generar factura desde línea de orden, si se seleccionan diferentes órdenes, el sistema valida que el campo Referencia de orden del socio de negocio posea el mismo dato en las diferentes órdenes seleccionadas para la generación de factura.


### Varios Agentes Comerciales definidos en las Órdenes de Venta

En principio el proceso definirá el Agente Comercial en la Factura según el Agente que esté definido en la Orden de Venta en cuestión.

En caso de que existan diferentes Agentes Comerciales definidos en las Órdenes de Venta el proceso tomará el Agente Comercial definido en el Socio del Negocio.

Si no tiene ninguno definido en el Socio del Negocio tomará el Agente Comercial definido en las Ordenes de Venta. Si estos son diferentes dará un error.

### ¿Por qué motivo puede no referenciarse un Proyecto en una factura?

El Proyecto se referenciará en la factura siempre que el criterio de agrupación que se haya elegido para agrupar las lineas de Orden al correr el proceso Generar factura desde línea de Orden haya sido “Proyecto”.

Por ejemplo se puede tener N proyectos por Contrato pero solo Un Contrato por cada proyecto. Por lo que si se agrupa por Contrato, como las lineas de orden pueden ser de varios proyectos, al generar la factura no establece el campo de Proyecto en el cabezal.

Respecto al Tipo de documento, el sistema controlará si el Socio del Negocio a quien se está facturando tiene definido un RUT o una Cédula y le generará una e-Factura o un e-ticket según corresponda.

### Precios de factura son modificados debido a Lista de precios diferente entre Orden de Venta y Documento por Cobrar

Cuando se selecciona el criterio de agrupación facturación “Contrato” para poder facilitar y evitar trancar el proceso, se toman varios datos según el Contrato de Servicios y no directamente desde la orden de venta en cuestión. Dentro de estos campos que se toman del contrato está por ejemplo el Agente Comercial que se define, el término de pago y también la Lista de Precios. 

### Controles para Facturar Orden de Venta

* Check “Permite Facturar”: Para poder facturar una orden de venta luego de completarla debe tener el check de permite facturar, y su regla de facturación debe ser inmediata.

### Como Generar Factura desde Cuota de Contrato

Este proceso tomará todos los Informes de Gastos (Conceptos a Facturar) que existan creados en los contratos y generará la factura al “SDN a Facturar” que ellos tengan definido.

Importante: El proceso de Facturación, si bien en el Contrato se define un Precio de Lista, al generar la Factura el Precio de lista se define automáticamente directo desde la Versión de Lista de Precios vigente para la fecha y no la obtendrá desde la Línea del Contrato. 

Esto puede llevar a que si no se Actualiza correctamente los precios de las Líneas del Contrato (tanto Precio de Lista como Precio), si bien el precio si será definido según el seteado en la línea y en la Cuota del Contrato (Informe de Gastos), no así el Precio de Lista, definiendo siempre el ACTUALIZADO. 

Esto puede llevar a que el % de Descuento REAL definido en la línea de La Factura quede desactualizado (ya que el Precio es el "con descuento" pero según un Precio de lista viejo, y el Precio de Lista que se defina en la factura será uno nuevo).

### ¿Existe algún control sobre las líneas de factura en el proceso de Importar Documentos CxC/CxP?

Posee un control antes de ejecutarse la acción sobre cada factura (dejar Completo o En Proceso), que verifica si la factura tiene la cantidad de líneas que debe tener (se obtiene la cantidad de líneas desde la tabla de importación, para el mismo número. de documento, Socio del Negocio y tipo de documento).

Si la cantidad de líneas de la factura no es la que debe tener, entonces se borra la factura, y al final del proceso se muestra el contador de facturas borradas por error en sus líneas.

### ¿Dónde se define el cargo de una factura importada?

la obtención del cargo para el Socio del Negocio se realiza en el proceso "Importar CFE Recibidos".

### Bandeja CFE 

### ¿Cómo se define el Tipo de documento CFE al momento de generar las facturas?

Los Tipo de Documento de CFE se asignan automáticamente según el tipo de Documento de cada Socio del Negocio:

RUT: Tipo de documento e-factura

Cédula: Tipo de documento e-ticket

### ¿Por qué una factura puede aparecer duplicada en el reporte de Saldos Pendientes?

Se debe verificar si tiene varios esquemas de pagos incorrectos.

El término de pago se define en la factura mismo, pero al completar la factura, según el término de pago definido, se crea (o NO) su correspondiente Esquema de Pagos.

El problema es que el término de pago definido tiene ciertos esquemas, para definir cuotas, pero si este está mal definido, puede generar 2 líneas en esquema de pagos de manera incorrecta.

### ¿Cuándo aparece una Nota de crédito en el reporte de saldos pendientes? 

Aparece cuando tiene SALDO ABIERTO pendiente de asignar. Si está COMPLETAMENTE asignada entonces no aparecerá. Si NO ESTÁ completamente asignada entonces sí aparecerá.

### ¿Es posible definor el medio de pago en proceso "Importar Documentos CxC/CxP"?

Si. Existe el campo "Regla de Pago" en el proceso "Importar Documentos CxC/CxP" y a los formatos de importación siguientes:

* Carga Documentos por Pagar AR
* Carga Documentos por Pagar COP

De esta forma, la factura a crear tendrá la regla de pago que se indique en la planilla, y en su defecto tomará la del socio del negocio.

### ¿El proceso "Copiar Líneas" en cabezal de factura permite copiar líneas de un comprobante de Socio de negocio distinto al documento de origen?

No. EL proceso del botón "Copiar Lineas" en cabezal de factura devuelve mensaje de error en el caso que se esté haciendo una nota de crédito cliente, y se hayan copiado líneas de un documento cuyo Socio Del Negocio sea distinto al de la nota de crédito que se esté creando.