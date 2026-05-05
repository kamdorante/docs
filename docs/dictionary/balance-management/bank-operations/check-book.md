---
title: Libreta de Cheques
category: Documentation
star: 9
sticky: 9
article: false
---

# Libreta de Cheques

## Descripción

La ventana **Libreta de Cheques** define las chequeras (talonarios físicos) que la organización utiliza para emitir cheques diferidos por pagar a proveedores. Cada libreta queda asociada a una **cuenta bancaria** y a una **moneda**, y al guardarla el sistema genera automáticamente la secuencia completa de folios disponibles entre los números inicial y final indicados (por ejemplo, una libreta del 1 al 25 deja 25 folios listos para usarse).

A partir de las libretas creadas, el flujo continúa con el proceso **Generar Cheque Diferido por Pagar**, que toma el siguiente folio disponible de la chequera elegida, registra los datos del cheque (proveedor, importe, fechas) y genera el documento *Cheque Diferido por Pagar* que puede utilizarse en un **Recibo de Pago** para cancelar facturas.

## ¿Cuándo se utiliza?

Se utiliza cuando la organización necesita:

- Crear una nueva chequera para una cuenta bancaria y dejar lista la secuencia de folios.
- Mantener varias libretas en simultáneo (por moneda, por cuenta, por uso) con su numeración propia.
- Controlar qué folios están disponibles, emitidos o anulados dentro de cada libreta.
- Habilitar la emisión de cheques diferidos por pagar a proveedores.

## Acceso

Existen dos puntos relacionados con esta funcionalidad:

1. **Definición de libretas:** Gestión de Saldos Pendientes → Operaciones Bancarias → Libreta de Cheques.
2. **Emisión de un cheque diferido:** Gestión de Saldos Pendientes → Operaciones Bancarias → Generar Cheque Diferido por Pagar.

## Configuración previa

### Cuenta bancaria

La cuenta bancaria a la que pertenecerá la libreta debe estar activa en la ventana **Banco → Cuenta**, con su moneda correctamente definida.

### Tipo de documento de cheque diferido

Debe existir el tipo de documento utilizado por el proceso *Generar Cheque Diferido por Pagar*; es el que numera y clasifica los cheques diferidos emitidos por la organización.

## Pestañas

### Libreta de Cheques (cabezal)

Pestaña principal con los datos generales de la libreta. Los campos relevantes son:

- **Nombre**
  Identificador descriptivo de la libreta (por ejemplo, *Libreta USD Banco Principal*).

- **Descripción**
  Texto opcional con información adicional.

- **Cuenta Bancaria**
  Cuenta bancaria asociada a la libreta. Solo aparecen cuentas activas.

- **Moneda**
  Moneda en la que se emiten los cheques de esta libreta. Una libreta opera en una única moneda.

- **Cheque Inicial**
  Número del primer folio de la libreta. Define el inicio de la secuencia.

- **Cheque Final**
  Número del último folio de la libreta. Junto con el inicial determina la cantidad total de folios (por ejemplo, del 300001 al 300025 = 25 folios).

- **Activo**
  Indicador que controla si la libreta está disponible para emitir cheques.

### Folios

Pestaña que lista cada folio individual generado al guardar la libreta. La información incluye:

- **Número de Cheque**
  Número del folio dentro de la secuencia.

- **Estado del Folio**
  Estado del cheque: *Pendiente* (disponible para usar), *Emitido* (ya consumido por un cheque diferido), *Anulado* (cancelado vía proceso *Cancelar Folio de Cheque*).

- **Cheque Diferido**
  Referencia al documento *Cheque Diferido por Pagar* que consumió el folio cuando corresponda.

- **Fecha de Emisión**
  Fecha en que el folio fue utilizado para emitir un cheque.

## Acciones disponibles

- **Crear Libreta**
  Define una nueva libreta con su rango de folios. Al guardar, el sistema genera automáticamente todos los folios intermedios.

- **Generar Cheque Diferido por Pagar** (proceso asociado)
  Toma el siguiente folio disponible de la libreta seleccionada y emite un cheque diferido por pagar con los datos indicados.

- **Cancelar Folio de Cheque**
  Anula un folio puntual cuando se daña, se pierde o se decide no usar. El folio queda marcado como anulado y no se considera para emisiones futuras.

- **Activar / Desactivar Libreta**
  Controla si la libreta puede usarse para emitir cheques. Las inactivas no aparecen en el proceso de emisión.

## Parámetros del Proceso Generar Cheque Diferido por Pagar

| Parámetro | Descripción | Tipo | Obligatorio |
|-----------|-------------|------|-------------|
| Moneda | Moneda del cheque a emitir; debe coincidir con la moneda de la libreta | Búsqueda directa | Sí |
| Libreta de Cheques | Libreta desde la cual se tomará el folio | Búsqueda directa | Sí |
| Número de Cheque | Folio específico de la libreta. El sistema sugiere automáticamente el siguiente disponible | Texto | Sí |
| Socio del Negocio | Proveedor al que se emite el cheque | Búsqueda | Sí |
| Importe | Monto del cheque, en la moneda indicada | Número | Sí |
| Fecha de Emisión | Fecha en que se emite el cheque (fecha del documento) | Fecha | Sí |
| Fecha de Vencimiento | Fecha en la cual el cheque podrá ser cobrado por el proveedor | Fecha | Sí |

## Flujo del proceso

### 1. Crear la libreta

Desde **Libreta de Cheques**, crear un nuevo registro indicando nombre, cuenta bancaria, moneda, número inicial, número final y descripción opcional. Guardar.

### 2. Verificar la generación de folios

Tras guardar el cabezal, abrir la pestaña *Folios* (o el panel inferior) y confirmar que el sistema generó todos los folios entre el número inicial y final. Cada uno aparece con estado *Pendiente*.

### 3. Emitir un cheque diferido

Cuando se necesita pagar a un proveedor con cheque diferido, abrir el proceso **Generar Cheque Diferido por Pagar** y completar:

- Moneda y libreta correspondientes.
- Número de cheque (el sistema sugiere el siguiente folio pendiente).
- Proveedor, importe, fecha de emisión y fecha de vencimiento.

Ejecutar. El sistema genera el documento *Cheque Diferido por Pagar* y marca el folio como emitido en la libreta.

### 4. Usar el cheque en un Recibo de Pago

Crear el **Recibo de Pago** al proveedor. Asignar las facturas a cancelar. Usar la acción **Seleccionar Cheque Diferido** y elegir el cheque emitido en el paso anterior. El recibo se completa con el monto del cheque y, si queda saldo residual, se puede absorber con un cargo (por ejemplo, *Redondeo*) para cerrar el 100% de la asignación.

### 5. Procesar el recibo

Completar el recibo de pago. El sistema genera la asignación entre el cheque diferido y las facturas: las facturas pasan a estado *pagado* y la deuda queda registrada bajo el documento *Cheque Diferido por Pagar*.

### 6. Conciliar al depositar

Cuando el cheque sea efectivamente cobrado por el proveedor en su banco, la conciliación bancaria del estado de cuenta marca el cheque como *Pagado* (depositado), descargando la cuenta puente correspondiente y acreditando definitivamente el banco.

## Ejemplo de uso

Crear una libreta nueva en dólares y emitir un cheque diferido a un proveedor:

1. Abrir **Libreta de Cheques** y crear un registro:
   - **Nombre**: Libreta USD Cuenta Principal.
   - **Cuenta Bancaria**: la cuenta en dólares.
   - **Moneda**: USD.
   - **Cheque Inicial**: 300001.
   - **Cheque Final**: 310025 (25 folios).
2. Guardar. El sistema genera automáticamente los 25 folios en estado *Pendiente*.
3. Para pagar una factura de proveedor, abrir **Generar Cheque Diferido por Pagar**:
   - **Moneda**: USD.
   - **Libreta**: Libreta USD Cuenta Principal.
   - **Número de Cheque**: 300001 (primer folio sugerido).
   - **Socio del Negocio**: el proveedor.
   - **Importe**: 4.000,15.
   - **Fecha de Emisión**: 6 de marzo.
   - **Fecha de Vencimiento**: 30 de junio.
4. Ejecutar. Se genera el documento *Cheque Diferido por Pagar 300001*.
5. Abrir **Recibo de Pago**, seleccionar el proveedor, asignar las facturas pendientes (por ejemplo, las que vencieron en marzo) y elegir el cheque diferido recién creado.
6. Si queda una pequeña diferencia entre el cheque y las facturas, asignarla al cargo *Redondeo* para cerrar la asignación al 100%.
7. Procesar el recibo. Las facturas quedan en estado *pagado* y la deuda figura en el cheque diferido.
8. Cuando el cheque sea cobrado por el proveedor, conciliar el estado de cuenta bancario; el cheque pasa a *Pagado*.

## Consideraciones importantes

- Una libreta opera con **una única cuenta bancaria y una única moneda**. Para una segunda moneda o cuenta, crear una libreta independiente.
- Los folios se generan **automáticamente al guardar el cabezal**; no se crean manualmente. La cantidad total queda determinada por la diferencia entre *Cheque Inicial* y *Cheque Final*.
- El proceso **Generar Cheque Diferido por Pagar** sugiere el siguiente folio pendiente, pero permite seleccionar otro número manualmente si la operativa lo requiere.
- En el **Recibo de Pago** no es posible crear un cheque diferido nuevo: el cheque debe existir previamente en el sistema. La excepción es el **Recibo de Cobro** (cliente), donde sí se puede registrar el cheque diferido del cliente directamente.
- El cheque diferido por pagar permanece en estado **Pagado = No** hasta que el proveedor lo deposite efectivamente. Solo se marca como *Pagado* cuando se concilia con el estado de cuenta bancario.
- Cuando se necesita anular un folio (por daño físico o pérdida del cheque), usar el proceso **Cancelar Folio de Cheque** para marcarlo como anulado. El folio anulado no se reutiliza ni reaparece para emisiones futuras.
- Las libretas inactivas no aparecen en el selector del proceso de emisión, lo que evita errores de elegir una libreta cerrada o agotada.
- El número de cheque del proceso de emisión coincide con el folio físico de la libreta. Mantener la libreta del sistema sincronizada con la chequera real evita inconsistencias en la conciliación.

## Ventanas relacionadas

- [Cancelar Folio de Cheque](cancel-folio-check)
- [Estado de Cuenta Bancario](bank-statement)
- [Pago/Cobro](../payments-and-receipts/payment)
