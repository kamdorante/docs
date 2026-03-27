---
title: Producto
category: Documentation
star: 9
sticky: 9
article: false
---

# Producto

## Descripcion

La ventana Producto permite definir y mantener todos los productos utilizados por una organizacion. Esto incluye productos vendidos a clientes, utilizados en la fabricacion y productos comprados por la organizacion. Desde esta ventana se gestionan los datos maestros del producto, incluyendo precios, unidades de medida, proveedores, reabastecimiento y contabilidad.

## Acceso

Menu: Gestion de Materiales → Reglas de Material → Producto

## Pestanas

### Producto

Define los datos principales de cada producto.

#### Campos

| Campo | Descripcion | Tipo | Obligatorio |
|-------|-------------|------|-------------|
| Clave de Busqueda | Clave unica de identificacion del producto | Texto | Si |
| Nombre | Nombre del producto | Texto | Si |
| Descripcion | Descripcion opcional del registro | Texto | No |
| Comentario/Ayuda | Comentario o pista sobre el uso del elemento | Texto | No |
| Activo | El registro esta activo en el sistema | Si/No | No |
| Categoria de Producto | Categoria a la que pertenece el producto | Tabla Directa | Si |
| Clasificacion de Producto | Clasificacion del producto | Tabla | No |
| Clase de Producto | Clase del producto | Tabla | No |
| Grupo de Producto | Grupo del producto | Tabla | No |
| Tipo de Producto | Tipo de producto (Articulo, Servicio, etc.) | Lista | Si |
| Unidad de Medida | Unidad de medida del producto | Tabla Directa | Si |
| Categoria de Impuesto | Categoria fiscal del producto | Tabla Directa | No |
| Almacen | Almacen por defecto del producto | Tabla Directa | No |
| Peso | Peso del producto | Numero | No |
| Volumen | Volumen del producto | Numero | No |
| Tiempo de Espera | Dias necesarios para obtener el producto | Entero | No |
| Minimo en Estante | Cantidad minima en estante | Numero | No |
| Precio de Lista | Precio de lista del producto | Monto | No |
| Precio Estandar | Precio estandar del producto | Monto | No |
| Precio Limite | Precio limite del producto | Monto | No |
| Almacenado | El producto esta almacenado en inventario | Si/No | No |
| Descontinuado | El producto ha sido descontinuado | Si/No | No |
| Imagen del Producto | Imagen o foto del producto | Texto | No |
| SKU | Unidad de mantenimiento de existencias | Texto | No |
| UPC/EAN | Codigo de barras del producto | Texto | No |
| Clasificacion ABC | Clasificacion del producto por importancia | Lista | No |

### Lista de Materiales (BOM)

Define los productos que se generan a partir de otros productos. Una lista de materiales se compone de uno o mas productos o sublistas.

#### Campos

| Campo | Descripcion | Tipo | Obligatorio |
|-------|-------------|------|-------------|
| Nombre de la Lista | Nombre de la lista de materiales | Texto | Si |
| Descripcion | Descripcion de la lista de materiales | Texto | No |
| Activo | El registro esta activo | Si/No | No |
| Tipo de BOM | Tipo de lista de materiales | Lista | Si |
| Usar Variantes | Indica si se usan variantes del producto | Si/No | No |

### Componentes

Componentes que forman parte de la lista de materiales.

#### Campos

| Campo | Descripcion | Tipo | Obligatorio |
|-------|-------------|------|-------------|
| Producto | Producto componente | Busqueda | Si |
| Tipo de Componente | Tipo del componente en la lista | Lista | Si |
| Cantidad | Cantidad del componente | Numero | Si |
| Unidad de Medida | Unidad de medida del componente | Tabla Directa | No |
| Porcentaje | Porcentaje del componente en la mezcla | Numero | No |
| Es Critico | El componente es critico para la produccion | Si/No | No |

### Sustituto

Define productos que pueden utilizarse como reemplazo del producto seleccionado.

#### Campos

| Campo | Descripcion | Tipo | Obligatorio |
|-------|-------------|------|-------------|
| Nombre | Nombre del sustituto | Texto | No |
| Descripcion | Descripcion del sustituto | Texto | No |
| Producto Sustituto | Producto que puede usarse como reemplazo | Busqueda | Si |

### Relacionado

Productos relacionados, por ejemplo para promociones.

#### Campos

| Campo | Descripcion | Tipo | Obligatorio |
|-------|-------------|------|-------------|
| Tipo de Producto Relacionado | Tipo de relacion entre productos | Lista | Si |
| Producto Relacionado | Producto relacionado | Busqueda | Si |
| Descripcion | Descripcion de la relacion | Texto | No |

### Reabastecimiento

Define el tipo de cantidades de reabastecimiento para ordenes automaticas.

#### Campos

| Campo | Descripcion | Tipo | Obligatorio |
|-------|-------------|------|-------------|
| Almacen | Almacen para el reabastecimiento | Tabla Directa | Si |
| Tipo de Reabastecimiento | Tipo de reabastecimiento a aplicar | Lista | Si |
| Nivel Minimo | Nivel de stock minimo | Numero | No |
| Nivel Maximo | Nivel de stock maximo | Numero | No |
| Cantidad por Pedido | Cantidad minima a ordenar | Numero | No |

### Compras

Define los precios y reglas de compra para cada proveedor del producto.

#### Campos

| Campo | Descripcion | Tipo | Obligatorio |
|-------|-------------|------|-------------|
| Socio de Negocio | Proveedor del producto | Busqueda | Si |
| Activo | El registro esta activo | Si/No | No |
| Es el Proveedor Actual | Este es el proveedor actual del producto | Si/No | No |
| Moneda | Moneda de compra | Tabla Directa | Si |
| Precio de Lista | Precio de lista del proveedor | Monto | No |
| Precio de OC | Precio de orden de compra | Monto | No |
| Clave del Socio de Negocio | Numero de producto del proveedor | Texto | No |
| Nombre del Proveedor | Nombre del producto segun el proveedor | Texto | No |
| UPC del Proveedor | Codigo de barras segun el proveedor | Texto | No |
| Cantidad minima de Orden | Cantidad minima de orden | Numero | No |
| Cantidad de Paquete | Cantidad del paquete | Numero | No |
| Tiempo de Espera en Dias | Dias necesarios para recibir el producto | Entero | No |

### Precio

Muestra los precios de lista, estandar y limite para cada lista de precios en la que se encuentra el producto.

#### Campos

| Campo | Descripcion | Tipo | Obligatorio |
|-------|-------------|------|-------------|
| Version de Lista de Precios | Version de la lista de precios | Tabla Directa | Si |
| Precio de Lista | Precio de lista oficial | Monto | Si |
| Precio Estandar | Precio estandar de venta | Monto | Si |
| Precio Limite | Precio minimo aceptable | Monto | Si |

### Contabilidad

Define los parametros contables por defecto para las transacciones del producto.

#### Campos

| Campo | Descripcion | Tipo | Obligatorio |
|-------|-------------|------|-------------|
| Esquema Contable | Esquema de contabilidad | Tabla Directa | Si |
| Cuenta de Gastos de Producto | Cuenta de gastos del producto | Tabla | Si |
| Cuenta de Ingresos de Producto | Cuenta de ingresos del producto | Tabla | Si |
| Cuenta de Activos de Producto | Cuenta de activos del producto | Tabla | Si |
| Cuenta de Costo de Ventas | Cuenta de costo de ventas | Tabla | Si |

### Transacciones

Muestra las transacciones procesadas para este producto.

#### Campos

| Campo | Descripcion | Tipo | Obligatorio |
|-------|-------------|------|-------------|
| Tipo de Movimiento | Tipo de transaccion de inventario | Lista | No |
| Producto | Producto involucrado | Tabla Directa | No |
| Fecha del Movimiento | Fecha en que se realizo el movimiento | Fecha | No |
| Cantidad del Movimiento | Cantidad del movimiento | Numero | No |
| Localizador | Ubicacion en el almacen | Tabla Directa | No |
