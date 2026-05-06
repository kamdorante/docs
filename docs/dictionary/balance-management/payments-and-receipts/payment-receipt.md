---
title: Recibo de Pago
category: Documentation
star: 9
sticky: 9
article: false
---

# Recibo de Pago

## Descripción

La ventana **Recibo de Pago** permite registrar los pagos emitidos a proveedores asociando uno o varios documentos por pagar al medio de pago utilizado en la transacción. A diferencia del **Pago/Cobro** simple, el recibo agrupa la asignación de facturas y la selección del medio de pago (efectivo, transferencia, cheque diferido, medio de pago con canje, etc.) en un único documento, y al procesarlo genera automáticamente tanto el pago como la asignación que cancela las facturas seleccionadas.

El recibo soporta operaciones en múltiples monedas (UYU, USD u otras configuradas), asignación parcial mediante edición del importe a pagar, cancelación al 100% mediante absorción de diferencias contra cargos (redondeo, gastos bancarios, intereses) y la inclusión de cheques diferidos previamente emitidos. La fecha del documento determina la fecha contable del pago y de la asignación generada.

## ¿Cuándo se utiliza?

Se utiliza cuando la organización necesita:

- Emitir un pago a un proveedor cancelando una o varias facturas en un mismo recibo.
- Pagar parcialmente una factura modificando el importe a asignar.
- Pagar facturas de un proveedor con un cheque diferido previamente generado.
- Registrar un pago sin asignación a facturas (anticipo a proveedor).
- Combinar diferentes medios de pago en un mismo recibo (transferencia + cheque + canje).
- Operar en monedas distintas a la funcional (USD, EUR, etc.) usando tasas spot o negociadas.

## Acceso

Menú: **Gestión de Saldos Pendientes → Transacciones → Recibo de Pago**

Desde el recibo se navega a las ventanas asociadas:

1. **Pago/Cobro**: pago generado a partir del recibo (acceso desde la pestaña *Línea de Recibo*).
2. **Asignación de Pagos**: asignación creada al procesar el recibo (visible desde el documento por pagar como *Pagos Asignados*).
3. **Libreta de Cheques**: cuando se utiliza un cheque diferido emitido previamente.

## Configuración previa

### Tipo de documento de recibo

Debe existir el tipo de documento *Recibo de Pago* configurado para la organización con su secuencia de numeración.

### Cuenta bancaria del medio de pago

Las cuentas bancarias utilizadas en transferencias o pagos en efectivo deben estar activas en **Banco → Cuenta**, con su moneda configurada.

### Cargos para diferencias

Los cargos de **Redondeo**, **Gastos Bancarios**, **Intereses** u otros que se usan para absorber diferencias deben estar definidos con su cuenta contable correspondiente.

## Pestañas

### Recibo de Pago (cabezal)

Pestaña principal con los datos del recibo. Los campos relevantes son:

- **Tipo de Documento**
  Tipo del recibo (por ejemplo, *Recibo de Pago*).

- **Número de Documento**
  Número del recibo. Si la organización maneja una numeración propia (papel impreso), se ingresa manualmente; en caso contrario, el sistema toma el siguiente correlativo.

- **Socio del Negocio**
  Proveedor al que se le emite el recibo.

- **Fecha del Documento**
  Fecha del recibo. Determina la fecha contable del pago y de la asignación generada al procesarlo.

- **Moneda**
  Moneda del recibo. Define la moneda del pago y la conversión aplicable cuando las facturas asignadas estén en otra moneda.

- **Tipo de Conversión**
  Permite usar la tasa *spot* del día o una tasa **negociada** acordada con el proveedor para cancelar a un valor específico.

- **Total del Pago**
  Suma de los medios de pago seleccionados (transferencia, cheque diferido, etc.) en el recibo.

- **Total Asignado**
  Suma de los importes asignados a las facturas seleccionadas.

- **Saldo Pendiente**
  Diferencia entre el total del pago y el total asignado. Debe quedar en cero antes de procesar (puede absorberse contra un cargo si corresponde).

- **Estado del Documento**
  Estado del recibo (Borrador, Completo).

### Línea de Recibo

Detalla el pago o cobro generado por el recibo. Muestra el documento *Pago/Cobro* creado, el medio de pago utilizado, el importe y la cuenta bancaria asociada. Permite navegar al pago para ver datos adicionales (conciliación, asiento contable).

### Documentos Asignados

Lista las facturas asignadas al recibo con su importe original, importe asignado en este recibo y saldo restante. Cuando se asignan varias facturas a un único pago, el sistema prorratea el monto entre ellas para cancelarlas completamente.

## Acciones disponibles

- **Asignar Facturas**
  Abre el panel de selección donde aparecen las facturas con saldo abierto del proveedor en la moneda elegida. Permite marcar una o varias y editar el importe a asignar para cancelaciones parciales.

- **Seleccionar Pago Contado**
  Crea un pago contado en el recibo. Permite elegir el medio de pago (transferencia, efectivo) e indicar la cuenta bancaria, el número de referencia y el importe.

- **Seleccionar Cheque Diferido**
  Selecciona un cheque diferido previamente emitido (desde la **Libreta de Cheques**) para asociarlo al recibo. El sistema toma el cheque y resta el monto del total a asignar.

- **Aplicar a Cargo (Redondeo / Gastos Bancarios / Intereses)**
  Absorbe el saldo pendiente del recibo contra un cargo configurado para que la asignación cierre al 100%.

- **Procesar**
  Completa el recibo. Genera el pago en estado *Completo* y la asignación que cancela las facturas seleccionadas.

## Flujo del proceso

### 1. Crear el recibo

Desde **Recibo de Pago**, ejecutar **Nuevo**. Seleccionar el tipo de documento, el socio del negocio, ingresar el número de recibo (manual o automático), la fecha del documento y la moneda. Guardar.

### 2. Asignar facturas

Ejecutar **Asignar Facturas**. El sistema filtra automáticamente por el socio, la moneda y *Transacción de Ventas = No*. Marcar las facturas que se desean cancelar; opcionalmente, editar el importe a pagar para asignaciones parciales. Confirmar.

### 3. Seleccionar el medio de pago

Decidir el método utilizado:

- **Pago contado**: ejecutar **Seleccionar Pago Contado**, elegir transferencia/efectivo, cuenta bancaria, número de referencia y monto.
- **Cheque diferido**: ejecutar **Seleccionar Cheque Diferido** y elegir un cheque previamente emitido desde la **Libreta de Cheques**.

Pueden combinarse varios medios para cubrir el total del recibo.

### 4. Cerrar diferencias residuales

Si el total del pago no coincide exactamente con el total asignado (por redondeo, gastos bancarios, intereses), absorber la diferencia con un cargo (por ejemplo, *Redondeo*) para que la asignación cierre al 100%.

### 5. Procesar el recibo

Ejecutar **Procesar**. El sistema:

- Completa el recibo de pago.
- Genera el documento *Pago/Cobro* en estado *Completo*.
- Crea la **Asignación de Pagos** que cancela las facturas seleccionadas, prorrateando el monto cuando hay varias facturas.

### 6. Verificar el resultado

Desde la pestaña *Línea de Recibo*, navegar al pago generado y confirmar su estado y conciliación pendiente con el banco. Desde cada factura asignada, abrir *Pagos Asignados* para ver la asignación y el match contable.

### 7. Conciliar el medio de pago

Para los pagos contado por transferencia, conciliar con el extracto bancario al recibirlo. Para los cheques diferidos, el cheque queda pendiente hasta que el proveedor lo deposite y la conciliación bancaria lo marque como *Pagado*.

## Ejemplo de uso

Un proveedor envía dos facturas en pesos uruguayos para cobrar mediante transferencia:

1. Abrir **Recibo de Pago** y crear un nuevo registro:
   - **Tipo de Documento**: Recibo de Pago.
   - **Socio del Negocio**: el proveedor.
   - **Número del Documento**: 6891 (numeración manual del papel).
   - **Fecha del Documento**: la fecha del pago.
   - **Moneda**: UYU.
2. Ejecutar **Asignar Facturas**. Aparecen las facturas pendientes; marcar las dos correspondientes (vencidas el mes anterior). El total a asignar queda en, por ejemplo, 18.300.
3. Ejecutar **Seleccionar Pago Contado**: elegir *Transferencia*, la cuenta bancaria de origen, el número de referencia bancario y el monto 18.300.
4. **Procesar** el recibo. El sistema genera el pago de 18.300 y la asignación que cancela ambas facturas; el saldo de cada factura queda prorrateado.
5. Cuando el banco confirme la transferencia en el extracto, conciliar el pago con la línea correspondiente del estado de cuenta bancario.

Variante con cheque diferido:

1. Crear el recibo igual que antes pero, en lugar de pago contado, ejecutar **Seleccionar Cheque Diferido**.
2. Elegir un cheque previamente generado (por ejemplo, *Cheque Diferido por Pagar 444*) por 4.015.
3. Si la suma de las facturas (por ejemplo, 4.000) deja una diferencia de 15, absorberla con el cargo **Redondeo** para cerrar el 100%.
4. Procesar. El recibo genera el pago diferido y la asignación; las facturas quedan pagadas con un documento de *Cheque Diferido por Pagar* asociado.

Variante con asignación parcial:

1. Crear el recibo y asignar una factura.
2. Editar manualmente el **Importe a Pagar** para que sea menor al saldo abierto de la factura (por ejemplo, pagar 5.000 de una factura de 8.000).
3. Procesar. El sistema cancela parcialmente la factura por 5.000; quedan 3.000 abiertos para futuras asignaciones.

## Consideraciones importantes

- La **fecha del documento** del recibo determina la fecha contable del pago y de la asignación. Definirla correctamente al crear el recibo evita asientos en períodos no deseados.
- En el **Recibo de Pago** (proveedor) **no se puede crear** un cheque diferido nuevo: el cheque debe existir previamente generado desde **Generar Cheque Diferido por Pagar**. La excepción es el **Recibo de Cobro** (cliente), donde sí se puede registrar el cheque diferido entregado por el cliente directamente.
- El **prorrateo** automático cuando se asignan varias facturas al mismo pago distribuye el monto del pago entre ellas para cancelarlas completamente. No es necesario asignar manualmente cada factura a una porción del pago.
- Para asignaciones parciales, **editar el importe** a pagar en la línea de la factura antes de procesar. El sistema cancela solo la porción indicada y deja el resto del saldo abierto.
- Cuando hay diferencia entre el total del pago y el total asignado, absorberla con un **cargo** (Redondeo, Gastos Bancarios, Intereses) para que la asignación cierre al 100%. Sin esta absorción, el recibo no permite procesar.
- El recibo soporta **multimoneda**: si las facturas están en una moneda y el pago en otra, el sistema aplica la conversión usando la tasa *spot* del día o una **tasa negociada** acordada con el proveedor.
- Al **procesar**, el pago queda en estado *Completo* y la asignación generada cancela las facturas. Antes del proceso, el pago está en *Borrador* y no afecta saldos.
- Los pagos generados por transferencia deben **conciliarse posteriormente** con el extracto bancario; el sistema mueve la cuenta puente al procesar y la cuenta bancaria al conciliar (consultar el flujo de **Estado de Cuenta Bancario**).
- Para visualizar el asiento contable del pago, abrir el documento *Pago/Cobro* desde la pestaña *Línea de Recibo*. Las cuentas contables aplicadas dependen del tipo de documento y de la configuración contable del socio.
- Si se asigna por error, el recibo puede **anularse**: la anulación revierte el pago, la asignación y deja las facturas con su saldo abierto previo. Para reasignar, generar un nuevo recibo.

## Ventanas relacionadas

- [Pago/Cobro](payment)
- [Asignación de Pagos](../allocation/payment-allocation)
- [Libreta de Cheques](../bank-operations/check-book)
- [Estado de Cuenta Bancario](../bank-operations/bank-statement)
- [Estado de Cuenta Corriente](account-status)
