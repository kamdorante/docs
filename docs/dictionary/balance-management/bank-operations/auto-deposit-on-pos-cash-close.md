---
title: Retiro y Depósito Automáticos al Cerrar Caja POS
category: Documentation
star: 9
sticky: 9
article: false
---

# Retiro y Depósito Automáticos al Cerrar Caja POS

## Descripción

La funcionalidad **Retiro y Depósito Automáticos** permite que, al completar el **Cierre de Caja** de una cuenta de caja del Punto de Venta, el sistema genere de forma automática **dos movimientos espejo**:

- Un **retiro** desde la cuenta de caja POS por el total (o por línea) de los pagos cobrados.
- Un **depósito** en la cuenta destino configurada (otra cuenta de caja o una cuenta bancaria), con el mismo importe.

De esta manera, al terminar la operación diaria en el POS, el dinero cobrado queda **contablemente traspasado** al cofre, a la financiera o a la cuenta bancaria correspondiente sin necesidad de generar los pagos y cobros a mano.

El comportamiento se apoya en la configuración cargada en la ventana **Definición de Diario de Caja** de la cuenta POS. Existen dos niveles de configuración:

- Una **configuración principal** (información de depósito) que aplica a todos los movimientos del cierre.
- Una **configuración por tipo de pago** (opcional) que permite enviar cada tipo de pago (efectivo, débito directo, tarjeta, etc.) a una cuenta destino distinta y con un cargo/documento propios.

## ¿Cuándo se utiliza?

Se utiliza cuando la organización necesita:

- Automatizar el traspaso del efectivo de la caja POS al cofre al cierre del día.
- Separar automáticamente los cobros por medio (débito directo, tarjeta, vales) y enviarlos a distintas cuentas bancarias o financieras.
- Evitar que los cajeros generen manualmente los recibos y depósitos al cerrar caja.
- Que cada pago cobrado en el POS quede automáticamente enlazado con el retiro y el depósito que lo movieron, para trazabilidad.
- Que los depósitos generados queden **conciliados automáticamente** en su cuenta destino.

## Acceso

La configuración se realiza en la ventana **Definición de Diario de Caja** sobre la cuenta de caja POS que se quiere automatizar:

**Menú:** Gestión de Saldos Pendientes → Diario de Caja → **Definición de Diario de Caja** → seleccionar la cuenta de caja POS.

Los cierres de caja donde se dispara la automatización se abren desde:

**Menú:** Punto de Venta → **Cierre de Caja** (o desde la aplicación de POS al finalizar el turno).

## Configuración previa

Para que la automatización funcione, el sistema debe tener activo el **servicio de automatización de cierres de caja**. Es el módulo interno que escucha el evento *"Cierre de Caja Completado"* y dispara la generación automática del retiro y del depósito. Si el servicio no está desplegado, la configuración se puede guardar pero los movimientos no se generan.

Además, deben existir:

- La **cuenta destino** (otra cuenta de caja o cuenta bancaria) dada de alta en el sistema.
- El **Socio de Negocio** que se usará como contraparte del movimiento (típicamente uno interno de la organización).
- Los **cargos** que se usarán para retiro y depósito (deberían ser el mismo cargo del lado de la salida y de la entrada, de modo que la cuenta contable neta quede en cero).
- Los **tipos de documento** de retiro y depósito (por ejemplo, un tipo *Traspaso*).
- Los **tipos de pago** que se quieran diferenciar (efectivo, débito directo, tarjeta de crédito, etc.).

## Pestañas

### Definición de Diario de Caja — Encabezado

Encabezado de la cuenta POS. Los campos relevantes para la automatización son:

- **Información de Depósito**
  Bloque principal donde se define la configuración por defecto que se aplica al cerrar la caja.

- **Cuenta Bancaria para Depositar**
  Cuenta destino a la que se transferirán los cobros del cierre. Puede ser otra cuenta de caja (por ejemplo, el cofre) o una cuenta bancaria (por ejemplo, la financiera).

- **Socio de Negocio**
  Contraparte que se usa en el retiro y en el depósito generados.

- **Cargo para Depósito** y **Cargo Predeterminado para Retiro**
  Cargos que se aplican al movimiento. Conviene que sean el mismo cargo en salida y entrada para que la cuenta contable neta quede en cero.

- **Tipo de Pago para Depósito**
  Tipo de pago con el que se marca el depósito generado en la cuenta destino.

- **Tipo de Documento para Depósito** y **Tipo de Documento para Retiro**
  Tipos de documento que identifican el retiro y el depósito como movimientos automáticos.

- **Depositar Automáticamente después de Cerrar Caja**
  Casilla que activa la automatización. Sin marcarla, los movimientos **no** se generan; con marcarla, se disparan al completar el Cierre de Caja.

- **Dividir Depósitos**
  Controla el nivel de detalle del depósito generado:
  - **Marcado**: por cada pago cobrado en el cierre se genera **una línea espejo** en el depósito destino. Permite conservar la referencia individual y facilita la conciliación.
  - **Desmarcado**: los pagos se **consolidan** en una única línea totalizada por tipo de pago.

### Configuración de Retiro (opcional)

Pestaña interna con líneas de configuración específicas por combinación de criterios. Cada línea define **una regla** que sobrescribe la configuración principal cuando el pago cumple ciertas condiciones. Es útil, por ejemplo, para enviar los cobros con **débito directo** a la cuenta de la financiera y los cobros en **efectivo** al cofre; o para separar cobros por método (por ejemplo, GetNet vs. otro procesador) a distintas cuentas bancarias.

Campos típicos por línea:

- **Tipo de Pago**
  Tipo de pago sobre el que aplica la regla (por ejemplo, *Débito Directo*, *Tarjeta de Crédito*, *Efectivo*).

- **Cuenta Bancaria Destino**
  Cuenta específica donde se depositan los cobros de ese tipo.

- **Cargo** / **Tipo de Documento**
  Cargo y tipo de documento particulares para esa combinación.

- **Conciliar Automáticamente**
  Si está marcado, el depósito generado se agrega a la conciliación bancaria de la cuenta destino sin intervención manual.

- **Dividir Depósitos**
  Puede sobrescribir el valor de la configuración principal para esa combinación específica.

Si no hay líneas en esta pestaña, se aplica la configuración principal a todos los pagos por igual.

## Acciones disponibles

- **Guardar Configuración**
  Persiste la configuración de la cuenta POS. Toma efecto en el próximo cierre de caja que se complete.

- **Completar Cierre de Caja**
  Acción sobre el documento de Cierre de Caja. Al completarse, si la cuenta tiene marcada *Depositar Automáticamente después de Cerrar Caja*, dispara la generación automática del retiro y el depósito.

- **Acercar al Retiro / Acercar al Depósito**
  Desde el pago o cobro del POS se puede navegar directamente al **retiro** y al **depósito** que lo movieron. También se puede navegar al **estado de cuenta bancario** o al **cierre de caja** donde quedaron reflejados.

## Flujo del proceso

### 1. Verificar el servicio de automatización

Confirmar con el administrador que el **servicio de automatización de cierres de caja** está desplegado y activo. Sin él, la configuración es inerte.

### 2. Configurar la cuenta POS en Definición de Diario de Caja

Abrir la cuenta de caja POS y completar el bloque **Información de Depósito**:

- Cuenta destino.
- Socio de Negocio.
- Cargo para depósito y cargo predeterminado para retiro.
- Tipo de pago para depósito.
- Tipo de documento para depósito y para retiro.
- Marcar **Depositar Automáticamente después de Cerrar Caja**.
- Decidir si activar **Dividir Depósitos** según el detalle deseado.

Guardar.

### 3. (Opcional) Cargar reglas por tipo de pago

Si distintos tipos de pago deben ir a cuentas diferentes o con cargos diferentes, agregar líneas en la pestaña **Configuración de Retiro**, cada una con su tipo de pago, cuenta destino, cargo, tipo de documento y opciones de dividir/conciliar. Estas reglas sobrescriben la configuración principal para los pagos que cumplen sus condiciones.

### 4. Operar en el POS

Los cajeros trabajan normalmente: aperturas, ventas y cobros. Cada pago queda registrado en la caja POS.

### 5. Completar el Cierre de Caja

Al final del turno o del día, abrir el **Cierre de Caja** de la caja POS y completarlo. En ese momento, el servicio automático:

- Genera el **retiro** desde la caja POS por cada pago (si *Dividir Depósitos* está activo) o por totalización (si está inactivo).
- Genera el **depósito** correspondiente en la cuenta destino configurada, con el mismo importe, cargo y tipo de documento.
- Si aplica la regla de conciliación automática, agrega el depósito a la conciliación bancaria de la cuenta destino.

### 6. Verificar los movimientos generados

Los movimientos automáticos se pueden verificar por varios caminos:

- **Desde el Cierre de Caja**: además de las líneas propias del cierre (apertura, ventas, cobros), aparece una línea de **traspaso/salida** por el retiro automático.
- **Desde el pago del POS**: navegar al pago y "acercar" al **retiro** y al **depósito** vinculados. Cada pago tiene ambas referencias.
- **Desde el Estado de Cuenta Bancario**: si la cuenta destino es un banco, el depósito aparece como una línea del estado de cuenta con el cargo y el número de documento configurados.
- **Desde el Cierre de Caja de la cuenta destino**: si la cuenta destino es otra caja (por ejemplo, el cofre), el depósito aparece como una línea del cierre de esa caja.

## Ejemplo de uso

Una organización opera un POS que cobra en **efectivo**, **débito directo** y **tarjeta**. Quiere que al cerrar la caja del día:

- El **efectivo** vaya al **cofre** (una cuenta de caja interna).
- Los cobros por **débito directo** vayan a la **cuenta bancaria de la financiera** y queden ya conciliados.
- Los cobros con **tarjeta** vayan a una **cuenta bancaria específica de la financiera de tarjetas**.

Configuración:

1. En **Definición de Diario de Caja** de la cuenta POS, cargar la información de depósito por defecto apuntando al **cofre** (para el efectivo). Marcar *Depositar Automáticamente después de Cerrar Caja*. Dejar *Dividir Depósitos* desmarcado (el efectivo total va como una única línea al cofre).
2. En **Configuración de Retiro** agregar dos líneas:
   - Tipo de Pago = *Débito Directo*, Cuenta Destino = *Financiera*, Cargo = el configurado, Tipo de Documento = el configurado, Dividir Depósitos = marcado, Conciliar Automáticamente = marcado.
   - Tipo de Pago = *Tarjeta de Crédito*, Cuenta Destino = *Financiera Tarjetas*, Cargo y Tipo de Documento correspondientes, Dividir Depósitos = marcado, Conciliar Automáticamente = marcado.
3. Guardar la configuración.

Operación:

1. Durante el día, los cajeros cobran tres órdenes en el POS: una en efectivo, una en débito, y una mixta (parte efectivo, parte débito).
2. Al final del turno, completan el **Cierre de Caja**.
3. El sistema genera automáticamente:
   - Un retiro del efectivo del POS y su depósito consolidado en el **cofre**.
   - Un retiro por cada cobro con débito directo y su depósito espejo en la **cuenta de la financiera**, ya conciliado.
   - Un retiro por cada cobro con tarjeta y su depósito en la **cuenta de la financiera de tarjetas**, ya conciliado.
4. Desde cualquier pago cobrado en el POS se puede navegar al retiro y al depósito que lo movieron, comprobando la trazabilidad extremo a extremo.

## Consideraciones importantes

- **Depende de la naturaleza de la cuenta destino**:
  - Si la cuenta destino es una **cuenta de caja**, el movimiento se ve dentro de la ventana **Cierre de Caja** de esa caja destino.
  - Si la cuenta destino es una **cuenta bancaria**, el movimiento se ve en la ventana **Estado de Cuenta Bancario**, no en el Cierre de Caja.
- La casilla **Depositar Automáticamente después de Cerrar Caja** debe estar marcada para que la automatización ocurra. Sin ella, los movimientos no se generan aunque el resto de la configuración esté completo.
- El **cargo de retiro** y el **cargo de depósito** deberían ser el mismo, de modo que la cuenta contable asociada quede neta en cero (entra y sale por la misma cuenta).
- **Dividir Depósitos** conviene marcarlo cuando se necesita conservar la traza por pago (por ejemplo, para conciliar cada voucher de tarjeta contra el resumen de la financiera). Consolidado (desmarcado) alcanza para efectivo, donde el detalle por transacción no aporta valor.
- Las **reglas por tipo de pago** de la pestaña *Configuración de Retiro* **prevalecen** sobre la configuración principal para los pagos que coinciden con la regla. Los pagos que no coinciden con ninguna regla usan la configuración principal.
- **Conciliar Automáticamente** solo tiene sentido cuando la cuenta destino es bancaria y hay una conciliación bancaria abierta para esa cuenta. Si no existe, el depósito queda generado pero no conciliado.
- Los **tipos de documento** de retiro y depósito conviene tenerlos dedicados para este uso (por ejemplo, *Traspaso Automático*) para poder identificar y filtrar los movimientos generados por la automatización.
- El servicio **no reprocesa cierres anteriores**: se dispara al completar cierres nuevos. Si un cierre se completó antes de activar la automatización, sus movimientos deben generarse manualmente.
- La automatización actúa sobre los pagos **incluidos en el cierre de caja**. Los pagos que quedaron fuera del cierre (por ejemplo, pagos pendientes de asignar) no participan del movimiento automático.

## Ventanas relacionadas

- [Estado de Cuenta Bancario](bank-statement)
- [Conciliación de Estado de Cuenta](bank-statement-match)
- [Diario de Caja Chica](../cash-journal/cash-journal)
- [Cargo](../../accounting-management/accounting-rules/charge)
