---
title: Impresión del Ticket de Cambio
category: Documentation
star: 9
sticky: 9
article: false
---

# Impresión del Ticket de Cambio

## Descripción

Cuando una **Orden de Venta** está configurada para generarlo, el sistema puede emitir automáticamente un **Ticket de Cambio** junto con el comprobante de la venta: es el comprobante que documenta el saldo a favor de un cambio o devolución, y que el cliente presenta para usar ese saldo. Esto se usa habitualmente en ventas de canal web que el cliente termina cambiando o retirando en un local físico.

::: tip Nombre en la configuración del sistema
Internamente, en las pantallas de configuración, esta funcionalidad y sus casillas se identifican como **"Tarjeta de Regalo"** (es el nombre técnico de la funcionalidad). El comprobante que finalmente se imprime y que ve el cliente se titula **"Ticket de Cambio"**. Este documento usa "Ticket de Cambio" para referirse al comprobante, y respeta los nombres reales de los campos de configuración donde corresponde.
:::

La impresión de este ticket depende de que **tres configuraciones distintas** estén correctamente alineadas: el tipo de documento de la orden, el producto vendido y la Terminal PDV desde la que se imprime. Si falta una sola pieza, el sistema no imprime el ticket y, en algunos casos, no imprime ningún comprobante en absoluto.

## ¿Cuándo se utiliza?

Se revisa esta configuración cuando la organización necesita:

- Emitir un Ticket de Cambio (cambio, saldo a favor, devolución) al completar una orden de venta.
- Diagnosticar por qué una venta —en particular, ventas del canal **Web** que se retiran o gestionan en un local— no muestra el Ticket de Cambio esperado.
- Habilitar la generación del Ticket de Cambio para un tipo de documento o categoría de producto que antes no lo generaba.

## Condiciones para que la orden genere el Ticket de Cambio

Para que una orden tenga un Ticket de Cambio asociado, deben cumplirse todas estas condiciones al momento de **completarla**:

- **Ser una orden de venta**, no una devolución.
- **Estar completada** con la configuración ya activa. La generación del Ticket de Cambio ocurre en el momento de completar el documento: si la orden se completó **antes** de activar la configuración descrita abajo, esa orden nunca va a tener Ticket de Cambio, aunque la configuración se active después.
- El **Tipo de Documento** de la orden (por ejemplo, *Venta Web*) debe tener activa la opción **Generar Tarjeta de Regalo** en su configuración de Asignación de Tipo de Documento. Este valor se copia automáticamente a la cabecera de la orden al crearla o al cambiarle el tipo de documento.
- Al menos **una línea** de la orden debe tener activa la opción **Generar Tarjeta de Regalo**. Este valor se hereda del producto (y el producto, a su vez, lo hereda de su categoría al momento de crearse). 

::: warning El flag de línea no se actualiza retroactivamente
Si se activa la opción en el producto **después** de que ya existían líneas de orden con ese producto, esas líneas viejas quedan sin el flag. Solo las líneas nuevas (o las que se editan cambiando el producto) toman el valor actualizado. Si se necesita corregir órdenes existentes, hay que revisar línea por línea.
:::

Cuando estas condiciones se cumplen, el sistema genera **un Ticket de Cambio por unidad** si la unidad de medida del producto no maneja decimales, o **uno por línea** si la unidad de medida sí maneja decimales.

## Condiciones para que la Terminal PDV imprima el ticket

Cumplir las condiciones anteriores habilita el Ticket de Cambio, pero no garantiza que se imprima. Para que el proceso de impresión funcione:

- Debe existir al menos una **Terminal PDV activa** en la **misma organización** que la orden, con su clase de impresión de ticket configurada.

  ::: tip El sistema no usa la terminal donde se hizo la venta
  El proceso de impresión busca la **primera Terminal PDV activa de la organización**, no necesariamente la terminal específica en la que se originó la venta. Si la organización tiene varias terminales, alcanza con que una esté correctamente configurada; si **ninguna** terminal activa de la organización tiene la clase de ticket configurada, la impresión falla con un error.
  :::

- Esa Terminal PDV debe tener activada la opción **Permite Tarjeta de Regalo**. El campo **Imprimir Tarjeta de Regalo** solo queda disponible para marcarse cuando esta primera opción está activa, y también debe estar en *Sí*.
- La orden debe tener **al menos una Factura** generada. Sin factura, el proceso no devuelve ningún comprobante impreso: ni el ticket de venta normal ni el Ticket de Cambio.
- Debe existir el registro correspondiente al Ticket de Cambio asociado a la orden (resultado de la sección anterior).
- El **rol del usuario** que imprime debe tener permiso sobre el proceso de impresión del Ticket de Cambio. Sin ese permiso, el sistema no imprime nada y muestra un error de acceso.

## Flujo del proceso

### 1. Verificar el Tipo de Documento de la orden

Abrir la configuración de **Asignación de Tipo de Documento** del tipo usado por las órdenes que necesitan generar el Ticket de Cambio (por ejemplo, *Venta Web*) y confirmar que **Generar Tarjeta de Regalo** esté activo.

### 2. Verificar la categoría/producto

Confirmar que los productos involucrados (o su categoría de producto) tengan activa la opción de generar el Ticket de Cambio, para que las líneas nuevas hereden el flag correctamente.

### 3. Configurar la Terminal PDV

Abrir la **Terminal PDV** de la organización correspondiente y activar, en este orden:

1. **Permite Tarjeta de Regalo**.
2. **Imprimir Tarjeta de Regalo** (disponible recién después de activar el punto anterior).

### 4. Completar una orden de prueba

Con la configuración activa, completar una orden nueva del tipo de documento correspondiente, con al menos una línea de un producto habilitado para el Ticket de Cambio, y generar su factura.

### 5. Imprimir el ticket

Ejecutar la impresión desde la orden o desde el proceso correspondiente. El sistema debe emitir el Ticket de Cambio junto con el comprobante de venta.

## Consideraciones importantes

- **Las órdenes completadas antes de activar la configuración no se corrigen solas.** Activar el flag en el tipo de documento, en el producto o en la terminal no aplica retroactivamente a órdenes ya completadas. Solo las órdenes completadas **después** del cambio pueden generar el Ticket de Cambio.
- **Activar una segunda Terminal PDV no vincula automáticamente las ventas anteriores.** Si una organización tenía una sola terminal activa y se activa una segunda, las ventas ya completadas no quedan asociadas a la terminal nueva ni viceversa: el vínculo de la venta con la terminal se define en el momento en que la venta se completa, no después.
- Si el ticket no se imprime, revisar en este orden: (1) si el tipo de documento y el producto tienen activa la opción **Generar Tarjeta de Regalo**, (2) si existe al menos una Terminal PDV activa de la organización con **Permite Tarjeta de Regalo** e **Imprimir Tarjeta de Regalo** en *Sí*, (3) si la orden tiene factura generada, y (4) si el rol del usuario tiene permiso sobre el proceso de impresión.
- Si no hay ninguna Terminal PDV activa en la organización con la clase de ticket configurada, el proceso de impresión falla con un error genérico de referencia nula; si el rol no tiene permiso sobre el proceso, el error es de acceso denegado. En ambos casos el ticket completo no se imprime (tampoco el comprobante de venta estándar).

## Preguntas frecuentes

### Activé la Terminal PDV pero las ventas web de antes siguen sin mostrar el Ticket de Cambio. ¿Por qué?

Porque esas órdenes ya estaban **completadas** antes de activar la configuración. La generación del Ticket de Cambio ocurre en el momento de completar la orden; una vez completada sin la configuración activa, esa orden no va a tener Ticket de Cambio nunca, sin importar qué se active después. Solo las órdenes que se completen de ahora en adelante, con la configuración ya activa, van a generar el ticket correctamente.

### ¿Con activar la Terminal PDV alcanza para que se imprima el ticket?

No necesariamente. Activar la terminal (**Permite Tarjeta de Regalo** + **Imprimir Tarjeta de Regalo**) es una de las condiciones, pero además el tipo de documento de la orden y el producto vendido deben tener activa la opción **Generar Tarjeta de Regalo**, y la orden debe tener una factura asociada. Revisar la lista completa de condiciones en las secciones anteriores.

## Ventanas relacionadas

- [Orden de Venta](../sales-management/sales-orders/sales-order)
- [Agregar un Usuario a Punto de Venta](add-user-to-pos)
