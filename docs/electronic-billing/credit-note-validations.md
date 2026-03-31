---
title: Validaciones en Notas de Crédito Electrónicas
category: Documentation
star: 9
sticky: 9
article: false
---

Al emitir una nota de crédito electrónica que referencia una o varias facturas, el sistema aplica validaciones automáticas para garantizar que la información enviada al proveedor de facturación electrónica sea consistente y correcta. Estas validaciones evitan errores de rechazo en el proveedor y aseguran la integridad fiscal del documento.

---

## Validaciones aplicadas al relacionar documentos

Antes de completar la nota de crédito, el sistema verifica:

- **Misma moneda**: la nota de crédito y todos sus documentos referenciados deben estar denominados en la misma moneda. Si hay diferencias, el sistema impide relacionar el documento y muestra un error.
- **Misma tasa de cambio**: la tasa de cambio de la nota de crédito debe coincidir con la de cada documento referenciado. Esta validación garantiza que la información enviada al proveedor sea coherente.
- **Sin referencias duplicadas**: el proveedor de facturación no permite dos referencias que apunten al mismo documento, tipo y serie. Por eso, cuando hay varias líneas asignadas al mismo documento en la pestaña **Facturas a Asignar**, el sistema las agrupa automáticamente en una sola referencia, sumando los montos.

---

## Información enviada en las referencias

Al completar la nota de crédito, el sistema envía al proveedor los siguientes datos por cada documento referenciado:

- **Monto del documento referenciado**: es el monto asignado desde la nota de crédito a ese documento en particular, no el total original de la factura.
- **Moneda del documento referenciado**: moneda en que está denominado el documento original.
- **Cotización / Tasa**: tasa de cambio del documento referenciado, que debe coincidir con la de la nota de crédito.

::: warning
El monto que se envía al proveedor es el **monto asignado** desde la nota de crédito al documento referenciado. Si la nota de crédito cubre parcialmente una factura, solo se reporta el monto parcial, no el total de la factura.
:::

---

## Cómo funciona paso a paso

1. Crear la nota de crédito e indicar los documentos a referenciar.
2. El sistema valida automáticamente que todos los documentos referenciados tengan la misma moneda y tasa de cambio.
3. Si algún documento tiene una moneda o tasa diferente, el sistema muestra un error e impide relacionarlo.
4. Si hay varias líneas del mismo documento en la pestaña **Facturas a Asignar**, el sistema las agrupa y suma automáticamente al enviar.
5. Al completar la nota de crédito, se envía al proveedor con la cotización y los montos correctos.

---

## Ejemplo

Una nota de crédito en dólares referencia dos facturas:

- **Factura A** — misma moneda y tasa de cambio → el sistema la incluye correctamente en las referencias.
- **Factura B** — misma moneda pero tasa de cambio diferente → el sistema muestra error al intentar relacionarla.

Si la factura A tiene tres líneas y se seleccionan dos de ellas en **Facturas a Asignar**, el sistema envía una sola referencia al proveedor con la suma de los dos montos seleccionados.

---

## Documentación relacionada

- [Validación de Tasa de Cambio en Documentos Referenciados](exchange-rate-referenced-documents)
- [Retenciones y Resguardos](withholding)
- [Emisión de Comprobantes Fiscales Electrónicos](issuance)
