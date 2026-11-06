---
title: Cuentas Corrientes
category: Documentation
star: 9
sticky: 9
article: false
---

## Mantenimientos

### ¿Por qué se ven Facturas ya pagadas en el Estado de Cuenta Corriente y en Saldos pendientes?

En el estado de cuenta se ven las facturas Pagas porque muestra todos los documentos (facturas y pagos) sin filtrar si se encuentra o no pagada (no muestra los documentos con estado cerrado).
No se muestran en el reporte Saldos Pendientes justamente porque este reporte muestra solo facturas con saldo abierto o pendiente.

### Por qué no se muestra vinculado un Pago a un Proveedor en el estado de cuenta corriente?

Si el Pago tiene asignado un "Cargo" no se visualizará en el estado de cuenta corriente del proveedor.

### ¿Por qué motivo pueden mostrarse saldos pendientes en documentos por pagar y que no puedan ajustarse en el proceso de Dar de baja CxC y CxP?

El sistema antes consideraba una tolerancia de +- 0.99 para marcar como asignada una factura, lo que hacía que a las facturas se les marque el check de PAGADO cuando existe un saldo abierto que entra en dicha tolerancia. Esta tolerancia se quitó, para que las facturas queden con el check de PAGADO = NO, y puedan ser consideradas por este proceso (Dar de baja CxC y CxP). Por lo cual estos casos solo pueden darse en documentos antiguos.
Este proceso solo ajusta documentos por pagar o Documentos por cobrar.

### ¿Por qué un cliente superó su Límite de Crédito y el sistema no bloqueó la orden ni la factura?

El sistema no compara el **Crédito Usado** con el límite, sino el **Saldo Actual** del socio. El Saldo Actual es lo que el cliente debe en facturas abiertas **menos los cobros que todavía no están asignados** a ninguna factura. Por eso:

- Si el cliente tiene **cobros sin asignar**, su Saldo Actual baja (incluso puede quedar negativo) y el sistema considera que todavía tiene margen. El **Estado del Crédito** sigue en **Crédito Correcto** aunque el Crédito Usado supere el límite.
- La **Orden de Venta** controla solo su propio total contra el saldo de ese momento: varias órdenes completadas antes de facturar no se suman entre sí.
- La **factura de venta** no controla el límite; solo se bloquea si el cliente está en **Crédito Detenido**.

Para que el control vuelva a funcionar, revisar los cobros sin asignar del cliente (reporte **Pagos sin Asignar**) y asignarlos a sus facturas desde **Asignación de Pagos**. Si se necesita frenar al cliente de inmediato, cambiar su Estado del Crédito a **Crédito Detenido**.

Ver el detalle completo en [Control de Límite de Crédito del Socio del Negocio](../dictionary/customer-relationship-management/business-partner-credit-limit-control).

## Acciones

### ¿Qué representa el SALDO INICIAL en el reporte de estado de cuenta corriente?

Representa el saldo de todos los documentos de tiempo pasado, su saldo abierto.

Si se emite el reporte desde la "fecha desde" pero hacia el pasado debería dar el mismo importe.

### Cómo me doy cuenta si una Consulta de Asignación fue generada manualmente desde la Forma “Asignación de Pagos”?

Siempre muestra el nombre del Usuario en el campo “Descripción”

### ¿Si genero un pago por compra Venta de Moneda extranjera utilizando el proceso de "Generar pago desde Estado de cuenta" qué fecha le define, la fecha de transacción o la Fecha del Estado de Cuenta Bancario?

El proceso de "Crear Pagos desde Estado de Cuenta", cuando se elije la opción "Transferencia entre Cuentas", la fecha transacción a definir en el pago y cobro generados, es la "Fecha de Estado de Linea" de la línea seleccionada para realizar el movimiento. Es decir, define la fecha de transacción y no la del estado de cuenta bancario.

## Reportes
  
### Reporte de Pagos sin Asignar:

Columna “Totales con sobre/sub pago” reifere al campo definido en el Pago/Cobro al ser generado. No se actualiza si el mismo tiene otra asignación realizada luego de haberse completado.   
Si Todos los pagos son generados de manera correcta al completarse y su importe de  “Totales con sobre/sub pago” es correcto, este Reporte de Pagos sin Asignar debería corresponderse con el Mayor “Cheque Depósito no Asignados”

### Reporte de saldos Pendientes y Reporte de Estado de Cuenta Corriente no da igual saldo ¿Por qué?

Para que este reporte se genere igual se debe verificar que la tasa de cambio aplicada en las asignaciones vinculadas a los medios de pago incluidos en el recibo de pago multimoneda tienen la misma tasa de cambio que la tasa definida en el recibo de cobro en cuestión. Actualmente no hay un control para que no te permita seleccionar una tasa diferente al momento de hacer la asignación manual desde la forma asignación de pagos.  
  
Otro tema es que el recibo multimoneda está hecho para generar un recibo de cobro con una moneda contra facturas en otra moneda. No está soportado agregar facturas en múltiples monedas en un mismo recibo de cobro

### Reporte de saldos Pendientes y Reporte de Estado de Cuenta Corriente no da igual saldo (Caso 2)

Cuando no coinciden estos dos reportes deben realizarse los siguientes pasos de verificación:

1. Verificación de Balance Cierre de Ejercicio

2. Obtener el Balance Contable a fecha de Cierre de Ejercicio

3. Obtener el Balance de Prueba con el Informe: “Mayor contable por Socio del Negocio”. Este reporte brindará el saldo clasificando según Socio del Negocio y Moneda para ver el detalle de las transacciones existentes. 

4. Obtener el reporte de “Saldos Abiertos a la Fecha” definiendo la fecha del Cierre de Balance. Para validar los saldos así como también los ajustes realizados por Diferencia de Cambio se puede detener sobre un Socio de Negocio en particular para analizar en detalle sus transacciones y su saldo. Comparar los Documentos existentes en el reporte Saldos Abiertos con el Saldo Final de todas las transacciones del Mayor Contable correspondiente según Socio del Negocio.

5. Tener Cuidado con los ajustes ya realizados sobre la Cuenta Contable para aplicar las Diferencias de Cambio Realizadas cuando las mismas hayan sido cobradas. En estos casos, las líneas de Ganancia/Pérdida por Diferencia de Cambio Realizada se realizan SIEMPRE con Moneda del Esquema Contable, de manera que no estarán clasificadas como con Moneda USD sino con UYU si su esquema contable está en UYU.