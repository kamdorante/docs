---
title: Cola de Notificación
category: Documentation
star: 9
sticky: 9
article: false
---

# Cola de Notificación

## Descripción

La ventana **Cola de Notificación** centraliza el control de los envíos automáticos que el sistema realiza en nombre de un usuario: correos electrónicos con documentos adjuntos, cartas, notificaciones y cualquier otro mensaje que se genera desde un proceso masivo (por ejemplo, el envío de cartas de morosidad).

Cada registro de la cola representa un envío programado. Un proceso interno del servidor toma los registros pendientes y los procesa: si el envío se realiza correctamente, el registro queda marcado como **Procesado**; si falla (por ejemplo, porque el contacto no tiene un correo electrónico cargado), queda marcado con **Error**, sin quedar como procesado.

## ¿Cuándo se utiliza?

Se utiliza cuando el usuario necesita:

- Verificar si un envío masivo (correos de morosidad, notificaciones, etc.) efectivamente se procesó y se envió.
- Revisar el contenido exacto del correo enviado: texto, plantilla aplicada y archivo adjunto.
- Identificar los envíos que fallaron y la causa del error, para poder corregir el dato faltante y reintentar el envío.

## Acceso

Menú: Herramientas de Administración → Cola de Notificación

También se accede indirectamente desde cualquier proceso que genera notificaciones masivas (por ejemplo, [Imprimir Carta de Morosidad](../../balance-management/dunning/print-dunning-letters) o [Envío de Email a Socio del Negocio (Morosidad)](../../balance-management/dunning/email-to-business-partner-dunning)), ya que cada envío que se dispara desde esos procesos crea un registro en esta cola.

## Pestañas

### Notificación

Encabezado de cada notificación encolada. Incluye:

- **Usuario**
  Usuario que generó el envío o al que pertenece la notificación.

- **Texto del Mensaje**
  Contenido final del correo, ya renderizado con la plantilla aplicada (por ejemplo, nombre del cliente y del contacto sustituidos en el texto).

- **Adjunto**
  Archivo (por ejemplo, el PDF de la carta de morosidad) que se envió junto con el correo.

- **Procesado**
  Indica si el registro ya fue tomado y procesado por el sistema. Un registro procesado no vuelve a intentarse automáticamente.

### Destinatario de Notificación

Detalle de a quién se envió (o se intentó enviar) la notificación. Incluye:

- **Destinatario**
  Contacto o usuario destinatario del envío.

- **Válido**
  Indica si el destinatario tiene los datos necesarios para el envío (por ejemplo, una casilla de correo cargada). Si no es válido, el envío no puede realizarse.

- **Procesado**
  Indica si este destinatario en particular ya fue procesado. Es posible que una notificación tenga varios destinatarios con distinto resultado.

### Actualización de Notificación

Historial de actualizaciones o reintentos sobre la notificación.

## Flujo del proceso

### 1. Ejecutar el proceso que genera la notificación

Desde un proceso masivo (por ejemplo, imprimir y enviar cartas de morosidad), el sistema crea uno o varios registros en la Cola de Notificación, uno por cada destinatario.

### 2. Esperar el procesamiento

El envío no es instantáneo: un proceso de fondo del servidor toma los registros pendientes y los procesa. Puede demorar unos minutos.

### 3. Verificar el estado en la pestaña Notificación

Abrir la Cola de Notificación y revisar si el registro quedó marcado como **Procesado**. Esto confirma que el correo fue enviado.

### 4. Revisar los destinatarios

Entrar a la pestaña **Destinatario de Notificación** para ver, registro por registro, si cada destinatario fue procesado correctamente o si quedó marcado con **Error**.

### 5. Corregir los envíos con error

Cuando un destinatario figura como no válido (por ejemplo, contacto sin casilla de correo), ir a la ficha del **Contacto** correspondiente en el Socio del Negocio, cargar el correo faltante y volver a ejecutar el envío desde el proceso de origen.

## Ejemplo de uso

Verificación de un envío masivo de cartas de morosidad a cuatro clientes:

1. Después de ejecutar **Imprimir Carta de Morosidad** con envío por email, se abre la **Cola de Notificación**.
2. En la pestaña *Notificación* se observa que el registro quedó **Procesado**, lo que confirma que el correo se generó y se envió.
3. Se revisa la pestaña *Destinatario de Notificación*: tres clientes están procesados correctamente y uno figura con **Error**, indicando "envío no válido" porque el contacto no tiene casilla de correo.
4. Se accede al contacto de ese cliente desde el Socio del Negocio, se completa el campo de correo electrónico y se guarda.
5. Se vuelve a ejecutar el envío para ese cliente desde el proceso de origen (por ejemplo, **Envío de Email a Socio del Negocio (Morosidad)**).

## Consideraciones importantes

- Que un registro esté **Procesado** significa que el sistema ya lo tomó para procesarlo, no necesariamente que el envío haya sido exitoso; el resultado real (éxito o error) se revisa en la pestaña **Destinatario de Notificación**.
- El envío no es inmediato: existe una demora normal entre que se genera la notificación y que el proceso de fondo la envía.
- La causa más frecuente de error es la falta de una **casilla de correo** cargada en el contacto del socio de negocio.
- Para reintentar un envío que falló, primero hay que corregir el dato que causó el error (por ejemplo, cargar el correo del contacto) y luego volver a ejecutar el proceso que genera la notificación; marcar el registro como no procesado permite que vuelva a intentarse.
- El adjunto visible en la pestaña *Notificación* corresponde exactamente al archivo que se envió (o se intentó enviar) al destinatario, lo que permite auditar el contenido de cada comunicación.

## Ventanas relacionadas

- [Imprimir Carta de Morosidad](../../balance-management/dunning/print-dunning-letters)
- [Envío de Email a Socio del Negocio (Morosidad)](../../balance-management/dunning/email-to-business-partner-dunning)
- [Crear Cálculo de Morosidad](../../balance-management/dunning/create-dunning-calculation)
