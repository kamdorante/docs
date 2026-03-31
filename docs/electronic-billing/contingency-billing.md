---
title: Facturación de Contingencia
category: Documentation
star: 9
sticky: 9
article: false
---

La facturación de contingencia permite emitir comprobantes fiscales electrónicos de forma manual cuando el servicio del proveedor de facturación no está disponible. En lugar de esperar la respuesta del proveedor, el usuario ingresa manualmente el número del comprobante físico ya emitido y el sistema lo registra y envía cuando el servicio vuelva a estar en línea.

---

## ¿Cuándo se utiliza?

Se utiliza cuando:

- El proveedor de facturación electrónica (por ejemplo, InvoiCy) no está disponible temporalmente.
- Se emitió un comprobante en papel durante una contingencia y debe registrarse en el sistema.
- La operación no puede detenerse y el documento debe quedar documentado independientemente de la conectividad.

---

## Configuración necesaria

Antes de utilizar la facturación de contingencia, un administrador debe realizar las siguientes configuraciones:

### 1. Crear los Tipos de Documento de Contingencia

Se debe crear un tipo de documento de contingencia para cada comprobante que pueda emitirse en ese modo: e-Ticket, e-Factura, nota de crédito, nota de débito, e-Remito, e-Resguardo, entre otros.

Cada tipo de documento de contingencia se configura como una copia del tipo de documento electrónico correspondiente, con una diferencia clave: el **Tipo de Transacción Fiscal** debe establecerse como **Contingencia**.

### 2. Configurar el Tipo de Documento de Orden (POS)

En el tipo de documento de la orden de venta o distribución que generará el comprobante de contingencia:

- Activar el campo **Genera Documento Manual**.
- En el campo **Tipo de Documento para la Factura**, seleccionar el tipo de contingencia correspondiente.

### 3. Configurar el Grupo de Impuestos

En la ventana **Grupo de Impuestos**, asignar los tipos de documentos de contingencia en los campos correspondientes a factura manual, nota de crédito manual y nota de débito manual. Esto permite que el sistema seleccione automáticamente el tipo correcto según el socio de negocio.

### 4. Habilitar al agente en el Terminal PDV

En **Terminal PDV → Vendedores Asignados**, activar el campo **Permite Crear Documentos Manuales** para los agentes comerciales que deban operar en modo contingencia.

En la sección **Asignación de Tipo de Documento** del terminal, asignar el tipo de orden manual correspondiente.

---

## Cómo emitir un comprobante de contingencia

1. En el Punto de Venta, cambiar el **Tipo de Documento** al tipo de contingencia configurado (por ejemplo, "e-Ticket Contingencia").
2. Registrar la venta normalmente y proceder al cobro.
3. El sistema solicita ingresar el **número del comprobante** del documento físico ya emitido.
4. Si el comprobante genera un e-Remito, el sistema también solicitará el **número de entrega**.
5. Confirmar y procesar el documento.
6. El sistema lo envía al proveedor de facturación electrónica marcado como documento de contingencia.

---

## Verificación del envío

Una vez procesado, el documento puede verificarse desde la **Bitácora de Documento Electrónico**. Allí se registra el número de serie, la información fiscal del comprobante y el estado del envío.

::: warning
Los documentos de contingencia **no generan un PDF descargable automáticamente** desde el proveedor, ya que se asume que el comprobante fue impreso físicamente antes de ser ingresado al sistema.
:::

::: tip
El comprobante puede validarse en el portal del proveedor de facturación electrónica una vez que el sistema esté de nuevo en línea.
:::

---

## Documentación relacionada

- [Configuración de Comprobantes Fiscales Electrónicos](configuration)
- [Emisión de Comprobantes Fiscales Electrónicos](issuance)
- [Bitácora de Documento Electrónico](../dictionary/electronic-billing/electronic-document-log)
