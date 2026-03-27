---
title: Proceso de Distribución
category: Documentation
star: 9
sticky: 9
article: false
---

El proceso de distribución para una distribuidora es el conjunto de actividades que permite gestionar de manera integral la logística y el flujo de productos desde el proveedor hasta el cliente final. Este circuito abarca varias funciones claves como la gestión de inventarios, pedidos, transporte, almacenamiento y facturación. El objetivo es optimizar las operaciones de distribución, mejorando la eficiencia y minimizando costos.

Funciones principales del proceso de distribución en un ERP para distribuidoras:

* Gestión de inventarios: Controla el stock en tiempo real, asegurando que siempre haya suficientes productos para satisfacer la demanda sin generar sobreinventario.

* Procesamiento de pedidos: Automatiza la recepción, validación y ejecución de pedidos, asegurando que se procesen de manera eficiente y rápida.

* Control de logística: Planifica y organiza el transporte de productos desde el almacén hasta el cliente final, optimizando rutas de entrega y controlando los costos de transporte.

* Gestión de almacenes: Coordina la entrada, almacenamiento y salida de mercancías, asegurando un correcto manejo del espacio, la ubicación de los productos y su accesibilidad.

* Facturación y finanzas: Integra el flujo de información con el área financiera para emitir facturas, registrar pagos y gestionar cuentas por cobrar, facilitando el control contable y financiero.

* Optimización de la cadena de suministro: El ERP permite una visión completa del proceso, facilitando la toma de decisiones informadas para ajustar los niveles de inventario, mejorar tiempos de entrega y asegurar que los productos lleguen a tiempo.

Para iniciar el circuito de distribución el primer paso es crear una Orden de Venta.
Estos documentos presentan diferentes tipos, y a su vez, cada tipo de orden de venta posee un sub tipo con un determinado comportamiento.
Para mayor detalle sobre órdenes de venta: - 

y sobre Tipos de Documentos (Tipo documento destino y subtipo OV): 

### 1. Orden de Venta Distribución:

La orden de venta de una distribuidora es un documento clave dentro del proceso comercial que representa el compromiso de un cliente de adquirir un determinado producto o servicio. Es generada cuando un cliente realiza un pedido y detalla la información relevante sobre la transacción, como los productos solicitados, cantidades, precios, fechas de entrega y condiciones de pago.

Es una instrucción formal para preparar y enviar los productos a un cliente. En un ERP, la orden de venta se crea automáticamente o manualmente cuando se recibe un pedido y puede incluir varios datos esenciales:

* Información del cliente (nombre, dirección de envío, términos de pago).
* Descripción de los productos o servicios solicitados (código de producto, cantidades).
* Precios, impuestos aplicables y descuentos.
* Fechas de entrega y lugar de envío.
* Condiciones de pago y facturación.

El ERP gestiona esta orden y la vincula con otros procesos del sistema, como la gestión de inventarios, la logística, y la facturación.

Se debe seleccionar el socio de negocio.

Desde línea de orden se pueden elegir los productos. En los casos de ventas recurrentes, existe la posibilidad de copiar líneas de una orden anterior.

Esta función (copiar líneas) copia las líneas tal como fueron generadas en la orden de venta original (hereda descuentos).

En el negocio de retail, la lista de precios utilizada ya posee el impuesto incluido (así está configurado en el check correspondiente, en la entidad lista de precios).

En la orden de venta, la regla de pago se setea por defecto según el socio de negocio seleccionado.

La dirección también la hereda del socio de negocio (pestaña Localización) y se encuentra vinculada a una región de ventas. Esto permite asignar un vendedor para cada región de ventas.

Es importante en la orden de venta la regla de facturación. En general, se utiliza "después de entrega", con el objeto de generar factura por aquello que ha sido efectivamente entregado y evitar así diferencias  por falta de stock.

Luego de setear todos los datos obligatorios se completa la orden de venta. Esto genera los documentos que correspondan según el tipo de orden de venta (en este caso en el cual el tipo es: orden de venta, no genera otros documentos).

Los descuentos en la orden de venta pueden ingresarse manualmente o bien setearse en el socio de negocio.

Una vez generada la orden de venta el siguiente paso es generar la Orden de salida:

### 2. Generar Orden de Salida

Una orden de salida de una distribuidora es un documento o instrucción que autoriza el despacho de productos desde el almacén hacia el cliente u otro destino, como una sucursal o centro de distribución. Está directamente relacionada con una orden de venta, ya que es el paso donde se ejecuta físicamente la entrega de los productos solicitados.

Indica al personal de almacén que deben preparar y despachar los productos de un pedido. Contiene toda la información relevante para que los productos se extraigan del inventario, se preparen para su envío y se realice la entrega.

Esta orden incluye:

* El listado de productos y cantidades a despachar.
* El almacén o ubicación de donde deben extraerse los productos.
* Las instrucciones de embalaje, transporte y ruta de entrega.
* La identificación del cliente y la dirección de envío.
* La fecha en que debe realizarse la salida y cualquier información sobre plazos de entrega.

Luego de completar las órdenes de venta, el paso siguiente es **"Generar orden de salida"**. En esta ventana se da origen al proceso de distribución.

Se debe seleccionar la organización y el almacén. Luego puede filtrarse por región de ventas y/o por fecha documento (no es obligatorio).

Al seleccionar "buscar", muestra todas las órdenes pendientes de entrega (según los filtros utilizados).

A medida que se van seleccionando las órdenes a entregar en la parte superior, en la parte inferior se van agregando las **líneas de esas órdenes**.

Dentro de esas líneas, si se utliza el inventario correctamente, el ERP realiza una comparación entre la cantidad a entregar y la cantidad en existencia.

::: tip
Desde el proceso Generar Orden de Salida desde OV se puede visualizar la columna Cantidad Existencia, que muestra la cantidad en existencia para el producto y el almacén de la Orden de Venta.
:::

También es posible configurar la secuencia de carga (orden en la cual se realizarán las entregas).

En el extremos inferior de la ventana existe una sección (resumen de inventario por producto) donde es posible visualizar en qué almacén se encuentra la cantidad en existencia por cada producto.

También permite definir una ubicación (ubicación lógica) para el armado del pedido. Se trata de una ubicación dentro del almacén donde se realizará el pickinig.

Al aceptar, el sistema genera mensaje de insuficiente cantidad disponible por aquellos productos con stock por debajo de lo solicitado en las órdenes a entregar.

Al aceptar (con existencia suficiente por producto), el ERP brinda la opción de imprimir orden (de salida).

Esta impresión actúa como "hoja de ruta" para preparar los pedidos (realizar la búsqueda en el almacén).
La impresión cuenta con diferentes formatos (tipos de agrupación): por producto, por factura, por orden de venta.

Al momento de aceptar la orden de salida es importante seleccionar la acción que se ejecutará sobre el documento: puede ser "completo" o "en proceso".

En este caso es posible generar la orden de salida en estado "preparar" o directamente con estado "completar".
![Generar Orden de Salida](/assets/img/docs/distribution-management/dim-distribution-image23.png)

### 3. Reportes de Orden de Salida

Los reportes de orden de salida de distribuidora son informes generados por el sistema que recopila y muestra información detallada sobre las órdenes de salida emitidas desde el almacén. Este reporte proporciona una visión clara del estado de los productos que han sido despachados o están en proceso de serlo, permitiendo a los responsables de la logística y la distribución tener un control completo sobre las operaciones de salida.

Es un documento que puede generarse en cualquier momento y que detalla la información relevante sobre las órdenes de salida en el sistema, tales como:

* Número de la orden de salida.
* Cliente al que se le envía el pedido.
* Productos incluidos en la orden (descripción, cantidades, unidades).
* Estado de la orden (pendiente, en proceso, completada).
* Fecha de emisión y fecha de salida programada.
* Almacén o ubicación desde donde se despachan los productos.
* Método de envío y transportista encargado.
* Comentarios adicionales o instrucciones especiales de entrega.

El reporte puede variar según las necesidades del negocio y puede ser personalizado para incluir información específica de la operación logística.

El paso posterior a generar la Orden de salida es imprimir el reporte de Orden de Salida para realizar la búsqueda de los productos a distribuir (el pickeo).
Este reporte presenta diferentes formatos de acuerdo a lo que se requiera:

* Un formato con listado general de los productos incluidos en la Orden de Salida para (generar Picking)

* Un formato de listado por Socio del Negocio (por cliente) para armar cada pedido individual (generar Packing).

* Un formato de listado más detallado incluyendo importes para el transportista (generar el Shiping)

Dicho proceso puede ubicarse desde el Menú, y también es posible ejecutarlo directo desde la ventana para la orden actual:

![Proceso](/assets/img/docs/distribution-management/dim-distribution-image28.png)

Actualmente, están disponibles **tres reportes principales**:

#### Reporte de Picking (Preparación de Productos)

Objetivo: Identificar y agrupar los productos necesarios para cumplir las órdenes de venta asociadas a la orden de salida.

Contenido:

* Lista de productos requeridos.

* Cantidades totales agrupadas entre todas las órdenes de venta vinculadas.

Uso: Permite al personal de depósito localizar los productos correctos para preparar la entrega.

![Proceso](/assets/img/docs/distribution-management/dim-distribution-image29.png)


#### Reporte de Packing (Armado de Pedidos)

Objetivo: Facilitar el armado de pedidos según orden de venta o cliente.

Contenido:

* Productos separados por cliente u orden de venta.

* Número de factura asociado (para pedidos ya facturados).

* Dirección de entrega (tomada del socio de negocio).

Uso: Guía para armar los paquetes de cada cliente con los productos y cantidades correctas.

![Proceso](/assets/img/docs/distribution-management/dim-distribution-image30.png)

#### Reporte de Orden de Salida (Hoja de Ruta de Entrega)

Objetivo: Servir como guía de distribución para el transportista.

Contenido:

* Número de factura.

* Importe correspondiente.

* Condición/regla de pago.

* Dirección del cliente.

Uso: Funciona como hoja de ruta simplificada para que el camión realice la entrega de cada pedido.

![Proceso](/assets/img/docs/distribution-management/dim-distribution-image31.png)

### Crear Entregas

El proceso de Generar entregas (posterior al Picking) desde la orden de salida de distribuidora es un flujo clave que permite organizar la preparación y entrega de productos de manera eficiente. Este proceso involucra dos etapas principales: el picking (selección y recolección de productos en el almacén) y la entrega (despacho y transporte de los productos al cliente final).

Está directamente vinculado con la orden de salida, que es la autorización para que los productos sean despachados del almacén.

#### Picking:

Es el proceso de recolección de productos en el almacén para cumplir con un pedido o una orden de salida. El ERP genera una lista de los productos que deben ser recogidos (picking list), que indica el almacén, la ubicación exacta de los productos, la cantidad solicitada y cualquier detalle adicional para asegurar que se recojan los productos correctos. El sistema también puede optimizar el picking, sugiriendo la mejor ruta dentro del almacén para minimizar el tiempo de recolección.

#### Entrega:

Una vez que los productos han sido recogidos, el ERP gestiona la etapa de entrega, que incluye la preparación del envío, la coordinación del transporte y la emisión de los documentos de entrega, como las guías de remisión o etiquetas de envío. El ERP puede registrar cuándo los productos han sido enviados, generar un número de seguimiento, y actualizar el estado de la entrega hasta que los productos lleguen al cliente.

* Se debe marcar todo lo que se encontró de los productos a entregar (resultado del picking) y se modifican las cantidades de acuerdo a las existencias reales.

* Al completar documento, realiza las entregas.

* El motivo por el cual puede haber diferencias entre la existencia que muestra el ERP y el resultado del pickeo responde a que no se encuentra correctamente actualizado el stock del producto.

* En esta instancia, al consultar una orden de venta (vinculada a nuestra orden de salida con estado completo) se puede observar la cantidad "entregada". Aun no se visualizará cantidad facturada.

![Generar Entregas y Facturas](/assets/img/docs/distribution-management/dim-distribution-image25.png)

### 4. Crear Facturas Masivamente

Una vez generado el picking y entrega, el paso siguiente es **crear las facturas masivamente**.

La facturación se realiza desde la orden de salida (en estado completo) en la ventana "Generar factura desde orden de salida": - 

![Filtros Facturas](/assets/img/docs/distribution-management/dim-distribution-image26.png)

::: tip
Los procesos "Generar entregas desde orden de salida" y "Generar factura desde orden de salida", permiten entregar y facturar por cantidad mayor a la ordenada (por ejemplo para aquellos productos que se vendan por bolsa y su valor sea por unidad, pero su peso pueda variar).
::: 

### 5. Impresión Masiva de Facturas

La funcionalidad de impresión masiva de facturas permite generar en un solo paso todas las facturas asociadas a una Orden de Salida.
Esto agiliza el proceso de facturación y facilita la gestión logística y administrativa.

#### Pasos del Proceso

- Acceso a la Orden de Salida

* Ingresar al documento Orden de Salida previamente generado.

* Seleccionar la orden de salida deseada.

* Visualización de Facturas Asociadas

* Dentro de la orden de salida se muestran todas las órdenes de venta vinculadas (ejemplo: OV #35, #08, #74).

* En cada caso se visualizan las entregas realizadas y las facturas generadas (ejemplo: Facturas #53, #54, #55, #56).

- Generación de Impresión Masiva

* Seleccionar la opción de impresión masiva de facturas.

* El sistema agrupa todas las facturas asociadas a las órdenes de venta incluidas en la orden de salida.

::: tip
Ejemplo: si la orden de salida contiene 8 órdenes de venta, se generará un lote de 8 facturas listas para imprimir.
:::

- Impresión

* El sistema prepara cada factura con su información correspondiente (cliente, productos, cantidades, importes).

* Una vez generado el lote, se puede enviar la impresión directamente a la impresora configurada.

![Proceso](/assets/img/docs/distribution-management/dim-distribution-image32.png)

### 6. Generar Cobros desde Orden de Salida

El proceso de Generar cobros desde la orden de salida de distribuidora consiste en la automatización de la gestión de cobros relacionados con las órdenes de salida, que están directamente vinculadas a las ventas y a los despachos de productos. Este proceso facilita la gestión de las transacciones financieras derivadas de la venta de productos, desde la entrega de los mismos hasta el cobro de las facturas correspondientes.

Implica que, una vez que se ha generado y completado una orden de salida y los productos han sido despachados al cliente, el ERP puede iniciar la fase de cobro. Esto puede realizarse mediante la emisión de facturas vinculadas a la orden de salida o a la orden de venta original, y facilita el registro y control de los pagos que los clientes deben realizar.

El último paso de este proceso es **Generar los cobros desde orden de salida.**  Se debe seleccionar la orden de salida.

En esta opción (Generar cobros desde orden de salida) se visualizarán todas aquellas facturas cuyo medio de pago se haya configurado como "contado" (no es a crédito), como por ejemplo cheque, efectivo, etc.

En el caso de cheque, se ingresa el número (número de pago), se selecciona en parámetros la cuenta bancaria que corresponda y la fecha de pago.

Al seleccionar aceptar se podrá observar el documento por cobrar marcado como "pagado" y el pago generado correspondiente (registro de pago/cobro).

![Filtros Cobros](/assets/img/docs/distribution-management/dim-distribution-image27.png)