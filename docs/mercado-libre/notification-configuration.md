---
title: Configuración de Notificaciones
category: Documentation
star: 9
sticky: 9
article: false
prev:
  text: 'Publicación de Producto en Mercado Libre'
  link: '/mercado-libre/product-publication'
next:
  text: 'Notificaciones de Importación y Envío'
  link: '/mercado-libre/order-import-notifications'
---

# Configuración de Notificaciones de Mercado Libre

## Descripción

Para recibir las [notificaciones de importación y envío de Mercado Libre](order-import-notifications), el sistema utiliza una **lista de distribución** que define **qué usuarios** son destinatarios y una configuración por usuario que determina **por qué medio** los recibe (aviso interno, correo electrónico o ambos).

La configuración tiene dos partes independientes:

1. **Lista de Distribución de Notificaciones** → define **quiénes** reciben las notificaciones.
2. **Tipo de Notificación** en la ventana Usuario → define **cómo** las recibe cada usuario.

## ¿Cuándo se utiliza?

Se configura una sola vez al habilitar la integración con Mercado Libre y cada vez que se necesite:

- Agregar o quitar usuarios de la lista de destinatarios.
- Cambiar el medio por el que un usuario recibe las notificaciones (aviso, correo o ambos).

## Acceso

- **Lista de Distribución de Notificaciones**: ventana *Lista de Distribución de Notificaciones*.
- **Tipo de Notificación**: ventana *Usuario*.

## Paso 1: Configurar la Lista de Distribución

En la ventana **Lista de Distribución de Notificaciones** existe el registro cuyo **Código** es `meli-pedidos`. Este código lo utiliza el sistema para identificar la lista y **no puede ser diferente**.

![Registro meli-pedidos de la Lista de Distribución de Notificaciones](/assets/img/docs/mercado-libre/notification-distribution-list.png)

### Campos principales

| Campo | Descripción |
|-------|-------------|
| **Compañía / Organización** | Ámbito al que aplica la lista. |
| **Código** | Debe ser exactamente `meli-pedidos`. El sistema busca este código; no debe modificarse. |
| **Nombre** | Nombre descriptivo de la lista (por ejemplo, *pedidos meli*). |
| **Activo** | Debe estar en *Sí* para que la lista esté operativa. |

## Paso 2: Agregar los usuarios destinatarios (Miembros)

En la parte inferior de la ventana, en la pestaña **Miembros**, se agrega un **nuevo registro por cada destinatario** que deba recibir las notificaciones de Mercado Libre.

![Pestaña Miembros de la lista de distribución](/assets/img/docs/mercado-libre/notification-distribution-member.png)

### Campos principales

| Campo | Descripción |
|-------|-------------|
| **Lista de Distribución** | Debe apuntar al registro `meli-pedidos`. |
| **Tipo de Miembro** | Indica si el destinatario es un **Usuario** o un **Rol**. |
| **Usuario** | El usuario que debe recibir las notificaciones (cuando el tipo de miembro es *Usuario*). |
| **Activo** | Debe estar en *Sí*. |

Se puede agregar tanto un usuario individual como un rol, según a quién deba llegar la notificación.

## Paso 3: Definir el medio de notificación por usuario

Estar en la lista de distribución determina que el usuario es destinatario, pero **la forma en que recibe la notificación depende de la configuración de la ventana Usuario**.

En la ventana **Usuario**, el campo **Tipo de Notificación** define el medio. Sus opciones son:

![Campo Tipo de Notificación en la ventana Usuario](/assets/img/docs/mercado-libre/user-notification-type.png)

| Opción | Comportamiento |
|--------|----------------|
| **Aviso** | La notificación llega como aviso interno dentro del sistema. |
| **Aviso + Redes Sociales** | Aviso interno más redes sociales. |
| **EMail** | La notificación llega al correo electrónico configurado para el usuario. |
| **EMail + Aviso** | Llega tanto al correo como al aviso interno del sistema. |
| **EMail + Redes Sociales** | Correo más redes sociales. |
| **Ninguno** | El usuario no recibe notificaciones. |
| **Redes Sociales** | Solo redes sociales. |
| Otras combinaciones | Tareas relacionadas, todos los medios posibles, etc. |

En la práctica, las opciones recomendadas son **Aviso**, **EMail** o **EMail + Aviso**:

- Con **EMail**, las notificaciones llegan al correo electrónico que el usuario tenga configurado.
- Con **Aviso**, llegan al panel de avisos dentro del sistema.
- Con **EMail + Aviso**, llegan a ambos lugares.

## ¿Dónde se ven los avisos?

Cuando el tipo de notificación incluye **Aviso**, las notificaciones aparecen dentro del sistema en:

- El **panel de avisos** del Panel de Control.
- El **icono de notificaciones** (campana) en la parte superior derecha.
- La ventana **Aviso**, que concentra todas las notificaciones recibidas.

![Panel de avisos con una notificación de Mercado Libre](/assets/img/docs/mercado-libre/notice-panel-example.png)

Desde el panel de avisos se puede marcar cada notificación como leída o usar **Marcar Todos**.

## Consideraciones importantes

- El **Código** de la lista debe ser exactamente `meli-pedidos`; si es distinto, el sistema no identifica la lista y no se envían las notificaciones.
- Estar en la lista de distribución define **quién** es destinatario; el **Tipo de Notificación** del usuario define **por qué medio** lo recibe.
- Si un usuario tiene **Tipo de Notificación** en *Ninguno*, no recibirá las notificaciones aunque esté en la lista.
- Para recibir por correo, el usuario debe tener su correo electrónico correctamente configurado.

## Ejemplo de uso

Se necesita que un responsable de logística reciba los avisos de envío de Mercado Libre por correo y también dentro del sistema. Para lograrlo:

1. En la ventana **Lista de Distribución de Notificaciones**, sobre el registro `meli-pedidos`, se agrega en la pestaña **Miembros** un nuevo registro con el usuario del responsable.
2. En la ventana **Usuario**, se ubica a ese usuario y se coloca el campo **Tipo de Notificación** en **EMail + Aviso**.

A partir de ese momento, cada notificación de importación o envío de Mercado Libre le llega tanto al correo como al panel de avisos del sistema.
