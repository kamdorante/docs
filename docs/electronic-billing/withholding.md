---
title: Retenciones y Resguardos
category: Documentation
star: 9
sticky: 9
article: false
---

Este módulo permite configurar, aplicar y gestionar las retenciones fiscales y los resguardos generados automáticamente al procesar documentos por pagar en Solop ERP. Las funcionalidades están orientadas a cumplir con las normativas fiscales, automatizar procesos y asegurar la trazabilidad contable.

---

## Configuración de Retenciones

La ventana **Definición de Retenciones** permite configurar los tipos de retenciones requeridos por DGI y también retenciones personalizadas.

### Datos del Registro (Cabezal)

- **Código**: Código fiscal oficial utilizado en el CFE.
- **Nombre**: Nombre descriptivo de la retención.
- **Tipo de Retención**: Tipo interno definido en el sistema.
- **WHAmtType**: Base imponible de la retención (total, subtotal, o impuesto).
- **Porcentaje**: Tasa de retención (0-100%).
- **Monto máximo**: Monto tope a retener.

![Mono registro](/assets/img/docs/balance-management/bam-ret1.png)  
![Multi registro](/assets/img/docs/balance-management/bam-ret2.png)

### Pestañas Complementarias

- **Documentos a Aplicar**: Define sobre qué tipo de documentos (ej. Factura Proveedor) se aplicará la retención.  
  ![Doc aplicar](/assets/img/docs/balance-management/bam-ret3.png)

- **Proveedores**: Indica qué socios del negocio están alcanzados por la retención.  
  Esta relación también se puede consultar desde la pestaña *Retenciones* en la ventana “Socio del Negocio”.  
  ![Proveedores](/assets/img/docs/balance-management/bam-ret4.png)

---

## Aplicación de Retenciones

Cuando se completa un documento por pagar, el sistema:

1. Verifica si el proveedor tiene retenciones asociadas.
2. Si cumple los criterios, *genera automáticamente la retención* al completar la factura.

Estas retenciones quedan vinculadas al documento original y se puede navegar desde:

> **Documentos relacionados** (barra de herramientas del documento por pagar)

![Retención automática](/assets/img/docs/balance-management/bam-ret5.png)  
![Relación documento](/assets/img/docs/balance-management/bam-ret6.png)


* Las retenciones también pueden consultarse desde:  

- Ventana **Definición de Retenciones**  
- Ventana **Socio del Negocio** > Pestaña *Proveedor* > Subpestaña *Retención*

---

## Ventanas de Retenciones

El sistema cuenta con dos ventanas dedicadas para consultar las retenciones según su naturaleza:

- **Retenciones por Pagar**: muestra las retenciones generadas desde documentos por pagar. Filtra automáticamente los documentos según los tipos configurados en *Definición de Retenciones* y en *Tipo de Retención*.
- **Retenciones por Cobrar**: muestra las retenciones que los clientes aplican sobre las facturas emitidas por la empresa.

Ambas ventanas incluyen los campos de facturación electrónica y la bitácora del documento electrónico, lo que permite verificar el estado de envío de cada resguardo directamente desde el registro.

---

## Resguardos

Los **resguardos** se generan en base a las retenciones aplicadas. Funcionan como una **Nota de Crédito Proveedor** y se gestionan desde el proceso:

* Generar Resguardos Masivos

### Filtros disponibles

- Socio del Negocio
- Organización
- Fecha del Documento
- Tipo de Retención
- Factura fuente

![Generar resguardos](/assets/img/docs/balance-management/bam-ret7.png)

### Características

- Se generan a partir de **Documentos Retención** completos.
- Se pueden preparar o completar inmediatamente.
- Los resguardos se visualizan en la ventana **Resguardos**.

::: tip
Los resguardos siempre se generan en *moneda local*, convertida con la *tasa de cambio* del documento por pagar.
:::

### Opción de Consolidación

Al ejecutar el proceso, se puede activar la opción **Consolidar**:

- **Sin consolidación**: se genera un resguardo independiente por cada línea de retención seleccionada.
- **Con consolidación**: agrupa las retenciones del mismo socio de negocio y moneda en un único documento con múltiples líneas.

### Integración con Facturación Electrónica

::: tip
Para que el resguardo se envíe automáticamente al proveedor de facturación electrónica al completarse, el tipo de documento debe tener habilitado: **Facturación Electrónica**, el indicador **Retención** activo y la opción **Enviar después de Completar**.
:::

### Impresión

Desde la ventana de **Resguardos**, acceder a la opción:

> `Impresión de Resguardo`

---

## Asignación de Resguardos

Un resguardo puede aplicarse de dos maneras:

- En un **Recibo de Pago** como **Nota de Crédito Proveedor**.
- En una **Selección de pagos**, aplicando el monto a cancelar.

---

## Contra-Resguardos

Si se anula un resguardo ya completo y enviado a InvoiCy, el sistema:

- Genera automáticamente un **Contra-Resguardo** (negativo del original).
- Se enlaza al documento original mediante el campo `Reversal_ID`.

::: tip
El Contra-Resguardo se envía automáticamente a InvoiCy al anular el documento original.
:::

---

## Resguardos Recibidos

Cuando un cliente descuenta un resguardo en un **Recibo de Cobro**, se debe registrar desde la ventana correspondiente:

1. Usar botón **Cobro Contado**
2. Completar los campos:
   - **Regla de Pago**: `Resguardo`
   - **Cuenta Bancaria**: `Retenciones Recibidas`

La cuenta bancaria debe estar configurada con la cuenta contable correspondiente a retenciones recibidas.

---

## Beneficios del Módulo

- ✔️ Cumplimiento Fiscal Automatizado
- ✔️ Trazabilidad de Retenciones y Resguardos
- ✔️ Aplicación automática en facturas proveedor
- ✔️ Emisión de CFE y reporte en moneda local
- ✔️ Gestión desde documentos relacionados