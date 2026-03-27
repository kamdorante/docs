---
title: Generar Movimiento de Inventario desde Orden de Salida
category: Documentation
star: 9
sticky: 9
article: false
---

# Generar Movimiento de Inventario desde Orden de Salida

## Descripción

Este visor inteligente permite seleccionar las líneas de Órdenes de Salida para generar sus movimientos de inventario. Después de procesar, el inventario puede ser movido a tránsito o a su destino final dependiendo de la opción que seleccione.

Filtra las líneas de órdenes de salida que han sido procesadas, que tienen cantidades recogidas pendientes de mover, y para las cuales no existe un movimiento activo previo.

## Acceso

Menú: Gestión de Distribución → Generar Movimiento de Inventario desde Orden de Salida

## Campos del Browser

| Campo | Descripción | Filtro | Editable |
|-------|-------------|--------|----------|
| Organización | Entidad organizacional dentro del cliente | Sí | No |
| Orden de Salida | Identificador de la orden de entrada/salida | Sí | No |
| No. Documento | Número de secuencia del documento de la orden de salida | Sí | No |
| Tipo de Documento | Tipo de documento o reglas de procesamiento | Sí | No |
| Fecha del Movimiento | Fecha en que el producto fue movido del inventario | Sí | No |
| Socio del Negocio | Identifica un socio del negocio asociado a la orden | Sí | No |
| Almacén | Almacén de origen del movimiento de inventario | Sí | No |
| Estado del Documento | Estado actual del documento de la orden de salida | Sí | No |
| No. Línea | Número de línea único para este documento | No | No |
| Producto | Producto, servicio o artículo a mover | Sí | No |
| Descripción | Descripción corta opcional de la línea | No | No |
| Unidad de Medida | Unidad de medida del producto | No | No |
| Cantidad Ordenada | Cantidad total ordenada en la línea de salida | No | No |
| Cantidad Recogida | Cantidad que ya fue recogida del almacén | No | No |
| Cantidad Entregada | Cantidad ya entregada y confirmada | No | No |
| Cantidad en Tránsito | Cantidad actualmente en tránsito | No | No |
| Cantidad a Mover | Cantidad que se va a incluir en el movimiento | No | Sí |
| Localizador | Localizador de origen en el almacén | Sí | No |
| Localizador Destino | Localizador destino para el movimiento de inventario | No | Sí |
