---
title: Empleado
category: Documentation
star: 9
sticky: 9
article: false
---

# Empleado

## Descripción

La ventana **Empleado** es la ficha central del personal en el módulo de Gestión Humana. Cada registro representa a una persona vinculada a la empresa y consolida la información personal, laboral, contable y bancaria utilizada por los procesos de nómina, gestión de permisos y control de asistencia.

En el sistema, todos los empleados son a su vez **socios de negocio** marcados como *Empleado = Sí*. Esto permite reutilizar la misma entidad (datos de contacto, dirección, identificación) en distintos roles (cliente, proveedor, empleado) y centralizar el mantenimiento. Desde la ventana **Empleado** se accede solo a aquellos socios marcados como empleados, ocultando el resto de los socios para simplificar la operativa diaria del área de Recursos Humanos.

## ¿Cuándo se utiliza?

Se utiliza cuando la organización necesita:

- Dar de alta a una persona en la nómina, indicando contrato, departamento, puesto y fechas laborales.
- Mantener los datos personales y de contacto de un empleado activo.
- Asignar al empleado un **Tipo de Empleado** que determina los permisos a los que tiene derecho (vacaciones, donación de sangre, licencias, etc.).
- Definir las cuentas bancarias para el pago de la nómina.
- Configurar las cuentas contables para el reembolso de gastos.
- Cerrar el ciclo de un empleado registrando la fecha de fin de la relación laboral.

## Acceso

Existen dos formas de acceder:

1. **Desde el menú:** Recursos Humanos y Nómina → Recursos Humanos → Configuración de Empleados → Empleado.
2. **Desde la lupa de búsqueda:** escribir *Empleado* en la lupa global y seleccionar la ventana correspondiente. La lupa muestra el recorrido del menú lateral, lo que ayuda a ubicar la ventana cuando aún no se memorizó la ruta.

## Pestañas

### Socio del Negocio

Pestaña principal con la información del socio del negocio asociado al empleado. La ventana **Empleado** filtra automáticamente para mostrar solo socios marcados como *Empleado = Sí*. Los campos relevantes son:

- **Clave de Búsqueda**
  Identificador único del empleado (suele coincidir con el número de cédula o documento). Si se omite y se completa la *Identificación*, el sistema puede copiar uno al otro automáticamente.

- **Nombre y Nombre 2**
  Nombre y apellidos del empleado.

- **Identificación**
  Número de documento (cédula, DNI, etc.) según la normativa del país.

- **Fecha de Nacimiento**
  Cumpleaños del empleado.

- **Estado Marital**
  Estado civil. Es opcional y puede ocultarse cuando la organización no lo necesita.

- **Empleado**
  Indicador *Sí/No* que marca al socio como empleado. Es lo que habilita su visualización en esta ventana.

- **Tipo de Empleado**
  Clasificación que define el grupo de permisos a los que tiene derecho (por ejemplo, *Tercerizado*, *Personal de Planta*). Sin este campo, el empleado no puede solicitar permisos.

- **Activo**
  Estado del empleado en el sistema.

### Empleado

Información laboral específica de nómina. Los campos relevantes son:

- **Contrato de Nómina**
  Contrato bajo el cual está vinculado el empleado.

- **Departamento de Nómina**
  Departamento al que pertenece dentro de la estructura organizacional.

- **Puesto de Nómina**
  Posición que ocupa. Define la remuneración y la categoría asociada.

- **Fecha de Inicio**
  Fecha de inicio de la relación laboral.

- **Fecha de Fin**
  Fecha en que finaliza la relación laboral. Si está vacía, el empleado está activo.

- **Días de Vacaciones**
  Total de días de vacaciones disponibles por año o período.

- **Días Usados**
  Días de vacaciones ya consumidos.

- **Imagen**
  Fotografía del empleado.

### Contabilidad del Empleado

Cuentas contables predeterminadas para el reembolso de gastos del empleado y la registración de la nómina.

### Atributo

Atributos adicionales del empleado de nómina. Permite extender la ficha con conceptos personalizados (por ejemplo, número de seguro de salud, sindicato, nivel jerárquico) sin modificar la estructura base.

### Cuenta Bancaria

Información bancaria del empleado utilizada para el pago de nómina mediante transferencia.

### Ubicación

Dirección física del empleado (calle, ciudad, país). Se utiliza en reportes y comunicaciones.

### Contacto (Usuario)

Usuario del sistema asociado al empleado para acceso interno cuando corresponde (por ejemplo, supervisores que aprueban permisos).

### Detalle de Permiso

Pestaña que muestra los tipos de permiso disponibles para el empleado según su *Tipo de Empleado*, con la cantidad permitida, utilizada y disponible. Es el punto desde el cual se crea una **Solicitud de Permiso** con la acción *Crear Permiso*.

## Acciones disponibles

- **Crear Empleado**
  Crear un nuevo registro. Si el socio de negocio no existe, se puede crear desde la misma ventana marcándolo como *Empleado = Sí*.

- **Cambiar a Multiregistro / Grilla**
  Alternar entre vista monoregistro (ficha) y vista multiregistro (grilla) para revisar varios empleados a la vez.

- **Crear Permiso**
  Desde la pestaña *Detalle de Permiso*, abre el formulario de **Solicitud de Permiso** con el tipo de permiso preseleccionado y el saldo disponible visible.

- **Asignar Tipo de Empleado**
  Editar el campo *Tipo de Empleado* en la pestaña *Socio del Negocio* para que el sistema cargue los permisos correspondientes en la pestaña *Detalle de Permiso*.

- **Cerrar Vínculo Laboral**
  Completar la *Fecha de Fin* en la pestaña *Empleado* cuando finaliza la relación laboral.

## Flujo del proceso

### 1. Dar de alta al empleado

Desde la ventana **Empleado**, ejecutar **Nuevo**. Completar nombre, identificación, clave de búsqueda y marcar *Empleado = Sí*. Guardar.

### 2. Asignar el Tipo de Empleado

En la pestaña *Socio del Negocio*, seleccionar el **Tipo de Empleado** correspondiente (por ejemplo, *Tercerizado* o *Planta*). Sin este dato, los permisos disponibles no aparecen en *Detalle de Permiso*.

### 3. Completar los datos laborales

Ir a la pestaña *Empleado* y completar contrato de nómina, departamento, puesto y fecha de inicio. Indicar también los días de vacaciones disponibles si corresponde.

### 4. Configurar contabilidad y banco

En las pestañas *Contabilidad del Empleado* y *Cuenta Bancaria*, completar las cuentas contables de reembolso de gastos y los datos bancarios para el pago de la nómina.

### 5. Verificar permisos disponibles

Abrir la pestaña *Detalle de Permiso* y confirmar que aparecen los tipos de permiso correspondientes al *Tipo de Empleado* asignado, con su cantidad permitida, utilizada y disponible.

### 6. Crear permisos según necesidad

Desde *Detalle de Permiso*, ejecutar **Crear Permiso** cuando el empleado requiera un permiso (donación de sangre, vacaciones, licencia médica, etc.). El sistema abre la **Solicitud de Permiso** con el tipo preseleccionado.

### 7. Cerrar el vínculo cuando corresponda

Si el empleado deja la organización, completar la *Fecha de Fin* en la pestaña *Empleado* para marcar el cierre del vínculo. El registro se conserva para trazabilidad histórica.

## Ejemplo de uso

Dar de alta un nuevo empleado tercerizado y registrarle un permiso por donación de sangre:

1. Abrir **Empleado** y crear un nuevo registro con nombre, número de cédula y *Empleado = Sí*.
2. Asignar **Tipo de Empleado = Tercerizado**.
3. En la pestaña *Empleado*, completar contrato de nómina, departamento, puesto y fecha de inicio.
4. Configurar la cuenta bancaria del empleado para el pago de nómina.
5. Abrir la pestaña *Detalle de Permiso*. Aparecen los tipos de permiso disponibles para *Tercerizado*, incluyendo *Donación de Sangre* con 1 día disponible.
6. Hacer clic en **Crear Permiso**. El sistema abre la **Solicitud de Permiso** con el tipo *Donación de Sangre* preseleccionado. Indicar la fecha del permiso y completar.
7. Volver al *Detalle de Permiso* del empleado y verificar que la cantidad utilizada se actualizó a 1 y la disponible quedó en 0.

## Consideraciones importantes

- Todos los empleados son **socios de negocio** marcados como *Empleado = Sí*. Si un socio existente debe convertirse en empleado, basta con activar el indicador y completar las pestañas adicionales.
- Sin **Tipo de Empleado** asignado, la pestaña *Detalle de Permiso* aparece vacía y no se pueden crear permisos para ese empleado.
- La organización puede **ocultar campos** que no utiliza (estado marital, atributos no aplicables) para simplificar la ficha. Esta personalización se gestiona a nivel de configuración de la ventana.
- La **Clave de Búsqueda** y la **Identificación** suelen contener el mismo número (cédula). El sistema admite copiar uno a otro automáticamente o mantenerlos separados según necesidad.
- Las **vacaciones** del empleado se gestionan tanto desde el campo *Días de Vacaciones / Días Usados* en la pestaña *Empleado* como desde el detalle de permisos. La sincronización entre ambos depende de la configuración del *Tipo de Permiso* asociado.
- Cerrar la **Fecha de Fin** no elimina al empleado: el registro queda histórico para reportes de nómina pasados, asistencia y permisos.
- La integración con el **socio de negocio** implica que los datos de dirección, contacto e identificación se mantienen en una sola tabla. Modificar el nombre o documento desde *Empleado* impacta también en la entidad como socio de negocio.
- El empleado puede tener un **Usuario** asociado (pestaña *Contacto*) cuando además accede al sistema (por ejemplo, supervisores que aprueban permisos o usuarios que cargan asistencia).
- La carga **masiva** de empleados es habitual al iniciar el sistema; en ese caso, todos pueden quedar con la clave de búsqueda y la identificación coincidentes para mantener la consistencia.

## Ventanas relacionadas

- [Categoría de Posición](position-category)
- [Posición](position)
- [Tipo de Permiso](../leave-management/leave-type)
- [Motivos de Permiso](../leave-management/leave-reasons)
- [Solicitud de Permiso](../leave-management/leave-request)
- [Crear Permiso Repetido](../leave-management/create-repeated-leave)
