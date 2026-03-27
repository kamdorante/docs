---
title: Generar OC desde Líneas de OV
category: Documentation
star: 9
sticky: 9
article: false
---

# Generar OC desde Líneas de OV

## Descripción

Consulta inteligente que permite generar órdenes de compra a partir de las líneas individuales de órdenes de venta. A diferencia del proceso estándar que trabaja a nivel de orden completa, esta consulta permite seleccionar líneas específicas de diferentes órdenes para generar las órdenes de compra correspondientes, con mayor granularidad en la selección.

## Acceso

Menú: Gestión de Ventas → Órdenes de Venta → Generar OC desde Líneas de OV

## Criterios de búsqueda

| Campo | Descripción | Tipo | Rango |
|---|---|---|---|
| Proyecto | Proyecto asociado a las líneas | Búsqueda directa | No |
| Referencia de Empleado | Empleado de referencia | Tabla | No |
| Producto | Producto específico | Búsqueda directa | No |
| Categoría del Producto | Categoría del producto | Búsqueda directa | No |
| Grupo de Producto | Grupo del producto | Búsqueda directa | No |
| Clase de Producto | Clase del producto | Búsqueda directa | No |
| Fecha Prometida | Fecha prometida de entrega | Fecha | No |
| Fecha Final | Fecha final del rango | Fecha | No |
| Orden | Orden de venta de origen | Tabla | No |
| Tipo de Documento Destino | Tipo de documento de la orden | Búsqueda directa | No |
| Fecha de la Orden | Fecha de la orden | Fecha | No |
| Moneda | Moneda del documento | Búsqueda directa | No |
| Socio del Negocio | Cliente de la orden | Tabla | No |

## Columnas de resultado

| Campo | Descripción |
|---|---|
| Proyecto | Proyecto asociado |
| Referencia de Empleado | Empleado de referencia |
| Producto | Producto de la línea |
| Categoría del Producto | Categoría del producto |
| Grupo de Producto | Grupo del producto |
| Clase de Producto | Clase del producto |
| Fecha Prometida | Fecha prometida |
| Fecha Final | Fecha final |
| Cantidad Ordenada | Cantidad ordenada |
| Cantidad Entregada | Cantidad entregada |
| Cantidad por Entregar | Cantidad pendiente de entrega |
| Cantidad Disponible | Cantidad disponible en inventario |
| Cantidad | Cantidad seleccionada |
| Precio de Costo Actual | Precio de costo actual del producto |
| Lista de Usuario 1 | Elemento definido por el usuario 1 |
| Lista de Usuario 3 | Elemento definido por el usuario 3 |
| Almacén | Almacén asociado |
