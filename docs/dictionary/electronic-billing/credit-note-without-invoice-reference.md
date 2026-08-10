---
title: Nota de Crédito Genérica sin Referenciar Facturas
category: Documentation
star: 9
sticky: 9
article: false
---

# Nota de Crédito Genérica sin Referenciar Facturas

## Descripción

Este flujo describe cómo emitir una **Nota de Crédito con CFE** que se envía al proveedor fiscal (Invoicy) **sin referenciar una factura específica**. Es útil cuando la organización necesita generar un crédito a nombre del cliente por un motivo general (por ejemplo, un ajuste comercial, una bonificación, una devolución que no está atada a un comprobante puntual) y no corresponde asociar el documento a una factura concreta.

El resultado es un CFE fiscalmente válido (por ejemplo, *eFactura NC* o *eTicket NC*), con un **motivo** escrito por el usuario en el campo *Descripción* de la nota de crédito. Ese motivo queda como texto del CFE, visible en la **Bitácora de Documento Electrónico** y en la representación impresa que reciba el cliente.

A diferencia de la nota de crédito **contra factura** (que valida la coincidencia de moneda y tasa de cambio con el documento referenciado), esta variante **no tiene referencias** en la pestaña de la nota de crédito: es un crédito abierto que después se asigna al saldo del cliente desde **Asignación de Pagos**.

## ¿Cuándo se utiliza?

Se utiliza cuando la organización necesita:

- Emitir un CFE de Nota de Crédito por un **motivo general** (bonificación, ajuste comercial, promoción, devolución fuera de sistema, etc.).
- Generar un crédito a nombre del cliente que **no se vincula** a una factura puntual.
- Registrar la razón del crédito en el propio documento electrónico para que quede en la bitácora y en la representación impresa.
- Dejar el crédito disponible para **asignarlo posteriormente** contra el saldo del cliente mediante Asignación de Pagos.

## Acceso

**Menú:** Gestión de Ventas → Facturas de Venta → **Factura (Cliente)** — desde acá se crea o se copia el registro que se va a convertir en Nota de Crédito.

La asignación posterior del crédito al saldo del cliente se realiza desde:

**Menú:** Gestión de Saldos Pendientes → **Asignación de Pagos**.

## Configuración previa

Antes de emitir la Nota de Crédito genérica deben estar en orden:

- El **cliente** con su grupo de impuestos configurado y con el mapeo de tipos de documento correspondiente (por ejemplo, *eFactura NC*, *eTicket NC*, *eBoleta NC*) definido en el grupo de impuestos.
- El **Emisor Fiscal** (Invoicy) activo y conectado con la instancia.
- Una **Lista de Precios de Venta dedicada** para el motivo del crédito, que contenga **solo el producto** que se va a usar, con el **precio de lista neto** que corresponde al monto del crédito, sin descuentos aplicados al cliente. Esta lista se prepara antes para poder cargar el importe exacto sin arrastrar impuestos o rebajas del catálogo comercial habitual.
- Un **producto** apto para usarse como línea de la nota de crédito. Se recomienda tener un producto "ajuste" o similar que se use en estos casos y que esté cargado en la lista de precios dedicada.
- El **Tipo de Documento** de la Nota de Crédito con *Maneja Facturación Electrónica = Sí* y *Enviar después de Completar = Sí* (definidos en el proceso estándar de facturación electrónica).

::: warning Sobre la lista de precios dedicada
La razón de crear una lista de precios específica es poder **fijar el monto neto exacto** que se quiere acreditar sin arrastrar impuestos ni descuentos del catálogo comercial que puedan alterar el importe. Se puede reutilizar en futuras notas de crédito del mismo tipo.
:::

## Pestañas

### Factura (Cliente)

Al copiar un registro existente para generar la nueva nota de crédito, los campos clave son:

- **Tipo de Documento**
  Debe ser el tipo correspondiente a *Nota de Crédito* (por ejemplo, *eFactura NC* o *eTicket NC*), no el tipo de factura original.

- **Socio del Negocio**
  Cliente al que se le emite el crédito. Se hereda del registro copiado.

- **Fecha**
  Fecha de emisión de la nota de crédito.

- **Lista de Precios**
  Se cambia por la lista de precios **dedicada** al motivo del crédito, para que el precio del producto sea el exacto (neto, sin descuento).

- **Descripción**
  Campo donde se escribe el **motivo** de la nota de crédito. Este texto se envía al proveedor fiscal como parte del CFE y queda visible en la bitácora del documento electrónico.

- **Moneda**
  Moneda del crédito. Al no tener referencia a una factura, no se aplica la validación de coincidencia de moneda / tasa de cambio con documentos referenciados.

### Líneas

- **Producto**
  El producto de la lista de precios dedicada que va a representar el ajuste.

- **Cantidad**
  Habitualmente *1*, ya que el importe se fija por el precio de lista.

- **Precio**
  Se completa automáticamente desde la lista de precios dedicada. Verificar que corresponde al monto neto del crédito.

### Referencias

En esta variante **no se cargan** documentos referenciados. La nota de crédito queda como un crédito general, no atado a facturas específicas.

## Acciones disponibles

- **Copiar Registro**
  Acción que crea una nueva factura/nota de crédito a partir de un registro existente. Se usa para partir de una plantilla en lugar de armar el documento desde cero.

- **Completar**
  Cierra el documento y dispara el envío al proveedor fiscal. Si el tipo de documento tiene *Enviar después de Completar = Sí*, el CFE se envía automáticamente a Invoicy y el resultado queda en la Bitácora de Documento Electrónico.

- **Asignación de Pagos**
  Acción posterior, desde la ventana Asignación de Pagos, para descontar el saldo del cliente usando esta nota de crédito.

## Flujo del proceso

### 1. Preparar la lista de precios dedicada

Antes de emitir el documento, crear (o reutilizar) una **Lista de Precios de Venta** dedicada al motivo del crédito. Agregar en ella el producto que se va a usar, con **precio de lista** igual al monto neto del crédito, sin descuentos para el cliente.

### 2. Copiar un registro base

Desde la ventana **Factura (Cliente)**, ubicar una nota de crédito previa (o una factura) del mismo cliente y ejecutar la acción **Copiar Registro**. El sistema abre un nuevo documento en borrador con los datos base ya cargados.

### 3. Ajustar tipo de documento y lista de precios

En el nuevo documento:

- Confirmar el **Tipo de Documento** de Nota de Crédito correspondiente (por ejemplo, *eFactura NC*).
- Cambiar la **Lista de Precios** al listado dedicado creado en el paso 1.

### 4. Cargar la línea con el producto

En la pestaña de líneas, agregar (o ajustar) la línea con el **producto** de la lista dedicada. Verificar que el **precio** que trae es el monto neto del crédito y que **no** hay descuentos aplicados. Ajustar cantidad si es necesario (usualmente *1*).

### 5. Escribir el motivo en Descripción

En la cabecera del documento, completar el campo **Descripción** con el **motivo** de la nota de crédito. Este texto será el que llegue al CFE y que quede visible en la bitácora del documento electrónico y en la representación impresa que reciba el cliente.

### 6. Completar el documento

Ejecutar **Completar**. El sistema:

- Cierra la nota de crédito.
- La envía automáticamente al proveedor fiscal (Invoicy) para su timbrado y numeración.
- Registra la respuesta en la **Bitácora de Documento Electrónico**.

### 7. Validar el CFE emitido

Abrir la **Bitácora de Documento Electrónico** para verificar:

- El CFE quedó con estado *Aprobado*.
- El texto de *Descripción* que se cargó aparece como motivo del CFE.
- El monto, la moneda y el cliente son los esperados.

### 8. Asignar el crédito al saldo del cliente

Desde **Asignación de Pagos**, ubicar la nota de crédito emitida y asignarla contra los saldos abiertos del cliente. Esto descuenta el importe del crédito de los documentos por cobrar del cliente sin necesidad de haberlo referenciado en la propia nota de crédito.

## Ejemplo de uso

Emitir una nota de crédito genérica al cliente por un ajuste comercial de un monto neto acordado, sin apuntarla a ninguna factura específica:

1. En **Lista de Precios de Venta**, crear una lista *"Ajuste NC — Cliente"* con un único producto (por ejemplo, *"Producto Ajuste"*), precio de lista neto igual al monto del ajuste, sin descuento.
2. Abrir **Factura (Cliente)**, localizar una nota de crédito anterior del cliente y ejecutar **Copiar Registro**.
3. En el nuevo documento, dejar el tipo *eFactura NC*, cambiar la Lista de Precios a *"Ajuste NC — Cliente"* y confirmar que la línea trae el producto con el precio esperado.
4. En **Descripción**, escribir el motivo: por ejemplo, *"Ajuste comercial acordado por bonificación de campaña de mayo."*
5. Ejecutar **Completar**. El CFE se envía a Invoicy.
6. Abrir la **Bitácora de Documento Electrónico** para el nuevo documento: se ve el motivo escrito en el paso 4 como parte del texto del CFE, en la moneda del documento.
7. Desde **Asignación de Pagos**, aplicar el saldo del crédito contra las facturas pendientes del cliente.

## Consideraciones importantes

- Esta variante de nota de crédito **no lleva referencias** a facturas: por eso no aplican las validaciones de coincidencia de moneda y tasa de cambio descritas en [Notas de Crédito — Validaciones de Moneda y Tasa de Cambio](credit-note-currency-validations).
- El **campo Descripción** es el que engloba el motivo que llega al CFE. Debe ser claro y descriptivo, ya que es lo que verá el cliente en la representación impresa y lo que quedará como evidencia fiscal ante DGI.
- La **lista de precios dedicada** es la herramienta para fijar el importe neto exacto sin ruido de impuestos o descuentos. Puede reutilizarse; se recomienda ajustar el precio antes de cada emisión si el monto cambia.
- El producto de la línea puede ser un **producto "ajuste"** genérico o el producto original al que aplica el crédito. La única condición práctica es que exista en la lista de precios dedicada con el precio deseado.
- El **envío al proveedor fiscal** ocurre al completar el documento, siempre que el tipo de documento tenga marcado *Maneja Facturación Electrónica = Sí* y *Enviar después de Completar = Sí*.
- Este flujo es válido cuando el tipo de documento correspondiente en el **grupo de impuestos** del cliente sea el de Nota de Crédito adecuado (por ejemplo, *eFactura NC* para clientes con *eFactura*).
- Se recomienda **probar el flujo en ambiente de testing** antes de replicarlo en producción, especialmente para confirmar cómo se ve el motivo en la representación impresa recibida por el cliente.
- El crédito emitido queda **abierto** en la cuenta del cliente hasta que se asigne desde **Asignación de Pagos** contra alguna factura o saldo pendiente. Si nunca se asigna, permanece como un crédito no aplicado.

## Ventanas relacionadas

- [Proceso de Facturación Electrónica](electronic-billing-process)
- [Notas de Crédito — Validaciones de Moneda y Tasa de Cambio](credit-note-currency-validations)
- [Bitácora de Documento Electrónico](electronic-document-log)
- [Tipo de Documento según Grupo de Impuestos](document-type-by-tax-group)
- [Personalizar Mensajes de E-mail al Receptor del CFE (Invoicy)](customize-invoicy-email-messages)
- [Factura (Cliente)](../sales-management/sales-invoices/invoice-customer)
- [Asignación de Pagos](../balance-management/allocation/payment-allocation)
- [Lista de Precios](../material-management/material-rules/price-list)
