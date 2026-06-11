---
title: Inventario Físico
category: Documentation
star: 9
sticky: 9
article: false
---

# Inventario Físico

## Descripción

La ventana **Inventario Físico** permite registrar ajustes de las cantidades de productos en existencia dentro de un almacén. A través de un documento transaccional, se compara la cantidad registrada en el sistema (cantidad en libros) con la cantidad real contada físicamente, y se generan los movimientos necesarios para corregir la diferencia.

Es un procedimiento de uso restringido que debe ejecutarse únicamente cuando exista una discrepancia comprobada y documentada entre el inventario físico y el sistema, con la debida autorización de los responsables del área.

::: warning
La **Cantidad en libros** siempre refleja el stock a la fecha actual del sistema. No es posible usarla como referencia para ajustes de fechas anteriores.
:::

## ¿Cuándo se utiliza?

Se utiliza cuando se necesita:

- Corregir existencias incorrectas detectadas durante un conteo o auditoría de inventario
- Registrar pérdidas por robo, hurto o merma con respaldo documental
- Ajustar cantidades tras eventos que afectaron el stock sin registro previo en el sistema

## Acceso

Menú: Gestión de Materiales → Inventario Físico

## Pestañas

### Conteo de Inventario

Pestaña principal que contiene el encabezado del documento de ajuste:

- **Organización** — Organización bajo la que se registra el ajuste
- **Almacén** — Almacén donde se realizó el conteo físico
- **Fecha del movimiento** — Fecha del conteo real. Por defecto toma la fecha actual del sistema
- **Tipo de documento** — Debe seleccionarse el tipo correspondiente a Inventario Físico para que el sistema procese el ajuste correctamente
- **Descripción** — Texto libre para indicar el motivo o contexto del ajuste (opcional)

### Línea de Conteo de Inventario

Pestaña de detalle donde se agrega una línea por cada producto a ajustar:

- **Producto** — Producto que se va a corregir
- **Ubicación** — Posición exacta del producto dentro del almacén
- **Cantidad en libros** — Existencia que el sistema tiene registrada para ese producto a la fecha actual. Se carga automáticamente y no es editable
- **Cantidad contada** — Existencia real verificada físicamente en el almacén. Es el único valor que el usuario ingresa

## Acciones disponibles

- **Completar**
  Procesa el documento y genera los movimientos de inventario para llevar la cantidad registrada hasta la cantidad contada. El sistema calcula automáticamente si el ajuste es positivo (se encontró más de lo esperado) o negativo (se encontró menos de lo esperado).

## Flujo del proceso

### 1. Crear el encabezado

Abrir la ventana **Inventario Físico** y crear un nuevo registro. Seleccionar el almacén donde se realizó el conteo y la fecha del movimiento. Guardar el encabezado antes de pasar a las líneas.

### 2. Registrar las líneas de productos

En la pestaña **Línea de Conteo de Inventario**, agregar una línea por cada producto que requiera ajuste:

1. Seleccionar el **Producto** y su **Ubicación**
2. El sistema carga automáticamente la **Cantidad en libros**
3. Ingresar la **Cantidad contada** (valor real del almacén)
4. Guardar la línea y repetir para los demás productos

### 3. Completar el documento

Regresar a la pestaña **Conteo de Inventario** y seleccionar la acción **Completar**. El sistema registra los movimientos de ajuste para cada línea ingresada.

### 4. Verificar con reportes

Ejecutar el **Informe de Inventario Valorado** para la fecha del movimiento y confirmar que las cantidades reflejan los valores corregidos.

## Consideraciones importantes

- La **Cantidad en libros** siempre es la existencia del día actual. Si se necesita ajustar una fecha pasada, no es posible hacerlo directamente desde esta ventana; se debe gestionar con el equipo de soporte.
- Una vez completado el documento, no puede revertirse directamente. Para corregir un error se debe generar un nuevo ajuste con el valor correcto.
- Se recomienda documentar y respaldar el conteo físico antes de procesarlo en el sistema.
- El ajuste afecta únicamente el almacén seleccionado en el encabezado.

## Ejemplo de uso

Se detecta que un producto tiene 14 unidades en el sistema pero físicamente hay 10:

1. Crear un nuevo registro en **Inventario Físico** con el almacén y la fecha del conteo
2. En **Línea de Conteo de Inventario**, seleccionar el producto: el sistema muestra **Cantidad en libros: 14**
3. Ingresar **Cantidad contada: 10**
4. Completar el documento
5. Verificar con el **Informe de Inventario Valorado** que la existencia quedó en 10 unidades
