---
title: Órdenes de Compra
category: Documentation
star: 9
sticky: 9
article: false
---

# Órdenes de Compra

## Descripción

La ventana define una orden de compra para una organización. Puede generarse manualmente o a partir de una [Requisición](../requisitions/requisition) confirmada, tomando el precio de la lista vigente del proveedor. Cuando una orden de compra ha sido ingresada, es posible generar un documento de entrega o factura desde esta orden.

Cuando el importe de la orden supera el límite de autorización configurado para el aprobador, el sistema deriva automáticamente la aprobación a un nivel superior y valida el presupuesto disponible del proyecto o centro de costo antes de confirmarla.

## ¿Cuándo se utiliza?

Se utiliza cuando el área de Compras necesita:

- Emitir una orden a un proveedor a partir de una necesidad de reposición, ya sea generada desde una requisición o cargada directamente.
- Disparar el circuito de aprobación por monto, con o sin control de presupuesto por proyecto.
- Dejar trazabilidad de quién solicitó, quién emitió y quién aprobó la compra, sin depender de planillas o formularios externos.
- Habilitar la recepción de mercadería y el posterior ingreso de la factura del proveedor, conciliados contra la orden.

## Acceso

Menú: Gestión de Compras → Órdenes de Compra → Órdenes de Compra

## Pestañas

### Orden de Compra

Encabezado de la orden de compra. Define los parámetros que determinan cómo se procesarán las líneas de la orden. Entre los campos relevantes:

- **Proveedor**
  Socio de negocio al que se emite la orden.

- **Proyecto**
  Centro de costo o proyecto contra el cual se compromete el presupuesto, cuando aplica control presupuestario.

- **Estado del documento**
  Refleja el avance de la orden: *Borrador*, *Pendiente de aprobación*, *Completado* (aprobada), *En Proceso* (recepción parcial) o *Cerrado*.

### Línea OC

Líneas individuales de la orden de compra con productos, cantidades y precios. El precio unitario se toma de la lista de precios vigente del proveedor; si se modifica manualmente, la modificación queda registrada en el historial del documento.

### Costo de Desembarque Estimado

Costos de desembarque estimados para la orden de compra.

### Asignación de Costo de Desembarque

Distribución del costo de desembarque estimado entre las líneas de la orden.

### Impuesto de Orden

Muestra el impuesto asociado a las líneas de la orden de compra.

### Asignación de Unidad de Transporte

Asignación de la unidad de transporte para la entrega de la orden.

## Flujo del proceso

### 1. Generar la orden

Desde una requisición confirmada, o directamente desde la ventana de Órdenes de Compra, seleccionar el proveedor y confirmar la lista de precios vigente. La orden queda en estado **Borrador**.

### 2. Completar (aprobar) la orden

Al intentar completar la orden, el sistema evalúa el importe contra el límite de autorización del usuario:

- Si el importe está **dentro del límite**, la orden pasa directamente a **Completado**.
- Si el importe **supera el límite**, la orden queda en **Pendiente de aprobación** y se deriva al aprobador de nivel superior, sin que el usuario original pueda forzar la aprobación por otro camino.

### 3. Validación de presupuesto

Cuando la orden está asociada a un proyecto con control de presupuesto, el aprobador consulta el saldo disponible antes de aprobar. Al completar la orden, el importe queda **comprometido** contra el presupuesto del proyecto; el compromiso se libera únicamente si la orden se cierra con saldo pendiente sin recibir.

### 4. Envío al proveedor

Una vez aprobada, la orden puede enviarse al proveedor desde el propio documento, quedando constancia del envío en el historial.

### 5. Recepción y facturación

La mercadería se ingresa mediante [Recepción de Productos](../reception/material-receipt), pudiendo ser parcial. La factura del proveedor se ingresa y concilia contra la orden y la recepción en [Conciliación OC-Recepción-Factura](../reception/matching-po-receipt-invoice).

## Consideraciones importantes

- El compromiso presupuestario se genera **al aprobar** la orden, no al facturarla.
- Una orden puede quedar **Parcialmente recibida** cuando el proveedor entrega menos cantidad de la ordenada; el saldo pendiente permanece abierto hasta que se reciba o se cierre manualmente la orden.
- Al cerrar manualmente una orden con saldo pendiente sin recibir, el compromiso presupuestario correspondiente a ese saldo se libera y vuelve a estar disponible en el proyecto.
- El rechazo de una orden en aprobación requiere un motivo, que queda visible en el historial del documento y devuelve la orden a **Borrador**.

## Ventanas relacionadas

- [Requisición](../requisitions/requisition)
- [Recepción de Productos](../reception/material-receipt)
- [Conciliación OC-Recepción-Factura](../reception/matching-po-receipt-invoice)
- [Factura de Proveedor](../payable-documents/invoice-vendor)
