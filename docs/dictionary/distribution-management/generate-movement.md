---
title: Generar Movimiento
category: Documentation
star: 9
sticky: 9
article: false
---

# Generar Movimiento

## Descripción

Genera e imprime movimientos a partir de órdenes de distribución abiertas. El movimiento para las órdenes de distribución es creado basado en las reglas de despacho de la Orden de Distribución y el orden de la prioridad relativa.

Si una fecha prometida es seleccionada, solo se incluirán las órdenes hasta (inclusive) la fecha seleccionada. Si varias Órdenes de Distribución de un Socio del Negocio tienen la misma dirección, las órdenes de distribución pueden ser consolidadas en un movimiento. También puede incluir órdenes de distribución que tienen confirmaciones pendientes (por ejemplo: ordenado=10 - movimientos no confirmados=4 - creará un nuevo movimiento de 6 si está disponible).

## Acceso

Menú: Gestión de Distribución → Generar Movimiento

## Parámetros

| Parámetro | Descripción | Tipo | Obligatorio |
|-----------|-------------|------|-------------|
| Almacén | Almacén de almacenamiento y punto de servicio | Tabla Directa | No |
| Fecha de Movimiento | Fecha en que el producto fue movido dentro o fuera del inventario | Fecha | No |
| Socio del Negocio | Identifica un socio del negocio | Búsqueda | No |
| Fecha Prometida | Fecha en que la orden fue prometida | Fecha | No |
| Órdenes con Envíos no Confirmados | Genera envíos para órdenes con confirmaciones de entrega abiertas | Sí/No | No |
| Acción del Documento | Estado objetivo del documento al procesar | Lista | No |
| Consolidar en un Documento | Consolidar líneas en un solo documento | Sí/No | No |
