---
title: Comentario Fiscal (Adenda) en CFE
category: Documentation
star: 9
sticky: 9
article: false
---

# Comentario Fiscal (Adenda) en CFE

## Descripción

El **Comentario Fiscal** es el texto que se incorpora como **adenda** en el Comprobante Fiscal Electrónico (CFE) emitido. La adenda es información complementaria que acompaña al comprobante (por ejemplo, número de orden de compra del cliente, condiciones, referencias) y se imprime en la representación del CFE junto con los datos fiscales.

El comentario fiscal puede definirse en dos puntos del flujo de venta:

- En la **Orden de Venta**, mediante el campo *Comentario Fiscal* del cabezal. Al generar la factura desde la orden, el comentario se **hereda automáticamente** a la factura y de ahí al CFE.
- Directamente en la **Factura (Cliente)** / Documento por Cobrar, en su propio campo *Comentario Fiscal*, cuando la factura se crea de forma manual sin partir de una orden.

Esta funcionalidad aplica al circuito de **ventas**: Órdenes de Venta y Facturas por Cobrar que se emiten como CFE.

## ¿Cuándo se utiliza?

Se utiliza cuando la organización necesita:

- Incluir información adicional (adenda) en el comprobante fiscal electrónico que se envía al cliente.
- Definir el comentario una sola vez en la orden de venta y que se traslade automáticamente a la factura emitida.
- Cargar el comentario fiscal directamente en una factura creada manualmente.
- Reflejar en el CFE referencias acordadas con el cliente (número de orden de compra, observaciones contractuales, etc.).

## Acceso

Existen dos formas de cargar el comentario fiscal:

1. **Desde la Orden de Venta:** Gestión de Ventas → Órdenes de Venta → Orden de Venta → campo **Comentario Fiscal** del cabezal.
2. **Desde la Factura (Cliente):** Gestión de Ventas → Facturas de Venta → Factura (Cliente) → campo **Comentario Fiscal** del cabezal.

## Campos

### Comentario Fiscal (cabezal)

- **Comentario Fiscal**
  Texto libre que se incorporará como adenda en el CFE. Está disponible tanto en el cabezal de la **Orden de Venta** como en el de la **Factura (Cliente)**.

## Acciones disponibles

- **Definir Comentario Fiscal en la Orden de Venta**
  Cargar el texto en el campo *Comentario Fiscal* de la orden antes de generar la factura.

- **Heredar a la Factura**
  Al generar la factura desde la orden (por el flujo estándar del sistema), el comentario fiscal se copia automáticamente al campo correspondiente de la factura.

- **Definir Comentario Fiscal en la Factura**
  Cargar o editar el texto directamente en el campo *Comentario Fiscal* de la factura cuando se emite de forma manual.

- **Verificar en el CFE**
  Tras completar y enviar la factura, revisar la adenda en la **Bitácora de Documento Electrónico** o en el formato de impresión del CFE.

## Flujo del proceso

### 1. Cargar el comentario en la orden de venta

Al crear la **Orden de Venta**, completar los datos del cliente (socio, término de pago, tipo de documento crédito con factura, etc.) y escribir el texto en el campo **Comentario Fiscal** del cabezal. Guardar.

### 2. Generar la factura desde la orden

Completar la orden de venta. El sistema genera la factura asociada y **copia automáticamente** el comentario fiscal al campo correspondiente de la factura.

### 3. Verificar el comentario en la factura

Abrir la factura generada en **Documentos por Cobrar** y confirmar que el campo *Comentario Fiscal* contiene el texto heredado de la orden.

### 4. Completar y emitir el CFE

Completar la factura. Si el tipo de documento maneja facturación electrónica, el CFE se envía al proveedor fiscal con el comentario fiscal incluido como adenda.

### 5. Validar la adenda en el comprobante

Abrir la **Bitácora de Documento Electrónico** de la factura (o el formato de impresión del CFE) y verificar que el comentario aparece como adenda en el comprobante emitido.

### Alternativa: factura manual

Si la factura no parte de una orden de venta, cargar el texto directamente en el campo **Comentario Fiscal** del cabezal de la factura antes de completarla. El resto del flujo (completar, emitir, validar adenda) es el mismo.

## Ejemplo de uso

Emitir una factura con una adenda que referencia la orden de compra del cliente:

1. Crear una **Orden de Venta** para el cliente con término de pago 30 días y tipo de documento *Crédito con Factura*.
2. En el campo **Comentario Fiscal** del cabezal, escribir el texto de la adenda (por ejemplo, *"Ejemplo Adenda OC XX"*).
3. Agregar las líneas del pedido y completar la orden. El sistema genera la factura automáticamente.
4. Abrir la factura en **Documentos por Cobrar** y confirmar que el campo *Comentario Fiscal* trae el texto heredado de la orden.
5. Completar la factura. El CFE se emite con la adenda.
6. Abrir la **Bitácora de Documento Electrónico** y verificar que la adenda aparece al final del comprobante.

## Consideraciones importantes

- Esta funcionalidad aplica al circuito de **ventas**: Órdenes de Venta y Facturas por Cobrar emitidas como CFE.
- La **herencia** del comentario fiscal de la orden a la factura ocurre cuando la factura se genera **por el flujo estándar del sistema**. Si la factura se crea por una vía que no pasa por ese flujo, puede no heredar el comentario; en ese caso, cargarlo manualmente en la factura.
- El comentario fiscal se puede cargar en **cualquiera de los dos puntos**: en la orden (para que se herede) o directamente en la factura. No es necesario hacerlo en ambos.
- La adenda aparece en la **representación impresa del CFE** y en la respuesta del proveedor fiscal registrada en la bitácora. Conviene revisar que el texto no contenga información que no se desee publicar en el comprobante.
- El campo es de **texto libre**: la organización define el contenido (referencias, observaciones, número de orden de compra del cliente, etc.).
- Para verificar el resultado final, usar la **Bitácora de Documento Electrónico** o el formato de impresión del CFE, no la vista interna de la factura, ya que la adenda es parte del comprobante emitido.

## Ventanas relacionadas

- [Proceso de Facturación Electrónica](electronic-billing-process)
- [Bitácora de Documento Electrónico](electronic-document-log)
