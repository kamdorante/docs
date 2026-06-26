---
title: Copiar Datos de una Ventana
category: Documentation
star: 9
sticky: 9
article: false
---

# Copiar Datos de una Ventana

## Descripción

La acción **Copiar Datos de una Ventana** permite enviar al portapapeles, en texto plano, la **información completa de un registro** abierto en una ventana del sistema. Incluye datos del servicio, datos de la sesión (usuario, rol, compañía, organización, almacén), datos de la ventana (nombre, identificador) y todos los **atributos del registro seleccionado**.

Funciona de manera idéntica desde la vista **mono-registro** (ficha) y desde la vista **multi-registro** (grilla): siempre toma el registro que está seleccionado en ese momento.

Es una de las seis acciones de copia documentadas en [Copiar Datos de Auditoría](copy-audit-data).

## ¿Cuándo se utiliza?

Se utiliza cuando se necesita:

- **Compartir el contexto completo** de un registro en una conversación de soporte sin tener que describirlo manualmente.
- **Adjuntar a un ticket** los atributos exactos de un documento con problemas (orden, factura, producto, etc.).
- **Documentar** un registro específico para referencia interna.

## Acceso

1. Abrir la ventana (por ejemplo, *Orden de Venta*).
2. Seleccionar el registro a copiar — funciona desde la **vista mono-registro** (ficha) o desde la **vista multi-registro** (grilla).
3. Pulsar el botón **Copiar** ubicado en la **barra superior** de la interfaz, **junto al ícono de información** (mismo botón que se usa para reportes y navegadores; cambia el contexto).
4. Aparece el mensaje *Copiado*.

![Botón Copiar en la barra superior](/assets/img/docs/basic-rules/copiar.png)

*Ubicación del botón **Copiar** en la barra superior de la interfaz (segundo ícono, al lado del de información). Funciona igual desde la vista mono-registro (ficha) y desde la vista multi-registro (grilla): copia siempre el registro seleccionado.*

## Qué se copia

| Sección | Contenido |
|---------|-----------|
| Datos del servicio | Información técnica del servicio que generó la respuesta |
| Datos de la sesión | Usuario, rol, compañía, organización, almacén |
| Datos de la ventana | Nombre e identificador de la ventana |
| Atributos del registro | Todos los campos del registro actualmente seleccionado |

## Flujo del proceso

### 1. Abrir la ventana

Acceder a la ventana del documento o registro (Orden de Venta, Producto, Socio del Negocio, etc.).

### 2. Seleccionar el registro

- Desde **mono-registro**: simplemente navegar al registro deseado.
- Desde **multi-registro**: seleccionar el registro en la grilla.

### 3. Copiar

Pulsar el botón **Copiar** de la barra superior. El sistema muestra *Copiado*.

### 4. Pegar y validar

Pegar el contenido en un editor y verificar que el registro listado es el deseado (revisar identificador y atributos clave).

### 5. Adjuntar al destino

Enviar el bloque al ticket, correo o nota interna correspondiente.

## Ejemplo de uso

Reportar una orden de venta con datos sospechosos:

1. Abrir **Orden de Venta** y localizar la orden problemática.
2. Pulsar el botón **Copiar** de la barra superior (sea desde la ficha o desde la grilla). Aparece *Copiado*.
3. Pegar en un ticket: el soporte ve los datos de sesión + el nombre de la ventana + todos los atributos del registro (socio, fecha, total, estado, etc.).
4. Complementar con [Copiar Auditoría de un Documento](copy-document-audit) si además se quiere ver el histórico de cambios del registro.

## Consideraciones importantes

- La copia toma siempre el **registro seleccionado**. Conviene confirmar visualmente cuál está seleccionado antes de pulsar.
- Mono-registro y multi-registro entregan **el mismo contenido**; lo que cambia es la vista desde donde se ejecuta la copia.
- El **mismo botón** sirve para Reporte y Navegador; el contenido depende del contexto en el que se pulsa.
- El contenido es **texto plano**; conviene revisarlo antes de compartir, ya que incluye información de sesión.
- Para reportar problemas de un documento, **conviene combinarlo** con [Copiar Auditoría de un Documento](copy-document-audit) o [Copiar Auditoría Detallada de un Documento](copy-detailed-document-audit), para entregar atributos + historial.

## Ventanas relacionadas

- [Copiar Datos de Auditoría](copy-audit-data)
- [Copiar Parámetros de un Reporte](copy-report-parameters)
- [Copiar Parámetros de un Navegador](copy-browser-parameters)
- [Copiar Auditoría de un Documento](copy-document-audit)
- [Copiar Auditoría Detallada de un Documento](copy-detailed-document-audit)
- [Copiar Resultado de un Proceso con Error](copy-process-error)
