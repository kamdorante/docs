---
title: Generar Facturas
category: Documentation
star: 9
sticky: 9
article: false
---

# Generar Facturas

## Descripción

Generar e imprimir facturas desde órdenes abiertas. Las facturas para órdenes abiertas se crean basándose en la regla de facturación de la orden. Si varias órdenes de un socio del negocio tienen la misma dirección de facturación, las órdenes pueden ser consolidadas en una sola factura.

## Acceso

Menú: Gestión de Ventas → Facturas de Venta → Generar Facturas

## Parámetros

| Parámetro | Descripción | Tipo | Obligatorio | Valor por defecto |
|---|---|---|---|---|
| Fecha de Facturación | Fecha impresa en la factura | Fecha | No | Fecha actual |
| Organización | Organización dentro del cliente | Tabla | No | Organización actual |
| Orden | Orden de venta específica a facturar | Búsqueda directa | No | |
| Socio del Negocio | Identifica al socio del negocio | Búsqueda directa | No | |
| Acción del Documento | Acción a ejecutar sobre el documento generado | Lista | No | CO |
| Consolidar en un Documento | Consolidar líneas en un solo documento | Sí/No | No | Sí |
