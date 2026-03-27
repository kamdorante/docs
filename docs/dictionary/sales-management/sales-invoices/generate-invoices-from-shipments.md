---
title: Genera Factura desde Embarques
category: Documentation
star: 9
sticky: 9
article: false
---

# Genera Factura desde Embarques

## Descripción

Genera facturas a partir de documentos de entrega completados. Este proceso permite seleccionar entregas específicas y generar las facturas correspondientes, con la opción de consolidar múltiples entregas en una sola factura.

## Acceso

Menú: Gestión de Ventas → Facturas de Venta → Genera Factura desde Embarques

## Parámetros

| Parámetro | Descripción | Tipo | Obligatorio | Valor por defecto |
|---|---|---|---|---|
| Fecha de Facturación | Fecha impresa en la factura | Fecha | No | Fecha actual |
| Organización | Organización dentro del cliente | Tabla | No | Organización actual |
| Entrega/Recibo | Documento de entrega de material específico | Búsqueda | No | |
| Socio del Negocio | Identifica al socio del negocio | Búsqueda | No | |
| Acción del Documento | Acción a ejecutar sobre el documento generado | Lista | No | CO |
| Consolidar en un Documento | Consolidar líneas en un solo documento | Sí/No | No | Sí |
| Organización de la Transacción | Organización que ejecuta la transacción | Tabla | No | -1 |
| Agregar Línea de Referencia de Entrega | Agrega una línea informativa en la factura con referencia al número y fecha de entrega | Sí/No | No | Sí |
