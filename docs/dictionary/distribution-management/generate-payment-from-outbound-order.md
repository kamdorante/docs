---
title: Generar Cobros desde Orden de Salida
category: Documentation
star: 9
sticky: 9
article: false
---

# Generar Cobros desde Orden de Salida

## Descripción

Este visor inteligente permite seleccionar facturas de órdenes de salida que no han sido pagadas para generar cobros. Filtra automáticamente las facturas con transacciones de venta que no han sido pagadas y que no tienen regla de pago de prepago.

## Acceso

Menú: Gestión de Distribución → Generar Cobros desde Orden de Salida

## Campos del Browser

| Campo | Descripción | Filtro | Editable |
|-------|-------------|--------|----------|
| Factura | Identificador de la factura | No | No |
| Fecha de Factura | Fecha impresa en la factura | Sí | No |
| Fecha de Vencimiento | Fecha en que vence el pago sin descuentos | Sí | No |
| Días de Vencimiento | Número de días vencidos (negativo: vence en número de días) | Sí | No |
| Tipo de Documento | Tipo de documento o reglas de procesamiento | Sí | No |
| No. Documento | Número de secuencia del documento | Sí | No |
| Socio del Negocio | Identifica un socio del negocio | Sí | No |
| Descripción | Descripción corta opcional del registro | No | No |
| Moneda | Moneda para este registro | Sí | No |
| Total del Documento | Total de todas las líneas del documento en la moneda del documento | No | No |
| Monto Convertido | Resultado de multiplicar el monto fuente por la tasa de conversión | No | No |
| Monto de Descuento | Monto calculado del descuento | No | No |
| Monto Pendiente | Monto pendiente de pago del documento abierto | No | No |
| Monto del Pago | Monto que se está pagando | Sí | Sí |
| Tipo de Moneda | Tipo de tasa de conversión de moneda | Sí | No |
| En Disputa | Indica si el documento está en disputa | Sí | No |
| Regla de Pago | Cómo se paga la factura | Sí | No |
| Condición de Pago | Los términos de pago (tiempo, descuento) | Sí | No |
| Tipo de Pago | Método de pago | Sí | No |
| No. de Cheque | Número impreso en el cheque | No | Sí |
