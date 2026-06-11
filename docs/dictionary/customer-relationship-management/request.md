---
title: Solicitud
category: Documentation
star: 9
sticky: 9
article: false
---

# Solicitud

## Descripción

La ventana **Solicitud** es el documento transaccional para definir y hacer seguimiento de las solicitudes de atención asignadas a los usuarios. Permite registrar solicitudes generadas por socios del negocio o de forma interna, y gestionar su ciclo de vida completo: desde la creación hasta el cierre.

Una solicitud puede tener uno o más usuarios asignados a lo largo de su ciclo de vida. El historial de asignaciones queda registrado y es utilizado por el navegador [Registro de Horas en Solicitudes](./register-worked-hours) para permitir que cualquier usuario que haya participado en la atención pueda registrar sus horas trabajadas.

## ¿Cuándo se utiliza?

Se utiliza cuando se necesita:

- Registrar una solicitud de soporte, consulta o requerimiento de un socio del negocio
- Dar seguimiento al estado y la evolución de una solicitud interna o externa
- Reasignar una solicitud a otro usuario o agente durante su atención
- Consultar el historial completo de cambios y actualizaciones de una solicitud
- Reabrir una solicitud cerrada para continuar su atención o registrar horas adicionales

## Acceso

Menú: Gestión de Relaciones → Solicitud

## Pestañas

### Solicitud

Encabezado de la solicitud. Define los datos principales del registro:

- **Tipo de solicitud** — Categoría que clasifica la solicitud (por ejemplo: Solicitud, Iteración, etc.)
- **Prioridad** — Nivel de urgencia asignado a la solicitud
- **Responsable / Agente** — Usuario actualmente asignado para la atención de la solicitud
- **Socio del negocio** — Cliente o entidad relacionada con la solicitud
- **Estado** — Estado actual del ciclo de vida (abierta, en proceso, cerrada, etc.)
- **Etiquetas** — Clasificadores adicionales para categorizar y filtrar la solicitud

### Actualizaciones

Registro cronológico de actualizaciones realizadas sobre la solicitud. Incluye comentarios, cambios de estado y cualquier modificación relevante realizada durante su ciclo de vida.

### Historial

Historial de cambios de la solicitud. Muestra los valores anteriores (antes del cambio) para fines de auditoría. Permite verificar quién realizó cada modificación y en qué momento.

- Esta pestaña es la fuente de referencia para verificar el historial de asignaciones de usuarios, lo que determina qué usuarios pueden registrar horas en la solicitud desde el navegador [Registro de Horas en Solicitudes](./register-worked-hours).

### Notificación de Actualización

Lista de destinatarios que reciben notificaciones automáticas cuando la solicitud es actualizada.

## Flujo del proceso

### 1. Crear la solicitud

Abrir una nueva solicitud e ingresar el tipo, la prioridad, el socio del negocio y el agente o usuario responsable.

### 2. Hacer seguimiento y actualizar

A medida que avanza la atención, registrar actualizaciones en la pestaña **Actualizaciones** y modificar el estado y el responsable según corresponda.

### 3. Registrar horas trabajadas

Los usuarios asignados (o que hayan sido asignados en algún momento) pueden registrar sus horas de trabajo directamente desde el navegador [Registro de Horas en Solicitudes](./register-worked-hours), sin necesidad de modificar la solicitud.

### 4. Cerrar la solicitud

Al completar la atención, cambiar el estado de la solicitud a cerrado. Las solicitudes cerradas no aparecen en el listado del navegador de registro de horas.

### 5. Reabrir si es necesario

Si se requiere agregar más actualizaciones o registrar horas adicionales en una solicitud ya cerrada, debe reabrirse desde esta ventana y asignarse nuevamente el usuario correspondiente.

## Consideraciones importantes

- El **historial de asignaciones** determina qué usuarios pueden visualizar y registrar horas en una solicitud desde el navegador [Registro de Horas en Solicitudes](./register-worked-hours). Un usuario que fue asignado en algún momento —aunque ya no sea el responsable actual— podrá registrar horas en ella.
- Las solicitudes con estado **cerrado** no aparecen en el navegador de registro de horas. Deben reabrirse para habilitar el registro de horas adicionales.
- Para garantizar que todos los recursos estén correctamente asignados, es recomendable verificar la pestaña **Historial** y confirmar que los usuarios involucrados en la atención estén o hayan estado asignados a la solicitud.
