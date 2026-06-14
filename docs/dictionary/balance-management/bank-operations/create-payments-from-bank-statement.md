---
title: Crear Pagos desde Estado de Cuenta
category: Documentation
star: 9
sticky: 9
article: false
---

# Crear Pagos desde Estado de Cuenta

## Descripción

El visor inteligente **Crear Pagos desde Estado de Cuenta** es la herramienta para resolver las líneas del estado de cuenta bancario que quedaron pendientes después del match automático y manual de la conciliación. Cada línea del extracto que no tiene un pago del sistema asociado puede convertirse desde aquí en un pago o cobro, generándolo en el acto y dejándolo asignado automáticamente a la línea bancaria correspondiente.

El visor expone varios **tipos de pago** según el motivo de la línea: cargo bancario, pago/cobro a la espera de factura, pago/cobro sin identificar y transferencia entre cuentas (incluido el caso multimoneda). Cada tipo genera un documento *Pago/Cobro* específico, con cuentas y socios distintos. Esta herramienta es clave para poder **completar el estado de cuenta**, ya que el sistema no permite completarlo si quedan líneas sin pago asignado.

## ¿Cuándo se utiliza?

Se utiliza cuando la organización necesita:

- Generar pagos a partir de las líneas del extracto bancario que no tienen pago en el sistema.
- Registrar **cargos bancarios** y comisiones que el banco aplicó y aparecen en el extracto.
- Registrar **cobros sin identificar** cuando llegan transferencias sin información del cliente que las originó.
- Registrar **pagos a la espera de factura** cuando se cobra antes de emitir la factura.
- Resolver **transferencias entre cuentas** propias (mismo banco u otro) e incluso multimoneda.
- Generar pagos a proveedores específicos directamente desde el extracto cuando se conoce el destinatario.

## Acceso

Existen dos puntos de acceso:

1. **Desde el cabezal del Estado de Cuenta Bancario:** abrir el documento y ejecutar la acción **Crear Pagos desde Estado de Cuenta**.
2. **Desde el menú:** Gestión de Saldos Pendientes → Operaciones Bancarias → Crear Pagos desde Estado de Cuenta (búsqueda por estado de cuenta).

## Configuración previa

### Cuenta bancaria

En la ventana **Banco → Cuenta**, completar:

- **Socio del Negocio asociado al banco**
  Es el socio que se asigna automáticamente cuando se genera un cargo bancario sin tener que seleccionarlo en cada línea.

- **Cargo para Ajuste**
  Cargo configurable en la cuenta bancaria que se usa para absorber pequeñas diferencias durante el match (por ejemplo, *Redondeo*). Sin este cargo configurado, el proceso de importar conciliación con diferencias falla.

### Cargos disponibles

Los **Cargos** que se ofrecen en el visor (cargo bancario, IVA, etc.) deben tener su cuenta contable asignada para que el asiento generado sea correcto. Definirlos en el catálogo de cargos antes de usar el visor.

### Tipo de cambio

Cuando se generen transferencias multimoneda, debe existir un **Tipo de Conversión** vigente entre las monedas involucradas, o se debe ingresar manualmente la tasa al confirmar la transferencia.

## Pestañas / Campos del visor

### Filtros

Filtros iniciales que acotan las líneas mostradas:

- **Estado de Cuenta Bancario**
  Documento al que pertenecen las líneas. Por defecto, el que se está conciliando.

- **Fecha Desde / Hasta**
  Acotación por fecha del movimiento bancario.

- **Modo de Búsqueda**
  Filtro inicial sobre el estado de la línea. Valores típicos: *No Asignado* (por defecto) muestra solo las líneas pendientes; *Asignado* muestra las que ya tienen pago; *Todos* muestra todas.

- **Importe Desde / Hasta**
  Rango de importes para acotar la búsqueda cuando hay muchas líneas.

### Líneas

Una fila por cada movimiento bancario pendiente. Los campos relevantes son:

- **Fecha del Movimiento**
  Fecha bancaria.

- **Importe**
  Monto del movimiento (positivo = cobro, negativo = pago).

- **Descripción / Referencia**
  Texto descriptivo del banco. Es la pista principal para decidir qué tipo de pago generar.

- **Selección**
  Check para incluir la línea en la acción a ejecutar.

## Tipos de pago disponibles (acciones del visor)

El visor ofrece distintos tipos de pago según el motivo de la línea. Cada uno genera un *Pago/Cobro* diferente y deja la línea conciliada.

::: warning Visibilidad de los Cargos
En las acciones que requieren elegir un **Cargo** (*Cargo Bancario*, *Otro Tipo de Pago*, *Transferencia entre Cuentas*), el selector **solo muestra los cargos cuyo Tipo de Cargo está habilitado para el tipo de documento *Estado de Cuenta Bancario***. Si un cargo definido no aparece en el visor, es porque su Tipo de Cargo no está asignado a ese tipo de documento. Ver [Cargo](../../accounting-management/accounting-rules/charge) para el detalle de la regla de visibilidad y cómo configurarla.
:::

### Cargo Bancario

Para registrar comisiones, gastos bancarios o cargos del banco sobre la cuenta. Características:

- **Socio del Negocio**: tomado automáticamente del banco configurado en la cuenta bancaria; no se pide al usuario.
- **Cargo**: elegir el cargo que corresponde al concepto (por ejemplo, *Comisiones Bancarias*, *Mantenimiento de Cuenta*).
- **Centro de Costo / Actividad / Campaña** (opcionales): para imputar el gasto a dimensiones contables específicas.
- **Resultado**: un pago/cobro al socio del banco con el cargo seleccionado por el monto de la línea.

### Pago a la Espera de Factura

Para registrar un pago o cobro cuyo socio se conoce pero la factura aún no se emitió, o cuando el pago se recibió antes de facturar. Características:

- **Socio del Negocio**: el usuario debe seleccionarlo (cliente o proveedor según corresponda).
- **Resultado**: un pago/cobro a nombre del socio, sin asignación a factura; queda disponible para asignar a la factura cuando se emita.

### Pago / Cobro sin Identificar

Para registrar un movimiento bancario cuyo socio aún no se conoce (por ejemplo, una transferencia recibida sin referencia). Características:

- **Socio del Negocio**: no se asigna en este momento.
- **Resultado**: un pago/cobro marcado como *Sin Identificar*. Posteriormente, desde la ventana **Pago/Cobro**, ejecutar la acción **Identificar Pago/Cobro** para asignarle el socio cuando se aclare a quién corresponde.

### Otro Tipo de Pago

Permite registrar un pago específico a un socio del negocio que no es el del banco (por ejemplo, un pago a un organismo fiscal, a un servicio público, etc.). Características:

- **Socio del Negocio**: el usuario lo selecciona explícitamente.
- **Cargo**: el cargo contable a aplicar.
- **Resultado**: un pago al socio indicado con el cargo seleccionado.

### Transferencia entre Cuentas

Para resolver movimientos que corresponden a transferencias entre cuentas bancarias propias de la organización (incluyendo entre cuentas en distinta moneda). Características:

- **Cargo**: cargo contable de la transferencia (por ejemplo, *Compra/Venta de Moneda Extranjera*).
- **Cuenta Bancaria Destino / Origen**: la otra cuenta involucrada en la transferencia (según el signo del movimiento).
- **Tasa de Cambio**: solo requerida cuando origen y destino están en monedas distintas.
- **Resultado**: el sistema genera dos pagos/cobros (uno en cada cuenta bancaria) con la misma descripción enlazada, y aplica el cambio cuando corresponde.

La transferencia también puede generarse desde el cabezal del estado de cuenta con la acción **Generar Transferencia entre Cuentas**, lo que abre un navegador adicional para resolver varios movimientos a la vez.

## Acciones disponibles

> **Nota:** este documento cubre únicamente las acciones de **generación de pagos** sobre las líneas pendientes. Las acciones de emparejamiento (simular coincidencia, asignación manual, match múltiple, desasignar) pertenecen al proceso de [Conciliación de Estado de Cuenta](bank-statement-match) y se documentan allí.

- **Crear Cargo Bancario**
  Genera un pago al socio del banco con un cargo configurado.

- **Crear Pago a la Espera de Factura**
  Genera un pago/cobro a un socio sin asignación a factura.

- **Crear Pago / Cobro sin Identificar**
  Genera un pago/cobro marcado como sin identificar para resolver posteriormente.

- **Crear Otro Tipo de Pago**
  Genera un pago a un socio específico con cargo concreto.

- **Generar Transferencia entre Cuentas**
  Genera una transferencia entre dos cuentas bancarias propias, con o sin cambio de moneda.

## Flujo del proceso

> **Requisito previo:** antes de usar este visor, el extracto debe estar cargado y conciliado. La carga del archivo y el emparejamiento automático/manual se realizan desde el [Estado de Cuenta Bancario](bank-statement) y la [Conciliación de Estado de Cuenta](bank-statement-match). Este visor resuelve únicamente las líneas que la conciliación dejó pendientes.

### 1. Abrir el visor Crear Pagos desde Estado de Cuenta

Desde el cabezal del estado de cuenta, abrir el visor. Por defecto aparece filtrado por *No Asignado*. El visor muestra las líneas pendientes de identificar.

### 2. Resolver línea por línea según el tipo de movimiento

Para cada línea pendiente, identificar el motivo (por descripción y monto) y aplicar el tipo de pago correspondiente:

- **Cargo bancario / comisión** → *Crear Cargo Bancario*.
- **Pago al banco al organismo fiscal** → *Crear Otro Tipo de Pago* indicando el socio (por ejemplo, DGI) y el cargo (por ejemplo, *Pago de Impuestos*).
- **Cobro de cliente sin factura todavía** → *Crear Pago a la Espera de Factura* con el socio del cliente.
- **Cobro recibido sin información** → *Crear Pago/Cobro sin Identificar*.
- **Transferencia entre cuentas propias** → *Generar Transferencia entre Cuentas* indicando la cuenta destino/origen y, si aplica, la tasa de cambio.

### 5. Validar cada pago generado

Desde la línea del estado de cuenta, abrir el pago generado y verificar el cargo, el socio y el monto. La descripción del pago refleja el origen (línea del estado de cuenta) para trazabilidad.

### 6. Identificar posteriormente los pagos sin identificar

Para los pagos creados como *Sin Identificar*, abrir el **Pago/Cobro** desde la ventana correspondiente y ejecutar la acción **Identificar Pago/Cobro**. Asignarle el socio del negocio cuando se aclare a quién corresponde.

### 7. Completar el estado de cuenta

Una vez todas las líneas tienen pago asignado, volver al cabezal y ejecutar **Completar**. El sistema valida que no quedan líneas sin identificar; si las hay, muestra los errores y no completa. Al completar, se aplica el asiento contable y se actualiza el saldo de la cuenta bancaria.

## Ejemplo de uso

Un extracto quedó con 5 líneas pendientes después de la conciliación; todas deben resolverse generando pagos:

1. Abrir **Crear Pagos desde Estado de Cuenta** desde el cabezal. Las 5 líneas pendientes son:
   - 3 movimientos negativos pequeños (comisiones bancarias).
   - 1 movimiento positivo grande sin referencia.
   - 1 movimiento positivo etiquetado como "compra-venta moneda extranjera".
2. Seleccionar las 3 líneas de comisiones, ejecutar **Crear Cargo Bancario** con cargo *Comisiones Bancarias*. El sistema genera 3 pagos al socio del banco; las líneas quedan resueltas.
3. Para el movimiento positivo grande, no se conoce el cliente. Seleccionar la línea y ejecutar **Crear Pago/Cobro sin Identificar**. Se genera un cobro marcado como *Sin Identificar*; queda pendiente de identificar más adelante.
4. Para el movimiento de compra-venta de moneda, seleccionar la línea y ejecutar **Generar Transferencia entre Cuentas** con cuenta origen en USD, cuenta destino en pesos y tasa de cambio. El sistema crea dos pagos (uno en cada cuenta) con la misma descripción enlazada.
5. Verificar que todas las líneas quedaron con pago asignado.
6. Volver al [Estado de Cuenta Bancario](bank-statement) y ejecutar **Completar**.

## Consideraciones importantes

- El visor **solo funciona** sobre líneas no asignadas. Las líneas ya conciliadas (automáticamente o manualmente desde la [Conciliación de Estado de Cuenta](bank-statement-match)) no aparecen salvo que se cambie el filtro *Modo de Búsqueda*.
- El sistema **no permite completar** el estado de cuenta si queda al menos una línea sin pago asignado. Por eso, todas las líneas que no corresponden a pagos del sistema deben resolverse desde este visor antes de completar.
- Para **cargos bancarios**, el socio se toma automáticamente del banco configurado en la cuenta bancaria. Si esa configuración falta, el visor no puede generar el pago hasta que se complete.
- Los **pagos sin identificar** son útiles para no bloquear el cierre del estado de cuenta cuando aún no se conoce el socio. Requieren un seguimiento posterior con **Identificar Pago/Cobro** desde la ventana del pago.
- Para **transferencias multimoneda**, indicar siempre la **tasa de cambio** en el momento de generar. El sistema genera dos pagos (uno por cada cuenta) con la descripción enlazada para trazabilidad.
- Cuando se crean **muchos pagos a la vez** (por ejemplo, todas las comisiones del mes), se pueden seleccionar todas las líneas y ejecutar la acción en bloque, lo que genera un pago por cada línea.
- Cada pago generado desde el visor se contabiliza contra la cuenta puente **Cheques en Tránsito** y lleva en su descripción la **referencia al movimiento bancario** que lo originó, lo que facilita la auditoría y el seguimiento de cobranza.
- El **otro tipo de pago** permite registrar pagos a socios específicos distintos del banco (por ejemplo, organismos fiscales) cuando el movimiento del extracto corresponde a ese concepto.
- **Cargos visibles en el selector**: el visor solo muestra los cargos cuyo **Tipo de Cargo** esté asignado al tipo de documento **Estado de Cuenta Bancario** desde la pestaña *Tipo de Cargo por Tipo de Documento* de la ventana **Tipo de Documento**. Si un cargo creado no aparece, revisar que su Tipo de Cargo esté habilitado para ese tipo de documento. Ver [Cargo](../../accounting-management/accounting-rules/charge) para el detalle.

## Ventanas relacionadas

- [Estado de Cuenta Bancario](bank-statement)
- [Conciliación de Estado de Cuenta](bank-statement-match)
- [Importación de Extracto Bancario](import-bank-statement)
- [Conciliación Manual con Diferencia en Montos](../../accounting-management/reconciliation/bank-statement-assignment-with-difference)
- [Cargo](../../accounting-management/accounting-rules/charge)
- [Pago/Cobro](../payments-and-receipts/payment)
