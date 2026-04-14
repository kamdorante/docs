---
title: Tienda Web
category: Documentation
star: 9
sticky: 9
article: false
---

# Tienda Web

## Descripción

La ventana **Tienda Web** centraliza la configuración de las tiendas externas con las que la organización opera (por ejemplo, Mercado Libre, eBay o Shopify). Cada registro representa una tienda concreta y agrupa los datos necesarios para publicar productos, sincronizar stock y precios, y recibir órdenes de venta desde ese canal.

A partir de la configuración de la tienda, el sistema expone sobre el producto los procesos de **Sugerir Categoría** (trae las categorías y atributos propuestos por el marketplace) y **Publicar Producto** (envía el producto al canal). Todas las publicaciones realizadas quedan registradas en la ventana **Publicaciones**, donde se puede dar seguimiento por estado (activas, en proceso, pausadas, por verificar, no publicadas con error).

## ¿Cuándo se utiliza?

Se utiliza cuando la organización necesita:

- Registrar una tienda externa (marketplace o e-commerce) con la que se integrará el ERP.
- Definir el almacén cuyo stock se usará como existencia visible en la tienda.
- Definir la lista de precios desde la cual se toman los precios publicados.
- Asignar un agente comercial responsable de las ventas originadas en la tienda.
- Habilitar los endpoints de integración para resolver categorías y atributos automáticamente.
- Dar seguimiento a las publicaciones y a los errores que devuelve el marketplace.

## Acceso

Existen varios puntos de acceso según la tarea:

1. **Configurar la tienda:** Gestión de Ventas → Tienda Web → Tienda Web.
2. **Sugerir categoría y atributos:** desde la ventana **Producto** → acciones asociadas → *Sugerir Categoría*.
3. **Publicar un producto:** desde la ventana **Producto** → acciones asociadas → *Publicar Producto*.
4. **Dar seguimiento:** Gestión de Ventas → Tienda Web → Publicaciones (con filtros por estado).

## Pestañas

### Tienda Web

Pestaña principal donde se definen los parámetros de cada tienda. La información se organiza en:

- **Nombre y Tipo de Tienda**
  Identificador de la tienda y tipo (Mercado Libre, eBay, Shopify u otro). El tipo determina el comportamiento de los procesos de publicación y el formato de respuesta esperado.

- **Dirección Web**
  URL pública de la tienda; se usa como referencia al abrir la tienda desde el sistema.

- **Agente Comercial**
  Vendedor responsable de las órdenes originadas en la tienda.

- **Almacén**
  Almacén cuyo stock se considera como existencia publicada. Si un producto tiene 3 unidades en este almacén, esas 3 unidades son las que se muestran como disponibles en la tienda.

- **Lista de Precios**
  Lista de precios desde la cual se toman los valores publicados. Si el producto tiene un precio de 3 USD en esta lista, ese es el precio que se publica.

- **URL de Categoría y URL de Atributos**
  Endpoints de integración utilizados por los procesos *Sugerir Categoría* y *Publicar Producto* para obtener las categorías sugeridas y los atributos asociados, y para enviar el producto al marketplace.

### Categorías de Producto Asignadas

Relación entre las categorías de producto internas y la tienda. Permite mantener qué categorías están habilitadas para ser publicadas en la tienda configurada.

### Publicaciones

Muestra los productos que ya tienen al menos un intento de publicación en la tienda. Para cada registro se ve el producto, el estado (activa, en proceso, pausada, por verificar, no publicada), el código de producto en el marketplace y la URL pública de la publicación cuando está activa.

## Acciones disponibles

- **Sugerir Categoría**
  Proceso ejecutado desde el producto. Consulta el marketplace a partir del nombre o la descripción del producto y devuelve las categorías propuestas. Al seleccionar una, el sistema crea automáticamente los atributos asociados a esa categoría en el producto.

- **Publicar Producto**
  Proceso ejecutado desde el producto. Envía el producto a la tienda indicada, genera el código en el marketplace y registra el resultado en **Publicaciones**. Si el marketplace devuelve error, el estado cambia a *No Publicada* y el mensaje del error queda registrado en la publicación.

- **Procesar Publicación**
  Acción disponible sobre una publicación existente para forzar la actualización o reintentar el envío.

## Flujo del proceso

### 1. Registrar la tienda

Crear un registro en **Tienda Web** con el tipo de tienda (por ejemplo, Mercado Libre), la URL pública, el agente comercial, el almacén, la lista de precios y los endpoints de categoría y atributos.

### 2. Configurar la visualización

Desde **Definición de Visualización**, asegurar que existe un registro cuyo *Tipo de Visualización* sea **Tienda Web** apuntando al producto. Este registro es el que habilita la obtención de categorías y atributos desde el marketplace.

### 3. Validar el producto

Antes de publicar, el producto debe cumplir con los siguientes requisitos:

- **Condición del artículo** (nuevo o usado).
- **Tipo de publicación** (por ejemplo, gratuita, bronce, plata, oro).
- **Precio** vigente en la lista de precios de la tienda.
- **Existencia** en el almacén de la tienda (la modalidad *gratuita* solo admite una unidad).
- **Imágenes adjuntas** (se aceptan formatos comunes como PNG, JPG, WEBP).
- **Categoría y Atributos** asignados mediante el proceso *Sugerir Categoría*.
- **Categoría de producto** asignada a la tienda desde la pestaña *Categorías de Producto Asignadas*.

### 4. Sugerir categoría y atributos

Desde la ventana **Producto**, ejecutar *Sugerir Categoría* seleccionando la tienda. El sistema consulta el marketplace y muestra las categorías sugeridas. Al confirmar una categoría, el sistema crea los atributos asociados (marca, modelo, color, etc.) que luego deben completarse.

### 5. Publicar el producto

Desde la ventana **Producto**, ejecutar *Publicar Producto* seleccionando la tienda. El proceso envía los datos al marketplace y crea un registro en **Publicaciones** con el resultado.

### 6. Verificar la publicación

Abrir la ventana **Publicaciones** y revisar el estado. Si es *Activa*, la publicación incluye el código del marketplace y la URL pública. Si es *No Publicada*, el registro muestra el mensaje de error devuelto por el marketplace; corregir la causa (precio, existencia, atributos obligatorios, condición) y volver a publicar.

### 7. Generar órdenes desde la tienda

Las órdenes recibidas desde la tienda se registran como órdenes de venta contra el socio de negocio configurado (por ejemplo, *Consumidor Web*). A partir de ahí sigue el ciclo estándar de venta: orden → entrega → factura.

## Ejemplo de uso

Una organización necesita empezar a vender en Mercado Libre desde el ERP:

1. En **Tienda Web**, crear el registro "Mercado Libre" con tipo *Mercado Libre*, el almacén principal, la lista de precios pública y los endpoints de categoría y atributos.
2. Crear un producto nuevo (por ejemplo, una pelota de fútbol) con unidad de medida, categoría interna, precio en la lista de la tienda y al menos una imagen.
3. Desde el producto, ejecutar **Sugerir Categoría** eligiendo la tienda. El sistema devuelve las categorías sugeridas por el marketplace y genera automáticamente los atributos asociados.
4. Completar los atributos obligatorios (marca, modelo, color, etc.) y verificar que el producto tiene condición *Nuevo* y tipo de publicación *Plata*.
5. Ejecutar **Publicar Producto** seleccionando la tienda. El proceso devuelve un código de producto en el marketplace y una URL de publicación.
6. Abrir **Publicaciones** para confirmar que el estado es *Activa*. La URL permite ver el producto en vivo desde el marketplace.
7. Al recibir una orden en el marketplace, registrar la orden de venta en el ERP y continuar con el flujo estándar de entrega y facturación.

## Consideraciones importantes

- El **almacén** definido en la tienda es la fuente de la existencia publicada. Cualquier movimiento de stock en ese almacén afecta la disponibilidad mostrada.
- La **lista de precios** de la tienda es la fuente de los precios publicados. Los productos sin precio vigente en esa lista no podrán publicarse.
- El tipo de publicación **gratuita** solo admite **una unidad** en existencia. Si el producto tiene mayor stock, el marketplace devolverá error.
- Los atributos obligatorios propuestos por la categoría deben completarse antes de publicar; si faltan, la publicación queda en estado *No Publicada* con el mensaje correspondiente.
- Si el marketplace devuelve un error, el mensaje queda visible en la publicación correspondiente. Corregir la causa y volver a ejecutar *Publicar Producto*.
- Las **URL de Categoría y Atributos** apuntan a servicios de integración. Si estos servicios no están disponibles, los procesos de sugerencia y publicación fallarán.
- La configuración de **Visualización** (tipo *Tienda Web*) es requisito para que los procesos de sugerencia y publicación funcionen correctamente.
- Las órdenes originadas en la tienda se registran contra el socio de negocio genérico configurado para el canal (por ejemplo, *Consumidor Web*), y siguen el ciclo estándar de orden de venta, entrega y factura.

## Ventanas relacionadas

- [Producto](../../material-management/material-rules/product)
- [Categoría de Producto](../../material-management/material-rules/product-category)
- [Orden de Venta](../sales-orders/sales-order)
