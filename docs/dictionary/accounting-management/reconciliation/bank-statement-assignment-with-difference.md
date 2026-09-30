---
title: Conciliación Manual con Diferencia en Montos
category: Documentation
star: 9
sticky: 9
article: false
---

# Conciliación Manual con Diferencia en Montos

## Descripción

La **Conciliación Manual con Diferencia en Montos** permite vincular una línea del estado de cuenta bancario con un pago del sistema cuando los montos **no coinciden exactamente**. Durante la asignación manual, el sistema calcula la diferencia entre el monto reportado por el banco y el monto del pago registrado, la guarda en un campo de control propio del registro de importación (**Monto de Cargo de Simulación**) y, al importar, la traslada como **Monto de Cargo** a la línea del estado de cuenta.

El registro de importación conserva los datos originales del banco: durante la conciliación solo se modifican los campos de control del match, nunca los datos que vienen del banco.

## ¿Cuándo se utiliza?

Se utiliza cuando la organización necesita:

- Conciliar una línea del estado de cuenta bancario cuyo monto difiere del pago registrado en el sistema.
- Asignar manualmente un pago a una línea del extracto antes de generar el estado de cuenta.
- Registrar la diferencia como Monto de Cargo de la línea del estado de cuenta.

## Acceso

Existen dos formas de acceder:

1. **Desde la conciliación del extracto:** Gestión de Saldos Pendientes → Operaciones Bancarias → Conciliación de Estado de Cuenta → ejecutar la simulación de coincidencia → asignar manualmente → Importar.
2. **Desde las ventanas de resultado:** revisar el registro en **Importar Estado de Cuenta Bancaria** y la línea generada en **Estado de Cuenta Bancario**.

## Pestañas

### Importar Estado de Cuenta Bancaria

Registro intermedio donde queda cada movimiento del banco antes de convertirse en línea del estado de cuenta. Los campos relevantes para esta funcionalidad son:

- **Monto de Cargo de Simulación**
  Diferencia entre el monto del movimiento bancario y el monto del pago asignado. El sistema lo completa durante la conciliación cuando detecta una diferencia y lo utiliza en el control del match.

- **Monto de Transacción**
  Monto del movimiento bancario tal como fue importado. Es la base para calcular la diferencia.

- **Número de Referencia**
  Dato del banco que permite localizar el movimiento y validar el pago asignado.

- **Pago**
  Pago del sistema vinculado al movimiento, ya sea por el algoritmo o por asignación manual.

### Línea del Estado de Cuenta

Líneas del estado de cuenta generadas a partir de la importación. Los campos relevantes son:

- **Monto del Estado de Cuenta**
  Monto reportado por el banco para la línea.

- **Monto de Transacción**
  Se calcula al generar la línea desde la importación cuando existe un Monto de Cargo de Simulación: Monto del Estado de Cuenta menos ese monto.

- **Monto de Cargo**
  Toma el valor del *Monto de Cargo de Simulación* del registro importado.

- **Pago**
  Pago del sistema vinculado a la línea.

## Cálculo de la diferencia

El sistema aplica tres relaciones entre los montos:

```
Monto de Cargo de Simulación = Monto de Transacción (registro importado) − Monto del Pago
Monto de Cargo (línea)       = Monto de Cargo de Simulación
Monto de Transacción (línea) = Monto del Estado de Cuenta − Monto de Cargo de Simulación
```

| Concepto | Dónde se guarda | Origen del valor |
|---|---|---|
| Monto de Cargo de Simulación | Registro de importación | Calculado por el sistema durante la conciliación |
| Monto de Cargo | Línea del estado de cuenta | Copiado del Monto de Cargo de Simulación al importar o al actualizar |
| Monto de Transacción | Línea del estado de cuenta | Monto del Estado de Cuenta menos el Monto de Cargo de Simulación |

> El *Monto de Transacción* aparece en dos lugares: en el registro de importación (monto del movimiento bancario, dato de origen) y en la línea del estado de cuenta (resultado del cálculo). La primera relación usa el del registro importado; la tercera calcula el de la línea.

## Acciones disponibles

- **Simular Conciliación**
  Busca pagos candidatos que coincidan con las líneas del extracto. Presenta monto, número de referencia y fecha para facilitar la selección manual.

- **Asignar Manualmente**
  Vincula un pago con una línea aun cuando los montos difieren. El usuario indica el monto a asignar y el sistema calcula la diferencia.

- **Importar Extracto de Cuenta Bancaria**
  Genera el estado de cuenta. Aplica la vinculación, traslada la diferencia como Monto de Cargo y calcula el Monto de Transacción de cada línea.

## Flujo del proceso

### 1. Ejecutar la simulación de coincidencia

Abrir **Conciliación de Estado de Cuenta** sobre el extracto cargado y lanzar la simulación para que el sistema proponga los pagos candidatos de cada línea.

### 2. Asignar manualmente el pago con diferencia

Localizar la línea por su número de referencia y asignar el pago correspondiente, aun cuando el monto sea distinto. Indicar el monto a asignar; el sistema calcula la diferencia y la guarda en el **Monto de Cargo de Simulación** del registro de importación.

### 3. Verificar el registro de importación

Abrir **Importar Estado de Cuenta Bancaria**, buscar el número de referencia y confirmar que el pago asignado es el esperado y que el monto de simulación refleja la diferencia.

### 4. Importar el estado de cuenta

Ejecutar **Importar Extracto de Cuenta Bancaria** (Siguiente → OK). El proceso:

- Establece el Monto de Cargo de cada línea con el valor del Monto de Cargo de Simulación.
- Calcula el Monto de Transacción de la línea cuando el registro importado tiene Monto de Cargo de Simulación.

Si el registro ya estaba importado y se actualiza con nuevos datos, el sistema también toma el Monto de Cargo de Simulación y lo establece como Monto de Cargo de la línea.

### 5. Revisar el estado de cuenta generado

Abrir **Estado de Cuenta Bancario**, buscar el documento y localizar la línea por el número de referencia. Comparar el monto del estado de cuenta, el monto de transacción y el monto de cargo.

## Ejemplo de uso

Ejemplo ilustrativo: el banco reporta un movimiento de **1.000**, pero el pago del sistema es de **900**.

1. Ejecutar la simulación de coincidencia y buscar el movimiento por su número de referencia.
2. Asignar manualmente el pago al movimiento.
3. Ejecutar **Importar Extracto de Cuenta Bancaria** → **Siguiente** → **OK**.
4. Abrir la línea del estado de cuenta generado:

| Concepto | Monto |
|---|---:|
| Monto de Cargo de Simulación (1.000 − 900) | 100 |
| Monto de Cargo | 100 |
| Monto del Estado de Cuenta | 1.000 |
| Monto de Transacción (1.000 − 100) | 900 |

## Consideraciones importantes

- Durante la conciliación solo se modifican los **campos de control** del match; los datos originales del banco en el registro de importación no se alteran.
- El Monto de Cargo de Simulación lo calcula el sistema a partir de la diferencia detectada.
- El valor se traslada como Monto de Cargo tanto en registros importados por primera vez como en registros ya importados que se actualizan.

## Ventanas relacionadas

- [Conciliación de Estado de Cuenta](../../balance-management/bank-operations/bank-statement-match)
- [Importación de Extracto Bancario](../../balance-management/bank-operations/import-bank-statement)
- [Estado de Cuenta Bancario](../../balance-management/bank-operations/bank-statement)
- [Conciliación Automática de Cuentas](automatic-account-reconciliation)
- [Conciliación de Hechos Contables (Manual)](accounting-fact-reconciliation-manual)
- [Hechos Contables sin Conciliar](unreconciled-accounting-facts)
