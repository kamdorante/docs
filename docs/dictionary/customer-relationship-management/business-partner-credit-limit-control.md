---
title: Control de Límite de Crédito del Socio del Negocio
category: Documentation
star: 9
sticky: 9
article: false
---

# Control de Límite de Crédito del Socio del Negocio

## Descripción

El **Control de Límite de Crédito** es la funcionalidad que evita que un cliente acumule más deuda de la que la empresa está dispuesta a aceptar. Se configura en la pestaña **Cliente** de la ventana **Socio del Negocio** con dos campos: **Límite de Crédito** y **Estado del Crédito**. Se aplica automáticamente al completar documentos como la orden de venta y la entrega.

El punto clave para entender el control es que **no compara el Crédito Usado con el límite**, sino el **Saldo Actual** del socio. El Saldo Actual no solo suma las facturas abiertas: también resta los **cobros que todavía no se asignaron a ninguna factura**. Por eso un cliente puede mostrar un Crédito Usado mayor al límite y, aun así, seguir en **Crédito Correcto** y no recibir ningún bloqueo.

## ¿Cuándo se utiliza?

Se utiliza cuando la organización necesita:

- Definir cuánto puede deber como máximo un cliente que compra a crédito.
- Bloquear órdenes de venta o entregas de clientes que superan su límite.
- Entender por qué un cliente superó el límite y el sistema **no** lo bloqueó.
- Entender por qué un cliente en **Crédito Correcto** sí quedó bloqueado al entregar mercadería.
- Suspender manualmente la operación a crédito de un cliente.

## Acceso

Menú: Relación con Socios del Negocio → Socio del Negocio → pestaña **Cliente**

## Pestañas

### Cliente

Pestaña donde se definen las condiciones comerciales del socio como cliente. Los campos que intervienen en el control de crédito son:

- **Límite de Crédito**
  Monto máximo que la empresa acepta que el cliente deba, expresado en la **moneda de la compañía**. Es la línea que no se debe superar.

- **Estado del Crédito**
  Indica cómo está el cliente respecto de su límite y define si el sistema lo controla. Algunos estados los elige una persona y otros los calcula el sistema (ver [Estados del crédito](#estados-del-credito)).

- **Crédito Usado**
  Lo que el cliente debe en **facturas de venta abiertas**. Es un dato **informativo**: el sistema **no lo compara** con el límite.

- **Saldo Actual**
  Lo que el socio debe en total: facturas abiertas de venta y de compra **menos los cobros y pagos que todavía no están asignados** a ninguna factura. **Es el dato que se compara con el límite.** Puede ser negativo cuando los cobros sin asignar superan a las facturas abiertas.

- **Valor Total Transacciones**
  Total histórico facturado al cliente. Es solo informativo y no interviene en el control.

### Grupo de Socio del Negocio (ventana relacionada)

En la ventana **Grupo de Socio del Negocio** se define el **% de Crédito en Verificación** (por ejemplo, 90). Cuando el Saldo Actual supera ese porcentaje del límite, el cliente pasa a **Crédito Verificación** como aviso previo.

## Cómo calcula el sistema

### Qué se compara con el límite

```
Saldo Actual = Facturas abiertas (venta y compra)
             − Cobros y pagos sin asignar

Control al completar una Orden de Venta:
    Saldo Actual + Total de la orden            >  Límite de Crédito  →  bloquea

Control al completar una Entrega:
    Saldo Actual + Monto entregado no facturado >  Límite de Crédito  →  bloquea
```

- Todos los importes se convierten a la **moneda de la compañía** con el tipo de cambio de la fecha de cada documento. Una factura en dólares se suma al saldo convertida a la moneda local.
- El saldo suma **todas las organizaciones** de la compañía.
- El **Monto entregado no facturado** no se guarda en ningún campo de la ventana: se calcula solo en el momento de completar la entrega y aparece en el mensaje de error si la entrega se bloquea.

### Qué revisa cada documento

| Documento | Cliente en Crédito Detenido | Cliente en Crédito Retenido | Qué se compara con el límite |
|---|---|---|---|
| Orden de Venta | Bloquea | Bloquea | Saldo Actual + total de la orden |
| Entrega (remito) | Bloquea | Bloquea | Saldo Actual + monto entregado y no facturado |
| Factura de venta | Bloquea | **No bloquea** | Ningún monto: solo revisa el estado |
| Pago a proveedor | Bloquea | Bloquea | Ningún monto: solo revisa el estado |

- Si el cliente está en **Sin Verificación de Crédito**, ningún documento se controla.
- **La factura no vuelve a controlar el límite.** Si la orden ya pasó el control, la factura se completa aunque con ella se supere el límite.
- La orden de venta controla **solo su propio total**: no suma otras órdenes completadas que todavía no se facturaron.

## Estados del crédito

| Estado | Quién lo asigna | Efecto |
|---|---|---|
| **Sin Verificación de Crédito** | Usuario | El cliente no se controla. Equivale a no tener límite. |
| **Crédito Correcto** | Sistema | El Saldo Actual está por debajo del % de verificación del límite. |
| **Crédito Verificación** | Sistema | El Saldo Actual superó el % de verificación, pero no el límite. Solo avisa. |
| **Crédito Retenido** | Sistema | El Saldo Actual superó el límite. Bloquea órdenes y entregas. |
| **Crédito Detenido** | Usuario | Bloquea órdenes, entregas y facturas, sin importar el saldo. |

- Los estados que calcula el sistema se recalculan con el **Saldo Actual** al completar una factura, un cobro o pago, o una asignación. **Completar una orden o una entrega no recalcula el estado.**
- El sistema **nunca** cambia por su cuenta un cliente que está en **Sin Verificación de Crédito** o en **Crédito Detenido**.

## Flujo del proceso

### 1. Configurar el límite

En **Socio del Negocio → pestaña Cliente**, cargar el **Límite de Crédito** en la moneda de la compañía y dejar el **Estado del Crédito** en **Crédito Correcto**. A los clientes que no deben controlarse se les asigna **Sin Verificación de Crédito**.

### 2. Definir el aviso previo

En la ventana **Grupo de Socio del Negocio**, definir el **% de Crédito en Verificación** (por ejemplo, 90).

### 3. Mantener los cobros asignados

Cada cobro debe quedar **asignado a las facturas que cancela**, ya sea al registrarlo o con la ventana [Asignación de Pagos](../balance-management/allocation/payment-allocation). Un cobro sin asignar se descuenta del Saldo Actual como si fuera un crédito a favor del cliente y le da margen adicional.

### 4. Operar normalmente

Al completar una **Orden de Venta** o una **Entrega**, el sistema hace el cálculo y, si se supera el límite, muestra un mensaje de error con los importes que comparó.

### 5. Revisar periódicamente

Revisar los clientes con límite cargado comparando su **Saldo Actual** contra el **Crédito Usado**. Si el Saldo Actual es mucho menor, revisar los cobros sin asignar del cliente con el reporte [Pagos sin Asignar](../balance-management/allocation/unallocated-payments).

## Ejemplo de uso

Un cliente tiene un **Límite de Crédito de 240.000** (moneda local) y compra en dólares.

1. El cliente tiene registrados varios cobros por un total aproximado de **USD 18.000** que **nunca se asignaron** a sus facturas.
2. En la ventana se ve **Crédito Usado: 371.000** (facturas abiertas), pero **Saldo Actual: −443.000**, porque los cobros sin asignar se descuentan.
3. Se completan dos órdenes de venta. Para cada una, el sistema calcula **Saldo Actual + total de la orden**. Como el saldo es negativo, el resultado queda muy por debajo de 240.000 y las dos órdenes se completan.
4. Las órdenes se facturan. El Crédito Usado sube por encima del límite, pero la factura no controla el límite y el Saldo Actual sigue negativo.
5. El **Estado del Crédito** se recalcula con el Saldo Actual y sigue en **Crédito Correcto**.

**Resultado:** el cliente superó el límite según el Crédito Usado, pero para el sistema sigue teniendo saldo a favor. **No es un error de cálculo.** Para que el control vuelva a funcionar:

1. Revisar los cobros sin asignar del cliente en el reporte **Pagos sin Asignar**.
2. Asignar cada cobro a la factura que cancela desde **Asignación de Pagos**.
3. Al asignarlos, el Saldo Actual sube hasta reflejar la deuda real y el estado se recalcula. Si la deuda supera el límite, el cliente pasa a **Crédito Retenido** y las próximas órdenes y entregas se bloquean.

## Preguntas frecuentes

### El cliente superó su límite de crédito y el sistema no bloqueó la orden ni la factura. ¿Por qué?

Porque el sistema no compara el **Crédito Usado**, sino el **Saldo Actual**. Las causas más comunes son:

- **Hay cobros sin asignar.** Bajan el Saldo Actual (incluso lo pueden dejar negativo) y el cliente parece tener margen.
- **Se completaron varias órdenes antes de facturar.** Cada orden se controla por separado contra el saldo de ese momento; no se suman entre sí.
- **El límite se superó al facturar.** La factura no controla el límite, salvo que el cliente esté en **Crédito Detenido**.

Revisar en la pestaña **Cliente** el Saldo Actual junto al Crédito Usado: si el Saldo Actual es mucho menor, la causa son los cobros sin asignar.

### El Crédito Usado es mayor que el límite pero el Estado del Crédito dice "Crédito Correcto". ¿Está mal?

No. El estado se calcula con el **Saldo Actual**, no con el Crédito Usado. Si hay cobros sin asignar, el Saldo Actual puede estar por debajo del límite (o ser negativo) y el estado se mantiene en **Crédito Correcto**.

### ¿Cómo hago para que el sistema bloquee a un cliente que ya superó el límite?

Hay dos caminos:

1. **Asignar los cobros pendientes** del cliente a sus facturas. El Saldo Actual pasa a reflejar la deuda real y, si supera el límite, el sistema pone al cliente en **Crédito Retenido** automáticamente.
2. **Cambiar manualmente** el Estado del Crédito a **Crédito Detenido**. Bloquea órdenes, entregas y facturas hasta que un usuario lo vuelva a cambiar.

### El cliente está en "Crédito Correcto" y no me deja completar una entrega. ¿Por qué?

Porque la entrega suma al Saldo Actual el **monto entregado y todavía no facturado** de las órdenes del cliente (por ejemplo, mercadería en consignación). Ese monto no se ve en la ventana del socio: aparece en el mensaje de error. Facturar o depurar las entregas pendientes reduce ese monto.

### ¿Por qué el Saldo Actual no coincide con el reporte de Estado de Cuenta Corriente?

Porque el Saldo Actual suma **todas las organizaciones**, convierte todo a la **moneda de la compañía** e incluye documentos de compra y venta. Un reporte filtrado por una organización o una moneda no tiene por qué coincidir.

## Consideraciones importantes

- El **Límite de Crédito** se expresa en la **moneda de la compañía**, aunque el cliente compre en otra moneda.
- El campo que se compara con el límite es el **Saldo Actual**. El **Crédito Usado** es solo informativo.
- Un **cobro sin asignar** funciona como saldo a favor del cliente: le da margen de crédito aunque las facturas sigan abiertas. Mantener los cobros asignados es necesario para que el control sea confiable.
- La **factura de venta** no controla el límite: si se quiere frenar la facturación, el cliente debe estar en **Crédito Detenido**.
- La orden de venta controla solo su propio total; varias órdenes completadas antes de facturar pueden superar el límite en conjunto.
- Completar una orden o una entrega **no recalcula** el Estado del Crédito; se recalcula al completar facturas, cobros, pagos o asignaciones.
- Pasar un cliente a **Sin Verificación de Crédito** apaga todos los controles. Es una solución provisoria, no se recomienda dejarla de forma permanente.

## Ventanas relacionadas

- [Cliente](../sales-management/sales-management-crm/customer)
- [Orden de Venta](../sales-management/sales-orders/sales-order)
- [Entregas (Cliente)](../sales-management/shipments/shipment-customer)
- [Documentos por Cobrar](../sales-management/sales-invoices/invoice-customer)
- [Pago/Cobro](../balance-management/payments-and-receipts/payment)
- [Asignación de Pagos](../balance-management/allocation/payment-allocation)
- [Pagos sin Asignar](../balance-management/allocation/unallocated-payments)
- [Estado de Cuenta Corriente](../balance-management/payments-and-receipts/account-status)
