---
title: Solicitud para Cotización (Con Respuesta)
category: Documentation
star: 9
sticky: 9
article: false
---

# Solicitud para Cotización (Con Respuesta)

## Descripción

Ventana para gestionar las respuestas de los proveedores a las solicitudes para cotización. Permite visualizar y procesar las cotizaciones recibidas, seleccionar ganadores y generar las órdenes de compra correspondientes.

## Acceso

Menú: Gestión de Compras → Requisiciones → Solicitud para Cotización (Con Respuesta)

## Pestañas

### Respuesta

Información de la respuesta del proveedor incluyendo precios, plazos de entrega y ranking.

#### Campos principales

| Campo | Descripción | Tipo | Obligatorio |
|---|---|---|---|
| Solicitud para Cotización | Solicitud para cotización a la que responde | Búsqueda directa | Sí |
| Nombre | Nombre de la respuesta | Texto | Sí |
| Socio del Negocio | Proveedor que responde la cotización | Búsqueda directa | Sí |
| Dirección del Socio | Dirección del proveedor | Búsqueda directa | No |
| Ayuda/Comentario | Comentarios del proveedor sobre la cotización | Texto largo | No |
| Descripción | Descripción adicional de la respuesta | Texto | No |
| Usuario/Contacto | Contacto del proveedor | Tabla | No |
| Activo | Indica si el registro está activo | Sí/No | No |
| Fecha de Invitación | Fecha en que se invitó al proveedor | Fecha | No |
| Fecha de Respuesta | Fecha en que el proveedor respondió | Fecha | No |
| Autoservicio | Indica si la respuesta fue ingresada por autoservicio | Sí/No | No |
| Moneda | Moneda utilizada en la cotización | Búsqueda directa | No |
| Precio | Precio total ofertado por el proveedor | Monto | No |
| Fecha de Inicio de Trabajo | Fecha de inicio propuesta por el proveedor | Fecha | No |
| Días de Entrega | Días de entrega propuestos por el proveedor | Entero | No |
| Fecha de Término de Trabajo | Fecha de término propuesta por el proveedor | Fecha | No |
| Invitar y Recordar | Envía invitación y recordatorio al proveedor | Botón | No |
| Ranking | Clasificación de la respuesta del proveedor | Entero | No |
| Ganador Seleccionado | Indica si este proveedor fue seleccionado como ganador | Sí/No | No |
| Completo | Indica si la respuesta está completa | Sí/No | No |
| Procesado | Indica si la respuesta ha sido procesada | Sí/No | No |

### Línea de Respuesta

Detalle de los productos o servicios cotizados con precios y condiciones por línea.

#### Campos principales

| Campo | Descripción | Tipo | Obligatorio |
|---|---|---|---|
| Línea SpC | Línea de la solicitud para cotización | Búsqueda directa | Sí |
| Respuesta SpC | Respuesta de la solicitud para cotización | Búsqueda directa | Sí |
| Fecha de Inicio de Trabajo | Fecha de inicio propuesta para esta línea | Fecha | No |
| Días de Entrega | Días de entrega para esta línea | Entero | No |
| Fecha de Término de Trabajo | Fecha de término propuesta para esta línea | Fecha | No |
| Descripción | Descripción adicional de la línea | Texto | No |
| Ayuda/Comentario | Comentarios del proveedor para esta línea | Texto largo | No |
| Ganador Seleccionado | Indica si esta línea fue seleccionada como ganadora | Sí/No | No |
| Autoservicio | Indica si fue ingresado por autoservicio | Sí/No | No |
| Activo | Indica si la línea está activa | Sí/No | No |

### Cantidad de Respuesta

Precios y descuentos por cantidad ofrecidos por el proveedor para cada línea.

#### Campos principales

| Campo | Descripción | Tipo | Obligatorio |
|---|---|---|---|
| Cantidad en Línea SpC | Cantidad definida en la línea de solicitud | Búsqueda directa | Sí |
| Línea de Respuesta SpC | Línea de respuesta de la solicitud para cotización | Búsqueda directa | Sí |
| Activo | Indica si el registro está activo | Sí/No | No |
| Precio | Precio ofertado para esta cantidad | Monto | No |
| Descuento | Porcentaje de descuento ofrecido | Número | No |
| Ranking | Clasificación de la oferta para esta cantidad | Entero | No |
