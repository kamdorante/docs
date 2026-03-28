---
title: Tipo de Permiso
category: Documentation
star: 9
sticky: 9
article: false
---

# Tipo de Permiso

## Descripción

La ventana **Tipo de Permiso** permite configurar las reglas que rigen cada tipo de permiso o licencia que la organización otorga a sus empleados. Aquí se define todo lo necesario para que el sistema sepa cómo gestionar cada permiso: si es remunerado, con qué frecuencia se otorga, cuántos días corresponden, si aplica solo en días hábiles, entre otros aspectos.

Cada tipo de permiso funciona como una plantilla de reglas. Por ejemplo, las **Vacaciones Anuales** tienen reglas muy distintas a una **Donación de Sangre** o una **Licencia por Maternidad**, y cada una se configura de forma independiente en esta ventana.

## ¿Cuándo se utiliza?

Se utiliza cuando se necesita:

- Crear un nuevo tipo de permiso en el sistema (por ejemplo, Vacaciones Anuales, Licencia por Maternidad, Licencia por Estudio)
- Definir las reglas de otorgamiento: cuántos días corresponden, si es remunerado, si se repite anualmente
- Establecer qué tipos de empleado pueden acceder a cada permiso
- Configurar permisos que se incrementan con la antigüedad del empleado

## Acceso

Menú: Gestión de Recursos Humanos y Nómina → Gestión de Permisos → Tipo de Permiso

## Pestañas

### Tipo de Permiso

Pestaña principal donde se definen las reglas del tipo de permiso. Los aspectos más importantes a configurar son:

- **Repetitivo**
  Indica si el permiso se puede otorgar más de una vez. Por ejemplo, las vacaciones anuales son repetitivas porque se otorgan cada año.

- **Unidad de Medida**
  Define en qué unidad se mide el permiso: días, horas o minutos. Las vacaciones generalmente se miden en días, mientras que la lactancia materna puede medirse en horas.

- **Frecuencia**
  Cuando el permiso es repetitivo, indica cada cuánto se renueva: anual, mensual, semanal, etc.

- **Permiso Remunerado**
  Indica si el empleado recibe su salario durante el período del permiso. Es informativo para el control de recursos humanos.

- **Solo Días Hábiles**
  Determina si los días otorgados se cuentan solo como días laborables o si incluyen fines de semana y feriados.

- **Cantidad de Incremento**
  Para permisos que aumentan con la antigüedad (como vacaciones), indica cuántos días se agregan por cada período cumplido. Por ejemplo, 1 día adicional por año de servicio.

- **Duración Máxima**
  El tope máximo de días que se pueden acumular. Por ejemplo, aunque las vacaciones se incrementen cada año, el máximo podría ser 30 días.

- **Cantidad Mínima Requerida**
  La cantidad de días con que inicia el permiso. Por ejemplo, 15 días de vacaciones desde el primer año.

- **Fecha Variable - Referencia al Incremento**
  Define desde qué fecha se calcula el incremento. Generalmente se usa la **Fecha de Inicio del Empleado** para que las vacaciones se calculen desde el aniversario de ingreso.

### Combinación de Permisos Permitida

Define qué tipos de permiso pueden coexistir o solaparse entre sí. Permite controlar que un empleado no solicite dos tipos de permiso incompatibles al mismo tiempo.

### Tipo de Permiso por Tipo de Empleado

Vincula cada tipo de permiso con las categorías de empleado que pueden acceder a él. Por ejemplo, si las **Vacaciones Anuales** solo aplican para empleados de tipo **Tercerizado**, se configura aquí. Al asignar un tipo de empleado a un empleado, automáticamente se le cargan en su **Detalle de Permiso** todos los tipos de permiso que le corresponden.

## Flujo del proceso

### 1. Crear el tipo de permiso

Abrir la ventana e ingresar el nombre (por ejemplo, "Vacaciones Anuales"), la unidad de medida y si es repetitivo.

### 2. Configurar las reglas

Completar los campos de frecuencia, duración máxima, cantidad mínima, si es remunerado y si aplica solo a días hábiles.

### 3. Asociar a tipos de empleado

En la pestaña **Tipo de Permiso por Tipo de Empleado**, agregar las categorías de empleado que tendrán acceso a este permiso.

### 4. Definir motivos (en otra ventana)

Ir a la ventana [Motivos de Permiso](./leave-reasons) para crear los motivos asociados a este tipo.

## Ejemplo de uso

Para configurar **Vacaciones Anuales**:

1. Crear un tipo de permiso llamado "Vacaciones Anuales"
2. Marcar como **Repetitivo** con frecuencia **Anual**
3. Unidad de medida: **Día**
4. Cantidad mínima requerida: **15** (días desde el primer año)
5. Cantidad de incremento: **1** (un día adicional por año de servicio)
6. Duración máxima: **30** (tope de días acumulables)
7. Referencia al incremento: **Fecha de Inicio del Empleado**
8. Solo días hábiles: según la legislación local
9. En la pestaña de tipos de empleado, asociar a "Tercerizado" u otros tipos que correspondan

## Consideraciones importantes

- Los tipos de permiso definen las **reglas**, no las solicitudes individuales. Las solicitudes se realizan desde la ventana [Solicitud de Permiso](./leave-request) o desde el botón "Crear Permiso" en la ficha del empleado
- Para que los permisos repetitivos se generen automáticamente, es necesario configurar el proceso [Crear Permiso Repetido](./create-repeated-leave) en el Programador de Tareas
- Al modificar un tipo de permiso ya existente, los cambios aplican para futuras asignaciones pero no alteran los permisos ya otorgados
