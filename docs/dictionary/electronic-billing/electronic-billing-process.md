---
title: Proceso de Facturación Electrónica
category: Documentation
star: 9
sticky: 9
article: false
---

# Proceso de Facturación Electrónica

## Descripción

El **Proceso de Facturación Electrónica** centraliza el envío de documentos fiscales (facturas, notas de crédito, notas de débito, tickets, boletas, remitos) al proveedor de facturación electrónica del país y, a través de él, al organismo fiscal correspondiente. El sistema determina automáticamente el tipo de documento electrónico aplicable según el grupo de impuestos del socio de negocio, envía el documento al completarlo (si así está configurado) y registra la respuesta (CFE, QR, código de seguridad, URL de descarga) en la bitácora del documento electrónico.

El proceso cubre el ciclo completo: configuración del tipo de documento y del socio, emisión y envío, impresión del comprobante fiscal, manejo de rechazos o anulaciones, y emisión de notas de crédito con referencia a la factura original.

## ¿Cuándo se utiliza?

Se utiliza cuando la organización necesita:

- Emitir documentos fiscales electrónicos a clientes cumpliendo la normativa del país.
- Enviar automáticamente al proveedor de facturación electrónica cada documento al completarlo.
- Asegurar que el tipo de documento emitido (eFactura, eTicket, eBoleta, nota de crédito electrónica, etc.) se seleccione según el grupo de impuestos del socio.
- Consultar el resultado del envío, el número fiscal asignado y la URL del comprobante.
- Reenviar un documento rechazado o anular un CFE aceptado mediante el proceso estándar del sistema.
- Emitir notas de crédito electrónicas vinculadas correctamente a la factura original.

## Acceso

Existen varios puntos de acceso según la tarea:

1. **Documento emisor:** Gestión de Ventas → Facturas de Venta → Factura (Cliente) o Punto de Venta.
2. **Bitácora del documento electrónico:** pestaña *Bitácora de Documento Electrónico* dentro del documento por cobrar.
3. **Configuración del tipo de documento:** Definición → Tipo de Documento.
4. **Configuración por grupo de impuestos:** Socio del Negocio → Grupo de Impuestos.
5. **Reenvío autorizado:** Gestión de Ventas → Facturas de Venta → Autorizar Documento por Cobrar.
6. **Envío manual:** Facturación Electrónica → Enviar Factura al Emisor Fiscal.

## Configuración previa

### Tipo de Documento

Cada tipo de documento que se emita como CFE debe tener configurado lo siguiente:

- **Maneja Facturación Electrónica** = Sí.
- **Tipo de Documento Fiscal**: clasificación según la entidad fiscal del país (eFactura, eTicket, eBoleta, Nota de Crédito, etc.).
- **Enviar después de Completar**: indica si el envío al proveedor fiscal se dispara al completar el documento.

### Grupo de Impuestos

El grupo de impuestos define qué tipo de documento electrónico corresponde a cada combinación fiscal. Cada grupo tiene asignados tipos de documento para *Factura* y *Nota de Crédito* (por ejemplo: *eFactura + eFactura NC*, *eTicket + eTicket NC*, *eBoleta + eBoleta NC*).

Al seleccionar el socio de negocio en un documento, el sistema lee el grupo de impuestos del socio y asigna automáticamente el tipo de documento correcto.

### Socio del Negocio

- **Grupo de Impuestos**: campo obligatorio para que la selección automática del tipo de documento funcione.
- **Término de Pago**: se hereda al documento emitido.

## Pestañas (Documento por Cobrar)

### Cabezal del Documento

Encabezado del documento electrónico. Los campos relevantes para facturación electrónica son:

- **Tipo de Documento**
  Seleccionado automáticamente según el grupo de impuestos del socio. Puede cambiarse manualmente si corresponde.

- **Factura Asignada**
  Campo obligatorio en notas de crédito. Referencia la factura original a la que la nota de crédito corresponde. Sin este dato, la nota de crédito no puede enviarse al proveedor fiscal.

- **Descripción y Adenda**
  Información adicional que se envía al CFE. La adenda es el comentario fiscal que aparece en el comprobante.

### Líneas

Líneas del documento con producto, cantidad, precio e impuesto. Son la base del cálculo del CFE.

### Bitácora de Documento Electrónico

Respuestas del proveedor fiscal para cada intento de envío. Incluye:

- **Número de Secuencia Fiscal**
  Número asignado por el facturador electrónico al aceptar el CFE.

- **Código de Seguridad**
  Código de validación del comprobante.

- **Código QR**
  Representación gráfica del CFE para validación por terceros.

- **URL de Descarga**
  Dirección desde la cual se obtiene el comprobante PDF firmado.

- **Mensajes y Respuesta**
  Detalle de la respuesta del proveedor fiscal. En caso de error, contiene la causa devuelta por el organismo fiscal.

### Facturas Asignadas

Listado de facturas referenciadas desde una nota de crédito. Inicialmente soporta una relación uno-a-uno; las futuras extensiones permitirán múltiples asignaciones desde una misma nota de crédito.

## Acciones disponibles

- **Completar**
  Finaliza el documento y, si el tipo de documento tiene *Enviar después de Completar = Sí*, dispara el envío al proveedor fiscal.

- **Enviar Factura al Emisor Fiscal**
  Envía manualmente el documento al proveedor fiscal cuando el envío automático no se disparó o se necesita reintentar.

- **Imprimir Comprobante**
  Acción principal para obtener el comprobante fiscal impreso. Descarga el PDF firmado desde el proveedor fiscal y lo adjunta al documento.

- **Autorizar Documento por Cobrar**
  Permite dos tipos de autorización sobre un documento ya emitido: *Anular* (cuando el CFE fue rechazado por la entidad fiscal) o *Enviar* (para habilitar un nuevo envío).

- **Ver URL de Descarga**
  Abre la representación impresa del CFE en el navegador directamente desde el proveedor fiscal.

## Flujo del proceso

### 1. Configurar tipos de documento y grupos de impuestos

Validar que los tipos de documento (eFactura, eTicket, Nota de Crédito, etc.) tengan *Maneja Facturación Electrónica = Sí*, *Tipo de Documento Fiscal* y *Enviar después de Completar = Sí*. En cada **Grupo de Impuestos**, definir los tipos de documento para factura y nota de crédito.

### 2. Configurar el socio de negocio

Asignar al socio el **Grupo de Impuestos** correcto. Esto es lo que habilita la selección automática del tipo de documento al crear una factura.

### 3. Crear el documento por cobrar

Crear una factura, seleccionar el socio de negocio y confirmar que el sistema asignó automáticamente el tipo de documento electrónico adecuado (eFactura, eTicket, eBoleta, etc.). Completar las líneas del documento.

### 4. Completar el documento

Ejecutar la acción **Completar**. Si el tipo de documento tiene *Enviar después de Completar = Sí*, el sistema envía el documento al proveedor fiscal automáticamente. Si no, puede ejecutarse manualmente con **Enviar Factura al Emisor Fiscal** o procesarse desde una cola de ejecución.

### 5. Verificar la respuesta del proveedor fiscal

Abrir la pestaña **Bitácora de Documento Electrónico** y confirmar que la respuesta incluye número de secuencia fiscal, código de seguridad, QR y URL de descarga. Si hay error, revisar el mensaje devuelto.

### 6. Imprimir el comprobante

Ejecutar **Imprimir Comprobante** para obtener el PDF firmado por el proveedor fiscal. El archivo queda adjunto al documento y puede abrirse desde la URL de descarga para validación visual.

### 7. Emitir una nota de crédito (si corresponde)

Crear la nota de crédito seleccionando el tipo correcto (la nota de crédito electrónica asignada al grupo de impuestos). Asignar obligatoriamente la **Factura Asignada** en el cabezal; sin este dato, el envío fallará. Completar y enviar como el flujo estándar.

### 8. Manejar rechazos o anulaciones

Si la entidad fiscal rechaza un CFE, ejecutar **Autorizar Documento por Cobrar** con tipo *Anular* para liberar el documento o *Enviar* para rehabilitar el envío. Luego, volver a ejecutar **Enviar Factura al Emisor Fiscal**. El número de secuencia ya consumido no se reutiliza; la emisión toma el siguiente número del proveedor fiscal.

## Ejemplo de uso

Una organización emite una factura electrónica a un cliente con RUC:

1. Verificar que el tipo de documento *eFactura* tiene *Maneja Facturación Electrónica = Sí* y *Enviar después de Completar = Sí*.
2. Confirmar que el grupo de impuestos del cliente tiene asignado *eFactura* para Factura y *eFactura NC* para Nota de Crédito.
3. Crear un documento por cobrar, seleccionar el socio. El sistema asigna automáticamente el tipo *eFactura*.
4. Agregar una línea de producto con cantidad y precio. Guardar.
5. Ejecutar **Completar**. El sistema envía la factura al proveedor fiscal.
6. Abrir la **Bitácora de Documento Electrónico** y verificar número de secuencia, código de seguridad, QR y URL.
7. Ejecutar **Imprimir Comprobante** para adjuntar el PDF al documento.
8. Si posteriormente se necesita emitir una nota de crédito, copiar el documento cambiando el tipo a *eFactura NC*, asignar la **Factura Asignada** al original y completar; el sistema envía la NC referenciando la factura emitida.

## Consideraciones importantes

- El **Grupo de Impuestos** del socio es la clave que determina el tipo de documento electrónico aplicable. Si un socio no tiene grupo asignado, el tipo de documento debe seleccionarse manualmente.
- El **tipo de documento fiscal** no debe separarse por organización cuando la numeración es centralizada: se configura una única definición por instancia.
- **Enviar después de Completar = Sí** dispara el envío de forma inmediata al completar. Si está en *No*, el envío debe ejecutarse manualmente o mediante la cola programada.
- En notas de crédito, el campo **Factura Asignada** del cabezal es **obligatorio** para el envío. Sin este campo, el sistema no debería permitir completar la nota de crédito; si se completó sin asignación, la nota queda inconsistente.
- Cuando el proveedor fiscal asigna un **número de secuencia**, ese número queda vinculado al documento aunque el envío sea rechazado. Un nuevo envío consume la siguiente secuencia; nunca se reutilizan números ya emitidos.
- La acción **Imprimir Comprobante** es la única que genera el PDF firmado correctamente. Las demás opciones de impresión pueden existir por compatibilidad pero no deben utilizarse para comprobantes electrónicos.
- La **URL de Descarga** de la bitácora abre la representación impresa directa del proveedor fiscal; sirve para validación visual sin depender del adjunto local.
- Cuando un CFE es anulado por la entidad fiscal, se habilita la opción **Permitir Anular**; en el resto de los casos un CFE aceptado no puede anularse desde el ERP.
- La **adenda** y la **descripción** viajan en el CFE como información complementaria; revisar que no contengan datos que el emisor no quiera publicar en el comprobante.
- Las notas de crédito admiten actualmente una relación **uno-a-uno** con la factura original. Las múltiples asignaciones desde una misma NC se registran en la subpestaña *Facturas Asignadas* cuando se habilite el soporte extendido.

## Ventanas relacionadas

- [Bitácora de Documento Electrónico](electronic-document-log)
- [Tipo de Documento según Grupo de Impuestos](document-type-by-tax-group)
- [Notas de Crédito — Validaciones de Moneda y Tasa de Cambio](credit-note-currency-validations)
- [Tipos de Conversión para Facturación Electrónica](conversion-types)
- [Facturación de Contingencia](contingency-billing)
- [Contra e-Remito y Contra Resguardo](reverse-electronic-documents)
- [Retenciones en Facturación Electrónica](retentions-electronic-billing)
- [Importación de CFE Recibidos](get-electronic-invoices)
- [Enviar Factura al Emisor Fiscal](send-invoice-to-fiscal-sender)
- [Funcionalidades Complementarias](complementary-features)
