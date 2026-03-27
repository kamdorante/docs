---
title: Selección de Pago General
category: Documentation
star: 9
sticky: 9
article: false
---

La Selección de Pagos es una funcionalidad que permite generar órdenes de pago a proveedores.
Con este proceso, el usuario puede:

* Seleccionar facturas u órdenes de compra a cancelar.

* Definir la cuenta bancaria desde donde se emitirán los pagos.

* Generar automáticamente los pagos correspondientes.

- La selección de pagos puede realizarse de dos maneras:

**Un solo paso:** se seleccionan facturas y se define el pago en el mismo documento.

**Dos pasos:** primero se crea la orden de pago y luego se definen los medios y cuentas para emitir los pagos.

![Campo](/assets/img/docs/balance-management/bam-balance-image215.png) 

## Forma 1 – Selección y pago en un solo paso

En esta modalidad, todo se resuelve en un único documento:

* Ingresar a Selección de Pagos y crear un nuevo registro.

* Seleccionar las facturas del proveedor a cancelar.

* Definir la cuenta bancaria desde la cual se realizará el pago.

* Completar el documento y confirmar la emisión de los pagos.

::: tip
Esta forma es útil cuando una sola persona gestiona tanto la selección de facturas como la definición de pagos.
:::

## Forma 2 – Proceso en dos pasos

En esta modalidad, la orden de pago se crea primero y luego se ejecuta en un segundo paso.

### Paso 1: Crear Orden de Pago

Existen dos escenarios principales para crear una orden de pago:

#### Desde una Orden de Compra

* Útil cuando aún no existe factura del proveedor (ejemplo: anticipos o importaciones).

* Permite definir moneda, fechas de documento y de pago, y seleccionar la orden de compra correspondiente.

* Se puede pagar total o parcialmente.

![Campo](/assets/img/docs/balance-management/bam-balance-image215b.png)

![Campo](/assets/img/docs/balance-management/bam-balance-image214.png)

#### Desde Facturas de Proveedor

* Permite seleccionar facturas pendientes de pago.

* Posibilidad de incluir varios proveedores en una misma orden.

* Se pueden ajustar importes en caso de pagos parciales.

![Campo](/assets/img/docs/balance-management/bam-balance-image227.png)

![Campo](/assets/img/docs/balance-management/bam-balance-image237.png)

::: tip
En ambos casos, el resultado es un documento de Orden de Pago, que lista los documentos seleccionados para cancelar.
:::

### Paso 2: Emitir los Pagos

Una vez creada la orden de pago, se procede a la emisión:

* Crear una nueva Orden de Pago con cuenta bancaria definida.

* Seleccionar la opción **Crear desde Selección de Pagos**.

* El sistema muestra las líneas pendientes de pago (provenientes de órdenes anteriores).

* Confirmar las selecciones y generar los pagos (estos se generan al **completar** la selección de pago).

* Cada pago se asigna automáticamente a la factura u orden de compra correspondiente.

![Campo](/assets/img/docs/balance-management/bam-balance-image242.png)

![Campo](/assets/img/docs/balance-management/bam-balance-image280.png)

![Campo](/assets/img/docs/balance-management/bam-balance-image299.png)

### Funcionalidades adicionales

* Exportación de pagos: posibilidad de generar archivos (ej. TXT) para envío al banco o procesar transferencias directas.

* Emisión de recibos: opcional, en caso de necesitar comprobante adicional.

* Flujo de aprobación: se puede configurar que determinadas órdenes de pago requieran validación previa por parte de otros usuarios.

### Resumen

* La Selección de Pagos es una herramienta flexible que permite:

* Agilizar la cancelación de facturas y órdenes de compra.

* Centralizar la gestión de pagos.

* Adaptarse a diferentes niveles de control interno (un solo paso o dos pasos).

