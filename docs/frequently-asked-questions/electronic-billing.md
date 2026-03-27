---
title: Facturación Electrónica
category: Documentation
star: 9
sticky: 9
article: false
---

## Mantenimientos

### Mensajes de Error CFE

***CFE_NOTORG* = "CFE Error: Los documentos emitidos deben tener la compañía y organización con la que se inició sesión en el sistema";**

*IDDOC_002* = "CFE Error: No es un tipo de documento para emitir CFE";

*IDDOC_002_2* = "CFE Error: El tipo de CFE no es un tipo aceptado por DGI";

*IDDOC_003* = "CFE Error: Area Identificacion del Comprobante (3) - Falta Prefijo de la secuencia";

*IDDOC_004* = "CFE Error: Area Identificacion del Comprobante (4) - Numero de comprobante no asignado al documento";

*IDDOC_005* = "CFE Error: Area Identificacion del Comprobante (5) - Fecha del comprobante no establecida";

*IDDOC_011* = "CFE Error: Area Identificacion del Comprobante (11) - Forma de pago no aceptada por DGI (Contado o Credito)";

*EMISOR_ORG* = "CFE Error: Area Emisor - Empresa no establecida";

***EMISOR_040* = "CFE Error: Area Emisor (40) - RUT no establecido";**

*EMISOR_041* = "CFE Error: Area Emisor (41) - Razon Social no establecida";

*EMISOR_047* = "CFE Error: Area Emisor (47) - Identificador de DGI para local no establecido";

*EMISOR_048* = "CFE Error: Area Emisor (48) - Domicilio fiscal no establecido";

*EMISOR_049* = "CFE Error: Area Emisor (49) - Ciudad para domicilio fiscal no establecida";

Cuales son los datos requeridos para realizar la certificación de una Empresa:

### Datos requeridos para realizar la Certificación de una Empresa

* RUT
* Razón Social
* Teléfono
* Dirección
* Solicitar en DGI usuario para "Homologación Simplificada" ([__http://atendimento.migrate.info/customer/es/portal/articles/2540657__](http://atendimento.migrate.info/customer/es/portal/articles/2540657))
* Mail y contraseña para comunicación entre empresas para CFE (ej: cfe@dominiodelaempresa.com.uy o gmail u otro), debe ser exclusivo para comunicación entre empresas y no se deberá acceder a el manualmente, los sistemas de facturación electrónica consultarán directamente esta casilla.
* Mail de contacto entre DGI y la Empresa
* Si los mails son del dominio de la empresa entonces también se deberá proporcionar:
  * Descarga de email (POP3)
    * Host
    * Puerto
    * Es SSL (Si/No)


* Envío de email (SMTP)
  * Host
  * Puerto
  * Es SSL (Si/No)
  * Numero de Sucursal y Código de Vigencia

### ¿Por qué motivo puede aparecer el siguiente error: “Error: CFE  Rechazado”?

Lo mas probable es que se este intentando enviar un CFE que tenga una o mas lineas en cero (ya sea cantidad o precio o ambos). Es una validacion de DGI que no puede ir un producto con precio 0. Para resolverlo quitar la linea.

Si es POS, se puede validar el error directamente en InvoiCy, con el numero de Factura, se ingresa a la consola, en inicio, se da clic en el documento y en la pestaña “Respuestas” se puede ver el detalle del error (es obligatorio informar el valor unitario del item).

### ¿Por qué motivo puede aparecer el siguiente error: “Error: CFE - Rechazado - 607 Ninguna CAE Autorizada encontrada”?

El problema aquí es que NO existen CAEs para las facturas o boletas.

Esto lo debe solicitar el cliente a su estudio contable y subirlo a Invoicy.

De lo contrario, si no los puede subir el cliente, lo pueden pasar al Soporte de Solop ERP para subirlos.

### ¿Por qué puede suceder el siguiente error: “ERROR: "CFE Error: Area Información de Referencia (3) - Error al parsear código de CFE" al completar una e-Nota de Crédito”?

Esto sucede cuando el documento referenciado es previo a facturación electrónica y por ese motivo no tiene prefijo. Para solucionarlo se indica referenciar en el campo descripción de CFE Referido a este documento en vez de en el campo Documento Asignado.

### ¿Por qué motivo puede suceder el siguiente error: “Tipo de documento no definido para Socio de Negocio…”?

Esto puede suceder ya que el Socio de negocio en cuestión tiene en esta ventana en blanco los campos “Número de identificación” y “Grupo de impuestos”.

#### Mensaje de “Pago No Asignado” en Recibo de Cobro

**Problema:** En un Recibo de Cobro, aparece como pago no asignado, aunque se puede apreciar que existe una Factura asignada, así como un pago, que puede estar pasando?

**Respuesta:** Cuando existe coincidencia entre el total de los documentos asignados con la suma total de los pagos (entre cheques, cobro contado, etc.), la asignación se hace de forma automática, pero si existe una diferencia de un pico (centesimos por ejemplo), esta asignación no se hace de forma automática.

Para asignar el cheque al cobro, en el caso de que el estado del documento (Recio de Cobro) este en “Completo” se realiza la ventana Asignación manualmente.

### ¿Por qué motivo puede suceder el siguiente error al completar resguardo?: CFE Error. Tasa de cambio no establecida para UI para la fecha xxxx/12/31.

En este caso ocurre el mensaje porque los CFEs e-Ticket menores a 5000UI pueden no llevar identificación de receptor, si supera ese monto por mas que sea e-Ticket tienen que definir a quien va dirigido
Para calcular si se pasa, DGI define utilizar la cotización de UI al 31/12 del año anterior.
Para resolverlo se debe cargar la tasa UI en el sistema para esa fecha.

###  Al intentar generar factura cliente se produjo mensaje de CFE rechazado. ¿Es posible visualizar el mensaje con el motivo de rechazo en el sistema?

Para estos casos existe la ventana en menú llamada "Respuestas CFE", (muestra la misma información que la pestaña CFE de la ventna Documentos por Cobrar).
Muestra todas las respuestas CFE (tengan o no documento por cobrar vinculado), por lo cual en vez de consultar desde cada factura, permite ver todas las respuestas juntas y navegar a sus respectivos documentos.
También posee una columna llamada "Existe Registro Vinculado" que indica en Y (SI) cuando el registro de la LUY_Document tenga un registro vinculado a su tabla CFE (a una factura).
La ventana permite realizar búsqueda avanzada por diferentes filtros como ser Número de serie CFE o Código de mensaje CFE ("159" es el código de CFE rechazado).

Campo "Existe Registro Vinculado"

La finalidad de este check es poder filtrar rápidamente todos los CFEs enviados que quedaron registrados, que por persistirse en una transacción aparte siempre quedan, mientras que en algunas ocaciones, hay CFEs ya enviados a InvoiCy que por algúna razón no se genera el documento por cobrar pese a que están en InvoiCy.

### ¿Por qué motivo puede ocurrir que una Factura proveedor no sea importada a CFE importados?

En este caso puede ocurrir que en Invoicy (https://solopuy.migrate.info/InvoiCy/) no se encuentre como CFE recibido el Documento por Pagar del proveedor, pero sí se eencuentre en DGI (https://www.efactura.dgi.gub.uy).

Para verificar el motivo se puede acceder a la casilla de Mail (cfe.solopuruguay@gmail.com) a la cual llegan las facturas emitidas de los proveedores, y desde la cual son leídos por Invoicy como CFEs recibidos, para confirmar que no se encuentre el mail del proveedor para este Documento por Pagar.

Si esto se confirma (si no se encuentra el mail de factura proveedor) el problema pasa a estar de lado del proveedor y el software que utiliza, ya que el comprobante no fue enviado como corresponde.

Si el mail fuese enviado por el proveedor, y en ese caso se visualizara en la casilla de Mail mencionada, entonces el problema estaría del lado de Invoicy, y en ese caso se requiere elevar la consulta a Migrate.

Al realizar en Solop ERP la importación de CFE recibidos, las casillas de mail siempre deben ser las mismas tanto en DGI como Invoicy.

## Acciones

### Cómo cargar un CAE en InvoiCy?

Cuando un cliente informa de que no tiene ninguna CAE autorizada, lo mas probable es que el CAE para ese tipo de CFE se haya terminado o vencido.

En ambos casos se tiene que hacer la carga del nuevo CAE

En caso de que se haya vencido, es muy probable que queden números de ese CAE sin utilizar, por lo que tienen que ser anulados para que se envíen en el reporte diario
  
Y también cuando se vence, se tiene que adelantar la secuencia en Solop ERP para ese tipo de documento para que comience con la numeración del nuevo CAE.

En síntesis, el CAE se carga porque se termina la secuencia y sería transparente al cargarlo. O si se les vence el CAE, y cargan uno nuevo, la secuencia del cae viejo no la pueden seguir utilizando, porque pertenece al cae vencido.
Entonces se deben realizar 2 acciones:

* Adelantar la Secuencia Definitiva del documento que envían con ese CAE en ADempiere

* Anular las secuencias del cae viejo en InvoiCy para los números no utilizados.

### Evaluar que hacer con el CAE si había un cae previo si se vence o termina

Solop ERP gestiona las secuencia de los documentos que envía a InvoiCy, entonces.

* Cuando el cae se termina, habiendo llegado a 800 en un caso hipotético, en Solop ERP la siguiente secuencia es la 801 y como DGI te asigna también CAEs en secuencia, va a ser también la 801 por lo cual no se requiere una acción adicional, Solop ERP sigue sin intervención con la siguiente secuencia.

* Si se vence, (en un segundo caso hipotético) habiendo emitido hasta el 759, Solop ERP está apuntando el próximo número: al 760, por lo que no va a haber ningún cae válido que responda a ese nombre.

Cuando se vence un CAE hay que:

* Adelantar la secuencia en Solop ERP

* En invoicy ANULAR el rango de secuencias del cae vencido que no fueron emitidos para que sea informado en el reporte diario

### Como Ver el formato de impresión de una e-Factura desde Solop ERP

Para visualizar el formato de impresión de las facturas se debe correr el proceso “Impresión de CFE Invoicy” desde la ventana “Documentos por cobrar”.

### ¿Qué hay que tener en cuenta al generar un e-Ticket o una e-Factura?

Puede ocurrir que cuando se esta generando una Orden de Venta, y dependiendo de si se desea generar una e-Factura o un e-Ticket, debe estar definido el RUT o Cédula en el Socio del Negocio según corresponda.

Si lo que se desea es generar una e-Factura entonces el Socio del Negocio debe tener definido el “Grupo de Impuestos” como RUT.

Si lo que se desea generar es un e-Ticket, entonces el documento puede ser generado a un Socio del Negocio generico (como mostrador) ya que no exige la identificacion del mismo, siempre y cuando no supere los 10000 UY.

### ¿Por qué los datos de una factura en el sistema (cabezal, lineas, totales) se ven bien, pero al imprimir, una sale con los datos de otra? (CFE impresión factura se cruza una con la otra)

Sucede porque hay un error al procesar los documentos en InvoiCy. Se debe revisar en InvoiCy si los documentos ya se han ido para DGI (entrar en la consola, en inicio, y validar los datos de los CFE involucrados). 

Entonces lo que se debe hacer primero es dejar el ambiente de InvoiCy igual al de Solop ERP. Esto puede significar o no que se deba anular una factura en Solop ERP y volverla a hacer luego. Se debe validar los pasos a ejecutar y organizarlos.

Por ejemplo (las situaciones pueden ser varias):

En Solop ERP Tenemos una factura con el Socio del Negocio A con un total X y otra factura al Socio del Negocio B con un total Y. 

Pero en InvoiCy aparecen dos facturas al Socio del Negocio B con el total Y. Como las facturas ya se fueron para DGI, lo primero que hay que hacer es replicar el ambiente de InvoiCy en DGI y luego realizar las acciones necesarias para normalizar la situación. En este caso:

 1. En Solop ERP anular la factura que esta mal (Socio del Negocio A con total X)
 2. Crear una igual a la que esta en InvoiCy (Socio del Negocio B con total Y)
 3. Tomar nota de la secuencia definitiva actual para el tipo de documento en Solop ERP (ya sea Factura Cliente, etc.)
 4. Coordinar con el Cliente para que no se facture mas mientras se hacen las correcciones.
 5. Modificar la secuencia definitiva para que la siguiente factura sea la que se anulo (Socio del Negocio A con total X).
 6. Desactivar el tipo de documento como CFE (isCFE=NO)
 7. Completar la nueva factura que esta en Draft (borrador).
 8. Restaurar la secuencia definitiva.
 9. Habilitar nuevamente el tipo de documento como CFE (isCFE=SI)
10. Crear una Nota de Crédito para la nueva factura creada con la secuencia correspondiente a Socio del Negocio A con total X y con los datos de Socio del Negocio total Y, esto para anular la factura doble que quedo en InvoiCy.
11. Volver a facturar al SDN A con total X para que esta vez salga bien.

Es posible también, que al entrar en InvoiCy y validar el estatus del CFE, se vea que la factura con problemas esta en estado de “RECHAZADO”, si es asi, entonces se puede por base de datos corregir los datos del documento y tratar de completar nuevamente el documento.

También es posible que al chequear en InvoiCy el documento CFE todavia no haya llegado, se puede proceder a anular la factura y volverla a crear.

### ¿Cómo saber si una organización envía CFE?

Se puede saber si envía o no CFE desde la ventana "LUY Sender".

Si envía CFE debe estar en “Y”.

### ¿Puedo deshabilitar el envío automático de Documentos por Cobrar al cliente?

Es posible deshabilitar el envío automático. Deberán solicitarlo a Soporte Solop ERP por ser una configuración no visible para usuarios:

![Deshabilitar envío de email](/assets/img/docs/frequently-asked-questions/fra-asked-image3.png)

### ¿Por qué motivo al ingresar un pago para una Factura (Documentos por Pagar) e ir a la opción de cheque no veo las opciones de Banco?

Solo se puede pagar una Factura y ver las opciones de Banco cuando la factura esta en estado “Completo”, si está en “Borrador” no dejará ver las opciones de pago. Debe completar la Factura.

### ¿Se pueden borrar facturas?

Las facturas una vez generadas no podrán borrarse por motivo de auditoría, lo que se debe hacer con ellas en estos casos es anularlas.

::: tip
El sistema permite anular facturas que se encuentren en estado borrador.
:::

### ¿Es posible anular Facturas cliente?

En el cabezal de ventana de Documentos por Cobrar existe un check denominado "Permite Anular" el cual se muestra visible cuando el documento no está en ninguno de los estados siguientes:

* Anulado
* Cerrado
* Reversado

Cuando se quiera anular o reversar un DxC, el sistema consultará si existe un registro en pestaña de CFE tal que tenga uno de los siguientes mensajes

* CFE Firmado
* CFE enviado para DGI

Si existe un registro "Activo" para alguno de ambos valores, no se permitirá anular/reversar el DxC, salvo que se haya marcado el check de "Permite Anular".
Es posible configurar el nivel de accesibilidad del check para un determiando rol o usuario.

### Configuración de Retenciones (cómo parametrizar retenciones DGI)

En esta ventana se parametrizan todas las retenciones de DGI más las que quiera agregar customizada la empresa.

Código: El código establecido por DGI, enviado en el CFE

Nombre: Nombre de la retención

Tipo de Retención: Parametrización interna, por lo general se deberá seleccionar la única definida

WHAmtType: Monto imponible, si se aplica sobre el impuesto, total o subtotal

Porcentaje: Porcentaje a retener (0-100)

Monto máximo: a retener

### Documentos a Aplicar

En la pestaña Documentos a Aplicar se indicarán los documentos en el cual se deben generar retenciones.

### Proveedores

En Referencia  se debería definir el Documento que se generará como “Retención” en “Documentos de Retención Generada”: Crear tipo de documento “Retención”.

Además se debería generar el Tipo de Documento de “e-Resguardo”. Considerar que se debe aplicar la misma lógica que se aplicó para la generación automática de Facturas definiendo de manera genérica el Documento pero luego al momento de generarlo se deberá tomar el Tipo de Documento que corresponda según la Organización donde se encuentre

### Impuestos

Cuando se define una retención donde su monto imponible se realiza sobre el impuesto, aparecerá una nueva pestaña donde se indicarán los impuestos que se retendrán.
En esta pestaña se ingresarán todos los impuestos a retener para el documento en cuestión

### Observaciones

Según la parametrización realizada en el Tipo de Retención, se evaluará si corresponde realizar documento de Withholoding para el documento.

Actualmente está parametrizado para que se revise en la acción Completar de la Factura.

### Al completar Documento por Pagar

Si el documento cumple para generar retención, según la parametrización indicada más arriba, se generará un documento previo al resguardo en la ventana “Documento Retención Generado”.

### Generar Documento Retención de forma manual

En caso de que por algún motivo algún Documento por Pagar requiera generar su respectivo Documento Retención y no lo tenga generado, este proceso podrá ser lanzado desde la ventana Documentos por Pagar -> Engranaje en la pestaña cabezal -> Re-Procesar Retención

### Observaciones Documento Retención
  
El Documento Retención Generado va a calcular los montos sin tener en cuenta la moneda del documento de origen y sin convertir montos, por lo tanto, para realizar el resguardo se tomará la línea de Documento por Pagar y calculará la conversión de moneda según la fecha del Documento por Pagar.

Los resguardos siempre se emiten en Moneda UYU.

### Como generar retenciones

Proceso Generar Retenciones

El proceso “Generar Retenciones” va a generar los documentos Resguardos requeridos a partir de los “Documentos Retención” Completos pertenecientes al mes de la fecha ingresada en el proceso.

Este va a agrupar por retenciones, y evaluará:

* Si la Definición de Retención no tiene moneda o MaxAmount continuará generando la Invoice (Resguardo)
* Si tiene monto y moneda
  * Convertirá el monto MaxAmount a UYU basándose en una tasa de cambio existente con las siguientes características
    * Tipo Period End
    * Fecha mes anterior a la fecha DateDoc pasado por parámetros (tener en cuenta que resta 1 mes, y la conversión tipo Period End va del primero al último día del mes
    * Moneda de Origen a UYU
  * **Hará sumatoria de todos los montos de Retención agrupados, convirtiendolos a UYU según moneda, dateInvoiced y Tipo de Conversión de la factura source relacionada**
  * Si el monto de la retención no supera la sumatoria de montos de la factura entonces no genero Resguardo

### Observaciones de retenciones

* El cargo definido en la factura a generar se tomará primero de la ventana (Tipo Retención -> Pestaña Configuración de Retención -> Campo Cargo) y si no está definido va a obtenerlo de la Definición de Retención del campo Cargo (WH_Definition.C_Charge_ID)
* **Monto mínimo de la Retención (conversión a UYU)**: Se define monto y moneda tal que al 31/12 del año anterior se defina se obtenga la conversión a la moneda del esquema contable (UYU) para poder validar que el monto de los Documentos Retención, sumados por Definición Retención, sumen más que el mínimo, se tomará la moneda de la factura de origen relacionada para determinar la moneda.
* **Documentos Retención en Resguardos Anulados**: Si se anula un Resguardo, se emitirá un reverso Resguardo cancelandolo como CFE, en este caso, los Documentos Retención Generados para este resguardos quedarán libres para ser enlazados a otro Resguardo cuando se corra nuevamente el proceso de Generación de Resguardos
* **Observación CFE:** Línea CFE No aplica para Resguardos

Existe el Smart Browser de “Generar Resguardos” donde se estarán mostrando todas las Retenciones generadas que aún no cuentan con un Resguardo generado.  
Mediante este Proceso se podrá ver lo que está pendiente de generar resguardo, seleccionando las mismas y dando OK al proceso generará los Resguardos correspondientes. 

### Retenciones generadas con fecha contable y no con fecha de documento

Las retenciones las debe generar con fecha contable del documento por pagar y no con fecha de documento como lo viene haciendo, si la genera con fecha de documento, quedan con error de contabilizacion, dado que el periodo esta cerrado.

Controles Resguardos y retención

Si se anula una retención que tiene resguardo no permite. 

### ¿Por qué motivo puede darse el caso de dejar de recibir facturas electrónicamente?

Es posible que en el Panel de DGI no actualizaron el correo de comunicación entre empresas, o sea, que hayan cambiado la casilla de mail para el sistema y no se haya cambiado en DGI.

Para que los Emisores Electrónicos puedan enviar los CFEs por correo a La Organización que corresponda como Receptor Electrónico, deben actualizar esta información en el panel de DGI. 

## Procesos

### Proceso de como Generar líneas CFE

El proceso de Generar líneas CFE funciona una vez que la Factura esté en Estado "En Proceso"

Los Documentos por Cobrar son generados siempre desde el proceso de "Generar Factura desde líneas de Orden" en estado "En Proceso".

Cuando una factura está en Estado "Borrador" (por ej. si se generó manualmente), el proceso de Generar líneas CFE aparece VACÍO y eso es un problema.

En estos casos que se genera un DxC manualmente desde la ventana, se debe intentar "Preparar". esto se realiza desde el proceso de Completar.

*Al preparar se crea automáticamente las Líneas CFE.