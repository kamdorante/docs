---
title: Categoria de Producto
category: Documentation
star: 9
sticky: 9
article: false
---

# Categoria de Producto

## Descripcion

La ventana Categoria de Producto permite definir diferentes grupos de productos. Estos grupos se utilizan para generar listas de precios, definir margenes de ganancia y asignar facilmente diferentes parametros contables a los productos. Cada producto debe pertenecer a una categoria.

## Acceso

Menu: Gestion de Materiales → Reglas de Material → Categoria de Producto

## Pestanas

### Categoria de Producto

Define los grupos unicos de productos. Las categorias de producto se utilizan para la construccion de listas de precios.

#### Campos

| Campo | Descripcion | Tipo | Obligatorio |
|-------|-------------|------|-------------|
| Clave de Busqueda | Clave unica de identificacion de la categoria | Texto | Si |
| Nombre | Nombre de la categoria de producto | Texto | Si |
| Descripcion | Descripcion opcional del registro | Texto | No |
| Activo | El registro esta activo en el sistema | Si/No | No |
| Tipo de Costo | Metodo de costeo para los productos de esta categoria | Lista | No |
| Tipo de Material | Tipo de material para la categoria | Lista | No |
| Porcentaje de Ganancia | Porcentaje de margen de ganancia | Numero | No |
| Categoria Padre | Categoria padre en la jerarquia | Tabla Directa | No |
| Es Predeterminada | Esta categoria es la predeterminada | Si/No | No |

### Contabilidad

Define los parametros contables por defecto para todos los productos que usan esta categoria. Si no se define el metodo de costeo, se utiliza el metodo por defecto del esquema contable.

#### Campos

| Campo | Descripcion | Tipo | Obligatorio |
|-------|-------------|------|-------------|
| Esquema Contable | Esquema de contabilidad aplicable | Tabla Directa | Si |
| Metodo de Costeo | Metodo para calcular el costo del producto | Lista | No |
| Cuenta de Gastos de Producto | Cuenta contable para gastos del producto | Tabla | Si |
| Cuenta de Ingresos de Producto | Cuenta contable para ingresos del producto | Tabla | Si |
| Cuenta de Activos de Producto | Cuenta contable para activos del producto | Tabla | Si |
| Cuenta de Costo de Ventas | Cuenta contable de costo de ventas | Tabla | Si |
| Cuenta de Diferencia de Inventario | Cuenta para diferencias de inventario | Tabla | No |

### Productos Asignados

Muestra los productos que pertenecen a esta categoria de producto.

#### Campos

| Campo | Descripcion | Tipo | Obligatorio |
|-------|-------------|------|-------------|
| Clave de Busqueda | Clave del producto | Texto | No |
| Nombre | Nombre del producto | Texto | No |
| Descripcion | Descripcion del producto | Texto | No |
| Activo | El registro esta activo | Si/No | No |
| Unidad de Medida | Unidad de medida del producto | Tabla Directa | No |

### Descuento por Escalonado

Descuento comercial basado en escalones (pasos) aplicable a esta categoria.

#### Campos

| Campo | Descripcion | Tipo | Obligatorio |
|-------|-------------|------|-------------|
| Esquema de Descuento | Esquema de descuento aplicado | Tabla Directa | Si |
| Secuencia | Orden de aplicacion de los escalones | Entero | Si |
| Categoria de Producto | Categoria de producto | Tabla Directa | No |
| Valor de Escalon | Valor minimo del nivel de descuento por escalon | Numero | Si |
| Descuento por Escalon % | Descuento comercial en porcentaje para el escalon | Numero | No |

### Reabastecimiento

Define los datos por defecto de reabastecimiento para esta categoria.

#### Campos

| Campo | Descripcion | Tipo | Obligatorio |
|-------|-------------|------|-------------|
| Almacen | Almacen para el reabastecimiento | Tabla Directa | Si |
| Tipo de Reabastecimiento | Tipo de reabastecimiento | Lista | Si |
| Nivel Minimo | Nivel minimo de existencias | Numero | No |
| Nivel Maximo | Nivel maximo de existencias | Numero | No |
