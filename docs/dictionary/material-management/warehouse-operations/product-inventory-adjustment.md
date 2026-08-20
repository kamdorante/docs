---
title: Ajuste de Inventario del Producto
category: Documentation
star: 9
sticky: 9
article: false
---

# Ajuste de Inventario del Producto

## Descripción

**Ajuste de Inventario del Producto** es un proceso rápido que ejecuta un **Conteo de Inventario Físico** para un solo producto en un único paso. En lugar de crear el cabezal del documento *Inventario Físico* y luego cargar las líneas manualmente, el proceso arma y completa el documento por dentro con los datos que se le pasan en la pantalla.

Sirve para corregir la existencia de un producto en un almacén cuando el conteo físico difiere de lo que muestra el sistema. La ventaja frente a la ventana clásica *Inventario Físico* es que **el ajuste se calcula y se aplica en el mismo instante**, evitando el escenario en que un cabezal cargado en un día se completa varios días después con una *Cantidad en Libros* ya desactualizada.

::: warning Cuidado con la fecha
Este proceso **saca o ingresa stock** del almacén según la diferencia entre lo contado y lo que hay en libros. Ejecutarlo con una fecha pasada puede afectar reportes históricos y saldos ya conciliados. Verificar bien el producto, la cantidad contada y la fecha antes de ejecutar.
:::

## ¿Cuándo se utiliza?

Se utiliza cuando la organización necesita:

- **Corregir la existencia** de un producto tras un conteo físico que dio distinto al sistema.
- Registrar un ajuste puntual sin abrir la ventana completa de *Inventario Físico*.
- **Evitar el problema clásico** del Inventario Físico tradicional cuando el cabezal se carga en un día y se completa varios días después con una *Cantidad en Libros* que ya no refleja el saldo real.

## Acceso

**Menú:** Gestión de Materiales → Operaciones de Almacén Retail → **Ajuste de Inventario del Producto**.

## Configuración previa

- El **producto** debe existir en el sistema.
- El **almacén** y su **ubicación** deben estar dados de alta.
- Si el producto maneja **conjunto de atributos** (lote, número de serie, etc.), la instancia correspondiente debe existir.
- (Opcional) Un **tipo de documento destino** específico si la organización lo diferencia por motivo (por ejemplo, un tipo para *Ajuste por Conteo*, otro para *Ajuste por Auditoría*).

## Parámetros

| Parámetro | Descripción | Tipo | Obligatorio |
|-----------|-------------|------|-------------|
| Producto | Producto sobre el cual se hace el ajuste | Búsqueda | Sí |
| Almacén Actual | Almacén donde se realizó el conteo | Tabla Directa | Sí |
| Ubicación Actual | Ubicación específica dentro del almacén | Tabla Directa | No |
| Instancia Conjunto de Atributos | Instancia de atributos del producto (lote, serie, etc.) | Búsqueda | No |
| Cantidad Contada | Cantidad **real** que el usuario contó físicamente en la ubicación | Número | Sí |
| Tipo de Documento Destino | Tipo de documento con el que se genera el registro | Tabla | No |
| Fecha del Documento | Fecha del ajuste | Fecha | Sí |
| Acción del Documento | Acción a aplicar (habitualmente *Completar*) | Lista | Sí |
| Descripción | Motivo del ajuste | Texto | No |

## Acciones disponibles

- **Ejecutar Proceso**
  Lanza el ajuste con los parámetros indicados. El sistema:
  1. Consulta la **Cantidad en Libros** actual del producto para el almacén y ubicación indicados.
  2. Calcula la diferencia entre la *Cantidad Contada* y la Cantidad en Libros.
  3. Genera un documento **Inventario Físico** ya completado con el ajuste correspondiente (entrada si contado > libros, salida si contado < libros).

## Flujo del proceso

### 1. Contar físicamente el producto en la ubicación

Antes de ejecutar el proceso, hacer el conteo físico en el almacén y la ubicación específicos. Anotar la cantidad exacta contada.

### 2. Completar los parámetros

Abrir el proceso **Ajuste de Inventario del Producto** y cargar:

- Producto.
- Almacén Actual y Ubicación Actual si corresponde.
- Instancia Conjunto de Atributos si el producto la maneja.
- **Cantidad Contada** — la cantidad real observada en el conteo físico.
- Tipo de Documento Destino si la organización lo diferencia.
- Fecha del Documento — habitualmente la fecha del conteo.
- Descripción (recomendado, para justificar el ajuste).

### 3. Ejecutar

Ejecutar el proceso. El sistema **lee la Cantidad en Libros en ese momento**, calcula la diferencia con la Cantidad Contada y genera el ajuste. Devuelve un mensaje con el número del documento generado.

### 4. Verificar el resultado

Desde **Inventario Físico** confirmar que el documento quedó en estado *Completo* con la línea correspondiente y el ajuste calculado. En el **Buscador de Productos**, la existencia del producto debe coincidir con la Cantidad Contada.

## Ejemplo de uso

En un conteo físico se observan 8 unidades de un producto en una ubicación específica, pero el sistema reporta 10 unidades. Hay que ajustar la existencia:

1. Verificar la Cantidad en Libros actual en el Buscador de Productos: 10.
2. Abrir **Ajuste de Inventario del Producto** y completar:
   - Producto = el producto.
   - Almacén Actual = el almacén afectado.
   - Ubicación Actual = la ubicación específica contada.
   - Cantidad Contada = 8 (la cantidad real).
   - Fecha del Documento = fecha del conteo.
   - Descripción = "Ajuste por conteo físico del día".
3. Ejecutar. El sistema lee libros = 10, calcula diferencia = −2 y genera un Inventario Físico con salida de 2 unidades.
4. Verificar: la existencia del producto en el Buscador es ahora 8.

## Consideraciones importantes

- El proceso lee la **Cantidad en Libros al momento de ejecutar**, no al momento de abrir la pantalla. Es el diferenciador principal frente al Inventario Físico tradicional (donde la Cantidad en Libros se congela al cargar la línea). Esto evita ajustes desactualizados si hubo movimientos entre la carga y la ejecución.
- La **Cantidad Contada** es la cantidad **real** observada en el conteo físico; no es la diferencia. El sistema calcula la diferencia internamente.
- Si el producto **no existe** en el almacén y la Cantidad Contada > 0, el ajuste crea la existencia. Si el producto tiene existencia y la Cantidad Contada = 0, el ajuste saca todo el stock.
- El **Tipo de Documento Destino** puede usarse para diferenciar ajustes por motivo (por conteo diario, por auditoría anual, por corrección manual, etc.) y facilitar el análisis posterior.
- La **Fecha del Documento** debe corresponder al día del conteo físico. Cambiar la fecha a un día pasado puede alterar reportes históricos y saldos ya conciliados.
- La **Descripción** queda registrada en el documento y es la evidencia de por qué se hizo el ajuste. En auditorías, es lo primero que se revisa.
- El proceso **crea y completa** el documento en un mismo paso. Para revertir hay que anular el Inventario Físico generado.
- Este proceso **reemplaza en la práctica** al flujo tradicional cabezal + línea de la ventana *Inventario Físico* cuando se ajusta un solo producto. Para conteos masivos con muchas líneas, sigue conviniendo el flujo tradicional pero con la precaución de completar el documento el mismo día que se carga.

## Ventanas relacionadas

- [Inventario Físico](../inventory-management/physical-inventory)
- [Mover un Producto](move-product)
- [Uso Interno del Producto](product-internal-use)
- [Disponibles para Promesas — Mostrar Detalle](../available-to-promise-detail)
- [Detalle de Transacciones (Analítico)](../product-reports/analytical-inventory-transaction)
