---
title: Solicitud de Permiso
category: Documentation
star: 9
sticky: 9
article: false
---

# Solicitud de Permiso

## Descripción

La ventana **Solicitud de Permiso** es el documento transaccional donde se registran las solicitudes de permisos y licencias de los empleados. Funciona como un documento con ciclo de vida: se crea en borrador, se completa y puede pasar por un flujo de aprobación antes de hacerse efectivo.

Cada solicitud descuenta automáticamente del saldo disponible del empleado para ese tipo de permiso, lo que permite controlar que no se excedan los días autorizados.

## ¿Cuándo se utiliza?

Se utiliza cuando un empleado necesita:

- Solicitar días de vacaciones
- Registrar una licencia médica, por maternidad o por estudio
- Solicitar un permiso por donación de sangre, trámites legales u otros motivos
- Registrar cualquier ausencia que requiera documentación formal

## Acceso

Existen dos formas de acceder:

1. **Desde el menú:** Gestión de Recursos Humanos y Nómina → Gestión de Permisos → Solicitud de Permiso
2. **Desde el empleado:** Abrir la ficha del empleado → pestaña **Detalle de Permiso** → botón **Crear Permiso** (recomendado)

## Pestañas

### Solicitud de Permiso

Pestaña única donde se registra la solicitud. La información se organiza en:

- **Tipo de Permiso y Motivo**
  Seleccionar el tipo de permiso (por ejemplo, "Donación de Sangre") y el motivo específico. Ambos campos son obligatorios.

- **Empleado**
  El empleado que solicita el permiso. Si se accede desde la ficha del empleado, este campo se completa automáticamente.

- **Fechas**
  Fecha de inicio, fecha final y fecha de regreso del permiso. Para permisos de un solo día, las tres fechas pueden ser iguales.

- **Cantidad**
  Número de días (u horas, según la unidad del tipo de permiso) solicitados. El sistema valida que no se exceda la cantidad disponible.

- **Horario** (opcional)
  Hora de inicio y hora de fin, útil para permisos parciales como la lactancia materna.

- **Estado del Documento**
  Controla el ciclo de vida de la solicitud: Borrador, En Proceso, Completo.

## Acciones disponibles

- **Completar**
  Finaliza la solicitud y descuenta los días del saldo del empleado. Si hay flujo de aprobación configurado, queda pendiente de autorización.

- **Preparar**
  Envía la solicitud al flujo de aprobación sin completarla directamente. Un supervisor o encargado debe aprobarla.

## Flujo del proceso

### 1. Verificar el saldo del empleado

Antes de crear la solicitud, ir a la ficha del empleado → pestaña **Detalle de Permiso** para verificar la cantidad disponible para el tipo de permiso deseado.

### 2. Crear la solicitud

Desde la pestaña Detalle de Permiso, hacer clic en **Crear Permiso**. El sistema abre automáticamente el formulario con el tipo de permiso ya seleccionado.

### 3. Completar los datos

Seleccionar el motivo, ingresar las fechas del permiso y la cantidad de días a utilizar.

### 4. Procesar la solicitud

Seleccionar la acción **Completar** para procesar directamente, o **Preparar** para enviarlo al flujo de aprobación.

### 5. Verificar el resultado

Regresar al **Detalle de Permiso** del empleado para confirmar que el saldo se actualizó correctamente (Cantidad Permitida - Cantidad Utilizada = Disponible).

## Ejemplo de uso

El empleado Germán necesita un permiso por donación de sangre:

1. Abrir la ficha de Germán en la ventana Empleado
2. Ir a la pestaña **Detalle de Permiso** y verificar que tiene 1 permiso disponible de "Donación de Sangre"
3. Hacer clic en **Crear Permiso**
4. Seleccionar el motivo "Licencia por Donación de Sangre"
5. Ingresar la fecha del permiso (por ejemplo, el lunes próximo)
6. Colocar la cantidad: 1 día
7. Seleccionar acción: **Completar**
8. Al regresar al Detalle de Permiso, la cantidad utilizada ahora muestra 1 y la cantidad disponible es 0

## Consideraciones importantes

- El empleado debe tener un **Tipo de Empleado** asignado para que aparezcan los permisos disponibles en su Detalle de Permiso
- La cantidad solicitada se valida contra el saldo disponible; no es posible solicitar más días de los permitidos
- Los permisos por vacaciones también se gestionan desde esta ventana, pero pueden generarse automáticamente mediante el proceso [Crear Permiso Repetido](./create-repeated-leave)
- El flujo de aprobación sigue el estándar del sistema y puede configurarse según las necesidades de la organización
