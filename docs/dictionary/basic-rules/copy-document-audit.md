---
title: Copiar Auditoría de un Documento
category: Documentation
star: 9
sticky: 9
article: false
---

# Copiar Auditoría de un Documento

## Descripción

La acción **Copiar Auditoría de un Documento** permite enviar al portapapeles, en texto plano, el **Histórico de Cambios** del documento: identificador del registro, nombre de la tabla, ID del registro, quién lo creó, quién lo actualizó y las fechas correspondientes.

Es la versión **resumida** del historial: muestra **quiénes** intervinieron y **cuándo**, sin entrar en el detalle de qué campo cambió en cada actualización. Para esa información más detallada, ver [Copiar Auditoría Detallada de un Documento](copy-detailed-document-audit).

Es una de las seis acciones de copia documentadas en [Copiar Datos de Auditoría](copy-audit-data).

## ¿Cuándo se utiliza?

Se utiliza cuando se necesita:

- **Auditar la trazabilidad** de un documento (creación, modificaciones, responsables).
- **Adjuntar a un ticket** el historial del documento que está siendo investigado.
- **Confirmar** quién y cuándo intervino sobre el registro, sin necesidad del detalle de cada campo.

## Acceso

1. Abrir el documento (por ejemplo, una *Orden de Venta*).
2. Pulsar el botón **Histórico de Cambios** del registro. Se abre una ventana modal con la cabecera del histórico.
3. En la **parte superior derecha** de la ventana modal, pulsar **Copiar Contenido**.
4. Aparece el mensaje *Copiado* y el contenido queda en el portapapeles.

![Botón Copiar Contenido en Histórico de Cambios](/assets/img/docs/basic-rules/copiar-auditoria.png)

*Ventana modal **Histórico de Cambios** con el botón **Copiar Contenido** en la parte superior derecha y el interruptor **Ver todos los cambios** desactivado (auditoría resumida).*

## Qué se copia

| Sección | Contenido |
|---------|-----------|
| Datos del servicio | Información técnica del servicio que generó la respuesta |
| Datos de la sesión | Usuario, rol, compañía, organización, almacén |
| Datos del registro | Identificador, nombre de la tabla, ID del registro |
| Historial | Quién creó, quién actualizó y fechas de cada acción |

## Flujo del proceso

### 1. Abrir el documento

Localizar el documento sobre el cual se quiere obtener la auditoría.

### 2. Abrir el Histórico de Cambios

Pulsar el botón **Histórico de Cambios** del registro. Se abre una ventana modal con la cabecera del histórico.

### 3. Confirmar que el interruptor "Ver todos los cambios" está desactivado

Esto asegura que la copia sea de la **auditoría resumida**. Si está activado, lo que se copia es la auditoría detallada (ver [Copiar Auditoría Detallada de un Documento](copy-detailed-document-audit)).

### 4. Copiar contenido

Pulsar **Copiar Contenido** en la parte superior derecha. El sistema muestra *Copiado*.

### 5. Pegar y validar

Pegar (Ctrl + V) en un editor. Validar que aparezca el identificador del registro, el nombre de la tabla y la lista de actualizaciones.

### 6. Adjuntar al destino

Enviar el bloque al ticket o nota de auditoría correspondiente.

## Ejemplo de uso

Verificar quién y cuándo modificó una orden de venta cuestionada:

1. Abrir la **Orden de Venta** en cuestión.
2. Pulsar **Histórico de Cambios**. La ventana modal muestra el identificador, el nombre de la tabla y las actualizaciones realizadas.
3. Asegurar que **Ver todos los cambios** está **desactivado**.
4. Pulsar **Copiar Contenido**. Aparece *Copiado*.
5. Pegar en un ticket interno. El equipo recibe la trazabilidad resumida del documento (creación, actualizaciones, responsables, fechas).
6. Si después se necesita saber **qué** se cambió exactamente, repetir activando *Ver todos los cambios* → ver [Copiar Auditoría Detallada de un Documento](copy-detailed-document-audit).

## Consideraciones importantes

- Esta opción copia **solo la cabecera del histórico** (quién + cuándo). Para obtener qué campo cambió y con qué valor, usar la **auditoría detallada**.
- El contenido es **texto plano**; conviene revisarlo antes de compartir, ya que incluye datos de sesión.
- Conviene **combinarla** con [Copiar Datos de una Ventana](copy-window-data) para entregar simultáneamente los atributos del registro y su historial.
- El botón **Copiar Contenido** se encuentra **dentro** de la ventana modal *Histórico de Cambios*, no en la barra superior de la interfaz.

## Ventanas relacionadas

- [Copiar Datos de Auditoría](copy-audit-data)
- [Copiar Auditoría Detallada de un Documento](copy-detailed-document-audit)
- [Copiar Datos de una Ventana](copy-window-data)
- [Copiar Resultado de un Proceso con Error](copy-process-error)
