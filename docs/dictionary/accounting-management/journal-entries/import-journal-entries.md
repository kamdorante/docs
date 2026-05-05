---
title: Importación Masiva de Asientos Contables
category: Documentation
star: 9
sticky: 9
article: false
---

# Importación Masiva de Asientos Contables

## Descripción

La **Importación Masiva de Asientos Contables** es el flujo que permite cargar asientos contables al sistema desde una planilla externa, en dos etapas: primero se sube el archivo al **Cargador de Archivos** para depositar las líneas en una tabla intermedia (**Importar Diario Contable**), y luego se ejecuta el proceso de importación que valida la información y genera el **Lote de Pólizas Contables** con sus notas y líneas correspondientes.

Es la herramienta indicada para registrar asientos de origen externo (liquidaciones de sueldos, devengos mensuales, ajustes contables, asientos de cierre preparados en planilla, asientos de auditoría) sin tener que ingresarlos manualmente uno por uno. Permite cargar varios asientos en un único lote, los valida antes de procesarlos y deja siempre el lote en estado borrador para revisión final antes de completar.

## ¿Cuándo se utiliza?

Se utiliza cuando la organización necesita:

- Cargar asientos contables masivos preparados fuera del sistema (planillas de sueldos, devengos, ajustes periódicos).
- Registrar varios asientos a la vez agrupados en un único lote.
- Importar asientos de auditoría o cierres provistos por contadores externos.
- Validar la consistencia de los asientos antes de generarlos en el sistema.
- Mantener trazabilidad de cargas masivas con un identificador de lote único.

## Acceso

El flujo recorre tres ventanas o procesos:

1. **Cargador de archivos:** Gestión de Datos → Cargador de Archivos → *Importar Nota de Contabilidad → Carga de Asiento Contable*.
2. **Importar Diario Contable** (tabla intermedia): Gestión Contable → Importar Datos → Importar Diario Contable.
3. **Lote de Pólizas Contables** (resultado final): Gestión Contable → Asientos Contables → Lote de Pólizas Contables.

## Estructura del Archivo

La planilla debe seguir un formato estándar provisto con el sistema. Cada fila representa una línea de asiento y la primera fila (encabezado) puede eliminarse antes de cargar para evitar errores. Las columnas son:

| Columna | Descripción | Tipo | Obligatorio |
|---------|-------------|------|-------------|
| Número de Asiento | Identificador del asiento. Cada cambio de número genera un asiento distinto dentro del mismo lote | Texto | Sí |
| Número de Documento | Número del documento contable interno asociado a la línea | Texto | No |
| Cuenta Contable | Código de la cuenta contable del plan de cuentas | Texto | Sí |
| Fecha | Fecha contable de la línea, en formato compatible con el sistema | Fecha | Sí |
| Debe Fuente | Importe débito en moneda original del documento | Número | No |
| Haber Fuente | Importe crédito en moneda original del documento | Número | No |
| Moneda (ISO) | Código ISO de la moneda (UYU, USD, EUR, etc.) | Texto | Sí |
| Descripción | Descripción de la línea | Texto | No |

## Pestañas

### Importar Diario Contable (tabla intermedia)

Pestaña donde quedan las líneas cargadas desde el archivo antes de generar el lote definitivo. La información incluye:

- **Organización**
  Organización a la que pertenecerá el asiento.

- **Cuenta Contable**
  Cuenta del plan de cuentas; se completa con el código importado y se valida contra el plan al ejecutar la validación.

- **Fecha Contable**
  Fecha de la línea importada.

- **Debe Fuente y Haber Fuente**
  Importes en moneda original.

- **Moneda**
  Moneda de la línea (resuelta desde el código ISO).

- **Descripción**
  Descripción importada.

- **Importado**
  Indicador *Sí/No* que marca si la línea ya fue procesada en un lote final.

- **Mensaje de Error de Importación**
  Cuando la validación detecta errores, este campo presenta el motivo (cuenta inexistente, importes no balanceados, etc.).

## Acciones disponibles

- **Cargar Archivo** (desde el Cargador de Archivos)
  Sube el archivo, lo parsea y deposita las líneas en la tabla intermedia. Permite eliminar la primera fila (encabezado) durante la carga.

- **Validar Datos** (desde Importar Diario Contable)
  Ejecuta el proceso con la opción *Solo Validar Datos = Sí* para detectar errores antes de generar el lote.

- **Importar Diario Contable** (proceso final)
  Genera el **Lote de Pólizas Contables** y todas sus notas/líneas a partir de los registros pendientes de la tabla intermedia. El lote queda en estado borrador para revisión.

- **Ver Lote Generado**
  Desde el resultado del proceso, navegar al lote para revisarlo, agregar descripción identificativa y completarlo.

## Parámetros — Importar Diario Contable

| Parámetro | Descripción | Tipo | Obligatorio |
|-----------|-------------|------|-------------|
| Organización | Organización a la que pertenecen los asientos | Tabla Directa | Sí |
| Fecha Contable | Fecha contable de los asientos generados (puede mantenerse la fecha de las líneas) | Fecha | Sí |
| Solo Validar Datos | Si está activo, valida sin generar el lote. Recomendado antes de la importación definitiva | Sí/No | No |
| Importar Solo si No Hay Errores | Si está activo, el proceso aborta sin generar el lote cuando detecta cualquier error | Sí/No | No |

## Flujo del proceso

### 1. Preparar la planilla

En la planilla estándar provista por el sistema, completar las columnas: número de asiento, número de documento, cuenta contable, fecha, debe fuente, haber fuente, moneda ISO y descripción. Cada cambio en el *Número de Asiento* generará un asiento independiente dentro del lote.

### 2. Eliminar el encabezado y descargar como CSV

Eliminar la primera fila de encabezados para que no se interprete como línea de datos. Descargar la planilla como **CSV** en el equipo local.

### 3. Cargar el archivo

Desde **Gestión de Datos → Cargador de Archivos**, seleccionar el formato *Importar Nota de Contabilidad → Carga de Asiento Contable*. Avanzar al siguiente paso, cargar el CSV y validar visualmente que las columnas se interpretan correctamente (fecha, decimales, cuenta, moneda).

### 4. Procesar el cargador

Confirmar y procesar. El sistema informa cuántas líneas fueron importadas (por ejemplo, *26 de 26*). Las líneas quedan disponibles en la tabla intermedia **Importar Diario Contable** con *Importado = No*.

### 5. Validar las líneas pendientes

Abrir **Importar Diario Contable**, filtrar por *Importado = No* y verificar que la cantidad coincide con la del archivo original. Revisar descripciones, importes, decimales, moneda y fecha.

### 6. Ejecutar validación previa

Ejecutar **Acciones → Importar Diario Contable** con **Solo Validar Datos = Sí**. El sistema completa los datos derivados (cuenta, organización, etc.) y reporta errores si existen. Refrescar la vista en grilla para ver el campo *Mensaje de Error de Importación* en cada línea y revisar los problemas detectados.

### 7. Corregir errores

Errores típicos: cuenta contable inexistente, débito/crédito no balanceado por asiento, organización inválida, línea sin importe. Corregir directamente en la tabla intermedia o, si son muchos cambios, ajustar la planilla original y recargar.

### 8. Importar definitivamente

Ejecutar nuevamente **Acciones → Importar Diario Contable** con **Solo Validar Datos = No** y **Importar Solo si No Hay Errores = Sí**. El proceso genera el **Lote de Pólizas Contables** con sus notas y líneas. El sistema informa éxito y deja el lote enlazado en el campo *Lote de Nota Contable* del resultado.

### 9. Revisar y completar el lote

Navegar al **Lote de Pólizas Contables** generado. Cada cambio de *Número de Asiento* en la planilla originó una nota contable independiente dentro del mismo lote. Verificar débito/crédito por nota, agregar una descripción identificativa al lote (por ejemplo, *"Carga masiva sueldos octubre"*) y ejecutar **Completar**.

### 10. Confirmar la contabilización

Una vez completado el lote, todas las notas se contabilizan en el período y la fecha correspondiente. Verificar el botón de contabilizado en cada nota o desde el reporte contable.

## Ejemplo de uso

Cargar la liquidación de sueldos del mes desde una planilla con 3 asientos (26 líneas en total):

1. Llenar la planilla con las 26 líneas, usando 3 valores distintos en *Número de Asiento* (uno por cada centro de costo).
2. Eliminar el encabezado y descargar como CSV.
3. Subir el archivo desde el **Cargador de Archivos → Importar Nota de Contabilidad → Carga de Asiento Contable**. El sistema confirma 26 líneas cargadas.
4. Abrir **Importar Diario Contable**, filtrar por *Importado = No* y verificar las 26 líneas pendientes.
5. Ejecutar la acción con *Solo Validar Datos = Sí*. El sistema reporta que todas las líneas son válidas.
6. Volver a ejecutar la acción con *Solo Validar Datos = No*. El sistema genera el lote con 3 notas contables (una por *Número de Asiento*).
7. Navegar al **Lote de Pólizas Contables**, agregar la descripción *"Carga masiva sueldos octubre"* y completar.
8. Verificar que los 3 asientos quedaron contabilizados en la fecha 31/10 con sus respectivos totales de débito y crédito.

## Consideraciones importantes

- La **primera fila de encabezado** del archivo debe eliminarse antes de cargar; si entra como dato, dará error en la validación. Alternativamente, eliminarla manualmente desde la tabla intermedia antes de procesar.
- Cada **Número de Asiento** distinto en la planilla genera una nota contable independiente dentro del mismo lote. Esto permite cargar varios asientos en una sola operación.
- Se recomienda hacer **una carga por organización** para evitar que la mezcla de organizaciones complique la validación. Si se requiere multi-organización, definir formatos de importación específicos.
- El indicador **Solo Validar Datos = Sí** debe usarse siempre antes de la importación definitiva. La validación detecta errores comunes (cuenta no existente, débito/crédito no balanceado, importes vacíos) sin generar el lote.
- Si los errores aparecen en muchas líneas, verlos en formato **multiregistro/grilla** y refrescar la vista para que el campo *Mensaje de Error de Importación* se actualice.
- El **lote** se genera en estado **borrador** intencionalmente para que el usuario revise totales y descripciones antes de contabilizar.
- El **período contable** se asigna automáticamente según la fecha contable; si la fecha cae fuera de un período abierto, completar el lote fallará. Verificar el calendario contable.
- Las **monedas** se resuelven por código ISO (UYU, USD, EUR, etc.). Si el código no coincide con ninguna moneda activa del sistema, la línea queda con error.
- El proceso siempre toma todas las líneas **pendientes** (con *Importado = No*) de la tabla intermedia. Cargar lotes nuevos sin procesar los anteriores puede mezclar registros. Procesar cada carga antes de subir la siguiente.
- Una vez completado el lote, las notas son inmutables; cualquier corrección posterior debe hacerse mediante un asiento de reverso o uno nuevo de ajuste, según la práctica contable de la organización.

## Ventanas relacionadas

- [Lote de Pólizas Contables](gl-journal-batch)
- [Póliza Contable](gl-journal)
