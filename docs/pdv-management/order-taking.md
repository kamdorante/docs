---
title: Toma de Pedido en Punto de Venta
category: Documentation
star: 9
sticky: 9
article: false
---

## Toma de Pedido

El proceso de Toma de Pedido consiste en registrar los productos y el cobro, generando automáticamente los documentos:

* Cobro en la ventana Caja.
* Factura por Cobrar en Documentos por Cobrar.
* Entrega en la ventana Entrega (Cliente).

Para registrar un pedido:

1. Vaya a Gestión de Ventas > Órdenes de Venta > Punto de Venta.
2. Haga clic en Nueva Orden.
3. Seleccione el terminal de PDV.
4. Escoja un cliente o cree uno nuevo.
5. Agregue productos mediante el Catálogo de Productos o el Panel de Búsqueda.
6. Modifique cantidades, descuentos y precios según sea necesario.
7. Revise la información de la orden.

## Registro de Pedido

Ubique y seleccione en el menú de Solop ERP, la carpeta **Gestión de Ventas**, luego seleccione la carpeta **Orden de Ventas**, por último seleccione la ventana **Punto de Venta**.

![Campo](/assets/img/docs/sales-management/sam-sales-image304.png)

Imagen 1. Menú de Solop ERP

Podrá visualizar la ventana **Punto de Venta** en Solop ERP.

![Campo](/assets/img/docs/sales-management/sam-sales-image305.png)

Imagen 2. Ventana Punto de Venta

Seleccione el icono |Nueva Orden|, ubicado en la barra de herramientas superior derecha.

![Campo](/assets/img/docs/sales-management/sam-sales-image306.png)

Podrá visualizar la ventana Selecciona |Terminal PDV|, para seleccionar el terminal del punto de venta con el cual va a gestionar la toma de pedido y posteriormente la opción **OK** para cargar la ventana |Punto de Venta| para el terminal seleccionado.

::: tip
Esta opción es habilitada cuando el socio del negocio vendedor tiene configurado más de un terminal de punto de venta.
:::

Si desea relacionar su venta a un cliente fiscalmente, puede seleccionar un cliente existente o crear un nuevo cliente:

Para seleccionar cliente existente, proceda a tipear el nombre, RUT o cédula del cliente como lo muetras la Imagen.

![Campo](/assets/img/docs/sales-management/sam-sales-image307.png)

Imagen 4. Búsqueda de Cliente

Para seleccionar cliente existente, proceda a tipear el nombre, RUT o cédula del cliente como lo muetras la Imagen.

![Campo](/assets/img/docs/sales-management/sam-sales-image308.png)

Imagen 4. Nuevo Cliente

Seleccione la opción |Crear Nuevo Socio de Negocio|.

![Campo](/assets/img/docs/sales-management/sam-sales-image309.png)

Imagen 5. Opción Nuevo Cliente

A continuación Seleccione la opción |Crear Nuevo Socio de Negocio|, y se desplegará la siguiente ventana.

![Campo](/assets/img/docs/sales-management/sam-sales-image310.png)

Imagen 6. Ventana Crear Socio de Negocio

A continuación indique el código del cliente (Cédula/RIF) en el campo **Código**.

![Campo](/assets/img/docs/sales-management/sam-sales-image311.png)

Imagen 7. Código Socio de Negocio

::: tip
Solop ERP actualiza de modo automático el campo **Número Identificación**, este campo es utilizado para reportes fiscales (Ejemplo:IGTF).
:::

A continuación indique el nombre o razón social del cliente en el campo **Nombre**.

|Nombre Cliente|

![Campo](/assets/img/docs/sales-management/sam-sales-image312.png)

Imagen 7. Nombre Socio de Negocio

Seleccionar Cliente para la Venta

::: tip
Recuerde que debe cambiar la información del socio **Cliente Unico** por la información del cliente real de la venta, ya que esta información saldrá impresa en la factura fiscal generada al concluir la venta.
:::

Puede proceder a cargar los productos desde el Catálogo de Productos. De igual manera, puede realizar este proceso desde el Panel de Búsqueda de Productos

Luego de cargar todos los productos a la orden de venta, la información detallada de los mismos podrá ser visualizada en la Sección de Información de Producto. De igual manera, se puede apreciar en la Línea de la Orden de Venta.

La cantidad a vender de cada producto, el descuento a aplicar y su respectivo precio, pueden ser modificados en la Barra de Edición de Productos.

Finalmente, podrá visualizar la Información de la Orden y sus Totales (Bs.S).

## Cobrar Pedido

Seleccione el icono Pago (F4) para procesar el cobro. Se abrirá un cuadro donde podrá:

* Seleccionar Forma de Pago (efectivo, tarjeta, transferencia, etc.).
* Elegir la Moneda.
* Ingresar el Monto.
* Agregar varias formas de pago si es necesario.
* Ver el Cambio a entregar al cliente.

Si se requiere más de una forma de pago:

1. Presione Más para agregar otra forma de pago.
2. Complete la información.
3. Para eliminar una forma de pago, seleccione Menos.
4. Presione OK para confirmar el cobro.

::: tip
Cada forma de pago genera un documento de cobro en la ventana Caja.
:::

#### Procedimiento Regular con una Forma de Pago y una Moneda Específica

Seleccione en el campo **Forma de Pago**, la forma utilizada por el cliente para pagar los productos cargados en la orden de venta.

::: tip
Para la forma de pago **Caja**, no es obligatorio ingresar un valor en el campo **No. de Referencia**. Sin embargo, se utiliza para ingresar el serial del billete recibido o cualquier otra forma de identificación del cobro.
:::

Adicional a ello, para las otras formas de pago si es un valor obligatorio y corresponde al número de referencia de la transacción efectuada en el banco. Este valor es necesario al momento de realizar las conciliaciones bancarias.

Seleccione en el campo **Moneda**, la moneda utilizada por el cliente para pagar los productos cargados en la orden de venta.

Introduzca en el campo **Monto**, el monto pagado por el cliente con la forma de pago y moneda seleccionada.

Tilde el check **Cobro Completo**, para que posteriormente sea generado el egreso por el cambio del monto pagado por el cliente.

Seleccione la opción **OK**, para generar el cobro de los productos cargados en la orden de venta.

Seleccione el icono **Cancelar**, para cancelar el registro del cobro que encuentra realizando.

#### Procedimiento Especial con Diferentes Formas de Pago y Monedas

Seleccione en el campo **Forma de Pago**, la forma utilizada por el cliente para pagar los productos cargados en la orden de venta.

::: tip
Para la forma de pago **Caja**, no es obligatorio ingresar un valor en el campo **No. de Referencia**. Sin embargo, se utiliza para ingresar el serial del billete recibido o cualquier otra forma de identificación del cobro.
:::

Adicional a ello, para las otras formas de pago si es un valor obligatorio y corresponde al número de referencia de la transacción efectuada en el banco. Este valor es necesario al momento de realizar las conciliaciones bancarias.

Seleccione en el campo **Moneda**, la moneda utilizada por el cliente para pagar los productos cargados en la orden de venta.

Introduzca en el campo **Monto**, el monto pagado por el cliente con la forma de pago y moneda seleccionada.

Introduzca en el campo **No. de Referencia**, el número de referencia correspondiente a la transacción efectuada en el banco.

Seleccione en el campo **Banco**, el banco donde fue efectuada la transacción.

Seleccione el icono **Más**, para habilitar otro grupo de campos de pago e ingresar la siguiente forma de pago utilizada por el cliente para terminar de cancelar la orden de venta.

::: tip
Si requiere cargar otra forma de pago adicional a las dos anteriores, puede seleccionar nuevamente el icono **Más** y proceder a cargar el cobro con dicha forma de pago.
:::

Para eliminar una forma de pago ya seleccionada previamente, seleccione el icono **Menos**.

Seleccione la opción **OK**, para generar el cobro de los productos cargados en la orden de venta.

::: tip
Al completar el proceso para generar el cobro de los productos ingresados a la orden de venta POS, se crea automáticamente un documento de cobro en la ventana **Caja**, por cada forma de pago utilizada.
:::

Adicional a ello, se crea una factura por cobrar en la ventana **Documento por Cobrar**, asociada a la orden de venta POS y los diferentes cobros asignados a dicha orden.

Es importante resaltar que al completar el proceso, todos los documentos son generados en estado **Completo**.