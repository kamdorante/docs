---
title: Lista de Distribución de Notificaciones
category: Documentation
star: 9
sticky: 9
article: false
---

# Lista de Distribución de Notificaciones

## Descripción

La ventana **Lista de Distribución de Notificaciones** permite crear grupos reutilizables de destinatarios para el envío de notificaciones, de forma similar a una lista de difusión: en lugar de indicar uno a uno los usuarios que deben recibir un aviso, se define una lista con un código y se referencia ese código desde cualquier proceso, integración o servicio externo que genere la notificación.

Cada lista puede combinar tres tipos de miembros —**usuarios**, **roles** y **otras listas**— y el sistema resuelve internamente el conjunto final de destinatarios antes de generar la notificación, evitando el envío duplicado a un mismo usuario aunque aparezca por más de una vía.

## ¿Cuándo se utiliza?

Se utiliza cuando la organización necesita:

- Notificar a un grupo fijo de personas sin tener que seleccionarlas manualmente cada vez.
- Enviar notificaciones desde procesos automáticos o servicios externos (por ejemplo, integraciones de tiendas web o marketplaces) indicando solo un código de lista.
- Agrupar varias listas dentro de otra lista para armar estructuras jerárquicas de destinatarios (por ejemplo, una lista de responsables que a su vez incluye varias listas de equipos).
- Notificar a todos los usuarios que tengan asignado un determinado rol, sin mantener esa nómina manualmente.

## Acceso

Menú: Reglas Básicas → Notificaciones → Lista de Distribución de Notificaciones

## Pestañas

### Lista de Distribución de Notificaciones

Pestaña principal donde se define la lista. Los campos más importantes son:

- **Código**
  Identificador corto de la lista. Es el dato que se utiliza para referenciarla desde procesos internos o **servicios externos** al momento de generar una notificación, por lo que conviene que sea claro y estable en el tiempo (por ejemplo, el código de una integración puntual).

- **Nombre**
  Descripción legible de la lista, para identificarla dentro del sistema.

### Miembros

Pestaña donde se agregan los integrantes de la lista. Cada línea define un miembro según su **Tipo de Miembro**:

- **Usuario**
  Muestra el campo **Usuario**: la notificación se envía directamente a la persona seleccionada.

- **Rol**
  Muestra el campo **Rol**: la notificación se envía a todos los usuarios que tengan ese rol asignado. No es necesario mantener actualizada una lista de personas; el sistema resuelve los usuarios vigentes de ese rol en cada envío.

- **Lista**
  Muestra el campo **Lista de Distribución Referenciada**: permite anidar otra lista dentro de la actual (una "lista de listas"). El sistema resuelve de forma recursiva todos los usuarios que pertenezcan a la lista referenciada.

## Flujo del proceso

### 1. Crear la lista

Ingresar un **Código** y un **Nombre** descriptivos para la nueva lista de distribución.

### 2. Agregar miembros

En la pestaña **Miembros**, agregar tantas líneas como sea necesario, combinando usuarios puntuales, roles y/o listas ya existentes según el **Tipo de Miembro**.

### 3. Referenciar la lista al generar notificaciones

Desde el proceso, integración o servicio externo que dispara la notificación, indicar el **Código** de la lista como destinatario. El sistema resuelve automáticamente los usuarios finales al momento de armar la [Cola de Notificación](./notification-queue).

### 4. Mantener la lista

Agregar o quitar miembros según cambien los responsables o equipos involucrados. Los cambios aplican a partir de la siguiente notificación que referencie el código de la lista; no afectan notificaciones ya enviadas.

## Ejemplo de uso

Una integración externa de importación de productos desde una tienda web debe avisar al equipo encargado cuando finaliza el proceso, sin que el equipo técnico tenga que modificar la integración cada vez que cambian los responsables:

1. Crear una lista de distribución con código `productos-tienda` y nombre "Notificaciones de Importación de Productos".
2. En **Miembros**, agregar como **Tipo de Miembro = Lista** una lista ya existente con el equipo operativo, y como **Tipo de Miembro = Usuario** a la persona responsable puntual del seguimiento.
3. Configurar el proceso externo para que, al finalizar la importación, genere la notificación indicando el código `productos-tienda` como destinatario.
4. Al ejecutarse la integración, el sistema resuelve automáticamente todos los usuarios de la lista anidada más el usuario puntual, sin enviar el aviso dos veces a quien pertenezca a ambos grupos.

## Consideraciones importantes

- El **Código** es el dato clave para integraciones: cualquier proceso interno o servicio externo que necesite notificar a esta lista debe referenciarlo, no el nombre.
- La resolución de destinatarios es **global y sin duplicados**: si un usuario pertenece a la lista de forma directa, por rol y también a través de una lista anidada, solo recibe la notificación una vez.
- Anidar listas (listas de listas) permite armar estructuras jerárquicas, por ejemplo una lista de "Responsables" que agrupa varias listas de equipo, sin tener que repetir usuarios en cada nivel.
- Un miembro de **Tipo Rol** siempre refleja los usuarios vigentes con ese rol; no requiere mantenimiento manual cuando cambian los usuarios que lo tienen asignado.
- Esta ventana define **quién** recibe la notificación. El contenido, los adjuntos y el envío en sí se gestionan desde la [Cola de Notificación](./notification-queue).

## Ventanas relacionadas

- [Lista de Distribución Genérica para Errores](./generic-error-distribution-list)
- [Cola de Notificación](./notification-queue)
