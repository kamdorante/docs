---
title: Reportar Horas de Personal
category: Documentation
star: 9
sticky: 9
article: false
---

# Reportar Horas de Personal

## Descripción

**Reportar Horas de Personal** es la funcionalidad de *Time-Sheet* del módulo de Gestión Humana. Permite que cada empleado cargue las horas trabajadas día a día e indique a qué proyecto, actividad o contrato corresponden. Las horas se ingresan eligiendo entre dos modalidades: por **rango horario** (entrada / salida del día, con descansos) o por **cantidad** (número total de horas), siempre asociadas a una fecha contable.

El sistema valida la consistencia de las horas ingresadas (entradas y salidas pares, horas dentro del turno asignado al empleado) y, al completarse el registro, genera el **Registro de Asistencia** correspondiente. Los registros pendientes pasan a un flujo de aprobación donde el supervisor del empleado los confirma. Las horas aprobadas alimentan los reportes de mano de obra del proyecto y las incidencias de nómina cuando aplican.

## ¿Cuándo se utiliza?

Se utiliza cuando la organización necesita:

- Que los empleados reporten sus horas trabajadas día a día.
- Imputar horas a proyectos, actividades o contratos específicos para calcular costo de mano de obra.
- Generar registros de asistencia consistentes a partir de las horas reportadas.
- Habilitar un flujo de aprobación de horas por parte del supervisor del empleado.
- Cargar horas para varios días o varios empleados en lote (carga masiva).
- Disponer de los datos de horas para reportes de costos de proyecto, productividad y nómina.

## Acceso

Existen varios puntos de acceso según el escenario:

1. **Por fecha:** Recursos Humanos y Nómina → Control de Asistencia → Reporte de Horas de Personal por Fecha.
2. **Por horas:** Recursos Humanos y Nómina → Control de Asistencia → Reporte de Horas de Personal por Horas.
3. **Desde el calendario del empleado:** abrir el calendario del empleado y seleccionar el día para reportar horas con vista visual.
4. **Desde un proyecto:** acción *Registrar Horas Trabajadas* dentro de la ventana **Proyecto** para imputar horas directamente al proyecto.
5. **Desde un contrato de servicios:** acción *Registrar Horas Trabajadas* dentro de la ventana **Contrato de Servicios** para imputar al contrato.
6. **Aprobación del supervisor:** Recursos Humanos y Nómina → Control de Asistencia → Aprobar Registro de Horas (rol supervisor).

## Configuración previa

### Empleado

En la ventana **Empleado**, el registro debe tener configurados:

- **Activo = Sí**.
- **Grupo de Trabajo** o **Grupo de Turno** asignado. Define el turno del empleado y se usa para validar las horas reportadas.
- **Supervisor** definido (cuando el flujo requiere aprobación).

### Turnos

El **Turno de Trabajo** asignado al grupo del empleado define el horario esperado. El sistema utiliza esta información para validar las horas reportadas y calcular automáticamente la cantidad cuando aplica.

### Proyectos, Actividades y Contratos

Para que las horas se imputen, el empleado debe tener acceso a los proyectos, actividades o contratos a los que va a reportar. Estas dimensiones son las que permiten calcular el costo de mano de obra por proyecto.

## Pestañas

### Reporte de Horas (cabezal)

Pestaña principal con los datos del reporte. Los campos relevantes son:

- **Empleado**
  Empleado al que corresponden las horas. Se completa automáticamente con el usuario que ejecuta el reporte cuando el rol es de empleado.

- **Fecha del Documento**
  Fecha contable del reporte. Se usa para los asientos asociados.

- **Fecha Desde / Fecha Hasta**
  Cuando se carga por rango horario, indican el inicio y fin del período trabajado.

- **Cantidad**
  Número total de horas reportadas. En la modalidad por rango, se calcula automáticamente; en la modalidad por cantidad, se ingresa manualmente.

- **Proyecto / Actividad / Contrato**
  Dimensión a la que se imputan las horas. Al menos una debe estar definida para que el reporte impute correctamente.

- **Descripción**
  Texto opcional con detalle de la tarea realizada.

- **Estado**
  Estado del reporte (Borrador, En Aprobación, Confirmado).

### Líneas de Horas

Detalle de los tramos de entrada y salida cuando se reporta por rango horario. Las líneas se ingresan en pares:

- **Hora de Entrada**
- **Hora de Salida**

Por ejemplo, una jornada con almuerzo se carga como dos líneas: 08:00–12:00 y 13:00–16:00. El sistema valida que cada entrada tenga su salida y rechaza el procesamiento si quedan tramos impares.

### Registro de Asistencia Generado

Vista del **Registro de Asistencia** creado a partir del reporte. Muestra el turno aplicado, las líneas de asistencia (entrada/salida pareadas) y el total de horas calculado.

## Acciones disponibles

- **Crear Reporte por Rango Horario**
  Ingresar entrada y salida del día (con descansos como tramos separados). El sistema calcula la cantidad automáticamente.

- **Crear Reporte por Cantidad**
  Ingresar directamente la cantidad de horas trabajadas sin detallar horarios. Útil para tareas medidas por duración.

- **Reportar desde Proyecto / Contrato**
  Cargar horas directamente desde la ventana del proyecto o del contrato, con el proyecto/contrato preseleccionado.

- **Completar**
  Procesa el reporte. Valida la consistencia (entradas/salidas pares, horas dentro del turno) y genera el **Registro de Asistencia**.

- **Aprobar**
  Disponible para el rol supervisor. Confirma el reporte del empleado para que las horas pasen a estado válido.

- **Reportar en Calendario**
  Vista visual donde el empleado puede pintar las horas en el calendario, seleccionando el día y el rango horario sobre la cuadrícula.

## Flujo del proceso

### 1. Configurar al empleado

Asegurar que el empleado tiene asignado el grupo de turno, su turno de trabajo, su supervisor y los proyectos/contratos a los que puede imputar horas. Sin esta configuración, el reporte no encuentra el turno aplicable.

### 2. Crear el reporte de horas

El empleado abre **Reporte de Horas de Personal** y selecciona la modalidad:

- **Por rango horario**: ingresar Fecha, Hora de Entrada, Hora de Salida. Si la jornada tiene descansos, agregar tramos adicionales.
- **Por cantidad**: ingresar Fecha y Cantidad de horas directamente.

Indicar el **Proyecto**, **Actividad** o **Contrato** correspondiente y una descripción de la tarea.

### 3. Validar la consistencia

Antes de procesar, revisar que las entradas y salidas estén pareadas. Si hay un tramo impar (por ejemplo, una entrada sin salida), el sistema rechaza el procesamiento con el mensaje correspondiente.

### 4. Completar el reporte

Ejecutar **Completar**. El sistema:

- Valida las horas contra el turno del empleado.
- Genera el **Registro de Asistencia** con las líneas pareadas.
- Calcula el total de horas (cantidad).
- Deja el reporte en estado *En Aprobación* si el flujo requiere supervisor, o *Confirmado* si no.

### 5. Aprobación del supervisor (si aplica)

El supervisor ingresa con su rol y abre **Aprobar Registro de Horas**. Filtra por su equipo o por el empleado, revisa cada reporte y ejecuta **Confirmar**. El reporte pasa a estado *Confirmado* y las horas quedan disponibles para reportes de costo y nómina.

### 6. Consultar los reportes

Las horas confirmadas aparecen en los reportes:

- **Reporte de horas de personal por proyecto**: muestra la mano de obra imputada al proyecto.
- **Reporte de mano de obra en resultados del proyecto**: incluye las horas en el cálculo del costo y rentabilidad.
- **Incidencias de nómina**: si el reporte alimenta la nómina, los conceptos aplicables se generan automáticamente.

## Ejemplo de uso

Un empleado tercerizado carga sus horas del día con almuerzo y un supervisor las aprueba:

1. El empleado ingresa al sistema con su usuario.
2. Abre **Reporte de Horas de Personal por Fecha** y selecciona la fecha del día actual.
3. Modalidad **por rango horario**: ingresa dos tramos:
   - Línea 1: Entrada 08:00, Salida 12:00.
   - Línea 2: Entrada 13:00, Salida 16:00.
4. Indica el **Proyecto** al que pertenece la tarea y una descripción ("Avance fase de diseño").
5. Ejecuta **Completar**. El sistema valida los pares de entrada/salida, calcula 7 horas en total y genera el **Registro de Asistencia**.
6. El reporte queda en estado *En Aprobación*.
7. El supervisor ingresa con su rol, abre **Aprobar Registro de Horas**, filtra por el empleado y confirma el reporte.
8. Las 7 horas pasan a *Confirmado* y aparecen en el **Reporte de Mano de Obra** del proyecto.

## Consideraciones importantes

- Las **entradas y salidas** deben estar pareadas. Si la jornada tiene 3 entradas y 2 salidas (o viceversa), el sistema rechaza el procesamiento con un mensaje de inconsistencia. Borrar el tramo incompleto antes de completar.
- En la modalidad **por cantidad**, no es necesario ingresar horarios; solo el total de horas. Útil cuando la tarea se mide por duración sin entrada/salida específica.
- El **turno asignado** al empleado se usa para validar las horas; si las horas reportadas exceden el turno (por ejemplo, jornada de 8 horas con reporte de 10), el sistema puede emitir advertencia o registrar las horas extra según la configuración.
- Las **horas imputadas a proyectos** alimentan los reportes de costo y rentabilidad; el costo unitario por hora se toma de la configuración del puesto del empleado.
- El **supervisor** define quién aprueba los reportes. Sin supervisor asignado al empleado, los reportes quedan sin aprobar y no impactan en costos ni nómina.
- Las modalidades **por proyecto** y **por contrato** desde sus respectivas ventanas son atajos: precompletan el campo de proyecto/contrato y simplifican la carga cuando el empleado trabaja consistentemente en uno solo.
- La **fecha del documento** debe estar dentro de un período abierto. Si el período está cerrado, el reporte falla; el empleado debe reportar las horas a una fecha del período actual o solicitar a Administración la reapertura.
- El sistema soporta **carga masiva** de horas para varios empleados o varios días desde un navegador específico, útil al imputar mano de obra retroactiva a un proyecto.
- Los reportes ya **confirmados** no pueden modificarse directamente. Si se detecta un error, el supervisor debe rechazar y solicitar al empleado un nuevo reporte de corrección.
- Las horas reportadas pueden visualizarse en el **calendario del empleado**, lo que facilita la revisión semanal o mensual.

## Ventanas relacionadas

- [Empleado](../employee/)
- [Posición](../employee/position)
