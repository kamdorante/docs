---
title: Expediente de Importación
category: Documentation
star: 9
sticky: 9
article: false
---

# Expediente de Importación

## Descripción

La ventana **Expediente de Importación** centraliza la gestión completa de una operación de comercio exterior (importación). Funciona como contenedor lógico para todos los documentos y costos asociados a un pedido internacional: orden de compra al proveedor, recepción del material (incluyendo almacén en tránsito), facturas de proveedor, costos adicionales (flete, seguro, gastos bancarios), impuestos de nacionalización (arancel, tasa de aduana, tasa consular) y pagos o anticipos.

A partir del expediente, el sistema distribuye los costos adicionales e impuestos entre las líneas del pedido, lo que permite obtener el **costo real actualizado** de cada producto importado y generar reportes con el detalle por elemento de costo (material, flete, seguro, arancel, aduana, etc.).

## ¿Cuándo se utiliza?

Se utiliza cuando la organización necesita:

- Registrar y dar seguimiento a una operación completa de importación.
- Vincular una o más órdenes de compra internacionales a un mismo expediente.
- Controlar la recepción de mercadería en almacén de tránsito mientras el material está embarcado.
- Incorporar al costo del producto los gastos adicionales (flete, seguro, gastos aduaneros) y los impuestos de nacionalización.
- Distribuir impuestos por línea (arancel, tasa de aduana, tasa consular) según cada producto del expediente.
- Generar reportes de cierre de la importación con el detalle de costos por elemento.

## Acceso

Menú: **Gestión de Compras → Importaciones → Expediente de Importación**

Desde el expediente se accede a las ventanas y procesos asociados:

1. **Orden de Compra** con referencia al expediente.
2. **Recepción (Cliente/Proveedor)** para ingreso en almacén en tránsito o almacén definitivo.
3. **Factura de Proveedor** para costos adicionales e impuestos de nacionalización.
4. **Generar Impuestos de Importación / Exportación** como proceso de declaración.
5. **Reportes de Costos del Expediente**.

## Pestañas

### Expediente

Pestaña principal con los datos del expediente y su estado. La información se organiza en:

- **Número del Expediente**
  Número interno que identifica la operación.

- **Tipo de Documento**
  Tipo de documento del expediente; controla la numeración y el comportamiento de los documentos asociados.

- **Moneda**
  Moneda en la que se consolidan los costos. Habitualmente se define en moneda local y las operaciones en moneda extranjera se convierten al tipo de cambio del expediente.

- **Tipo de Conversión**
  Tasa de cambio utilizada para convertir la moneda extranjera a moneda local; se preserva en pagos y anticipos asociados al expediente para que todos los documentos operen con la misma tasa.

- **Proyecto**
  Proyecto asociado al expediente (opcional). Permite cruzar la información con la contabilidad analítica.

- **Estado del Documento**
  Estado del expediente (Borrador, Completo). Solo los expedientes en estado *Completo* son seleccionables desde las órdenes de compra y los procesos de distribución de costos.

### Órdenes de Compra

Órdenes de compra vinculadas al expediente. Un expediente puede contener una o varias órdenes de compra de uno o varios proveedores. Los documentos posteriores (recepción, factura) quedan relacionados al expediente a través de la orden.

### Recepciones

Recepciones de mercadería asociadas al expediente. Permite diferenciar entre:

- **Recepción en Almacén de Tránsito**
  Ingreso contable del material cuando se embarca pero aún no llegó a destino. Refleja inventario *en tránsito* que no está disponible para la venta.

- **Recepción en Almacén Definitivo**
  Ingreso final cuando el material llega físicamente. Se realiza como un movimiento de inventario desde el almacén de tránsito al almacén de destino.

### Facturas

Facturas de proveedor asociadas al expediente, incluyendo las del material y las de costos adicionales (flete, seguro, gastos bancarios, aduana).

### Impuestos del Expediente

Impuestos de nacionalización (arancel, tasa de aduana, tasa consular) asociados al expediente, con su monto base, total de impuesto y estado de distribución.

### Pagos / Anticipos

Pagos y anticipos realizados contra la orden de compra del expediente. Al seleccionar la orden como origen, el pago se marca como anticipo. Los pagos conservan el tipo de conversión del expediente para mantener una única tasa en toda la operación.

## Acciones disponibles

- **Completar**
  Finaliza el expediente, habilitándolo para ser referenciado desde órdenes de compra, recepciones, facturas y procesos de distribución.

- **Reactivar**
  Retorna el expediente a borrador para corregir datos. La orden de compra asociada también puede reactivarse; las facturas ya emitidas mantienen sus datos aunque se modifique la orden.

- **Generar Impuestos de Importación/Exportación**
  Proceso que genera la factura de impuestos (ajuste) asociada al expediente. Se usa para declarar los impuestos de nacionalización, ya sea como impuesto único (IVA general) o como impuestos distribuibles por producto (arancel, tasa de aduana, tasa consular).

- **Distribuir Impuesto por Producto**
  Desde la factura de ajuste generada, asigna cada impuesto a las líneas del expediente según una base de distribución (por línea, por monto, por cantidad).

- **Generar Reporte de Costos**
  Emite el detalle de costos del expediente con apertura por elemento (material, flete, seguro, arancel, tasa aduana, tasa consular). Existe un reporte resumido por tipo de costo y otro detallado por elemento.

## Flujo del proceso

### 1. Crear el expediente

Abrir la ventana **Expediente de Importación** y crear un nuevo registro con tipo de documento, moneda, tipo de conversión y proyecto. Completar el expediente para habilitarlo.

### 2. Registrar la orden de compra

Crear la orden de compra al proveedor internacional, asociándola al expediente. La orden se vincula automáticamente y queda visible en la pestaña *Órdenes de Compra* del expediente.

### 3. Registrar el anticipo al proveedor (si corresponde)

Desde el módulo de pagos, crear un pago seleccionando la orden de compra. El sistema marca el pago como anticipo y conserva el tipo de conversión del expediente para mantener la misma tasa de cambio en toda la operación.

### 4. Recepcionar en almacén de tránsito

Cuando el material se embarca, generar la recepción contra el almacén *En Tránsito*. Esto incorpora el material al inventario como stock en tránsito (no disponible para la venta) y registra el movimiento contable correspondiente.

### 5. Recepción final al llegar el material

Al arribo físico, hacer el movimiento de inventario desde el almacén en tránsito al almacén definitivo. A partir de ese momento el stock queda disponible para operación.

### 6. Registrar la factura del material

Capturar la factura del proveedor asociándola a la orden de compra o a la recepción. La factura se vincula al expediente automáticamente a través de la orden.

::: tip El orden importa: primero el costo material, después los distribuibles
La factura del **proveedor internacional** (la que aporta el **costo material**) debe registrarse y completarse **antes** de distribuir cualquier documento relacionado (flete, seguro, arancel, tasa aduana, tasa consular, gastos bancarios). Además, esa factura tiene que quedar **matcheada** con la recepción de la mercadería (*Match Invoice* entre la línea de factura y la línea de recepción); sin ese match el costo material **no aparece** en los reportes del expediente.

Si un documento relacionado se registra o distribuye **antes** de que el costo material esté en su lugar, ese documento **no se distribuye correctamente** y hay que **anularlo y volver a registrarlo** una vez que la factura del material esté completada y matcheada. La secuencia funcional correcta es:

1. Recepción de la mercadería.
2. Factura del proveedor internacional generada **sobre la recepción** (queda con Match Invoice contra la línea de recepción).
3. Recién ahí, incorporar los documentos relacionados (paso 7) y distribuirlos por elemento / tipo de costo.
:::

### 7. Incorporar costos adicionales

Registrar las facturas de costos adicionales (flete, seguro, gastos bancarios) asociadas al expediente. Cada factura se ingresa como un documento de proveedor referenciando el expediente.

### 8. Generar impuestos de nacionalización

Ejecutar **Generar Impuestos de Importación/Exportación** por cada planilla de impuestos. Para impuestos que aplican a toda la operación (por ejemplo, IVA), se genera y completa directamente. Para impuestos que se distribuyen por producto (arancel, tasa de aduana, tasa consular), se genera en estado *Preparar* y luego se distribuye.

### 9. Distribuir impuestos por producto

Desde la factura de ajuste en estado *Preparar*, seleccionar cada línea de impuesto y ejecutar **Distribuir**. Indicar el elemento de costo (Arancel, Tasa Aduana, Tasa Consular) y la base de distribución (por línea, por monto, por cantidad). Completar la factura cuando todos los impuestos estén distribuidos.

### 10. Generar los reportes de cierre

Desde el expediente, ejecutar el reporte de costos. El reporte muestra, por cada producto, el costo del material y cada componente (flete, seguro, arancel, aduana, consular). Para vistas resumidas, existe un segundo reporte por tipo de costo.

## Ejemplo de uso

Una organización importa un lote de producto desde el exterior con pago anticipado:

1. Crear el expediente *IMP-000062* con moneda local y tipo de conversión del día del embarque. Completar.
2. Crear la orden de compra al proveedor internacional asociándola al expediente y completarla.
3. Registrar un anticipo de 50% al proveedor desde el módulo de pagos seleccionando la orden; el pago conserva el tipo de conversión del expediente.
4. Al embarque, recepcionar el material en el almacén *En Tránsito*.
5. Al arribo físico, mover el inventario desde *En Tránsito* al almacén definitivo.
6. Registrar la factura del proveedor (material) contra la recepción.
7. Ingresar las facturas de flete, seguro y gastos bancarios referenciando el expediente.
8. Ejecutar **Generar Impuestos de Importación/Exportación** para la planilla de IVA; completar la factura generada.
9. Ejecutar nuevamente para la planilla de impuestos distribuibles (arancel + tasa aduana + tasa consular); dejar en *Preparar* y distribuir cada impuesto por línea del expediente con el elemento de costo correspondiente.
10. Completar la factura de distribución y generar el **Reporte de Costos del Expediente** para ver material y cada elemento de costo detallado por producto.

## Consideraciones importantes

- El expediente debe estar en estado **Completo** para ser seleccionable desde la orden de compra y los procesos de distribución de costos.
- Una orden de compra puede referirse a un único expediente, pero un expediente puede contener **varias órdenes de compra**.
- La **recepción en almacén de tránsito** es clave para reflejar inventario embarcado sin disponibilizarlo para la venta y para registrar los movimientos contables correspondientes.
- El **tipo de conversión** del expediente se preserva en los pagos y anticipos asociados para que todas las operaciones trabajen con la misma tasa de cambio; las diferencias de cambio se reconocen contra esa tasa única.
- Los impuestos de nacionalización que **aplican a toda la operación** (por ejemplo IVA) se generan y completan directamente. Los que se **distribuyen por producto** (arancel, tasa de aduana, tasa consular) deben dejarse en *Preparar* para que el usuario los distribuya por línea antes de completar.
- La distribución de impuestos puede hacerse por línea, por monto o por cantidad. Elegir el criterio que refleje mejor la realidad fiscal del impuesto.
- El **reporte de costos del expediente** depende de que los documentos estén completos y con asiento de costo generado. Si algún documento no está completo o no tiene asiento, el reporte no reflejará correctamente la operación.
- Los **pagos** asociados al expediente no afectan el costo del material; quedan como referencia para trazabilidad financiera y para consultar pagos relacionados desde el expediente.
- Si se necesita **reactivar** una orden de compra vinculada al expediente, es posible, pero las facturas ya emitidas sobre esa orden no se modifican automáticamente: deben revisarse una a una.
- Cuando la cantidad recibida difiere de la cantidad ordenada, el sistema permite ajustar mediante devolución o movimiento de inventario según corresponda; no se modifica la orden original automáticamente.

## Preguntas frecuentes

### ¿Qué se hace cuando la mercadería aún está en tránsito y faltan facturas por cargar?

El expediente puede mantenerse abierto y los reportes mostrarán un **costo parcial** con los costos ya imputados. Una vez que llegan todas las facturas, marcar el expediente como cerrado para fijar el costo definitivo.

### ¿Qué pasa con el IVA de las facturas de costos adicionales?

El IVA **no afecta el expediente**: se trata como impuesto recuperable, no como costo del producto. Solo se distribuyen los importes netos. La factura del IVA se registra contablemente pero no impacta el costo del inventario.

### ¿Cómo se manejan los aranceles que llegan en un período posterior?

Reabrir el expediente, cargar la nueva factura como costo adicional referenciando el expediente, distribuirla por línea y volver a cerrar. El sistema actualiza el costo unitario; las entregas posteriores tomarán el costo actualizado. El histórico de costo de las entregas previas queda con el valor que tenían en ese momento.

### ¿Por qué los reportes muestran el costo en moneda local y no en la moneda de la factura?

Los costos se calculan siempre en la **moneda del esquema contable** (moneda funcional). Las facturas en moneda extranjera se convierten al tipo de cambio del documento. Si la organización requiere ver el costo en otra moneda, se puede solicitar como ampliación funcional.

### ¿Cómo se sabe si un costo afecta o no al expediente?

Cuando se carga una factura, el campo **Expediente** debe estar completo y la línea debe estar configurada como costo adicional. Las líneas que no afectan al expediente (por ejemplo, líneas de IVA o líneas de servicio no relacionadas con la importación) no se distribuyen.

### ¿Qué pasa si se vendieron unidades antes de cargar todos los costos del expediente?

El costo de venta se calculó con el costo conocido al momento de la entrega. Si después se cargan más costos, el costo unitario del expediente se actualiza, pero las entregas previas mantienen el costo histórico. El sistema permite consultar el costo final actualizado por unidad para tomar decisiones comerciales (ajuste de precios futuros, análisis de rentabilidad).

## Ventanas relacionadas

- [Orden de Compra](../purchase-orders/purchase-order)
- [Recepción de Productos](../reception/material-receipt)
- [Factura (Proveedor)](../payable-documents/invoice-vendor)
- [Reportes de Costos del Expediente de Importación](import-cost-reports)
