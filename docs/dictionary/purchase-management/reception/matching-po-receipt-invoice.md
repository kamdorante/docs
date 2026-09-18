---
title: Conciliación OC-Recepción-Factura
category: Documentation
star: 9
sticky: 9
article: false
---

# Conciliación OC-Recepción-Factura

## Descripción

Formulario para realizar la conciliación de tres puntas entre la [Orden de Compra](../purchase-orders/purchase-order), la [Recepción de Productos](material-receipt) y la factura del proveedor. Permite verificar que las cantidades facturadas coincidan con las recibidas y que el precio facturado coincida con el de la orden, dentro de una tolerancia configurable.

## ¿Cuándo se utiliza?

Se utiliza cuando Cuentas a Pagar necesita:

- Vincular una factura de proveedor a la orden de compra y a la recepción de mercadería que le dieron origen.
- Verificar automáticamente que cantidad y precio facturados coincidan con lo ordenado y lo recibido.
- Detectar y resolver desvíos de precio o cantidad antes de confirmar la factura.

## Acceso

Menú: Gestión de Compras → Recepción → Conciliación OC-Recepción-Factura

## Funcionalidad

Este formulario especial permite:
- Seleccionar la orden de compra, recepción de material y factura a conciliar
- Verificar las diferencias de cantidades y precios entre documentos
- Realizar la conciliación automática o manual de los documentos
- Identificar y resolver discrepancias entre lo ordenado, recibido y facturado

## Flujo del proceso

### 1. Ingresar la factura del proveedor

Al cargar la factura, vincularla a la orden de compra y a la recepción correspondiente. El sistema compara automáticamente las cantidades facturadas contra las recibidas y el precio unitario contra el de la orden.

### 2. Evaluar la conciliación

- Si cantidad y precio **coinciden**, la conciliación queda en verde y la factura puede confirmarse sin intervención adicional.
- Si existe una **diferencia de precio dentro de la tolerancia** configurada (por ejemplo, 5%), el sistema permite confirmar la factura dejando constancia de la diferencia.
- Si la diferencia **supera la tolerancia**, el sistema bloquea la confirmación y deja la factura en estado **En revisión**, notificando al responsable de Compras.

### 3. Resolver discrepancias

Ante un desvío que supera la tolerancia, Compras revisa el motivo (cambio de precio del proveedor, error de carga, remito parcial no registrado) y autoriza explícitamente la confirmación o solicita la corrección de la factura.

### 4. Confirmar la factura

Una vez resuelta cualquier discrepancia, la factura se confirma, genera el asiento contable correspondiente y actualiza el saldo del proveedor.

## Consideraciones importantes

- La tolerancia de conciliación es un parámetro configurable del sistema; ninguna factura con desvío mayor a la tolerancia puede confirmarse sin autorización explícita.
- La factura no puede imputarse a un proyecto o centro de costo distinto al de su orden de origen.
- La conciliación de tres puntas es la validación previa a la confirmación de la factura; no reemplaza la recepción de mercadería, que debe registrarse primero en [Recepción de Productos](material-receipt).

## Ventanas relacionadas

- [Órdenes de Compra](../purchase-orders/purchase-order)
- [Recepción de Productos](material-receipt)
- [Factura de Proveedor](../payable-documents/invoice-vendor)
- [Facturas Conciliadas](matched-invoices)
- [Órdenes de Compra Conciliadas](matched-purchase-orders)
