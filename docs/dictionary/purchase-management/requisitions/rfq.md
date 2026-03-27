---
title: Solicitud para Cotización
category: Documentation
star: 9
sticky: 9
article: false
---

# Solicitud para Cotización

## Descripción

La solicitud de cotización a ser enviada a los proveedores con un tema de SpC. Después de la selección del proveedor, cree la orden de venta o cotización opcionalmente para el cliente así como la orden de compra para los proveedores.

## Acceso

Menú: Gestión de Compras → Requisiciones → Solicitud para Cotización

## Pestañas

### SCP (RfQ)

Solicitud para Cotización para ser enviada a los proveedores asignados en el asunto de SCP (RfQ), opcionalmente crea orden de venta o cotización para cliente para después realizar la orden de compra al proveedor.

#### Campos principales

| Campo | Descripción | Tipo | Obligatorio |
|---|---|---|---|
| Organización | Entidad organizacional dentro del cliente | Tabla | Sí |
| Tema de SpC | Tema de la solicitud para cotización | Búsqueda directa | Sí |
| No. del Documento | Número de secuencia del documento | Texto | Sí |
| Nombre | Nombre de la solicitud para cotización | Texto | Sí |
| Descripción | Descripción corta opcional del registro | Texto | No |
| Ayuda/Comentario | Comentarios adicionales o ayuda contextual | Texto largo | No |
| Activo | Indica si el registro está activo en el sistema | Sí/No | No |
| Procesado | Indica si el documento ha sido procesado | Sí/No | No |
| Fecha de Cotización | Fecha límite para recibir cotizaciones | Fecha | No |
| Fecha de Entrega | Fecha requerida de entrega | Fecha | No |
| Fecha de Trabajo | Fecha de inicio de trabajo | Fecha | No |
| Días de Entrega | Número de días para la entrega | Entero | No |
| Moneda | Moneda utilizada para la cotización | Búsqueda directa | No |
| Solo Ganador | Indica si solo se selecciona un ganador | Sí/No | No |
| Socio del Negocio | Socio del negocio relacionado (cliente) | Búsqueda directa | No |
| Dirección del Socio | Dirección del socio del negocio | Búsqueda directa | No |
| Contacto | Contacto del socio del negocio | Búsqueda directa | No |
| Crear OC | Indica si se debe crear una orden de compra | Sí/No | No |
| Crear Cotización | Indica si se debe crear una cotización al cliente | Sí/No | No |
| Invitar y Recordar | Invita y envía recordatorio a los proveedores | Botón | No |
| Clasificar Respuestas | Clasifica las respuestas recibidas de proveedores | Botón | No |
| Cerrar | Cierra la solicitud para cotización | Botón | No |

### Línea

Solicitud para la línea de cita.

#### Campos principales

| Campo | Descripción | Tipo | Obligatorio |
|---|---|---|---|
| Solicitud para Cotización | Encabezado de la solicitud para cotización | Búsqueda directa | Sí |
| No. de Línea | Número único de la línea en el documento | Entero | Sí |
| Producto | Producto o servicio solicitado | Búsqueda directa | No |
| Descripción | Descripción de la línea | Texto | No |
| Activo | Indica si la línea está activa | Sí/No | No |
| Fecha de Entrega | Fecha requerida de entrega para la línea | Fecha | No |

### Cantidad

Cantidad en línea pedido de cita. Puede solicitar cotización para diferentes cantidades.

#### Campos principales

| Campo | Descripción | Tipo | Obligatorio |
|---|---|---|---|
| Línea SpC | Línea de la solicitud para cotización | Búsqueda directa | Sí |
| Cantidad | Cantidad a cotizar | Cantidad | Sí |
| Activo | Indica si el registro está activo | Sí/No | No |
| Precio de Oferta | Precio ofertado para esta cantidad | Monto | No |
