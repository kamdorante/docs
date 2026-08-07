---
title: Copiar Formato de Impresión entre Instancias
category: Documentation
star: 9
sticky: 9
article: false
---

# Copiar Formato de Impresión entre Instancias

## Descripción

**Copiar Formato de Impresión entre Instancias** permite llevar un **formato de impresión** (o una **definición de reporte**) ya afinado en una instancia de Solop hacia otra instancia distinta, sin tener que recrearlo manualmente. El mecanismo se basa en **exportar** el registro del formato a un archivo **ARXML** en la instancia origen y **cargar** ese mismo archivo en la instancia destino a través del proceso *Load New Report Definition* (Cargar Nueva Definición de Reporte).

Es una operación administrativa que sirve para **replicar diseños de reportes** entre ambientes (por ejemplo, de un ambiente de prueba a producción, o de una organización piloto a las demás) manteniendo la estructura, columnas, agrupamientos y ordenamiento del formato original.

## ¿Cuándo se utiliza?

Se utiliza cuando la organización necesita:

- Publicar en producción un formato de impresión que se ajustó en un ambiente de prueba.
- Replicar el diseño de un reporte que ya está bien armado en una instancia hacia otras instancias.
- Compartir un formato con otra empresa o filial que trabaja sobre otra instancia de Solop.
- Recuperar rápidamente un formato luego de una migración o de una restauración parcial.

## Acceso

La operación involucra **dos ventanas**, en instancias distintas:

- **Instancia origen** — desde la ventana del formato de impresión o reporte que se quiere copiar, se ejecuta la acción **Exportar Registros** en formato **ARXML**.
- **Instancia destino** — desde el menú de administración se ejecuta el proceso **Load New Report Definition** (Cargar Nueva Definición de Reporte) y se selecciona el archivo ARXML previamente exportado.

Ambas ventanas requieren un rol con permisos de administración adecuados.

## Configuración previa

- El usuario debe operar con un **rol con permisos** para exportar registros en la instancia origen y para cargar nuevas definiciones de reporte en la instancia destino.
- Las tablas, columnas y datos maestros que el formato referencia (por ejemplo, campos del reporte de origen) deben **existir en la instancia destino** con la misma estructura. Si el formato depende de columnas o vistas que no están en el destino, la carga puede fallar o quedar parcial.
- Es recomendable **respaldar** la instancia destino antes de cargar definiciones nuevas.

## Parámetros

### Al exportar (instancia origen)

| Parámetro | Descripción | Tipo | Obligatorio |
|-----------|-------------|------|-------------|
| Formato de salida | Formato del archivo exportado. Debe seleccionarse **ARXML** para que la definición se pueda cargar en otra instancia | Lista | Sí |
| Carpeta de destino | Ubicación local donde se guarda el archivo ARXML | Ruta de archivo | Sí |

### Al cargar (instancia destino)

| Parámetro | Descripción | Tipo | Obligatorio |
|-----------|-------------|------|-------------|
| Archivo ARXML | Archivo previamente exportado desde la instancia origen | Archivo | Sí |

## Acciones disponibles

- **Exportar Registros (ARXML)**
  Acción que se ejecuta sobre el formato de impresión (o el reporte) en la instancia origen. Genera un archivo `.arxml` con la definición serializada del registro y sus dependencias directas.

- **Load New Report Definition**
  Proceso administrativo que se ejecuta en la instancia destino. Lee el archivo ARXML seleccionado y crea (o actualiza) el formato correspondiente en la base destino.

- **Refrescar**
  Acción de la instancia destino para actualizar la vista y comprobar que el nuevo formato quedó disponible.

## Flujo del proceso

### 1. Ubicar el formato en la instancia origen

Abrir en la instancia origen el formato de impresión (o la definición del reporte) que se quiere copiar. Verificar que el diseño se ve correcto en pantalla y que el formato produce el reporte esperado.

### 2. Exportar el registro a ARXML

Desde la ventana del formato, ejecutar **Exportar Registros** y seleccionar el formato **ARXML**. Elegir una carpeta local donde guardar el archivo. El sistema genera un archivo `.arxml` con la definición del formato.

### 3. Trasladar el archivo a la instancia destino

Trasladar el archivo ARXML al equipo o red desde el cual se accede a la instancia destino (por ejemplo, guardarlo en el escritorio o en una carpeta compartida). El contenido del archivo no debe editarse manualmente.

### 4. Ejecutar Load New Report Definition

En la instancia destino, abrir el proceso **Load New Report Definition** y seleccionar el archivo ARXML. Confirmar. El sistema procesa la carga y devuelve un mensaje de éxito o error.

### 5. Refrescar y verificar

Volver a la ventana correspondiente al reporte / formato en la instancia destino y **refrescar**. El nuevo formato aparece disponible en el selector de formatos del reporte. Ejecutar el reporte con ese formato y verificar visualmente que el diseño coincide con el original.

### 6. (Opcional) Repetir para otras instancias

Si el formato debe replicarse a más de una instancia, repetir los pasos 4 y 5 en cada instancia destino usando el mismo archivo ARXML.

## Ejemplo de uso

Replicar un reporte de *Detalle de Transacciones* que ya está bien armado en un ambiente de prueba hacia el ambiente de producción:

1. En la instancia de prueba, abrir el reporte **Detalle de Transacciones** y confirmar que su diseño y columnas son los esperados.
2. Ejecutar **Exportar Registros** sobre el formato de impresión asociado, seleccionando **ARXML**. Guardar el archivo en una carpeta local.
3. Trasladar el archivo al equipo desde el cual se accede a la instancia de producción.
4. En producción, ejecutar **Load New Report Definition** y seleccionar el ARXML. Esperar el mensaje de *Éxito*.
5. Abrir el reporte en producción, refrescar y elegir el nuevo formato en el selector. El reporte muestra el mismo diseño que se vio en la instancia de prueba.

## Consideraciones importantes

- El **formato ARXML** es un archivo de intercambio propio de la plataforma. No debe editarse manualmente: cualquier modificación externa puede corromperlo y hacer que la carga falle.
- El proceso replica el **diseño del formato** (columnas, agrupamientos, ordenamientos, títulos, secciones). No copia datos operativos ni saldos: los valores que muestre el reporte en la instancia destino corresponden a los datos de esa instancia.
- Si el formato depende de columnas o vistas que **no existen** en la instancia destino (por ejemplo, un campo agregado por una personalización que no está desplegada), la carga puede fallar o dejar el formato parcialmente cargado. Conviene alinear las estructuras antes de la copia.
- El proceso **crea** el formato si no existe en el destino; si ya existe con la misma clave, puede **actualizarlo** o crear una versión adicional según cómo esté configurado. Revisar el resultado tras la carga para confirmar el comportamiento en cada caso.
- Es una **operación administrativa**: requiere un rol con permisos suficientes tanto para exportar como para cargar definiciones. Un rol operativo estándar no ve estas opciones.
- La operación **no requiere reinicio del servidor**: el formato queda disponible al refrescar la ventana del reporte.
- Conviene **respaldar** la instancia destino antes de cargar definiciones nuevas, especialmente si el formato ya existe y va a ser reemplazado.
- Para formatos que dependen de otros formatos o de subreportes, verificar tras la carga que las dependencias también estén presentes en la instancia destino. Si falta alguna, exportarlas y cargarlas siguiendo el mismo procedimiento.

## Ventanas relacionadas

- [Copiar Formato de Impresión con Conversión](admin-tools/copy-print-format)
- [Copiar Organización](admin-tools/copy-organization)
- [Copiar Entidades con Nueva Moneda](admin-tools/copy-entities-with-new-currency)
- [Descargar Registros a Planilla](export-records-to-spreadsheet)
