---
title: Tipo de Proyecto
category: Documentation
star: 9
sticky: 9
article: false
---

# Tipo de Proyecto

## Descripción

Permite mantener los tipos de proyecto y sus fases con la información estándar del funcionamiento. Un tipo de proyecto define la estructura base que se puede reutilizar al crear nuevos proyectos.

## Acceso

Menú: Gestión de Ventas → Proyectos → Tipo de Proyecto

## Pestañas

### Tipo de Proyecto

Información general del tipo de proyecto.

#### Campos

| Campo | Descripción | Tipo | Obligatorio |
|-------|-------------|------|-------------|
| Nombre | Nombre del tipo de proyecto | Texto | Sí |
| Descripción | Descripción opcional del tipo | Texto | No |
| Categoría del Proyecto | Categoría que determina el comportamiento (General, Servicio, Orden de Trabajo, Activo) | Lista | No |
| Tipo de Línea de Proyecto | Tipo de línea por defecto | Tabla Directa | No |

### Fase del Tipo de Proyecto

Fases estándar definidas para este tipo de proyecto.

#### Campos

| Campo | Descripción | Tipo | Obligatorio |
|-------|-------------|------|-------------|
| Nombre | Nombre de la fase | Texto | Sí |
| Descripción | Descripción de la fase | Texto | No |
| Secuencia | Orden de la fase | Entero | No |
| Duración Estándar | Duración estándar en días | Entero | No |

### Tarea del Tipo de Proyecto

Tareas estándar asociadas a cada fase del tipo de proyecto.

#### Campos

| Campo | Descripción | Tipo | Obligatorio |
|-------|-------------|------|-------------|
| Nombre | Nombre de la tarea | Texto | Sí |
| Descripción | Descripción de la tarea | Texto | No |
| Secuencia | Orden de la tarea | Entero | No |
| Duración Estándar | Duración estándar en días | Entero | No |
