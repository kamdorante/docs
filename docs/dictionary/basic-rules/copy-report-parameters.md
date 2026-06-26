---
title: Copiar Parámetros de un Reporte
category: Documentation
star: 9
sticky: 9
article: false
---

# Copiar Parámetros de un Reporte

## Descripción

La acción **Copiar Parámetros de un Reporte** permite enviar al portapapeles, en texto plano, la **configuración de ejecución** del reporte que se está visualizando: nombre e identificador del reporte y todos los parámetros y filtros aplicados. Junto con esos datos, también se incluyen los **datos del servicio** y los **datos de la sesión** (usuario, rol, compañía, organización, almacén).

Es una de las seis acciones de copia documentadas en [Copiar Datos de Auditoría](copy-audit-data).

## ¿Cuándo se utiliza?

Se utiliza cuando se necesita:

- **Reproducir** el reporte más adelante o desde otra sesión con los mismos parámetros.
- **Compartir la configuración** de ejecución con otro usuario sin tener que describirla a mano.
- **Reportar a soporte** un comportamiento inesperado del reporte, adjuntando los parámetros exactos que se aplicaron.
- **Documentar** internamente cómo se generó un reporte particular para fines de auditoría.

## Acceso

1. Abrir el reporte deseado (por ejemplo, *Manual de Detalles de Caja*).
2. Aplicar los parámetros / filtros.
3. Ubicar el botón **Copiar** en la **barra superior** de la interfaz, **junto al ícono de información** (segundo ícono desde la izquierda en el grupo de acciones superior).
4. Pulsarlo. Aparece el mensaje *Copiado*.

![Botón Copiar en la barra superior](/assets/img/docs/basic-rules/copiar.png)

*Ubicación del botón **Copiar** en la barra superior de la interfaz (segundo ícono, al lado del de información).*

## Qué se copia

| Sección | Contenido |
|---------|-----------|
| Datos del servicio | Información técnica del servicio que generó la respuesta |
| Datos de la sesión | Usuario, rol, compañía, organización, almacén |
| Datos del reporte | Nombre del reporte e identificador |
| Parámetros aplicados | Todos los filtros y parámetros tal como se ejecutaron (cuenta bancaria, rango de fechas, etc.) |

## Flujo del proceso

### 1. Configurar y ejecutar el reporte

Abrir el reporte y aplicar los parámetros que se desean documentar o reproducir. Confirmar que el resultado en pantalla corresponde a esos parámetros.

### 2. Copiar los parámetros

Pulsar el botón **Copiar** en la barra superior. El sistema muestra el mensaje *Copiado*.

### 3. Pegar y validar

Pegar el contenido (Ctrl + V) en un bloc de notas, correo o ticket. Validar que los parámetros listados coinciden con los aplicados en pantalla (por ejemplo, la cuenta bancaria y el rango de fechas).

### 4. Adjuntar al destino

Enviar el bloque copiado en el ticket de soporte, correo o nota interna donde se necesita el contexto.

## Ejemplo de uso

Reportar a soporte un comportamiento inesperado del reporte *Manual de Detalles de Caja*:

1. Abrir el reporte y aplicar los filtros: *Cuenta Bancaria = Caja Administración*, *Fecha = 01/06 al 25/06*.
2. Pulsar el botón **Copiar** de la barra superior. Aparece *Copiado*.
3. Pegar en un bloc de notas: se ven datos del servicio, datos de sesión, identificador y nombre del reporte y los parámetros exactos aplicados.
4. Adjuntar ese bloque al ticket de soporte. El equipo recibe el contexto completo sin tener que pedir información adicional.

## Consideraciones importantes

- El contenido copiado es **texto plano**: conviene pegarlo en un editor y revisarlo antes de enviar.
- Incluye **información de sesión** (usuario, rol, organización, almacén). No contiene contraseñas, pero conviene revisar antes de compartir fuera de la organización.
- La copia refleja **lo que esté en pantalla en ese momento**: si se modifican los parámetros, hay que volver a copiar.
- El **mismo botón** de la barra superior se usa para copiar parámetros de **Navegadores** (Smart Browser) y **datos de una Ventana**. Lo que cambia es el contexto en el que se pulsa.

## Ventanas relacionadas

- [Copiar Datos de Auditoría](copy-audit-data)
- [Copiar Parámetros de un Navegador](copy-browser-parameters)
- [Copiar Datos de una Ventana](copy-window-data)
- [Copiar Resultado de un Proceso con Error](copy-process-error)
- [Descargar Registros a Planilla](export-records-to-spreadsheet)
