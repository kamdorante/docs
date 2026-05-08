---
title: Reportes de Costos del Expediente de Importación
category: Documentation
star: 9
sticky: 9
article: false
---

# Reportes de Costos del Expediente de Importación

## Descripción

Los **Reportes de Costos del Expediente de Importación** consolidan el costo final de cada producto importado mostrando la apertura por elemento de costo (material, flete, seguro, arancel, tasa de aduana, tasa consular, gastos bancarios, etc.) que aplica al expediente. Permiten validar la correcta distribución de los costos adicionales entre las líneas del expediente, conocer el costo unitario final del producto puesto en almacén y dar seguimiento durante la operación cuando la mercadería aún está en tránsito.

Existen dos reportes complementarios:

- **Reporte por Tipo de Costo**: vista resumida que separa material y costos adicionales totales del expediente.
- **Reporte por Elemento de Costo**: vista detallada con apertura por cada elemento (flete, seguro, arancel, etc.) por línea del expediente.

Los reportes se calculan en la **moneda del esquema contable** (moneda funcional). Las facturas en moneda extranjera se convierten al tipo de cambio del documento.

## ¿Cuándo se utiliza?

Se utiliza cuando la organización necesita:

- Validar el costo final de los productos importados antes de cerrar el expediente.
- Conocer la apertura del costo unitario por elemento (cuánto del costo final corresponde al material, al flete, al arancel, etc.).
- Entregar informes de cierre de importación al área comercial para definir precios de venta.
- Diagnosticar diferencias entre lo presupuestado y lo realmente ejecutado en una importación.
- Consultar el costo parcial cuando la mercadería aún está en tránsito y faltan facturas adicionales por imputar.
- Reabrir un expediente para incorporar un costo retroactivo (por ejemplo, aranceles que se cobran en un período posterior).

## Acceso

Los reportes se ejecutan desde el propio **Expediente de Importación**:

1. **Reporte por Tipo de Costo:** abrir el expediente y ejecutar la acción correspondiente al reporte resumido.
2. **Reporte por Elemento de Costo:** abrir el expediente y ejecutar la acción del reporte detallado con apertura por elemento.

## Pestañas

### Reporte por Tipo de Costo (vista resumida)

Vista de costo agregado por tipo. Para cada producto del expediente muestra:

- **Producto**
  Producto importado.

- **Cantidad**
  Cantidad recibida en el expediente.

- **Costo del Material**
  Precio de origen del producto (precio FOB) convertido a moneda funcional usando el tipo de cambio de la factura.

- **Costos Adicionales**
  Suma consolidada de flete, seguro, gastos bancarios, aranceles, tasa de aduana, tasa consular y demás costos imputados al expediente.

- **Costo Total**
  Suma de material + costos adicionales para el producto.

- **Costo Unitario Final**
  Costo total dividido por la cantidad. Es el valor con el que el producto queda valorizado en inventario.

### Reporte por Elemento de Costo (vista detallada)

Vista con apertura por cada elemento de costo configurado. Para cada producto del expediente, muestra columnas separadas para cada elemento. Los campos típicos incluyen:

- **Producto**
  Producto importado.

- **Cantidad**
  Cantidad recibida.

- **Precio Origen (FOB)**
  Precio del proveedor en moneda extranjera convertido a moneda funcional.

- **Flete**
  Costo de flete prorrateado al producto.

- **Seguro**
  Costo de seguro prorrateado.

- **Arancel**
  Arancel de importación distribuido por línea según el criterio definido.

- **Tasa de Aduana**
  Tasa aduanera distribuida por línea.

- **Tasa Consular**
  Tasa consular distribuida por línea.

- **Otros Elementos Configurados**
  Cualquier elemento adicional definido en el catálogo de elementos de costo (gastos bancarios, comisiones, etc.).

- **Costo Final Unitario**
  Suma de todos los elementos dividida por la cantidad.

## Acciones disponibles

- **Generar Reporte por Tipo de Costo**
  Emite la vista resumida con material y adicionales agregados.

- **Generar Reporte por Elemento de Costo**
  Emite la vista detallada con apertura por elemento.

- **Exportar a Excel**
  Descarga el reporte para análisis externo o entrega a otras áreas.

- **Marcar Expediente como Cerrado**
  Acción complementaria que permite indicar al sistema que ya no se esperan más costos en el expediente. Mientras esté abierto, los reportes muestran un costo parcial.

- **Reabrir Expediente**
  Permite incorporar nuevos costos a un expediente previamente cerrado (por ejemplo, una factura adicional que llega meses después).

## Flujo del proceso

### 1. Tener todos los documentos imputados

Antes de generar los reportes, confirmar que el expediente tiene todos los documentos completos: orden de compra, recepción, factura del material, facturas de costos adicionales (flete, seguro, gastos bancarios) e impuestos de nacionalización (arancel, tasa de aduana, tasa consular) distribuidos por línea.

### 2. Generar el reporte resumido

Desde el expediente, ejecutar **Reporte por Tipo de Costo**. El reporte presenta una fila por producto con su costo de material, total de costos adicionales y costo total final. Es la vista habitual para el área comercial.

### 3. Generar el reporte detallado

Ejecutar **Reporte por Elemento de Costo** cuando se requiere ver la apertura por concepto. El reporte permite analizar qué porción del costo final corresponde a cada elemento (cuánto al flete, cuánto al arancel, etc.).

### 4. Validar contra el costo de inventario

El **Costo Unitario Final** del reporte es el valor con el que el producto queda valorizado en inventario al recibirse. Comparar con el saldo del balance contable de la cuenta de mercadería para confirmar consistencia.

### 5. Entregar al área comercial

Exportar el reporte a Excel y entregar al área comercial para definir precios de venta y márgenes esperados.

### 6. Cerrar el expediente

Cuando todos los costos están imputados, marcar el expediente como **Cerrado**. Esto deja claro al sistema que el costo final es definitivo y evita ajustes posteriores no controlados.

### 7. Reabrir si llega un costo retroactivo

Si meses después llega una factura adicional que afecta el expediente (por ejemplo, aranceles diferidos que cobran al año siguiente), ejecutar **Reabrir Expediente**, agregar la factura, redistribuir los nuevos importes por línea y volver a cerrar.

## Ejemplo de uso

Validar el costo final de un expediente al cerrar la operación:

1. Confirmar que el expediente tiene la orden de compra, la recepción, la factura del proveedor del material y las facturas de flete, seguro, arancel, tasa de aduana y tasa consular distribuidas por línea.
2. Ejecutar el **Reporte por Tipo de Costo**. Para cada producto se ve:
   - Costo del Material: 1.000 (en moneda funcional).
   - Costos Adicionales: 250.
   - Costo Total: 1.250.
   - Costo Unitario Final: 1.250 / 10 unidades = 125 por unidad.
3. Para una vista detallada, ejecutar el **Reporte por Elemento de Costo**. Aparece la apertura: precio origen 100, flete 8, seguro 2, arancel 12, tasa aduana 2, tasa consular 1. Total 125.
4. Comparar contra el balance contable de la cuenta de mercadería para confirmar que el costo del inventario coincide con el reporte.
5. Exportar a Excel y enviar al área comercial para definir el precio de venta.
6. Marcar el expediente como cerrado.
7. Si tres meses después llega una factura de arancel diferido por unidad, reabrir el expediente, agregar la factura como un costo adicional, distribuirlo entre las líneas y cerrar nuevamente. El costo final se actualiza retroactivamente.

## Consideraciones importantes

- Los reportes se calculan en la **moneda del esquema contable** (moneda funcional). Si la organización opera en moneda local pero compra en dólares, el costo final aparece en moneda local convertida con el tipo de cambio de cada factura.
- El **IVA** de las facturas no afecta el expediente: se trata como impuesto recuperable, no como costo del producto. Solo se distribuyen los importes netos.
- Mientras el expediente está **abierto** (mercadería en tránsito o costos parciales), los reportes muestran un **costo parcial**. Marcar el expediente como cerrado cuando todos los costos estén imputados deja claro que el valor es definitivo.
- La **distribución de costos** por línea sigue el criterio configurado en cada factura de ajuste: por línea (importe igual por cada producto), por monto (proporcional al precio) o por cantidad (proporcional a las unidades). Elegir el criterio que mejor refleje la realidad económica del impuesto o cargo.
- Los **aranceles e impuestos por producto** dependen de la tasa aplicable a cada artículo. Si la organización quiere autocalcular los impuestos a partir de las tasas configuradas por producto, se puede habilitar el cálculo automático para conocer el costo estimado antes del despacho.
- Cuando llega una **factura retroactiva** (por ejemplo, aranceles del año siguiente que aplican a importaciones previas), reabrir el expediente, imputar la factura y redistribuirla. El sistema actualiza el costo unitario; las entregas posteriores tomarán el costo actualizado.
- El sistema mantiene el **histórico de costos por transacción**: cada movimiento de inventario conserva el costo aplicado en su momento, lo que permite calcular correctamente el costo de venta de las unidades vendidas antes y después del ajuste.
- Si se necesita el reporte en **dólares** además de la moneda funcional, puede solicitarse como ampliación funcional. El estándar opera en moneda del esquema contable.
- Los reportes dependen de que los **asientos de costo** estén generados. Si un documento está completo pero su asiento no se procesó, los importes pueden no aparecer correctamente. Verificar el procesador de cola contable cuando aplique.
- La función de **reapertura** del expediente debe usarse con criterio: cambia el costo histórico y puede afectar los asientos de las entregas ya realizadas. Coordinar con el área contable antes de reabrir expedientes de períodos cerrados.

## Ventanas relacionadas

- [Expediente de Importación](import-expedient)
- [Recepción de Productos](../reception/material-receipt)
- [Aplicar Costo de Desembarque](../reception/apply-landed-cost)
- [Factura (Proveedor)](../payable-documents/invoice-vendor)
