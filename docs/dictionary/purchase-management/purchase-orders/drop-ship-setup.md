---
title: Configuración de Entrega Directa
category: Documentation
star: 9
sticky: 9
article: false
---

# Configuración de Entrega Directa

## Descripción

La ventana **Configuración de Entrega Directa** define, por **organización** y **tipo de documento de venta**, cómo debe comportarse el sistema cuando una orden de venta se atiende mediante **entrega directa** (*drop ship*): el proveedor despacha la mercadería directamente al cliente final, sin que el producto pase físicamente por el almacén propio de la organización que vende.

Cada registro funciona como una regla: cuando se completa una orden de venta de la organización y del tipo de documento configurados, el sistema marca la orden como entrega directa, registra el movimiento en el **almacén de entrega directa** indicado y, si así se configuró, **genera automáticamente la orden de compra** al proveedor, vinculada a la orden de venta. De esta forma, la venta y la reposición quedan resueltas en un solo paso, sin procesos periódicos ni carga manual de la compra.

Es la configuración que utilizan, por ejemplo, las **ventas web** recibidas desde un marketplace: la orden de venta llega desde la [Tienda Web](../../web-store/web-store), se completa y, en el mismo momento, se crea la orden de compra a la organización o proveedor que efectivamente tiene el stock.

## ¿Cuándo se utiliza?

Se utiliza cuando la organización necesita:

- Vender productos que despacha **otra organización del grupo** o un **proveedor externo**, sin registrar stock propio.
- Generar la **orden de compra automáticamente** al completar la orden de venta, en lugar de crearla de forma manual o mediante un proceso programado.
- Definir un **tipo de documento de compra** específico para las compras originadas por entrega directa (por ejemplo, *Compra Web* o compras de publicidad en agencias).
- Registrar las entregas y recepciones de entrega directa en un **almacén lógico** separado del inventario operativo.
- Automatizar el circuito de las **órdenes recibidas desde una tienda web** (por ejemplo, Mercado Libre).

## Acceso

Menú: Gestión de Compras → Configuración de Entrega Directa

## Pestañas

### Entrega Directa

Pestaña única donde se registra cada regla de entrega directa. Se pueden crear tantos registros como combinaciones de organización y tipo de documento de venta se necesiten. La información se organiza en:

- **Organización**
  Organización que vende. La regla solo se aplica a las órdenes de venta de esta organización.

- **Nombre y Descripción**
  Identificación de la regla (por ejemplo, *Ventas WEB*). La descripción es opcional.

- **Tipo de Documento**
  Tipo de documento de la **orden de venta** que activa la regla (por ejemplo, *Venta Web*). Solo admite tipos de documento de orden de venta. Las órdenes de la misma organización con otro tipo de documento no se ven afectadas.

- **Tipo de Documento de Orden de Compra**
  Tipo de documento con el que se crea la **orden de compra** generada (por ejemplo, *Compra Web*). Solo admite tipos de documento de orden de compra. Campo obligatorio.

- **Crear Orden de Compra Automáticamente**
  Si está marcado, al completar la orden de venta el sistema crea la orden de compra al proveedor de entrega directa. Si no está marcado, la orden de venta queda marcada como entrega directa, pero la compra debe generarse por otro medio (por ejemplo, con el proceso [Generar OC desde Orden de Venta](../../sales-management/sales-orders/generate-po-from-sales-order)).

- **Socio de Negocio Basado en Documento**
  Si está marcado, el proveedor de la orden de compra se toma del **documento de origen** (por ejemplo, de la línea de proyecto cuando la orden de venta proviene de un proyecto) y no de un socio fijo. Al marcarlo se ocultan los campos de socio y dirección de entrega directa.

- **Socio del Negocio Entrega Directa**
  Proveedor al que se le emite la orden de compra. Solo admite socios activos marcados como **proveedor**. Visible cuando *Socio de Negocio Basado en Documento* no está marcado.

- **Dirección Entrega Directa**
  Dirección del socio de entrega directa. Solo muestra direcciones activas del socio marcadas como **dirección de envío**. Visible cuando *Socio de Negocio Basado en Documento* no está marcado.

- **Contacto Entrega Directa**
  Usuario de contacto del socio de entrega directa (opcional). Solo muestra contactos del socio seleccionado.

- **Almacén Entrega Directa**
  Almacén lógico donde se registran las transacciones de material de la entrega directa. Ver [Determinación del almacén](#determinacion-del-almacen).

- **Usar Lista de Precio de Proveedor**
  Si está marcado (valor por defecto), la orden de compra generada toma los precios de la lista de precios de compra del proveedor.

- **Activo**
  Permite desactivar la regla sin eliminarla. Una regla inactiva no se aplica a las nuevas órdenes de venta.

## Cómo funciona

### Documentos generados

Cuando se completa una orden de venta cuya organización y tipo de documento coinciden con una regla activa, se genera la siguiente cadena de documentos:

| Paso | Documento | Organización | Detalle |
|---|---|---|---|
| 1 | Orden de Venta | Organización que vende | Queda marcada como **Entrega Directa**, con el socio y la dirección de entrega directa de la regla. |
| 2 | Entrega | Organización que vende | La entrega al cliente se registra en el **almacén de entrega directa** y queda marcada como entrega directa. |
| 3 | Orden de Compra | Organización que vende | Se crea con el **tipo de documento de orden de compra** de la regla, al **socio de entrega directa**, y queda vinculada a la orden de venta en el campo **Orden Vinculada**. |
| 4 | Contra documento (opcional) | Organización proveedora | Si el proveedor es **otra organización del grupo** y existe una regla de contra documento, al completarse la orden de compra se genera automáticamente la orden de venta *intercompañía* en la organización que despacha. |

La descripción y la referencia de la orden de venta (por ejemplo, el número del pedido del marketplace) se trasladan a la orden de compra y a su contra documento, lo que permite rastrear toda la cadena a partir de un mismo dato.

### Condiciones para que se aplique la regla

- La **organización** de la orden de venta debe ser la misma que la de la regla.
- El **tipo de documento** de la orden de venta debe ser el configurado en la regla.
- La regla debe estar **activa**.

Si alguna de estas condiciones no se cumple, la orden de venta se procesa de forma estándar: no se marca como entrega directa y no se genera la orden de compra.

### Determinación del almacén

El almacén donde se registra la entrega directa se resuelve en este orden:

1. El **Almacén Entrega Directa** definido en esta regla.
2. Si la regla no tiene almacén, el almacén de entrega directa configurado en la **información de la organización**.
3. Si ninguno de los dos está definido, el sistema muestra un error indicando que **no se encuentra un almacén de entrega directa** y la orden no se completa.

### Órdenes provenientes de proyectos

Cuando la orden de venta se origina en un **proyecto**, la orden de compra toma la información de la **línea de proyecto** correspondiente. Este escenario se combina habitualmente con **Socio de Negocio Basado en Documento**, para que cada compra se emita al proveedor indicado en el proyecto.

## Flujo del proceso

### 1. Preparar los datos maestros

Antes de crear la regla, verificar que existen:

- El **tipo de documento de orden de venta** que activará la regla (por ejemplo, *Venta Web*).
- El **tipo de documento de orden de compra** que se usará para las compras generadas (por ejemplo, *Compra Web*).
- El **socio de negocio proveedor** con al menos una dirección marcada como dirección de envío. Si el proveedor es otra organización del grupo, el socio debe estar vinculado a esa organización para que se genere el contra documento.
- El **almacén lógico** de entrega directa en la organización que vende.

### 2. Crear la regla

Abrir **Configuración de Entrega Directa** y crear un registro con la organización que vende, el nombre de la regla y el tipo de documento de orden de venta.

### 3. Definir la compra

Seleccionar el **Tipo de Documento de Orden de Compra**, marcar **Crear Orden de Compra Automáticamente** y elegir cómo se determina el proveedor:

- **Proveedor fijo:** dejar desmarcado *Socio de Negocio Basado en Documento* e indicar el socio, la dirección y, opcionalmente, el contacto de entrega directa.
- **Proveedor según el documento:** marcar *Socio de Negocio Basado en Documento*.

### 4. Definir el almacén y los precios

Indicar el **Almacén Entrega Directa** y decidir si la compra usa la **lista de precios del proveedor**. Guardar el registro.

### 5. Verificar con una orden de prueba

Crear y completar una orden de venta de la organización y del tipo de documento configurados. Confirmar que:

- La orden quedó marcada como **Entrega Directa**.
- En el campo **Orden Vinculada** aparece la orden de compra generada, con el tipo de documento y el proveedor esperados.
- Si el proveedor es otra organización del grupo, la orden de compra tiene su contra documento en la organización proveedora.

## Ejemplo de uso

Un grupo empresarial tiene dos organizaciones: la **Organización Comercial**, que vende por Mercado Libre, y la **Organización Distribuidora**, que tiene el stock y despacha los productos.

**Configuración**

| Campo | Valor |
|---|---|
| Organización | Organización Comercial |
| Nombre | Ventas WEB |
| Tipo de Documento | Venta Web |
| Tipo de Documento de Orden de Compra | Compra Web |
| Crear Orden de Compra Automáticamente | Sí |
| Socio de Negocio Basado en Documento | No |
| Socio del Negocio Entrega Directa | Organización Distribuidora (socio proveedor) |
| Almacén Entrega Directa | Ventas WEB (almacén lógico) |
| Usar Lista de Precio de Proveedor | Sí |

**Resultado**

1. Un comprador realiza un pedido en Mercado Libre y la integración crea la orden de venta *Venta Web* en la **Organización Comercial**, con el número de pedido del marketplace.
2. Al completarse, la orden queda marcada como **Entrega Directa**, con la Organización Distribuidora como socio de entrega directa.
3. La entrega al comprador se registra en el almacén **Ventas WEB**.
4. Se crea automáticamente la orden de compra *Compra Web* a la Organización Distribuidora, con la descripción *Pedido MercadoLibre #…* y vinculada a la orden de venta.
5. Al completarse la orden de compra, se genera el contra documento *Orden de Venta Intercompañía* en la **Organización Distribuidora**, desde su almacén principal, para que esta despache y facture a la Organización Comercial.

En cambio, si otra tienda web del mismo grupo está configurada en la **Organización Distribuidora** y no existe una regla para esa organización, sus órdenes *Venta Web* se procesan como ventas estándar: se entregan desde el stock propio y no generan orden de compra.

## Consideraciones importantes

- La regla se evalúa por la combinación **organización + tipo de documento de orden de venta**. El mismo tipo de documento (por ejemplo, *Venta Web*) puede generar entrega directa en una organización y venta estándar en otra.
- No es necesario marcar el check **Entrega Directa** en el tipo de documento de la orden de venta: lo que activa el circuito es la regla de esta ventana.
- La generación de la orden de compra es **inmediata** al completar la orden de venta; no depende de procesos programados ni de ejecuciones periódicas.
- Si **Crear Orden de Compra Automáticamente** está desmarcado, la compra puede generarse luego con [Generar OC desde Orden de Venta](../../sales-management/sales-orders/generate-po-from-sales-order) o, para proyectos, con [Crear OC desde Proyectos](../../sales-management/sales-orders/create-order-po-from-projects).
- Mantener actualizados los datos del **socio de entrega directa** (dirección de envío activa, condición de proveedor). Un socio sin dirección de envío o inactivo impide generar la orden de compra.
- Revisar que exista un **almacén de entrega directa** en la regla o en la información de la organización antes de empezar a operar; de lo contrario, las órdenes de venta no podrán completarse.
- El almacén de entrega directa de la regla es distinto del **Almacén de Entrega Directa de la Tienda Web**: el de la tienda define de dónde se toma el **stock publicado** en el marketplace; el de esta ventana define dónde se registra el **movimiento de la entrega directa**.
- Para el circuito intercompañía, el socio de entrega directa debe estar vinculado a la organización proveedora y debe existir la regla de [Contra Documentos](../../accounting-management/accounting-rules/counter-document) entre la orden de compra y la orden de venta intercompañía.
- Revisar periódicamente las reglas configuradas y dejar registro de los cambios para facilitar el análisis de incidencias.

## Ventanas relacionadas

- [Órdenes de Compra](purchase-order)
- [Orden de Venta](../../sales-management/sales-orders/sales-order)
- [Generar OC desde Orden de Venta](../../sales-management/sales-orders/generate-po-from-sales-order)
- [Crear OC desde Proyectos](../../sales-management/sales-orders/create-order-po-from-projects)
- [Contra Documentos](../../accounting-management/accounting-rules/counter-document)
- [Entregas (Cliente)](../../sales-management/shipments/shipment-customer)
- [Tienda Web](../../web-store/web-store)
- [Órdenes desde Tienda Web](../../web-store/web-store-order)
