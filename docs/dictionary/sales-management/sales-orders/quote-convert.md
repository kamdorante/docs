---
title: Convertir Cotización
category: Documentation
star: 9
sticky: 9
article: false
---

# Convertir Cotización

## Descripción

Este proceso permite convertir una propuesta o cotización abierta en una orden de venta. Se utiliza cuando se desea mantener la propuesta o cotización original y generar un nuevo documento de orden. El estado del documento de origen debe estar "En Proceso".

## Acceso

Menú: Gestión de Ventas → Órdenes de Venta → Convertir Cotización

## Parámetros

| Parámetro | Descripción | Tipo | Obligatorio | Valor por defecto |
|---|---|---|---|---|
| Orden | Orden de origen (propuesta o cotización) a convertir | Búsqueda directa | No | |
| Tipo de Documento | Tipo de documento destino para la nueva orden | Búsqueda directa | No | |
| Fecha del Documento | Fecha para el nuevo documento generado | Fecha | No | |
| Acción del Documento | Acción a ejecutar sobre el documento generado (completar, preparar, etc.) | Lista | No | Completar |
| Cerrar Documento | Indica si se debe cerrar el documento de origen después de la conversión | Sí/No | No | |
