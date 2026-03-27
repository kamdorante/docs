---
title: Crear OC desde Requisición
category: Documentation
star: 9
sticky: 9
article: false
---

# Crear OC desde Requisición

## Descripción

Crear Orden de Compra desde una Requisición. Este proceso genera órdenes de compra a partir de las requisiciones de material aprobadas, permitiendo consolidarlas opcionalmente en un solo documento.

## Acceso

Menú: Gestión de Compras → Requisiciones → Crear OC desde Requisición

## Parámetros

| Parámetro | Descripción | Tipo | Obligatorio |
|---|---|---|---|
| Requisición de Material | Requisición de material a convertir en OC | ID | No |
| Organización | Organización para la orden de compra | ID | No |
| Almacén | Almacén de destino de la orden de compra | ID | No |
| Fecha del Documento | Fecha del documento de orden de compra | Fecha | No |
| Fecha Requerida | Fecha requerida para la entrega | Fecha | No |
| Prioridad | Prioridad de la orden de compra | Lista | No |
| Usuario/Contacto | Agente de compras asignado | Búsqueda directa | No |
| Producto | Filtrar por producto específico | Búsqueda directa | No |
| Categoría del Producto | Filtrar por categoría de producto | ID | No |
| Grupo de Socio del Negocio | Filtrar por grupo de proveedor | ID | No |
| Consolidar Documentos | Indica si se deben consolidar en una sola orden de compra | Sí/No | No |
| Tipo de Documento | Tipo de documento para la orden de compra generada | ID | No |
