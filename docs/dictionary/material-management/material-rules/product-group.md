---
title: Grupo de Producto
category: Documentation
star: 9
sticky: 9
article: false
---

# Grupo de Producto

## Descripcion

La ventana Grupo de Producto permite definir diferentes grupos de productos. El grupo es una dimension de clasificacion adicional que identifica a que grupo pertenece un producto. Soporta jerarquias mediante la definicion de un grupo padre, lo que permite construir estructuras de agrupacion de productos con multiples niveles.

## Acceso

Menu: Gestion de Materiales → Reglas de Material → Grupo de Producto

## Pestanas

### Grupo de Producto

Define agrupaciones unicas de productos por grupo.

#### Campos

| Campo | Descripcion | Tipo | Obligatorio |
|-------|-------------|------|-------------|
| Clave de Busqueda | Clave unica de identificacion del grupo | Texto | Si |
| Nombre | Nombre del grupo de producto | Texto | Si |
| Descripcion | Descripcion opcional del registro | Texto | No |
| Activo | El registro esta activo en el sistema | Si/No | No |
| Predeterminada | Este es el grupo predeterminado | Si/No | No |
| Grupo de Producto Padre | Grupo padre en la jerarquia | Tabla Directa | No |
