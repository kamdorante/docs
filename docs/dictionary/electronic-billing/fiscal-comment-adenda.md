---
title: Comentario Fiscal y Adenda Genérica en CFE
category: Documentation
star: 9
sticky: 9
article: false
---

# Comentario Fiscal y Adenda Genérica en CFE

## Descripción

El **Comentario Fiscal** es el texto que se incorpora como **adenda** en el Comprobante Fiscal Electrónico (CFE) emitido. La adenda es información complementaria que acompaña al comprobante (por ejemplo, número de orden de compra del cliente, condiciones, referencias, datos de cuentas bancarias para el pago) y se imprime en el bloque **ADENDA** de la representación del CFE, junto con los datos fiscales.

El texto de la adenda puede provenir de tres fuentes, que se combinan en el mismo bloque:

- **Comentario fiscal del documento** (texto variable): se carga en la **Orden de Venta** y se **hereda automáticamente** a la factura, o se carga directamente en la **Factura (Cliente)** / Documento por Cobrar cuando la factura se crea de forma manual.
- **Adenda genérica por tipo de documento** (texto fijo): campo **Nota de Documento** de la ventana **Tipo de Documento**. Se agrega a todas las facturas emitidas con ese tipo de documento, sin importar la organización.
- **Adenda genérica por organización** (texto fijo): la adenda también se puede configurar desde la ventana **Organización**, en el campo **Nota del Documento Para Facturar** de la pestaña **Información de la Organización**. Se agrega a todas las facturas nuevas de esa organización, lo que permite tener un texto distinto en cada organización (por ejemplo, cuando cada una informa sus propias cuentas bancarias).

Esta funcionalidad aplica al circuito de **ventas**: Órdenes de Venta y Facturas por Cobrar que se emiten como CFE.

## ¿Cuándo se utiliza?

Se utiliza cuando la organización necesita:

- Incluir información adicional (adenda) en el comprobante fiscal electrónico que se envía al cliente.
- Definir el comentario una sola vez en la orden de venta y que se traslade automáticamente a la factura emitida.
- Cargar el comentario fiscal directamente en una factura creada manualmente.
- Reflejar en el CFE referencias acordadas con el cliente (número de orden de compra, observaciones contractuales, etc.).
- Mostrar un **texto fijo en todas las facturas** de un tipo de documento (por ejemplo, condiciones de cambio de mercadería).
- Mostrar un **texto fijo en todas las facturas de una organización** (por ejemplo, los datos de las cuentas bancarias donde el cliente debe pagar), sin tener que cargarlo factura por factura.

## Acceso

| Fuente de la adenda | Ventana | Pestaña | Campo |
|---|---|---|---|
| Comentario fiscal en la orden | Gestión de Ventas → Órdenes de Venta → Orden de Venta | Orden | Comentario Fiscal |
| Comentario fiscal en la factura | Gestión de Ventas → Facturas de Venta → Factura (Cliente) | Factura | Comentario Fiscal |
| Adenda genérica por tipo de documento | Análisis de Desempeño → Reglas Contables → Tipo de Documento | Tipo de Documento | Nota de Documento |
| Adenda genérica por organización | Gestión del Sistema → Reglas de la Organización → Organización | Información de la Organización | Nota del Documento Para Facturar |

## Configuración de la adenda genérica

La adenda genérica es un texto fijo que el sistema agrega solo a las facturas, sin que el usuario tenga que escribirlo en cada documento. Se configura en uno de estos dos lugares, según si el texto debe ser igual para toda la compañía o distinto en cada organización.

### Adenda genérica por organización

La adenda también se puede configurar **desde la Organización**, para las organizaciones que manejan facturación electrónica. Se configura en la ventana **Organización**, pestaña **Información de la Organización**, campo **Nota del Documento Para Facturar**. El texto cargado allí se agrega a **todas las facturas nuevas de la organización**, sin necesidad de escribirlo en cada documento.

![Campo Nota del Documento Para Facturar en la pestaña Información de la Organización](/assets/img/docs/electronic-billing/org-info-invoice-document-note.png)

1. Ingresar al menú **Gestión del Sistema → Reglas de la Organización → Organización**.
2. Seleccionar la organización que emite las facturas.
3. Abrir la pestaña **Información de la Organización**.
4. Ir **al final de la pestaña** y ubicar el campo **Nota del Documento Para Facturar**.
5. Escribir el texto que debe aparecer en todas las facturas de la organización (por ejemplo, los datos de las cuentas bancarias).
6. Guardar.
7. Repetir en cada organización que necesite su propia adenda. Las organizaciones que dejan el campo vacío no agregan ningún texto.

A partir de ese momento, cada factura nueva de la organización trae el texto al final de la adenda, en una línea nueva.

### Adenda genérica por tipo de documento

Se configura en la ventana **Tipo de Documento**, campo **Nota de Documento**.

1. Ingresar al menú **Análisis de Desempeño → Reglas Contables → Tipo de Documento**.
2. Seleccionar el tipo de documento de facturación (por ejemplo, *e-Factura*).
3. Completar el campo **Nota de Documento** con el texto fijo.
4. Guardar.

El tipo de documento es compartido por todas las organizaciones de la compañía, por lo que este texto es el mismo para todas. Cuando cada organización necesita un texto distinto, usar la adenda genérica por organización.

### Composición de la adenda

Cuando se crea una factura, el sistema arma la adenda en este orden:

```
[Comentario fiscal del documento]
[Nota de Documento del Tipo de Documento]          ← si está configurada
[Nota del Documento Para Facturar de la organización]  ← si está configurada, en una línea nueva al final
```

La nota de la organización siempre se agrega **al final**, separada por un **salto de línea**, a continuación de lo que ya contenga la adenda.

## Campos

### Comentario Fiscal (cabezal de la orden o factura)

- **Comentario Fiscal**
  Texto libre que se incorporará como adenda en el CFE. Está disponible tanto en el cabezal de la **Orden de Venta** como en el de la **Factura (Cliente)**. Es el texto variable, propio de cada documento.

### Nota de Documento (Tipo de Documento)

- **Nota de Documento**
  Texto fijo que se agrega a la adenda de todas las facturas emitidas con ese tipo de documento. Es común a todas las organizaciones.

### Nota del Documento Para Facturar (Información de la Organización)

- **Nota del Documento Para Facturar**
  Texto fijo que se agrega al final de la adenda de todas las facturas nuevas de la organización. Se ubica al final de la pestaña **Información de la Organización**. Si el campo está vacío, la adenda no se modifica.

## Acciones disponibles

- **Definir Comentario Fiscal en la Orden de Venta**
  Cargar el texto en el campo *Comentario Fiscal* de la orden antes de generar la factura.

- **Heredar a la Factura**
  Al generar la factura desde la orden (por el flujo estándar del sistema), el comentario fiscal se copia automáticamente al campo correspondiente de la factura.

- **Definir Comentario Fiscal en la Factura**
  Cargar o editar el texto directamente en el campo *Comentario Fiscal* de la factura cuando se emite de forma manual.

- **Configurar la adenda genérica**
  Cargar el texto fijo en el tipo de documento o en la Información de la Organización (ver [Configuración de la adenda genérica](#configuracion-de-la-adenda-generica)).

- **Verificar en el CFE**
  Tras completar y enviar la factura, revisar la adenda en la **Bitácora de Documento Electrónico** o en el formato de impresión del CFE.

## Flujo del proceso

### 1. Configurar la adenda genérica (una sola vez)

Si se necesita un texto fijo en todas las facturas, cargarlo en el campo **Nota del Documento Para Facturar** de la organización o en el campo **Nota de Documento** del tipo de documento, según se explica en [Configuración de la adenda genérica](#configuracion-de-la-adenda-generica).

### 2. Cargar el comentario en la orden de venta

Al crear la **Orden de Venta**, completar los datos del cliente (socio, término de pago, tipo de documento crédito con factura, etc.) y escribir el texto variable en el campo **Comentario Fiscal** del cabezal. Guardar.

### 3. Generar la factura desde la orden

Completar la orden de venta. El sistema genera la factura asociada, **copia automáticamente** el comentario fiscal y agrega al final la adenda genérica que corresponda.

### 4. Verificar la adenda en la factura

Abrir la factura generada en **Documentos por Cobrar** y confirmar que la adenda contiene el comentario heredado de la orden y, en una línea nueva al final, el texto de la organización.

### 5. Completar y emitir el CFE

Completar la factura. Si el tipo de documento maneja facturación electrónica, el CFE se envía al proveedor fiscal con la adenda completa.

### 6. Validar la adenda en el comprobante

Abrir la **Bitácora de Documento Electrónico** de la factura (o el formato de impresión del CFE) y verificar que el texto aparece en el bloque **ADENDA** del comprobante emitido.

### Alternativa: factura manual

Si la factura no parte de una orden de venta, crear la factura en **Documentos por Cobrar** con la organización y un tipo de documento de facturación electrónica, cargar el texto en el campo **Comentario Fiscal** y guardar. Al guardar por primera vez, el sistema agrega la adenda genérica de la organización al final. El resto del flujo (completar, emitir, validar adenda) es el mismo.

## Ejemplo de uso

### Adenda con referencia a la orden de compra del cliente

1. Crear una **Orden de Venta** para el cliente con término de pago 30 días y tipo de documento *Crédito con Factura*.
2. En el campo **Comentario Fiscal** del cabezal, escribir el texto de la adenda (por ejemplo, *"Ejemplo Adenda OC XX"*).
3. Agregar las líneas del pedido y completar la orden. El sistema genera la factura automáticamente.
4. Abrir la factura en **Documentos por Cobrar** y confirmar que el campo *Comentario Fiscal* trae el texto heredado de la orden.
5. Completar la factura. El CFE se emite con la adenda.
6. Abrir la **Bitácora de Documento Electrónico** y verificar que la adenda aparece al final del comprobante.

### Adenda genérica con las cuentas bancarias de cada organización

Una compañía con varias organizaciones necesita que cada factura informe las cuentas bancarias de la organización que la emite:

1. En **Gestión del Sistema → Reglas de la Organización → Organización**, seleccionar la *Organización A* y abrir la pestaña **Información de la Organización**.
2. Al final de la pestaña, completar **Nota del Documento Para Facturar** con un texto como *"Pagos en Banco XX, cuenta en pesos N.º 0000000"*. Guardar.
3. Repetir en cada organización con sus propios datos bancarios.
4. Crear una factura nueva en la *Organización A*, escribir en la adenda el texto *"Adenda de la factura"* y guardar.
5. La adenda queda así:

```
Adenda de la factura
Pagos en Banco XX, cuenta en pesos N.º 0000000
```

6. Completar la factura. El CFE impreso muestra ambos textos en el bloque **ADENDA**.

## Consideraciones importantes

- Esta funcionalidad aplica al circuito de **ventas**: Órdenes de Venta y Facturas por Cobrar emitidas como CFE.
- La **herencia** del comentario fiscal de la orden a la factura ocurre cuando la factura se genera **por el flujo estándar del sistema**. Si la factura se crea por una vía que no pasa por ese flujo, puede no heredar el comentario; en ese caso, cargarlo manualmente en la factura.
- El comentario fiscal se puede cargar en **cualquiera de los dos puntos**: en la orden (para que se herede) o directamente en la factura. No es necesario hacerlo en ambos.
- La **Nota de Documento** del tipo de documento es **común a todas las organizaciones**. Cuando cada organización necesita un texto distinto, usar la **Nota del Documento Para Facturar** de la Información de la Organización.
- La nota de la organización solo se aplica a organizaciones que manejan **facturación electrónica**.
- La nota de la organización se agrega **únicamente al crear la factura**. Al editar y guardar una factura existente (por ejemplo, para modificar el comentario) el texto **no se vuelve a agregar**, de modo que la adenda no se duplica.
- Por el mismo motivo, cargar o modificar la nota en la organización **no actualiza las facturas ya creadas**: el cambio rige para las facturas nuevas.
- Las adendas genéricas están pensadas para **textos fijos**. Los textos que cambian en cada período (por ejemplo, el rango de fechas de un servicio facturado) deben cargarse en el comentario fiscal o en la descripción de cada documento.
- La adenda aparece en la **representación impresa del CFE** y en la respuesta del proveedor fiscal registrada en la bitácora. Conviene revisar que el texto no contenga información que no se desee publicar en el comprobante.
- El campo es de **texto libre**: la organización define el contenido (referencias, observaciones, número de orden de compra del cliente, cuentas bancarias, etc.).
- Para verificar el resultado final, usar la **Bitácora de Documento Electrónico** o el formato de impresión del CFE, no la vista interna de la factura, ya que la adenda es parte del comprobante emitido.

## Ventanas relacionadas

- [Proceso de Facturación Electrónica](electronic-billing-process)
- [Bitácora de Documento Electrónico](electronic-document-log)
- [Tipo de Documento según Grupo de Impuestos](document-type-by-tax-group)
- [Imprimir Recibo de Factura](print-invoice-receipt)
- [Corporación](../basic-rules/corporation) — se configura en la misma pestaña **Información de la Organización**
