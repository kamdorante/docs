---
title: Reversión de Documentos Electrónicos
category: Documentation
star: 9
sticky: 9
article: false
---

Cuando se necesita anular un e-Remito o un e-Resguardo ya emitido y enviado al proveedor de facturación electrónica, el sistema genera automáticamente el documento de reverso correspondiente: el **Contra e-Remito** o el **Contra Resguardo**. Estos documentos tienen valor negativo, referencian el comprobante original y se envían automáticamente al proveedor sin pasos adicionales.

---

## Contra e-Remito

### ¿Qué es?

El Contra e-Remito es el documento que anula un e-Remito previamente emitido. Se genera con cantidad negativa y queda vinculado al remito original mediante una referencia. Puede imprimirse y verificarse en el portal del proveedor.

### Configuración previa

Para que el sistema pueda generar el Contra e-Remito, el tipo de documento del e-Remito debe tener activos los siguientes campos:

- **Permite Reversar Documento**: habilitado.
- **Copiar Número de Documento en Reverso**: habilitado, para que el reverso incluya el número del remito original.

::: warning
Si el campo **Permite Reversar** no está visible en la pantalla del tipo de documento, contactar al administrador del sistema para habilitarlo.
:::

### Cómo generar un Contra e-Remito

**Desde una orden de venta:**

1. Abrir la entrega (e-Remito) que se desea anular.
2. Ejecutar la acción de anular o reversar el documento.
3. El sistema genera automáticamente un nuevo e-Remito con cantidad negativa y la referencia al original.
4. El Contra e-Remito se envía automáticamente al proveedor de facturación electrónica.

**Desde el Punto de Venta (devolución de producto):**

Si la orden de venta y el tipo de documento de devolución están configurados para generar un e-Remito, el sistema crea automáticamente el Contra e-Remito al procesar la devolución desde el POS, sin pasos adicionales.

---

## Contra Resguardo

### ¿Qué es?

El Contra Resguardo es el documento que anula un e-Resguardo ya emitido y enviado a InvoiCy. Al igual que el Contra e-Remito, tiene valor negativo y referencia el resguardo original.

### Cómo generar un Contra Resguardo

1. Abrir el e-Resguardo que se desea anular.
2. Ejecutar la acción de anular el documento.
3. El sistema genera automáticamente el Contra Resguardo con el monto en negativo y la referencia al resguardo original.
4. El Contra Resguardo se envía automáticamente a InvoiCy.

::: tip
El Contra Resguardo se puede imprimir desde la ventana de Resguardos. El documento impreso muestra los totales en negativo y la referencia al resguardo original.
:::

---

## Ejemplo

**e-Remito original**: RMITO-166 por 5 unidades de un producto.
Al anularlo, el sistema genera **CRMITO-167** con −5 unidades y referencia al RMITO-166. El documento queda disponible para impresión y verificación en el portal del proveedor.

**e-Resguardo original**: A1601 por $1.207.
Al anularlo, el sistema genera **A1621** con −$1.207 y referencia al A1601.

---

## Documentación relacionada

- [Retenciones y Resguardos](withholding)
- [Emisión de Comprobantes Fiscales Electrónicos](issuance)
- [Configuración de Comprobantes Fiscales Electrónicos](configuration)
