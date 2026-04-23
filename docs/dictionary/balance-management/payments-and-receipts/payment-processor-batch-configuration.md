---
title: Configuración de Lote de Procesador de Pago
category: Documentation
star: 9
sticky: 9
article: false
---

# Configuración de Lote de Procesador de Pago

## Descripción

La ventana **Configuración de Lote de Procesador de Pago** define los parámetros que el sistema usa para generar automáticamente los lotes de liquidación y los documentos asociados (tarifas, retenciones y documentos por cobrar hacia el procesador). Cada registro representa a un procesador de pagos (por ejemplo, una red de tarjetas de crédito o una pasarela de pago) con su socio de negocio, cargos, tipos de documento y cuentas bancarias habilitadas.

A partir de esta configuración, al cerrar la caja de un punto de venta con el procesador correspondiente, el sistema sabe qué tipo de documento generar para cada concepto, qué cargos aplicar y a qué cuenta bancaria acreditar el monto neto.

## ¿Cuándo se utiliza?

Se utiliza cuando la organización necesita:

- Habilitar un nuevo procesador de pagos en el sistema (tarjetas de crédito, débito, pasarela online).
- Definir cargos de comisión y retención aplicables a cada procesador.
- Especificar los tipos de documento que se generarán para tarifas, retenciones y documentos por cobrar.
- Asociar el procesador a una o varias cuentas bancarias donde se recibirán las acreditaciones.
- Ajustar la configuración cuando cambian las condiciones comerciales con el procesador.

## Acceso

Menú: **Gestión de Saldos Pendientes → Pagos y Cobros → Configuración de Lote de Procesador de Pago**

## Pestañas

### Configuración de Lote de Procesador de Pago

Pestaña principal con los datos del procesador. La información relevante incluye:

- **Clave de Búsqueda**
  Identificador interno del procesador dentro del sistema.

- **Socio del Negocio**
  Proveedor al que se le paga la tarifa y la retención (por ejemplo, la red de tarjetas).

- **Dirección del Socio**
  Dirección del proveedor utilizada en los documentos por pagar generados.

- **Cargo por Comisión**
  Cargo contable aplicado al documento por pagar de la tarifa. Suele no llevar IVA.

- **Cargo por Retención**
  Cargo contable aplicado al documento por pagar de la retención. Puede llevar IVA configurado.

- **Cargo Factura de Venta**
  Cargo que se usa en el documento por cobrar generado por cada cuota del programa de pago del lote.

- **Moneda para Comisión**
  Moneda en la que se expresan los cargos del procesador.

- **Tipo Doc. Factura Compra**
  Tipo de documento usado al generar el documento por pagar de la tarifa al procesador.

- **Tipo Doc. Factura Venta**
  Tipo de documento usado al generar el documento por cobrar al procesador por cada cuota.

- **Tipo Doc. Retención**
  Tipo de documento usado al generar el documento por pagar de la retención.

### Línea de Configuración

Habilita el procesador en una o varias cuentas bancarias. Cada línea contiene:

- **Configuración de Lote**
  Referencia a la configuración principal.

- **Cuenta Bancaria**
  Cuenta bancaria destino donde el procesador acreditará los montos liquidados. Si el procesador liquida sobre varias cuentas (por moneda u organización), se agregan líneas adicionales.

## Acciones disponibles

- **Agregar Cuenta Bancaria**
  Asocia una nueva cuenta bancaria al procesador desde la pestaña *Línea de Configuración*.

- **Activar / Desactivar**
  Habilita o deshabilita la configuración sin eliminarla. Las configuraciones inactivas no se usan para generar lotes nuevos.

## Flujo del proceso

### 1. Crear el socio de negocio del procesador

Antes de configurar, asegurar que el procesador existe como socio de negocio (proveedor) con su dirección y datos comerciales.

### 2. Crear los cargos necesarios

Definir los cargos contables de comisión, retención y factura de venta con sus cuentas contables y reglas de IVA correspondientes.

### 3. Crear los tipos de documento asociados

Crear los tipos de documento para factura de compra, factura de venta y retención del procesador si aún no existen en el sistema.

### 4. Crear la configuración

En la ventana **Configuración de Lote de Procesador de Pago**, crear un registro con la clave de búsqueda, el socio del negocio, los tres cargos, la moneda y los tipos de documento.

### 5. Asociar las cuentas bancarias

En la pestaña *Línea de Configuración*, agregar las cuentas bancarias donde el procesador acreditará las liquidaciones. Agregar una línea por cada cuenta bancaria habilitada.

### 6. Activar la configuración

Marcar la configuración como activa. Desde ese momento, al cerrar caja con ese procesador se utilizará esta configuración para generar el lote y sus documentos.

## Ejemplo de uso

Habilitar un procesador de tarjetas nuevo:

1. Crear el socio de negocio *Procesador Tarjetas S.A.* con su dirección de facturación.
2. Crear los cargos:
   - *Comisión Tarjetas* (sin IVA) → cuenta *Gastos Comerciales de Comisiones*.
   - *Retención Tarjetas* (con IVA) → cuenta *Retenciones Impositivas*.
   - *Acreditación Tarjetas* → cuenta de crédito del procesador.
3. Crear los tipos de documento *Factura Compra Tarjetas*, *Nota de Crédito Tarjetas* y *Factura Venta Tarjetas*.
4. En **Configuración de Lote de Procesador de Pago**, crear el registro con socio *Procesador Tarjetas S.A.*, los tres cargos, moneda local y los tres tipos de documento.
5. Agregar en *Línea de Configuración* la cuenta bancaria donde el procesador acredita el dinero.
6. Marcar activo. Al cerrar caja con este procesador, el lote se generará usando estos parámetros.

## Consideraciones importantes

- La configuración es **por procesador**, no por moneda ni por organización. Si dos organizaciones comparten el mismo procesador, basta con agregar las cuentas bancarias correspondientes en la pestaña *Línea de Configuración*.
- Los **cargos** asignados aquí son los únicos que el sistema aplicará al generar documentos del procesador. Si se modifican, los lotes nuevos tomarán la nueva definición; los lotes ya emitidos conservan la original.
- El **Cargo por Retención** habitualmente lleva IVA configurado; el **Cargo por Comisión** suele no llevarlo. Validar con el área contable para asegurar la correcta registración fiscal.
- Los **tipos de documento** deben coincidir con los tipos base esperados (factura de compra para tarifas y retenciones, factura de venta para la acreditación). Si se usan tipos incorrectos, los documentos generados pueden contabilizar mal.
- La relación entre procesador y **cuenta bancaria** es uno-a-muchos: un procesador puede acreditar en varias cuentas. Cada cuenta debe existir y estar activa en el sistema.
- Desactivar la configuración detiene la generación de lotes nuevos pero no afecta los lotes ya creados; estos se siguen completando con la configuración original.

## Ventanas relacionadas

- [Lote de Procesador de Pagos](payment-processor-batch)
- [Cierre de Lote de Procesador de Pagos](processor-batch-closing)
- [Generar Cobros de Facturas de Procesador de Pagos](generate-payments-for-processor-batch-invoices)
- [Reporte Lote de Procesador de Pagos](payment-processor-batch-payment-report)
