---
title: Publicaciones de Tienda Web
category: Documentation
star: 9
sticky: 9
article: false
---

# Publicaciones de Tienda Web

## Descripción

La ventana **Publicaciones de Tienda Web** centraliza el seguimiento de los productos publicados (o intentados publicar) en cada tienda externa, como **Mercado Libre**. Cada registro representa una publicación específica de un producto en un canal y conserva su **código de publicación**, su **URL pública**, su **estado**, los **precios calculados** y la **referencia al almacén** desde el que se publica el inventario.

A esta ventana se accede como destino del proceso **Publicar Productos** y como punto de gestión para **publicar, pausar, cerrar o reactivar** una publicación existente.

## ¿Cuándo se utiliza?

Se utiliza cuando la organización necesita:

- Lanzar la primera publicación de un producto en un canal.
- Actualizar una publicación existente (precio, stock, atributos, fotos, descripción).
- Ver el estado de una publicación (Activa, En Proceso, Pausada, Sin Publicar, etc.).
- Acceder a la URL pública para verificar cómo se ve el producto en el marketplace.
- Pausar o cerrar una publicación que no se quiere seguir ofreciendo.
- Revisar el código de publicación o los precios calculados para esa publicación.

## Acceso

Existen dos formas de llegar a las publicaciones:

1. **Como proceso (publicar):** desde la ventana **Producto**, acción **Publicar Productos** → seleccionar tienda → el proceso crea o actualiza la publicación.
2. **Como ventana de seguimiento:** Gestión de Ventas → Tienda Web → **Publicaciones**.

Desde el buscador superior se pueden filtrar las vistas por estado: *Publicaciones Activas*, *Pausadas*, *En Proceso*, *Por Verificar*, *Sin Publicar*.

## Configuración previa

Para que el proceso de publicación funcione, debe estar listo lo siguiente:

- [Tienda Web](web-store) creada y configurada (lista de precios, almacén, almacén de entrega directa, tipo de documento, plantilla de socio de negocio, credenciales y endpoints).
- Producto preparado según [Configuración de Productos para Publicar](product-setup-web-store): categoría, atributos obligatorios, imágenes, título, descripción, condición, tipo de publicación, precio y stock.

## Pestañas

### Publicación

Pestaña principal con los datos de la publicación. Los campos clave son:

- **Producto**
  Producto que se publica.

- **Tienda Web**
  Canal donde se hace la publicación (por ejemplo, Mercado Libre).

- **Almacén de Entrega Directa**
  Almacén que sirve como referencia para el stock publicado.

- **Versión de Lista de Precios**
  Versión activa de la lista de precios usada para el cálculo.

- **Precio de Lista Publicación** y **Precio Estándar Publicación**
  Precios **con impuesto incluido** que se publican en el marketplace. El sistema arma estos valores automáticamente a partir del precio de la lista y el impuesto correspondiente; el operador no los carga a mano.

- **Monto de Descuento** y **Porcentaje de Descuento**
  Si el precio de lista y el precio estándar son distintos, el sistema calcula la diferencia y la expone como descuento.

- **Código de Publicación**
  Identificador que el canal asigna a la publicación. Solo aparece después de una publicación exitosa.

- **URL de Publicación**
  Link público al producto en el marketplace. Sirve para validar visualmente cómo quedó la publicación.

- **Estado de Publicación**
  Estado actual: *Sin Publicar*, *En Proceso*, *Activa*, *Pausada*, *Cerrada*, *No Publicada* (con error).

## Acciones disponibles

- **Procesar Publicación**
  Acción que cambia el estado de la publicación. Las opciones típicas son **Publicar**, **Pausar**, **Cerrar** y **Desactivar**. Es la forma de gestionar el ciclo de vida de la publicación después de creada.

- **Publicar Productos**
  Acción que se ejecuta desde el producto. Si el producto ya tiene un registro de publicación con código, **actualiza** esa publicación (título, descripción, precio, moneda, inventario, imágenes). Si no tiene código, **crea una nueva publicación** en el marketplace.

- **Refrescar**
  Actualiza la vista para mostrar el estado más reciente devuelto por el canal.

## Parámetros para Publicar Productos

| Parámetro | Descripción | Tipo | Obligatorio |
|-----------|-------------|------|-------------|
| Tienda Web | Tienda donde se publica el producto | Tabla Directa | Sí |

## Flujo del proceso

### 1. Confirmar requisitos en el producto

Validar que el producto cumple las **siete condiciones** descritas en [Configuración de Productos para Publicar](product-setup-web-store): categoría del marketplace, atributos obligatorios, al menos una imagen, título y descripción, condición y tipo de publicación, precio en la lista de la tienda y stock disponible.

### 2. Ejecutar Publicar Productos

Desde el producto, ejecutar **Publicar Productos** y seleccionar la tienda. El sistema envía la información al canal y muestra un mensaje de éxito o error.

::: warning Tiempo de procesamiento
La publicación **no es instantánea**. El sistema envía los datos y queda esperando la respuesta del canal. Esa respuesta puede tardar **algunos minutos**, especialmente cuando se cambia el estado (publicar/pausar). El registro en la ventana **Publicaciones** se actualiza cuando llega la respuesta.
:::

### 3. Verificar la publicación

Abrir la ventana **Publicaciones** y buscar el registro. Refrescar hasta ver el estado final:

- **Sin Publicar**: el registro existe pero todavía no se envió al canal.
- **En Proceso**: el sistema está esperando respuesta del canal.
- **Activa**: la publicación quedó publicada con éxito; el registro muestra el código de publicación y la URL pública.
- **Pausada**: la publicación está oculta para los compradores; no se puede comprar pero sigue existiendo.
- **No Publicada**: el canal devolvió error; el registro contiene el mensaje del error.

### 4. Procesar cambios de estado

Para cambiar el estado de una publicación existente, ejecutar **Procesar Publicación** y elegir la acción correspondiente (*Publicar*, *Pausar*, *Cerrar*, *Desactivar*).

### 5. Actualizar una publicación existente

Para modificar precio, descripción, atributos, fotos o stock, hacer los cambios en el **producto** y volver a ejecutar **Publicar Productos** sobre la misma tienda. Como el registro de publicación ya tiene **Código de Publicación**, el sistema **actualiza** la publicación en lugar de crear una nueva.

## Ejemplo de uso

Publicar un horno *Kassel* en Mercado Libre y luego cambiar su precio:

1. Con el producto ya configurado, ejecutar **Publicar Productos** → tienda *Mercado Libre*.
2. El sistema procesa la solicitud y devuelve éxito.
3. Abrir **Publicaciones** y refrescar. Aparece un nuevo registro con estado *Sin Publicar*.
4. Ejecutar **Procesar Publicación** → opción *Publicar*. El sistema cambia el estado a *En Proceso* y luego a *Activa*.
5. Verificar el **Código de Publicación** y abrir la **URL de Publicación**: el horno aparece en Mercado Libre con su título, foto, descripción, características (atributos) y precio.
6. Más tarde, modificar el precio del producto en la lista *Ventas Público Web UYU* y volver a ejecutar **Publicar Productos** sobre la misma tienda. El sistema usa el mismo Código de Publicación y actualiza el precio en el marketplace.

## Consideraciones importantes

- Los **precios publicados llevan impuesto incluido**. Si la lista de precios de la tienda está marcada como con impuesto incluido, los precios se publican directamente; si no, el sistema agrega el impuesto al armar la publicación. La práctica recomendada es usar lista con impuesto incluido para evitar confusiones.
- El **stock publicado** se toma del **almacén de entrega directa** definido en la tienda (si está cargado); en su defecto se usa el almacén principal de la tienda. Para cambiar la fuente del inventario publicado, ajustar el almacén de entrega directa en la **Tienda Web** y volver a publicar.
- Si el stock se envía en **cero**, el canal **pausa** la publicación automáticamente. Si el stock vuelve a ser mayor o igual a uno, el canal la **reactiva**. Estos cambios pueden tardar **unos minutos** en reflejarse en el marketplace.
- Las **actualizaciones de estado** (publicar/pausar) tardan unos minutos en hacerse visibles del lado del marketplace. Durante ese lapso el producto puede aparecer activo visualmente, pero el canal ya no permite comprar.
- Las publicaciones **sin Código de Publicación** se tratan como nuevas: cada vez que se ejecuta **Publicar Productos** sin código, se crea una publicación nueva en el marketplace. Para actualizar una publicación existente, debe conservarse su código.
- **Cambio de moneda**: no se actualiza al republicar. Para cambiar la moneda de una publicación, hay que **desactivarla y crear una nueva** con la moneda correcta.
- **Publicaciones con ventas**: algunos datos no se pueden actualizar una vez que la publicación tiene compras registradas. El canal valida y rechaza ciertos cambios.
- **Publicaciones tipo *Catalog Listing***: forman parte de catálogos del marketplace y tienen restricciones adicionales (por ejemplo, no se pueden actualizar imágenes).
- Si **falla la publicación**, el registro queda en *No Publicada* con el mensaje devuelto por el canal. Corregir la causa (atributo faltante, imagen rechazada, precio inválido, etc.) en el producto y volver a publicar.

## Ventanas relacionadas

- [Tienda Web](web-store)
- [Configuración de Productos para Publicar](product-setup-web-store)
- [Órdenes desde Tienda Web](web-store-order)
- [Producto](../material-management/material-rules/product)
- [Lista de Precios](../material-management/material-rules/price-list)
