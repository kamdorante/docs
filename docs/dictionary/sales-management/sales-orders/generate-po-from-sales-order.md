---
title: Generar OC desde Orden de Venta
category: Documentation
star: 9
sticky: 9
article: false
---

# Generar OC desde Orden de Venta

## Descripción

Este proceso permite crear una o más órdenes de compra a partir de órdenes de venta completadas. Cada orden de compra referencia una única orden de venta (sin consolidación). La organización de la orden de venta se utiliza para crear la orden de compra.

Las órdenes de compra se generan para todas las líneas de orden de venta donde el producto tenga un proveedor vigente, y el proveedor tenga una lista de precios de compra con todos los productos en la versión más reciente. La unidad de medida se copia; las OC y OV pueden tener monedas diferentes.

Una vez ejecutado el proceso, se debe sincronizar manualmente las órdenes de venta y compra en caso de líneas adicionales o modificaciones.

## Acceso

Menú: Gestión de Ventas → Órdenes de Venta → Generar OC desde Orden de Venta

## Parámetros

| Parámetro | Descripción | Tipo | Obligatorio | Valor por defecto |
|---|---|---|---|---|
| Fecha de la Orden | Fecha de la orden para filtrar | Fecha | No | |
| Socio del Negocio | Cliente de la orden de venta | Búsqueda | No | |
| Proveedor | Proveedor al que se le generará la orden de compra | Tabla | No | |
| Orden | Orden de venta específica a procesar | Búsqueda | No | |
| Entrega Directa | Indica si el envío será directo del proveedor al cliente | Lista | No | |
