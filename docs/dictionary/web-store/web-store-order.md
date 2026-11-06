---
title: Órdenes desde Tienda Web
category: Documentation
star: 9
sticky: 9
article: false
---

# Órdenes desde Tienda Web

## Descripción

Cuando un comprador realiza una compra en una tienda externa (por ejemplo, **Mercado Libre**), el pedido llega **automáticamente a Solop** y se registra como **Orden de Venta**, sin que el operador tenga que cargarla a mano.

Este documento describe **cómo se ve esa orden** y qué datos trae respecto del canal de origen: la tienda, el código de publicación, el tipo de documento, el socio de negocio del comprador, los precios con impuesto incluido y la opción de entrega directa.

## ¿Cuándo se utiliza?

Se consulta cuando la organización necesita:

- Revisar qué pedidos llegaron desde una tienda externa.
- Identificar de qué **tienda** y de qué **publicación** específica viene un pedido.
- Auditar el comprador creado automáticamente.
- Verificar que el precio cobrado en el marketplace coincide con el precio cargado en la orden.
- Continuar el ciclo de venta del pedido (entrega, facturación, despacho).

## Acceso

**Menú:** Gestión de Ventas → Órdenes de Venta → **Orden de Venta**.

Para filtrar solo los pedidos provenientes de la tienda, usar el filtro **Tipo de Documento** con el valor configurado en la **Tienda Web** (por ejemplo, *Venta Web*) o filtrar por el campo **Tienda Web**.

## Configuración previa

Para que los pedidos lleguen correctamente:

- [Tienda Web](web-store) debe estar configurada con su **Tipo de Documento**, **Plantilla de Socio de Negocio**, **Lista de Precios con Impuesto Incluido** y **Almacén de Entrega Directa**.
- Si la organización que vende no tiene el stock y otra organización o un proveedor despacha el pedido, debe existir una regla en [Configuración de Entrega Directa](../purchase-management/purchase-orders/drop-ship-setup) para la **organización de la tienda** y el **tipo de documento** de la orden (por ejemplo, *Venta Web*). Esa regla es la que marca la orden como entrega directa y genera automáticamente la orden de compra al completarla.

## Pestañas

### Orden

Pestaña principal con los datos del pedido. Para una orden originada en una tienda externa, los campos relevantes son:

- **Tipo de Documento Destino**
  Tipo asignado automáticamente desde la **Tienda Web** (por ejemplo, *Venta Web*). Identifica el origen del pedido.

- **Tienda Web**
  Tienda de la cual proviene el pedido (por ejemplo, *Mercado Libre*).

- **Código de Publicación**
  Identificador de la publicación específica del marketplace de la cual vino la venta. Permite saber **qué publicación generó cada venta**.

- **Socio de Negocio**
  Comprador. Se crea o reutiliza automáticamente al recibir el pedido (ver más abajo).

- **Fecha del Pedido / Fecha Prometida**
  Fechas tomadas de la información que envía el canal.

- **Importes**
  Precio neto, impuestos y total, ya con la lógica de impuestos incluidos del canal aplicada.

### Líneas de la Orden

Cada línea de la orden refleja un producto comprado. Además de los campos estándar (producto, cantidad, precio), se incluyen:

- **Código de Publicación** (también a nivel de línea)
  Permite identificar la publicación origen incluso cuando una sola orden agrupa varias líneas.

- **Precio Unitario**
  Precio efectivamente pagado por el comprador, con impuestos considerados según la configuración de la lista de precios.

## Acciones disponibles

- **Completar Orden**
  Acción estándar de la orden de venta. Si existe una regla de [Configuración de Entrega Directa](../purchase-management/purchase-orders/drop-ship-setup) para la organización y el tipo de documento de la orden, al completar la orden queda marcada como entrega directa y se genera la orden de compra vinculada.

- **Imprimir Etiqueta de Envío**
  Acción específica para órdenes de Mercado Libre. Genera el PDF con la etiqueta del paquete y la guía de despacho. Se documenta en [Imprimir Etiqueta de Envío de Mercado Libre](print-mercado-libre-package).

- **Ver Socio de Negocio**
  Permite abrir la ficha del comprador creado/reutilizado.

## Flujo del proceso

### 1. El comprador realiza una compra en el marketplace

El comprador completa la transacción en el canal (por ejemplo, Mercado Libre).

### 2. El sistema crea automáticamente la orden de venta

El canal envía el pedido a Solop. El sistema:

- Crea la **Orden de Venta** con el **Tipo de Documento Destino** que tiene configurado la Tienda Web.
- Asigna la **Tienda Web** y el **Código de Publicación** en la cabecera y en cada línea.
- Carga los productos comprados como líneas de la orden.
- Toma los precios del canal, con impuestos considerados.

### 3. El sistema crea o reutiliza el socio de negocio del comprador

- Si el comprador **no existía** en el sistema, se crea automáticamente tomando como base la **Plantilla de Socio de Negocio** definida en la Tienda Web (grupo, esquema contable, condiciones de pago, etc.). Se completan los datos que vinieron del canal (nombre, documento, dirección, etc.).
- Si el comprador **ya existía** (por ejemplo, había comprado antes), se **reutiliza** el registro y no se duplica.

### 4. Entrega directa y orden de compra automática (si aplica)

Si existe una regla de [Configuración de Entrega Directa](../purchase-management/purchase-orders/drop-ship-setup) para la organización de la tienda y el tipo de documento de la orden, al completarse la orden el sistema:

- Marca la orden como **Entrega Directa**, con el socio y la dirección de entrega directa de la regla.
- Registra la entrega en el **almacén de entrega directa** de la regla.
- Crea automáticamente la **orden de compra** al proveedor de entrega directa, con el tipo de documento de compra configurado (por ejemplo, *Compra Web*) y vinculada a la orden de venta.
- Si el proveedor es otra organización del grupo, al completarse la orden de compra se genera la **orden de venta intercompañía** en la organización que despacha.

Si no existe una regla para la organización de la tienda, la orden se procesa como una venta estándar desde el stock propio.

### 5. Continuar el flujo estándar

A partir de aquí, la orden sigue el ciclo estándar: completar, entregar, facturar y despachar. Si el canal usa una etiqueta de envío específica, imprimirla desde la orden (ver [Imprimir Etiqueta de Envío de Mercado Libre](print-mercado-libre-package)).

## Ejemplo de uso

Un comprador adquiere un *Horno Kassel* en Mercado Libre:

1. El comprador completa la compra en el marketplace.
2. El sistema crea automáticamente una nueva **Orden de Venta** en Solop:
   - **Tipo de Documento**: *Venta Web*.
   - **Tienda Web**: *Mercado Libre*.
   - **Código de Publicación**: el identificador del producto en el marketplace, presente en la cabecera y en la línea.
   - **Socio de Negocio**: comprador creado automáticamente desde la plantilla configurada (es la primera compra del cliente).
   - **Precios**: ya con impuestos incluidos, coincidentes con lo pagado en el marketplace.
3. Como la organización de la tienda tiene una regla de **Configuración de Entrega Directa** para *Venta Web*, al completar la orden queda marcada como entrega directa y se crea automáticamente la orden de compra *Compra Web* a la organización que tiene el stock, con la descripción *Pedido MercadoLibre #…*.
4. Desde la orden se imprime la **Etiqueta de Envío** y se prepara el paquete para despachar.

## Consideraciones importantes

- El **Tipo de Documento Destino** de la orden proviene de la configuración de la Tienda Web. Si está mal configurado o vacío, las órdenes pueden llegar como *Orden Estándar* en lugar de *Venta Web*, lo que dificulta identificarlas. Corregir la configuración en la Tienda Web y los nuevos pedidos llegarán con el tipo correcto.
- El **Código de Publicación** se carga **tanto en la cabecera como en cada línea** de la orden. Esto permite trazar la venta a la publicación incluso cuando una sola orden agrupa varios productos.
- Los **precios coinciden con lo pagado en el marketplace** porque la lista de precios de la Tienda Web se configuró con impuesto incluido. Si llegaran precios distintos a los esperados o aparecieran **descuentos inesperados**, validar la configuración de la lista de precios y la versión activa.
- La **plantilla de Socio de Negocio** determina la configuración inicial del comprador (grupo, esquema contable, condiciones). Si los compradores creados no tienen los atributos esperados, ajustar la plantilla.
- Los **compradores recurrentes** no se duplican: el sistema detecta que el comprador ya existe y reutiliza el registro existente.
- La **entrega directa** y la **orden de compra automática** dependen de la regla de [Configuración de Entrega Directa](../purchase-management/purchase-orders/drop-ship-setup) (organización + tipo de documento), no del check *Entrega Directa* del tipo de documento. Si no se quiere generar la compra de forma automática, desmarcar **Crear Orden de Compra Automáticamente** en la regla o desactivarla.
- Dos tiendas web que usan el mismo tipo de documento (*Venta Web*) pueden comportarse distinto: la tienda de una organización con regla de entrega directa genera orden de compra; la tienda de una organización sin regla vende desde su stock propio.
- Para imprimir la **guía de despacho** del marketplace, usar la acción específica documentada en [Imprimir Etiqueta de Envío de Mercado Libre](print-mercado-libre-package).
- Si la orden requiere una **orden de compra contra otra organización**, esa compra se genera desde la regla de [Configuración de Entrega Directa](../purchase-management/purchase-orders/drop-ship-setup) y queda enlazada a esta orden de venta en el campo **Orden Vinculada**.

## Ventanas relacionadas

- [Tienda Web](web-store)
- [Configuración de Productos para Publicar](product-setup-web-store)
- [Publicaciones de Tienda Web](web-store-publication)
- [Imprimir Etiqueta de Envío de Mercado Libre](print-mercado-libre-package)
- [Orden de Venta](../sales-management/sales-orders/sales-order)
- [Entregas (Cliente)](../sales-management/shipments/shipment-customer)
- [Configuración de Entrega Directa](../purchase-management/purchase-orders/drop-ship-setup)
- [Órdenes de Compra](../purchase-management/purchase-orders/purchase-order)
