---
title: Uso Interno del Producto
category: Documentation
star: 9
sticky: 9
article: false
---

# Uso Interno del Producto

## Descripción

**Uso Interno del Producto** es un proceso rápido que ejecuta un **Inventario de Uso Interno** para un solo producto en un único paso. En lugar de crear el cabezal del documento *Inventario de Uso Interno* y luego cargar las líneas manualmente, el proceso arma y completa el documento por dentro con los datos que se le pasan en la pantalla.

El resultado es la **salida** del stock del almacén hacia una cuenta contable de cargo, para registrar un consumo que no genera factura al cliente (por ejemplo, uso interno, muestras, roturas, mermas administrativas, consumo de la propia organización).

::: warning
Este proceso **saca stock del almacén**. Verificar bien el producto, la cantidad y el cargo antes de ejecutar; una vez completado, la salida queda registrada y para revertirla hay que anular el documento generado.
:::

## ¿Cuándo se utiliza?

Se utiliza cuando la organización necesita:

- Registrar el **consumo interno** de un producto (por ejemplo, materiales de oficina, insumos operativos).
- Dar de baja unidades por **rotura, merma o descarte** documentados.
- Sacar de stock **muestras** entregadas sin factura.
- Ejecutar la salida sin abrir la ventana completa de *Inventario de Uso Interno*.

## Acceso

**Menú:** Gestión de Materiales → Operaciones de Almacén Retail → **Uso Interno del Producto**.

## Configuración previa

- El **producto** debe existir en el sistema y tener existencia en el almacén desde el cual se registra la salida.
- El **almacén** y su **ubicación** deben estar dados de alta.
- Si el producto maneja **conjunto de atributos** (lote, número de serie, etc.), la instancia correspondiente debe existir y tener stock disponible.
- Debe existir un **cargo** contable apropiado para imputar la salida. El cargo determina en qué cuenta contable se refleja el consumo.
- (Opcional) Un **tipo de documento destino** específico si la organización lo diferencia por motivo (por ejemplo, un tipo para *Muestras*, otro para *Roturas*).

## Parámetros

| Parámetro | Descripción | Tipo | Obligatorio |
|-----------|-------------|------|-------------|
| Producto | Producto que se está dando de baja | Búsqueda | Sí |
| Almacén Actual | Almacén desde el cual sale la existencia | Tabla Directa | Sí |
| Ubicación Actual | Ubicación específica dentro del almacén | Tabla Directa | No |
| Instancia Conjunto de Atributos | Instancia de atributos del producto (lote, serie, etc.) | Búsqueda | No |
| Cantidad de Uso Interno | Cantidad que se da de baja | Número | Sí |
| Cargo | Cargo contable al que se imputa la salida | Búsqueda | No |
| Tipo de Documento Destino | Tipo de documento con el que se genera el registro | Tabla | No |
| Fecha del Documento | Fecha del documento generado | Fecha | Sí |
| Acción del Documento | Acción a aplicar (habitualmente *Completar*) | Lista | Sí |
| Descripción | Motivo o comentario de la salida | Texto | No |

## Acciones disponibles

- **Ejecutar Proceso**
  Lanza la salida con los parámetros indicados. El sistema genera un documento de **Inventario de Uso Interno** ya completado que se puede consultar desde la ventana correspondiente.

## Flujo del proceso

### 1. Verificar la existencia en el almacén

Antes de ejecutar el proceso, confirmar en el **Buscador de Productos** o en la pestaña *Existencias en Almacén* que el producto tiene la cantidad suficiente. Si no la tiene, el proceso falla.

### 2. Completar los parámetros

Abrir el proceso **Uso Interno del Producto** y cargar:

- Producto.
- Almacén Actual y Ubicación Actual si corresponde.
- Instancia Conjunto de Atributos si el producto la maneja.
- Cantidad de Uso Interno.
- Cargo contable al que se imputa la salida.
- Tipo de Documento Destino si la organización lo diferencia.
- Fecha del Documento.
- Descripción (recomendado, para dejar registrado el motivo).

### 3. Ejecutar

Ejecutar el proceso. El sistema crea y completa el documento y devuelve un mensaje con el número asignado.

### 4. Verificar el resultado

Desde **Inventario de Uso Interno** confirmar que el documento quedó en estado *Completo* con la línea correspondiente. En el **Buscador de Productos**, la existencia del almacén debe haber bajado por la cantidad indicada.

## Ejemplo de uso

Dar de baja 2 unidades de un producto por rotura detectada en un control de calidad:

1. Verificar en el Buscador de Productos que el producto tiene al menos 2 unidades en el almacén.
2. Abrir **Uso Interno del Producto** y completar:
   - Producto = el producto.
   - Almacén Actual = el almacén afectado.
   - Cantidad de Uso Interno = 2.
   - Cargo = *Merma / Rotura* (o el cargo que la organización defina).
   - Fecha del Documento = hoy.
   - Descripción = "Rotura detectada en control de calidad".
3. Ejecutar. El sistema devuelve el número del documento generado.
4. Verificar: la existencia del almacén tiene 2 unidades menos y el reporte contable refleja la salida en la cuenta del cargo indicado.

## Consideraciones importantes

- El proceso **crea y completa** el documento en un mismo paso. No queda en borrador; para revertir hay que anular el documento desde la ventana **Inventario de Uso Interno**.
- El proceso **saca stock**. Si el producto no tiene existencia suficiente, la ejecución falla.
- El **cargo** determina la cuenta contable donde se refleja la salida. Es recomendable definir cargos específicos por motivo (rotura, muestra, consumo administrativo) para facilitar el análisis posterior.
- La **Fecha del Documento** define en qué fecha queda registrada la salida. Es la fecha que va a usar el reporte de Detalle de Transacciones y los cálculos de saldos por fecha.
- La **Descripción** queda registrada en el documento y es útil para auditar la razón de la baja, en especial cuando el cargo es genérico.
- Este proceso **no reemplaza** al Inventario Físico ni al Ajuste de Inventario: se usa para consumos, no para corregir un conteo. Para corregir una diferencia detectada en un conteo, ver [Ajuste de Inventario del Producto](product-inventory-adjustment).

## Ventanas relacionadas

- [Mover un Producto](move-product)
- [Ajuste de Inventario del Producto](product-inventory-adjustment)
- [Inventario Físico](../inventory-management/physical-inventory)
- [Cargo](../../accounting-management/accounting-rules/charge)
- [Disponibles para Promesas — Mostrar Detalle](../available-to-promise-detail)
