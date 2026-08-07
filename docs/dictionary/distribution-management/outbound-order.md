---
title: Orden de Salida
category: Documentation
star: 9
sticky: 9
article: false
---

# Orden de Salida

## Descripción

La **Orden de Salida** es el documento central del flujo logístico de distribución. Consolida un conjunto de **líneas de órdenes de venta** (o de órdenes de distribución) que se van a preparar, entregar y facturar en el mismo movimiento, típicamente sobre un mismo camión o ronda de reparto.

Sirve como **pizarra operativa** del despacho: desde la Orden de Salida se imprime la lista de productos para el picking, se arma el packing por cliente, se generan las entregas, se emiten las facturas y — cuando corresponde — se registran los cobros de la ronda.

El flujo típico es:

1. **Generar** la Orden de Salida a partir de las órdenes de venta pendientes de entregar (aplicando filtros por región de ventas, vendedor, tipo de documento, etc.).
2. **Imprimir** los reportes de la orden para orientar la búsqueda de productos y el armado por cliente.
3. **Generar Entregas desde Líneas** para dar salida al inventario.
4. **Generar Facturas desde Líneas** para emitir las facturas de las líneas ya entregadas.
5. **Imprimir Facturas** para adjuntarlas al despacho.
6. **Generar Cobros desde Orden de Salida** al regreso del camión, para registrar los cobros al contado que trae la ronda.

## ¿Cuándo se utiliza?

Se utiliza cuando la organización necesita:

- Preparar el despacho del día combinando **varias órdenes de venta** en una sola operación logística.
- Filtrar los pedidos pendientes por **región de ventas** o **vendedor** para armar rutas.
- Generar el **listado de productos consolidados** para el picking y el **listado por cliente** para el packing.
- Emitir **entregas** y **facturas** de forma masiva a partir de las líneas de la orden.
- Registrar los **cobros al contado** que retorna el camión, vinculados a la misma Orden de Salida.

## Acceso

La Orden de Salida existe como ventana propia y se genera a través de dos puntos de entrada distintos:

- **Menú:** Gestión de Distribución → **Orden de Salida** (ventana del documento; permite consultar y operar sobre órdenes ya creadas).
- **Menú:** Gestión de Distribución → **Generar Orden de Salida** (visor inteligente que arma la Orden de Salida a partir de órdenes de venta o de distribución pendientes de entregar).

También se puede abrir la Orden de Salida directamente desde el visor de creación al finalizar el proceso.

## Configuración previa

Para que el flujo se ejecute de forma completa, deben existir:

- **Órdenes de venta pendientes de entregar**, con líneas todavía sin entregar y en estado que permita despacho.
- **Almacén** y **ubicación** desde donde se realizará el picking.
- **Regla de entrega**, **vía de entrega** y **transportista** (opcional; se pueden definir al generar la Orden de Salida).
- **Tipo de documento** de la Orden de Salida y de los documentos que se van a generar (entrega, factura).
- **Formato de impresión** de los reportes que se van a usar durante la ronda (Lista de Productos, Socio + Producto, Ruta de Despacho, etc.).

## Pestañas

### Orden de Salida (Cabezal)

Encabezado del documento con los datos principales:

- **Nro. de Documento**
  Identificador único de la Orden de Salida.

- **Organización** y **Almacén**
  Organización y almacén desde el cual se despachan los productos.

- **Fecha del Documento** y **Fecha del Movimiento**
  Fecha operativa de emisión y fecha efectiva del movimiento de inventario.

- **Ubicación (Localizador)**
  Ubicación de origen desde la que se recogen los productos. Puede ser única para toda la orden o definirse a nivel de línea.

- **Regla de Entrega** y **Vía de Entrega**
  Reglas y modalidad de entrega (por ejemplo, propio, transportista, retiro en sucursal).

- **Transportista / Vehículo**
  Datos del transportista o del vehículo asignado a la ronda (opcional).

- **Estado del Documento**
  Estado del ciclo de vida (Borrador, En Proceso, Completo, Cerrado).

### Líneas

Detalle de las líneas incluidas en la Orden de Salida. Cada línea vincula una **línea de orden de venta** con su producto, cantidad, ubicación y referencias a los documentos generados (entrega, factura):

- **Orden de Venta / Línea de Orden de Venta**
  Referencia al pedido origen. Un doble clic navega al documento origen.

- **Producto** y **Descripción**
  Producto a despachar.

- **Cantidad Ordenada** / **Cantidad Recogida** / **Cantidad Entregada** / **Cantidad Facturada**
  Cantidades a lo largo del flujo. Se actualizan a medida que se procesan las acciones.

- **Localizador**
  Ubicación de origen específica de la línea.

- **Entrega** y **Factura**
  Referencias a los documentos generados a partir de esta línea. Doble clic para navegar.

## Acciones disponibles

Las acciones se agrupan por etapa del flujo:

### Generación de la Orden

- **Generar Orden de Salida (desde Órdenes de Venta / Distribución)**
  Visor inteligente que lista las órdenes pendientes de entregar y permite seleccionarlas para armar una Orden de Salida. Ver [Generar Picking y Entregas desde Orden de Salida](outbound-order-lines-to-pick-and-ship) para el detalle del navegador.

### Entregas

- **Generar Entregas desde Líneas**
  Acción sobre la Orden de Salida que abre un visor con las líneas listas para entregar, permite ajustar cantidades a entregar (por ejemplo, si en el picking se encontró menor cantidad que la ordenada) y genera las **entregas** en estado Completo. Se genera **una entrega por socio del negocio**, respetando el tope de líneas del tipo de documento configurado.

- **Generar Entregas (Proceso)**
  Ejecución del proceso equivalente sin pasar por el visor, útil para lotes grandes y ejecuciones programadas.

### Facturación

- **Generar Facturas desde Líneas**
  Visor que aplica la misma lógica que *Generar Entregas desde Líneas*, filtrando por las líneas ya entregadas. Genera las **facturas** por socio del negocio, tomando como cantidad la **cantidad efectivamente entregada** (no la ordenada). Ver [Generar Factura desde Orden de Salida](../sales-management/sales-invoices/generate-invoice-from-outbound-order).

- **Generar Facturas (Proceso)**
  Ejecución masiva del proceso sin visor.

- **Imprimir Facturas**
  Emite en un único trabajo de impresión todas las facturas asociadas a la Orden de Salida, listas para adjuntar al despacho.

### Movimiento de Inventario

- **Generar Movimiento de Inventario desde Orden de Salida**
  Cuando la operación requiere un movimiento explícito de inventario (a tránsito o a destino final), este visor lo genera a partir de las líneas de la Orden de Salida. Ver [Generar Movimiento de Inventario desde Orden de Salida](generate-inventory-move-from-outbound-order).

### Cobros

- **Generar Cobros desde Orden de Salida**
  Al retorno del camión, este visor lista las facturas de la Orden de Salida con condición de pago **al contado** y permite registrar el cobro por cada una en un solo paso. Ver [Generar Cobros desde Orden de Salida](generate-payment-from-outbound-order).

### Documento

- **Completar**
  Cierra la Orden de Salida y consolida su estado. A partir de este punto las líneas ya no se modifican.

## Reportes disponibles

Desde la Orden de Salida se pueden imprimir varios reportes según la etapa del proceso:

- **Lista de Productos (Picking)**
  Consolida todos los productos de la orden por producto, con cantidad total, unidad de medida y (opcional) ubicación y categoría. Sirve para que el operario de depósito recorra el almacén una sola vez juntando todo lo que se va a despachar.

- **Reporte de Socio + Producto (Packing)**
  Abre el listado por cada socio del negocio, mostrando los productos y cantidades que corresponden a cada pedido. Sirve para armar el paquete de cada cliente antes de subirlo al camión.

- **Reporte de Ruta de Despacho (Shipping)**
  Muestra una línea por cliente con importe de factura y dirección de entrega. Es la guía que se lleva el camionero para saber dónde entregar y cuánto cobrar.

Cada reporte se imprime desde la ventana de la Orden de Salida o desde el menú de reportes de distribución.

## Flujo del proceso

### 1. Generar la Orden de Salida

Desde **Generar Orden de Salida**, aplicar los filtros (organización, almacén, tipo de documento, región de ventas, vendedor). Seleccionar las órdenes de venta pendientes que se van a despachar juntas. A medida que se marcan órdenes, en la sección inferior aparecen los **productos consolidados** con su unidad de medida y cantidad en existencia. Marcar los productos a incluir (todos o selectivamente), definir fecha, ubicación y datos de entrega, y ejecutar la generación. El sistema crea la Orden de Salida con sus líneas.

### 2. Imprimir el reporte de productos (picking)

Desde la Orden de Salida, ejecutar el **reporte de Lista de Productos** para obtener el consolidado. Llevar el reporte al depósito y recolectar los productos según las cantidades indicadas.

### 3. Imprimir el reporte por cliente (packing)

Ejecutar el **reporte de Socio + Producto** para armar cada pedido individual. Si en el picking se encontró una cantidad menor a la ordenada, tomar nota para editarla en el siguiente paso.

### 4. Generar Entregas desde Líneas

Desde las acciones de la Orden de Salida, abrir **Generar Entregas desde Líneas**. Revisar las cantidades a entregar; si algún producto se encontró en menor cantidad que la ordenada, editar la línea con la cantidad real. Ejecutar. El sistema genera **una entrega por socio del negocio** en estado Completo.

### 5. Generar Facturas desde Líneas

Desde las acciones, abrir **Generar Facturas desde Líneas**. El visor lista las líneas ya entregadas con la **cantidad efectivamente entregada**, no la ordenada. Confirmar y ejecutar. El sistema genera las facturas correspondientes por socio del negocio.

### 6. Imprimir Facturas

Ejecutar **Imprimir Facturas** desde la Orden de Salida para obtener todas las facturas en un único trabajo de impresión. Adjuntar las facturas al despacho.

### 7. (Opcional) Imprimir el reporte de ruta

Ejecutar el **reporte de Ruta de Despacho** para entregarle al camionero la guía con clientes, importes y direcciones.

### 8. Registrar cobros al retorno del camión (opcional)

Cuando el camión vuelve, abrir **Generar Cobros desde Orden de Salida** y buscar por el número de Orden de Salida. El visor lista las facturas de la ronda que están al contado. Seleccionar la línea de cada factura cobrada, indicar el medio de pago (efectivo, depósito, banco, etc.) y ejecutar. Se generan los cobros vinculados y las facturas quedan saldadas.

## Ejemplo de uso

Preparar y despachar una ronda del día compuesta por tres pedidos:

1. Abrir **Generar Orden de Salida**. Filtrar por *Tipo de Documento = Venta de Distribución* y *Estado = Pendiente de Entrega*.
2. Seleccionar las tres órdenes de venta que se despacharán juntas. En la grilla inferior aparecen los productos consolidados con existencias.
3. Confirmar la selección, definir fecha, ubicación única de origen y datos de entrega. Ejecutar. El sistema crea la Orden de Salida (por ejemplo, número *37*).
4. En la Orden de Salida, imprimir el **reporte de Lista de Productos** y llevarlo al depósito para el picking. Recolectar los productos.
5. Imprimir el **reporte de Socio + Producto** para armar el paquete de cada cliente.
6. Volver a la Orden de Salida y ejecutar **Generar Entregas desde Líneas**. Si en el picking se encontró que un producto tenía 90 unidades disponibles en lugar de las 100 pedidas, editar la línea correspondiente a 90 antes de generar. El sistema crea tres entregas (una por cliente) en estado Completo.
7. Ejecutar **Generar Facturas desde Líneas**. Se emiten tres facturas con las cantidades efectivamente entregadas (una con 90 en lugar de 100).
8. Ejecutar **Imprimir Facturas** para obtener las tres facturas en un solo trabajo.
9. Imprimir el **reporte de Ruta de Despacho** para el camionero y despachar.
10. Al retorno del camión, ejecutar **Generar Cobros desde Orden de Salida** con el número *37*. Registrar los cobros de las facturas al contado con su medio de pago correspondiente.

## Consideraciones importantes

- La Orden de Salida es **una envoltura logística**: no reemplaza a la Orden de Venta, sino que **agrupa** líneas pendientes de entregar de varias órdenes en un solo documento operativo. La trazabilidad hacia la Orden de Venta se preserva en cada línea.
- **Generar Facturas desde Líneas** factura la **cantidad efectivamente entregada**, no la ordenada. Si el picking encontró menor cantidad, la factura se emite por lo entregado y la orden de venta queda con saldo pendiente.
- Al generar **Entregas** o **Facturas**, el sistema respeta el **tope de líneas** definido en el tipo de documento correspondiente. Si el tope es 2 y la orden tiene 5 líneas, se generarán varios documentos.
- El **reporte de Lista de Productos** ordena por producto y sumariza; conviene incluir la **ubicación** del producto (si está definida) para agilizar el picking físico.
- El **reporte de Socio + Producto** se puede **editar en pantalla** para tildar productos encontrados o marcar diferencias antes del control final.
- Los **cobros al contado** que se registran vía *Generar Cobros desde Orden de Salida* aparecen automáticamente vinculados a la Orden de Salida; los cobros a crédito se gestionan por los canales estándar (cuentas por cobrar).
- Si aparecen **rendimientos lentos** al generar la Orden de Salida sobre bases con gran volumen de pedidos, revisar con el administrador la aplicación de índices sobre las tablas relacionadas.
- Es recomendable **completar** la Orden de Salida al finalizar la ronda para consolidar su estado. Una vez completa, sus líneas quedan cerradas para modificaciones ulteriores.
- Los **doble-clic sobre las referencias** (líneas de Orden de Venta, entregas, facturas) permiten navegar directamente al documento asociado, facilitando la auditoría del flujo.

## Ventanas relacionadas

- [Generar Picking y Entregas desde Orden de Salida](outbound-order-lines-to-pick-and-ship)
- [Generar Movimiento de Inventario desde Orden de Salida](generate-inventory-move-from-outbound-order)
- [Generar Cobros desde Orden de Salida](generate-payment-from-outbound-order)
- [Generar Factura desde Orden de Salida](../sales-management/sales-invoices/generate-invoice-from-outbound-order)
- [Orden de Distribución](distribution-order)
- [Detalle de Orden de Distribución](distribution-order-detail)
- [Configuración de Distribución](distribution-management-setup)
- [Red de Distribución](distribution-network)
- [Orden de Venta](../sales-management/sales-orders/sales-order)
- [Entregas (Cliente)](../sales-management/shipments/shipment-customer)
