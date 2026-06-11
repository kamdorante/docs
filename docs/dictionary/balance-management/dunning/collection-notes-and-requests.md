---
title: Notas y Solicitudes para Cobranzas
category: Documentation
star: 9
sticky: 9
article: false
---

# Notas y Solicitudes para Cobranzas

## Descripción

El sistema ofrece **dos mecanismos complementarios** para que el área de cobranzas registre el seguimiento de gestión sin depender de planillas externas. Ambos se acceden desde el reporte de **Saldos Pendientes** y permiten dejar constancia de los acuerdos con el cliente, los compromisos de pago y las acciones internas requeridas para destrabar el cobro:

- **Notas y check "En Negociación"** en la propia factura, para registrar comentarios puntuales sobre el documento y marcarlo como no cobrable mientras dure la negociación.
- **Solicitudes de tipo Cobranzas**, para crear una tarea interna asignable a otro usuario (cobrador, vendedor, administración) con historial completo de comentarios y cambios de estado.

Esta funcionalidad reemplaza el seguimiento en Excel u otras herramientas externas: el comentario queda asociado al documento o a la tarea, con fecha, hora y usuario que lo registró, y es consultable por cualquiera que tenga acceso al socio o a la factura.

## ¿Cuándo se utiliza?

Se utiliza cuando la organización necesita:

- Registrar un comentario sobre una factura vencida (por ejemplo, *"el cliente informó que paga ambas facturas el 15/06/26"*).
- Marcar una factura como **en negociación** para que no se contabilice como cobrable hasta destrabar el acuerdo.
- Asignar una tarea interna de cobranza a otro usuario (cobrador, vendedor, contador) y darle seguimiento.
- Dejar trazabilidad de los acuerdos con el cliente con fecha, hora y usuario que registró el comentario.
- Reemplazar el seguimiento en planillas externas por información centralizada en el sistema.

## Acceso

Existen varios puntos de acceso según el mecanismo:

1. **Desde Saldos Pendientes:** Gestión de Saldos Pendientes → Saldos Pendientes → desde el campo *Factura* navegar al documento por cobrar.
2. **Notas y En Negociación:** dentro del documento por cobrar (Factura del Cliente), pestaña **Notas** y check **En Negociación** del cabezal.
3. **Solicitudes de Cobranza:** Gestión de Relaciones → **Solicitud** (o desde el mismo documento, si la organización configuró el acceso directo).

## Mecanismo 1 — Notas y check "En Negociación"

Es el mecanismo más rápido para dejar un comentario puntual sobre una factura.

### Campos relevantes en la factura

- **Nota**
  Texto libre que se agrega a la pestaña *Notas* del documento. Cada nota queda registrada con la **fecha, hora y usuario** que la creó.

- **En Negociación**
  Indicador *Sí/No* en el cabezal del documento. Marcado en *Sí*, señala que la factura **no está pronta para ser cobrada** porque está en negociación con el cliente. El motivo debe explicarse en una nota asociada.

### Acciones

- **Agregar Nota**
  Desde la pestaña *Notas* de la factura, escribir el comentario y guardar. La entrada queda con timestamp y usuario.

- **Marcar En Negociación**
  Activar el indicador *En Negociación* en el cabezal y guardar. Idealmente acompañar con una nota que detalle el motivo (por ejemplo, *"Cliente informa que paga ambas facturas el 15/06/26"*).

- **Quitar En Negociación**
  Cuando se destraba la negociación (por ejemplo, al recibir el pago acordado), desactivar el indicador para que la factura vuelva a aparecer como cobrable.

## Mecanismo 2 — Solicitudes de tipo Cobranzas

Cuando la gestión requiere intervención de otra persona (otra área, supervisor, vendedor), conviene crear una **Solicitud** de tipo *Cobranzas*. La solicitud queda como una tarea formal asignable, con historial.

### Campos relevantes

- **Tipo de Solicitud**
  *Cobranzas* (configurable por la organización).

- **Asignado a**
  Usuario responsable de ejecutar la tarea.

- **Estado**
  Estado del ciclo de vida (abierta, en proceso, cerrada).

- **Resumen y Descripción**
  Texto que describe la acción solicitada (por ejemplo: *"Pasar horas utilizadas a factura X"*, *"Ajustar precio de factura X"*, *"Solicitud de nota de crédito por factura X"*).

- **Actualizaciones / Feed**
  Histórico cronológico de comentarios y cambios de estado. Cada entrada queda con su autor y momento.

### Acciones

- **Crear Solicitud de Cobranzas**
  Desde la ventana **Solicitud**, crear un nuevo registro indicando tipo *Cobranzas*, asignar al usuario que debe ejecutar la acción y escribir el texto correspondiente.

- **Agregar Comentario al Feed**
  Desde la pestaña *Actualizaciones* de la solicitud, agregar el avance o respuesta a medida que se gestiona la tarea.

- **Cambiar Estado**
  Actualizar el estado a medida que avanza (en proceso, cerrada). El cambio queda en el historial.

- **Reasignar**
  Cambiar el usuario asignado cuando la tarea pasa a otra persona. El historial conserva todos los asignados anteriores.

## Flujo del proceso

### 1. Identificar la factura desde Saldos Pendientes

Abrir el reporte de **Saldos Pendientes**, ubicar la factura vencida o pendiente y usar el campo *Factura* para navegar al documento por cobrar.

### 2. Elegir el mecanismo según la situación

- Si es solo un comentario informativo o un acuerdo simple con el cliente → usar **Notas** + **En Negociación** en la factura.
- Si requiere que **otro usuario ejecute una acción** (ajuste, NC, registro de horas, llamada al cliente) → crear una **Solicitud de Cobranzas**.

### 3. Registrar el comentario o crear la solicitud

- **Nota**: en la pestaña *Notas* de la factura, escribir el comentario y guardar.
- **En Negociación**: marcar el indicador en el cabezal y guardar; agregar una nota con el motivo.
- **Solicitud**: crear el registro con tipo *Cobranzas*, asignar al responsable y describir la acción solicitada.

### 4. Hacer seguimiento

- Las **notas** quedan visibles en la pestaña correspondiente de la factura para cualquier usuario con acceso.
- Las **solicitudes** son visibles como tarea pendiente para el usuario asignado, con feed de actualizaciones.

### 5. Cerrar el ciclo

- Al recibir el pago acordado o resolver la situación, **quitar el indicador En Negociación**.
- En la solicitud, **agregar el comentario final** de cierre y cambiar el estado a *Cerrada*.

## Ejemplo de uso

Caso típico: dos facturas vencidas del mismo cliente que acuerda pago consolidado.

1. Desde **Saldos Pendientes**, ubicar las dos facturas vencidas del cliente.
2. Navegar a la primera factura. En la pestaña *Notas*, escribir: *"El cliente informó que paga ambas facturas el 15/06/26"*. Guardar.
3. En el cabezal, marcar **En Negociación = Sí**. Guardar.
4. Repetir el paso 2 y 3 en la segunda factura (o referenciar la primera nota).
5. Si la cobranza requiere que un cobrador llame al cliente el 14/06/26 para confirmar, crear una **Solicitud** de tipo *Cobranzas* asignada al cobrador, con descripción *"Confirmar pago acordado de facturas X e Y para el 15/06/26"*.
6. El cobrador ve la tarea, llama al cliente y agrega un comentario al feed: *"Cliente confirma pago el 15/06/26 por transferencia"*.
7. Al recibirse el pago el 15/06/26, agregar nota final en cada factura, quitar el indicador *En Negociación* y cerrar la solicitud.

## Consideraciones importantes

- Cada **nota** queda registrada con **fecha, hora y usuario** que la creó, lo que aporta trazabilidad completa. No es necesario indicar el autor manualmente.
- El indicador **En Negociación** es informativo y normalmente acompañado de una nota con el motivo; por sí solo no aclara la causa.
- Una factura **En Negociación** sigue figurando en saldos pendientes; la marca indica que el área de cobranza está al tanto y que la factura tiene un acuerdo en curso. Los reportes y filtros pueden excluirla del listado de cobrables si así se configura.
- Las **solicitudes** son la vía recomendada cuando la gestión implica a **otra área u otro usuario** (vendedor, administración, contador). Concentran la conversación, las actualizaciones y el estado en un solo lugar.
- El **feed de la solicitud** registra cada comentario con autor y timestamp; no se pierde información cuando cambia la persona asignada.
- Las **solicitudes cerradas** no se eliminan: quedan disponibles como historial. Si se necesita reabrir una solicitud para continuar la gestión, cambiar el estado nuevamente a abierta.
- Esta funcionalidad reemplaza el seguimiento en **Excel**: la información queda centralizada en el sistema, vinculada al documento o a la tarea, y accesible para todo el equipo de cobranza sin necesidad de compartir archivos.
- Las notas y solicitudes no afectan los **saldos contables** ni los procesos de cálculo de morosidad: son herramientas de gestión, no documentos contables.

## Ventanas relacionadas

- [Solicitud](../../customer-relationship-management/request)
- [Crear Cálculo de Morosidad](create-dunning-calculation)
- [Cálculo de Intereses por Mora](late-payment-interest)
- [Corrida de Morosidad](dunning-run)
