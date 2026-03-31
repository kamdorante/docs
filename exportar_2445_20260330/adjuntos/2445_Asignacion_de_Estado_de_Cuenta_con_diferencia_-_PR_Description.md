## Implementación de la conciliación de pagos en el estado de cuenta

 

![generated-image-at-00:00:01](https://loom.com/i/28a18352be60475ca367808301c3bae6?workflows_screenshot=true)

### Overview

Este Pull Request incluye las siguientes mejoras y cambios:

- Se ha implementado un nuevo algoritmo para la conciliación de pagos en el estado de cuenta.
- Se permite la asignación manual de pagos a cuentas bancarias existentes.
- Se ha optimizado el proceso de importación de datos para mejorar la eficiencia.
- Se han realizado pruebas para asegurar que los montos de las transacciones se concilien correctamente, incluso cuando hay diferencias en los montos.
- Se ha añadido una funcionalidad para calcular automáticamente la diferencia entre el monto de carga y el monto de simulación.

### Assumptions

- Se asume que los datos de entrada son correctos y están en el formato esperado.
- Se asume que las cuentas bancarias ya están configuradas en el sistema.
- Se asume que el algoritmo de conciliación es capaz de manejar diferentes montos y tipos de transacciones.
- Se asume que los usuarios tienen el conocimiento necesario para realizar la asignación manual de pagos.

### Testing Strategy

- Se han realizado pruebas unitarias para verificar la correcta asignación de pagos.
- Se han realizado pruebas de integración para asegurar que el algoritmo de conciliación funcione correctamente con los datos importados.
- Se han realizado pruebas de rendimiento para evaluar el tiempo de respuesta del sistema durante el proceso de conciliación.
- Se han realizado pruebas de usuario para validar la experiencia de asignación manual de pagos.

<https://loom.com/share/a2ba11734d0a4c38a66c66bcd545a46a>
