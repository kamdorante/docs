---
title: Asignación de Estado de Cuenta con Diferencia
category: Documentation
star: 9
sticky: 9
article: false
---

# Asignación de Estado de Cuenta con Diferencia

## Descripción

La funcionalidad de **Asignación de Estado de Cuenta con Diferencia** permite conciliar líneas de estado de cuenta bancario cuyo monto no coincide exactamente con el monto del pago registrado en el sistema. El sistema calcula y preserva automáticamente la diferencia entre el monto del estado de cuenta y el monto del pago, completando la conciliación de forma transparente y segura.

Esta funcionalidad asegura que la información original del registro se mantenga intacta, gestionando la diferencia de forma aislada para un control preciso.

## ¿Cuándo se utiliza?

Se utiliza cuando:

- El monto del pago registrado en el sistema es **diferente** al monto que figura en la línea del estado de cuenta bancario.
- Se necesita asignar manualmente un pago a una línea del estado de cuenta durante el proceso de importación.
- Se requiere registrar la diferencia detectada en la conciliación sin afectar la información original del pago.

## Acceso

Estado de Cuenta Bancario → ejecutar la simulación de coincidencia → asignar manualmente → Importar Estado de Cuenta

## Campos Principales

| Campo | Descripción | Tipo | Obligatorio |
|-------|-------------|------|-------------|
| Monto Diferencia (Cargo) | Diferencia calculada entre el monto de la transacción y el monto del pago conciliado. Representa el ajuste a realizar. | Monto | No |
| Monto de Transacción | Monto efectivo de la transacción en la línea, ajustado considerando la diferencia detectada. | Monto | No |
| Monto del Estado de Cuenta | Monto reportado por el banco. Es la referencia base para calcular la diferencia. | Monto | Sí |
| Monto de Cargo/Pago Original | Monto original del pago o cargo en el sistema. Se conserva sin modificaciones. | Monto | No |

## Lógica de Sistema

El sistema procesa automáticamente la conciliación con diferencia realizando los siguientes pasos internos:

- **Al detectar una diferencia:** Calcula automáticamente la diferencia entre el monto efectivo y el monto del pago.
- **Al importar:** Registra la diferencia calculada como un cargo de ajuste y actualiza el monto de la transacción en la línea del estado de cuenta para que cuadre con el banco.

::: warning Importante
El sistema garantiza que la información original del registro importado no sufra alteraciones indeseadas. La diferencia se gestiona automáticamente para preservar los datos iniciales.
:::

## Flujo del Proceso

### 1. Buscar el estado de cuenta bancario

Localizar el estado de cuenta a conciliar por su número de documento en la ventana **Estado de Cuenta Bancario**.

### 2. Ejecutar la simulación de coincidencia

Iniciar la simulación para identificar los pagos con coincidencia en las líneas del estado de cuenta. El sistema presenta los pagos candidatos con su monto y número de referencia.

### 3. Asignar manualmente el pago con diferencia

Seleccionar el pago correspondiente a la línea, aunque los montos no sean iguales. Ingresar el monto de cargo a asignar manualmente. El sistema calculará la diferencia resultante.

### 4. Importar el estado de cuenta

Ejecutar el proceso de **Importar Estado de Cuenta** (Siguiente → OK). El sistema completará la conciliación:

- Realiza la vinculación entre los registros del banco y los pagos del sistema.
- Aplica el ajuste por la diferencia calculada.
- Protege los datos originales del pago sin modificarlos.

::: tip Tiempo de procesamiento
El proceso puede tardar varios segundos porque aplica el proceso de conciliación sobre **todos** los registros pendientes en la importación y realiza la vinculación contra los pagos disponibles.
:::

### 5. Revisar el estado de cuenta generado

Abrir el estado de cuenta bancario resultante y localizar la línea conciliada. Verificar los siguientes campos:

- **Monto del pago**
- **Monto del estado de cuenta**
- **Monto de la diferencia (Cargo)**
- **Diferencia final**

### 6. Confirmar la diferencia

Validar que la diferencia calculada refleja correctamente la discrepancia entre el monto bancario y el pago registrado en el sistema.

## Ejemplo de Uso

Escenario: un pago registrado en el sistema por **11.963** debe conciliarse con una línea del estado de cuenta bancario por **18.000**.

1. Abrir el **Estado de Cuenta Bancario** y buscar el estado de cuenta.
2. Ejecutar la simulación; el sistema identifica el pago con referencia **76255** y monto **−18.000**.
3. Asignar manualmente el cargo de **11.000** al pago identificado.
4. Al revisar la importación, el sistema muestra el pago de **7.593** asignado como monto de transacción parcial.
5. Ejecutar **Importar Estado de Cuenta** → **Siguiente** → **OK**.
6. Abrir el estado de cuenta generado y localizar la línea con la referencia de importación.

| Campo | Valor |
|-------|------:|
| Monto del Pago | 11.963 |
| Monto del Estado de Cuenta | 18.000 |
| Monto de la Diferencia | 6.307 |

7. La diferencia de **6.307** queda registrada en la línea del estado de cuenta, completando la conciliación.

## Consideraciones Importantes

- No modifique los montos de cargo manualmente en el registro de importación durante el proceso de vinculación. El sistema gestiona las diferencias de forma automática al importar.
- Esta funcionalidad aplica tanto a estados de cuenta importados por primera vez como a registros que se actualicen posteriormente.
- El proceso de conciliación evalúa todos los registros pendientes, por lo que el tiempo de procesamiento puede variar según el volumen de transacciones a importar.
- El sistema mantiene siempre el monto original del registro intacto para asegurar la trazabilidad y auditoría de las operaciones.

## Ventanas Relacionadas

- [Conciliación Automática de Cuentas](automatic-account-reconciliation)
- [Conciliación de Hechos Contables (Manual)](accounting-fact-reconciliation-manual)
- [Hechos Contables sin Conciliar](unreconciled-accounting-facts)
