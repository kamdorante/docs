---
title: Notificaciones de Importación y Envío
category: Documentation
star: 9
sticky: 9
article: false
prev:
  text: 'Configuración de Notificaciones'
  link: '/mercado-libre/notification-configuration'
next:
  text: 'Manejo de Errores al Publicar en Mercado Libre'
  link: '/mercado-libre/error-handling'
---

# Notificaciones de Importación y Envío de Mercado Libre

## Descripción

Los procesos de importación de órdenes de **Mercado Libre** envían **notificaciones por correo y por nota** a los usuarios que estén en la lista de destinatarios. Estas notificaciones avisan cuando algo impidió crear la orden en el sistema o cuando no se pudo generar la etiqueta de envío, permitiendo detectar y corregir el problema a tiempo.

## ¿Cuándo se utiliza?

Se utiliza en el día a día, cada vez que un cliente compra a través de Mercado Libre y el proceso de importación detecta un inconveniente.

Casos típicos:
- Una orden no se puede crear en el sistema por falta de datos del producto.
- No se puede generar el PDF de la etiqueta de envío.
- Aparece un error nuevo que aún no tiene un mensaje específico.

## Acceso

Las notificaciones llegan de forma automática por **correo electrónico** y como **nota** a los usuarios configurados en la lista de destinatarios. No requieren abrir ninguna ventana del sistema.

## Estructura de los correos

El asunto del correo se compone de dos partes: el **motivo de la notificación** y la **tienda desde donde se recibe**. Con dos tiendas configuradas pueden llegar hasta cuatro formatos de correo distintos.

![Estructura del asunto de los correos de Mercado Libre](/assets/img/docs/mercado-libre/email-subject-structure.png)

El asunto queda como *motivo* (Aviso de envío / Error importación) seguido del *nombre de la tienda*.

| Motivo | Significado | ¿Se creó la orden? |
|--------|-------------|--------------------|
| **Error importación Mercado Libre** | Algo impidió crear la orden en el sistema. | No |
| **Aviso de envío Mercado Libre** | No se pudo generar el PDF de la etiqueta de envío en ese intento. | Sí (la orden existe) |

## Avisos de envío

Se generan al momento de crear la etiqueta PDF de envío de Mercado Libre. En algunos casos esa etiqueta no se puede generar. También puede ocurrir que el aviso corresponda a una orden que **ya** tenía su PDF generado, pero que una actualización de Mercado Libre vuelve a pasar por el proceso e informa que ya no es posible generarla.

Todos los avisos incluyen: número de pedido, número de paquete, cliente, ID de cliente, TaxID, cantidad de productos y monto.

### Envío ya entregado o enviado

El envío ya está entregado o enviado, por lo que no se puede generar el PDF de la etiqueta.

![Aviso de envío ya entregado o enviado](/assets/img/docs/mercado-libre/shipping-notice-delivered.png)

### Envío cancelado

La venta fue anulada: no se genera la etiqueta y **no se debe despachar el producto**.

![Aviso de envío cancelado por venta anulada](/assets/img/docs/mercado-libre/shipping-notice-cancelled.png)

## Errores de importación

Estos errores impiden que se genere la orden en el sistema. Los dos principales son que no se encuentra el producto para importar y que el producto no está en la lista de precios. Cada aviso incluye los datos de la publicación y del pedido que falló.

### Evento de Mercado Libre que originó la notificación

El flujo de Mercado Libre solo envía notificaciones de error cuando se intenta crear la **orden** o el **paquete** en Solop **por primera vez** y ese intento falla. De esta forma se evita que lleguen muchas notificaciones iguales o al mismo tiempo sobre la misma orden, especialmente cuando no se pudo crear en el sistema.

Ese concepto de "la primera vez" depende de la información que manda Mercado Libre en sus notificaciones. A veces pueden llegar **dos notificaciones con la misma información o el mismo estado** utilizado para validar, lo que puede ocasionar que la misma notificación de error salga hasta dos veces.

Para dar contexto, se agrega un campo nuevo en las notificaciones —**Evento de MercadoLibre**— que indica **qué acción de Mercado Libre generó esa notificación específica**.

![Notificación de error con el campo Evento de MercadoLibre](/assets/img/docs/mercado-libre/import-error-event-field.png)

> **Nota:** como el flujo se configuró para generar una sola notificación de error al momento de crear por primera vez la orden en Solop, generalmente la acción será **Creación del pedido (Pagado)** o **Cambio del estado del pago (Pagado)**.

### La publicación no tiene el código del producto (sellerSKU)

La publicación de Mercado Libre no tiene el sellerSKU con el código del producto del sistema, por lo que no se puede determinar a qué producto hace referencia. Algunas publicaciones tienen ese campo actualizado con el código del sistema y otras no.

![Error de importación: publicación sin sellerSKU](/assets/img/docs/mercado-libre/import-error-missing-sellersku.png)

### El producto no está en la lista de precios

El producto existe pero no está incluido en la lista de precios utilizada para la importación.

![Error de importación: producto fuera de la lista de precios](/assets/img/docs/mercado-libre/import-error-price-list.png)

## Errores no mapeados

Es posible que aparezca un error que no se había presentado antes y para el cual todavía no existe un mensaje específico. En ese caso la notificación muestra el **error crudo** (respuesta JSON de Mercado Libre) en lugar de un mensaje claro.

![Ejemplo de error no mapeado](/assets/img/docs/mercado-libre/unmapped-error-example.png)

Cuando se recibe un aviso con el texto crudo del error (JSON, códigos como `SHPLAB0055`, etc.), se debe **notificar para que el error se mapee** y, a partir de entonces, muestre un mensaje entendible. El ejemplo de la imagen ya fue mapeado: indica que el envío no tiene ítems a enviar; se incluye únicamente para ilustrar cómo se ve un error sin mapear y por qué conviene reportarlo.

## Consideraciones importantes

- Las notificaciones corresponden a las importaciones del día a día: cada compra de un cliente puede pasar por estos avisos.
- Un aviso de envío no siempre implica un problema pendiente; la orden puede existir y tener su etiqueta ya generada en un intento anterior.
- Si una orden llega duplicada, ya no se envía notificación de error por orden duplicada.
- Ante un error no mapeado, reportarlo para agregar el mensaje correspondiente.

## Ejemplo de uso

Al importar los pedidos del día se recibe un correo con asunto *Error importación Mercado Libre*. Al abrirlo, el mensaje indica que el producto no está en la lista de precios e incluye el nombre del producto y los datos del pedido. Se agrega el producto a la lista de precios correspondiente y se vuelve a ejecutar la importación, con lo que la orden se crea correctamente en el sistema.
