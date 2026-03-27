---
title: Detalles del Proveedor
category: Documentation
star: 9
sticky: 9
article: false
---

# Detalles del Proveedor

## Descripcion

La ventana Detalles del Proveedor permite visualizar y mantener todos los productos de un proveedor seleccionado. Muestra los socios de negocio que tienen al menos un producto registrado como informacion de compra, y permite gestionar los detalles de cada producto para ese proveedor, incluyendo precios, tiempos de entrega y codigos del proveedor.

## Acceso

Menu: Gestion de Materiales → Reglas de Material → Detalles del Proveedor

## Pestanas

### Proveedor

Muestra los proveedores que tienen productos asociados.

#### Campos

| Campo | Descripcion | Tipo | Obligatorio |
|-------|-------------|------|-------------|
| Clave de Busqueda | Clave unica del socio de negocio | Texto | No |
| Nombre | Nombre del proveedor | Texto | No |
| Nombre 2 | Nombre adicional del proveedor | Texto | No |
| Descripcion | Descripcion del proveedor | Texto | No |

### Detalles del Producto

Muestra y permite mantener todos los productos para el proveedor seleccionado.

#### Campos

| Campo | Descripcion | Tipo | Obligatorio |
|-------|-------------|------|-------------|
| Producto | Producto del proveedor | Busqueda | Si |
| Activo | El registro esta activo en el sistema | Si/No | No |
| Es el Proveedor Actual | Este es el proveedor actual del producto | Si/No | No |
| Moneda | Moneda de las compras al proveedor | Tabla Directa | Si |
| Precio de Lista | Precio de lista del proveedor | Monto | No |
| Precio de OC | Precio de orden de compra | Monto | No |
| Clave del Socio | Numero de producto segun el proveedor | Texto | No |
| Nombre del Proveedor | Nombre del producto segun el proveedor | Texto | No |
| Cantidad minima de Orden | Cantidad minima de orden | Numero | No |
| Cantidad de Paquete | Cantidad del paquete de compra | Numero | No |
| Tiempo de Espera en Dias | Dias necesarios para recibir el producto | Entero | No |
| Control de Calidad en Dias | Dias requeridos para control de calidad | Entero | No |
| Precio Efectivo Desde | Fecha de inicio de vigencia del precio | Fecha | No |
