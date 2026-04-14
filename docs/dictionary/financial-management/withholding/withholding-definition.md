---
title: Definición de Retenciones
category: Documentation
star: 9
sticky: 9
article: false
---

# Definición de Retenciones

## Descripción

La ventana **Definición de Retenciones** determina el comportamiento de una retención fiscal (IVA, Impuesto Sobre la Renta y otras) dentro del sistema. Aquí se configuran las retenciones que se aplicarán automáticamente a los documentos por pagar al completar la factura, así como las que se registran desde documentos por cobrar cuando el cliente aplica retenciones sobre lo facturado.

Cada retención definida establece el código fiscal, la base de cálculo, el porcentaje aplicable, los tipos de documento sobre los que opera y los socios de negocio alcanzados. A partir de esta configuración, el sistema genera automáticamente los documentos de retención y habilita la posterior emisión del **resguardo** correspondiente.

## ¿Cuándo se utiliza?

Se utiliza cuando la organización necesita:

- Configurar las retenciones obligatorias exigidas por el organismo fiscal (por ejemplo, DGI).
- Definir retenciones personalizadas aplicables a determinados proveedores o tipos de documento.
- Activar o desactivar retenciones según la operatoria de cada organización dentro de la compañía.
- Asociar socios de negocio específicos a una retención para que el cálculo sea automático al completar la factura.
- Integrar la retención con la facturación electrónica para emisión automática del resguardo.

## Acceso

Menú: **Gestión Financiera → Retenciones → Definición de Retenciones**

## Pestañas

### Definición de Retenciones

Pestaña principal donde se configura cada retención. La información se organiza en:

- **Código y Nombre**
  Código fiscal oficial utilizado en el comprobante electrónico y nombre descriptivo de la retención.

- **Tipo de Retención**
  Clasificación interna que agrupa las retenciones según su naturaleza (IVA, Renta, etc.) y define el comportamiento técnico asociado.

- **Base Imponible**
  Indica sobre qué monto se calcula la retención: total del documento, subtotal o impuesto.

- **Porcentaje y Monto Máximo**
  Tasa de retención (0–100%) y tope máximo a retener cuando aplique.

- **Cargo**
  Cargo contable donde se registra la retención realizada. Permite definir la contabilidad asociada al movimiento.

- **Activo**
  Indicador de si la retención está habilitada para la organización. Cada organización activa únicamente las retenciones que requiere utilizar.

### Documentos a Aplicar

Define los tipos de documento sobre los cuales se aplicará la retención (por ejemplo, Factura de Proveedor). Puede configurarse con asterisco (`*`) para cubrir todos los tipos de documento de la organización, o restringirse a una organización específica.

### Proveedores

Lista de socios de negocio alcanzados por esta retención. Al completar una factura de un proveedor incluido aquí, el sistema calcula y genera la retención de forma automática. La misma relación puede consultarse desde la ventana **Socio del Negocio**, pestaña *Proveedor*, subpestaña *Retención*.

## Acciones disponibles

- **Activar / Desactivar**
  Controla si la retención está disponible en la organización actual.

- **Asociar Proveedores**
  Agrega socios de negocio a la retención desde la pestaña *Proveedores*.

- **Definir Documentos**
  Especifica los tipos de documento sobre los que se aplicará la retención desde la pestaña *Documentos a Aplicar*.

## Flujo del proceso

### 1. Definir la retención

Crear el registro en la pestaña principal indicando código, nombre, tipo, base imponible, porcentaje, monto máximo y cargo contable.

### 2. Configurar documentos y proveedores

En la pestaña *Documentos a Aplicar*, seleccionar los tipos de documento sobre los que opera la retención. En *Proveedores*, asociar los socios de negocio correspondientes.

### 3. Completar la factura del proveedor

Al completar una factura de un proveedor incluido en la retención, el sistema genera automáticamente un **Documento de Retención**. El documento queda vinculado a la factura original y puede consultarse desde **Documentos Relacionados**.

### 4. Verificar la retención generada

Revisar el documento de retención para validar el monto base, el porcentaje aplicado y el importe retenido. La retención puede consultarse también desde las ventanas **Retenciones por Pagar** o **Retenciones por Cobrar**, según corresponda.

### 5. Generar el resguardo

Ejecutar el proceso **Generar Retenciones** desde el visor correspondiente. Seleccionar las retenciones pendientes y elegir si se consolidan por socio de negocio y moneda o se genera un documento por cada línea.

### 6. Emitir el comprobante electrónico

Cuando el tipo de documento de resguardo tiene habilitada la facturación electrónica, el indicador **Retención** y la opción **Enviar después de Completar**, el resguardo se envía automáticamente al proveedor de facturación electrónica al completarse.

## Ejemplo de uso

Una organización debe configurar una retención del 7% sobre las facturas de un proveedor de servicios de alquiler:

1. Abrir **Definición de Retenciones** y crear un registro con el código fiscal oficial y el porcentaje 7%.
2. En la pestaña *Documentos a Aplicar*, seleccionar **Factura de Proveedor**.
3. En la pestaña *Proveedores*, agregar al proveedor alcanzado.
4. Crear una factura de proveedor con un cargo de alquiler por 10.000 y completarla.
5. Desde **Documentos Relacionados** de la factura, verificar que se generó automáticamente el documento de retención por 700 (7% de 10.000).
6. Ejecutar el proceso **Generar Retenciones**, seleccionar la retención y completarla para emitir el resguardo.
7. Verificar en la ventana **Resguardos** que el documento quedó registrado y, si corresponde, que fue enviado al proveedor de facturación electrónica.

## Consideraciones importantes

- El **Tipo de Retención** define la clase de cálculo asociada a la retención. Si esta clase se modifica incorrectamente, la retención puede dejar de generarse automáticamente al completar la factura.
- El **Documento a Aplicar** acepta asterisco (`*`) para cubrir todos los tipos de documento de la organización o puede restringirse a una organización específica.
- Los tipos de documento de retención utilizados desde **transacciones de venta** deben estar marcados como *Transacción de Venta* en su configuración. De lo contrario, la retención no se generará correctamente.
- El documento de retención es un documento interno: no se envía al proveedor de facturación electrónica. Lo que se envía es el **resguardo** generado posteriormente.
- Los resguardos siempre se generan en moneda local, convertidos con la tasa de cambio vigente del documento por pagar.
- La opción **Consolidar** al generar resguardos agrupa varias retenciones del mismo socio de negocio y moneda en un único documento con múltiples líneas; sin esta opción, se genera un resguardo por cada retención seleccionada.
- Si un resguardo completo se anula, el sistema genera automáticamente un **Contra-Resguardo** (negativo del original) y lo vincula mediante el campo de reversión.

## Ventanas relacionadas

- [Tipo de Retención](./withholding-type)
- [Retenciones por Pagar](./withholding-vendor)
- [Retenciones por Cobrar](./withholding-customer)
- [Generar Retenciones](./browser-generate-withholding)
