---
title: Instantánea de Almacenamiento
category: Documentation
star: 9
sticky: 9
article: false
---

# Instantánea de Almacenamiento

## Descripción

La ventana **Instantánea de Almacenamiento** guarda fotos periódicas del estado del inventario consolidado por producto, ubicación e instancia de atributos. Cada instantánea captura la cantidad disponible, ordenada y reservada en un momento concreto, junto con la fecha del último inventario físico.

El *snapshot* funciona como **punto de partida** para el cálculo incremental del inventario actual: en lugar de recorrer todas las transacciones desde el origen de los tiempos cada vez que se consulta un producto, el sistema toma el último snapshot disponible y le aplica los movimientos y reservas posteriores. Esto mantiene el rendimiento aceptable a medida que el histórico de transacciones crece.

## ¿Cuándo se utiliza?

Se utiliza cuando la organización necesita:

- Generar un punto de referencia periódico del inventario para acelerar consultas futuras.
- Auditar el estado del inventario en una fecha concreta sin reconstruirlo desde transacciones.
- Investigar diferencias entre el inventario actual y el histórico de movimientos.
- Registrar el paso del tiempo en operaciones de alta transaccionalidad donde la tabla de transacciones crece rápido.

## Acceso

Menú: **Gestión de Materiales → Instantánea de Almacenamiento**

La generación del snapshot puede dispararse de forma manual desde esta ventana o programarse como tarea recurrente (por ejemplo, diaria o semanal).

## Pestañas

### Ejecución de Instantánea

Pestaña principal que registra cada corrida del proceso de snapshot. La información se organiza en:

- **Número del Documento**
  Número de secuencia interno que identifica la ejecución.

- **Fecha de Última Ejecución**
  Fecha y hora en que se ejecutó el proceso de instantánea; define hasta qué momento el snapshot es exacto y desde cuándo el sistema debe aplicar el cálculo incremental.

- **Productos Procesados**
  Cantidad de productos incluidos en esta ejecución.

- **Transacciones Procesadas**
  Cantidad de transacciones consideradas al calcular el snapshot.

### Instantánea

Detalle del snapshot por producto y ubicación. La información incluye:

- **Producto**
  Producto, servicio o artículo al que corresponde el registro.

- **Instancia de Conjunto de Atributos**
  Atributos específicos del producto (lote, serie, talla, color) cuando aplica.

- **Ubicación**
  Posición dentro del almacén.

- **Cantidad Disponible**
  Cantidad efectivamente disponible en inventario al momento del snapshot.

- **Cantidad Ordenada**
  Cantidad ordenada pendiente de recibir.

- **Cantidad Reservada**
  Cantidad reservada por órdenes de venta u otros documentos.

- **Fecha Último Inventario**
  Fecha del último inventario físico tomado sobre el producto y ubicación.

## Acciones disponibles

- **Ejecutar Instantánea**
  Genera un nuevo snapshot del inventario consolidado. Se recomienda programarlo fuera de horario operativo (por ejemplo, diariamente en la noche) para no afectar el rendimiento durante el día.

- **Consultar Detalle por Producto**
  Desde la pestaña *Instantánea*, filtrar por producto y ubicación para ver su estado en la fecha del snapshot.

- **Comparar con Inventario Actual**
  Navegar desde el snapshot al almacenamiento consolidado vigente para detectar diferencias con los eventos posteriores al snapshot.

## Flujo del proceso

### 1. Programar el snapshot

Configurar el proceso para que se ejecute automáticamente a la frecuencia deseada (diaria, semanal) mediante un programador de tareas del sistema. Alternativamente, ejecutarlo manualmente desde la ventana.

### 2. Ejecutar la instantánea

El proceso recorre el inventario consolidado y registra la cantidad disponible, ordenada y reservada de cada par *producto + ubicación + atributos* al momento de la ejecución. Cada corrida queda registrada en la pestaña *Ejecución de Instantánea*.

### 3. Uso del snapshot por otras funcionalidades

Cuando la cola de procesamiento de reservas o el proceso **Actualizar Almacenamiento** calculan el inventario actual, toman como punto de partida el snapshot más reciente y le aplican los movimientos y reservas posteriores a esa fecha.

### 4. Consulta del histórico

Desde la pestaña *Instantánea*, revisar el estado del producto en una fecha específica. Útil para auditorías, cierres contables o investigaciones de diferencias.

## Ejemplo de uso

Una organización con alta rotación de inventario necesita mantener consultas rápidas:

1. Programar el proceso **Instantánea de Almacenamiento** para ejecutarse todas las noches a medianoche.
2. A la mañana siguiente, abrir la ventana y verificar en la pestaña *Ejecución* que la última corrida se realizó en la fecha esperada, con la cantidad de productos y transacciones procesadas.
3. Ante una consulta de inventario durante el día, el sistema toma el snapshot de la noche anterior y aplica solo los movimientos del día para calcular el inventario vigente, acelerando la respuesta.
4. Si se detecta una diferencia, abrir el snapshot y comparar el producto en una fecha pasada con las transacciones registradas desde ese momento.

## Consideraciones importantes

- La **frecuencia** del snapshot depende del volumen transaccional. Organizaciones con alta rotación benefician de snapshots diarios; operaciones más pequeñas pueden usar frecuencia semanal.
- Un snapshot muy **desactualizado** hace que el cálculo incremental requiera procesar más transacciones, perdiendo el beneficio de rendimiento. Ejecutar con la frecuencia adecuada.
- El snapshot no se debe **editar manualmente**: refleja el estado calculado en un momento y cualquier modificación rompería el cálculo incremental posterior.
- La ejecución del proceso consume recursos proporcionales al tamaño del inventario. Programarlo fuera del horario pico operativo.
- Si los resultados del inventario actual no coinciden con lo esperado, verificar: (1) que exista un snapshot reciente, (2) que la cola de procesamiento haya procesado los eventos posteriores, y (3) que no haya transacciones huérfanas sin evento en la cola.

## Ventanas relacionadas

- [Reservas de Productos](product-reservations)
- [Actualizar Almacenamiento](update-storage)
