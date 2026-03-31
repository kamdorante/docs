---
title: Retenciones en Facturación Electrónica
category: Documentation
star: 9
sticky: 9
article: false
---

# Retenciones en Facturación Electrónica

## Descripción

Envío de retenciones al proveedor de facturación electrónica con código y porcentaje obtenidos directamente del registro de retención, con soporte de decimales en el porcentaje.

## Campos verificables en Bitácora de Documento Electrónico

| Campo | Descripción | Tipo | Obligatorio |
|-------|-------------|------|-------------|
| Código de retención | Código extraído del registro de retención | Texto | No |
| Base imponible | Base sobre la que se calcula la retención | Monto | No |
| Porcentaje de retención | Porcentaje con soporte de decimales (ej. 12,50%) | Número | No |
| Monto retenido | Resultado del cálculo aplicado sobre la base imponible | Monto | No |

## Ventanas Relacionadas

- [Bitácora de Documento Electrónico](electronic-document-log)
- [Emisor Fiscal](fiscal-sender)
- [Enviar Factura al Emisor Fiscal](send-invoice-to-fiscal-sender)
