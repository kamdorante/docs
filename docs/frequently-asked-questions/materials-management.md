---
title: Gestión de Materiales
category: Documentation
star: 9
sticky: 9
article: false
---

## Acciones

### Costos

Al crearse un producto, se crean los costos para el mismo cuando la categoría de producto tiene nivel de costeo "Compañía" u "Organización".

Para que se permita completar una OC con RECEPCIÓN, se controla que todos los productos tengan un costo definido con la organización, Costo Estándar y todos los campos con importe (incluyendo el campo "Costo Precio Actual de Niveles Inferiores").

### Gestión de Inventario

### Aviso de Falta de Inventario

Este aviso salta cuando el Producto está definido como “Almacenable” = Y. para que el mismo deje de aparecer se debe marcar como “N”

### Actualización de stock

Para actualizar stock a una cantidad X

Desde Gestión de materiales en la ventana Inventario Físico

Se crea una nueva instancia, si se desea se crea un nuevo Tipo de documento para identificar las cargas

### Pasos a seguir para actualizar inventario a cierta fecha

1- Obtener reporte de "Informe de inventario valorado" a la fecha en que se desea modificar el stock

2- Mediante 'buscar' hacer una única planilla a importar, que tenga los productos y la cantidad en existencia correcta, más la cantidad en libros (cantidad en existencia obtenida en paso 1). Las columnas deben ser las siguientes:

* Código producto
* Cantidad contada
* Fecha
* Cantidad en libros

3- Hacer la carga de planilla (asegurarse de que el formato de carga tenga estas columnas necesarias) y generar en borrador el documento de inventario físico, verificar y completarlo

4- Verificar para algunos productos que hayan quedado con la cantidad deseada a esa fecha

### Descargar inventario completo a la fecha

La ventana de Detalle de Almacenamiento simple brinda el inventario al día, permitiendo filtrar por los siguientes parámetros:

![Parámetros](/assets/img/docs/frequently-asked-questions/fra-asked-image1.png)

### Descargar inventario completo a una fecha determinada

La ventana Informe de Inventario Valorado permite realizar una consulta sobre el estado del inventario a una fecha determinada (con filtro Fecha). 
La existencia del producto se obtiene para la fecha indicada, el precio siempre es el último según la versión de lista elegida.
Este reporte "no muestra" los productos sin existencia a la fecha seleccionada.
Permite filtrar por los siguientes parámetros:

![Parámetros 2](/assets/img/docs/frequently-asked-questions/fra-asked-image2.png)

### ¿Qué función cumplen los campos "Unidad de Duración" y "Duración" de la ventana Producto?

Estos campos de Producto tienen como objetivo definir el tiempo de Mano de Obra que lleve su ejecución/creación (normalmente aplicable sobre un proyecto).

Cuando el producto no tiene definida una lista de materiales (LDM), estos campos se pueden modificar manualmente.

Cuando el producto tiene definida una LDM (check "Lista de Materiales" marcado), estos campos se muestran como sólo lectura y no se pueden modificar manualmente. En este caso se van a definir automáticamente, según la sumatoria de las duraciones de los productos que estén definidos en las lineas de la LDM.

El sistema dispara las verificaciones para actualizar la duración de los productos que contengan al producto modificado en su LDM.

Estas verificaciones se ejecutan cuando se realizan las acciones siguientes:

* Se crea un producto o se modifica uno existente
* Se crea o se borra una línea de la lista de materiales de un producto

### Es posible obtener el reporte Costos de Proyectos por fase con importes desglosados por su tipo de costo Elemento?

Es posible obtener ese reporte con dicho desglose, pero requiere una parametrización:

Se debe definir el tipo de costo del elemento en el Producto. Para esta funcionalidad se consideran los siguientes tipos:

* Material
* Recurso
* Herramientas

Cuando en una línea de Proyecto o Fase, se selecciona el producto, se carga en la línea en cuestión los datos siguientes:

* Tipo de costo definido en el producto
* Costo (costo obtendio para el producto multiplicado por la cantidad planeada en la línea)

Cuando se selecciona producto o se modifica cantidad planeada, se obtiene nuevamente el costo del producto multiplicado por la cantidad, esto debe ser así porque el costo siempre está multiplicado por la cantidad planeada.

**Proceso "Calcular Costos y Rendimiento de Fases"**

Al ejecutar este proceso desde el cabezal de proyecto, también se calculan y setean los nuevos campos de costos planeados agregados en la Fase.

En cada uno de los siguientes campos se calcula y asigna la suma de los costos de cada una de las líneas de Fase, para cada tipo de costo definido en la línea.

**Proceso "Calcular Costos y Rendimiento"**

Al ejecutar este proceso desde el cabezal de proyecto, también se calculan y setean los nuevos campos de costos planeados agregados en la pestaña "Rendimiento".

En cada uno de los siguientes campos se calcula y asigna la suma de los costos de cada una de las líneas de Proyecto, para cada tipo de costo definido en la línea.

**Reporte "Costos de Proyectos por Fase"**

Posee las siguientes columnas en las cuales se visualizan los importes desglosados:

* Costo Planeado Materiales
* Costo Planeado Recursos
* Costo Planeado Herramientas

### ¿Cómo obtiene el dato Costo el sistema al contabilizar las salidas de proyecto?

Al momento de contabilizar las salidas de proyectos, el costo se intenta obtener en el siguiente orden:

* Si el documento tiene una Línea de orden, se obtiene el precio actual de la línea de la orden

* Si el documento tiene una línea de informe de gasto, se obtiene el monto convertido multiplicado por la cantidad en la línea del informe de gastos

* Se trata de obtener los costos desde el Detalle de Costo

## Procesos

### ¿Cómo cambio la organización con la que está registrado un producto?

Para modificar la organización de un producto (por ejemplo, pasarlo de una organización específica a la organización **\***, de modo que esté disponible para todas) se utiliza el proceso [Productos de la Organización](../dictionary/material-management/material-rules/product-organization):

1. Ingresar con el rol **Administrador**.
2. Abrir **Gestión de Materiales → Reglas de Material → Productos de la Organización**.
3. Seleccionar la **Organización** que se desea asignar (**\*** para todas) y el **Producto** a modificar. Para cambiar varios productos a la vez, seleccionar la **Categoría de Producto**.
4. Pulsar **Aceptar**. El sistema informa que el proceso finalizó correctamente.
5. Abrir la ventana **Producto**, buscar el artículo y verificar que el campo **Organización** muestre el nuevo valor.

El cambio también se aplica a las entidades dependientes del producto (Lista de Materiales, Sustitutos, Reabastecimiento, Compras, Información de Socios de Negocio y Costeo).

### ¿Qué función cumple el Proceso "Reabastecimiento desde Línea de Proyecto"?

Visualiza líneas de proyecto y permite generar documentos de orden de compra o requisición, según la “Cantidad Planeada” indicada en la línea de proyecto.

El proveedor a definir será el obtenido en la pestaña “Compras” del producto. Debe estar “Activo” y ser el “Proveedor Actual” (es posible modificarlo en la columna del proceso).

* Si se elige crear orden de compra, se crerá una Orden por cada proveedor definido en las líneas del proceso.
* El log del proceso mostrará la cantidad de documentos creados y sus números.

### ¿Qué función cumple el Proceso "Salida de Proyecto desde Compra/Inventario"?

Permite realizar las salidas de proyecto desde ordenes de compra o inventario.

Para cada línea se muestra la "Cantidad Disponible" (existencia - reservada) de cada producto, y en el campo "Cantidad del Movimiento" se debe digitar la cantidad requerida (no podrá ser mayor a la disponible), y debe ser mayor a cero (el sistema devuelve error si no cumple estas condiciones).

Dependiendo la opción elegida en el campo "Crear Desde", se mostrarán los campos relacionados a la misma.

#### Crear desde "Inventario"

Al elegir esta opción, se muestran todos los productos y su cantidad disponible (deben encontrarse en las líneas del proyecto elegido como filtro).

Al procesar, se crea un documento de salida de proyecto en estado completo, por cada línea seleccionada, con la fecha y descripción indicadas en los parámetros.

#### Crear desde "Orden de Compra"

Al elegir esta opción, se muestran todos los productos y su cantidad disponible, para todas las líneas de orden de compra que estén relacionadas a las líneas del proyecto elegido como filtro (la orden debe estar en estado completo o cerrado).

Al procesar, se crea una recepción de compra por cada Orden de Compra (se agrupa por Orden), y para la misma se crea la salida de proyecto.

### Actualización en línea de proyecto

Para ambas opciones del "Crear Desde", cuando se crea la salida de proyecto, se actualizan los siguientes campos de la línea de proyecto asociada, incrementando sus valores según los generados por la nueva salida creada:

* Cantidad Cometida: se actualiza con la cantidad de movimiento de la salida creada

* Total Comprometido: se actualiza con el costo obtenido para la salida creada

### ¿Cuál es la función del proceso "Agregar Productos a Fase de Proyecto" de ventana Proyectos?

Permite seleccionar productos (sólo productos "Activos"), y para cada uno definir una cantidad.
Se ejecuta desde el cabezal del proyecto.

Al procesar, se debe seleccionar la Fase, y se crea una línea de fase de proyecto por cada línea de producto seleccionada en el proceso, donde cada línea tendrá los datos siguientes:

* Producto
* Cantidad Planeada
* Precio Planeado (si se encontró precio en la versión lista de precios del proyecto)