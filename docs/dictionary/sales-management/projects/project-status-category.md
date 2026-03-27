---
title: Categoría del Status de Proyecto
category: Documentation
star: 9
sticky: 9
article: false
---

# Categoría del Status de Proyecto

## Descripción

Permite mantener las categorías de estado de proyecto y los estados específicos asociados a cada categoría. Las categorías agrupan los estados del proyecto (por ejemplo: En Planificación, En Ejecución, Cerrado) y dentro de cada categoría se definen los estados individuales con su comportamiento.

## Acceso

Menú: Gestión de Ventas → Proyectos → Categoría del Status de Proyecto

## Pestañas

### Categoría del Status de Proyecto

Información principal de la categoría que agrupa los estados.

#### Campos

| Campo | Descripción | Tipo | Obligatorio |
|-------|-------------|------|-------------|
| Clave de Búsqueda | Clave de búsqueda única | Texto | Sí |
| Nombre | Nombre de la categoría de estado | Texto | Sí |
| Descripción | Descripción de la categoría | Texto | No |
| Comentario/Ayuda | Comentario o ayuda sobre el uso de este elemento | Texto | No |
| Por Defecto | Indica si es el valor por defecto | Sí/No | No |

### Estado del Proyecto

Estados individuales que pertenecen a esta categoría.

#### Campos

| Campo | Descripción | Tipo | Obligatorio |
|-------|-------------|------|-------------|
| Clave de Búsqueda | Clave de búsqueda única del estado | Texto | Sí |
| Nombre | Nombre del estado del proyecto | Texto | Sí |
| Descripción | Descripción del estado | Texto | No |
| Comentario/Ayuda | Comentario o ayuda sobre el estado | Texto | No |
| Secuencia | Orden de presentación del estado | Entero | No |
| Días de Tiempo de Espera | Días de inactividad para cambio automático al siguiente estado | Entero | No |
| Siguiente Estado | Estado al que se mueve automáticamente tras el tiempo de espera | Tabla Directa | No |
| Por Defecto | Indica si es el estado por defecto | Sí/No | No |
| Estado Abierto | Indica que el estado corresponde a una situación abierta | Sí/No | No |
| Estado Cerrado | Indica que el estado corresponde a una situación cerrada | Sí/No | No |
| Cierre Final | Los registros con Cierre Final no pueden ser reabiertos | Sí/No | No |
