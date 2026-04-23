---
title: Generar Cobros de Facturas de Procesador de Pagos
category: Documentation
star: 9
sticky: 9
article: false
---

# Generar Cobros de Facturas de Procesador de Pagos

## Descripción

El proceso **Generar Cobros de Facturas de Procesador de Pagos** crea los pagos y cobros asociados a los documentos por cobrar generados desde el programa de pago de un lote de procesador. Cuando el procesador acredita una cuota en la cuenta bancaria del comercio, este proceso emite el cobro correspondiente y lo vincula al documento por cobrar del lote, cerrando el ciclo contable iniciado con el cobro original del punto de venta.

En conjunto con los documentos generados desde la pestaña *Programa de Pago del Lote*, este proceso garantiza que cada cuota acreditada por el procesador se registre como cobro en el sistema y descargue el saldo correspondiente de la caja transitoria.

## ¿Cuándo se utiliza?

Se utiliza cuando la organización necesita:

- Registrar masivamente los cobros que el procesador de pagos acreditó en la cuenta bancaria.
- Generar los cobros correspondientes a las cuotas vencidas del programa de pago del lote.
- Asegurar que cada documento por cobrar del lote quede vinculado a un cobro real en el sistema.
- Cerrar la conciliación contable entre la caja transitoria y la cuenta bancaria destino.

## Acceso

Menú: **Gestión de Saldos Pendientes → Pagos y Cobros → Generar Cobros de Facturas de Procesador de Pagos**

## Parámetros

| Parámetro | Descripción | Tipo | Obligatorio | Valor por defecto |
|-----------|-------------|------|-------------|-------------------|
| Fecha del Documento | Fecha con la que se generarán los cobros. Debe coincidir con una fecha presente en el programa de pago del lote | Fecha | No | Fecha actual |

## Acciones disponibles

- **Ejecutar**
  Lanza el proceso y genera los cobros vinculados a los documentos por cobrar cuyo vencimiento corresponda a la fecha indicada.

- **Ver Histórico del Proceso**
  Consultar ejecuciones anteriores con su fecha, documentos procesados y resultado.

## Flujo del proceso

### 1. Verificar el programa de pago del lote

Antes de ejecutar el proceso, confirmar que el lote de procesador correspondiente tiene su **Programa de Pago** completo y que la fecha de vencimiento de las cuotas esperadas está correctamente cargada.

### 2. Ejecutar el proceso

Abrir **Generar Cobros de Facturas de Procesador de Pagos**, indicar la **Fecha del Documento** que corresponde al vencimiento de la cuota y ejecutar.

### 3. Creación de los cobros

El sistema recorre los documentos por cobrar asociados a programas de pago del lote con esa fecha y crea, para cada uno, un cobro por el monto correspondiente. El cobro queda vinculado al documento por cobrar y aplica la salida de la caja transitoria.

### 4. Validar los cobros generados

Abrir la ventana **Pago/Cobro** y verificar que los nuevos cobros aparecen con los datos correctos: fecha, monto, cuenta bancaria destino, socio de negocio (procesador) y referencia al documento por cobrar.

### 5. Conciliar con el banco

Al cargar el estado de cuenta bancario correspondiente, los cobros generados aparecerán disponibles para conciliar contra las líneas del extracto que representan la acreditación del procesador.

## Ejemplo de uso

Un lote de procesador tiene programado recibir acreditaciones los días 8, 15 y 22 del mes. El día 8 el procesador acredita la primera cuota de 200:

1. Verificar que el lote tiene en su *Programa de Pago del Lote* una línea con fecha 8 y monto 200.
2. Abrir **Generar Cobros de Facturas de Procesador de Pagos**.
3. Indicar **Fecha del Documento = 8 del mes**.
4. Ejecutar. El sistema crea un cobro por 200 contra la cuenta bancaria del procesador y lo vincula al documento por cobrar *TEST-401* del lote.
5. Al cargar el estado de cuenta bancario del banco destino, la línea del extracto con fecha 8 y monto 200 se concilia automáticamente con el cobro generado.
6. Repetir el proceso los días 15 y 22 con las fechas correspondientes para las cuotas siguientes.

## Consideraciones importantes

- La **Fecha del Documento** debe coincidir con una fecha registrada en el programa de pago del lote. Si no coincide, el sistema no encuentra documentos elegibles y la ejecución no genera cobros.
- El proceso **no duplica** cobros: si ya se generó un cobro para el documento por cobrar en esa fecha, el sistema lo omite.
- Los cobros generados apuntan a la **cuenta bancaria** configurada en el lote. Si hay varios lotes para cuentas distintas, el proceso genera los cobros en la cuenta correspondiente a cada uno.
- El proceso **debe ejecutarse en orden cronológico** de las cuotas. Generar la cuota del día 15 antes que la del día 8 no es un error, pero complica la reconciliación contable.
- Si la acreditación del banco difiere del monto del documento por cobrar (por ejemplo, por una comisión adicional), el cobro se genera por el monto del documento y la diferencia se resuelve en la conciliación bancaria con la funcionalidad de *Conciliación con Diferencia en Montos*.
- El cobro generado descarga la **caja transitoria** y acredita la cuenta bancaria. Esto cierra el ciclo contable iniciado con el cobro original del punto de venta.
- Si un documento por cobrar fue **anulado** o está en estado distinto de *Completo*, no se incluye en el proceso.

## Ventanas relacionadas

- [Lote de Procesador de Pagos](payment-processor-batch)
- [Configuración de Lote de Procesador de Pago](payment-processor-batch-configuration)
- [Cierre de Lote de Procesador de Pagos](processor-batch-closing)
- [Pago/Cobro](payment)
