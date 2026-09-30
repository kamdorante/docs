---
title: Producción
category: Documentation
star: 9
sticky: 9
article: false
---

# Producción

## Descripción

La ventana **Producción** registra los movimientos de inventario que ocurren cuando un producto se crea a partir de una lista de materiales: descuenta del inventario los componentes consumidos e ingresa el producto terminado. Es la forma directa de producir, sin necesidad de una orden de manufactura previa.

Con esta ventana se resuelve el caso típico de las organizaciones que compran insumos a granel, los transforman en presentaciones menores y luego los consumen o los venden. Cada producción deja rastro en las transacciones de inventario de todos los productos involucrados.

## ¿Cuándo se utiliza?

Se utiliza cuando la organización necesita:

- Fabricar o fraccionar un producto a partir de su lista de materiales.
- Ingresar al inventario el producto terminado y descontar las materias primas en un solo documento.
- Producir sin reserva previa de componentes (a diferencia de la orden de producción).
- Consultar las entradas y salidas generadas por cada producción.

## Acceso

Menú: Gestión de Materiales → **Producción**.

## Pestañas

### Cabecera de Producción

Define la producción a ejecutar.

- **Producto**
  Producto terminado que se va a producir.

- **Cantidad a Producir**
  Unidades del producto terminado que se obtienen.

- **Almacén y Ubicación**
  Lugar donde ingresa el producto terminado y de donde se toman los componentes.

- **Lista de Materiales**
  Lista que se utiliza para calcular los consumos. Si el producto tiene más de una, se recomienda seleccionar la específica.

- **Fecha del Movimiento**
  Fecha en que quedan registrados los movimientos de inventario.

### Línea de Producción

Muestra los movimientos que genera la producción: una línea de entrada por el producto terminado y una línea de salida por cada componente consumido. Las líneas se generan al preparar el documento.

## Acciones disponibles

- **Preparar**
  Calcula las líneas de producción a partir de la lista de materiales. Permite revisar las cantidades antes de completar.

- **Completar**
  Confirma el documento y genera las transacciones de inventario.

## Flujo del proceso

### 1. Preparar los insumos

Comprar y recepcionar las materias primas de manera estándar: [Orden de Compra](../purchase-management/purchase-orders/purchase-order) y [Recepción de Material](../purchase-management/reception/material-receipt). La recepción puede crearse desde la orden de compra. Cada materia prima ingresa al inventario en su propia unidad de medida.

### 2. Crear la producción

Abrir la ventana y registrar un documento nuevo indicando el producto terminado, el almacén y la cantidad a producir. Seleccionar la lista de materiales correspondiente y guardar.

### 3. Preparar y completar

Ejecutar **Preparar** para revisar las líneas que se generarán y luego **Completar**.

### 4. Verificar las transacciones

En el detalle de transacciones de cada producto comprobar los movimientos:

| Producto | Movimiento | Cantidad |
|---|---|---:|
| Botella de desinfectante 1 litro (terminado) | Producción (entrada) | 200 |
| Botella vacía 1 litro (materia prima) | Producción (salida) | 200 |
| Tambor de 200 litros (materia prima) | Producción (salida) | 1 |

## Ejemplo de uso

Se compraron 5 tambores de 200 litros (1.000 litros en total) y 400 botellas vacías:

1. Se recepcionan ambos productos desde sus órdenes de compra.
2. En **Producción** se registra la producción de **200** botellas de desinfectante de 1 litro con su lista de materiales.
3. Se ejecuta **Preparar** y **Completar**.
4. Las transacciones muestran: entrada de 200 botellas terminadas, salida de 200 botellas vacías (quedan 200 en existencia) y salida de 1 tambor (quedan 4).
5. Las botellas terminadas pueden entregarse con un [Inventario de Uso Interno](internal-use-inventory) o venderse con el proceso de venta estándar.

## Consideraciones importantes

- La producción también puede realizarse con una **orden de producción**, que reserva los componentes y revierte la reserva al desproducir. La ventana de Producción no reserva: consume directamente.
- Si no se indica **merma**, los consumos son exactos según la lista de materiales.
- La **lista de materiales** debe estar vigente en la fecha de la producción y haber sido verificada.
- Los componentes deben tener **existencia suficiente** en el almacén indicado.
- Todo el movimiento queda trazable en el **Detalle de Transacciones del Producto** y en los reportes de inventario.

## Ventanas relacionadas

- [Lista de Materiales y Fórmula](../production-management/engineering/bom-and-formula)
- [Inventario de Uso Interno](internal-use-inventory)
- [Uso Interno del Producto](warehouse-operations/product-internal-use)
- [Orden de Compra](../purchase-management/purchase-orders/purchase-order)
- [Recepción de Material](../purchase-management/reception/material-receipt)
- [Inventario Analítico](product-reports/analytical-inventory)
