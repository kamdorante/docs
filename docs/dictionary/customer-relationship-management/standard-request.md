---
title: Solicitud Estándar
category: Documentation
star: 9
sticky: 9
article: false
---

# Solicitud Estándar

## Descripción

La **Solicitud Estándar** es la definición del **contenido y los destinatarios** de la solicitud que el sistema genera automáticamente cada vez que la regla parent [Tipo de Solicitud Estándar](standard-request-type) dispara sobre un documento. Vive como pestaña interna del *Tipo de Solicitud Estándar* y controla:

- **Qué texto** verá el destinatario (asunto y resumen).
- **Cómo se clasifica** la solicitud (tipo, categoría, prioridad, tipo de tarea, nivel de confidencialidad).
- **A quién** llega la notificación, además de los destinatarios por defecto (agente comercial y rol).
- **Cuánto tiempo** tiene el destinatario para atenderla antes de que se dispare una **segunda notificación** (holgura definida por *Unidad de Duración × Duración*).

Cada Tipo de Solicitud Estándar tiene su bloque de Solicitud Estándar. El comportamiento de disparo (evento sobre el documento, filtros por tipo de documento o fecha) se configura en el registro padre; **este documento se enfoca en la solicitud generada**.

## ¿Cuándo se utiliza?

Se utiliza cuando la organización necesita:

- Definir el **texto** que verá el destinatario en la solicitud y en el correo asociado (por ejemplo, *"Pedido por Retirar"*).
- Clasificar la solicitud generada según el catálogo interno (tipo, categoría, prioridad) para que quede accionable por el equipo correcto.
- Agregar destinatarios adicionales al **agente comercial** o a **todos los usuarios con un rol** específico (por ejemplo, *Vendedor*).
- Fijar el **tiempo de holgura** para que, si nadie atendió la solicitud, se dispare una segunda notificación de vencimiento.

## Acceso

**Menú:** Gestión de Relaciones → **Tipo de Solicitud Estándar** → seleccionar el registro correspondiente → pestaña **Solicitud Estándar**.

No existe una entrada de menú propia: el bloque siempre se opera dentro del registro padre.

## Configuración previa

Antes de completar el bloque *Solicitud Estándar* deben estar disponibles:

- El registro padre [Tipo de Solicitud Estándar](standard-request-type) ya creado, con la tabla, el evento y los filtros definidos.
- Los **tipos de solicitud**, **categorías**, **prioridades** y **tipos de tarea** habituales del módulo CRM (configuradas por el administrador).
- El **rol** al que se quiera notificar como grupo (por ejemplo, *Vendedor*).
- Los usuarios destinatarios deben tener correo configurado para recibir la notificación por correo electrónico.

## Campos

| Campo | Descripción | Tipo | Obligatorio |
|-------|-------------|------|-------------|
| Asunto | Asunto de la solicitud y de los correos enviados (por ejemplo, "Pedido por Retirar") | Texto | Sí |
| Resumen | Texto principal que verá el destinatario en la solicitud (por ejemplo, "Existe un pedido por retirar") | Texto | Sí |
| Entrada Confidencial | Nivel de confidencialidad. Para mensajes hacia el cliente se usa habitualmente *Confidencial Tercero* | Lista | Sí |
| Tipo de Solicitud | Tipo CRM clásico de la solicitud (por ejemplo, *Comunicación*, *Reclamo*, *Consulta*) | Tabla Directa | Sí |
| Categoría | Categoría adicional para clasificar (por ejemplo, *Administrativo*, *Comercial*) | Tabla Directa | No |
| Prioridad | Prioridad asignada a la solicitud generada | Lista | No |
| Tipo de Tarea | Tipo de tarea CRM. Puede dejarse con su valor por defecto | Tabla Directa | No |
| Agente Comercial | Si se completa, cada solicitud generada por la regla lleva este agente como destinatario adicional | Tabla | No |
| Rol | Si se completa, la notificación llega a **todos los usuarios con ese rol** | Tabla | No |
| Unidad de Duración | Unidad temporal del tiempo de holgura (Día, Hora, Semana, etc.) | Lista | No |
| Duración | Cantidad de unidades del tiempo de holgura | Número | No |

## Parámetros del comportamiento

| Comportamiento | Origen | Resultado |
|----------------|--------|-----------|
| Disparo de la **primera** notificación | El evento configurado en el registro padre (por ejemplo, *Después de Completar*) | Se crea automáticamente una solicitud con los datos definidos aquí, dirigida al **socio de negocio** del documento y al **usuario que lo completó**, más el **agente comercial** y los usuarios del **rol** indicado si están cargados |
| Disparo de la **segunda** notificación | Vencimiento del tiempo definido por *Unidad de Duración × Duración* sin que la solicitud original se haya atendido | Se crea una segunda solicitud automática hacia los mismos destinatarios, indicando que la atención está pendiente |
| Destinatarios extendidos | Campos *Agente Comercial* y *Rol* | Cada solicitud lleva a esos destinatarios además del socio de negocio y del usuario que completó el documento |
| Confidencialidad del contenido | Campo *Entrada Confidencial* | Determina si el contenido puede compartirse con el cliente. *Confidencial Tercero* habilita el envío externo |

## Flujo del proceso

### 1. Ubicarse en el registro padre

Abrir [Tipo de Solicitud Estándar](standard-request-type) y seleccionar el registro cuya solicitud se va a definir (por ejemplo, *"Aviso Pedido por Retirar"*).

### 2. Ir a la pestaña Solicitud Estándar

Dentro del registro padre, cambiar a la pestaña **Solicitud Estándar**.

### 3. Completar el contenido

Escribir el **Asunto** y el **Resumen**. El asunto es lo primero que ve el destinatario; el resumen es el texto principal.

### 4. Clasificar la solicitud

Completar **Tipo de Solicitud**, **Categoría**, **Prioridad**, **Tipo de Tarea** y **Entrada Confidencial** para que la solicitud quede accionable por el equipo correcto y con el nivel de visibilidad adecuado.

### 5. Definir destinatarios adicionales

Si aplica, cargar **Agente Comercial** (destinatario fijo adicional) y **Rol** (todos los usuarios con ese rol reciben la solicitud).

### 6. Definir la holgura

Completar **Unidad de Duración** y **Duración**. Este par determina en cuánto tiempo se dispara la segunda notificación si la solicitud original no se atiende (por ejemplo, *Día* + *7* = una semana).

### 7. Guardar

Guardar. Los cambios aplican en el siguiente disparo del evento configurado en el registro padre.

## Ejemplo de uso

Definir la solicitud que se envía al cliente cuando queda un pedido listo para retirar, con recordatorio a los 7 días:

1. Abrir el Tipo de Solicitud Estándar *"Aviso Pedido por Retirar"* y cambiar a la pestaña **Solicitud Estándar**.
2. Completar:
   - **Asunto**: *"Pedido por Retirar"*.
   - **Resumen**: *"Existe un pedido por retirar"*.
   - **Entrada Confidencial**: *Confidencial Tercero*.
   - **Tipo de Solicitud**: *Comunicación*.
   - **Categoría**: *Administrativo*.
   - **Prioridad**: la deseada.
   - **Tipo de Tarea**: valor por defecto.
   - **Rol**: *Vendedor* (para que todos los vendedores reciban copia).
   - **Unidad de Duración**: *Día*, **Duración**: *7*.
3. Guardar.
4. Al completar una entrega de venta posterior a la *Fecha Válido De* del registro padre, el sistema genera automáticamente una solicitud con este contenido dirigida al cliente, al usuario que completó la entrega y a los vendedores.
5. Si pasan 7 días sin que la solicitud se cierre, el sistema genera una **segunda** solicitud automática con los mismos destinatarios indicando el vencimiento.

## Consideraciones importantes

- **Destinatarios por defecto:** cada solicitud generada llega automáticamente al **socio de negocio** del documento y al **usuario que completó** el documento. Los campos *Agente Comercial* y *Rol* de esta pestaña **agregan** destinatarios; no los reemplazan.
- **Segunda notificación:** se genera **solo si la solicitud original no se cerró** dentro del tiempo de holgura. Si el destinatario atendió y cerró antes, no hay recordatorio.
- **Notificación por rol:** cuando se carga un rol, la notificación llega a **todos los usuarios** que lo tienen asignado, no solo al usuario original. Conviene usarlo cuando el aviso debe alertar a un equipo completo.
- **Confidencialidad:** *Confidencial Tercero* asegura que el contenido pueda compartirse con el cliente. Para notificaciones internas, usar un nivel más restrictivo.
- **Contenido con datos dinámicos:** el asunto y el resumen son texto fijo; el sistema no reemplaza campos del documento origen dentro del texto configurado aquí. Si se necesita personalizar por documento, se usa el mecanismo estándar de plantillas de correo del módulo CRM.
- **Tiempo de holgura vacío:** si *Unidad de Duración* o *Duración* quedan vacíos, no se dispara la segunda notificación aunque la solicitud siga abierta.
- **Verificación operativa:** las notificaciones enviadas se auditan desde la ventana **Cola de Notificación**, filtrando por *Tipo de Mensaje = Estándar* y *Tipo de Aplicación = Correo Electrónico*.

## Ventanas relacionadas

- [Tipo de Solicitud Estándar](standard-request-type)
- [Solicitud](request)
- [Plantilla de Notificación por Evento](event-notice-template)
- [Plantilla de Correo](mail-template)
- [Información del Agente Comercial](sales-rep-info)
- [Enviar Texto de Correo](send-mail-text)
- [Entregas (Cliente)](../sales-management/shipments/shipment-customer)
