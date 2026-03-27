---
title: Lista de Precios
category: Documentation
star: 9
sticky: 9
article: false
---

# Lista de Precios

## Descripcion

La ventana Lista de Precios permite generar listas de precios de productos para los socios de negocio. Las listas de precios determinan la moneda y el tratamiento fiscal. Las versiones de lista de precios permiten mantener listas paralelas para diferentes rangos de fechas; la version mas reciente se utiliza en funcion de la fecha del documento.

Todas las listas de precios tienen tres precios: Lista, Estandar y Limite. El primer paso es crear una lista de precios base. Se pueden agregar productos manualmente con sus precios o crearlos automaticamente. Las listas de precios pueden calcularse y copiarse.

## Acceso

Menu: Gestion de Materiales → Reglas de Material → Lista de Precios

## Pestanas

### Lista de Precios

Define las listas de precios. Las listas de precios determinan la moneda del documento y el tratamiento fiscal.

#### Campos

| Campo | Descripcion | Tipo | Obligatorio |
|-------|-------------|------|-------------|
| Nombre | Nombre de la lista de precios | Texto | Si |
| Descripcion | Descripcion opcional de la lista | Texto | No |
| Activo | El registro esta activo en el sistema | Si/No | No |
| Moneda | Moneda utilizada en esta lista de precios | Tabla Directa | Si |
| Es Lista de Precios de Venta | Esta lista se usa para ventas (no para compras) | Si/No | No |
| Precio Incluye Impuesto | Los precios en esta lista incluyen el impuesto | Si/No | No |
| Forzar Limite de Precio | No se puede vender por debajo del precio limite | Si/No | No |
| Predeterminada | Esta es la lista de precios predeterminada | Si/No | No |
| Precision de Precio | Precision numerica de los precios | Entero | No |

### Version de Lista de Precios

Permite mantener versiones paralelas de la lista para diferentes rangos de fechas.

#### Campos

| Campo | Descripcion | Tipo | Obligatorio |
|-------|-------------|------|-------------|
| Nombre | Nombre de la version | Texto | Si |
| Descripcion | Descripcion de la version | Texto | No |
| Activo | El registro esta activo en el sistema | Si/No | No |
| Valido Desde | Fecha de inicio de vigencia de la version | Fecha | Si |
| Esquema de Lista de Precios | Esquema utilizado para calcular esta version | Tabla Directa | No |

### Precio de Producto

Precios de productos en la version de lista de precios.

#### Campos

| Campo | Descripcion | Tipo | Obligatorio |
|-------|-------------|------|-------------|
| Producto | Producto con precio en esta lista | Busqueda | Si |
| Precio de Lista | Precio de lista oficial del producto | Monto | Si |
| Precio Estandar | Precio estandar de venta del producto | Monto | Si |
| Precio Limite | Precio minimo aceptable para el producto | Monto | Si |
