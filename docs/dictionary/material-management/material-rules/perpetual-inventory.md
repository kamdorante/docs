---
title: Inventario Perpetuo
category: Documentation
star: 9
sticky: 9
article: false
---

# Inventario Perpetuo

## Descripcion

La ventana Inventario Perpetuo permite definir y mantener las reglas para generar conteos de inventario fisico. Las reglas de inventario perpetuo establecen con que frecuencia se deben realizar los conteos de inventario para categorias de productos en almacenes especificos, y permiten ejecutar el proceso de generacion de inventario fisico directamente desde la ventana.

## Acceso

Menu: Gestion de Materiales → Reglas de Material → Inventario Perpetuo

## Pestanas

### Inventario Perpetuo

Define las reglas de inventario perpetuo para la generacion de inventarios fisicos.

#### Campos

| Campo | Descripcion | Tipo | Obligatorio |
|-------|-------------|------|-------------|
| Nombre | Nombre de la regla de inventario perpetuo | Texto | Si |
| Descripcion | Descripcion opcional de la regla | Texto | No |
| Activo | El registro esta activo en el sistema | Si/No | No |
| Almacen | Almacen al que aplica la regla | Tabla Directa | No |
| Categoria de Producto | Categoria de productos a contar | Tabla Directa | No |
| Numero de Conteos de Inventario | Frecuencia de conteos de inventario por ano | Entero | No |
| Numero de Conteos de Producto | Frecuencia de conteos por producto por ano | Entero | No |
| Contar articulos de alta rotacion | Incluir productos de alta rotacion en el conteo | Si/No | No |
| Numero de ejecuciones | Numero de veces que se ha ejecutado el proceso | Entero | No |
| Fecha ultima ejecucion | Fecha en que se ejecuto el proceso por ultima vez | Fecha | No |
| Fecha proxima ejecucion | Fecha en que se ejecutara el proceso la proxima vez | Fecha | No |
| Procesar Ahora | Ejecutar el proceso de inventario perpetuo | Si/No | No |
