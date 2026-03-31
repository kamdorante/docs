---
title: Funcionalidades Complementarias
category: Documentation
star: 9
sticky: 9
article: false
---

# Funcionalidades Complementarias

## Descripción

Conjunto de mejoras puntuales en el módulo de facturación electrónica: código de producto genérico en resúmenes, impresión masiva de remitos, referencia de orden de compra y generación automática de nota de crédito en devoluciones desde POS.

## Código de Producto Genérico en Resumen de Factura

Cuando una línea de resumen de factura electrónica no tiene producto ni cargo, el sistema envía un código de producto genérico al proveedor para evitar errores de validación.

## Impresión Masiva de Remitos

| Acceso | Descripción |
|--------|-------------|
| Orden de Salida → Imprimir | Imprime de forma masiva todos los e-Remitos relacionados a la orden en una sola operación |

## Referencia de Orden de Compra

El campo **Referencia de Orden de Compra** del documento se transmite al proveedor de facturación electrónica, permitiendo al receptor identificar la orden de compra asociada.

## Devolución de Producto desde POS con Nota de Crédito

Al procesar una devolución en el Punto de Venta, el sistema genera automáticamente la nota de crédito electrónica con referencia al comprobante original, sin requerir pasos adicionales.

## Ventanas Relacionadas

- [Bitácora de Documento Electrónico](electronic-document-log)
- [Imprimir Recibo de Entrega](print-shipment-receipt)
- [Enviar Entrega al Proveedor Fiscal](send-shipment-to-fiscal-provider)
