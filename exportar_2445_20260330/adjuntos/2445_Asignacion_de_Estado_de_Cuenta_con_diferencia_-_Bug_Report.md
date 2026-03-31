## Overview

Se ha identificado un problema en la conciliación de pagos al importar el estado de cuenta 2830. A pesar de que los montos de referencia son diferentes, el sistema asigna incorrectamente los pagos, lo que genera discrepancias en los totales. Esto afecta la precisión de los informes financieros y puede llevar a errores en la contabilidad.

## Steps to Reproduce

1. Acceder a DayDev.dev y buscar el estado de cuenta 2830.
2. Realizar una coincidencia con un monto de -18,000 pesos y el número de referencia 76255.
3. Asignar manualmente la cuenta bancaria correspondiente.
4. Importar la cuenta y verificar el número de referencia.
5. Observar el monto asignado en el estado de cuenta y compararlo con el monto de la importación.

## Acceptance Criteria

- El sistema debe asignar correctamente los pagos basándose en los montos de referencia.
- No debe haber discrepancias entre los montos de la importación y los montos en el estado de cuenta.
- La conciliación debe reflejar con precisión los totales de las transacciones.

<https://loom.com/share/a2ba11734d0a4c38a66c66bcd545a46a?src=composer>
