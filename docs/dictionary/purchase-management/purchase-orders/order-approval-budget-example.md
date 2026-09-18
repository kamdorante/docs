---
title: "CU-08 · Emisión y Aprobación de Orden de Compra con Control de Presupuesto"
category: Documentation
star: 9
sticky: 9
article: false
---

# CU-08 · Emisión y Aprobación de Orden de Compra con Control de Presupuesto

> Modelo de referencia. Los datos de la empresa, personas, proveedores e importes son **ficticios** y sirven solo de ejemplo para ilustrar cómo funciona el circuito en Solop.

## Sección 1 — Identificación

| Campo | Contenido |
|---|---|
| Nombre del caso | Emisión y Aprobación de Orden de Compra a Proveedor con Control de Presupuesto |
| Módulo | Compras y Abastecimiento |
| Área funcional | Compras · Distribución |
| Prioridad | Alta |
| ¿Es bloqueante? | Sí — sin este circuito aprobado no puede configurarse Cuentas por Pagar ni el control presupuestario por centro de costo |

## Sección 2 — Objetivo y alcance

### 2.1 Objetivo

En un circuito manual típico, cuando un depósito necesita reponer mercadería, el encargado completa un formulario interno y lo envía por correo a Compras. Compras arma la orden en una planilla compartida, la imprime y la lleva a firmar; si el importe supera cierto monto, firma la Gerencia, pero no queda registro de cuándo se pidió la autorización ni de quién la otorgó.

Esto genera dos problemas. Primero, no se sabe en tiempo real cuánto presupuesto queda disponible en cada centro de costo: el saldo se calcula a fin de mes, cuando ya es tarde para corregir. Segundo, cuando llega la factura del proveedor, Administración no tiene forma automática de verificar que el precio y las cantidades coincidan con lo pedido y con lo efectivamente recibido.

Con Solop, la solicitud, la orden de compra, la recepción de mercadería y la factura del proveedor quedan encadenadas en un mismo circuito: la aprobación se dispara automáticamente según el monto, el presupuesto del centro de costo se compromete en el momento de aprobar la orden, y la factura no puede confirmarse si no coincide con la orden y el remito dentro de una tolerancia definida.

### 2.2 Alcance

**Este circuito incluye:**

- Solicitud de compra originada en un depósito o área solicitante.
- Generación de la orden de compra a partir de la solicitud, con precios tomados de la lista vigente del proveedor.
- Circuito de aprobación por monto y validación contra el presupuesto del centro de costo.
- Recepción de mercadería (total o parcial) e ingreso de la factura del proveedor con conciliación de tres puntas.

**Este circuito NO incluye:**

- La emisión del pago al proveedor ni la conciliación bancaria (se resuelve en el proceso de Emisión de Pagos a Proveedores).
- El alta del proveedor como Socio de Negocio.
- La carga y actualización de las listas de precios de proveedor.
- Las compras de servicios sin recepción de mercadería, que siguen un circuito distinto.

### 2.3 Caso real de referencia

| Dato | Valor |
|---|---|
| Proveedor involucrado | Insumos del Norte S.R.L. |
| Documento de referencia | Solicitud SC-2026-0311 → Orden de Compra OC-2026-0472 |
| Centro de costo / Proyecto | Reposición Temporada Alta 2026 — Depósito Central |
| Período / fecha | Solicitud 09/03/2026 · Orden emitida 12/03/2026 · Vencimiento de factura 11/04/2026 |
| Importe | $1.480.000 + IVA (1.200 unidades de Film stretch 500 mm a $1.233,33 c/u) |
| Observaciones | El proveedor entregó 1.150 unidades en el primer envío; el saldo quedó pendiente. Es un caso habitual y por eso se eligió como referencia. |

## Sección 3 — Actores involucrados

| Actor (rol) | Tipo | Responsabilidad en el proceso |
|---|---|---|
| Encargado de Depósito | Principal | Detecta la necesidad de reposición y genera la solicitud de compra con productos y cantidades. |
| Jefa de Compras | Principal | Selecciona el proveedor, genera la orden de compra desde la solicitud y aprueba dentro de su límite de autorización ($500.000). |
| Gerente de Administración y Finanzas | Secundario | Aprueba las órdenes que superan $500.000 y verifica el impacto sobre el presupuesto del centro de costo. |
| Auxiliar de Recepción | Secundario | Registra la recepción de la mercadería contra la orden de compra e informa faltantes. |
| Analista de Cuentas a Pagar | Secundario | Ingresa la factura del proveedor, la vincula a la orden y a la recepción, y la confirma. |
| Proveedor | Externo | Recibe la orden de compra, entrega la mercadería y emite la factura. |
| Módulo de Compras | Sistema | Genera y controla los estados de solicitud y orden de compra, y ejecuta las reglas de aprobación. |
| Módulo de Almacén | Sistema | Registra la recepción y actualiza el stock del depósito. |
| Módulo de Cuentas por Pagar y Contabilidad | Sistema | Registra la factura, genera el asiento contable y actualiza el saldo del proveedor. |

## Sección 4 — Precondiciones y datos de entrada

**Precondiciones:**

- El proveedor Insumos del Norte S.R.L. está dado de alta como Socio de Negocio con datos fiscales y condición de pago 30 días.
- Existe una lista de precios vigente del proveedor con el producto Film stretch 500 mm y su precio unitario.
- El centro de costo "Reposición Temporada Alta 2026" está creado y tiene un presupuesto aprobado de $4.000.000 para el período enero–junio 2026.
- El producto está dado de alta con su unidad de medida (unidad) y su depósito por defecto (Depósito Central).
- Los límites de autorización están parametrizados: hasta $500.000 aprueba Jefatura de Compras; por encima, Gerencia de Administración y Finanzas.
- El Encargado de Depósito tiene permiso para crear solicitudes pero no para emitir órdenes de compra.

**Datos de entrada:**

- Necesidad de reposición detectada por stock mínimo: 1.200 unidades de Film stretch 500 mm.
- Fecha requerida de entrega: 20/03/2026.

## Sección 5 — Flujo principal del proceso

| # | Rol | Acción en el sistema | Resultado esperado | Notas |
|---|---|---|---|---|
| 1 | Encargado de Depósito | Crea una solicitud de compra por 1.200 unidades de Film stretch 500 mm, indicando el Depósito Central, el centro de costo Reposición Temporada Alta 2026 y la fecha requerida 20/03/2026. | El sistema crea la solicitud SC-2026-0311 en estado **Borrador**, vinculada al centro de costo, sin precio todavía. | El solicitante no elige proveedor ni precio. |
| 2 | Encargado de Depósito | Confirma la solicitud. | La solicitud pasa a estado **Confirmada** y queda disponible en la bandeja de trabajo de Compras. El sistema notifica a la Jefa de Compras. | Una vez confirmada, el solicitante ya no puede modificar cantidades. |
| 3 | Jefa de Compras | Genera la orden de compra desde la solicitud SC-2026-0311, selecciona al proveedor Insumos del Norte S.R.L. y confirma la lista de precios vigente. | El sistema crea la orden OC-2026-0472 en estado **Borrador** por $1.480.000 + IVA, trae el precio unitario de la lista vigente y arrastra el centro de costo de la solicitud. | El precio no se digita: se toma de la lista. Si se modifica manualmente, queda registrado quién lo cambió. |
| 4 | Jefa de Compras | Intenta aprobar la orden de compra. | El sistema detecta que $1.480.000 supera su límite de $500.000, deja la orden en estado **Pendiente de aprobación** y la deriva a la bandeja del Gerente de Administración y Finanzas, notificándolo. | La Jefa de Compras no puede forzar la aprobación por ningún camino alternativo. |
| 5 | Gerente de Administración y Finanzas | Revisa la orden, consulta el saldo disponible del centro de costo y la aprueba. | La orden pasa a estado **Aprobada**. El presupuesto comprometido del centro de costo se actualiza: de $4.000.000 disponibles pasa a $2.520.000. La orden queda lista para enviarse al proveedor. | El compromiso presupuestario se genera al aprobar, no al facturar. |
| 6 | Jefa de Compras | Envía la orden de compra aprobada al proveedor desde el sistema. | El sistema genera el PDF de la orden y lo envía al correo registrado del proveedor, dejando constancia del envío en el historial del documento. | El formato del PDF debe incluir el logo, el número de orden y la condición de pago. |
| 7 | Auxiliar de Recepción | Al llegar la mercadería el 18/03/2026, registra la recepción contra la orden OC-2026-0472 e ingresa 1.150 unidades recibidas en lugar de 1.200. | El sistema genera la recepción R-2026-1188, actualiza el stock del Depósito Central en +1.150 unidades y deja la orden en estado **Parcialmente recibida** con 50 unidades pendientes. | El sistema debe permitir la recepción parcial sin cerrar la orden. |
| 8 | Analista de Cuentas a Pagar | Ingresa la factura A-0003-00012345 del proveedor por $1.418.500 + IVA, la vincula a la orden OC-2026-0472 y a la recepción R-2026-1188. | El sistema concilia orden, recepción y factura: verifica que las 1.150 unidades facturadas coincidan con las recibidas y que el precio unitario coincida con el de la orden. La factura queda en estado **Borrador** lista para confirmar. | Si no coincide, ver flujo alternativo "La factura del proveedor no coincide con la orden de compra". |
| 9 | Analista de Cuentas a Pagar | Confirma la factura del proveedor. | La factura pasa a estado **Confirmada**, genera el asiento contable automático, actualiza el saldo del proveedor y queda registrada en cuentas a pagar con vencimiento 11/04/2026. | El asiento imputa al centro de costo de la orden de origen. |

## Sección 6 — Flujos alternativos y excepciones

### La factura del proveedor no coincide con la orden de compra

**Condición que lo dispara:** El proveedor factura un precio unitario superior al de la orden, o una cantidad mayor a la recibida. En el caso de referencia, el proveedor facturó $1.280 por unidad en lugar de $1.233,33 (diferencia del 3,8 %).

**Quién actúa:** Analista de Cuentas a Pagar.

**Qué debe hacer el sistema:** Compara factura, orden y recepción. Si la diferencia está dentro de la tolerancia del 5 % configurada, permite confirmar dejando constancia de la diferencia. Si la supera, bloquea la confirmación y deja la factura en estado **En revisión**, notificando a la Jefa de Compras.

**Resultado esperado:** Ninguna factura con desvío mayor al 5 % puede confirmarse sin una autorización explícita registrada en el sistema.

### Presupuesto insuficiente en el centro de costo

**Condición que lo dispara:** El importe de la orden supera el saldo disponible del centro de costo al momento de aprobar.

**Quién actúa:** Gerente de Administración y Finanzas.

**Qué debe hacer el sistema:** No permite aprobar la orden, muestra un mensaje indicando el saldo disponible y el monto excedente, y deja la orden en **Pendiente de aprobación**. La Gerencia puede ampliar el presupuesto del centro de costo y volver a aprobar.

**Resultado esperado:** La orden no queda aprobada y el presupuesto no se compromete hasta que exista saldo suficiente o una ampliación registrada.

### La orden de compra es rechazada

**Condición que lo dispara:** El aprobador considera que la compra no corresponde, el proveedor no es el adecuado o las cantidades son excesivas.

**Quién actúa:** Gerente de Administración y Finanzas.

**Qué debe hacer el sistema:** Exige un motivo de rechazo obligatorio, devuelve la orden a estado **Borrador** y notifica a la Jefa de Compras con el comentario. No se compromete presupuesto.

**Resultado esperado:** La orden vuelve a Borrador con el motivo visible en el historial, y la solicitud de origen sigue abierta para poder rehacerla.

### El proveedor no entrega el saldo pendiente

**Condición que lo dispara:** Pasados 30 días de la entrega parcial, el proveedor informa que no entregará las 50 unidades restantes.

**Quién actúa:** Jefa de Compras.

**Qué debe hacer el sistema:** Permite cerrar manualmente la orden indicando el motivo. Las 50 unidades pendientes se anulan y el compromiso presupuestario correspondiente ($61.666) se libera y vuelve al saldo disponible del centro de costo.

**Resultado esperado:** La orden queda en estado **Cerrada** con saldo anulado y el presupuesto disponible aumenta en el importe liberado.

### Compra urgente sin solicitud previa

**Condición que lo dispara:** Una rotura de stock obliga a comprar el mismo día, sin que exista una solicitud del depósito.

**Quién actúa:** Jefa de Compras.

**Qué debe hacer el sistema:** Permite crear la orden de compra directamente, sin solicitud de origen, pero la marca como **Compra excepcional** y exige siempre aprobación de Gerencia, cualquiera sea el monto.

**Resultado esperado:** La orden queda identificada como excepcional y aparece en el reporte mensual de compras sin solicitud previa.

## Sección 7 — Post-condiciones y resultado final

- La orden de compra OC-2026-0472 quedó en estado **Parcialmente recibida**, con 50 unidades pendientes identificadas.
- El stock del Depósito Central aumentó en 1.150 unidades de Film stretch 500 mm.
- El centro de costo Reposición Temporada Alta 2026 muestra $1.480.000 comprometidos y $2.520.000 disponibles.
- La factura A-0003-00012345 figura en el reporte de cuentas a pagar por $1.418.500 + IVA con vencimiento 11/04/2026, vinculada a la orden y a la recepción.
- Se generó el asiento contable de la compra imputado al centro de costo correspondiente.
- El historial de la orden permite reconstruir quién solicitó, quién emitió, quién aprobó y cuándo, sin consultar ningún archivo externo.
- No se generó todavía ningún pago ni movimiento de tesorería: eso corresponde al proceso de Emisión de Pagos a Proveedores.

## Sección 8 — Criterios de aceptación

| # | Criterio de aceptación | Resultado esperado |
|---|---|---|
| 1 | No es posible emitir una orden de compra sin centro de costo asignado. | Mensaje de error y bloqueo al confirmar. |
| 2 | Una orden por más de $500.000 no puede ser aprobada por la Jefatura de Compras. | Derivación automática a Gerencia. |
| 3 | El precio unitario de la orden se toma automáticamente de la lista de precios vigente del proveedor, sin digitación manual. | Precio precargado y trazable. |
| 4 | Al aprobar la orden, el presupuesto comprometido del centro de costo se actualiza en el mismo momento. | Saldo disponible actualizado al instante. |
| 5 | El sistema permite registrar una recepción parcial sin cerrar la orden de compra. | Orden en Parcialmente recibida con saldo pendiente visible. |
| 6 | Una factura con diferencia de precio mayor al 5 % respecto de la orden no puede confirmarse. | Bloqueo y estado En revisión. |
| 7 | La factura de un proveedor no puede imputarse a un centro de costo distinto al de su orden de origen. | Validación automática y bloqueo. |
| 8 | El rechazo de una orden exige un motivo obligatorio que queda visible en el historial. | Campo obligatorio y registro permanente. |
| 9 | Al cerrar una orden con saldo pendiente, el compromiso presupuestario no ejecutado se libera. | Saldo disponible aumenta en el importe liberado. |

## Anexo A — Documentos actuales (circuito manual, previo a Solop)

| Documento | Tipo | Para qué se usaba |
|---|---|---|
| Control de Compras.xlsx | Excel | Registro manual de todas las órdenes emitidas y su estado de recepción. |
| Formulario de Solicitud de Compra | PDF | Formulario en papel que completaba el depósito y enviaba escaneado a Compras. |
| Modelo de Orden de Compra | Word | Plantilla que se imprimía y se firmaba antes de enviar al proveedor. |
| Presupuesto por centro de costo | Excel | Planilla donde Administración controlaba el saldo disponible a fin de mes. |

## Anexo B — Puntos abiertos habituales en este tipo de implementación

| # | Pregunta o punto a definir |
|---|---|
| 1 | ¿La tolerancia en la conciliación de factura se parametriza global o por proveedor? |
| 2 | ¿Los límites de autorización se definen por usuario, por rol o por centro de costo? |
| 3 | ¿El compromiso presupuestario se puede consultar en un reporte en línea o solo dentro del centro de costo? |
| 4 | ¿Qué ocurre con el compromiso presupuestario si la orden queda aprobada y cruza el cierre de ejercicio? |
| 5 | ¿Quién reemplaza al aprobador de Gerencia durante sus licencias? |

## Ventanas relacionadas

- [Requisición](../requisitions/requisition)
- [Órdenes de Compra](purchase-order)
- [Recepción de Productos](../reception/material-receipt)
- [Conciliación OC-Recepción-Factura](../reception/matching-po-receipt-invoice)
- [Factura de Proveedor](../payable-documents/invoice-vendor)
