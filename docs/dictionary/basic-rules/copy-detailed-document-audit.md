---
title: Copiar Auditoría Detallada de un Documento
category: Documentation
star: 9
sticky: 9
article: false
---

# Copiar Auditoría Detallada de un Documento

## Descripción

La acción **Copiar Auditoría Detallada de un Documento** permite enviar al portapapeles, en texto plano, el **Histórico de Cambios completo** del documento, incluyendo **el detalle de cada cambio**: qué campo se modificó, valor anterior y valor nuevo, en cada una de las actualizaciones registradas.

Es la versión **extendida** de la auditoría: además de quiénes y cuándo intervinieron, muestra **exactamente qué se cambió**. Para una versión resumida (sin el detalle de cada campo), ver [Copiar Auditoría de un Documento](copy-document-audit).

Es una de las seis acciones de copia documentadas en [Copiar Datos de Auditoría](copy-audit-data).

## ¿Cuándo se utiliza?

Se utiliza cuando se necesita:

- **Demostrar qué se modificó** exactamente en un documento (campo, valor previo, valor nuevo).
- **Reportar a soporte** un documento que cambió de forma inesperada, adjuntando la traza completa.
- **Investigar** una incidencia donde lo importante no es solo quién intervino, sino qué dato se alteró.
- **Sustentar una auditoría interna** que requiera evidencia de cambios específicos.

## Acceso

1. Abrir el documento (por ejemplo, una *Orden de Venta*).
2. Pulsar **Histórico de Cambios** del registro. Se abre la ventana modal del histórico.
3. **Activar el interruptor** *Ver todos los cambios* (esquina inferior derecha de la ventana modal). El histórico se expande y muestra el detalle de cada cambio.
4. Pulsar **Copiar Contenido** en la parte superior derecha. Aparece *Copiado*.

![Botón Copiar Contenido con Ver todos los cambios activado](/assets/img/docs/basic-rules/copiar-auditoria-detallada.png)

*Ventana modal **Histórico de Cambios** con el interruptor **Ver todos los cambios** activado y el botón **Copiar Contenido** en la parte superior derecha (auditoría detallada).*

## Diferencia con la auditoría resumida

| Aspecto | Auditoría resumida | Auditoría detallada |
|---------|--------------------|---------------------|
| Interruptor *Ver todos los cambios* | Desactivado | **Activado** |
| Contenido | Quién + cuándo de cada actualización | Lo anterior + **qué campo cambió, valor previo y valor nuevo** |
| Caso de uso | Verificar quiénes intervinieron | Demostrar qué se modificó exactamente |
| Volumen del texto copiado | Menor | Mayor (puede ser extenso si hay muchos cambios) |

## Qué se copia

| Sección | Contenido |
|---------|-----------|
| Datos del servicio | Información técnica del servicio que generó la respuesta |
| Datos de la sesión | Usuario, rol, compañía, organización, almacén |
| Datos del registro | Identificador, nombre de la tabla, ID del registro |
| Historial completo | Cada actualización con: campo modificado, valor anterior, valor nuevo, usuario y fecha |

## Flujo del proceso

### 1. Abrir el documento

Localizar el documento sobre el cual se quiere obtener la auditoría detallada.

### 2. Abrir el Histórico de Cambios

Pulsar **Histórico de Cambios** del registro. Se abre la ventana modal del histórico.

### 3. Activar "Ver todos los cambios"

Activar el interruptor **Ver todos los cambios** ubicado en la esquina inferior derecha de la ventana modal. El histórico se expande mostrando el detalle de cada cambio (campo, valor previo, valor nuevo).

### 4. Copiar contenido

Pulsar **Copiar Contenido** en la parte superior derecha. El sistema muestra *Copiado*.

### 5. Pegar y validar

Pegar (Ctrl + V) en un editor. Validar que aparezcan los detalles de cambio esperados (por ejemplo, el campo que se quiere demostrar que cambió).

### 6. Adjuntar al destino

Enviar el bloque al ticket de soporte, correo o nota de auditoría.

## Ejemplo de uso

Demostrar que el total de una orden de venta cambió y reportarlo:

1. Abrir la **Orden de Venta** cuestionada.
2. Pulsar **Histórico de Cambios**.
3. **Activar** *Ver todos los cambios*. El histórico se expande y muestra cada modificación: usuario, fecha, campo, valor anterior y valor nuevo.
4. Pulsar **Copiar Contenido**. Aparece *Copiado*.
5. Pegar en un ticket: queda registrado quién modificó el total, cuándo, y de qué valor a qué valor.
6. Adjuntar [Copiar Datos de una Ventana](copy-window-data) para sumar los atributos actuales del registro.

## Consideraciones importantes

- El contenido puede ser **extenso** si el documento tiene muchos cambios. Pegarlo en un editor con scroll para revisarlo con tranquilidad.
- Activar *Ver todos los cambios* es **obligatorio** para que la copia incluya el detalle por campo. Sin activarlo, se copia solo la versión resumida.
- El contenido es **texto plano** y contiene **datos de sesión**; conviene revisarlo antes de compartir externamente.
- Para reportar incidencias críticas a soporte/desarrollo, **conviene siempre usar la detallada** porque muestra exactamente qué se alteró.
- El botón **Copiar Contenido** se encuentra **dentro** de la ventana modal *Histórico de Cambios*, no en la barra superior de la interfaz.

## Ventanas relacionadas

- [Copiar Datos de Auditoría](copy-audit-data)
- [Copiar Auditoría de un Documento](copy-document-audit)
- [Copiar Datos de una Ventana](copy-window-data)
- [Copiar Resultado de un Proceso con Error](copy-process-error)
