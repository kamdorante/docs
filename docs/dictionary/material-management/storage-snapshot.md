---
title: Instantanea de Almacenamiento
category: Documentation
star: 9
sticky: 9
article: false
---

# Instantanea de Almacenamiento

## Descripcion

Instantanea de Almacenamiento. Permite visualizar las instantaneas del estado del almacenamiento en un momento determinado.

## Acceso

Menu: Gestion de Materiales → Instantanea de Almacenamiento

## Pestanas

### Ejecucion de Instantanea

Ejecucion de la instantanea de almacenamiento. Registra cada corrida del proceso de instantanea.

#### Campos principales

| Campo | Descripcion | Tipo | Obligatorio |
|---|---|---|---|
| No. del Documento | Numero de secuencia del documento | Texto | Si |
| Fecha de Ultima Ejecucion | Fecha en que se ejecuto el proceso por ultima vez | Fecha y hora | No |
| Productos Procesados | Cantidad de productos procesados | Numerico entero | No |
| Transacciones Procesadas | Cantidad de transacciones procesadas | Numerico entero | No |

### Instantanea

Detalle de la instantanea de almacenamiento por producto y ubicacion.

#### Campos principales

| Campo | Descripcion | Tipo | Obligatorio |
|---|---|---|---|
| Fecha de la Transaccion | Fecha de la transaccion | Fecha | No |
| Producto | Producto, servicio o articulo | Busqueda directa | No |
| Instancia de Conjunto de Atributos | Instancia del conjunto de atributos del producto | Busqueda directa | No |
| Ubicacion | Ubicacion dentro del almacen | Busqueda directa | No |
| Cantidad Disponible | Cantidad disponible en inventario | Cantidad | No |
| Cantidad Ordenada | Cantidad ordenada del producto | Cantidad | No |
| Cantidad Reservada | Cantidad reservada del producto | Cantidad | No |
| Fecha Ultimo Inventario | Fecha del ultimo conteo de inventario | Fecha | No |
