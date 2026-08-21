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

### 1. Crear el Tipo de Solicitud Estándar

Desde el menú, abrir **Tipo de Solicitud Estándar** y crear un nuevo registro. Completar:

- **Organización**: la que aplique (o "*").
- **Nombre**: descriptivo (por ejemplo, "Aviso Pedido por Retirar").
- **Tabla**: tabla de **Entregas** para notificaciones sobre entregas.
- **Evento de Validador**: **Después de Completar**.
- **Transacción de Ventas**: **marcar** para asegurar que solo se dispare en entregas de venta.
- **Tipo de Documento**: dejar vacío si aplica a todas las entregas de venta, o seleccionar uno específico.
- **Fecha Válido De**: fecha desde la cual la regla debe disparar notificaciones.

Guardar.

### 2. Definir la solicitud generada

Ir a la pestaña **Solicitud Estándar** y completar el contenido, la clasificación, los destinatarios adicionales y el tiempo de holgura. El paso a paso completo está en [Solicitud Estándar](standard-request).

### 3. Reiniciar el servidor si la tabla es nueva

Si esta es la **primera vez** que se configura un Tipo de Solicitud Estándar sobre esa tabla, **reiniciar el servidor de Solop**. Sin reinicio, el validador automático no queda registrado y la notificación **no se va a generar**.

### 4. Validar el disparo de la primera notificación

Completar un documento posterior a la *Fecha Válido De* que cumpla los filtros configurados (por ejemplo, una entrega de venta). El sistema debe generar automáticamente la solicitud con los destinatarios definidos.

### 5. Consultar las notificaciones generadas

Abrir la ventana **Cola de Notificación** y filtrar por *Tipo de Mensaje = Estándar* y *Tipo de Aplicación = Correo Electrónico* para ver las notificaciones enviadas. Esto sirve como evidencia de que la regla funcionó correctamente.

## Consideraciones importantes

- **Reinicio del servidor:** solo es necesario cuando se agrega una **tabla nueva** en *Tipo de Solicitud Estándar*. Si se modifican o agregan reglas sobre una tabla previamente registrada, los cambios toman efecto sin reinicio.
- **Filtro por venta:** dejar **Transacción de Ventas** desmarcada hace que la regla también dispare para recepciones/entradas. Si la intención es solo notificar entregas de venta, marcar siempre esta casilla.
- **Fecha Válido De:** documentos con fecha anterior a este campo no generan notificación, aunque cumplan el resto de las condiciones. Es la forma de **evitar avisos sobre documentos históricos**.
- **Alcance por organización:** cuando se usa una organización específica en lugar de "*", la regla no se dispara para documentos de otras organizaciones aunque coincidan con la tabla y el evento.
- **Verificación operativa:** la ventana **Cola de Notificación** es la fuente de verdad para confirmar qué notificaciones se enviaron, a quién y cuándo. Es el punto de auditoría ante un reclamo del cliente.

## Ventanas relacionadas

- [Solicitud Estándar](standard-request)
- [Solicitud](request)
- [Plantilla de Notificación por Evento](event-notice-template)
- [Plantilla de Correo](mail-template)
- [Información del Agente Comercial](sales-rep-info)
- [Enviar Texto de Correo](send-mail-text)
- [Entregas (Cliente)](../sales-management/shipments/shipment-customer)
