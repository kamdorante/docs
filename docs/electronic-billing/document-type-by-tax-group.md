---
title: Tipo de Documento según Grupo de Impuestos
category: Documentation
star: 9
sticky: 9
article: false
---

El sistema selecciona automáticamente el tipo de documento electrónico correcto (e-Ticket, e-Factura, etc.) al guardar una factura, en función del **Grupo de Impuestos** asociado al socio de negocio. Esto evita errores de tipo de documento y elimina la necesidad de selección manual en cada operación.

---

## Requisito: activar facturación electrónica en la organización

Para que la selección automática funcione, la organización debe tener activo el campo **Maneja Facturación Electrónica** en **Información de la Organización**.

::: warning
Si este campo no está activado, el validador de tipo de documento no se ejecuta y el sistema no corregirá automáticamente el tipo de comprobante. Luego de activarlo, se debe reiniciar el caché de la organización para que el cambio tome efecto.
:::

---

## ¿Cómo determina el sistema el tipo de documento?

Al guardar o generar una factura, el sistema revisa el **Grupo de Impuestos** del socio de negocio y asigna automáticamente el tipo de documento correspondiente:

| Tipo de socio de negocio | Tipo de documento asignado |
|--------------------------|---------------------------|
| Persona física (cédula) | e-Ticket |
| Persona jurídica (RUT o empresa) | e-Factura |
| Documento sin tipo de transacción fiscal configurado | Se trata como Factura y busca el tipo en el Grupo de Impuestos |

Este comportamiento aplica también a las **Facturas en Lote**: al guardar, el sistema aplica el mismo mecanismo de selección para cada documento generado.

---

## Documentos sin configuración electrónica

Si se utiliza un tipo de documento que no tiene configurado un Tipo de Transacción Fiscal (como un cheque diferido, por ejemplo), el sistema lo trata internamente como una **Factura** y busca el tipo de documento correspondiente en el Grupo de Impuestos del socio. Esto garantiza que el comprobante siempre se emita con el tipo correcto, incluso cuando la configuración del tipo de documento no es completa.

---

## Ejemplo

Un usuario emite una factura para un cliente con cédula. Aunque el tipo de documento de la orden estaba configurado como "Factura", al guardar el sistema detecta que el socio es una persona física y cambia automáticamente el tipo a **e-Ticket**.

Lo mismo ocurre al generar facturas desde el proceso de **Facturación en Lote**: cada factura adopta el tipo de comprobante que corresponde al socio de negocio, sin intervención manual.

---

## Documentación relacionada

- [Configuración de Comprobantes Fiscales Electrónicos](configuration)
- [Comprobantes Fiscales Electrónicos](cfe-documents)
- [Facturación de Contingencia](contingency-billing)
