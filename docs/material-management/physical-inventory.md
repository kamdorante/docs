---
title: Inventario Físico
category: Documentation
star: 9
sticky: 9
article: false
---

# Inventario Físico

## Descripción

La ventana **Inventario Físico** permite registrar el conteo real de productos en existencia y ajustar las cantidades en el sistema para que coincidan con la realidad del almacén. El proceso reemplaza la cantidad registrada en el sistema por la cantidad realmente contada, generando los movimientos internos necesarios para dejar el inventario actualizado.

Este procedimiento es delicado y debe realizarse únicamente cuando exista una discrepancia comprobada entre las existencias físicas del almacén y los registros del sistema, por motivos como robo, hurto, error de registro u otras causas justificadas.

::: warning
Solop ERP recomienda que el ajuste de inventario físico sea autorizado y supervisado por los responsables del almacén, el área de contabilidad y la gerencia de la organización antes de ser procesado.
:::

## ¿Cuándo se utiliza?

Se utiliza cuando se necesita:

- Corregir diferencias entre el stock registrado en el sistema y el conteo físico real del almacén
- Registrar pérdidas de inventario por robo, hurto, merma u otras causas justificadas
- Actualizar las existencias tras realizar un conteo periódico o una auditoría de inventario

## Acceso

Menú: Gestión de Materiales → Inventario Físico

## Pestañas

### Conteo de Inventario

Encabezado del documento de inventario físico. Contiene los datos generales del ajuste:

- **Organización** — Organización para la cual se realiza el ajuste de inventario
- **Almacén** — Almacén donde se realizó el conteo físico y se detectó la discrepancia
- **Fecha del movimiento** — Fecha en que se realizó el conteo real en el almacén. Por defecto se carga la fecha del día actual
- **Tipo de documento** — Define el comportamiento del documento. Debe seleccionarse el tipo correspondiente a Inventario Físico
- **Descripción** — Descripción opcional del motivo o contexto del ajuste

### Línea de Conteo de Inventario

Pestaña donde se registra una línea por cada producto que requiere ajuste:

- **Producto** — Producto cuya cantidad se va a corregir
- **Ubicación** — Ubicación exacta dentro del almacén donde se encuentra el producto
- **Cantidad en libros** — Cantidad que el sistema tiene registrada para el producto a la fecha actual. Este campo es informativo y se carga automáticamente
- **Cantidad contada** — Cantidad real que existe físicamente en el almacén. Este es el valor que se ingresa manualmente

## Acciones disponibles

- **Completar**
  Procesa el documento y genera los movimientos de inventario necesarios para llevar la cantidad registrada en el sistema hasta la cantidad contada. Si la cantidad contada es menor, se genera un ajuste negativo; si es mayor, se genera un ajuste positivo.

## Flujo del proceso

### 1. Crear el encabezado del documento

Abrir la ventana **Inventario Físico** y crear un nuevo registro. Seleccionar la organización, el almacén donde se realizó el conteo y la fecha del movimiento. Confirmar que el tipo de documento es **Inventario Físico** y guardar el encabezado.

### 2. Agregar las líneas de productos

Ir a la pestaña **Línea de Conteo de Inventario** y agregar una línea por cada producto que se necesita ajustar. Para cada línea:

1. Seleccionar el **Producto**
2. Indicar la **Ubicación** dentro del almacén
3. El sistema carga automáticamente la **Cantidad en libros** (existencia actual según el sistema)
4. Ingresar la **Cantidad contada** (lo que realmente existe en el almacén)

Repetir este paso para todos los productos que requieran ajuste.

### 3. Completar el documento

Regresar a la pestaña principal **Conteo de Inventario** y seleccionar la acción **Completar**. El sistema genera automáticamente los movimientos necesarios para ajustar cada producto desde su cantidad en libros hasta la cantidad contada.

### 4. Verificar el ajuste

Para confirmar que el inventario quedó correctamente actualizado, ejecutar el reporte **Informe de Inventario Valorado** filtrando por la fecha en que se realizó el ajuste. El reporte mostrará las cantidades en existencia actualizadas para cada producto ajustado.

## Consideraciones importantes

- La **Cantidad en libros** siempre refleja el estado del inventario al día actual, no a una fecha anterior. Por esta razón, si se necesita realizar un ajuste correspondiente a una fecha pasada (por ejemplo, del mes anterior), no es posible hacerlo directamente con este proceso. En ese caso, es necesario contactar al equipo de soporte de Solop ERP para que realice los ajustes correspondientes.
- Los ajustes de inventario afectan directamente las existencias del almacén seleccionado. Es fundamental verificar que el almacén y los productos sean los correctos antes de completar el documento.
- Se recomienda tener a la mano el conteo físico documentado y validado antes de ingresar los datos al sistema.
- Una vez completado el documento, los cambios no pueden revertirse directamente. Cualquier corrección posterior requiere generar un nuevo ajuste.

## Ejemplo de uso

Durante una revisión del almacén central, se detecta que un producto tiene 14 unidades registradas en el sistema pero físicamente solo hay 10 unidades:

1. Abrir la ventana **Inventario Físico** y crear un nuevo registro
2. Seleccionar el **almacén central** y confirmar que la fecha del movimiento corresponde al día del conteo
3. Seleccionar el tipo de documento **Inventario Físico** y guardar el encabezado
4. En la pestaña **Línea de Conteo de Inventario**, agregar una línea para el producto en cuestión
5. El sistema muestra automáticamente **Cantidad en libros: 14**
6. Ingresar **Cantidad contada: 10**
7. Guardar la línea y regresar al encabezado
8. Seleccionar la acción **Completar**
9. El sistema genera el movimiento de ajuste, reduciendo la existencia de 14 a 10 unidades
10. Verificar el resultado ejecutando el **Informe de Inventario Valorado** para la fecha del ajuste

## Verificación con reportes

Después de realizar el ajuste, se puede verificar el estado actualizado del inventario con los siguientes reportes:

- **Informe de Inventario Valorado** — Permite consultar el inventario a una fecha específica, ideal para validar que el ajuste se aplicó correctamente en la fecha del movimiento
- **Detalle de Almacenamiento Simple** — Muestra las cantidades actuales en existencia, reservadas y disponibles por producto y ubicación