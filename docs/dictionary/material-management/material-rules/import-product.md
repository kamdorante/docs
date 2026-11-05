---
title: Importar Productos
category: Documentation
star: 9
sticky: 9
article: false
---

# Importar Productos

## Descripción

La ventana **Importar Productos** es la tabla intermedia donde se cargan los productos que vienen de una planilla externa (alta masiva de artículos, actualización de catálogo de un proveedor, cambios de nombre o de precios en lote) antes de convertirlos en registros de la ventana [Producto](./product). Desde esta misma ventana se ejecuta el proceso **Importar Productos**, que valida cada línea, decide si corresponde **crear un producto nuevo** o **actualizar uno existente**, y deja registrado el resultado de cada fila.

La pieza clave del proceso es la **búsqueda del producto existente**: el sistema compara cada línea de la planilla con los productos ya registrados usando tres criterios en un orden fijo (UPC/EAN, Código y Código del producto según el proveedor). Si encuentra coincidencia, actualiza ese producto; si no, crea uno nuevo. Entender este orden es fundamental para evitar que una planilla con datos mezclados modifique un producto que no se quería tocar.

## ¿Cuándo se utiliza?

Se utiliza cuando la organización necesita:

- Dar de alta muchos productos de una sola vez a partir de una planilla.
- Actualizar en lote datos de productos existentes (nombre, descripción, categoría, unidad de medida, clasificación, medidas, etc.).
- Cargar o actualizar el **código de producto del proveedor** y los precios de compra en la pestaña de compras del producto.
- Cargar precios de venta en una **versión de lista de precios** al mismo tiempo que se importan los productos.

## Acceso

El flujo recorre dos componentes:

1. **Cargador de Archivos:** carga la planilla en la tabla intermedia de importación de productos.
2. **Importar Productos** (ventana y proceso): Gestión del Sistema → Datos → Importar Datos → Importar Productos.

## Pestañas

### Importar Productos

Contiene una línea por cada fila de la planilla cargada. Los campos se agrupan en datos de identificación, datos descriptivos, datos del proveedor y campos de control.

**Datos de identificación (se usan para encontrar el producto):**

- **UPC/EAN**
  Código de barras del producto. Es el **primer criterio** de búsqueda: si ya existe un producto con el mismo UPC/EAN, la línea se asocia a ese producto.

- **Código (Clave de Búsqueda)**
  Código interno del producto. Es el **segundo criterio** de búsqueda y el código con el que se crea el producto cuando es nuevo. **No se modifica** en productos que ya existen.

- **Clave del Socio de Negocio** / **Socio de Negocio**
  Proveedor al que pertenece la información de compra de la línea.

- **Clave del Socio** (código del producto según el proveedor)
  Código con el que el proveedor identifica el artículo. Es el **tercer criterio** de búsqueda, y solo se considera cuando coincide también el proveedor de la línea.

**Datos descriptivos del producto:**

- **Nombre**, **Descripción**, **Nota de Documento** y **Comentario/Ayuda**
  Textos del producto. Si el producto ya existe, el nombre informado en la planilla **reemplaza** al actual.

- **SKU**
  Código de almacenamiento del producto. Es un dato informativo: **no** se utiliza para buscar productos existentes.

- **Código de UM** / **UM**
  Unidad de medida del producto. Si no se informa, se aplica la unidad de medida predeterminada.

- **Clave de Categoría de Producto** / **Categoría de Producto**
  Categoría del producto. Si no se informa, se aplica la categoría predeterminada.

- **Tipo de Producto**
  Solo se admiten productos de tipo **Artículo** o **Servicio**.

- **Clase**, **Clasificación** y **Grupo de Producto**, **Marca**, **Categoría de Impuesto**
  Agrupaciones y atributos adicionales que se trasladan a la ficha del producto.

- **Volumen**, **Peso**, **Ancho/Alto/Profundidad de Estante**, **Unidades por Pallet**, **Descontinuado**
  Datos logísticos del producto.

**Datos de compra y precios:**

- **Moneda** / **Código ISO de Moneda**
  Moneda de los precios. Si no se informa, se utiliza la moneda contable.

- **Precio de Lista**, **Precio Estándar**, **Precio Límite**
  Precios de venta que se cargan en la versión de lista de precios indicada al ejecutar el proceso.

- **Precio de OC**, **Precio Efectivo Desde**, **Cantidad Mínima de Orden**, **Cantidad de Paquete**, **Tiempo de Entrega Prometido**, **Costo por Orden**
  Condiciones de compra que se registran en la pestaña de compras del producto para el proveedor de la línea.

**Campos de control:**

- **Importado**
  Indica si la línea ya fue procesada con éxito.

- **Mensaje de Error de Importación**
  Explica por qué una línea no pudo importarse (categoría, tipo de producto, moneda, unidad de medida o proveedor inválidos, códigos repetidos, etc.).

- **Producto**
  Producto encontrado o creado para la línea. Permite verificar, antes y después de procesar, **contra qué producto** se aplicó la importación.

- **Procesado**
  Marca las líneas que ya pasaron por el proceso.

## Acciones disponibles

- **Importar Productos**
  Ejecuta el proceso que valida las líneas, crea los productos nuevos y actualiza los existentes. Sus parámetros se describen a continuación.

## Parámetros del proceso

| Parámetro | Descripción | Obligatorio |
|---|---|---|
| Compañía | Compañía en la que se importan los productos | No |
| Borrar Registros Importados Anteriores | Antes de procesar, elimina de la tabla intermedia las líneas que ya fueron importadas en ejecuciones anteriores | No |
| Versión de Lista de Precios | Versión de lista de precios donde se cargan los precios de lista, estándar y límite de la planilla. Si se deja vacío, no se cargan precios de venta | No |

## Lógica de búsqueda y actualización

### Orden de búsqueda del producto existente

Para cada línea, el proceso busca si el producto ya existe siguiendo **siempre este orden**, y se detiene en el primer criterio que encuentra coincidencia:

| Orden | Criterio | Condición de coincidencia |
|---:|---|---|
| 1 | **UPC/EAN** | Existe un producto con el mismo UPC/EAN |
| 2 | **Código** | Existe un producto con el mismo Código (Clave de Búsqueda) |
| 3 | **Clave del Socio** | Existe un producto cuya pestaña de compras tiene el mismo código de proveedor **y** el mismo proveedor que la línea importada |

Si ninguno de los tres criterios encuentra un producto, la línea se importa como **producto nuevo**, con el Código y el resto de los datos de la planilla.

```
Línea de la planilla
   │
   ├── ¿Existe un producto con el mismo UPC/EAN? ──── Sí ──► Actualiza ese producto
   │        No
   ├── ¿Existe un producto con el mismo Código? ───── Sí ──► Actualiza ese producto
   │        No
   ├── ¿Existe un producto con el mismo código de
   │   proveedor para el mismo proveedor? ─────────── Sí ──► Actualiza ese producto
   │        No
   └── Crea un producto nuevo
```

### Qué se actualiza en un producto existente

Cuando la línea coincide con un producto existente:

- **El Código del producto no se modifica.** Se conserva el código que el producto ya tenía, aunque la planilla traiga un código distinto.
- **El resto de los datos sí se actualiza** con los valores informados en la planilla: nombre, descripción, UPC/EAN, SKU, unidad de medida, categoría, clase, clasificación, grupo, tipo de producto, medidas, marca, etc.
- Si la línea trae proveedor, se crean o actualizan las condiciones de compra del producto para ese proveedor.
- Si se indicó una versión de lista de precios, se cargan o actualizan los precios del producto en esa versión.

::: tip Cambio de comportamiento
Antes de este ajuste, la actualización también reemplazaba el **Código** del producto encontrado. Con eso, una planilla que traía un UPC/EAN ya existente junto con un código nuevo terminaba **renombrando y recodificando** un producto existente en lugar de crear uno nuevo. Hoy el código queda protegido y solo se actualizan los demás datos.
:::

### Validaciones previas

Antes de crear o actualizar, el proceso valida cada línea y completa los datos faltantes:

- **Unidad de medida:** si no se informa, aplica la predeterminada.
- **Categoría de producto:** si no se informa, aplica la predeterminada.
- **Moneda:** si no se informa, aplica la moneda contable.
- **Tipo de producto:** solo Artículo o Servicio.
- **Proveedor:** debe existir si se informa.
- **Unicidad:** el UPC/EAN, el Código y el código de proveedor no pueden repetirse de forma ambigua.

Las líneas que no superan las validaciones quedan sin importar y con el motivo en **Mensaje de Error de Importación**.

## Flujo del proceso

### 1. Preparar la planilla

Armar la planilla con una fila por producto. Revisar especialmente las columnas de identificación (**UPC/EAN**, **Código**, **Proveedor** y **código del producto según el proveedor**), porque son las que deciden si la fila crea o actualiza un producto.

### 2. Cargar la planilla

Cargar el archivo en la tabla intermedia mediante el **Cargador de Archivos**. Las filas quedan visibles en la ventana **Importar Productos**, sin procesar.

### 3. Revisar las líneas antes de procesar

Abrir la ventana **Importar Productos** y revisar las líneas cargadas. Prestar atención a los UPC/EAN: si un UPC/EAN de la planilla ya pertenece a otro producto, esa línea **actualizará ese producto**, aunque el código o el nombre sean distintos.

### 4. Ejecutar el proceso Importar Productos

Ejecutar la acción **Importar Productos** indicando, si corresponde, la **Versión de Lista de Precios** donde cargar los precios y si se deben borrar los registros importados anteriormente.

### 5. Verificar el resultado

Al finalizar, el proceso informa cuántos productos se crearon y cuántos se actualizaron. En la ventana:

- Las líneas correctas quedan marcadas como **Importado** y con el **Producto** asociado.
- Las líneas con error muestran el motivo en **Mensaje de Error de Importación**; corregir el dato y volver a ejecutar el proceso.

### 6. Revisar los productos afectados

Desde la ventana [Producto](./product), verificar que los productos actualizados tengan los datos esperados y que los nuevos se hayan creado con el código correcto.

## Ejemplo de uso

Actualización de un producto encontrado por UPC/EAN:

1. En el sistema existe el producto con código **PRUEBA-1**, nombre **Prueba 1** y UPC/EAN **7790000000011**.
2. Se carga una planilla con una fila que trae código **PRUEBA-2**, nombre **Prueba 2** y el **mismo UPC/EAN 7790000000011**.
3. Se ejecuta **Importar Productos**.
4. El proceso busca primero por UPC/EAN y encuentra el producto **PRUEBA-1**.
5. Resultado:
   - El producto **conserva el código PRUEBA-1**.
   - El nombre cambia a **Prueba 2**, junto con el resto de los datos informados en la planilla.
   - **No** se crea un producto nuevo con el código PRUEBA-2.

Si la intención era crear un producto nuevo **PRUEBA-2**, la planilla debía traer un **UPC/EAN distinto** (o ninguno) para esa fila.

## Preguntas frecuentes

### Importé una planilla y cambió el nombre de productos que no estaban en el archivo. ¿Por qué?

Porque alguna fila de la planilla tenía el **UPC/EAN** de esos productos. El UPC/EAN es el primer criterio de búsqueda: si coincide, el sistema entiende que se trata del mismo producto y lo actualiza con los datos de la fila (por ejemplo, el nombre), aunque el código de la planilla sea otro. Revisar la columna **Producto** de las líneas importadas para ver contra qué producto se aplicó cada fila.

### ¿La importación puede cambiar el código de un producto existente?

No. Cuando la fila coincide con un producto existente, el **Código** se conserva. Solo se actualizan los demás datos.

### ¿El campo SKU se usa para encontrar productos?

No. Los únicos criterios de búsqueda son UPC/EAN, Código y código del producto según el proveedor (junto con el proveedor). El SKU se importa como dato del producto, pero no interviene en la búsqueda.

### ¿Puedo tener dos productos con el mismo UPC/EAN?

No se recomienda. El UPC/EAN debe identificar a un único producto: además de afectar la importación (la fila se aplicaría al producto equivocado), un código de barras repetido genera problemas en la lectura desde el **Punto de Venta**.

### ¿Cómo evito que una planilla actualice productos por error?

Antes de procesar, verificar que los UPC/EAN de la planilla correspondan a los productos que se quieren actualizar, y dejar vacío el UPC/EAN de los productos nuevos si todavía no lo tienen definido. Cualquier dato incorrecto en la planilla se trasladará al producto encontrado.

## Consideraciones importantes

- El orden de búsqueda es **fijo**: UPC/EAN → Código → código del producto según el proveedor. El primer criterio que coincide define el producto a actualizar.
- La búsqueda por **código del proveedor** solo encuentra productos si coincide también el **proveedor** de la línea.
- Una coincidencia por UPC/EAN **gana** sobre el código: si el UPC/EAN pertenece a otro producto, se actualiza ese producto aunque el código de la planilla no exista en el sistema.
- El **Código** de un producto existente nunca se modifica desde la importación; para cambiarlo, hacerlo desde la ventana [Producto](./product).
- Los errores de datos en la planilla (nombres, categorías, unidades de medida) se trasladan tal cual a los productos encontrados: la calidad del resultado depende de la planilla.
- Los productos nuevos solo admiten tipo **Artículo** o **Servicio**.
- Si se carga un nombre nuevo para un producto existente, los nombres en otros idiomas (traducciones) pueden conservar el nombre anterior; revisarlos si se utilizan.
- Usar el parámetro **Borrar Registros Importados Anteriores** para mantener limpia la tabla intermedia y no confundir líneas de cargas anteriores con las actuales.

## Ventanas relacionadas

- [Producto](./product)
- [Detalles del Proveedor](./vendor-details)
- [Categoría de Producto](./product-category)
- [Unidad de Medida](./unit-of-measure)
- [Lista de Precios](./price-list)
