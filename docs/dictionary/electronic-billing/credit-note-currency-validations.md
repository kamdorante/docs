---
title: Notas de Crédito — Validaciones de Moneda y Tasa de Cambio
category: Documentation
star: 9
sticky: 9
article: false
---

# Notas de Crédito — Validaciones de Moneda y Tasa de Cambio

## Descripción

Aplica validaciones automáticas al relacionar documentos con una nota de crédito, garantizando consistencia de moneda y tasa de cambio antes del envío al proveedor fiscal.

## Validaciones

| Validación | Descripción |
|-----------|-------------|
| Misma moneda | La nota de crédito y sus documentos referenciados deben estar en la misma moneda |
| Misma tasa de cambio | La tasa de cambio debe coincidir entre la nota de crédito y cada documento referenciado |
| Sin referencias duplicadas | Referencias al mismo documento se agrupan y suman automáticamente en una sola línea |

## Campos — Pestaña Referencias

| Campo | Descripción | Tipo | Obligatorio |
|-------|-------------|------|-------------|
| Monto del documento referenciado | Monto asignado desde la nota de crédito al documento (no el total original de la factura) | Monto | No |
| Moneda del documento referenciado | Moneda en que está denominado el documento original | Tabla Directa | No |
| Cotización / Tasa | Tasa de cambio del documento referenciado | Número | No |

## Ventanas Relacionadas

- [Tipo de Transacción Fiscal](fiscal-transaction-type)
- [Bitácora de Documento Electrónico](electronic-document-log)
