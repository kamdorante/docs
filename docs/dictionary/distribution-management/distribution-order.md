---
title: Orden de Distribución
category: Documentation
star: 9
sticky: 9
article: false
---

# Orden de Distribución

## Descripción

La **Orden de Distribución** es el documento que planifica un **movimiento de inventario entre dos almacenes** de la organización, típicamente pertenecientes a distintas ubicaciones u organizaciones. Define qué productos y cantidades se envían, desde qué almacén origen y hacia qué almacén destino.

Es el documento principal del módulo **DRP (Planificación de Recursos de Distribución)** y se apoya en un **almacén en tránsito** para modelar el traslado físico del producto:

1. Al **completar** la orden y **generar el movimiento**, el stock **sale** del almacén origen y **entra** al almacén en tránsito.
2. Al **recibir** los materiales en el destino, el stock **sale** del almacén en tránsito y **entra** al almacén destino.

Esto refleja el ciclo real del despacho: mientras la mercadería está viajando, queda contabilizada en tránsito y no aparece disponible en ninguna de las dos puntas.

## ¿Cuándo se utiliza?

Se utiliza cuando la organización necesita:

- Trasladar productos de un **almacén** a otro para reabastecer la operación (por ejemplo, de un centro de distribución a una sucursal).
- Mantener trazabilidad y contabilidad del stock **mientras la mercadería está en tránsito**.
- Planificar y priorizar movimientos entre almacenes por fecha prometida.
- Consolidar varios pedidos internos en un mismo movimiento.
- Confirmar la recepción del material en el almacén destino y cerrar el ciclo del traslado.

## Acceso

**Menú:** Gestión de Distribución → **Orden de Distribución**.

Para las etapas del flujo se usan también:

- **Generar Movimiento** (para dar salida del origen al tránsito).
- **Recibos de Materiales de la Orden de Distribución** (para dar entrada del tránsito al destino).

## Configuración previa

Antes de crear la Orden de Distribución deben existir:

- **Almacén origen** y **almacén destino** dados de alta en el sistema, cada uno con su ubicación por defecto.
- Un **almacén en tránsito** para mediar el traslado. Se aconseja crear uno por corredor (por ejemplo, *en tránsito hacia sucursal X*).
- **Stock disponible** del producto en el almacén origen: sin existencia, el sistema no permitirá generar el movimiento.
- **Tipo de documento** de la Orden de Distribución configurado.
- (Opcional) **Transportista** y **Regla de Costo de Flete** si se necesita registrar quién y con qué costo hace el traslado.

## Pestañas

### Orden

La pestaña **Orden** define los parámetros del encabezado de la orden de distribución. Los valores definidos determinan cómo se procesarán las líneas de la orden.

#### Campos

| Campo | Descripción | Tipo | Obligatorio |
|-------|-------------|------|-------------|
| No. Documento | Número de secuencia del documento generado por el sistema | Texto | No |
| Tipo de Documento | Tipo de documento o reglas que determinan la secuencia y procesamiento | Tabla Directa | No |
| Tipo Doc. Destino | Tipo de documento destino para conversión de documentos | Tabla | No |
| Fecha Ordenada | Fecha en que se realizó la orden | Fecha | No |
| Fecha Prometida | Fecha en que la orden fue prometida para entrega | Fecha | No |
| Socio del Negocio | Identifica el socio del negocio relacionado con la orden (típicamente el que representa a la organización destino) | Búsqueda | No |
| Dirección del Socio | Identifica la dirección de envío del socio del negocio | Tabla | No |
| Almacén | Almacén de origen donde se almacenan o proveen los productos | Tabla Directa | No |
| Almacén Destino | Almacén destino al que se enviarán los productos. Es habitual usar aquí el **almacén en tránsito** para modelar el traslado en dos etapas | Tabla Directa | No |
| Estado del Documento | Estado actual del documento (Borrador, En Proceso, Completo, Cerrado) | Lista | No |
| Acción del Documento | Estado objetivo del documento al procesar | Lista | No |
| Descripción | Descripción corta opcional del registro | Texto | No |
| Prioridad | Prioridad relativa de la orden de distribución | Lista | No |
| Regla de Entrega | Define cómo se despacha la orden | Lista | No |
| Regla de Costo de Flete | Método de cálculo del costo de flete | Lista | No |
| Transportista | Método o manera de entrega del producto | Tabla Directa | No |
| Agente de Ventas | Representante de ventas o agente de la compañía | Tabla | No |

### Línea Orden

La pestaña **Línea Orden** define los productos individuales incluidos en la orden de distribución.

#### Campos

| Campo | Descripción | Tipo | Obligatorio |
|-------|-------------|------|-------------|
| No. Línea | Número de línea único para este documento | Entero | No |
| Producto | Producto, servicio o artículo de la línea | Búsqueda | No |
| Descripción | Descripción corta opcional del registro | Texto | No |
| Fecha Prometida | Fecha en que la entrega fue prometida | Fecha | No |
| Cantidad Ordenada | Cantidad que fue ordenada | Número | No |
| Unidad de Medida | Unidad de medida del producto | Tabla Directa | No |
| Localizador | Localizador del almacén de origen | Tabla Directa | No |
| Localizador Destino | Localizador destino en el almacén receptor | Tabla | No |
| Cantidad Entregada | Cantidad que ha sido entregada (afecta al momento de recibir en destino) | Número | No |
| Cantidad en Tránsito | Cantidad actualmente en tránsito (se llena al generar el movimiento) | Número | No |
| Confirmada | Indica si la cantidad entregada fue confirmada. **Debe estar en el número ordenado para que el movimiento se procese** | Sí/No | No |

## Acciones disponibles

- **Completar**
  Cierra el encabezado de la Orden de Distribución dejándolo listo para procesar movimientos. Una vez completa, la orden se marca *En Tránsito* si las líneas están confirmadas.

- **Generar Movimiento**
  Ejecuta el movimiento **Origen → Tránsito**. Consume el stock del almacén origen y lo carga al almacén en tránsito. Ver [Generar Movimiento](generate-movement) para la ejecución masiva del proceso.

- **Recibir Materiales**
  Ejecuta el movimiento **Tránsito → Destino**. Se realiza desde el navegador [Recibos de Materiales de la Orden de Distribución](material-receipt-distribution-order), típicamente por el operador del almacén destino cuando el material llega físicamente.

- **Modificar Cantidad Confirmada**
  Mientras la línea esté editable, se puede ajustar la cantidad confirmada antes de generar el movimiento. Si la cantidad confirmada no coincide con la ordenada, la porción no confirmada **no** se incluye en el movimiento generado.

- **Asignar Flete / Transportista**
  Sobre el encabezado se puede definir el transportista y la regla de costo de flete si el traslado se despacha con un tercero.

## Flujo del proceso

### 1. Crear la Orden de Distribución

Desde **Gestión de Distribución → Orden de Distribución**, crear un nuevo registro completando el encabezado:

- **Almacén** (origen) y **Almacén Destino** (habitualmente el almacén en tránsito).
- **Socio del Negocio** que representa a la organización destino.
- **Fecha Ordenada** y **Fecha Prometida**.
- Datos opcionales como prioridad, regla de entrega o transportista.

Guardar.

### 2. Cargar las líneas

En la pestaña **Línea Orden**, agregar cada producto a mover con:

- Producto y unidad de medida.
- **Cantidad Ordenada**.
- **Localizador** de origen y **Localizador Destino**.
- Confirmar que la **Cantidad Confirmada** coincide con la Cantidad Ordenada (sin este dato el movimiento no se genera).

Si el producto no tiene stock suficiente en el almacén origen, el sistema no permitirá la generación posterior. Se recomienda validar la existencia antes de continuar (por ejemplo, desde el Buscador de Productos).

### 3. Completar la orden

Con las líneas cargadas y confirmadas, ejecutar **Completar** en el encabezado. La orden pasa a estado *En Tránsito* y sus líneas quedan preparadas para generar el movimiento.

### 4. Generar el movimiento (Origen → Tránsito)

Ejecutar **Generar Movimiento** (desde la orden o desde el navegador de generación). El sistema crea un documento de **Movimiento de Inventario** que:

- Descuenta el stock del **almacén origen** en las cantidades indicadas.
- Suma el stock al **almacén en tránsito** con esas mismas cantidades.

En la Orden de Distribución, las líneas reflejan ahora **Cantidad en Tránsito** con el valor movido.

### 5. Recibir los materiales en destino

Cuando el material llega físicamente al destino, el operador abre **Recibos de Materiales de la Orden de Distribución**, filtra por la orden y confirma la **Cantidad a Recibir** por producto y localizador destino. Ejecuta la recepción.

El sistema crea un segundo **Movimiento de Inventario** que:

- Descuenta el stock del **almacén en tránsito**.
- Suma el stock al **almacén destino**.

En la Orden de Distribución, las líneas reflejan ahora **Cantidad Entregada** con el valor recibido y la Cantidad en Tránsito baja a cero.

### 6. Verificar el resultado

- Desde el **Buscador de Productos**, ubicar el producto y confirmar que el stock aumentó en el almacén destino.
- Desde el reporte de **Detalle de Transacciones** filtrando por producto, se ven los **dos movimientos** generados: uno de Origen → Tránsito y otro de Tránsito → Destino.
- La Orden de Distribución queda con Cantidad en Tránsito = 0 y Cantidad Entregada = Cantidad Ordenada, indicando que el traslado se completó.

## Ejemplo de uso

Una organización necesita mover **3 unidades** de un producto desde el almacén principal *A* hacia el almacén de una sucursal *B*, usando un almacén en tránsito *A → B*:

1. Crear una **Orden de Distribución** con:
   - Almacén = *A*.
   - Almacén Destino = *En Tránsito A → B*.
   - Socio del Negocio = el que representa a la sucursal.
   - Fecha Ordenada = hoy; Fecha Prometida = dentro de dos días.
2. Cargar una línea con el producto, **Cantidad Ordenada 3**, Localizador de *A*, Localizador Destino en *En Tránsito A → B*. Confirmar Cantidad Confirmada = 3.
3. **Completar** la orden. Queda en estado *En Tránsito*.
4. Ejecutar **Generar Movimiento**. El sistema genera un movimiento (por ejemplo, número *14*):
   - Almacén *A*: 3 unidades menos.
   - Almacén *En Tránsito A → B*: 3 unidades más.
   - La línea de la orden ahora muestra *Cantidad en Tránsito = 3*.
5. La mercadería viaja. Al llegar a la sucursal *B*, el operador abre **Recibos de Materiales de la Orden de Distribución**, ubica la orden y confirma *Cantidad a Recibir = 3* con Localizador Destino en *B*. Ejecuta.
6. El sistema genera un segundo movimiento (por ejemplo, número *15*):
   - Almacén *En Tránsito A → B*: 3 unidades menos.
   - Almacén *B*: 3 unidades más.
   - La línea de la orden ahora muestra *Cantidad Entregada = 3* y *Cantidad en Tránsito = 0*.
7. Verificar en el **Buscador de Productos**: el almacén *B* refleja las 3 unidades adicionales; el reporte de Detalle de Transacciones muestra los dos movimientos consecutivos (uno hacia el tránsito y otro hacia el destino).

## Consideraciones importantes

- El **almacén en tránsito** es el mecanismo que refleja contablemente el traslado. Sin él, el stock "salta" instantáneamente entre los dos almacenes, lo que impide auditar cuánto material está viajando en un momento dado.
- La **Cantidad Confirmada** debe coincidir con la **Cantidad Ordenada** para que la línea entre al movimiento. Si se confirmó menos, la diferencia no se despacha; si se confirmó cero, la línea se ignora.
- El **stock disponible en el almacén origen** es condición para generar el movimiento. Si no hay existencia, la generación falla o queda parcial; conviene validar con el Buscador de Productos antes de completar.
- El **flujo se descompone en dos movimientos de inventario**: Origen → Tránsito (al generar el movimiento) y Tránsito → Destino (al recibir en destino). Ambos quedan visibles en el reporte de Detalle de Transacciones.
- Los **localizadores** de origen y destino se pueden dejar sin cargar si los almacenes tienen ubicación por defecto; para almacenes con ubicaciones múltiples, conviene detallarlos para que el stock caiga en el lugar correcto.
- La **prioridad** y la **fecha prometida** son usadas por el proceso masivo *Generar Movimiento* para ordenar y filtrar las órdenes de distribución al despachar por lote.
- Si varias órdenes de distribución del **mismo socio del negocio** comparten dirección, el proceso masivo *Generar Movimiento* puede **consolidarlas** en un único movimiento marcando la opción *Consolidar en un Documento*.
- El **transportista** y la **regla de costo de flete** son opcionales pero conviene registrarlos cuando el traslado se despacha con un tercero, para poder generar la orden de flete asociada más adelante.

## Ventanas relacionadas

- [Generar Movimiento](generate-movement)
- [Generar Movimiento Manual](generate-movement-manual)
- [Recibos de Materiales de la Orden de Distribución](material-receipt-distribution-order)
- [Detalle de Orden de Distribución](distribution-order-detail)
- [Ejecución de Órdenes de Distribución](distribution-run-orders)
- [Configuración de Distribución](distribution-management-setup)
- [Red de Distribución](distribution-network)
- [Disponibles para Promesas — Mostrar Detalle](../material-management/available-to-promise-detail)
- [Reservas de Productos](../material-management/product-reservations)
