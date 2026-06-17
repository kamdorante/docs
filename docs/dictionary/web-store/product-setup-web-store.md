---
title: Configuración de Productos para Publicar
category: Documentation
star: 9
sticky: 9
article: false
---

# Configuración de Productos para Publicar en Tienda Web

## Descripción

Antes de poder publicar un producto en una tienda externa como **Mercado Libre**, el producto debe cumplir una serie de **condiciones obligatorias** en el sistema. Esta ventana resume todos los datos que se deben completar a nivel del **producto** para que la publicación pueda generarse correctamente.

Si falta cualquiera de los datos descritos abajo, el canal **rechaza la publicación** o la deja en estado *No Publicada* con error. Por eso esta configuración se considera parte del proceso completo, no opcional.

::: tip Regla operativa clave
Una publicación exitosa requiere **siete elementos en el producto**: categoría del marketplace, atributos obligatorios, al menos una imagen, título de publicación, descripción, condición y tipo de publicación, precio en la lista de la tienda y stock en su almacén. Si falta uno, el canal no acepta la publicación.
:::

## ¿Cuándo se utiliza?

Se utiliza cuando la organización necesita:

- Preparar un producto para venderse por primera vez en una tienda externa.
- Actualizar los datos de un producto que ya se publicó (título, descripción, atributos, fotos).
- Cambiar de categoría o agregar atributos adicionales para mejorar la publicación.
- Cargar nuevas fotos antes de relanzar una publicación.

## Acceso

**Menú:** Gestión de Materiales → Reglas de Materiales → **Producto**.

La configuración descrita en este documento se realiza sobre el **registro del producto** y en sus **pestañas asociadas** (Atributos, Adjuntos, Precios, Localizado en).

## Configuración previa

Antes de configurar el producto, debe estar lista la [Tienda Web](web-store) con su lista de precios, almacén, plantilla de socio de negocio y tipo de documento.

## Pestañas

### Producto

Pestaña principal donde se completan los datos del producto. Para publicar en Mercado Libre, son relevantes los siguientes campos:

- **Nombre**
  Nombre **interno** del producto en el sistema. Es el nombre con el que se identifica el producto en la operación interna del ERP. **No es el que se muestra en el marketplace**.

- **Título de Publicación**
  Nombre del producto que se muestra **en el marketplace**. Se mantiene separado del nombre interno para que cada uno pueda optimizarse a su uso. Este campo es el que ve el comprador.

- **Descripción Corta**
  Descripción breve del producto que se publica en el canal.

- **Descripción Larga**
  Descripción extendida del producto. Si solo se completa una de las dos descripciones, se recomienda usar la larga.

- **Categoría del Producto**
  Categoría interna del producto en el sistema (gestión de catálogo). Es independiente de la categoría del marketplace.

- **Condición del Artículo**
  Condición de venta: **Nuevo** o **Usado**. El canal exige este dato.

- **Tipo de Publicación**
  Tipo de publicación en el marketplace (por ejemplo, *Gratuita*, *Clásica*, *Premium*). El tipo *Gratuita* normalmente solo admite **una unidad** en existencia.

### Atributos

Pestaña donde se completan los atributos específicos del marketplace para la categoría del producto. Estos atributos se crean automáticamente al ejecutar **Sugerir Categoría**.

- **Atributos obligatorios** marcados con asterisco rojo: deben completarse sí o sí (por ejemplo, marca, modelo, color, según la categoría). Si falta uno, la publicación falla.
- **Atributos opcionales**: no son obligatorios, pero mejoran la calidad y el detalle de la publicación. Aparecen como "características" debajo del producto en el marketplace.

Cada categoría del marketplace tiene su propio conjunto de atributos. Un horno tiene atributos distintos a un juguete o a un electrodoméstico.

### Adjuntos

Pestaña donde se cargan las **imágenes del producto**. Es **obligatorio** tener al menos una imagen para publicar.

- Formatos aceptados: JPG, PNG, WEBP, entre otros.
- Cada vez que se publica el producto, **todos los adjuntos del producto se envían como parte de la publicación**.

### Precios (Pestaña en Producto)

Listado de listas de precios donde el producto tiene precio cargado. Para poder publicar en la tienda, **debe existir un precio del producto en la lista de precios configurada en la Tienda Web** (por ejemplo, *Ventas Público Web UYU*).

- **Precio de Lista**, **Precio Estándar** y **Precio Límite** en la versión correspondiente.

### Localizado en

Pestaña que muestra el stock del producto por almacén. Para publicar en la tienda, debe haber **stock disponible** en el almacén configurado en la Tienda Web (o en el almacén de entrega directa si está definido).

## Acciones disponibles

- **Sugerir Categoría**
  Consulta el marketplace y devuelve las categorías propuestas para el producto. Al confirmar una categoría, el sistema **crea automáticamente los atributos asociados** a esa categoría sobre el producto. Esta acción se ejecuta una vez por producto (o cada vez que se quiera cambiar de categoría).

- **Publicar Productos**
  Envía el producto al canal y crea o actualiza el registro en la pestaña **Publicaciones** de la tienda. Se documenta con detalle en [Publicaciones de Tienda Web](web-store-publication).

## Parámetros para Sugerir Categoría

| Parámetro | Descripción | Tipo | Obligatorio |
|-----------|-------------|------|-------------|
| Tienda Web | Tienda contra la cual se consultan las categorías sugeridas | Tabla Directa | Sí |

## Flujo del proceso

### 1. Asignar la categoría del marketplace

Abrir el producto y ejecutar la acción **Sugerir Categoría** indicando la tienda (por ejemplo, Mercado Libre). El sistema devuelve las categorías propuestas; seleccionar la que corresponde y confirmar. El sistema crea los atributos asociados a la categoría sobre el producto.

### 2. Completar los atributos

Ir a la pestaña **Atributos** y completar todos los marcados con asterisco rojo (obligatorios). Opcionalmente, completar los demás atributos para enriquecer la publicación.

### 3. Cargar las imágenes

Ir a la pestaña **Adjuntos** y subir las imágenes del producto. Idealmente **1200 px** (mínimo **500 px**). Cargar todas las imágenes que se quieran mostrar en el marketplace; en cada publicación se enviarán todas.

### 4. Completar título y descripciones

En el registro del producto, completar el **Título de Publicación** (es el nombre que se ve en el marketplace, no el nombre interno), la **Descripción Corta** y la **Descripción Larga**.

### 5. Definir condición y tipo de publicación

Indicar la **Condición** (Nuevo / Usado) y el **Tipo de Publicación**. Si se elige *Gratuita*, el stock debe ser igual a 1.

### 6. Verificar precio

Ir a la pestaña **Precios** del producto y confirmar que existe un precio en la **versión de la lista de precios configurada en la Tienda Web**. Sin precio en esa lista no se puede publicar.

### 7. Verificar stock

Ir a la pestaña **Localizado en** y confirmar que hay existencia disponible en el **almacén** definido en la Tienda Web (o en el almacén de entrega directa, según la configuración).

### 8. Publicar

Con todos los datos completos, ejecutar **Publicar Productos** desde el producto eligiendo la tienda. El detalle del proceso de publicación se documenta en [Publicaciones de Tienda Web](web-store-publication).

## Ejemplo de uso

Configurar un horno *Kassel* para publicar en Mercado Libre:

1. Abrir el producto *Horno Kassel*.
2. Ejecutar **Sugerir Categoría** → tienda *Mercado Libre*. El sistema sugiere categorías; seleccionar *Hornos eléctricos*. Confirma y crea ~80 atributos para esa categoría.
3. Ir a la pestaña **Atributos** y completar los obligatorios (marca *Kassel*, modelo, capacidad, voltaje).
4. Ir a la pestaña **Adjuntos** y subir 4 fotos del horno (1200 px).
5. En el registro del producto, completar:
   - **Título de Publicación**: *Horno Eléctrico Kassel 60L con Convección*.
   - **Descripción Corta**: 2 líneas resumen.
   - **Descripción Larga**: detalle completo.
   - **Condición**: *Nuevo*.
   - **Tipo de Publicación**: *Clásica*.
6. Ir a la pestaña **Precios** y verificar que en la versión *Ventas Público Web UYU* el producto tiene precio cargado.
7. Ir a la pestaña **Localizado en** y verificar que hay stock en el almacén configurado en la tienda.
8. Ejecutar **Publicar Productos** → tienda *Mercado Libre*. El proceso devuelve éxito y la publicación queda lista para procesar.

## Consideraciones importantes

- El **Nombre** y el **Título de Publicación** son campos distintos a propósito: el primero es para uso interno del ERP, el segundo es lo que el comprador ve en el marketplace. No deben mezclarse.
- Las **imágenes deben ser de buena calidad**: el marketplace recomienda **1200 px**, con un mínimo de **500 px**. Imágenes más pequeñas pueden ser rechazadas.
- Todos los **adjuntos del producto se envían** al publicar. Si se cargan adjuntos que no se quieren mostrar, conviene borrarlos antes de publicar.
- **Sugerir Categoría** debe ejecutarse cada vez que se quiera cambiar la categoría del marketplace asignada al producto. Cambiar de categoría suele cambiar el conjunto de atributos.
- Los **atributos obligatorios** dependen de la categoría. Una vez fijada la categoría, completar los marcados con asterisco rojo es condición para que la publicación se acepte.
- Si una **marca** o un valor específico no aparece en la lista de un atributo, validar contra el catálogo del marketplace (puede ser que el valor no esté habilitado). Es una limitación del canal, no del ERP.
- El **Tipo de Publicación Gratuita** suele limitar a una unidad. Para vender más unidades, usar un tipo pago (*Clásica*, *Premium*, etc.).
- Si el producto se publicó alguna vez con éxito, su registro en **Publicaciones** queda con un **Código de Publicación**. Re-ejecutar **Publicar Productos** actualiza la publicación existente; si no hay código, se crea una publicación nueva.

## Ventanas relacionadas

- [Tienda Web](web-store)
- [Publicaciones de Tienda Web](web-store-publication)
- [Órdenes desde Tienda Web](web-store-order)
- [Producto](../material-management/material-rules/product)
- [Categoría de Producto](../material-management/material-rules/product-category)
- [Lista de Precios](../material-management/material-rules/price-list)
