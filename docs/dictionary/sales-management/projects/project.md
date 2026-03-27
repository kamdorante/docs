---
title: Proyectos
category: Documentation
star: 9
sticky: 9
article: false
---

# Proyectos

## Descripción

La ventana de proyectos es usada para definir los proyectos que serán monitoreados por medio de documentos de la aplicación. Permite mantener la información completa de un proyecto incluyendo sus fases, tareas, miembros, presupuesto y seguimiento del avance.

## Acceso

Menú: Gestión de Ventas → Proyectos → Proyectos

## Pestañas

### Proyecto

Información principal del proyecto: datos generales, fechas, estado, presupuesto y parámetros de control.

#### Campos

| Campo | Descripción | Tipo | Obligatorio |
|-------|-------------|------|-------------|
| Clave de Búsqueda | Clave de búsqueda única para el registro | Texto | Sí |
| Nombre | Nombre del proyecto | Texto | Sí |
| Descripción | Descripción opcional del proyecto | Texto | No |
| Tipo de Proyecto | Tipo al que pertenece el proyecto | Tabla Directa | No |
| Grupo de Proyecto | Agrupación del proyecto | Tabla Directa | No |
| Clase de Proyecto | Clasificación del proyecto | Tabla Directa | No |
| Categoría de Proyecto | Categoría que determina el comportamiento del proyecto | Tabla Directa | No |
| Socio de Negocio | Cliente o contraparte del proyecto | Búsqueda | No |
| Gerente del Proyecto | Usuario responsable del proyecto | Tabla | No |
| Moneda | Moneda utilizada en el proyecto | Tabla | No |
| Fecha de Inicio Programada | Fecha programada de inicio | Fecha | No |
| Fecha de Fin Programada | Fecha programada de finalización | Fecha | No |
| Fecha de Inicio | Fecha real de inicio | Fecha | No |
| Fecha de Finalización | Fecha real de finalización o planificada | Fecha | No |
| Monto del Contrato | Monto total contratado del proyecto | Monto | No |
| Monto Comprometido | Monto comprometido del proyecto | Monto | No |
| Monto Planificado | Monto planificado del proyecto | Monto | No |
| Monto Facturado | Total facturado al cliente | Monto | No |
| Estado del Proyecto | Estado actual del proyecto | Tabla Directa | No |

### Fase del Proyecto

Fases que componen el proyecto.

#### Campos

| Campo | Descripción | Tipo | Obligatorio |
|-------|-------------|------|-------------|
| Nombre | Nombre de la fase | Texto | Sí |
| Descripción | Descripción de la fase | Texto | No |
| Secuencia | Orden de la fase en el proyecto | Entero | No |
| Fecha de Inicio | Fecha de inicio de la fase | Fecha | No |
| Fecha de Fin | Fecha de finalización de la fase | Fecha | No |
| Monto Planificado | Monto planificado para la fase | Monto | No |
| % Completado | Porcentaje de avance de la fase | Número | No |

### Tarea del Proyecto

Tareas asociadas a cada fase.

#### Campos

| Campo | Descripción | Tipo | Obligatorio |
|-------|-------------|------|-------------|
| Nombre | Nombre de la tarea | Texto | Sí |
| Descripción | Descripción de la tarea | Texto | No |
| Secuencia | Orden de la tarea | Entero | No |
| Fecha de Inicio | Fecha de inicio de la tarea | Fecha | No |
| Fecha de Fin | Fecha de finalización de la tarea | Fecha | No |
| % Completado | Porcentaje de avance de la tarea | Número | No |
| Usuario Asignado | Usuario responsable de la tarea | Tabla | No |

### Miembro del Proyecto

Miembros del equipo asignados al proyecto.

#### Campos

| Campo | Descripción | Tipo | Obligatorio |
|-------|-------------|------|-------------|
| Usuario | Usuario miembro del proyecto | Tabla | Sí |
| Tipo de Miembro | Tipo de rol del miembro en el proyecto | Tabla Directa | No |
| Descripción | Observaciones sobre el miembro | Texto | No |
