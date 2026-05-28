---
title: Descargar Registros a Planilla
category: Documentation
star: 9
sticky: 9
article: false
---

# Descargar Registros a Planilla

## Descripción

La funcionalidad **Descargar Registros a Planilla** permite exportar a Excel los registros que se visualizan en cualquier ventana del sistema. Es una capacidad transversal: funciona igual en la ventana de *Socio del Negocio*, *Documentos por Cobrar*, *Producto* o cualquier otra, sin necesidad de un reporte programado específico.

La exportación puede hacerse sobre **todos los registros visibles** o sobre un **subconjunto filtrado**. Además, desde la opción de impresora se accede a los reportes de la ventana (formato de impresión o datos en línea), donde es posible aplicar filtros adicionales usando **todos los campos de la tabla** (no solo las columnas visibles en la ventana) antes de descargar el archivo.

## ¿Cuándo se utiliza?

Se utiliza cuando la organización necesita:

- Exportar a Excel los registros de cualquier ventana para análisis, control o envío externo.
- Filtrar un conjunto grande de registros antes de exportarlo (por ejemplo, de todos los socios de negocio a solo los clientes activos).
- Acceder a campos de la tabla que no se muestran en las columnas de la ventana.
- Obtener un listado rápido sin tener que crear un reporte programado.
- Validar que la cantidad de registros del reporte coincide con la de la ventana.

## Acceso

Existen dos formas de descargar registros desde una ventana:

1. **Descarga directa de la grilla:** desde la vista en grilla (multiregistro) de la ventana, usar la acción **Descargar** para exportar los registros visibles a Excel.
2. **Desde la opción de impresora:** abrir el ícono de impresora de la ventana, seleccionar el reporte (formato de impresión o datos en línea) y, una vez en el reporte, usar **Descargar**.

## Tipos de reporte disponibles

Desde la opción de impresora de la ventana se ofrecen dos tipos de salida:

- **Reporte de Formato de Impresión**
  Presenta los registros con un diseño de impresión predefinido para la ventana (por ejemplo, el reporte de *Socio del Negocio*). Mantiene la misma cantidad de registros que la ventana.

- **Reporte de Datos en Línea**
  Presenta los registros en formato tabular con **todos los campos de la tabla**, que suele ser más amplio que las columnas visibles en la ventana. Funciona como un reporte más: admite distintas vistas y permite filtrar y descargar.

## Acciones disponibles

- **Descargar**
  Exporta a Excel los registros actualmente visibles (con los filtros aplicados). Disponible tanto en la grilla de la ventana como en el reporte.

- **Ver Reporte (Impresora)**
  Abre el reporte de la ventana en formato de impresión o datos en línea.

- **Aplicar Filtro Lateral**
  Dentro del reporte de datos en línea, desplegar la pestaña lateral con todos los campos de la tabla y aplicar filtros para reducir el conjunto antes de exportar.

## Flujo del proceso

### 1. Ubicarse en la ventana

Abrir la ventana cuyos registros se desean exportar (por ejemplo, *Socio del Negocio*). Confirmar la cantidad de registros mostrados.

### 2. Elegir el modo de descarga

- Para exportar rápido lo que se ve, usar la **Descarga** directa desde la grilla.
- Para acceder a más campos o aplicar filtros avanzados, abrir el reporte desde la **opción de impresora**.

### 3. Seleccionar el tipo de reporte (si se usa impresora)

Elegir entre **Reporte de Formato de Impresión** (diseño predefinido) o **Reporte de Datos en Línea** (tabla completa con todos los campos).

### 4. Filtrar (opcional)

En el reporte de datos en línea, desplegar la pestaña lateral con todos los campos de la tabla y aplicar los filtros deseados. La cantidad de registros se reduce según el filtro (por ejemplo, de todos los socios de negocio a solo los clientes activos).

### 5. Descargar a Excel

Ejecutar **Descargar**. El sistema genera el archivo Excel con los registros visibles según los filtros aplicados.

## Ejemplo de uso

Exportar solo los clientes activos desde la ventana de Socio del Negocio:

1. Abrir **Socio del Negocio**. La ventana muestra 1.400 registros.
2. Abrir la **opción de impresora** y seleccionar el **Reporte de Datos en Línea**. El reporte muestra los mismos 1.400 registros con todos los campos de la tabla.
3. Desplegar la **pestaña lateral de filtros** y filtrar por *Cliente = Sí* y *Activo = Sí*. El conjunto baja de 1.400 a la cantidad de clientes activos.
4. Ejecutar **Descargar**. Se genera la planilla Excel únicamente con los clientes activos y todos sus campos.

## Consideraciones importantes

- La funcionalidad es **transversal**: aplica a cualquier ventana del sistema, no solo a *Socio del Negocio*.
- La **descarga directa de la grilla** exporta exactamente lo que se ve en pantalla con los filtros activos; es la vía más rápida.
- El **Reporte de Datos en Línea** incluye **todos los campos de la tabla**, que pueden ser muchos más que las columnas visibles. Útil cuando se necesita un dato que la ventana no muestra.
- Conviene **validar la cantidad de registros**: el reporte debe coincidir con la cantidad de la ventana antes de aplicar filtros adicionales.
- Los **filtros de la pestaña lateral** del reporte se aplican sobre los campos de la tabla y reducen el conjunto antes de exportar; la descarga respeta esos filtros.
- El reporte de datos en línea admite **distintas vistas**, por lo que se comporta como un reporte más del sistema.
- La exportación respeta los **permisos del rol**: un usuario solo puede descargar los registros que su rol tiene autorizado ver en esa ventana.

## Ventanas relacionadas

- [Corporación](corporation)
