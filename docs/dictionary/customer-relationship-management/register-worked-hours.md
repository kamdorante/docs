---
title: Registro de Horas en Solicitudes
category: Documentation
star: 9
sticky: 9
article: false
---

# Registro de Horas en Solicitudes

## Descripción

El navegador **Registro de Horas en Solicitudes** permite registrar las horas trabajadas directamente sobre las solicitudes en las que el usuario ha participado. A través de una consulta inteligente filtrada por el usuario activo en sesión, es posible seleccionar una o varias solicitudes y asignarles horas, indicando el motivo de la actividad, la cantidad de horas y una descripción opcional.

Cada registro de horas queda vinculado a la solicitud correspondiente como una asignación de recurso, conservando la trazabilidad del trabajo realizado.

## ¿Cuándo se utiliza?

Se utiliza cuando se necesita:

- Registrar el tiempo invertido en la atención o resolución de una solicitud
- Documentar actividades realizadas sobre solicitudes asignadas al usuario
- Llevar un control de horas trabajadas por solicitud para efectos de seguimiento o facturación de servicios
- Registrar horas en múltiples solicitudes en una sola operación

## Acceso

Menú: Gestión de Relaciones con Clientes → Registro de HorasActúa como un Ingeniero de Documentación Senior.

1. Contexto del Proyecto: 
Estoy generando documentación técnica para una plataforma web. Debes procesar la información extraída de videos que se encuentra en exportar_2808_20260609, ademas de las transcripciones presta suma atencion a la conversacion.md y sus peticiones

2. Referencias Obligatorias:

Estructura Técnica: Usa como base el archivo skills\solop-dict-enricher\SKILL.md Este archivo define cómo debe funcionar el generador de documentación.

Diseño y Estilo: El documento final debe seguir estrictamente el diseño, la jerarquía de encabezados y el tono de la documentación existente en: dictionary/human-management/leave-management/.

3. Tarea Específica: 
Toma los datos de los videos ademas de las transcripciones presta suma atencion a la conversacion md y sus peticiones en exportar_2808_20260609 y redacta un nuevo archivo de documentación que explique el proceso o la funcionalidad descrita en ellos.

Asegúrese de que los bloques de código, las tablas y las listas sigan el estilo de la ruta de "leave-management".

Si en los videos se mencionan procesos de base de datos o lógica de negocio, documéntalos con la claridad técnica que requiere un colaborador sin mostrar ningun dato sensible ya que esto lo vera el usuario final, es decir el cliente.

4. Formato de Salida: 
Introduzca el contenido en formato Markdown (.md) listo para ser integrado en el repositorio. de ya exitir dentro de docs\dictionary uno o varios documentos que hable de este tema o del proceso mencionado, lo que haras es modificarlos a cada uno

Al momento de procesar el registro, el navegador solicita los siguientes datos:

| Campo | Descripción | Obligatorio |
|---|---|---|
| **Cantidad de horas** | Número de horas que se asignan a la solicitud seleccionada | Sí |
| **Motivo / Actividad** | Descripción breve de la actividad realizada (por ejemplo: "Revisión de incidencia", "Reunión de seguimiento") | Sí |
| **Descripción** | Detalle adicional sobre el trabajo realizado | No |
| **Organización** | Unidad organizativa bajo la que se registran las horas | Sí |
| **Fecha de servicio** | Fecha en la que se realizó la actividad | Sí |
| **Recurso** | Recurso asignado al registro de horas. Debe existir previamente en el sistema | Sí |

## Flujo del proceso

### 1. Seleccionar el rango de fechas

Al ingresar al navegador, seleccionar en el filtro **Modificadas en** el período deseado (día, semana o mes). Hacer clic en el botón de búsqueda para cargar el listado de solicitudes.

> **Importante:** La lista no se actualiza automáticamente al cambiar el filtro de fecha. Es necesario presionar el botón de actualizar o refrescar la búsqueda para ver los resultados correspondientes al nuevo rango.

### 2. Revisar las solicitudes disponibles

El sistema muestra las solicitudes que cumplen todos los criterios: modificadas en el período seleccionado y en las que el usuario activo esté o haya estado asignado.

Las solicitudes con estado **cerrado** no aparecerán en la lista. Si se necesita registrar horas en una solicitud cerrada, primero debe reabrirse desde la ventana [Solicitud](./request) y asignarse nuevamente el usuario.

### 3. Seleccionar las solicitudes

Marcar una o más solicitudes de la lista sobre las que se desea registrar horas. Es posible procesar varias solicitudes en una misma operación, ingresando la cantidad de horas y el motivo para cada una de forma individual.

### 4. Completar los datos de registro

Para cada solicitud seleccionada, ingresar:

- La **cantidad de horas** correspondiente
- El **motivo o actividad** realizada (campo obligatorio)
- La **descripción** adicional si se requiere (campo opcional)

### 5. Procesar el registro

Confirmar la organización, la **fecha de servicio** y el **recurso** a asociar. Hacer clic en **Procesar** para generar los registros de horas.

El sistema crea una asignación de recurso por cada solicitud procesada, vinculada a la solicitud específica y con los datos ingresados.

### 6. Verificar los registros generados

Los registros creados quedan disponibles en la sección **Asignación de Recursos**, donde se pueden revisar con la fecha de servicio indicada, la cantidad de horas asignadas y el recurso seleccionado.

## Consideraciones importantes

- El navegador filtra las solicitudes según el **usuario activo en la sesión**. Solo se visualizan solicitudes en las que dicho usuario esté o haya estado asignado en algún momento.
- Tras cambiar el filtro de fecha, es necesario **actualizar manualmente** la búsqueda para ver los resultados del nuevo rango seleccionado.
- Las **solicitudes cerradas** no se muestran en el listado. Para registrar horas en una solicitud cerrada, debe reabrirse y asignarse nuevamente al usuario desde la ventana [Solicitud](./request).
- Es necesario que exista al menos un **recurso** configurado en el sistema para poder completar el registro de horas.
- Cada solicitud puede recibir registros con diferentes cantidades y motivos, permitiendo documentar múltiples actividades.

## Ejemplo de uso

Un consultor necesita registrar las horas trabajadas en dos solicitudes atendidas durante la semana:

1. Ingresar al navegador **Registro de Horas en Solicitudes**
2. Seleccionar **Semana** en el filtro **Modificadas en** y hacer clic en buscar
3. El sistema muestra las solicitudes modificadas durante la semana en las que el consultor estuvo asignado
4. Seleccionar las dos solicitudes correspondientes
5. Para la primera solicitud, ingresar **1 hora** con motivo **"Revisión de incidencia"**
6. Para la segunda solicitud, ingresar **2 horas** con motivo **"Reunión de seguimiento"** y una descripción adicional
7. Confirmar la organización, ingresar la **fecha de servicio** (la fecha en que se realizó la actividad) y seleccionar el **recurso** correspondiente
8. Hacer clic en **Procesar**
9. Verificar en **Asignación de Recursos** que se generaron los dos registros con las horas y motivos indicados
