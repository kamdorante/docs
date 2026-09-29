---
title: Tipo de Solicitud Estándar
category: Documentation
star: 9
sticky: 9
article: false
---

# Tipo de Solicitud Estándar

## Descripción

La ventana **Tipo de Solicitud Estándar** permite definir reglas que generan **Solicitudes (notificaciones) automáticas** cuando ocurre un evento sobre un documento del sistema. Cada registro indica:

- **Sobre qué documento** se dispara (por ejemplo, una Entrega de venta).
- **En qué momento** se dispara (por ejemplo, *Después de Completar*).
- **Con qué filtros** aplica (por tipo de documento, por fecha, por transacción de venta).

El **contenido y los destinatarios** de la solicitud que se genera se configuran en la pestaña *Solicitud Estándar*, cuya documentación dedicada vive en [Solicitud Estándar](standard-request). El uso típico del conjunto es enviar un aviso al cliente y al equipo interno cuando se completa una entrega; si nadie atiende la solicitud dentro del plazo configurado, el sistema genera una segunda notificación de vencimiento.

## ¿Cuándo se utiliza?

Se utiliza cuando la organización necesita:

- Avisar **automáticamente** a un cliente y a un equipo interno cuando se completa una entrega u otro documento (por ejemplo, "Pedido por Retirar").
- Generar recordatorios automáticos si una solicitud queda sin atender pasado un cierto tiempo.
- Centralizar la regla de disparo (qué documento, qué evento, qué filtros) en una única configuración reutilizable.

## Acceso

**Menú:** Gestión de Relaciones → **Tipo de Solicitud Estándar**.

## Configuración previa

Antes de crear el tipo de solicitud, deben estar disponibles:

- Los **tipos de solicitud**, **categorías**, **prioridades** y **tipos de tarea** habituales del módulo CRM (configuradas por el administrador).
- Los **roles** que se quieran usar como destinatarios (por ejemplo, *Vendedor*).
- Si se quiere acotar el disparo a un tipo concreto de documento, debe existir el **Tipo de Documento** correspondiente.
- Si la solicitud generada debe notificar al **socio de negocio** del documento (por ejemplo, avisarle al cliente que su pedido está listo para retirar), el contacto de ese socio de negocio debe tener cargado un **correo electrónico**, marcado como de tipo *Correo Electrónico*. Sin ese dato, la solicitud se genera igual pero el envío del correo al cliente no llega.

::: warning Reinicio del servidor necesario
Cuando se agrega **una nueva tabla** en *Tipo de Solicitud Estándar* (es decir, se empieza a usar la ventana para un documento que aún no estaba contemplado), **el servidor de Solop debe reiniciarse** para que tome el validador automático asociado a esa tabla. Sin reinicio, la notificación automática **no se dispara**. Si se editan registros existentes que ya usan una tabla previamente registrada, no es necesario reiniciar.
:::

## Pestañas

### Tipo de Solicitud Estándar

Encabezado de la regla. Define **a qué documento** y **en qué evento** se dispara la solicitud. Los campos relevantes son:

- **Organización**
  Organización a la que aplica la regla. Puede ser una específica o "*" para que aplique a todas.

- **Nombre**
  Identificador visible del tipo de solicitud (por ejemplo, "Aviso Pedido por Retirar").

- **Tabla**
  Documento del sistema sobre el cual se dispara la regla. Para entregas de venta, se usa la tabla de **Entregas** (la misma que registra entradas, recepciones y entregas).

- **Evento de Validador**
  Momento en el que se dispara. El uso más común para notificaciones de entrega es **Después de Completar**, que dispara la regla apenas se completa el documento.

- **Transacción de Ventas**
  Marcar esta casilla cuando la regla deba dispararse **solo para documentos de venta** (no para entradas/recepciones). En el caso de notificaciones de entrega de venta es **obligatorio marcarla**.

- **Tipo de Documento**
  Opcional. Si se completa, la regla se dispara **solo** para documentos de ese tipo específico. Si se deja vacío, aplica a todos los documentos compatibles con la tabla.

- **Fecha Válido De**
  Fecha a partir de la cual la regla está activa. Solo los documentos cuya fecha sea **posterior o igual** a esta van a disparar la notificación.

### Solicitud Estándar

Pestaña interna que define el **contenido y los destinatarios** de la solicitud que se genera cuando la regla dispara: asunto, resumen, tipo, categoría, prioridad, agente comercial adicional, rol y tiempo de holgura para la segunda notificación.

Los campos, el comportamiento de la primera y segunda notificación, el flujo de carga y el ejemplo de uso se documentan por separado en [Solicitud Estándar](standard-request).

## Acciones disponibles

- **Guardar**
  Persiste la regla. Aplica desde la próxima vez que ocurra el evento configurado (o desde el primer documento posterior a *Fecha Válido De*).

- **Activar / Desactivar**
  Permite suspender temporalmente la regla sin borrarla.

## Parámetros del comportamiento

Los siguientes parámetros controlan **cuándo** se dispara la regla. El comportamiento de la solicitud generada (primera / segunda notificación, destinatarios) se documenta en [Solicitud Estándar](standard-request).

| Comportamiento | Origen | Resultado |
|----------------|--------|-----------|
| Filtro por documento de venta | Casilla *Transacción de Ventas* | La regla ignora documentos de compra/recepción |
| Filtro por tipo de documento | Campo *Tipo de Documento* | La regla solo se dispara para ese tipo específico |
| Filtro por fecha | Campo *Fecha Válido De* | Solo los documentos cuya fecha sea ≥ a la indicada disparan la notificación |
| Filtro por organización | Campo *Organización* | Aplica solo en esa organización, o en todas si se usa "*" |

## Flujo del proceso

::: tip Quién configura la regla
El registro de **Tipo de Solicitud Estándar** (tabla, evento, filtros) y su pestaña **Solicitud Estándar** los configura el equipo de desarrollo interno de Solop. Desde la operación del cliente, lo que se gestiona sobre un registro ya creado es **activarlo o desactivarlo** con la acción correspondiente.
:::

### 1. Activar el Tipo de Solicitud Estándar

Ubicar el registro ya configurado por Solop (por ejemplo, "Aviso Pedido por Retirar") y ejecutar la acción **Activar**.

### 2. Reiniciar el servidor si la tabla es nueva

Si esta es la **primera vez** que se activa un Tipo de Solicitud Estándar sobre esa tabla, **reiniciar el servidor de Solop**. Sin reinicio, el validador automático no queda registrado y la notificación **no se va a generar**.

### 3. Validar el disparo de la primera notificación

Completar un documento posterior a la *Fecha Válido De* que cumpla los filtros configurados (por ejemplo, una entrega de venta). El sistema debe generar automáticamente la solicitud con los destinatarios definidos.

### 4. Consultar las notificaciones generadas

Abrir la ventana **Cola de Notificación** y filtrar por *Tipo de Mensaje = Estándar* y *Tipo de Aplicación = Correo Electrónico* para ver las notificaciones enviadas. Esto sirve como evidencia de que la regla funcionó correctamente.

## Ejemplo de uso

Configurar el aviso automático de "pedido listo para retirar" cuando se completa una entrega de venta:

1. En **Tipo de Solicitud Estándar** existe el registro *"Aviso Pedido por Retirar"*, activo, apuntando a la tabla de **Entregas**, con **Evento de Validador = Después de Completar** y **Transacción de Ventas** marcada.
2. Se crea una **orden de venta** para un cliente y, a partir de ella, se genera la **entrega** (orden de salida) correspondiente.
3. Desde la orden de salida se ejecuta la acción **Completar** sobre la entrega. Al quedar la entrega en estado *Completo*, la regla se dispara automáticamente.
4. En la ventana **Cola de Notificación** aparece un nuevo registro de *Tipo de Aplicación = Correo Electrónico*, con el destinatario correspondiente a la cuenta de correo del cliente.
5. El cliente recibe un correo con el aviso, el número de la solicitud generada, la fecha y un enlace para confirmar la acción.
6. Si el socio de negocio no tuviera un correo electrónico cargado en su contacto, la solicitud se genera igual, pero el correo no llega; el registro en la Cola de Notificación permite detectar este caso.

## Consideraciones importantes

- **Reinicio del servidor:** solo es necesario cuando se agrega una **tabla nueva** en *Tipo de Solicitud Estándar*. Si se modifican o agregan reglas sobre una tabla previamente registrada, los cambios toman efecto sin reinicio.
- **Filtro por venta:** dejar **Transacción de Ventas** desmarcada hace que la regla también dispare para recepciones/entradas. Si la intención es solo notificar entregas de venta, marcar siempre esta casilla.
- **Origen del documento:** la regla aplica a entregas generadas a partir de una **orden de venta** estándar. Las entregas que se originan en el **Punto de Venta** no disparan esta notificación, aunque cumplan el resto de los filtros configurados.
- **Fecha Válido De:** documentos con fecha anterior a este campo no generan notificación, aunque cumplan el resto de las condiciones. Es la forma de **evitar avisos sobre documentos históricos**.
- **Alcance por organización:** cuando se usa una organización específica en lugar de "*", la regla no se dispara para documentos de otras organizaciones aunque coincidan con la tabla y el evento.
- **Correo del socio de negocio:** cuando la solicitud debe notificar al cliente, este necesita tener un contacto con correo electrónico cargado en su ficha. Es la causa más común de que la regla se dispare correctamente pero el correo no llegue.
- **Verificación operativa:** la ventana **Cola de Notificación** es la fuente de verdad para confirmar qué notificaciones se enviaron, a quién y cuándo. Es el punto de auditoría ante un reclamo del cliente.

## Ventanas relacionadas

- [Solicitud Estándar](standard-request)
- [Solicitud](request)
- [Plantilla de Notificación por Evento](event-notice-template)
- [Plantilla de Correo](mail-template)
- [Información del Agente Comercial](sales-rep-info)
- [Enviar Texto de Correo](send-mail-text)
- [Cola de Notificación](../basic-rules/admin-tools/notification-queue)
- [Entregas (Cliente)](../sales-management/shipments/shipment-customer)
