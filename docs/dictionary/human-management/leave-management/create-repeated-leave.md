---
title: Crear Permiso Repetido para Empleado
category: Documentation
star: 9
sticky: 9
article: false
---

# Crear Permiso Repetido para Empleado

## Descripción

El proceso **Crear Permiso Repetido para Empleado** genera automáticamente solicitudes de permiso para empleados que tienen tipos de permiso configurados como repetitivos. Es especialmente útil para la gestión de vacaciones anuales, donde el sistema debe crear automáticamente el permiso cuando el empleado cumple un nuevo año de servicio.

Este proceso se ejecuta típicamente de forma diaria a través del **Programador de Tareas**, revisando qué empleados tienen permisos repetitivos cuya fecha de validez coincide con la fecha actual.

## ¿Cuándo se utiliza?

Se utiliza cuando se necesita:

- Automatizar la generación de permisos de vacaciones anuales
- Generar permisos repetitivos para cualquier tipo que esté configurado como recurrente
- Ejecutar manualmente la generación de permisos para una fecha específica

Casos típicos:
- Configurar la generación automática diaria de permisos de vacaciones al cumplir aniversario
- Generar permisos de lactancia materna de forma recurrente
- Ejecutar manualmente para verificar la correcta configuración

## Acceso

Menú: Gestión de Recursos Humanos y Nómina → Gestión de Permisos → Crear Permiso Repetido para Empleado

## Parámetros

| Parámetro | Descripción | Obligatorio |
|---|---|---|
| Tipo de Permiso | Tipo de permiso a generar. Si se deja vacío, procesa todos los tipos repetitivos | No |
| Fecha del Documento | Fecha para los registros generados. Por defecto usa la fecha actual | No |
| Motivo de Permiso | Motivo a asignar a los permisos generados. Si se deja vacío, no asigna motivo | No |

## Flujo del proceso

### 1. Configurar el Programador de Tareas

Para que el proceso se ejecute automáticamente, buscar **Programador de Tareas** y crear una tarea programada que ejecute "Crear Permiso Recurrente" con frecuencia diaria.

### 2. Ejecución automática

Cada día, el programador ejecuta el proceso. El sistema revisa todos los empleados que tienen permisos repetitivos en su **Detalle de Permiso** y verifica si la fecha de validez coincide con la fecha de ejecución.

### 3. Generación del permiso

Cuando la fecha coincide, el sistema genera automáticamente una [Solicitud de Permiso](./leave-request) con estado **En Proceso**, lista para ser aprobada por el responsable correspondiente.

### 4. Aprobación

El permiso generado queda pendiente de aprobación. El supervisor o encargado debe revisar y completar la solicitud desde la ventana de Solicitud de Permiso.

## Ejemplo de uso

Un empleado ingresó a la empresa el 13 de marzo de 2024. Se configuró el tipo de permiso "Vacaciones Anuales" como repetitivo con frecuencia anual y referencia a la fecha de inicio del empleado.

El 13 de marzo de 2025 (un año después de su ingreso), el Programador de Tareas ejecuta este proceso. El sistema detecta que la fecha de validez del permiso coincide con la fecha actual y genera automáticamente una solicitud de vacaciones con 15 días (la cantidad mínima requerida configurada en el tipo de permiso).

La solicitud aparece con estado "En Proceso" y el responsable de RRHH la puede visualizar y completar cuando el empleado desee tomar sus vacaciones.

## Consideraciones importantes

- El proceso **solo genera permisos cuando la fecha de validez es exactamente igual a la fecha de ejecución**. Si el programador no se ejecuta un día determinado, los permisos de ese día no se generarán automáticamente
- Es fundamental que el Programador de Tareas esté configurado y activo para que la automatización funcione
- Los permisos generados siguen las reglas definidas en el [Tipo de Permiso](./leave-type): cantidad mínima, incremento por antigüedad, duración máxima
- También es posible ejecutar este proceso manualmente desde el menú para pruebas o para generar permisos de una fecha específica
