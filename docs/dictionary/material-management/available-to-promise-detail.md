---
title: Disponibles para Promesas — Mostrar Detalle
category: Documentation
star: 9
sticky: 9
article: false
---

# Mostrar Detalle en Disponibles para Promesas

## Descripción

**Mostrar Detalle** no es una ventana propia del sistema, sino una **funcionalidad** disponible dentro de la **vista emergente de detalle** del producto, que se abre desde el **Buscador de Productos**.

El flujo es: en el Buscador de Productos se hace **clic sobre una fila de producto**; el sistema abre una **ventana emergente** con el resumen del producto (Código, SKU, precios, cantidades) y una barra con las pestañas *Existencias en Almacén*, *Sustituto*, *Relacionados*, **Disponibles para Promesas** y *Compras de Proveedores*. Dentro de la pestaña **Disponibles para Promesas** aparecen, encima de la grilla, **dos interruptores independientes** que controlan tanto qué se muestra como cómo se calcula la Cantidad Disponible:

- **Mostrar Detalle**: cambia el nivel de agrupamiento de las filas (vista agregada vs. vista detallada por documento e instancia de atributos).
- **Incluir Cant. Ordenada**: modifica la fórmula de la **Cant. Disponible** para que sume la cantidad ordenada al proveedor (proyección de disponibilidad futura si las órdenes de compra ingresan).

Los dos interruptores son independientes y pueden combinarse (cuatro estados posibles). En todos los casos, la ficha superior del producto (Cant. Existencia, Cant. Disponible, Cant. Reservada) no cambia: los interruptores solo afectan la grilla de esta pestaña.

## ¿Cuándo se utiliza?

Se utiliza cuando la organización necesita:

- Confirmar la **existencia real** por almacén y su desglose por **documentos reservantes** (órdenes de venta, órdenes de venta en consignación) e **instancias de atributos**.
- Ver por qué la *Cant. Disponible* de la ficha superior no coincide con lo esperado (por ejemplo, cuando hay reservas con signo negativo por reversos).
- Estimar la **disponibilidad futura** incluyendo lo que está por ingresar por órdenes de compra pendientes, sin abandonar la vista.
- Diferenciar stock por lote, número de serie o cualquier atributo diferenciador al planificar una promesa de entrega.
- Ver las **fechas** asociadas a las reservas y a las órdenes de compra, para estimar cuándo se libera o se reabastece el stock.

## Acceso

Para llegar a los interruptores hay que abrir primero la vista emergente de detalle del producto:

1. Ir a **Vistas → Buscador de Productos**.
2. Usar los filtros de **Criterios de Búsqueda** (código, almacén, proveedor, categoría, grupo, clase, clasificación, versión de lista de precios, etc.) para localizar el producto deseado. Si no se aplican filtros, el sistema lista todos los productos habilitados.
3. **Hacer clic sobre la fila del producto** en la grilla de resultados. Se abre una **ventana emergente** con el encabezado del producto (Código, SKU, UM, Cant. Existencia, Cant. Disponible, Cant. Reservada, precios, proveedor, categoría, grupo, clase, clasificación) y la barra de pestañas.
4. Dentro de la ventana emergente, seleccionar la pestaña **Disponibles para Promesas**.
5. Encima de la grilla aparecen los dos interruptores: **Mostrar Detalle** (a la izquierda) e **Incluir Cant. Ordenada** (a su derecha). Ambos están **desactivados por defecto**.

Las otras pestañas de la vista emergente (*Existencias en Almacén*, *Sustituto*, *Relacionados*, *Compras de Proveedores*) no tienen estos interruptores: son exclusivos de *Disponibles para Promesas*.

## Configuración previa

- El producto debe estar dado de alta y, para que la grilla muestre información útil, tener existencia registrada en al menos un almacén y/o órdenes de compra pendientes.
- Para que el desglose por instancia tenga sentido, el producto debe manejar **conjunto de atributos** (por ejemplo, lote, número de serie u otro atributo diferenciador). Si el producto no tiene atributos diferenciados, activar *Mostrar Detalle* de todos modos desglosa por documentos, pero sin separar la existencia en instancias.

## Interruptores disponibles

### Mostrar Detalle

Controla el **nivel de agrupamiento** de las filas.

- **Desactivado (por defecto)**: la grilla muestra **una fila por almacén** con los totales consolidados: *Cant. Existencia*, *Cant. Reservada*, *Cant. Ordenada* y *Cant. Disponible*.
- **Activado**: la grilla **descompone** los totales en varias filas por almacén:
  - Una fila con la *Cant. Existencia* del almacén (sin documento asociado).
  - Una fila por cada **reserva** pendiente, con su *Socio de Negocios*, *Número de Documento* (por ejemplo, *Orden de Venta*, *OV Consignación*) y *Fecha*.
  - Una fila por cada **orden de compra** pendiente, con su *Socio de Negocios* (proveedor), *Número de Documento* y *Fecha*.
  - Cuando el producto tiene **instancias de atributos** diferenciadas, la fila de existencia se subdivide en una por cada instancia.

### Incluir Cant. Ordenada

Controla si la **Cant. Ordenada** se suma o no al cálculo de la **Cant. Disponible** que muestra la grilla.

- **Desactivado (por defecto)**: la *Cant. Disponible* refleja únicamente lo que se puede prometer con el stock actual.
- **Activado**: la *Cant. Disponible* proyecta la disponibilidad futura sumando la cantidad ordenada al proveedor. Sirve para responder "¿de cuánto voy a disponer cuando ingresen las órdenes de compra pendientes?".

## Cálculo de la Cantidad Disponible

La fórmula que utiliza la grilla es:

```text
Cant. Disponible = Cant. Existencia − Cant. Reservada
```

Si **Incluir Cant. Ordenada** está activo, se agrega el término correspondiente:

```text
Cant. Disponible = Cant. Existencia − Cant. Reservada + Cant. Ordenada
```

Consideraciones matemáticas:

- La **Cant. Reservada** puede ser **negativa** (por ejemplo, cuando se reversa una reserva). En ese caso, el `−` de la fórmula termina **sumando**: `48 − (−13) = 61`. Es un resultado matemáticamente correcto; visualmente puede confundir porque parece que la *Cant. Disponible* aumenta a pesar de haber reservas.
- Con *Incluir Cant. Ordenada* activo, el aumento de la *Cant. Disponible* corresponde a stock que **todavía no ingresó**. Solo se usa como proyección; para promesas firmes conviene mantener el interruptor desactivado.

## Columnas de la grilla

### Con Mostrar Detalle **desactivado** (vista agregada)

| Columna | Descripción |
|---------|-------------|
| Almacén | Almacén sobre el cual se totalizan las cantidades |
| Ubicación | Ubicación por defecto del almacén |
| Cant. Existencia | Existencia física consolidada del producto en el almacén |
| Cant. Reservada | Suma de reservas pendientes que afectan el almacén (puede ser negativa) |
| Cant. Ordenada | Suma de órdenes de compra pendientes al proveedor para ese almacén |
| Cant. Disponible | Resultado de la fórmula (varía según el interruptor *Incluir Cant. Ordenada*) |

### Con Mostrar Detalle **activado** (vista detallada)

Además de las anteriores, aparecen las columnas de detalle. Cada fila corresponde a un evento específico (existencia consolidada, reserva por documento u orden de compra por documento):

| Columna adicional | Descripción |
|-------------------|-------------|
| Socio de Negocios | Cliente en las filas de reserva; proveedor en las filas de orden de compra. Vacío en la fila de existencia |
| Número de Documento | Documento que originó la fila (*Orden de Venta*, *OV Consignación*, *Orden de Compra*, etc.). Vacío en la fila de existencia |
| Fecha | Fecha del documento (para reservas y órdenes de compra) o del movimiento (para existencia por instancia de atributos) |
| Instancia Conjunto de Atributos | Identificador de la instancia de atributos (lote, serie, etc.). Vacío en filas donde el atributo no aplica |

## Acciones disponibles

- **Activar / Desactivar Mostrar Detalle**
  Interruptor superior izquierdo de la grilla. Cambia entre vista agregada y vista detallada por documento e instancia de atributos. No modifica las cantidades totales.

- **Activar / Desactivar Incluir Cant. Ordenada**
  Interruptor a la derecha del anterior. Recalcula la columna *Cant. Disponible* incluyendo o excluyendo la cantidad ordenada al proveedor.

- **Refrescar**
  Vuelve a consultar los datos del producto. Útil si se actualizó una orden de compra o se generó una nueva reserva mientras la ventana estaba abierta.

## Flujo del proceso

### 1. Abrir el producto en el Buscador

Ingresar al **Buscador de Productos** (**Vistas → Buscador de Productos**), aplicar los filtros necesarios y **hacer clic sobre la fila del producto** que se quiere revisar. Se abre la **ventana emergente de detalle** con el encabezado del producto y las pestañas.

### 2. Ir a la pestaña Disponibles para Promesas

Dentro de la ventana emergente, seleccionar la pestaña **Disponibles para Promesas**. Los dos interruptores están desactivados por defecto y la grilla muestra una fila por almacén con los totales consolidados.

### 3. Consultar la vista agregada

Con *Mostrar Detalle* desactivado, evaluar los totales por almacén. Si la *Cant. Disponible* no coincide con lo esperado, revisar la relación entre *Cant. Existencia*, *Cant. Reservada* y *Cant. Ordenada* — en particular verificar si hay reservas con signo negativo.

### 4. Activar Mostrar Detalle para investigar

Pulsar **Mostrar Detalle**. La grilla:

- Agrega las columnas *Socio de Negocios*, *Número de Documento*, *Fecha* e *Instancia Conjunto de Atributos*.
- Divide los totales en filas separadas por documento (reservas y órdenes de compra) y por instancia de atributos (existencia).
- Permite ver **qué documentos** están reservando stock y **cuáles órdenes de compra** están por ingresar.

### 5. Activar Incluir Cant. Ordenada para proyectar disponibilidad futura

Pulsar **Incluir Cant. Ordenada** cuando se necesita saber cuánto habrá disponible una vez que ingresen las órdenes de compra pendientes. La *Cant. Disponible* se recalcula sumando la *Cant. Ordenada*.

### 6. Volver a la vista de referencia

Desactivar los interruptores para regresar al cálculo estándar y la vista agregada.

## Ejemplo de uso

Un producto tiene *Cant. Existencia = 48* en un almacén, *Cant. Reservada = −13* (por un reverso), *Cant. Ordenada = 212* en órdenes de compra pendientes.

**Estado 1 — Mostrar Detalle OFF / Incluir Cant. Ordenada OFF (vista por defecto):**

- Una fila con *Cant. Existencia 48*, *Cant. Reservada −13*, *Cant. Ordenada 212*, *Cant. Disponible = 48 − (−13) = 61*.

**Estado 2 — Mostrar Detalle OFF / Incluir Cant. Ordenada ON:**

- Una fila con las mismas cantidades, pero *Cant. Disponible = 48 − (−13) + 212 = 273*. Es la proyección futura.

**Estado 3 — Mostrar Detalle ON / Incluir Cant. Ordenada OFF:**

- Fila de *Cant. Existencia* del almacén: 48.
- Fila por cada reserva pendiente: por ejemplo, una *Orden de Venta* al cliente A con −5 y una *OV Consignación* al cliente B con −8, cada una con su fecha.
- Fila por cada orden de compra pendiente: por ejemplo, dos órdenes al proveedor P con 160 y 52 unidades, cada una con su fecha.
- La *Cant. Disponible* de cada fila mantiene el cálculo sin *Incluir Cant. Ordenada*.

**Estado 4 — Mostrar Detalle ON / Incluir Cant. Ordenada ON:**

- Mismo desglose que el Estado 3, pero la *Cant. Disponible* refleja la proyección con las órdenes de compra incluidas.

Combinaciones útiles en la operación:

- **Estados 1 o 3** para **prometer entrega hoy** con stock físico.
- **Estados 2 o 4** para **prometer entrega tras el ingreso** de órdenes de compra pendientes.
- **Estado 3** para **identificar quién** está reservando el stock y con **qué documento**.

## Consideraciones importantes

- **Mostrar Detalle no es una ventana propia** del sistema: es un interruptor dentro de una **pestaña** (*Disponibles para Promesas*) de la **vista emergente de detalle** del producto. No aparece en el menú principal ni en el diccionario como ventana; se accede siempre desde el Buscador de Productos.
- La ficha superior del producto (Cant. Existencia, Cant. Disponible, Cant. Reservada) **no cambia** con los interruptores: refleja siempre el consolidado.
- La **Cant. Disponible de la grilla** puede diferir de la ficha superior cuando *Incluir Cant. Ordenada* está activo, porque la fórmula suma la *Cant. Ordenada*.
- Cuando la **Cant. Reservada** es **negativa** (por reversos), el signo `−` de la fórmula convierte esa resta en suma. No es un error: refleja que el stock se liberó al reversar la reserva.
- Un producto **sin instancias de atributos diferenciadas** no se desglosa por atributos al activar el detalle; sí se desglosa por documentos (reservas y órdenes de compra).
- La suma de las cantidades por instancia debe coincidir con la **Cant. Existencia** total del almacén. Si se observa una diferencia, ejecutar [Actualizar Almacenamiento](update-storage) para reconciliar el inventario consolidado antes de sacar conclusiones.
- Las columnas *Socio de Negocios*, *Número de Documento*, *Fecha* e *Instancia Conjunto de Atributos* solo aparecen cuando *Mostrar Detalle* está activo. Al desactivarlo, se ocultan.
- Esta vista es de **consulta**: no permite editar cantidades, reservar stock ni modificar órdenes desde la grilla. Para operar sobre esos datos, ir al documento origen (orden de venta, orden de compra, entrega, etc.).
- Los cambios de reserva o compra realizados mientras la ventana está abierta no se reflejan hasta pulsar **Refrescar** o volver a abrir la pestaña.

## Ventanas relacionadas

- [Producto](material-rules/product)
- [Reservas de Productos](product-reservations)
- [Instantánea de Almacenamiento](storage-snapshot)
- [Actualizar Almacenamiento](update-storage)
