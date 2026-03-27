---
title: Esquema de Lista de Precios
category: Documentation
star: 9
sticky: 9
article: false
---

# Esquema de Lista de Precios

## Descripcion

La ventana Esquema de Lista de Precios permite mantener los esquemas de calculo para listas de precios. Un esquema define las reglas de calculo que se aplican cuando se genera o actualiza una version de lista de precios, permitiendo calcular automaticamente los tres niveles de precio (Lista, Estandar y Limite) basandose en otro precio u otras reglas.

## Acceso

Menu: Gestion de Materiales → Reglas de Material → Esquema de Lista de Precios

## Pestanas

### Esquema de Lista de Precios

Define el esquema de calculo de lista de precios. El filtro del sistema limita a los esquemas de tipo Precio (DiscountType='P').

#### Campos

| Campo | Descripcion | Tipo | Obligatorio |
|-------|-------------|------|-------------|
| Nombre | Nombre del esquema de lista de precios | Texto | Si |
| Descripcion | Descripcion opcional del esquema | Texto | No |
| Activo | El registro esta activo en el sistema | Si/No | No |
| Tipo de Descuento | Tipo de procedimiento de calculo del descuento | Lista | Si |
| Valido Desde | Fecha de inicio de vigencia del esquema | Fecha | No |

### Linea del Esquema de Lista de Precios

Define las reglas de calculo individuales que se aplican a los productos o categorias dentro del esquema.

#### Campos

| Campo | Descripcion | Tipo | Obligatorio |
|-------|-------------|------|-------------|
| Secuencia | Orden de aplicacion de las reglas | Entero | Si |
| Activo | El registro esta activo en el sistema | Si/No | No |
| Categoria de Producto | Categoria de producto a la que aplica la regla | Tabla Directa | No |
| Producto | Producto especifico al que aplica la regla | Busqueda | No |
| Precio Base | Precio base para el calculo | Lista | Si |
| Precio de Lista Base | Porcentaje del precio de lista base | Numero | No |
| Precio Estandar Base | Porcentaje del precio estandar base | Numero | No |
| Precio Limite Base | Porcentaje del precio limite base | Numero | No |
| Tipo de Redondeo de Precio de Lista | Tipo de redondeo para el precio de lista calculado | Lista | No |
| Tipo de Redondeo de Precio Estandar | Tipo de redondeo para el precio estandar calculado | Lista | No |
| Tipo de Redondeo de Precio Limite | Tipo de redondeo para el precio limite calculado | Lista | No |
| Margen de Precio de Lista | Margen aplicado al precio de lista | Numero | No |
| Margen de Precio Estandar | Margen aplicado al precio estandar | Numero | No |
| Margen de Precio Limite | Margen aplicado al precio limite | Numero | No |
