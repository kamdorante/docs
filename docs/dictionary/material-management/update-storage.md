---
title: Actualizar Almacenamiento
category: Documentation
star: 9
sticky: 9
article: false
---

# Actualizar Almacenamiento

## Descripción

El proceso **Actualizar Almacenamiento** recalcula el inventario consolidado de uno o varios productos tomando como punto de partida el último *snapshot* disponible y aplicando todos los movimientos y reservas posteriores. Opcionalmente, puede generar un nuevo snapshot con el resultado.

A diferencia del procesamiento por cola (que aplica de manera incremental los eventos pendientes y se ejecuta automáticamente cada ciclo), este proceso permite **forzar la actualización** de forma explícita sobre todo el inventario o sobre un subconjunto acotado (una organización, un almacén, una categoría o un producto específico). Se usa cuando se necesita ver el resultado sin esperar al próximo ciclo, o cuando se detecta una discrepancia entre la tabla de reservas y el inventario consolidado.

## ¿Cuándo se utiliza?

Se utiliza cuando la organización necesita:

- Ver el inventario actualizado inmediatamente sin esperar al procesamiento automático de la cola.
- Reconciliar el inventario consolidado después de una corrección masiva de documentos.
- Generar un snapshot puntual fuera del horario programado.
- Corregir desfases detectados entre la tabla de reservas, las transacciones de inventario y el inventario consolidado.
- Validar el comportamiento del inventario tras cambios en la configuración o después de migraciones.

## Acceso

Menú: **Gestión de Materiales → Actualizar Almacenamiento**

## Parámetros

| Parámetro | Descripción | Tipo | Obligatorio | Valor por defecto |
|-----------|-------------|------|-------------|-------------------|
| Crear Instantánea | Indica si se debe generar un nuevo snapshot con el resultado del cálculo | Sí/No | No | No |
| Organización | Entidad organizacional dentro del cliente sobre la que se aplica el proceso | Búsqueda directa | No | |
| Almacén | Almacén específico a actualizar; si se omite, aplica a todos los almacenes de la organización | Búsqueda directa | No | |
| Producto | Producto específico a actualizar | Búsqueda | No | |
| Categoría de Producto | Categoría de productos a actualizar en lote | Búsqueda directa | No | |

## Acciones disponibles

- **Ejecutar**
  Lanza el recálculo del inventario consolidado según los filtros indicados.

- **Ver Histórico del Proceso**
  Consultar ejecuciones anteriores con fecha, filtros aplicados y resultado.

## Flujo del proceso

### 1. Identificar el alcance

Determinar si la actualización debe aplicar a todo el inventario, a una organización concreta, a un almacén, a una categoría de productos o a un producto específico. Cuanto más acotado sea el alcance, más rápida la ejecución.

### 2. Ejecutar el proceso

Abrir **Actualizar Almacenamiento**, completar los filtros correspondientes y decidir si se genera o no una nueva instantánea con el resultado. Ejecutar.

### 3. Cálculo del inventario

El proceso toma el último snapshot disponible como base y aplica:

- Los movimientos registrados en la tabla de transacciones de inventario posteriores al snapshot.
- Los eventos de reserva registrados en la tabla de reservas posteriores al snapshot.

Con la suma neta, actualiza el inventario consolidado (*almacenamiento*) para cada par *producto + ubicación + atributos* incluido en el alcance.

### 4. Revisar el resultado

Abrir la ventana de almacenamiento consolidado (o consultar desde la ficha del producto) para verificar que la cantidad disponible, ordenada y reservada refleja lo esperado. Si se pidió generar instantánea, revisar la nueva corrida en la ventana **Instantánea de Almacenamiento**.

### 5. Investigar desfases (si aplica)

Si el resultado no coincide con lo esperado, revisar: (1) que no haya eventos pendientes en la cola de procesamiento, (2) que no existan documentos con errores que impidan registrar reservas, y (3) que el snapshot base sea reciente.

## Ejemplo de uso

Después de una corrección masiva de órdenes de venta, se necesita validar que el inventario refleja la situación actual:

1. Abrir **Actualizar Almacenamiento**.
2. Seleccionar la organización y el almacén donde se hicieron las correcciones; dejar sin valor *Producto* y *Categoría de Producto* para abarcar todo el inventario del almacén.
3. Marcar **Crear Instantánea = Sí** para dejar una foto del estado posterior a la corrección.
4. Ejecutar. Tras unos minutos, el proceso termina.
5. Abrir la ventana de almacenamiento y filtrar por el almacén; verificar que las cantidades disponibles y reservadas reflejan el resultado esperado.
6. Revisar la pestaña *Ejecución de Instantánea* para confirmar que se generó la nueva corrida con la fecha y hora correspondientes.

## Consideraciones importantes

- Ejecutar el proceso sin filtros **recalcula todo el inventario** y puede consumir recursos significativos. Usar filtros siempre que sea posible.
- La opción **Crear Instantánea = Sí** es útil después de correcciones importantes para dejar un punto de referencia limpio; no es necesaria en uso diario porque el snapshot programado lo hace periódicamente.
- El proceso **no reemplaza** al procesamiento automático por cola: los documentos completados siguen dejando eventos que la cola procesa. Este proceso es complementario para casos puntuales.
- Si el inventario consolidado muestra diferencias después de ejecutar, la causa más frecuente es un evento de reserva sin consolidar (cola con demora). Revisar la cola antes de repetir el proceso.
- En entornos con alto volumen, la ejecución sin filtros puede tardar varios minutos. Programarla fuera del horario pico si se necesita sobre todo el inventario.
- El proceso respeta la segregación por organización: si se indica una organización concreta, solo se actualizan productos y ubicaciones de esa organización.

## Ventanas relacionadas

- [Reservas de Productos](product-reservations)
- [Instantánea de Almacenamiento](storage-snapshot)
