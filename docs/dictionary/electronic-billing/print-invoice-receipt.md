---
title: Imprimir Recibo de Factura
category: Documentation
star: 9
sticky: 9
article: false
---

# Imprimir Recibo de Factura

## Descripción

Reporte para imprimir el recibo o comprobante de una factura electrónica. El proceso busca primero el documento localmente (adjuntos de la factura) y, si no se encuentra, lo descarga desde el proveedor fiscal externo. Permite obtener el XML o PDF autorizado de la factura electrónica.

## Acceso

Menú: Facturación Electrónica → Imprimir Recibo de Factura

## Parámetros

| Parámetro | Descripción | Tipo | Obligatorio |
|-----------|-------------|------|-------------|
| Factura | Factura cuyo comprobante electrónico se desea imprimir o descargar | Búsqueda | No |
| Buscar Localmente Primero | Si está activo, busca el archivo localmente antes de intentar descargarlo del proveedor fiscal (valor por defecto: Sí) | Sí/No | No |
