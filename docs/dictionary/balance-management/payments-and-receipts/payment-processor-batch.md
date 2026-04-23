---
title: Lote de Procesador de Pagos
category: Documentation
star: 9
sticky: 9
article: false
---

# Lote de Procesador de Pagos

## Descripción

La ventana **Lote de Procesador de Pagos** agrupa los cobros que una organización emite contra un procesador externo (por ejemplo, una liquidadora de tarjetas de crédito) dentro de un mismo ciclo de liquidación. Cada lote consolida los cobros realizados con un medio de pago específico y calcula la tarifa cobrada por el procesador, las retenciones aplicables y el importe neto a acreditar en la cuenta bancaria.

A partir del lote se generan automáticamente los documentos por pagar por tarifa y retención hacia el procesador, el programa de pagos (fechas en que el procesador acreditará los montos) y los documentos por cobrar asociados a cada vencimiento. Todo el flujo contable se conecta con la cuenta bancaria transitoria configurada en la caja para asegurar la trazabilidad entre el cobro original y la acreditación bancaria final.

## ¿Cuándo se utiliza?

Se utiliza cuando la organización necesita:

- Liquidar los cobros con tarjeta o con otro procesador externo agrupándolos por medio de pago y fecha.
- Calcular la tarifa y retención aplicada por el procesador y generar los documentos por pagar correspondientes.
- Definir el programa de acreditación con el que el procesador pagará al comercio (una o varias cuotas en fechas distintas).
- Generar los documentos por cobrar correspondientes a cada acreditación del procesador.
- Asegurar que el saldo de la caja transitoria se descargue correctamente al avanzar en el ciclo de liquidación.

## Acceso

Existen dos formas de acceder:

1. **Desde el menú:** Gestión de Saldos Pendientes → Pagos y Cobros → Lote de Procesador de Pagos.
2. **Desde un cobro:** abrir un cobro generado con el procesador configurado y usar la acción *Acercar a Lote de Procesador de Pagos* para navegar al lote asociado.

## Configuración previa

### Procesador de pagos en la cuenta de caja

En el **Diario de Caja → Cuenta de Caja**, el procesador de pagos debe tener completos:

- **Proveedor del procesador** (socio de negocio al que se le paga la tarifa).
- **Moneda y cargo para comisión**.
- **Cargo de retención**.
- **Tipo de documento por pagar** (para la tarifa), **tipo de documento de retención** y **tipo de documento por cobrar** (para la acreditación al comercio).
- **Banco** destino de la acreditación.

### Configuración de retiro de la caja

La caja asociada debe estar configurada con:

- **Cuenta bancaria para depositar** y **cuenta transitoria**.
- **Dividir Depósitos** activado.
- **Depositar automáticamente después de cerrar caja** habilitado para que el lote se genere al cerrar el punto de venta.

### Tipo de documento del lote

Debe existir un tipo de documento con tipo base *Lote de Procesador de Pagos*. La ventana usa este tipo al generar nuevos lotes desde el cierre de caja o manualmente desde el menú.

## Pestañas

### Lote de Procesador de Pagos (cabezal)

Pestaña principal con los datos generales del lote. Los campos relevantes son:

- **Número del Documento**
  Número de secuencia del lote.

- **Cuenta Bancaria**
  Cuenta destino de la acreditación final del procesador.

- **Procesador de Pagos**
  Procesador externo que liquida el lote (por ejemplo, una red de tarjetas).

- **Fecha del Documento**
  Fecha del ciclo de liquidación.

- **Generar Cobro Automático**
  Indicador que controla cómo sale el dinero de la caja transitoria. Si está activo, la salida se genera al crear el documento por cobrar según el monto de la factura. Si está inactivo, la salida se hará a partir de los pagos que se asignen posteriormente al lote.

- **Carga de Tarifa Manual**
  Indicador que habilita el ingreso manual del total de tarifa en el cabezal. Si está inactivo, la tarifa se calcula automáticamente a partir de las líneas de pago asociadas al lote.

- **Total de Tarifa y Total de Retención**
  Importes de tarifa y retención aplicados por el procesador.

- **Monto Abierto**
  Total de cobros del lote menos tarifa y retención; corresponde al importe neto que el procesador debe acreditar.

- **Estado del Documento**
  Estado del lote (Borrador, En Proceso, Completo).

### Líneas de Cobro

Cobros incluidos en el lote. Cada línea referencia el cobro original del punto de venta y sus datos (número, socio, monto, fecha). Las líneas se agregan automáticamente al cerrar la caja con el procesador configurado, o manualmente desde el menú.

### Programa de Pago del Lote

Plan de acreditación del procesador. Define en qué fechas y por qué montos el procesador pagará el lote al comercio. Los campos relevantes son:

- **Número de Referencia**
  Identificador que se usará como nombre del documento por cobrar generado (por ejemplo, *TEST-401*, *TEST-402*).

- **Fecha del Documento**
  Fecha en que el procesador acreditará el pago.

- **Monto**
  Importe de la cuota. La suma de los montos del programa de pago debe ser igual al monto abierto del lote; el sistema valida la consistencia antes de completar.

### Documentos Generados

Lista de documentos asociados al lote: documentos por pagar de tarifa, documentos por pagar de retención y documentos por cobrar por cada vencimiento del programa de pago.

## Acciones disponibles

- **Generar Documento por Retención**
  Crea un documento por pagar al procesador por el monto de la retención, usando el tipo de documento y el cargo configurados. El cargo puede incluir IVA según su configuración.

- **Generar Documento por Tarifa**
  Crea un documento por pagar al procesador por la tarifa cobrada, usando el cargo y tipo de documento configurados.

- **Generar Documento por Cobrar**
  Crea un documento por cobrar al procesador por la fecha indicada en el programa de pago. La fecha debe coincidir con una entrada del programa; de lo contrario el proceso rechaza la generación.

- **Completar**
  Finaliza el lote. Valida que el programa de pago cubra exactamente el monto abierto y que la tarifa y retención estén registradas.

- **Acercar al Cobro Origen**
  Desde cada línea, navegar al cobro del punto de venta que originó la entrada en el lote.

## Flujo del proceso

### 1. Configurar el procesador en la caja

Definir en la cuenta de caja el procesador de pagos con sus cargos de tarifa y retención, sus tipos de documento asociados y el banco destino. Activar en la caja el depósito automático tras el cierre con división por procesador.

### 2. Cerrar la caja del punto de venta

Al cerrar la caja, el sistema genera automáticamente el lote de procesador con los cobros realizados con ese medio. Los cobros entran como líneas del lote y el monto abierto inicial es la suma de todos los cobros.

### 3. Registrar tarifa y retención

En el cabezal, cargar manualmente el total de tarifa y el total de retención (si *Carga de Tarifa Manual* está activo) o dejar que el sistema los calcule desde las líneas. El monto abierto se recalcula como *total de cobros − tarifa − retención*.

### 4. Definir el programa de pago del lote

En la pestaña *Programa de Pago del Lote*, crear las líneas que representan cada acreditación del procesador con su número de referencia, fecha y monto. El sistema valida que ningún monto supere el abierto restante y que la suma total coincida exactamente con el monto abierto.

### 5. Generar documentos por tarifa y retención

Ejecutar **Generar Documento por Retención** y **Generar Documento por Tarifa**. El sistema crea dos documentos por pagar al procesador (o solo los aplicables si no hay retención), cada uno con el cargo e impuesto configurados. Ambos documentos registran la salida de la caja transitoria por el monto correspondiente.

### 6. Completar el lote

Completar el lote. El sistema valida que el programa de pago sume exactamente el monto abierto; si hay diferencia, no permite completar.

### 7. Generar documentos por cobrar según el programa

Cuando cada fecha del programa de pago llega, ejecutar **Generar Documento por Cobrar** indicando la fecha. El sistema crea el documento por cobrar con el número de referencia, la fecha y el monto del programa. Si ya se generó para esa fecha, el sistema rechaza la duplicación.

### 8. Conciliar el cobro del procesador

Cuando el procesador acredita la cuota en el banco, el cobro se registra y concilia con el documento por cobrar generado desde el programa de pago. La caja transitoria se descarga y el banco se acredita.

## Ejemplo de uso

Un punto de venta cierra caja con dos cobros de tarjeta (330 y 560) que deben liquidarse con el procesador:

1. Al cerrar caja, el sistema genera automáticamente el lote con las dos líneas; el monto abierto inicial es 890.
2. Cargar **Total de Tarifa = 40** y **Total de Retención = 20**. El monto abierto queda en 830.
3. Definir el programa de pago del lote:
   - *TEST-401*, fecha 8, monto 200.
   - *TEST-402*, fecha 15, monto 500.
   - *TEST-403*, fecha 22, monto 130.
   Suma total 830 = monto abierto.
4. Ejecutar **Generar Documento por Retención** (20 con IVA, contra el cargo *Retención Tarjetas*) y **Generar Documento por Tarifa** (40, contra el cargo *Comisión Tarjetas*). Ambos documentos por pagar quedan generados y la caja transitoria se descarga por la suma.
5. **Completar** el lote. El estado pasa a *Completo*.
6. El día 8, ejecutar **Generar Documento por Cobrar** con fecha 8. El sistema crea el documento *TEST-401* por 200 contra el procesador. Repetir el día 15 y el día 22 con sus respectivas fechas.
7. Al acreditarse cada cuota en el banco, el cobro conciliado descarga la caja transitoria y acredita la cuenta bancaria correspondiente.

## Consideraciones importantes

- El **monto abierto** se recalcula automáticamente al modificar tarifa o retención. El lote no puede completarse si la suma del programa de pago no coincide exactamente con el abierto.
- **Carga de Tarifa Manual** debe activarse cuando la tarifa se ingresa desde el cabezal. Si existen líneas de pago con cálculo automático y el flag está desactivado, la tarifa proviene de ellas.
- **Generar Cobro Automático** define cuándo sale el dinero de la caja transitoria: al generar el documento por cobrar (activo) o al asignar los pagos posteriormente (inactivo). Elegir según el flujo operativo deseado.
- Las **líneas del programa de pago** se validan contra el monto abierto al guardar; el sistema no permite registrar un importe mayor al saldo disponible del lote.
- Los **documentos por pagar** de tarifa y retención **no se pueden duplicar**: el sistema rechaza la segunda ejecución del proceso correspondiente.
- Los **documentos por cobrar** se generan con la fecha del programa de pago del lote. Si se intenta generar para una fecha que no está en el programa, el sistema muestra error *"programa de pago no encontrado"*.
- El **cargo** usado en los documentos por pagar tiene su propia cuenta contable e IVA configurables. Típicamente, la retención lleva IVA y la tarifa de procesamiento no.
- La generación del documento por cobrar incluye automáticamente un programa de pagos de factura con la fecha de vencimiento igual a la del programa del lote; este programa se muestra desde el documento.
- Para navegar del cobro al lote se usa la acción **Acercar a Lote de Procesador de Pagos** desde el cobro, y en sentido inverso desde cada línea del lote.

## Ventanas relacionadas

- [Configuración de Lote de Procesador de Pago](payment-processor-batch-configuration)
- [Cierre de Lote de Procesador de Pagos](processor-batch-closing)
- [Generar Cobros de Facturas de Procesador de Pagos](generate-payments-for-processor-batch-invoices)
- [Reporte Lote de Procesador de Pagos](payment-processor-batch-payment-report)
- [Pago/Cobro](payment)
