---
title: Exportar Ventas a Shoppings
category: Documentation
star: 9
sticky: 9
article: false
---

# Exportar Ventas a Shoppings

## Descripción

El proceso **Exportar Ventas a Shoppings** envía los documentos por cobrar (facturas, recibos y documentos asociados) a la administración del shopping correspondiente. Puede ejecutarse de forma manual desde el menú (para exportar en lote) o directamente sobre un documento individual, y también se dispara automáticamente a través de una cola de notificaciones cuando el documento se completa.

El proceso resuelve el rubro de cada producto a partir del grupo de materiales y lo reporta al shopping junto con los datos del documento. El resultado queda registrado en la bitácora de envío y en la ventana **Registro de Shopping**.

## ¿Cuándo se utiliza?

Se utiliza cuando la organización necesita:

- Enviar al shopping las ventas generadas en el día.
- Reenviar un documento que no se procesó automáticamente por la cola.
- Exportar de forma controlada un documento específico después de completarlo.
- Diagnosticar problemas de integración revisando el resultado del envío por documento.

## Acceso

Existen tres formas de ejecutar la exportación:

1. **Desde el menú (manual, en lote):** Gestión de Compras → Gestión de Shopping → Exportar Ventas a Shoppings.
2. **Desde el documento por cobrar:** abrir la factura → acciones asociadas → **Exportar Documento a Shopping**.
3. **Automática:** al completar un documento, el sistema lo registra en la cola de notificaciones y el envío se ejecuta en el siguiente ciclo programado.

## Parámetros

| Parámetro | Descripción | Tipo | Obligatorio |
|-----------|-------------|------|-------------|
| Conexión de Shopping | Conexión al shopping destino. Si se omite, el sistema intenta resolver el shopping a partir de la organización del documento | Búsqueda | No |
| Factura | Documento por cobrar a exportar. Si se omite, se procesan todos los documentos pendientes de envío para la conexión | Búsqueda | No |
| Organización | Organización de los documentos a exportar | Tabla | No |
| Fecha Desde / Fecha Hasta | Rango de fechas del documento | Fecha | No |

## Acciones disponibles

- **Exportar Documento a Shopping**
  Acción disponible en el documento por cobrar. Exporta ese documento puntual al shopping seleccionado y registra el resultado en la bitácora.

- **Ver Histórico de Procesos**
  Permite consultar la ejecución previa del proceso y sus mensajes.

- **Ver Bitácora de Envío a Shopping**
  Subpestaña del documento por cobrar donde se listan los envíos realizados, con la conexión utilizada, el número de referencia devuelto y el estado del envío.

## Flujo del proceso

### 1. Completar el documento por cobrar

Crear y completar la factura de venta en la organización correspondiente. El producto facturado debe tener asignado un grupo de materiales, y ese grupo debe tener un rubro de shopping asociado para la conexión destino.

### 2. Verificar que el envío automático procedió

Abrir la pestaña **Bitácora de Envío a Shopping** dentro del documento. Si hay un registro con la conexión y un número de referencia, el envío automático funcionó y no es necesario ejecutar el proceso manual.

### 3. Ejecutar la exportación manual (si corresponde)

Si la bitácora del documento está vacía, ejecutar **Exportar Ventas a Shoppings** desde el menú indicando la factura y la conexión de shopping, o usar la acción **Exportar Documento a Shopping** desde el propio documento.

### 4. Revisar el resultado

Consultar la bitácora del documento y la ventana **Registro de Shopping** para verificar que el envío fue exitoso. En caso de error, el registro mostrará el mensaje devuelto por el shopping (por ejemplo, rubro no asignado, organización sin datos).

### 5. Corregir y reenviar

Si el envío falló, corregir la causa indicada en el log (mapeo de rubro, datos de la organización, conexión) y volver a ejecutar la acción desde el documento o el proceso en lote.

## Ejemplo de uso

Una cajera genera una venta POS en un local de un shopping y necesita confirmar que la factura se envió a la administración del shopping:

1. Completar la orden de venta y la factura en el POS.
2. Abrir la factura desde **Documentos por Cobrar**.
3. En la subpestaña **Bitácora de Envío a Shopping**, verificar que hay un registro con la conexión del shopping y un número de referencia. Si lo hay, el envío automático se ejecutó correctamente.
4. Si la bitácora está vacía, ejecutar **Exportar Documento a Shopping** seleccionando la conexión correspondiente.
5. Confirmar en la bitácora el envío exitoso y el número de referencia devuelto por el shopping.

## Consideraciones importantes

- La **organización del documento** debe coincidir con la organización configurada en la conexión del shopping. Si no coinciden, el sistema muestra el mensaje *"no tiene la organización que nos vale"* y el documento no se exporta.
- Si un mismo shopping está configurado en dos conexiones diferentes con la misma organización, el sistema exporta el documento a ambas conexiones.
- Para el envío automático, el **procesador de cola de notificaciones** debe estar activo en el sistema. Si la cola no se procesa, los documentos quedan pendientes y deben enviarse manualmente.
- Si la bitácora del documento está vacía después de completarlo, la causa más común es que la cola automática no procesó el documento. El envío manual sigue funcionando.
- Un error típico al exportar es *"route no encontrado"*: significa que la organización no tiene el número de RUT / identificador formateado correctamente. Revisar los datos de la organización y volver a ejecutar *Obtener Información de Organización*.
- Si el producto se mapea solo con rubros de algunos shoppings, el envío fallará cuando el documento sea de otra organización cuyo shopping no tenga el rubro asignado. Revisar la pestaña *Asignación de Rubro de Shopping* del grupo de materiales.

## Ventanas relacionadas

- [Rubro de Shopping](shopping-category)
- [Obtener Información de Organización](get-organization-info)
- [Registro de Shopping](shopping-record-log)
