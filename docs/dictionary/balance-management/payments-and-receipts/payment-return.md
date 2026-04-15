---
title: Rechazo de Pago / Cobro
category: Documentation
star: 9
sticky: 9
article: false
---

# Rechazo de Pago / Cobro

## Descripción

El proceso **Rechazo de Pago / Cobro** permite registrar en el sistema el rechazo de un pago o de un cobro previamente emitido (por ejemplo, un cheque devuelto por el banco o una transferencia rechazada). A partir del pago o cobro original, el sistema genera automáticamente un **nuevo pago/cobro de rechazo** y un **documento por cobrar o por pagar** del tipo *Cobro Rechazado* o *Pago Rechazado*, utilizando cuentas contables específicas para controlar el saldo pendiente.

El mecanismo es similar al manejo de cheques diferidos, pero con cuentas y tipos de documento diferenciados que permiten distinguir los rechazos del resto de la operatoria. Una vez registrado el rechazo, el sistema también dispone del proceso **Cobro de Rechazo** para gestionar el cobro posterior del documento a través del visor inteligente de **Depósito de Cheque Diferido**.

## ¿Cuándo se utiliza?

Se utiliza cuando la organización necesita:

- Registrar un cheque rechazado por el banco (cheque propio o de tercero).
- Anular contablemente una transferencia o un pago electrónico devuelto.
- Mantener la trazabilidad entre el pago/cobro original y el rechazo sin anular la asignación previa.
- Generar un documento por cobrar/pagar sustituto que permita dar seguimiento al saldo rechazado.
- Cobrar posteriormente el documento de rechazo cuando el cliente o proveedor regulariza la operación.

## Acceso

Existen dos puntos de acceso según la etapa:

1. **Registrar el rechazo:** abrir el pago o cobro original en **Gestión Financiera → Pagos y Cobros → Pago/Cobro** y ejecutar la acción **Rechazo de Pago / Cobro** desde el menú de acciones del documento.
2. **Cobrar el rechazo:** Gestión Financiera → Pagos y Cobros → **Depósito de Cheque Diferido** (visor inteligente adaptado para seleccionar los tipos de documento de rechazo).

## Parámetros

| Parámetro | Descripción | Tipo | Obligatorio |
|-----------|-------------|------|-------------|
| Tipo de Documento | Tipo de documento del rechazo (por ejemplo, *Rechazo Cheque Propio* o *Rechazo Cheque Tercero*) | Lista | Sí |
| Fecha de Pago | Fecha con la que se registra el rechazo (contable y de transacción) | Fecha | Sí |

## Acciones disponibles

- **Rechazo de Pago / Cobro**
  Acción principal del pago o cobro original. Genera el documento de rechazo asociado y el pago/cobro negativo correspondiente.

- **Cobro de Rechazo**
  Acción desde el documento de rechazo generado para iniciar el cobro posterior mediante el visor de depósito de cheque diferido.

- **Ver Documentos Relacionados**
  Permite navegar desde el pago original al pago de rechazo y al documento por cobrar/pagar generado.

## Pestañas

### Pago/Cobro (original)

Después de ejecutar el rechazo, el pago/cobro original conserva los siguientes cambios:

- **Estado del Documento**
  Permanece en *Completo* o *Cerrado*. El pago no se anula ni se revierte.

- **Descripción**
  Se agrega el sufijo *" - RECHAZADO"* para identificar visualmente que fue marcado como rechazado.

- **Pago Relacionado**
  Referencia al nuevo pago/cobro de rechazo generado por el proceso.

### Pago/Cobro de Rechazo

Nuevo registro generado automáticamente con los datos del original. La información principal incluye:

- **Número de Documento**
  Formato *[DocNo original] - RECHAZADO*.

- **Tipo de Documento**
  El seleccionado en el proceso (por ejemplo, *Rechazo Cheque Propio* o *Rechazo Cheque Tercero*).

- **Importe**
  Mismo importe que el pago original, registrado en sentido opuesto para compensar la operación.

- **Forma de Pago**
  Se mantiene la misma forma de pago (cheque, transferencia, resguardo) del pago original.

- **Cargo**
  Cargo especial configurado para el tipo de documento (por ejemplo, *Rechazo de Cheques*). Se utiliza para el neteo contable con el documento por cobrar/pagar generado.

- **Pago Relacionado**
  Vínculo con el pago o cobro original rechazado.

- **Fecha Contable / de Transacción**
  La indicada en el parámetro *Fecha de Pago*.

### Documento por Cobrar / Pagar de Rechazo

Documento generado automáticamente como consecuencia del rechazo. Sus campos relevantes son:

- **Tipo de Documento**
  *Cobro Rechazado* (cuando se rechaza un cobro) o *Pago Rechazado* (cuando se rechaza un pago).

- **Socio de Negocio**
  El mismo del pago original.

- **Moneda e Importe**
  Coinciden con el pago rechazado.

- **Cargo de la Línea**
  Mismo cargo del pago de rechazo, para que el neteo contable entre ambos documentos sea consistente.

- **Fechas**
  Fecha contable y de facturación iguales a la *Fecha de Pago* del parámetro.

- **Condición de Pago y Lista de Precios**
  Condición predeterminada del sistema y lista de precios por defecto para la moneda del documento.

- **Programación de Pago**
  Generada automáticamente con fecha de vencimiento igual a la *Fecha de Pago*.

## Configuración previa

### Cuentas contables en el socio de negocio

En la ventana **Socio del Negocio**, en las pestañas de contabilidad, deben configurarse:

- **Contabilidad Cliente → Cobros Rechazados**
  Cuenta contra la que se registra el cobro rechazado cuando se genera el documento por cobrar correspondiente.

- **Contabilidad Proveedor → Pagos Rechazados**
  Cuenta contra la que se registra el pago rechazado cuando se genera el documento por pagar correspondiente.

Las cuentas también pueden definirse a nivel **Grupo de Socio de Negocio** como valores por defecto para los nuevos socios.

### Tipos de documento

Deben existir los tipos de documento específicos para rechazos:

- **Rechazo Cheque Propio** y **Rechazo Cheque Tercero** (pagos/cobros).
- **Pago Rechazado** y **Cobro Rechazado** (documentos por pagar y por cobrar).

Cada uno está marcado como documento diferido con su clasificación de rechazo asociada.

### Cargo para neteo

Se requiere un cargo contable específico (por ejemplo, *Rechazo de Cheques*) asociado a un tipo de cargo. El cargo debe relacionarse con los tipos de documento de rechazo desde la ventana **Tipo de Documento**, pestaña *Tipo de Cargo por Tipo de Documento*. Este cargo es el que permite el neteo entre el pago/cobro de rechazo y el documento por cobrar/pagar generado.

### Tipos de documento predeterminados de pago y cobro

Verificar que los tipos de documento estándar de **Pago** y **Cobro** tengan marcado *Predeterminado = Sí*. De lo contrario, los pagos y cobros generados desde recibos podrían tomar por error los tipos de documento de rechazo.

## Flujo del proceso

### 1. Validar la configuración previa

Confirmar que el socio de negocio tiene las cuentas de *Cobros Rechazados* y *Pagos Rechazados* configuradas, que los tipos de documento de rechazo existen, que el cargo de rechazo está relacionado con ellos y que los tipos estándar de pago y cobro están marcados como predeterminados.

### 2. Abrir el pago o cobro a rechazar

Localizar el pago o cobro original en la ventana **Pago/Cobro**. Debe estar en estado *Completo* o *Cerrado* y no tener ya una referencia de rechazo previa.

### 3. Ejecutar la acción de rechazo

Desde el menú de acciones del documento, seleccionar **Rechazo de Pago / Cobro**. En el diálogo indicar el **Tipo de Documento** del rechazo (cheque propio o de tercero) y la **Fecha de Pago** con la que se registra.

### 4. Verificar los documentos generados

El proceso automáticamente:

- Marca el pago original con el sufijo *" - RECHAZADO"* en la descripción y lo deja completo.
- Crea un nuevo pago/cobro de rechazo vinculado al original, con el mismo importe, misma forma de pago y numerado con el sufijo *" - RECHAZADO"*.
- Genera el documento por cobrar o por pagar de rechazo, con el cargo configurado, y lo completa automáticamente.

### 5. Validar la contabilización

Abrir el documento por cobrar/pagar generado y verificar que el asiento contable utiliza la cuenta de **Cobros Rechazados** o **Pagos Rechazados** del socio de negocio contra la cuenta del cargo de rechazo.

### 6. Cobrar el rechazo (posterior)

Cuando el cliente o proveedor regulariza el rechazo, acceder al **Visor de Depósito de Cheque Diferido**, filtrar por el tipo de documento *Cobro Rechazado* o *Pago Rechazado*, seleccionar el documento e indicar la fecha del nuevo cobro y, si corresponde, el número de cheque. El sistema genera el pago/cobro que cancela automáticamente el documento de rechazo.

## Ejemplo de uso

Un cliente paga una factura con cheque y, días después, el banco devuelve el cheque:

1. Abrir el **Cobro** original en la ventana **Pago/Cobro**.
2. Ejecutar **Rechazo de Pago / Cobro** seleccionando el tipo de documento *Rechazo Cheque Tercero* y la fecha del rechazo.
3. Verificar que:
   - El cobro original quedó con la descripción terminada en *" - RECHAZADO"* y sigue en estado *Completo*.
   - Se generó un nuevo cobro negativo con el mismo importe, referenciado al original.
   - Se creó el documento por cobrar de tipo *Cobro Rechazado* con el mismo cargo y el importe correspondiente.
4. Revisar el asiento del nuevo documento por cobrar: debita la cuenta *Cobros Rechazados* del cliente y acredita la cuenta del cargo de rechazo.
5. Cuando el cliente regulariza el pago, abrir el **Visor de Depósito de Cheque Diferido**, seleccionar el documento *Cobro Rechazado* y registrar el nuevo cobro con la fecha y el número de cheque aportados por el cliente. El sistema cancela automáticamente el documento de rechazo.

## Consideraciones importantes

- El proceso solo puede ejecutarse sobre pagos o cobros en estado **Completo** o **Cerrado**. Documentos en borrador u otros estados son rechazados por la validación.
- Un pago que ya tiene un rechazo previo (campo *Pago Relacionado* informado) no puede volver a rechazarse.
- El **tipo de documento** del rechazo debe tener un *DocBaseType* distinto al del pago original; el sistema valida esta consistencia.
- El proceso **no anula la asignación** original del pago: la asignación (allocation) previa queda completa. El neteo contable se logra mediante el cargo especial del pago de rechazo y el cargo igual en el documento por cobrar/pagar.
- El nuevo pago/cobro de rechazo **mantiene la misma forma de pago** (cheque, transferencia, resguardo) que el original, con su equivalencia correspondiente.
- El documento por cobrar/pagar se **completa automáticamente** al generarse; no es necesario completarlo manualmente.
- Si la moneda del documento no tiene una **lista de precios por defecto** configurada, el proceso falla con error de lista de precios no encontrada.
- Si el socio de negocio no tiene **dirección con indicador de facturación** activo, el proceso no puede crear el documento y falla con el error correspondiente.
- Las **cuentas de rechazo** a nivel *Grupo de Socio de Negocio* no se heredan automáticamente a los socios existentes; si se agregan al grupo, verificar que se reflejen también en cada socio.
- Los asientos del documento de rechazo usan las cuentas específicas del socio de negocio; no se utilizan las cuentas estándar de *Cuentas por Cobrar* o *Cuentas por Pagar*.
- Las **asignaciones posteriores** (cuando se cobra el rechazo) también utilizan las cuentas de rechazo del socio, no las estándar, para mantener la trazabilidad contable del ciclo de rechazo.

## Ventanas relacionadas

- [Pago/Cobro](payment)
- [Detalles del Pago](payment-details)
