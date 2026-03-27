---
title: Uso del Punto de Venta
category: Documentation
star: 9
sticky: 9
article: false
---

## Interfaz de PDV

Para acceder a la interfaz de Punto de Venta, siga estos pasos:

* En el menú de Solop ERP, vaya a Gestión de Ventas > Órdenes de Venta > Punto de Venta.

* En la ventana Selecciona Terminal PDV, elija el terminal con el que trabajará el vendedor.

* Seleccione OK para acceder al punto de venta correspondiente.

Una vez dentro, visualizará la ventana Punto de Venta, que contiene diferentes iconos, campos y opciones que permiten la gestión eficiente de las ventas.

## Barra de Herramientas

La barra de herramientas contiene iconos esenciales para la gestión del punto de venta:

* Registro Nuevo (F2): Crea una nueva orden de venta.
* Imprimir (F12): Genera un reporte de la orden de venta en la ventana Informe.
* Tipo de Documento (F10): Permite cambiar el tipo de documento generado.
* Información de Producto (Alt+I): Abre una ventana con detalles del producto (código, nombre, stock, precio, proveedor, etc.).
* Cliente (Alt+B): Permite seleccionar o registrar un nuevo cliente.
* Proceso: Incluye opciones como Cerrar Caja, Generar Factura Inmediata, Completar Orden Preparada, Anular * Transacción de Venta y Crear Retiro de POS.
* Registros Históricos (F9): Permite buscar órdenes de venta anteriores.
* Pago (F4): Accede al proceso de cobro.
* Anular Orden (F3): Cancela la orden en curso.
* Finalizar Ventana (Alt+L): Cierra la ventana de Punto de Venta.

## Búsqueda de Productos

Permite buscar productos por:

* Código de Producto
* Nombre del Producto
* Disponibilidad
* Precio Estándar
* Precio de Lista

::: tip
La búsqueda se ejecuta automáticamente al ingresar el código del producto.
:::

## Información de Producto

Muestra detalles de los productos agregados a la orden de venta:

* Código del Producto
* Nombre
* Precio (Estándar y de Lista)
* Unidad de Medida
* Categoría
* Categoría de Impuesto

## Edición de Productos

Barra de Edición de ProductosDesde aquí se pueden modificar cantidades, precios y descuentos. También se pueden eliminar líneas de productos de la orden.

* Borrar Línea (Ctrl+F3)
* Añadir Cantidad (Ctrl+0)
* Reducir Cantidad (Ctrl+0)
* Navegar entre Registros (Alt+Up/Alt+Down)

## Línea de Orden de Venta

Aquí se listan los productos agregados con su información detallada:

* Cantidad Ordenada
* Unidad de Medida
* Precio Unitario
* Descuento
* Subtotal sin Impuestos
* Impuestos
* Total con Impuestos

### Información de la Orden

Muestra datos del documento de venta:

* Número de Documento
* Tipo de Documento
* Estado
* Agente Comercial
* Fecha de Creación
* Subtotal, Impuestos y Total

## Panel de SDN

Muestra la información del socio del negocio cliente que esta comprando los productos ingresados al documento **Orden de Venta** realizada por el usuario vendedor.

## Catálogo de Productos

Los productos pueden agruparse en categorías, combos u ofertas para facilitar su selección.

Para agregar un producto:

* Seleccione la categoría o grupo.
* Escoja el producto.
* El producto se agregará automáticamente a la orden.

## Consultas de Facturas y Cobros

### Consultar Factura Generada

1. En Órdenes de Venta, seleccione Visualiza Detalle (Donde es Usado).
2. Haga clic en Documentos por Cobrar para visualizar la factura.

### Consultar Cobro Generado

1. En Documentos por Cobrar, vaya a la pestaña Facturas Pagadas.
2. Copie el valor del campo Pago.
3. Busque el cobro en la ventana Caja.

### Consultar Registro en Cierre de Caja

Cada cobro desde el punto de venta genera un documento de ingreso en la ventana Caja y se asocia automáticamente a la pestaña Línea de Cierre de Caja en Cierre de Caja.
