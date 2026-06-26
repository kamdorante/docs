---
title: Copiar Resultado de un Proceso con Error
category: Documentation
star: 9
sticky: 9
article: false
---

# Copiar Resultado de un Proceso con Error

## Descripción

La acción **Copiar Resultado de un Proceso con Error** permite enviar al portapapeles, en texto plano, el **mensaje de error completo** devuelto por un proceso cuando este falla. Esto incluye, cuando aplica, el identificador del error y la referencia al campo o registro que lo provocó.

Es una de las seis acciones de copia documentadas en [Copiar Datos de Auditoría](copy-audit-data).

## ¿Cuándo se utiliza?

Se utiliza cuando se necesita:

- **Reportar a soporte o desarrollo** el texto literal de un error, evitando errores de transcripción.
- **Documentar internamente** un error recurrente para análisis o seguimiento.
- **Adjuntar a un ticket** la evidencia textual exacta, especialmente cuando el error contiene identificadores internos o referencias a campos específicos.

## Acceso

1. Ejecutar la acción que provoca el error (por ejemplo, *Completar* una orden de venta sin líneas).
2. El sistema muestra una ventana modal con el mensaje de error (por ejemplo, *"No se encontraron líneas de documento"*).
3. Pulsar el botón **Copiar** ubicado en la **esquina inferior izquierda** del aviso de error (ícono de copia, a la izquierda de los botones de cerrar y *Ver Detalle*).
4. El texto del error queda en el portapapeles.

![Botón Copiar en aviso de error de proceso](/assets/img/docs/basic-rules/copiar-error.png)

*Ventana modal de error con el botón **Copiar** en la esquina inferior izquierda, al lado del botón rojo de cerrar y del botón **Ver Detalle**.*

## Qué se copia

| Sección | Contenido |
|---------|-----------|
| Mensaje principal del error | Texto del error tal como lo muestra el sistema |
| Identificador del error | Cuando aplica, código interno que ayuda a localizar la causa |
| Referencias adicionales | Cuando aplica, nombre del campo, ID del registro o detalle técnico que devolvió el proceso |

## Flujo del proceso

### 1. Ejecutar el proceso que genera el error

Realizar la acción cuya validación se quiere probar o que está fallando en producción. Esperar a que aparezca la ventana modal de error.

### 2. Localizar el botón Copiar

En el pie del aviso de error, identificar el botón **Copiar** en la **esquina inferior izquierda**. Está acompañado por el botón rojo de cerrar (a la derecha) y, cuando hay más información, por el botón **Ver Detalle**.

### 3. Copiar el error

Pulsar **Copiar**. El sistema deja el texto del error en el portapapeles.

### 4. Pegar y validar

Pegar (Ctrl + V) en un editor para revisar que el texto se haya copiado completo (especialmente si el error es largo o contiene identificadores).

### 5. Adjuntar al ticket

Enviar el texto en el ticket de soporte. **Conviene complementarlo** con:

- [Copiar Datos de una Ventana](copy-window-data): para que el equipo vea sobre qué registro estaba operando el usuario.
- [Copiar Parámetros de un Reporte](copy-report-parameters) o [Copiar Parámetros de un Navegador](copy-browser-parameters): si el error vino de un reporte o navegador.

## Ejemplo de uso

Reportar un error al intentar completar una orden de venta sin líneas:

1. Abrir una **Orden de Venta** sin líneas y ejecutar *Completar*.
2. Aparece la ventana de error: *"No se encontraron líneas de documento"*.
3. Pulsar el botón **Copiar** en la esquina inferior izquierda del aviso.
4. Pegar en el ticket. El soporte recibe el texto exacto del error, sin riesgo de tipeo.
5. Adjuntar también [Copiar Datos de una Ventana](copy-window-data) con la orden seleccionada para que el equipo vea el registro completo.

## Consideraciones importantes

- Algunos errores son cortos y autoexplicativos (como *"No se encontraron líneas de documento"*); otros contienen **identificadores internos** o referencias a campos. En cualquier caso, conviene **copiar el texto exacto** en lugar de transcribirlo.
- El botón **Copiar** del aviso de error está en la **esquina inferior izquierda**, no en la barra superior de la interfaz (a diferencia de las copias de reportes, navegadores y ventanas).
- Cuando el error tiene **Ver Detalle**, ese botón abre más información técnica; útil si el equipo de soporte la pide.
- Para errores que se reproducen, conviene capturar también una **captura de pantalla** del aviso completo para complementar el texto.
- El contenido es **texto plano**: pegarlo en un editor antes de enviar para validar y agregar contexto.

## Ventanas relacionadas

- [Copiar Datos de Auditoría](copy-audit-data)
- [Copiar Datos de una Ventana](copy-window-data)
- [Copiar Parámetros de un Reporte](copy-report-parameters)
- [Copiar Parámetros de un Navegador](copy-browser-parameters)
- [Copiar Auditoría Detallada de un Documento](copy-detailed-document-audit)
