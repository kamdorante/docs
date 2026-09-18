---
title: Lista de Distribución Genérica para Errores
category: Documentation
star: 9
sticky: 9
article: false
---

# Lista de Distribución Genérica para Errores

## Descripción

La **lista de distribución genérica para errores** es un caso particular de la [Lista de Distribución de Notificaciones](./notification-distribution-list): es la lista a la que se envían las notificaciones cuando el sistema **no puede determinar a qué lista deberían dirigirse**.

En muchos procesos, la lista de destinatarios se resuelve a partir de un dato del propio registro que se está procesando (por ejemplo, la organización, el contrato, etc.). Sin embargo, algunos fallos ocurren antes de que ese dato esté disponible. Para esos casos existe una lista genérica que centraliza los **errores genéricos**, de modo que siempre tengan un destinatario definido en lugar de quedar sin enviar o llegar a destinatarios que no corresponden.

## ¿Cuándo se utiliza?

Se utiliza cuando un proceso puede fallar **antes** de contar con la información necesaria para elegir la lista de distribución de destino, típicamente en integraciones e importaciones.

Casos típicos:

- Un proceso de importación que falla por un error de conexión antes de leer o insertar cualquier registro.
- Un archivo de origen con datos inválidos, que impide continuar antes de determinar a qué organización o entidad pertenece.
- Cualquier fallo temprano en el que el sistema aún no dispone del dato que definiría la lista de destinatarios específica.

## Acceso

Menú: Reglas Básicas → Notificaciones → Lista de Distribución de Notificaciones

La lista genérica no es una ventana aparte: se administra desde la misma ventana de [Lista de Distribución de Notificaciones](./notification-distribution-list), identificándola por su **Código**.

## ¿Qué es un error genérico?

Un error genérico es cualquier fallo que se produce **antes** de que el proceso disponga de la información necesaria para determinar a qué lista de distribución debe enviarse la notificación. Al no poder resolverse el destinatario, el error no puede dirigirse a una lista específica.

Ejemplos típicos durante una importación:

- Fallo de conexión.
- Datos inválidos en el archivo de origen.

Estos fallos ocurren en las primeras etapas del proceso, cuando el sistema todavía no tiene los datos que le permitirían elegir la lista de destino.

## ¿Por qué existe esta distinción?

Porque el dato que define la lista de destino no siempre está disponible desde el inicio del proceso. En el caso de la importación de informes de gastos, la organización no puede determinarse **antes** de importar los informes: recién se resuelve una vez insertado el encabezado del informe de gastos, tomándola de los datos del contrato.

En consecuencia, todos los errores que ocurren **antes** de ese punto son genéricos: el sistema no puede saber a qué lista deberían ir. Por esa razón existe una lista genérica a la cual dirigir esos errores.

## Comportamiento

- Los errores producidos **antes** de que el sistema pueda resolver la lista de destino se envían a la **lista genérica**.
- Los errores producidos **después**, cuando el destinatario ya está determinado, se dirigen a la lista específica que corresponda (si existe).
- La lista genérica reemplaza cualquier comportamiento previo en el que estos errores pudieran terminar llegando a destinatarios arbitrarios: pasan a tener un único destino definido y controlado.

## Configuración

1. Abrir la ventana [Lista de Distribución de Notificaciones](./notification-distribution-list).
2. Identificar o crear la lista genérica. Por convención debe tener el **Código** (`Value`) `errors`: si ya existe una lista con ese código, se utiliza esa; si no, se crea.
3. En la pestaña **Miembros**, agregar **solo** a los usuarios que deban recibir los errores genéricos. Como estos avisos no están acotados a un destinatario específico, conviene limitar la lista a las personas realmente responsables de atenderlos.

La lista debe quedar configurada **tanto en Solop como en cualquier flujo o proceso externo** que dependa de ella (por ejemplo, integraciones en n8n u otros servicios). El sistema no puede deducir automáticamente cuál es la lista de errores: cada proceso que envíe errores genéricos debe apuntar explícitamente al código `errors`.

## Consideraciones importantes

- El **Código** de la lista genérica debe coincidir con el que esperan los procesos que envían errores genéricos (por convención, `errors`).
- La lista genérica debe existir y tener miembros en cada instancia y en cada integración externa que la utilice; de lo contrario, los errores genéricos no llegarán a ningún destinatario.
- Conviene mantener acotada la lista de miembros a los responsables de atender este tipo de fallos, dado que no están asociados a una organización ni a un destinatario puntual.

## Ejemplo de uso

Durante la importación de informes de gastos, el archivo de origen no indica a qué organización corresponde cada informe: ese dato se obtiene del contrato una vez insertado el encabezado del informe. Si la importación falla por un error de conexión o por datos inválidos antes de ese punto, el sistema no puede saber a qué organización pertenece el fallo.

En ese escenario, la notificación del error se envía a la lista de código `errors`, cuyos miembros son las personas responsables de revisar las importaciones. Una vez insertado el encabezado, si se produjera un error posterior, ya podría dirigirse a la lista específica que corresponda según la organización del contrato.

## Ventanas relacionadas

- [Lista de Distribución de Notificaciones](./notification-distribution-list)
- [Cola de Notificación](./notification-queue)
