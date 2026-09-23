---
title: Cola de Notificación
category: Documentation
star: 9
sticky: 9
article: false
---

# Cola de Notificación

## Descripción

La ventana **Cola de Notificación** centraliza cada aviso generado por el sistema —o por servicios externos integrados con Solop— pendiente de envío o ya procesado. Cada evento que dispara una notificación (una solicitud, un reporte, una integración externa, etc.) crea aquí un registro con el mensaje, sus destinatarios finales y, opcionalmente, archivos adjuntos.

Además del envío por correo con formato, la cola admite tres capacidades pensadas especialmente para integraciones externas: armar la notificación en **modo borrador** mientras se le agregan adjuntos, **eliminar automáticamente** el registro y sus adjuntos una vez enviado, y redactar el mensaje en **Markdown** con conversión automática a HTML.

## ¿Cuándo se utiliza?

Se utiliza cuando la organización necesita:

- Revisar el estado de las notificaciones generadas automáticamente por el sistema o por integraciones externas.
- Generar notificaciones con archivos adjuntos desde un proceso interno o desde un servicio externo (por ejemplo, un reporte generado por una integración).
- Evitar que el procesador automático envíe una notificación mientras todavía se le están agregando adjuntos.
- Configurar que una notificación y sus adjuntos se eliminen del sistema automáticamente una vez enviados, sin dejar el registro como histórico.
- Procesar manualmente la cola cuando la instancia no tiene configurado un procesador automático.

## Acceso

Menú: Reglas Básicas → Notificaciones → Cola de Notificación

## Pestañas

### Cola de Notificación

Pestaña principal con los datos del mensaje a enviar. Los aspectos más importantes son:

- **Procesado**
  Indica si la notificación ya fue enviada. Se mantiene en *No* mientras está pendiente; cambia a *Sí* al enviarse correctamente.

- **Activo**
  Controla si el registro sigue disponible para ser tomado por el próximo lote de envío. Si el envío falla, el registro queda como *Procesado = No* con el detalle del error y puede marcarse *Activo = No* para que no se reintente automáticamente.

- **Borrador**
  Permite construir la notificación en varios pasos antes de liberarla para su envío. Mientras el registro está marcado como borrador, el procesador automático lo ignora, lo que da tiempo a agregar adjuntos u otra información desde un servicio externo. Al finalizar, se desmarca el campo y la notificación queda disponible para el siguiente lote.

- **Eliminar al Enviar**
  Si está activo, al enviarse la notificación el sistema elimina automáticamente el registro de la cola, sus destinatarios y sus adjuntos (tanto en Solop como en el almacenamiento externo asociado). Útil para notificaciones de alto volumen o transitorias que no necesitan conservarse como histórico. Si está inactivo, el registro permanece en la cola como respaldo del envío.

- **Cuerpo del Mensaje**
  Admite redactar el contenido en **Markdown** (negritas, listas, emojis, etc.); el sistema lo convierte automáticamente a HTML respetando el formato al momento de enviarlo por correo.

- **Lista de Distribución**
  Permite indicar el código de una [Lista de Distribución de Notificaciones](./notification-distribution-list) como destinatario en lugar de usuarios individuales; el sistema resuelve automáticamente los destinatarios finales de esa lista.

### Destinatarios

Pestaña con el detalle de cada destinatario final resuelto para la notificación (uno por usuario, sin duplicados aunque el mismo usuario llegue por más de un miembro de la lista). Para cada uno se puede consultar su estado de envío y, en caso de error, la descripción del problema.

## Adjuntos

Las notificaciones admiten archivos adjuntos físicos, reutilizando el servicio de adjuntos existente en Solop. Pueden agregarse:

- Desde procesos internos del sistema.
- Desde **servicios externos**, mediante una URL prefirmada (*presigned URL*) contra el almacenamiento configurado, sin necesidad de subir el archivo directamente a través de la interfaz.

Los adjuntos se agregan mientras la notificación está en estado **Borrador**; al desmarcar el borrador, la notificación —con sus adjuntos ya cargados— queda disponible para el envío.

## Acciones disponibles

- **Procesar Cola de Notificación**
  Ejecuta el envío de las notificaciones pendientes (no marcadas como borrador). Se utiliza para procesar manualmente cuando la instancia no tiene configurado un procesador automático en el Programador de Tareas, o para forzar el envío inmediato de un lote.

## Flujo del proceso

### 1. Generar la notificación

Un proceso interno o un servicio externo crea el registro en la Cola de Notificación, indicando el mensaje y, como destinatario, un usuario puntual o el código de una lista de distribución.

### 2. Completar en modo borrador (opcional)

Si la notificación necesita adjuntos, se genera con **Borrador** activo. Mientras permanece en este estado, el procesador automático no la toma, lo que permite adjuntar los archivos correspondientes desde el mismo proceso o servicio externo.

### 3. Liberar la notificación

Al finalizar de agregar los adjuntos, se desmarca **Borrador**. La notificación queda disponible para el siguiente lote de envío.

### 4. Resolver destinatarios

Si la notificación referencia una lista de distribución, el sistema resuelve todos los usuarios que la componen (incluyendo listas anidadas y roles) y genera un renglón por cada uno en la pestaña **Destinatarios**, sin duplicados.

### 5. Procesar el envío

El **Programador de Tareas** ejecuta periódicamente el procesamiento automático de la cola. Si la instancia no tiene ese procesador configurado, puede ejecutarse manualmente la acción **Procesar Cola de Notificación**.

### 6. Verificar el resultado

Una vez procesada, la notificación pasa a **Procesado = Sí**. Si tenía **Eliminar al Enviar** activo, el registro, sus destinatarios y adjuntos se eliminan automáticamente; caso contrario, permanece en la cola como histórico consultable desde la pestaña **Destinatarios**.

## Ejemplo de uso

Una integración externa ejecuta un proceso de importación de datos y debe avisar al equipo responsable con el detalle adjunto en una planilla:

1. Al finalizar el proceso, el servicio externo genera la notificación en **Borrador**, indicando como destinatario el código de una lista de distribución configurada para ese proceso.
2. Mediante una URL prefirmada, el servicio adjunta la planilla con el detalle de la importación.
3. Al terminar, el servicio desmarca **Borrador**; la notificación queda disponible para el envío.
4. El sistema resuelve la lista de distribución y genera un renglón por cada destinatario final en la pestaña **Destinatarios**.
5. El procesador de la cola envía el correo: los destinatarios reciben el mensaje con el formato definido (incluyendo negritas y emojis convertidos desde Markdown) y la planilla adjunta.
6. Si la notificación tenía **Eliminar al Enviar** activo, el registro y su adjunto se eliminan de la cola una vez confirmado el envío.

## Consideraciones importantes

- El campo **Borrador** es clave para integraciones externas: evita que el procesador automático envíe la notificación mientras todavía se le están agregando adjuntos.
- **Eliminar al Enviar** borra también los adjuntos asociados, tanto la referencia en Solop como el archivo en el almacenamiento externo; usarlo solo cuando no se necesite conservar el envío como histórico.
- La resolución de destinatarios mediante lista de distribución es dinámica: si se agregan o quitan miembros de la lista referenciada, el próximo envío que la use refleja el cambio, pero no afecta notificaciones ya procesadas.
- El envío por correo requiere tener configurado previamente el correo saliente de la Compañía y/o de la Organización; de lo contrario, el envío queda registrado con error en el Programador de Tareas.
- Un mismo usuario nunca recibe una notificación duplicada aunque forme parte de la lista de distribución por más de un camino (directo, por rol o por lista anidada).

## Ventanas relacionadas

- [Lista de Distribución de Notificaciones](./notification-distribution-list)
