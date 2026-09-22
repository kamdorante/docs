---
title: Recepción de Productos
category: Documentation
star: 9
sticky: 9
article: false
---

Una recepción de productos en Solop ERP, es el proceso por el cual los productos procedentes de un proveedor llegan al almacén de una compañía u organización determinada.

Para que se pueda realizar un documento de recepción de una compra realizada, debe existir obligatoriamente un documento de **Orden de Compra** o un **Documento por Pagar**. Sin embargo, para recepcionar productos o servicios obsequiados a la compañía u organización, Solop ERP permite que se complete el documento **Recepción de Productos** satisfactoriamente.

El presente material elaborado por Solop ERP, pretende ofrecerle una explicación eficiente a nuestros clientes del procedimiento a seguir para elaborar una recepción de productos correctamente en Solop ERP.

- Registro de Recepción de Productos

## Registro de Recepción de Productos

Ubique en el menú de Solop ERP la carpeta **Gestión de Compras**, luego seleccione la ventana **Recepción de Productos**, adjunto imagen para referencia.

![Campo](/assets/img/docs/purchase-management/pum-purchase-image463.png)

Imagen 1. Menú de Solop ERP

Seleccione la opción **Registro Nuevo** en la barra de herramientas de Solop ERP, para crear un documento nuevo.

![Campo](/assets/img/docs/purchase-management/pum-purchase-image464.png)

Imagen 2. Registro Nuevo

Seleccione en el campo **Organización**, la organización para la cual se esta realizando el documento de recepción de productos, el valor en el mismo debe ser diferente del símbolo (\*).

Seleccione el tipo de documento a generar en el campo **Tipo de Documento Destino**, la selección de este define el comportamiento del documento que se esta elaborando, dicho comportamiento se encuentra explicado en el documento Tipo de Documento elaborado por Solop ERP.

Seleccione en el campo **Fecha de Movimiento**, la fecha en la que se recepcionaron los productos.

Seleccione en el campo **Fecha Contable**, la fecha de elaboración del documento.

Seleccione en el campo **Socio del Negocio**, el socio del negocio proveedor del cual se estan recibiendo los productos.

Seleccione en el campo **Almacén**, el almacén en que cual se guardarán los productos que se estan recibiendo.

Selecione la opción **Crear Desde** para crear el documento de recepción desde una factura o una orden de compra.

Seleccione en el campo **Crear Desde Tipo**, el tipo de documento desde donde se va a crear el documento de recepción, para este ejemplo se crea desde tipo **Orden**.

![Campo](/assets/img/docs/purchase-management/pum-purchase-image472.png)

Imagen 10. Campo Crear Desde Tipo

Seleccione en el campo **Orden**, la forden desde donde va a crear el documento de recepción.

Seleccione la opción **Comenzar Búsqueda** para buscar la factura a seleccionar.

Seleccione la factura desde donde va a crear el documento de recepción.

![Campo](/assets/img/docs/purchase-management/pum-purchase-image475.png)

Imagen 13. Selección de Orden

Seleccione la opción **OK** para cargar la factura al documento de recepción.

Seleccione la opción **Completar** en la parte inferior derecha del documento de recepción de productos.

![Campo](/assets/img/docs/purchase-management/pum-purchase-image476.png)

Imagen 15. Opción Completar

Seleccione la acción **Completar** y la opción **OK** para completar el documento.

::: tip Regla operativa clave
Desde la Orden de Compra sólo se debe generar el *primer* documento del proceso (Recepción o DxP). El *segundo* documento siempre debe generarse con "Crear Desde" apuntando al primero — nunca ambos por separado desde la Orden de Compra.

| Opción | 1 | 2 | 3 |
|---|---|---|---|
| 1 | Orden de Compra | Recepción (Crear Desde → OC) | DxP (Crear Desde → Recepción) |
| 2 | Orden de Compra | DxP (Crear Desde → OC) | Recepción (Crear Desde → DxP) |

Si en cambio el DxP y la Recepción se generan **por separado**, ambos con "Crear Desde" apuntando a la Orden de Compra, el Match Invoice no queda vinculado a la Recepción y el costo de Material no aparece en el reporte.
:::

## Recepción Rápida

La opción de Recepción Rápida permite registrar la entrada de productos de una orden de compra, simplificando el proceso de ingreso al almacén.

### Instrucciones para realizar una Recepción Rápida:

1. Acceder a la opción Recepción Rápida en el menú del sistema.

2. Seleccionar el Socio de Negocio:

  * Indique el proveedor que figura en la orden de compra.

3. Ingresar el Número de Orden de Compra:

  * Escriba el número de la orden de compra relacionada con el producto a recibir.

4. Ingresar el Código de Producto:

  * Especifique el código del producto a recibir.

::: tip
Utilizar un lector de código de barras agiliza esta operación ya que no requiere ingresar código de producto.
:::

5. Elegir la Cantidad a Recibir:

  * Marque la casilla de Cantidad Completa de la Línea si desea recibir la cantidad total de la orden de compra.

  * Si desea ingresar una cantidad diferente, desmarque la casilla e ingrese la cantidad deseada.

6. Confirmar la recepción:

  * Una vez completados los datos, confirme la operación para registrar la entrada del producto en el almacén.

::: tip
Asegúrese de verificar los datos antes de confirmar cada operación para evitar errores en el registro de recepción.
:::

![Campo](/assets/img/docs/purchase-management/pum-purchase-image1000.png)