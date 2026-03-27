---
title: Tema de Solicitud para Cotización
category: Documentation
star: 9
sticky: 9
article: false
---

# Tema de Solicitud para Cotización

## Descripción

Mantenimiento al Tema Solicitud para Cotización y los subscriptores. Un tema de solicitud para cotización permite mantener una lista de proveedores potenciales suscritos para responder a la SpC.

## Acceso

Menú: Gestión de Compras → Requisiciones → Tema de Solicitud para Cotización

## Pestañas

### Tema

Tema de la solicitud para cotización. Define el nombre, descripción y configuración general del tema de SpC.

#### Campos principales

| Campo | Descripción | Tipo | Obligatorio |
|---|---|---|---|
| Organización | Entidad organizacional dentro del cliente | Tabla | Sí |
| Nombre | Nombre del tema de solicitud para cotización | Texto | Sí |
| Descripción | Descripción corta opcional del registro | Texto | No |
| Activo | Indica si el registro está activo en el sistema | Sí/No | No |
| Autoservicio | Indica si el registro está disponible mediante autoservicio | Sí/No | No |
| Formato de Impresión | Formato de impresión para la solicitud de cotización | Búsqueda directa | No |

### Subscriptor

Lista de proveedores suscritos al tema para recibir solicitudes de cotización.

#### Campos principales

| Campo | Descripción | Tipo | Obligatorio |
|---|---|---|---|
| Socio del Negocio | Proveedor suscrito al tema de SpC | Búsqueda directa | Sí |
| Dirección del Socio | Dirección del socio del negocio | Búsqueda directa | No |
| Usuario/Contacto | Contacto del proveedor para envío de SpC | Tabla | No |
| Fecha de Suscripción | Fecha en que se suscribió el proveedor | Fecha | No |
| Fecha de Cancelación | Fecha en que el proveedor canceló la suscripción | Fecha | No |

### Restricción

Restricciones de productos o categorías de productos aplicables a los suscriptores del tema.

#### Campos principales

| Campo | Descripción | Tipo | Obligatorio |
|---|---|---|---|
| Producto | Producto restringido para el suscriptor | Búsqueda directa | No |
| Categoría del Producto | Categoría de producto restringida | Búsqueda directa | No |
| Descripción | Descripción de la restricción | Texto | No |
