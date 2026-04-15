---
title: Reservas de Productos
category: Documentation
star: 9
sticky: 9
article: false
---

# Reservas de Productos

## Descripción

La ventana **Reservas de Productos** centraliza los movimientos de reserva generados por los documentos que afectan disponibilidad de inventario: órdenes de venta, órdenes de compra, entregas, recepciones, órdenes de distribución, lotes de producción y movimientos de inventario. Cada línea de un documento genera uno o más registros en esta tabla indicando qué producto, ubicación, cantidad y tipo de reserva (ordenada, reservada, entregada) queda asociada al movimiento.

Este modelo reemplaza la lógica anterior que actualizaba el inventario actual directamente desde cada documento. Con las reservas, los documentos registran eventos que luego son procesados por una cola en segundo plano para actualizar el inventario consolidado, evitando bloqueos y discrepancias en escenarios con alta concurrencia.

## ¿Cuándo se utiliza?

Se utiliza cuando la organización necesita:

- Consultar el detalle de las reservas activas de un producto por almacén, ubicación y documento origen.
- Verificar qué órdenes de venta están reservando mercadería y qué entregas las están liberando.
- Diagnosticar diferencias entre el inventario actual y el histórico de transacciones o reservas.
- Validar que la cola de procesamiento de reservas esté aplicando correctamente los eventos.
- Auditar el origen de cada movimiento de reserva (documento, línea, tipo de reserva).

## Acceso

Menú: **Gestión de Materiales → Reservas de Productos**

## Pestañas

### Reserva

Pestaña principal con los movimientos de reserva registrados en el sistema. La información se organiza en:

- **Producto y Atributos**
  Producto, servicio o artículo afectado por la reserva, junto con la instancia del conjunto de atributos cuando aplica.

- **Almacén y Ubicación**
  Almacén y posición dentro del almacén donde se encuentra el stock reservado.

- **Cantidad**
  Cantidad del producto afectada por la reserva. Puede ser positiva (se reserva u ordena) o negativa (se libera por entrega o recepción completada).

- **Tipo de Reserva**
  Clasificación del movimiento: *Reservado* (orden de venta), *Ordenado* (orden de compra), *En Tránsito*, *En Producción*, entre otros.

- **Fecha de la Transacción**
  Fecha del evento que originó la reserva.

- **Documento Origen**
  Referencia al documento que generó la reserva. Según el tipo, se completa uno de los siguientes bloques:
  - *Orden de Venta* y *Línea de Orden de Venta*.
  - *Entrega/Recepción* y *Línea de Entrega/Recepción*.
  - *Orden de Distribución* y *Línea de Orden de Distribución*.
  - *Movimiento de Inventario* y *Línea de Movimiento*.
  - *Lote de Producción* y *Línea de Lote*.
  - *Producción* y *Línea de Producción*.

## Acciones disponibles

- **Consultar Reservas por Producto**
  Filtrar la ventana por producto y almacén para ver todas las reservas activas.

- **Acercar al Documento Origen**
  Desde una línea de reserva, navegar al documento que la generó (orden de venta, entrega, etc.) para verificar su estado.

- **Procesar Cola de Reservas**
  Forzar el procesamiento de los eventos pendientes en la cola para que se vean reflejados inmediatamente en el inventario. Disponible también de manera automática cada cierto intervalo (por defecto, cinco minutos).

- **Actualizar Almacenamiento**
  Proceso complementario que recalcula el inventario consolidado a la fecha tomando el último *snapshot* disponible y aplicando los movimientos posteriores.

## Flujo del proceso

### 1. Generar un documento que afecta inventario

Al completar una orden de venta, el sistema crea registros en **Reservas de Productos** con tipo *Reservado* (uno por cada producto y línea del documento). Lo mismo ocurre con órdenes de compra (*Ordenado*), entregas, recepciones, movimientos y producciones.

### 2. Registrar el evento en la cola

En paralelo, el documento genera una entrada en la cola de procesamiento para indicarle al sistema que hay reservas pendientes por consolidar en el inventario actual.

### 3. Procesar la cola

La cola se ejecuta automáticamente en segundo plano (por defecto cada cinco minutos). Cada ciclo toma los eventos pendientes, los suma o resta contra el último *snapshot* de almacenamiento y actualiza el inventario consolidado del producto.

### 4. Liberar la reserva al entregar o recibir

Cuando se genera la entrega (o la recepción en el caso de compras), el sistema crea nuevos registros de reserva que liberan la cantidad reservada inicialmente. La suma neta de todos los eventos para el par *producto + ubicación* refleja el estado actual.

### 5. Consultar el resultado

Desde **Reservas de Productos**, filtrar por producto y almacén para ver el detalle. Desde la ventana de inventario actual (almacenamiento) se consulta el consolidado. Ambas vistas deben coincidir una vez procesada la cola.

### 6. Forzar la actualización si es necesario

Si se requiere ver reflejado un cambio sin esperar el próximo ciclo, ejecutar el proceso **Actualizar Almacenamiento** para reconciliar inmediatamente el inventario consolidado.

## Ejemplo de uso

Una organización crea dos órdenes de venta simultáneas con el mismo producto:

1. La primera orden de venta crea un registro en **Reservas de Productos** con tipo *Reservado*, cantidad 5, para el producto en el almacén principal.
2. La segunda orden de venta crea otro registro con tipo *Reservado*, cantidad 3, para el mismo producto y almacén.
3. Cada orden, al completarse, registra un evento en la cola.
4. Al próximo ciclo (cinco minutos), la cola procesa ambos eventos y actualiza el inventario consolidado reflejando 8 unidades reservadas en total.
5. Se genera la entrega de la primera orden: aparece un nuevo registro en **Reservas de Productos** liberando las 5 unidades reservadas y el inventario consolidado se actualiza automáticamente.
6. En todo momento, la ventana **Reservas de Productos** conserva el histórico completo de eventos para auditoría y rastreo.

## Consideraciones importantes

- Cada **línea de un documento** puede generar uno o más registros en la tabla de reservas según la cantidad de productos involucrados; nunca se sobrescribe un registro anterior.
- Los registros pueden tener cantidades **negativas**: cuando se entrega lo previamente reservado, el evento resta la cantidad hasta cerrar el ciclo del documento.
- El inventario consolidado (*almacenamiento*) se actualiza únicamente mediante el procesamiento de la cola o ejecutando el proceso **Actualizar Almacenamiento**. Consultar directamente la tabla de reservas permite ver el detalle antes de la consolidación.
- El procesamiento por cola evita los **bloqueos de fila** que ocurrían al actualizar el inventario en tiempo real desde múltiples documentos simultáneos. Garantiza que concurrentemente no se pisen las cantidades.
- El sistema usa un **snapshot periódico** del almacenamiento como punto de partida para el cálculo incremental; esto evita recorrer todas las transacciones desde el origen de los tiempos cada vez que se consulta el inventario.
- Si el inventario consolidado no coincide con el resultado esperado de **Reservas de Productos**, lo más probable es que la cola tenga eventos pendientes. Ejecutar **Actualizar Almacenamiento** reconcilia la vista.
- Las **órdenes de distribución** y los **movimientos de inventario** entre almacenes también generan reservas en origen y destino para reflejar el estado intermedio (por ejemplo, *En Tránsito*).

## Ventanas relacionadas

- [Instantánea de Almacenamiento](storage-snapshot)
- [Actualizar Almacenamiento](update-storage)
