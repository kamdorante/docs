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
- **Qué solicitud** se crea (asunto, resumen, prioridad, categoría, destinatarios).
- **En cuánto tiempo** la solicitud vence si no se atiende (lo que genera una **segunda notificación** de aviso).

El uso típico es enviar un aviso al cliente y al equipo interno cuando se completa una entrega; si nadie atiende la solicitud dentro del plazo configurado, el sistema genera una segunda notificación de vencimiento.

## ¿Cuándo se utiliza?

Se utiliza cuando la organización necesita:

- Avisar **automáticamente** a un cliente y a un equipo interno que se completó una entrega (por ejemplo, "Pedido por Retirar").
- Generar recordatorios automáticos si una solicitud queda sin atender pasado un cierto tiempo.
- Centralizar el contenido de las notificaciones (asunto, resumen, categoría, prioridad) en una única configuración reutilizable.
- Notificar a **todos los usuarios con un rol** específico (por ejemplo, todos los vendedores) sin tener que listar uno a uno.

## Acceso

**Menú:** Gestión de Relaciones → **Tipo de Solicitud Estándar**.

## Configuración previa

Antes de crear el tipo de solicitud, deben estar disponibles:

- Los **tipos de solicitud**, **categorías** y **prioridades** habituales del módulo CRM (configuradas por el administrador).
- Los **roles** que se quieran usar como destinatarios (por ejemplo, *Vendedor*).
- Los usuarios destinatarios deben tener correo configurado para recibir la notificación por correo electrónico.
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

Contenido y destinatarios de la solicitud generada. Los campos relevantes son:

- **Asunto**
  Asunto de la solicitud y de los correos enviados (por ejemplo, "Pedido por Retirar").

- **Resumen**
  Texto principal que verá el destinatario en la solicitud (por ejemplo, "Existe un pedido por retirar").

- **Entrada Confidencial**
  Nivel de confidencialidad. Para mensajes hacia el cliente se suele usar *Confidencial Tercero*.

- **Tipo de Solicitud**
  Tipo CRM clásico de la solicitud (por ejemplo, *Comunicación*, *Reclamo*, *Consulta*).

- **Categoría**
  Categoría adicional para clasificar (por ejemplo, *Administrativo*, *Comercial*).

- **Prioridad**
  Prioridad asignada a la solicitud generada.

- **Tipo de Tarea**
  Tipo de tarea CRM. Puede dejarse con su valor por defecto.

- **Agente Comercial**
  Si se completa, **cada solicitud generada por esta regla** lleva este agente como destinatario adicional.

- **Rol**
  Si se completa, la notificación llega a **todos los usuarios con ese rol** (por ejemplo, *Vendedor* notifica a todos los vendedores).

- **Unidad de Duración** y **Duración**
  Definen el **tiempo de holgura** después del cual, si la solicitud no fue atendida, el sistema genera una **segunda notificación** por vencimiento. Por ejemplo, *Día* + *1* genera el recordatorio un día después; *Día* + *7*, una semana después.

## Acciones disponibles

- **Guardar**
  Persiste la regla. Aplica desde la próxima vez que ocurra el evento configurado (o desde el primer documento posterior a *Fecha Válido De*).

- **Activar / Desactivar**
  Permite suspender temporalmente la regla sin borrarla.

## Parámetros del comportamiento

| Comportamiento | Origen | Resultado |
|----------------|--------|-----------|
| Disparo de la **primera** notificación | Evento configurado en *Evento de Validador* (por ejemplo, *Después de Completar*) | Se crea automáticamente una solicitud dirigida al **socio de negocio** del documento y al **usuario que completó** el documento (más el agente comercial y el rol, si están definidos) |
| Disparo de la **segunda** notificación | Vencimiento del tiempo definido por *Unidad de Duración × Duración* sin que la solicitud se haya atendido | Se crea una segunda solicitud automática, hacia los mismos destinatarios, indicando que la atención está pendiente |
| Filtro por documento de venta | Casilla *Transacción de Ventas* | La regla ignora documentos de compra/recepción |
| Filtro por tipo de documento | Campo *Tipo de Documento* | La regla solo se dispara para ese tipo específico |
| Filtro por fecha | Campo *Fecha Válido De* | Solo los documentos cuya fecha sea ≥ a la indicada disparan la notificación |

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

### 2. Definir el contenido de la solicitud

Ir a la pestaña **Solicitud Estándar** y completar:

- **Asunto**: "Pedido por Retirar".
- **Resumen**: "Existe un pedido por retirar".
- **Entrada Confidencial**: *Confidencial Tercero*.
- **Tipo de Solicitud**: *Comunicación*.
- **Categoría**: *Administrativo*.
- **Prioridad**: la deseada.
- **Tipo de Tarea**: dejar el valor por defecto si no se requiere uno específico.
- **Agente Comercial**: si se completa, se suma a cada solicitud generada.
- **Rol**: por ejemplo *Vendedor*, para notificar a todos los usuarios con ese rol.
- **Unidad de Duración** y **Duración**: por ejemplo *Día* + *1* (o *Día* + *7* según la holgura deseada).

Guardar.

### 3. Reiniciar el servidor si la tabla es nueva

Si esta es la **primera vez** que se configura un Tipo de Solicitud Estándar sobre esa tabla, **reiniciar el servidor de Solop**. Sin reinicio, el validador automático no queda registrado y la notificación **no se va a generar**.

### 4. Validar el disparo de la primera notificación

Completar una entrega de venta posterior a la *Fecha Válido De*. El sistema debe generar automáticamente la solicitud, con los destinatarios definidos:

- **Socio de negocio** del documento.
- **Usuario** que completó el documento.
- **Agente comercial** y **usuarios con el rol** indicado (si se configuraron).

### 5. Validar el disparo de la segunda notificación

Si pasa el tiempo configurado (*Unidad × Duración*) sin que la solicitud se atienda, el sistema genera **una segunda solicitud automática** dirigida a los mismos destinatarios indicando el vencimiento.

### 6. Consultar las notificaciones generadas

Abrir la ventana **Cola de Notificación** y filtrar por *Tipo de Mensaje = Estándar* y *Tipo de Aplicación = Correo Electrónico* para ver las notificaciones enviadas. Esto sirve como evidencia de que la regla funcionó correctamente.

## Ejemplo de uso

La organización quiere avisar automáticamente a sus clientes cuando un pedido queda **listo para retirar**, y avisarles nuevamente si pasaron **7 días** sin que se lo retire:

1. Crear el Tipo de Solicitud Estándar con:
   - Tabla = **Entregas**, Evento = **Después de Completar**, Transacción de Ventas = sí, Fecha Válido De = primer día del mes.
2. En la pestaña Solicitud Estándar:
   - Asunto = "Pedido por Retirar".
   - Resumen = "Existe un pedido por retirar".
   - Confidencialidad = *Confidencial Tercero*.
   - Tipo de Solicitud = *Comunicación*, Categoría = *Administrativo*.
   - Rol = *Vendedor* (para que todos los vendedores reciban copia).
   - Unidad de Duración = *Día*, Duración = *7*.
3. Como es la primera vez que se usa la tabla de entregas para esta función, se reinicia el servidor de Solop.
4. Se completa una entrega de venta. Automáticamente se genera una solicitud "Pedido por Retirar" dirigida al cliente, al usuario que completó la entrega y a los vendedores.
5. Si pasan 7 días sin que la solicitud se atienda, el sistema genera una **segunda** solicitud automática a los mismos destinatarios.

## Consideraciones importantes

- **Reinicio del servidor:** solo es necesario cuando se agrega una **tabla nueva** en *Tipo de Solicitud Estándar*. Si se modifican o agregan reglas sobre una tabla previamente registrada, los cambios toman efecto sin reinicio.
- **Destinatarios fijos:** los destinatarios automáticos (socio de negocio + usuario que completa) están definidos por la regla y no se eligen documento por documento. Si se necesita variar por documento, conviene complementar la regla con el campo **Rol** o **Agente Comercial**, que sí son configurables a nivel del tipo.
- **Filtro por venta:** dejar **Transacción de Ventas** desmarcada hace que la regla también dispare para recepciones/entradas. Si la intención es solo notificar entregas de venta, marcar siempre esta casilla.
- **Fecha Válido De:** documentos con fecha anterior a este campo no generan notificación, aunque cumplan el resto de las condiciones. Es la forma de **evitar avisos sobre documentos históricos**.
- **Segunda notificación:** se genera **solo si la solicitud original no se cerró** dentro del tiempo de holgura. Si la solicitud se atiende y se cierra antes, no hay recordatorio.
- **Notificación por rol:** el rol notifica a **todos los usuarios** que lo tengan asignado, no solo a uno. Conviene usarlo cuando se quiere alertar a un equipo completo.
- **Verificación operativa:** la ventana **Cola de Notificación** es la fuente de verdad para confirmar qué notificaciones se enviaron, a quién y cuándo. Es el punto de auditoría ante un reclamo del cliente.
- **Confidencialidad:** *Confidencial Tercero* asegura que el contenido pueda compartirse con el cliente. Para notificaciones únicamente internas, usar un nivel más restrictivo.

## Ventanas relacionadas

- [Solicitud](request)
- [Plantilla de Notificación por Evento](event-notice-template)
- [Plantilla de Correo](mail-template)
- [Información del Agente Comercial](sales-rep-info)
- [Enviar Texto de Correo](send-mail-text)
- [Entregas (Cliente)](../sales-management/shipments/shipment-customer)
