---
title: Categoría de Proyecto
category: Documentation
star: 9
sticky: 9
article: false
---

# Categoría de Proyecto

## Descripción

Permite mantener las categorías de proyectos. La categoría de proyecto determina el comportamiento del proyecto en el sistema:
- **General**: sin contabilidad especial, por ejemplo para Preventas o seguimiento general
- **Servicio**: sin contabilidad especial, por ejemplo para proyectos de Servicio/Cargo
- **Orden de Trabajo**: crea transacciones WIP (Work in Progress) de Proyecto/Trabajo con capacidad de emitir material
- **Activo**: crea transacciones de Activos del Proyecto con capacidad de emitir material

## Acceso

Menú: Gestión de Ventas → Proyectos → Categoría de Proyecto

## Pestañas

### Categoría de Proyecto

#### Campos

| Campo | Descripción | Tipo | Obligatorio |
|-------|-------------|------|-------------|
| Clave de Búsqueda | Clave de búsqueda única | Texto | Sí |
| Nombre | Nombre de la categoría de proyecto | Texto | Sí |
| Descripción | Descripción opcional de la categoría | Texto | No |
| Categoría del Proyecto | Tipo de comportamiento (General, Servicio, Orden de Trabajo, Activo) | Lista | No |
| Por Defecto | Indica si esta categoría es el valor por defecto | Sí/No | No |
| Color de Impresión | Color utilizado para impresión y visualización | Tabla | No |
| Categoría de Proyecto Padre | Categoría padre para estructura jerárquica | Tabla Directa | No |
