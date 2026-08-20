---
title: Mover un Producto
category: Documentation
star: 9
sticky: 9
article: false
---

# Mover un Producto

## Descripción

**Mover un Producto** es un proceso rápido que ejecuta un **Movimiento de Inventario completo** para un solo producto y en un único paso. En lugar de crear el cabezal del documento *Movimiento de Inventario* y luego cargar las líneas manualmente, el proceso arma y completa el documento por dentro con los datos que se le pasan en la pantalla.

Sirve para traspasar existencia entre dos almacenes (o entre dos ubicaciones dentro de un mismo almacén) sin abrir la ventana completa de *Movimiento de Inventario*. Está pensado para operaciones cotidianas de almacén retail donde el usuario necesita mover un ítem específico sin la sobrecarga de armar un documento con múltiples líneas.

## ¿Cuándo se utiliza?

Se utiliza cuando la organización necesita:

- Trasladar un producto entre dos almacenes de la misma organización.
- Mover un producto a un almacén de descarte o "scrap".
- Corregir la ubicación de un producto que quedó cargado en el almacén equivocado.
- Ejecutar un movimiento puntual sin tener que abrir la ventana completa de *Movimiento de Inventario*.

## Acceso

**Menú:** Gestión de Materiales → Operaciones de Almacén Retail → **Mover un Producto**.

## Configuración previa

- El **producto** debe existir en el sistema y tener existencia en el almacén de origen (con o sin ubicación específica).
- El **almacén de origen** y el **almacén destino** deben estar dados de alta. Puede tratarse del mismo almacén con ubicaciones distintas si lo que se necesita es reubicar internamente.
- Si el producto maneja **conjunto de atributos** (lote, número de serie, etc.), la instancia correspondiente debe existir y tener stock disponible.
- (Opcional) Si el traslado se registra formalmente como una orden de distribución, la organización debe tener configurada la Red de Distribución y los tipos de documento correspondientes.

## Parámetros

| Parámetro | Descripción | Tipo | Obligatorio |
|-----------|-------------|------|-------------|
| Producto | Producto que se va a mover | Búsqueda | Sí |
| Almacén Actual | Almacén de origen donde se encuentra la existencia | Tabla Directa | Sí |
| Ubicación Actual | Ubicación específica dentro del almacén de origen | Tabla Directa | No |
| Almacén Destino | Almacén al que se va a mover el producto | Tabla Directa | Sí |
| Ubicación Destino | Ubicación específica dentro del almacén destino | Tabla Directa | No |
| Instancia Conjunto de Atributos | Instancia de atributos del producto (lote, serie, etc.) | Búsqueda | No |
| Cantidad de Movimiento | Cantidad a trasladar | Número | Sí |
| Crear Orden de Distribución | Si se marca, el proceso genera además una orden de distribución que documenta formalmente el traslado | Casilla | No |
| Fecha del Documento | Fecha del movimiento generado | Fecha | Sí |
| Acción del Documento | Acción a aplicar (habitualmente *Completar*) | Lista | Sí |
| Descripción | Motivo o comentario del movimiento | Texto | No |

## Acciones disponibles

- **Ejecutar Proceso**
  Lanza el movimiento con los parámetros indicados. El sistema genera un documento de **Movimiento de Inventario** ya completado que se puede consultar desde la ventana correspondiente.

- **Crear Orden de Distribución (opcional)**
  Si se marca la casilla en los parámetros, además del movimiento se genera una orden de distribución que documenta el traslado con su cabezal, prioridad y regla de entrega.

## Flujo del proceso

### 1. Verificar la existencia en origen

Antes de ejecutar el proceso, confirmar en el **Buscador de Productos** o en la pestaña *Existencias en Almacén* que el producto tiene la cantidad suficiente en el almacén de origen. Si no la tiene, el proceso falla.

### 2. Completar los parámetros

Abrir el proceso **Mover un Producto** y cargar:

- Producto.
- Almacén Actual (origen) y su Ubicación Actual si corresponde.
- Almacén Destino y su Ubicación Destino si corresponde.
- Instancia Conjunto de Atributos si el producto la maneja.
- Cantidad a mover.
- Fecha del Documento.
- Descripción (recomendado, para dejar registrada la razón del traslado).

### 3. (Opcional) Marcar Crear Orden de Distribución

Marcar la casilla si se necesita que el traslado quede documentado como orden de distribución. Si se deja desmarcado, solo se genera el movimiento de inventario.

### 4. Ejecutar

Ejecutar el proceso. El sistema crea y completa el documento del movimiento y devuelve un mensaje con el resultado.

### 5. Verificar el resultado

Desde **Movimiento de Inventario** (o desde el reporte de **Detalle de Transacciones**) confirmar que el traslado quedó registrado con la fecha y las cantidades esperadas. En el **Buscador de Productos**, la existencia debe haber bajado en el almacén origen y subido en el almacén destino.

## Ejemplo de uso

Trasladar 5 unidades de un producto desde el almacén *A* hacia el almacén *B* de la misma organización:

1. Verificar en el Buscador de Productos que el producto tiene al menos 5 unidades en el almacén *A*.
2. Abrir **Mover un Producto** y completar:
   - Producto = el producto.
   - Almacén Actual = *A*.
   - Almacén Destino = *B*.
   - Cantidad de Movimiento = 5.
   - Fecha del Documento = hoy.
   - Descripción = "Reubicación por reorganización de bodega".
3. Dejar *Crear Orden de Distribución* sin marcar (traslado interno, no requiere orden).
4. Ejecutar. El sistema devuelve el número del movimiento generado.
5. Verificar: el almacén *A* ya tiene 5 unidades menos y el almacén *B* tiene 5 unidades más.

## Consideraciones importantes

- El proceso **crea y completa** el documento en un mismo paso. No queda en borrador, así que hay que estar seguro de los parámetros antes de ejecutar.
- Si el producto **no tiene stock suficiente** en el almacén origen, el proceso falla. Validar la existencia antes.
- La **Fecha del Documento** define en qué fecha queda registrado el movimiento. Es la fecha que va a usar el reporte de Detalle de Transacciones y los cálculos de saldos por fecha.
- Marcar **Crear Orden de Distribución** cuando el traslado se hace entre organizaciones o entre ubicaciones geográficamente distantes: la orden de distribución permite trazar el movimiento por su cabezal y aplicar el flujo completo con almacén en tránsito.
- El proceso es equivalente a abrir la ventana **Movimiento de Inventario**, crear un cabezal con una única línea del producto y completarlo. La diferencia es únicamente de agilidad: se ahorra el cabezal y la carga manual.
- La **Descripción** queda registrada en el documento generado y es útil para auditar la razón del traslado.

## Ventanas relacionadas

- [Uso Interno del Producto](product-internal-use)
- [Ajuste de Inventario del Producto](product-inventory-adjustment)
- [Inventario Físico](../inventory-management/physical-inventory)
- [Orden de Distribución](../../distribution-management/distribution-order)
- [Disponibles para Promesas — Mostrar Detalle](../available-to-promise-detail)
