---
title: Imprimir Etiqueta de Envío de Mercado Libre
category: Documentation
star: 9
sticky: 9
article: false
---

# Imprimir Etiqueta de Envío de Mercado Libre

## Descripción

La acción **Imprimir Etiqueta de Envío** permite generar e imprimir, **directamente desde la orden de venta**, el formato de paquete adjunto que provee Mercado Libre para acompañar el envío. El PDF resultante incluye los datos necesarios para identificar la venta y para que el sistema de logística del marketplace pueda rastrear el paquete.

Esta acción aplica solo a órdenes de venta provenientes de la **Tienda Web Mercado Libre**.

## ¿Cuándo se utiliza?

Se utiliza cuando la organización necesita:

- Preparar el despacho de un pedido recibido desde Mercado Libre.
- Imprimir la **etiqueta del producto** y la **guía de envío** para pegar en el paquete.
- Cumplir con el formato de identificación que exige Mercado Libre para el seguimiento del envío.

## Acceso

Existen dos formas de llegar a la acción:

1. **Desde la orden de venta:** Gestión de Ventas → Órdenes de Venta → **Orden de Venta** → seleccionar el pedido → acción **Imprimir Etiqueta de Envío**.
2. **Desde un listado filtrado por Tienda Web = Mercado Libre**, abrir la orden y ejecutar la acción.

## Configuración previa

- La orden debe ser una **Orden de Venta** generada desde la **Tienda Web Mercado Libre** (campo *Tienda Web* = *Mercado Libre*, *Tipo de Documento* del tipo *Venta Web*).
- El sistema debe estar conectado al servicio de etiquetas del marketplace para descargar el PDF.

## Acciones disponibles

- **Imprimir Etiqueta de Envío**
  Genera el PDF con el formato de paquete provisto por Mercado Libre y lo muestra en pantalla para imprimirlo o descargarlo.

## Flujo del proceso

### 1. Abrir la orden de venta

Localizar la orden generada a partir de la compra en Mercado Libre. Confirmar en la cabecera que:

- **Tipo de Documento** = *Venta Web* (o el que se haya configurado para Mercado Libre).
- **Tienda Web** = *Mercado Libre*.

### 2. Ejecutar la acción Imprimir Etiqueta de Envío

Desde el menú de acciones de la orden, seleccionar **Imprimir Etiqueta de Envío**. El sistema solicita el PDF al marketplace y lo abre.

### 3. Revisar el contenido del PDF

El PDF generado tiene **dos partes**:

- **Etiqueta del producto** (arriba): contiene el identificador de la venta, el nombre del producto y atributos visibles (por ejemplo, color o variante).
- **Etiqueta de envío** (abajo): contiene los datos del **remitente**, la **fecha límite de despacho** y el **código de barras / QR** que usa Mercado Libre para el seguimiento del paquete.

### 4. Imprimir y pegar en el paquete

Imprimir el PDF y pegar la etiqueta de envío en el paquete preparado. La parte superior puede usarse como ficha interna de identificación del envío.

## Ejemplo de uso

Despachar un *Horno Kassel* vendido por Mercado Libre:

1. Abrir la **Orden de Venta** correspondiente. En la cabecera figura *Tipo de Documento = Venta Web* y *Tienda Web = Mercado Libre*.
2. Desde las acciones de la orden, ejecutar **Imprimir Etiqueta de Envío**.
3. El sistema abre un PDF con dos secciones: arriba el identificador de la venta y el detalle del producto; abajo la etiqueta con los datos del remitente, la fecha límite de despacho y el código de barras / QR del envío.
4. Imprimir y pegar la etiqueta en el paquete antes de entregárselo al transportista o llevarlo al punto de despacho.

## Consideraciones importantes

- Esta acción **aplica solo a órdenes de Mercado Libre**. En órdenes con otra tienda web o tipo de documento, la opción no se ofrece o no devuelve resultado.
- El **PDF se obtiene del marketplace en tiempo real**: si el canal está caído o la orden no tiene el código de envío asignado todavía, la acción no descarga el archivo.
- La etiqueta debe imprimirse antes de la **fecha límite de despacho** que indica el propio PDF. Pasada esa fecha, Mercado Libre puede penalizar al vendedor.
- El **código de barras / QR** es la pieza clave para el rastreo en la red de logística de Mercado Libre. Imprimir en buena calidad y sin doblar esa zona de la etiqueta.
- La parte superior del PDF puede reutilizarse como **ficha de identificación interna** del paquete (por ejemplo, para preparación en el depósito), pero la que se pega y escanea es la parte inferior.

## Ventanas relacionadas

- [Tienda Web](web-store)
- [Órdenes desde Tienda Web](web-store-order)
- [Publicaciones de Tienda Web](web-store-publication)
- [Orden de Venta](../sales-management/sales-orders/sales-order)
- [Entregas (Cliente)](../sales-management/shipments/shipment-customer)
