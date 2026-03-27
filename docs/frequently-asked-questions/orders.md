---
title: Gestión de Órdenes
category: Documentation
star: 9
sticky: 9
article: false
---

## Mantenimientos

### ¿Qué es un split?

Split es un proceso masivo de reparto de ingresos en cada Contrato según la definición de Split que tenga. En el proceso de Split se generan cálculos de Comisión de tipo “Split” y a partir de ellas se generan Órdenes de Compra y Venta en las organizaciones que corresponden.

### ¿Por que motivo no se visualiza una Orden de Venta para Facturar?

Puede ser por 4 motivos:

* Que NO esté COMPLETA
* Que no tenga el check de “Permite facturar”
* Verificar en la línea de la Orden que no tenga Cantidades facturadas
* Ver que Regla de facturación tiene la misma:

::: tip
Si la regla de facturacion es "Despues de entrega" entonces la cantidad entregada de la linea debe ser mayor a la facturada
:::

::: tip
Si la regla de facturacion NO es  "Despues de entrega" entonces la cant.  facturada debe ser distinta a la cant ordenada
:::

### ¿Qué signifirca este mensaje: “Can’t find Bank Account” al completar una Orden de Venta?

El problema es que para  este tipo de Orden de Venta se realizará la Factura y el Pago de manera automática. Si la misma es generada desde la ventana de Orden de Venta puede que no encuentre Punto de Venta por lo tanto no tendrá Cuenta Bancaria definida para hacer el Cobro. 

### ¿Por qué motivo puede no habilitarse en las órdenes el botón de preparar/completar ni tampoco en los procesos?

En opción "Ventana, pestaña y campo": Campo "VentanaTipo", al seleccionar "Transacción", habilita que se visualice el workflow al apretar los íconos flotantes de la derecha al medio.

Campo "Is Document" en "Tabla y Columna" habilita la acción de documentos en la barra de herramientas.

Puede ocurrir en algún Por algún caso que el check isDocument en C_Order esté destildado y por esto no permita completar esos Documentos.

## Acciones

### ¿Si Reactivo una Orden de Honorarios, le cambio el Contrato, la Completo y Recontabilizo el asiento de reconocimiento, cambia el Contrato en el Asiento?

No, el contrato no cambia.

El asiento de reconocimiento se genera desde un proceso de Reconocimiento masivo, no es el asiento del documento Orden de Venta, son documentos diferentes.

En todo caso, se tendría que también reactivar, modificar el contrato en el Asiento (Lote de Asiento Diario) y modificar ahi el Contrato de servicio. De todos modos esto es riesgoso ya que se estaría haciendo muy manual y uno se podría olvidar de algo.

Lo mejor en este caso sería realizar el ajuste de un reconocimento generando el Documento NEGATIVO que se desea corregir (IGUAL AL QUE SE GENERO MAL) y generar uno nuevo con el dato correcto.

### ¿Cómo puede igualarse las cantidades ordenadas y entregadas a las cantidades facturadas?

Las Cantidades Facturadas y Entregadas son definidas según la o las Entregas que existan con dicha línea de orden y la o las facturas que existan con dicha línea de orden. no hay otra manera de igualarlas que generando documentos.

Diferente es “Igualar la Cantidad Ordenada a la Cantidad Entregada”. 

Al Cerrar la Orden de Venta / Compra se llevan las cantidades Ordenadas a la cantidad Entregada dejando NINGUNA Cantidad Pendiente de entregar. Esto es “Cerrar una Orden”. a su vez, se actualiza el importe de la orden según la nueva Cantidad definida. 

### ¿Es posible cambiarle la organización a una orden de venta?

No se puede reactivar y cambiar la organización de una orden de venta solo reactivando y cambiando la misma ya que existen "Cantidad Reservada Aplicada para dicha Organización".

 Para poder modificar la orgnaización, y esto es algo que no está controlado, ya que no debería hacerse de esta manera, aunque podría realizarse siguiendo los siguientes pasos:

1. Reactivar la Orden
2. Quitar la cantidad ordenada y poner 0
3. Complear la orden (de esta manera no habrá más ninguna Cantidad Reservada)
4. Reactivar la orden y ahora si cambiar la organización y poner la línea con cantidad y el precio que deseen.

### ¿Es posible que al correr el proceso de Generar Orden (desde menú o desde proyecto) no se genere la orden de compra en forma automática?

Los procesos asociados al botón "Generar Orden" desde el proyecto, y el proceso "Generar Orden desde Proyecto", tienen el check "Costo Asociado" marcado en Y (SI) por defecto. 
Al tener marcada la Orden Venta el check "Costo Asociado", es por esa razón que se crea la Orden de Compra.
Para que no se genera la OC, debe destildarse el mencionado check.

### Es posible en la ventana Definición de comisiones filtrar solo los registros del Agente Comercial indicado en la pestaña "Definición de Comisión"?

Esta acción es posible marcando en la linea de comisión el campo "Comisión sólo en Ordenes Específicas". De esta forma los registros se generarán solo para el Representante de Ventas especificado.

## Procesos

### ¿Cómo anular o cerrar masivamente órdenes de venta?

Es posible accionar masivamente modificando el estado de órdenes de venta desde el proceso "Procesar Órdenes en Lote".
Cuenta con filtros o parámetros con el objeto de ajustar la búsqueda.
El campo Estado del Documento es de llenado obligatorio.
Una vez seleccionados los filtros, se realiza la búsqueda y esto permite seleccionar un registro, varios o todos. 
Luego se selecciona la "Acción en el Documento" (el estado que se desea definir para los documentos).
Al presionar Ok el proceso ejecutará el cambio de estado en los documentos seleccionados.

### ¿El proceso “Reabrir Orden” existe solamente para las Órdenes de Compra/Venta?

SI, sólo existe para las Órdenes tanto de venta como de compra (en este último caso deberá encontrarse destildado el check Transacción de Ventas).

### ¿Qué función cumple el Proceso "Generar Orden desde Línea de Proyecto"?

Muestra líneas de proyectos a partir de las cuales se crearán las líneas de órden de venta.

#### Cómo se obtienen los siguientes datos de columnas desde la línea de proyecto:

* Cantidad a Facturar: es la cantidad comiteada menos la cantidad facturada

* Porcentaje Facturado: es el importe facturado multiplicado por 100, y dividido por el importe planeado (si el importe planeado es cero el % facturado será cero)

* Porcentaje a Facturar: es el % de trabajo terminado menos el % facturado

* Importe a Facturar: es la cantidad a facturar multiplicado por el precio planeado

Al procesar se debe indicar la fecha de las OV a crear y el estado para las mismas.

::: tip
El proceso generará una Orden de Venta por cada proyecto, en el estado y fecha seleccionados
:::

### ¿Cuál es la condición o parámetro que utiliza el proceso de "Generar Orden desde Proyecto" para crear en forma automática la Orden de Compra?

Posee un parámetro para indicar si se debe asignar los datos de entrega directa a la Orden de Venta generada, siendo estos los datos siguientes:

* Check "Costo Asociado"
* Socio Del Negocio "Entrega Directa"
* Dirección Entrega Directa

Al tener estos datos la Orden de Venta, al completarse va a generar automáticamente la Orden de Compra enlazada. 
Para que la OC se complete durante el proceso, se creó un configurador del sistema (el valor por defecto del configurador, en caso de no existir, es N).

## Reportes

### ¿Cuál es la diferencia entre el Listado de Órdenes y el Listado de Órdenes completo?

* El listado de órdenes muestra las líneas de las Órdenes, tanto Órdenes de Venta como Órdenes de Compra.
indicando Transacción de Venta: SI/NO
Este informe no muestra las órdenes de inversión, honorarios, comisiones.

* El listado de órdenes completo muestra en detalle la totalidad de líneas de órdenes, incluyendo las de inversión, honorarios y comisiones. También se muestran datos relacionados al reconocimiento de la orden, para los casos en que la línea tenga plan de reconocimento.

El reporte obtiene la tasa de cambio a utilizar de tipo AVERAGE, para convertir de USD a UYU, según la fecha de ejecución del reporte.

Se consideran órdenes cuyo tipo de documento no sea de nombre "Descuento de Venta Paquete".

Además, se considera órdenes en estado COMPLETO cuando el tipo de documento de la orden se encuentra definido en el campo "Tipo de documento para la orden", en una definición de comisión activa, y su base del cálculo es "Honorarios" o "Comisión". Si esto no se cumple, entonces se considera el estado COMPLETO o CERRADO.

Filtros Estado:

Pendiente de Facturar: órdenes que están en Estado Completo o Cerrado con "Permite Facturar = Y" y "Facturado completamente = NO".

Pendiente de OK para Facturar: órdenes que estén en Estado Completo o Cerrado con el check de "Permite Facturar" = NO, y que el tipo de documento de la orden tenga definido el campo "Tipo de documento para la factura" y que la orden no tenga marcado el check "Factura Directa a Cliente".

Ordenes Entregadas no Facturadas: líneas de orden sin cantidad disponible para entregar y con cantidad disponible para facturar, y que el tipo de documento de la orden tenga definido el campo "Tipo de documento para la factura".

Ordenes Facturadas no Entregadas: líneas de orden con cantidad disponible para entregar y sin cantidad disponible para facturar.