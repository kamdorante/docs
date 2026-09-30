---
title: Inventario de Uso Interno
category: Documentation
star: 9
sticky: 9
article: false
---

# Inventario de Uso Interno

## Descripción

La ventana **Inventario de Uso Interno** registra la salida de productos del almacén para consumo propio de la organización, imputando el costo a un **cargo** contable. No genera venta ni factura: es la forma de llevar un producto a costo, por ejemplo cuando se entregan materiales a un cliente dentro de un servicio con materiales incluidos.

Es el cierre natural de la producción por lista de materiales: el producto terminado (o cualquier producto en existencia) sale del inventario contra el cargo definido. Para consumos puntuales de un solo producto existe una versión rápida: [Uso Interno del Producto](warehouse-operations/product-internal-use).

## ¿Cuándo se utiliza?

Se utiliza cuando la organización necesita:

- Entregar materiales o insumos que no se facturan por separado.
- Registrar consumo interno, muestras, roturas o mermas con imputación a un cargo.
- Dar salida a productos ya transformados por una [Producción](production).
- Registrar varios productos de un mismo consumo en un único documento.

## Acceso

Menú: Gestión de Materiales → **Inventario de Uso Interno**.

## Pestañas

### Uso Interno

Cabecera del documento.

- **Almacén**
  Almacén del que sale el producto.

- **Tipo de Documento**
  Tipo de documento de uso interno. Debe tener un cargo asociado para que el documento pueda completarse.

- **Fecha del Movimiento**
  Fecha en que queda registrada la salida.

- **Descripción**
  Motivo del consumo.

### Línea de Uso Interno

Productos y cantidades que salen del almacén.

- **Producto**
  Producto que se consume.

- **Ubicación**
  Ubicación del almacén de donde se toma.

- **Cantidad de Uso Interno**
  Cantidad que sale del inventario.

- **Cargo**
  Cargo contable al que se imputa el consumo. Determina la cuenta donde se refleja el costo.

### Atributos

Instancias de atributos (lote, serie) cuando el producto las maneja.

## Acciones disponibles

- **Completar**
  Confirma el documento y genera la salida de inventario contra el cargo.

## Flujo del proceso

### 1. Crear el documento

Registrar la cabecera con el almacén, el tipo de documento y la fecha.

### 2. Cargar las líneas

Agregar el producto, la ubicación y la cantidad de uso interno. Indicar el cargo al que se imputa.

### 3. Completar

Completar el documento. Si el tipo de documento no tiene cargo definido, el sistema no permite completarlo.

### 4. Verificar la salida

En el detalle de transacciones del producto debe aparecer una salida de inventario contra el cargo por la cantidad indicada.

## Ejemplo de uso

Entregar 10 botellas de desinfectante producidas previamente:

1. Abrir **Inventario de Uso Interno** y crear el documento en el almacén de origen.
2. Agregar una línea con el producto *Desinfectante botella 1 litro*, ubicación y **cantidad 10**.
3. Indicar el cargo *Insumos de limpieza* (o el que defina la organización).
4. Completar el documento.
5. En las transacciones del producto se observa la entrada por producción y la salida de 10 unidades contra el cargo.

## Consideraciones importantes

- El consumo se lleva **a costo**: no genera factura. Si el precio del servicio ya contempla los materiales (por ejemplo, un precio por hora que los incluye), este documento registra el gasto sin cobrarlo por separado.
- El **cargo** es obligatorio para completar. Definir un cargo por motivo facilita el análisis contable.
- Si la organización prefiere que el material se lleve a gasto desde la compra en lugar de inventario, puede ajustar la configuración contable de la compra y la recepción.
- Los consumos que sí deban trasladarse al cliente no se registran aquí: se gestionan con compra y venta o facturación estándar.
- Para un solo producto, el proceso [Uso Interno del Producto](warehouse-operations/product-internal-use) es más rápido y crea el documento completo en un paso.

## Ventanas relacionadas

- [Uso Interno del Producto](warehouse-operations/product-internal-use)
- [Producción](production)
- [Lista de Materiales y Fórmula](../production-management/engineering/bom-and-formula)
- [Cargo](../accounting-management/accounting-rules/charge)
- [Ajuste de Inventario del Producto](warehouse-operations/product-inventory-adjustment)
- [Inventario Analítico](product-reports/analytical-inventory)
