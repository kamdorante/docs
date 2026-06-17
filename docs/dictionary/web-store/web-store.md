---
title: Tienda Web
category: Documentation
star: 9
sticky: 9
article: false
---

# Tienda Web

## Descripción

La ventana **Tienda Web** centraliza la configuración de las tiendas externas con las que la organización opera, como **Mercado Libre**, eBay o Shopify. Cada registro representa una tienda concreta y agrupa los datos que el sistema utiliza para:

- Publicar productos al canal.
- Sincronizar precios y stock con la tienda externa.
- Recibir órdenes de venta generadas por compras en la tienda.
- Crear automáticamente los socios de negocio de los compradores.

Esta es la **configuración previa obligatoria** del proceso completo de Mercado Libre. Sin un registro correctamente armado en esta ventana no se pueden generar publicaciones ni se reciben pedidos correctamente.

## ¿Cuándo se utiliza?

Se utiliza cuando la organización necesita:

- Registrar una tienda externa con la que se integrará el ERP.
- Definir desde qué **lista de precios** se publican los precios.
- Definir desde qué **almacén** se toma el stock que se publica.
- Definir con qué **tipo de documento** se crean las órdenes recibidas.
- Definir la **plantilla de socio de negocio** con la que se generan automáticamente los compradores.
- Configurar los métodos de pago, reglas de entrega y mensajes propios de la tienda.

## Acceso

**Menú:** Gestión de Ventas → Tienda Web → **Tienda Web**.

También puede buscarse directamente como *Tienda Web* desde el buscador superior.

## Configuración previa

Antes de crear el registro de la tienda, deben existir:

- Una **lista de precios** dedicada a la tienda. Se recomienda que sea **con impuesto incluido** (ver consideraciones).
- Un **almacén** desde el cual se toma el stock publicado.
- Un **tipo de documento** específico para las órdenes que llegan de la tienda (por ejemplo, *Venta Web*).
- Una **plantilla de socio de negocio** que sirva de base para crear los compradores.
- Los **endpoints de integración** (URL de categoría y atributos) habilitados a nivel de tienda.

## Pestañas

### Tienda Web

Pestaña principal donde se definen los parámetros de la tienda. Los campos clave son:

- **Nombre y Tipo de Tienda**
  Identificador de la tienda y tipo (Mercado Libre, eBay, Shopify u otro). El tipo determina cómo se comportan las publicaciones y el formato de respuesta esperado del canal.

- **Plantilla de Socio de Negocio**
  Define el socio de negocio "modelo" con el que se crean los compradores. Cuando llega un pedido y el comprador no existe en el sistema, este se da de alta automáticamente tomando **grupo, condiciones, esquema contable y demás datos** desde la plantilla. Si el comprador ya existía, se reutiliza el registro y no se duplica.

- **Lista de Precios**
  Lista desde la cual el sistema toma los precios para publicar. Se recomienda configurar una lista **con impuesto incluido**, de modo que el precio publicado coincida con el precio final que ve el comprador en el marketplace.

- **Almacén**
  Almacén cuya existencia se considera como stock publicado. También define implícitamente la organización a la que pertenece la tienda.

- **Almacén de Entrega Directa**
  Almacén que se utiliza como **referencia para el inventario publicado** y para las entregas automáticas generadas a partir del pedido. Si se completa este campo, el inventario que se envía al canal se toma de este almacén en lugar del almacén principal.

- **Tipo de Documento**
  Tipo de documento con el que se crean las órdenes de venta provenientes de esta tienda. Permite identificar fácilmente los pedidos de la tienda (por ejemplo, *Venta Web*) y aplicar la configuración fiscal y de entrega directa correspondiente.

- **URL de Categoría y URL de Atributos**
  Endpoints de integración utilizados por los procesos **Sugerir Categoría** y **Publicar Productos** para consultar categorías y atributos disponibles, y para enviar el producto al canal.

- **Usuario / Contraseña de la Tienda Web**
  Credenciales con las que el sistema se autentica frente al canal.

### Categorías de Producto Asignadas

Relación entre las categorías de producto internas y la tienda. Permite mantener qué categorías están habilitadas para publicarse en esta tienda.

### Métodos de Pago

Medios de pago habilitados para la tienda (efectivo, tarjeta, transferencia, etc.). Solo los métodos definidos aquí se ofrecen en el canal.

### Reglas de Entrega

Reglas de entrega disponibles para la tienda (por ejemplo, entrega estándar, envío gratis, retiro en sucursal). El canal toma estas reglas como opciones de despacho del pedido.

### Mensajes de Tienda Web

Mensajes parametrizables (bienvenida, agradecimiento, confirmación) que la tienda utiliza al comunicarse con el comprador.

### Publicaciones

Listado de los productos que tienen al menos un intento de publicación. Para cada registro se ve el producto, el estado (Activa, En Proceso, Pausada, Por Verificar, Sin Publicar, No Publicada por error), el código de publicación del canal y la URL pública cuando está activa.

## Acciones disponibles

- **Sugerir Categoría**
  Acción que se ejecuta **desde el producto**. Consulta el canal y devuelve las categorías propuestas; al seleccionar una, el sistema crea los atributos asociados a esa categoría sobre el producto.

- **Publicar Productos**
  Acción que se ejecuta **desde el producto**. Envía el producto al canal indicado y registra el resultado en la pestaña **Publicaciones**. Si hay error, el registro queda en estado *No Publicada* con el mensaje correspondiente.

## Flujo del proceso

### 1. Registrar la tienda

Crear un registro en **Tienda Web** indicando el tipo de tienda (por ejemplo, *Mercado Libre*), la plantilla de socio de negocio, la lista de precios con impuesto incluido, el almacén, el almacén de entrega directa y el tipo de documento que se usará para las órdenes recibidas.

### 2. Completar credenciales y endpoints

Cargar el usuario y contraseña de la tienda, junto con las URL de categoría y de atributos. Estos datos habilitan los procesos automáticos contra el canal.

### 3. Configurar pestañas complementarias

Definir los **Métodos de Pago**, **Reglas de Entrega** y **Mensajes** que la tienda debe ofrecer. Asignar las **Categorías de Producto** que se pueden publicar en esta tienda.

### 4. Preparar el producto

Antes de publicar, cada producto debe tener:

- **Categoría de Mercado Libre** asignada (mediante *Sugerir Categoría*).
- **Atributos obligatorios** completados (marca, modelo, etc., según la categoría).
- **Imágenes adjuntas** (formato común; mínimo 500 px, recomendado 1200 px).
- **Título de Publicación**, **Descripción Corta** y **Descripción Larga**.
- **Condición** (nuevo/usado) y **Tipo de Publicación**.
- **Precio** vigente en la lista de la tienda.
- **Stock** en el almacén configurado.

Estos pasos se describen con detalle en [Configuración de Productos para Publicar](product-setup-web-store).

### 5. Publicar y operar

Una vez configurados tienda y producto, se ejecuta el proceso de publicación desde el producto y se da seguimiento desde la pestaña **Publicaciones** (ver [Publicaciones de Tienda Web](web-store-publication)). Cuando llegan compras, las órdenes aparecen en [Órdenes desde Tienda Web](web-store-order).

## Ejemplo de uso

Una organización quiere empezar a vender en Mercado Libre desde el ERP:

1. En **Tienda Web**, crear el registro "Mercado Libre" eligiendo tipo *Mercado Libre*.
2. Asignar la lista de precios *Ventas Público Web UYU* (con impuesto incluido).
3. Asignar el almacén principal y el almacén de entrega directa para inventario.
4. Asignar la plantilla de socio de negocio *Cliente Web* y el tipo de documento *Venta Web*.
5. Completar credenciales, URL de categoría y URL de atributos.
6. Configurar métodos de pago y reglas de entrega.
7. Asignar las categorías de producto que se podrán publicar en esta tienda.

A partir de este punto, los productos están listos para configurarse y publicarse al canal.

## Consideraciones importantes

- La **lista de precios** debe ser preferentemente **con impuesto incluido**. Si la lista no incluye impuesto, al publicar el sistema arma el precio con impuesto sumado, pero el manejo más claro y alineado con Mercado Libre es publicar precios finales tal cual los ve el comprador.
- El **almacén de entrega directa** controla **qué stock se publica**. Si se define, el inventario publicado se toma de ahí y no del almacén principal de la tienda; esto permite separar el stock disponible para venta web del stock del resto de la operación.
- La **plantilla de socio de negocio** debe estar bien configurada (grupo, esquema contable, condiciones de pago). Los compradores creados a partir de ella heredan toda esa configuración.
- El **tipo de documento** asignado define cómo se identifican las órdenes recibidas. Combinado con la opción de **Entrega Directa**, permite automatizar la generación de entregas a partir de la orden.
- Las **URL de Categoría y Atributos** son endpoints de integración. Si no están disponibles, los procesos *Sugerir Categoría* y *Publicar Productos* fallan con error de conectividad.
- Una misma cuenta del marketplace puede atender múltiples tiendas web del ERP, siempre que cada una tenga su propio registro con sus parámetros (lista de precios, almacén, tipo de documento, etc.).

## Ventanas relacionadas

- [Configuración de Productos para Publicar](product-setup-web-store)
- [Publicaciones de Tienda Web](web-store-publication)
- [Órdenes desde Tienda Web](web-store-order)
- [Imprimir Etiqueta de Envío de Mercado Libre](print-mercado-libre-package)
- [Producto](../material-management/material-rules/product)
- [Categoría de Producto](../material-management/material-rules/product-category)
- [Orden de Venta](../sales-management/sales-orders/sales-order)
- [Lista de Precios](../material-management/material-rules/price-list)
