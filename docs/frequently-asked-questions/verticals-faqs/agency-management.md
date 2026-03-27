---
title: Gestión de Agencia de Publicidad
category: Documentation
star: 9
sticky: 9
article: false
---

## Mantenimientos

###  Proyectos

### No me aparece el Cliente para elegir en el proyecto:

**Solución:**

Un Proyecto se podrá generar sólo a un Cliente que tenga un Contrato Activo en la Organización que estoy logueado.

Además se deberá verificar que el contrato que se obtenga para ese Cliente tenga definido un Sello Origen en Contrato en cuestión para el Tipo de Proyecto que se esté generando (Medios, Creativo, Digital, RRPP).

### No se encuentra Sello Origen

**Solución:**

Cuando esto sucede es probable que el contrato del proyecto en cuestión no tenga definido un sello origen para este Tipo de empresa, por lo que deberemos navegar al Contrato y en la pestaña Partes del contrato crear el sello origen correspondiente.

inida mismo en la Ventana de Proyecto de Agencia. En ella podrán ver de manera resumida todos los datos referente a una Orden de Venta que necesitan.

### ¿Por qué razón puede ser que un Cálculo de comisión solo tome en cuenta la linea de la orden que está facturada?

El cálculo de comisión que se genera desde la Orden de Compra para que funcione bien no debe tener FACTURADO PARCIALMENTE ninguna línea ya que si lo tiene, el cálculo se realizará considerando dicha cantidad facturada y no la totalidad.

SOLUCIÓN: Si esto pasa lo más fácil es simplemente hacer una Orden de Venta Comisión MANUALMENTE por el total. Recordar definir todos los campos que tienen las OV Comisión automáticas (Proyecto y Contrato de Servicios).

### ¿Por qué puede no referenciarse un Proyecto en una factura?

El Proyecto se referenciará en la factura siempre que el criterio de agrupación que se haya elegido para agrupar las lineas de Orden al correr el proceso Generar factura desde línea de Orden haya sido “Proyecto”.

Por ejemplo se puede tener N proyectos por Contrato pero solo Un Contrato por cada proyecto. Por lo que si se agrupa por Contrato, como las lineas de orden pueden ser de varios proyectos, al generar la factura no establece el campo de Proyecto en el cabezal.

### ¿Por qué sucede el siguiente Error de campo Almacén obligatorio al Actualizar Cálculos de comisión si el Almacén está definido?

Este error se produce porque no elegimos Almacen al momento de loguearnos (ingreso al sistema).

### ¿Por qué no se visualiza al correspondiente Socio de Negocio cuando quiero seleccionar el mismo desde el cabezal de la ventana Proyecto de Medios?

Esto puede suceder porque el Socio de Negocio esté definido en otra Organización distinta a la que estoy logueado. O bien es posible que se encuentre seteado como Activo = NO.

### ¿Por qué motivo al completar una Orden de Venta Compra consumo no se genera Orden de Compra enlazada?

Esto puede suceder frecuentemente cuando al generar el Proyecto desde la fase no se marca el check de "Entrega directa" en “Y”, para luego poder seleccionar el Proveedor como “Socio del Negocio de Entrega Directa”.

SOLUCIÓN: en estos casos sería anular esta Orden de Venta, seguir estos pasos y luego si, generar la misma desde la Fase y completarla.

¿Por qué sucede que luego de haber creado un producto me dirijo a seleccionarlo en la pestaña Líneas fase del Proyecto y al filtrar el producto creado el sistema no lo encuentra?

En estos casos debe verificarse que al crearse el producto quedaron definidos todos los campos que luego utilizarán los filtros para encontrarlo. Por ejemplo, si cuando se creó el producto no quedó definida ni la Versión de lista de precios, ni el Proveedor; cuando se intente filtrar por estos criterios el sistema no encontrará ningún producto asociado a los mismos.

### ¿Cómo se pudo haber generado Cálculos de comisión duplicados en una orden?

Se pudieron haber generado varias veces si la reactivaron N veces o corrieron el proceso de “recálculo de comisión” N veces.

### ¿Por qué motivo se puede generar un Documento por cobrar vinculado a una orden de venta servicio con el Socio del negocio del Contrato y no con el Socio del negocio de la orden de venta?

Este problema puede ocurrir debido a que el Contrato que se generó quedó con una nueva funcionalidad de "Socio del Negocio a Facturar" definido, esto aplica para permitir generar facturas de determinados contratos a diferentes Socios del Negocio.
Para evitar que esto ocurra se agregó una configuración en la definición de las comisiones para que jamás permita que una comisión se facture al Socio del Negocio del Contrato. 

### Por qué motivo un Documento por pagar genera comisión solo por una de sus líneas y no genera comisión por las demás líneas?

No está soportado por el sistema que un Documento por Pagar se vincule a más de una Orden de Compra. La relación es de 1 a 1 (generar una orden de compra ppr cada documento por pagar). Otra opción para resolverlo sería generar diferentes líneas en una misma orden de compra

## Acciones

### Definición de Sello Origen de un Proyecto

Cuando se guarda un proyecto de agencia o de medios, se realiza lo siguiente: Según la Categoría de Proyecto se define el Sello Origen correspondiente que tenga definido el contrato en sus “Partes del Contrato”.

Según las siguientes Categoría de Proyecto se obtendrá el sello definido para el siguiente tipo de empresa:

Categoría de Proyecto:                      Tipo de Empresa  
Proyecto de Agencia                           Agencia Creativa

Proyecto de Medios                            Agencia de Medios

Proyecto de RRP                                 Agencia RRPP

Proyecto de Medios Digitales             Agencia de Medios Digitales

::: tip
Si no se obtuvo sello de origen se lanza una excepción.
:::

### Definición del almacén en un Proyecto

El almacén en un proyecto se definirá de manera automática según el almacén que tenga definido el Cliente en la pestaña Cliente ventana Socio del Negocio.

### Definición de honorarios

Los honorarios se definen en la ventana Definición de comisiones.

### Definición de Tipos de honorario y Porcentajes en un Contrato de servicio

El porcentaje de honorarios que será considerado para el cálculo de Honorarios será obtenido según el “Contrato de Servicio”, de acuerdo a la definición que exista en la pestaña Honorarios, aplicando los filtros definidos en estos registros.

Debe considerarse que estas definiciones actúan como si fuese un Diagrama de Venn, definiendo tantos conjuntos como definiciones se realicen. A medida que se vayan definiendo conjuntos más complejos se debe tener la precaución de no dejar conjuntos que en algún momento puedan duplicar ciertos productos ya que un producto puede estar en diferentes conjuntos según como se definan los mismos. En este proceso se debe actuar en concordancia con la definición de los productos para que se logre una correcta definición de ellos y los Conjuntos que se desean definir.

Para que un producto sea considerado por un Honorario es necesario que por lo menos una que incluya el producto contemple el honorario y que este último no tenga alguna que no esté en el producto.

### Requisitos para seleccionar Socios del Negocio en un Proyecto

Para que aquí se visualice un cliente para seleccionar, es importante que:

* El Cliente esté creado con la Organización con la que se encuentra logueado el usuario o con Organización (*).
* El Cliente tenga un contrato activo en la Organización en la que se encuentra logueado el usuario.
* En la ventana Socio de negocio, en su cabezal debe tener marcado el check de "activo" y en la pestaña Cliente el check de "Cliente".

Para que el sistema permita elegir un Proveedor en el campo **Socio del negocio Entrega Directa** es importante que el mismo:

Esté creado con la Organización con la que se encuentra logueado el usuario o con Organzación (*).

* En la ventana Socio de negocio, en su cabezal debe tener marcado el check de "activo" y en la pestaña Proveedor el check de "Proveedor".

Requisitos para visualizar una Orden de venta a facturar desde el proceso Generar factura desde linea de orden:

1. La Orden de venta debe estar COMPLETA.
2. Tener el ckeck de PERMITE FACTURAR en “Y”.
3. Se debe tener en cuenta el campo “Regla de facturación” de la misma.

### Ventana “Project” (“Proyecto”):

En esta ventana, el Botón "Set Project Type" sirve para definir el Tipo de Proyecto que se estará trabajando. Esta funcionalidad se puede utilizar o no, dependiendo de la operativa. El Project Type puede definir al proyecto una Planilla pre definida de Fases o Tareas. Se Puede ver las mismas ingresando a la ventana de "Project Type" desde el Rol Administrador. Si  se deja el Mouse sobre un campo se despliega una ayuda del mismo.

¿Qué determina que aparezca una línea de Orden de venta para facturar en el proceso Generar factura desde linea de orden?

Lo que determina que aparezca o no la linea de orden para facturar en el proceso Generar factura desde linea de orden son las cantidades facturadas de la orden. Si ya se encuentran todas sus cantidades facturadas ésta no figurará. Por el contrario, se mostrarán cuando presente un pendiente de facturación.

### ¿Si Reactivo una Orden de Honorarios, le cambio el Contrato, la Completo y Recontabilizo el asiento de reconocimiento, cambia el Contrato en el Asiento?

En este caso no lo cambia.

El asiento de reconocimiento se genera desde un proceso de Reconocimiento masivo, no es el asiento del documento Orden de Venta, son documentos diferentes.

En todo caso, se tendría que también reactivar, modificar el contrato en el Asiento (Lote de Asiento Diario) y modificar ahi el Contrato de servicio. De todos modos esto es riesgoso ya que se estaría haciendo muy manual y uno se podría olvidar de algo.

Lo mejor en este caso sería realizar el ajuste de un reconocimento generando el Documento NEGATIVO que se desea corregir (IGUAL AL QUE SE GENERO MAL) y generar uno nuevo con el dato correcto.

Caso concreto: se generó proyecto y OV (orden de venta) pero no le calculó el honorario en automático. Respuesta: Al proyecto de medios se le vinculó un contrato de servicio sin honorarios.

### ¿Cómo se genera la Orden de Venta Honorarios?

La Orden de Venta de Honorarios se generará automáticamente desde el Cálculo de Comisiones siempre y cuando éste tenga un importe mayor a 0.

Podremos acceder a la misma desde la ventana Cálculo de Comisiones mediante el ícono de documentos relacionados.

### ¿Cuándo se calculan los Honorarios?

Al momento de completar la Orden de venta se generarán tantos Cálculos de comisiones como Tipos de Honorarios se tengan definidos. Según cada Tipo de Honorarios se verificará si los productos definidos en la línea de la Orden de Venta están definidos dentro de los Honorarios del Contrato de Servicio en cuestión. En caso de que se encuentre que un Producto está contemplado en los Honorarios del Contrato, el cálculo de comisiones considerará dicha línea y aplicará el % correspondiente. En el caso de que la Orden de Venta no tenga ningún producto que esté definido en los criterios de un Honorario específico este se creará con importe 0.

Podremos acceder a los cálculos de Comisión realizados mediante el botón de “Documentos Relacionados” desde la Barra de Herramientas.

### ¿Se pueden crear 2 socios de negocio con el mismo rut?

Hay un control que verifica que no se permita hacer eso, pero en ciertos clientes cuando aplicamos el control como tenían duplicados los rut no se pudo aplicar ese control, hasta q no lo solucionen.

### ¿El check de fabricate en “Y” en la pestaña Proveedor de la ventana Socio del Negocio es requisito para que se calcule una comisión?

En ese caso no es requisito.

### ¿Cómo se define en el sistema que una Orden de compra deba generar comisiones u honorarios?

Se define según el Tipo de Documento. En el Tipo de documento debe tener definido en el campo "Tipo de Comisión" que comisión debe generar al completar el mismo.

Las Ordenes de Venta deben tener seteado "HONORARIOS"

Las órdenes de Compra deben tener configurado "Comisiones"

### ¿Dónde definir Cantidad de Cuotas y Forma de facturación en Proyecto de medios Compra inventario?

Se realiza en la fase, en los campos:

* **Descripción:** Escribir en la Descripción de la FASE cómo se desea que sea Facturado para que Administración se entere y
* **Cantidad:** Además en el Campo “Cantidad” de la Fase se deberá definir la Cantidad de Cuotas que se desea Facturar, ya sea por el Medio o al Cliente. Ver que como Precio Unitario se deberá visualizar el importe de cada una de las cuotas a ser Facturado.

### ¿Cómo se puede ver la Orden de Compra de Costo asociado de una Orden de venta?

La Orden de Compra por Costo asociado aparecerá en el campo “Orden enlazada” desde la Orden de venta ubicado en el grupo de campos “Entrega”.

### ¿Si tengo una OV que generó honorarios y se reconoció, y quiero mantener la OV pero no los honorarios, como tengo que hacer para "anular" esos honorarios?

Para que se genere un nuevo Honorario se puede correr el proceso de "Actualizar Cálculo de Comisiones" desde la Orden de Venta

Esto lo que hará es cerrar el cálculo de comisión que calculó los honorarios correspondientes y generar un nuevo cálculo de comisión según el % de Honorarios actual.

Si no se desea que se calcule honorarios en esta orden no tenemos actualmente la opción que si existe en las comisiones de definir un % especial de Comisión a la orden.

Lo que se puede hacer es por un momento dejar el honorario variable definido en el contrato que estaría obteniendo esta orden en 0, correr el proceso de "actualizar cálculo de comisión" para que genere la negativa y genere la nueva pero en 0.

### ¿Pueden generarse Órdenes de venta por Honorarios y Comisiones al Proveedor en más de una cuota?

El funcionamiento actual del sistema es el siguiente:

**1. Con respecto a la Orden de Venta Honorarios:**

Al momento de completar la Orden de venta se calcularán tantos Cálculos de comisiones como Tipos de honorarios tenga definido el Contrato de servicio.

La Orden de Venta de Honorarios se generará automáticamente desde el Cálculo de Comisiones siempre y cuando éste tenga un importe mayor a 0.

Por lo tanto al generarse la Orden de venta Honorarios esta no discrimina por cantidad de cuotas de la Orden de venta que lo generó.

### En los casos de recibo canje, al generar recibo de pago nos solicita el sistema el recibo emitido por nostros, ¿qué número debemos ingresar?

En el caso de recibo de canje, si no se ingresa el número del recibo de canje, entonces se obtiene desde la secuencia correspondiente del tipo de documento Recibo de Cobro (secuencia automática incremental)

::: tip
 Este cambio aplica solamente a la ventana de "Recibo de Pago", en la ventana de "Recibo de Cobro" el número de recibo de canje seguirá siendo obligatorio su ingreso manual
:::

## Procesos

### ¿Cómo se Actualizan los Cálculos de Comisiones?

Al ejecutar el proceso de actualización de cálculos de comisión, los cálculos anteriores no se cierran si tienen una factura definida.

Además al cerrar el cálculo a mano desde la ventana, se genera la solicitud de NC.

Por esto, si luego se cierra manualmente la OV también dispara otra solicitud de nota de cŕedito.

### Actualización de Cálculo de comisiones para Honorarios

Se deberán seguir los siguientes pasos:

* Desde el Contrato de servicio, pestaña Honorarios modificaremos el campo “Multiplicador” al Honorario en cuestión que queramos modificar, indicando aquí el nuevo valor. Guardamos el registro.
* Luego desde la Orden de venta a la que se aplicaron los honorarios correremos el proceso “Actualizar Cálculo de Comisión de Orden”

De esta manera los Cálculos de comisiones generados antes de aplicar este proceso serán Cerrados al igual que su Orden de venta Honorarios.

Se generarán los nuevos  Cálculos de comisiones aplicando los nuevos porcentajes definidos y una nueva Orden de venta honorarios en estado Completo.

### ¿Cuándo se generan los cálculos de comisiones?

Los Cálculos de comisiones se generan al completar una Orden de venta o al correr el proceso desde la barra de herramientas.

### ¿Por qué motivo no me permite marcar el check Factura directa a cliente en las órdenes?

El permiso sobre ese check se controla por el Tipo de Documento. En este caso se debe crear para el tipo de documento utilizado uno tildando el check de "Factura directa a cliente" (tanto para tipo de documento de orden de venta como para orden de compra).
Esto permitirá activar esa opción en las órdenes.

### ¿Es posible Generar Cheque Diferido desde Selección de Pago Customizada?

Si. Actualmente existe el proceso "Generar Cheque Diferido" que se ejecuta desde la ventana de selección de pago customizada.

En este proceso se permite elegir solamente libretas de cheque que pertenezcan a la cuenta bancaria de la SDP.

Para que el cheque se genere, debe existir una línea de "Pago Generado" que no esté Procesada y no tenga un Pago asignado, en caso contrario indicaría que:

No hay línea de pago generado porque no hay cuenta bancaria definida en la SDP
Hay línea de pago generada, pero previamente se ha generado un pago desde el proceso "Generar Pago/Cobro"
Si el cheque se genera, se asigna el mismo a la línea de pago generado, en el nuevo campo "Cheque Diferido".

La creación de recibo de pago desde SDP incorpora también los cheques diferidos que pueda contener la SDP seleccionada.