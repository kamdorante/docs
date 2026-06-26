---
title: Copiar Parámetros de un Navegador
category: Documentation
star: 9
sticky: 9
article: false
---

# Copiar Parámetros de un Navegador (Smart Browser)

## Descripción

La acción **Copiar Parámetros de un Navegador** permite enviar al portapapeles, en texto plano, los **criterios de búsqueda** del Smart Browser (navegador inteligente) que se está utilizando. Junto con esos criterios se incluyen los **datos del servicio** y los **datos de la sesión** (usuario, rol, compañía, organización, almacén).

Es una de las seis acciones de copia documentadas en [Copiar Datos de Auditoría](copy-audit-data).

## ¿Cuándo se utiliza?

Se utiliza cuando se necesita:

- **Reproducir** la misma consulta del navegador en otra sesión o por otro usuario.
- **Compartir el contexto exacto** de un Smart Browser cuando el resultado no es el esperado.
- **Adjuntar a un ticket** los criterios que se cargaron antes de que el navegador devolviera un resultado raro o vacío.

## Acceso

1. Abrir el Smart Browser deseado (por ejemplo, *Sugerir Categoría* desde la ventana de **Producto**).
2. Completar los criterios de búsqueda.
3. Pulsar el botón **Copiar** ubicado en la **barra superior** de la interfaz, **junto al ícono de información** (es el mismo botón que se usa para copiar parámetros de un reporte o datos de una ventana; cambia el contexto).
4. Aparece el mensaje *Copiado*.

![Botón Copiar en la barra superior](/assets/img/docs/basic-rules/copiar.png)

*Ubicación del botón **Copiar** en la barra superior de la interfaz (segundo ícono, al lado del de información). Pulsar mientras el Smart Browser está abierto copia los parámetros del navegador.*

## Qué se copia

| Sección | Contenido |
|---------|-----------|
| Datos del servicio | Información técnica del servicio que generó la respuesta |
| Datos de la sesión | Usuario, rol, compañía, organización, almacén |
| Criterios del navegador | Todos los campos cargados en el Smart Browser (tienda, producto, etc.) |

## Flujo del proceso

### 1. Abrir el Smart Browser

Acceder al navegador desde la ventana correspondiente (acción asociada al registro, menú, etc.).

### 2. Completar los criterios

Cargar los criterios deseados. Confirmar que son los que se quieren documentar.

### 3. Copiar

Pulsar el botón **Copiar** de la barra superior. El sistema muestra *Copiado*.

### 4. Pegar y validar

Pegar (Ctrl + V) en un editor y verificar que los criterios listados coinciden con los cargados.

### 5. Adjuntar al destino

Enviar el bloque al ticket, correo o nota interna que requiera ese contexto.

## Ejemplo de uso

Reportar que el navegador *Sugerir Categoría* devuelve un resultado inesperado:

1. Abrir el producto y ejecutar **Sugerir Categoría**.
2. Cargar tienda = *Mercado Libre* y confirmar.
3. Antes de cerrar el navegador, pulsar el botón **Copiar** de la barra superior. Aparece *Copiado*.
4. Pegar en un ticket: el soporte ve el usuario, rol, organización, almacén y los criterios cargados.
5. Adjuntar también una captura del resultado para complementar.

## Consideraciones importantes

- La copia refleja el **estado actual del Smart Browser** al momento de pulsar el botón. Si se modifican los criterios, hay que volver a copiar.
- El **mismo botón** sirve para Reporte y Ventana; el contenido copiado depende del contexto.
- El contenido es **texto plano**: conviene revisarlo antes de enviar a terceros.
- Si el Smart Browser se cerró antes de copiar, hay que reabrirlo y volver a cargar los criterios.

## Ventanas relacionadas

- [Copiar Datos de Auditoría](copy-audit-data)
- [Copiar Parámetros de un Reporte](copy-report-parameters)
- [Copiar Datos de una Ventana](copy-window-data)
- [Copiar Resultado de un Proceso con Error](copy-process-error)
