---
title: Conciliación Manual con Diferencia en Montos
category: Documentation
star: 9
sticky: 9
article: false
---

# Conciliación Manual con Diferencia en Montos

## Descripción

La **Conciliación Manual con Diferencia en Montos** permite vincular una línea del estado de cuenta bancario con un pago del sistema cuando los montos **no coinciden exactamente**. Durante la asignación manual, el sistema calcula la diferencia entre el monto reportado por el banco y el monto del pago registrado, la preserva como un ajuste y completa la conciliación sin alterar los datos originales del pago.

Esta funcionalidad resuelve los casos habituales en que los movimientos bancarios traen montos ligeramente distintos a los del sistema (por comisiones bancarias, redondeos, diferencias de cambio menores, cobros parciales con ajuste). La diferencia queda registrada en la propia línea del estado de cuenta como cargo de ajuste, asegurando que el total conciliado cuadre con el banco y que el pago original se mantenga inalterado para trazabilidad.

## ¿Cuándo se utiliza?

Se utiliza cuando la organización necesita:

- Conciliar una línea del estado de cuenta bancario cuyo monto difiere del pago registrado en el sistema.
- Asignar manualmente un pago a una línea del extracto durante el proceso de importación del estado de cuenta.
- Registrar la diferencia como un ajuste aislado sin tocar el monto original del pago.
- Resolver casos de comisiones bancarias, redondeos o cobros parciales que no pueden conciliarse de forma automática.

## Acceso

Existen dos formas de acceder:

1. **Desde la importación del estado de cuenta:** Gestión Contable → Conciliación → Estado de Cuenta Bancario → ejecutar la simulación de coincidencia → asignar manualmente → Importar.
2. **Desde la ventana Estado de Cuenta Bancario:** abrir el estado de cuenta existente y revisar las líneas para confirmar la conciliación con diferencia.

## Pestañas

### Línea del Estado de Cuenta

Líneas del extracto bancario a conciliar. Los campos relevantes para la conciliación con diferencia son:

- **Monto del Estado de Cuenta**
  Monto reportado por el banco para la línea. Es la referencia base contra la que se calcula la diferencia.

- **Monto de Cargo / Pago Original**
  Monto original del pago o cargo registrado en el sistema. No se modifica durante la conciliación.

- **Monto Diferencia (Cargo)**
  Diferencia calculada automáticamente entre el monto bancario y el monto del pago conciliado. Representa el ajuste necesario para que la línea cuadre con el banco.

- **Monto de Transacción**
  Monto efectivo aplicado a la línea luego del ajuste por diferencia.

- **Pago Asignado**
  Referencia al pago del sistema vinculado a la línea.

- **Conciliado**
  Indica si la línea quedó conciliada tras el proceso.

## Acciones disponibles

- **Ejecutar Simulación de Coincidencia**
  Busca pagos candidatos en el sistema que coincidan con las líneas del estado de cuenta. Presenta monto, número de referencia y fecha para facilitar la selección manual.

- **Asignar Pago Manualmente**
  Vincula un pago con una línea aun cuando los montos difieren. El usuario indica el monto a asignar y el sistema calcula la diferencia.

- **Importar Estado de Cuenta**
  Ejecuta el proceso de conciliación final. Aplica la vinculación, registra el ajuste por diferencia y completa la línea.

- **Revisar Línea Conciliada**
  Abrir la línea del estado de cuenta para verificar el monto bancario, el monto del pago, la diferencia calculada y el estado de conciliación.

## Flujo del proceso

### 1. Buscar el estado de cuenta bancario

Localizar el estado de cuenta a conciliar por su número de documento o por la cuenta bancaria correspondiente en la ventana **Estado de Cuenta Bancario**.

### 2. Ejecutar la simulación de coincidencia

Lanzar la simulación para que el sistema identifique los pagos candidatos para cada línea del extracto. Cada candidato se muestra con su monto, referencia y fecha.

### 3. Asignar manualmente el pago con diferencia

Seleccionar el pago correspondiente a la línea aun cuando los montos no sean iguales. Ingresar el monto a asignar. El sistema calcula automáticamente la diferencia y la muestra en el campo *Monto Diferencia (Cargo)*.

### 4. Importar el estado de cuenta

Ejecutar **Importar Estado de Cuenta** (Siguiente → OK). El proceso:

- Vincula los registros del banco con los pagos del sistema.
- Registra la diferencia calculada como cargo de ajuste en la línea.
- Actualiza el monto de transacción para que cuadre con el banco.
- Conserva el monto original del pago sin modificaciones.

### 5. Revisar la línea conciliada

Abrir el estado de cuenta resultante y localizar la línea. Verificar *Monto del Pago*, *Monto del Estado de Cuenta*, *Monto de la Diferencia* y el estado *Conciliado*.

### 6. Confirmar la diferencia

Validar que la diferencia registrada refleja correctamente la discrepancia entre el monto bancario y el pago del sistema. La línea queda conciliada con ajuste.

## Ejemplo de uso

Un pago registrado en el sistema por **11.963** debe conciliarse con una línea del estado de cuenta bancario por **18.000**:

1. Abrir **Estado de Cuenta Bancario** y buscar el extracto correspondiente.
2. Ejecutar la **simulación de coincidencia**; el sistema identifica el pago con referencia **76255** y monto **18.000** en el banco.
3. Asignar manualmente el cargo al pago identificado indicando el monto a aplicar.
4. El sistema muestra el monto de transacción parcial y la diferencia calculada automáticamente.
5. Ejecutar **Importar Estado de Cuenta** → **Siguiente** → **OK**.
6. Abrir el estado de cuenta generado y localizar la línea:
   - **Monto del Pago**: 11.963
   - **Monto del Estado de Cuenta**: 18.000
   - **Monto de la Diferencia**: 6.307
7. La diferencia de **6.307** queda registrada en la línea como cargo de ajuste; la conciliación se completa sin alterar el pago original.

## Consideraciones importantes

- No modificar manualmente los montos de cargo en el registro de importación durante la vinculación. El sistema gestiona la diferencia automáticamente al importar; una edición manual puede corromper la conciliación.
- El **monto original del pago** se mantiene siempre intacto para preservar trazabilidad y auditoría; la diferencia queda aislada en la línea del estado de cuenta.
- El proceso aplica la conciliación sobre **todos los registros pendientes** del extracto en importación, no solo sobre la línea seleccionada. Por eso puede tardar varios segundos según el volumen.
- La funcionalidad aplica tanto a estados de cuenta importados por primera vez como a registros actualizados posteriormente con nuevas coincidencias.
- Si el pago candidato correcto no aparece en la simulación (por diferencia grande de monto o referencia distinta), verificar que el pago existe y está en estado *Completo* en el sistema antes de intentar la asignación manual.
- La diferencia registrada se refleja en los reportes de conciliación y puede revisarse posteriormente desde la línea del estado de cuenta. No genera un asiento contable adicional por sí misma: el ajuste contable depende de la configuración de la cuenta bancaria y del pago.

## Ventanas relacionadas

- [Conciliación Automática de Cuentas](automatic-account-reconciliation)
- [Conciliación de Hechos Contables (Manual)](accounting-fact-reconciliation-manual)
- [Hechos Contables sin Conciliar](unreconciled-accounting-facts)
