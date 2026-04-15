---
title: Estado de Cuenta Bancario
category: Documentation
star: 9
sticky: 9
article: false
---

# Estado de Cuenta Bancario

## Descripción

La ventana **Estado de Cuenta Bancario** es el documento central del proceso de conciliación bancaria. Cada registro representa un extracto cargado desde el banco para una cuenta bancaria específica y un período determinado (semanal, mensual o el que defina la organización). Desde el documento se cargan los movimientos, se concilian contra los pagos y cobros del sistema, se generan pagos faltantes (cargos bancarios, comisiones, cobros no identificados) y, al completarse, se actualizan los saldos contables de la cuenta bancaria.

El flujo contable se diseñó para que la **cuenta del banco** se mueva solo al completar el estado de cuenta. Mientras tanto, los pagos y cobros se registran contra una **cuenta puente de cheques en tránsito** que se regulariza al finalizar la conciliación. De esta manera, la cuenta bancaria queda siempre conciliada con el saldo real y las diferencias quedan aisladas en la cuenta puente.

## ¿Cuándo se utiliza?

Se utiliza cuando la organización necesita:

- Cargar el archivo del extracto provisto por el banco (por ejemplo, formato Multicash, CSV o TXT) y tener los movimientos listos para conciliar.
- Conciliar los movimientos del banco con los pagos y cobros registrados en el sistema.
- Generar pagos de cargo bancario, comisiones, cobros no identificados o transferencias multimoneda directamente desde las líneas del extracto.
- Cerrar el período bancario actualizando los saldos contables y habilitando el período siguiente con el saldo inicial automático.

## Acceso

Menú: **Gestión de Saldos Pendientes → Operaciones Bancarias → Estado de Cuenta Bancario**

Desde el documento se accede también a:

1. **Carga de Estado de Cuenta** (proceso de importación del archivo del banco).
2. **Conciliación de Estado de Cuenta** (formulario para emparejar movimientos).
3. **Crear Pagos desde Estado de Cuenta** (visor para generar pagos desde las líneas pendientes).

## Configuración previa

### Cuenta bancaria

En la ventana **Banco → Cuenta**, cada cuenta bancaria debe tener:

- **Cuenta bancaria activa**
  Solo las cuentas marcadas como activas aparecen para seleccionar en el estado de cuenta.

- **Cargador de Extracto de Cuenta Bancaria**
  Clase configurada para la carga automática del archivo del banco (p. ej., Multicash de cada entidad).

- **Algoritmo de Conciliación**
  Define el criterio para emparejar automáticamente los movimientos del banco con los pagos/cobros del sistema (importe, número de referencia, etc.).

- **Algoritmo de Identificación de Pagos**
  Permite vincular líneas del extracto con documentos del sistema usando reglas configurables (por ejemplo, número de referencia del banco).

### Socio de negocio del banco

En la ventana **Banco**, debe definirse un socio de negocio asociado al banco. Este socio se usa automáticamente para generar los pagos de cargos y comisiones sin que el usuario deba seleccionarlo manualmente.

### Cargos y tipos de cargo

Los **Tipos de Cargo** deben estar asociados al tipo de documento *Estado de Cuenta Bancario* para que sus cargos aparezcan en el visor de generación de pagos. Los cargos llevan su propia cuenta contable y centro de costo.

## Pestañas

### Estado de Cuenta Bancario (cabezal)

Pestaña principal con los datos generales del extracto cargado. La información se organiza en:

- **Número del Documento**
  Número de secuencia interno.

- **Nombre y Descripción**
  Identificador del extracto (por ejemplo, "Itaú - Enero 2026") y descripción opcional.

- **Cuenta Bancaria**
  Cuenta bancaria a la que corresponde el extracto.

- **Tipo de Documento**
  *Extracto de Cuenta Bancaria*. Controla la numeración y habilita las acciones de conciliación.

- **Fecha del Estado de Cuenta y Fecha Contable**
  Fecha de cierre del extracto y fecha con la que se registran los asientos.

- **Saldo Inicial**
  Se toma automáticamente del saldo final del último estado de cuenta completo de la misma cuenta bancaria.

- **Diferencia del Estado de Cuenta**
  Diferencia entre el saldo reportado por el banco y el saldo resultante de aplicar todas las líneas.

- **Saldo Final**
  Saldo de cierre que debe coincidir con el reportado por el banco tras la conciliación.

- **Estado del Documento**
  Estado del documento (Borrador, En Proceso, Completo). Solo al completar se actualizan los saldos bancarios.

### Línea del Estado de Cuenta

Una línea por cada movimiento del extracto importado o agregado manualmente. Los campos relevantes son:

- **Número de Línea**
  Orden de aparición en el extracto.

- **Fecha del Estado de Cuenta y Fecha de Valor**
  Fecha de la operación y fecha de valor bancaria.

- **Monto del Estado de Cuenta**
  Importe reportado por el banco. Positivo si es cobro; negativo si es pago.

- **Monto de la Transacción**
  Importe efectivo aplicado en la conciliación. Coincide con el del banco cuando no hay diferencia.

- **Tipo de Referencia y Número de Referencia**
  Datos enviados por el banco para identificar el movimiento.

- **Descripción y Memo**
  Texto descriptivo y leyenda bancaria.

- **Pago**
  Pago o cobro del sistema vinculado a la línea. Puede asignarse automáticamente por la conciliación o manualmente.

- **Cargo**
  Cargo contable asignado cuando la línea se resuelve como cargo bancario, comisión u otro gasto.

- **Moneda**
  Moneda de la transacción; permite identificar líneas multimoneda para resolverlas por transferencia.

## Acciones disponibles

- **Carga de Estado de Cuenta**
  Importa el archivo del banco y crea las líneas del extracto. Muestra la cantidad de líneas procesadas para validar contra el archivo original.

- **Conciliación de Estado de Cuenta**
  Abre el formulario de match automático/manual entre las líneas del extracto y los pagos/cobros del sistema.

- **Crear Pagos desde Estado de Cuenta**
  Visor que lista las líneas pendientes de identificar y permite generar pagos masivos por cargo bancario, comisiones, pagos sin factura, cobros no identificados o transferencias entre cuentas.

- **Desasignar**
  Quita la vinculación de un pago con una línea para reasignarlo.

- **Match Múltiple**
  Permite asignar varios pagos del sistema a una misma línea del extracto cuando el banco agrupa movimientos.

- **Completar**
  Finaliza el documento. Valida que todas las líneas tengan pago asignado y actualiza los saldos contables: saca de la cuenta puente *Cheques en Tránsito* y la acredita/debita contra la cuenta del banco.

## Flujo del proceso

### 1. Configurar la cuenta bancaria y los cargos

Validar que la cuenta bancaria tenga el cargador de extracto configurado, el algoritmo de conciliación definido y que exista un socio de negocio asociado al banco. Configurar los tipos de cargo usados para comisiones y gastos bancarios.

### 2. Crear el estado de cuenta

En **Estado de Cuenta Bancario**, crear un registro seleccionando la cuenta bancaria, el tipo de documento *Extracto de Cuenta Bancaria*, un nombre identificativo y la fecha de cierre del extracto. Guardar.

### 3. Cargar el archivo del extracto

Ejecutar **Carga de Estado de Cuenta** y seleccionar el archivo descargado del banco. El sistema informa la cantidad de líneas procesadas; validar contra el archivo original.

### 4. Ejecutar la conciliación automática

Ejecutar **Conciliación de Estado de Cuenta**. El sistema empareja automáticamente las líneas del extracto con los pagos y cobros del sistema usando el algoritmo configurado (coincidencias exactas de importe, referencia, etc.).

### 5. Revisar y ajustar manualmente

Las líneas no emparejadas automáticamente pueden ajustarse:

- **Asignación manual** cuando el match automático no funcionó.
- **Desasignar** para corregir una asignación incorrecta.
- **Match múltiple** cuando una línea del banco corresponde a varios pagos del sistema.

### 6. Generar pagos desde las líneas pendientes

Para las líneas que no corresponden a pagos ya registrados, ejecutar **Crear Pagos desde Estado de Cuenta**. Filtrar por importe o descripción, seleccionar las líneas y elegir el tipo de transacción:

- *Cargo Bancario* (comisiones, mantenimientos): usa el socio del banco y el cargo seleccionado.
- *Pago Pendiente de Factura*.
- *Cobro No Identificado*.
- *Transferencia entre Cuentas* (incluso multimoneda).

El sistema genera un pago por cada línea, lo asigna automáticamente y lo contabiliza contra la cuenta puente *Cheques en Tránsito*.

### 7. Validar saldos y completar

Confirmar que todas las líneas tienen pago asignado. El sistema no permite completar si queda alguna línea sin identificar. Ejecutar **Completar**:

- Se regulariza la cuenta puente *Cheques en Tránsito*.
- Se actualiza la cuenta bancaria con el saldo final del extracto.
- El saldo final del documento queda disponible como saldo inicial automático del próximo estado de cuenta.

## Ejemplo de uso

Cierre mensual de la cuenta bancaria con 70 movimientos:

1. Crear el **Estado de Cuenta Bancario** con la cuenta bancaria, tipo de documento *Extracto de Cuenta Bancaria*, nombre "Enero 2026" y fecha 31/01.
2. Ejecutar **Carga de Estado de Cuenta** con el archivo descargado del banco. El sistema informa 70 líneas cargadas.
3. Ejecutar **Conciliación de Estado de Cuenta**. El algoritmo automático concilia los pagos y cobros con importes coincidentes y deja 25 líneas pendientes.
4. Filtrar las líneas pendientes por importe *entre -100 y 100* y seleccionar las 24 comisiones pequeñas. Ejecutar **Crear Pagos desde Estado de Cuenta** con tipo *Cargo Bancario* y el cargo *Comisiones Bancarias*. El sistema genera 24 pagos automáticos.
5. Identificar manualmente las líneas grandes restantes (pagos a proveedores grandes que no se concilian por diferencia de fecha o descripción) asignando los pagos correspondientes del sistema.
6. Verificar que todas las líneas tienen pago asignado y ejecutar **Completar**.
7. Abrir la cuenta bancaria y confirmar que el saldo contable quedó actualizado al saldo final del extracto. Al crear el estado de cuenta de febrero, el saldo inicial ya aparecerá automáticamente.

## Consideraciones importantes

- El sistema **no permite completar** un estado de cuenta si existen líneas sin pago asignado. Para avanzar, los movimientos sin identificar deben enviarse a "pago no identificado" y luego regularizarse.
- No se admite **completado parcial**: el estado de cuenta se completa íntegramente o se deja en proceso.
- El **saldo inicial** del próximo estado de cuenta se toma automáticamente del saldo final del último estado completo; para que funcione, los estados deben cerrarse en orden cronológico.
- Los pagos generados desde el visor se contabilizan contra la cuenta puente **Cheques en Tránsito** y **no mueven la cuenta bancaria** hasta que se complete el estado de cuenta. Esto garantiza que la cuenta bancaria esté siempre conciliada con el saldo real.
- Si aparecen partidas sin conciliar a una fecha determinada, quedan visibles en la cuenta puente, no en la cuenta del banco, lo que facilita su seguimiento.
- El **match múltiple** es útil cuando el banco agrupa varios pagos en un solo movimiento (por ejemplo, una cobranza consolidada). En ese caso, una sola línea del extracto se asigna a varios pagos del sistema.
- Los **cargos bancarios** no requieren indicar socio de negocio: el sistema usa automáticamente el socio configurado en la ventana **Banco**.
- En líneas con diferencia de importe entre el banco y el pago, usar la funcionalidad de *Conciliación con Diferencia en Montos* para preservar el pago original y registrar un ajuste aislado.
- Las **transferencias entre cuentas** se generan desde el mismo visor seleccionando el tipo correspondiente, y permiten operaciones multimoneda cuando aplica.
- Los **algoritmos de conciliación** e identificación pueden personalizarse por cuenta bancaria para ajustarse a los formatos de cada banco (Itaú, Scotia, BROU, etc.).

## Ventanas relacionadas

- [Conciliación de Estado de Cuenta](bank-statement-match)
- [Reporte de Estado de Cuenta Bancario](bank-statement-report)
- [Pagos No Conciliados](unreconciled-payments)
- [Conciliación Manual con Diferencia en Montos](../../accounting-management/reconciliation/bank-statement-assignment-with-difference)
