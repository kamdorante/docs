---
title: Conciliación de Estado de Cuenta
category: Documentation
star: 9
sticky: 9
article: false
---

# Conciliación de Estado de Cuenta

## Descripción

El formulario **Conciliación de Estado de Cuenta** es la herramienta que empareja las líneas del extracto bancario importado con los pagos y cobros registrados en el sistema. Automatiza la gran mayoría de los emparejamientos aplicando el algoritmo configurado en la cuenta bancaria (importe, número de referencia, fecha) y permite al usuario resolver manualmente los casos restantes: asignar pagos pendientes, desasignar vinculaciones incorrectas, realizar matches múltiples y preparar el terreno para completar el estado de cuenta.

Es un paso intermedio del flujo de conciliación bancaria: se ejecuta después de cargar el archivo del banco y antes de generar los pagos faltantes y completar el documento. Puede ejecutarse varias veces durante el proceso para ir resolviendo movimientos a medida que se cargan nuevos pagos en el sistema.

## ¿Cuándo se utiliza?

Se utiliza cuando la organización necesita:

- Emparejar automáticamente las líneas del extracto bancario con pagos y cobros registrados en el sistema.
- Revisar los movimientos conciliados y corregir los que requieran ajuste manual.
- Asignar un pago manualmente cuando el algoritmo no pudo hacer el match (por diferencia de referencia, descripción o fecha).
- Realizar un **match múltiple** cuando el banco agrupa varios pagos del sistema en un solo movimiento.
- Desasignar vinculaciones hechas por error y reasignarlas correctamente.

## Acceso

Existen dos formas de acceder:

1. **Desde el estado de cuenta bancario:** abrir el documento en **Gestión de Saldos Pendientes → Operaciones Bancarias → Estado de Cuenta Bancario** y ejecutar la acción **Conciliación de Estado de Cuenta**.
2. **Desde el menú:** Gestión de Saldos Pendientes → Operaciones Bancarias → Conciliación de Estado de Cuenta.

## Filtros del formulario

Antes de ver las pestañas, conviene entender el **Modo de Búsqueda** porque determina qué líneas son visibles:

- **No Asignado** (valor por defecto)
  Muestra solo las líneas del extracto que todavía **no tienen pago vinculado**. Al ejecutar el match automático, las líneas que se concilian **desaparecen** de esta vista; eso no significa que se hayan borrado, sino que ya no son "pendientes".

- **Asignado**
  Muestra solo las líneas que ya están **vinculadas a un pago** (por match automático o manual). Este es el filtro que se usa cuando se quiere **revisar o corregir** un match ya hecho.

- **Todos**
  Muestra **todas las líneas** del extracto, asignadas y pendientes, en una misma vista.

Tras cualquier acción (Simular, Aplicar, Asignar, Desasignar), pulsar **Refrescar** para actualizar la vista con el nuevo estado.

## Pestañas

### Líneas del Extracto

Panel con las líneas del estado de cuenta a conciliar. La información relevante incluye:

- **Fecha del Estado de Cuenta**
  Fecha de la operación según el banco.

- **Monto del Estado de Cuenta**
  Importe reportado por el banco (positivo = cobro, negativo = pago).

- **Número de Referencia y Descripción**
  Datos del banco utilizados por el algoritmo para proponer el match.

- **Estado de Conciliación**
  Estado del match actual: *Conciliado automáticamente*, *Asignado manualmente*, *Pendiente*.

### Pagos del Sistema

Panel con los pagos y cobros candidatos para emparejar. Muestra:

- **Número de Documento y Fecha**
  Identificadores del pago o cobro en el sistema.

- **Socio de Negocio**
  Cliente o proveedor del pago.

- **Monto**
  Importe del pago, con signo según la operación.

- **Moneda**
  Moneda del pago; útil cuando se concilian líneas multimoneda.

### Sugerencia de Match

Vista intermedia que muestra las propuestas del algoritmo para cada línea: qué pago candidato se sugiere, la razón del match (importe coincidente, referencia, etc.) y el estado propuesto.

## Acciones disponibles

- **Simular Conciliación**
  Ejecuta el algoritmo sin aplicar los cambios, mostrando qué líneas quedarían conciliadas automáticamente. Útil para validar antes de confirmar.

- **Aplicar Conciliación**
  Guarda los matches propuestos por el algoritmo contra las líneas del estado de cuenta y los pagos del sistema.

- **Asignar Manualmente**
  Permite seleccionar un pago del panel de pagos del sistema y vincularlo a una línea específica del extracto.

- **Desasignar**
  Quita la vinculación de una línea con su pago, dejando ambos disponibles para reasignación.

- **Match Múltiple**
  Vincula una sola línea del extracto con varios pagos del sistema (por ejemplo, cuando el banco agrupó cobros múltiples).

- **Refrescar**
  Actualiza los candidatos del panel de pagos del sistema después de registrar nuevos documentos, sin cerrar el formulario.

## Flujo del proceso

### 1. Abrir el estado de cuenta a conciliar

Desde la ventana **Estado de Cuenta Bancario**, abrir el documento con las líneas ya cargadas desde el archivo del banco.

### 2. Ejecutar la conciliación

Lanzar el formulario **Conciliación de Estado de Cuenta**. El sistema muestra las líneas del extracto, los pagos candidatos y la sugerencia de match según el algoritmo configurado para la cuenta bancaria.

### 3. Simular y aplicar

Opcionalmente, ejecutar **Simular Conciliación** para revisar las propuestas sin aplicarlas. Tras la validación, ejecutar **Aplicar Conciliación** para materializar los emparejamientos automáticos.

### 4. Revisar las líneas pendientes

Las líneas que el algoritmo no pudo emparejar automáticamente quedan como *Pendiente*. Revisarlas una a una y decidir la acción:

- **Asignación manual** cuando el pago existe en el sistema pero con referencia distinta.
- **Match múltiple** cuando una línea del banco representa varios pagos del sistema.
- **Generar pago** (desde el visor de *Crear Pagos desde Estado de Cuenta*) cuando no existe el pago y corresponde a un cargo, comisión o cobro no identificado.

### 5. Corregir vinculaciones erróneas

Si una línea quedó conciliada con un pago incorrecto:

1. Cambiar el **Modo de Búsqueda** a **Asignado** (o **Todos**) para que aparezcan las líneas ya emparejadas. Refrescar.
2. Marcar las líneas que se quieren liberar.
3. Ejecutar **Desasignar Conciliación**. Las líneas vuelven al estado pendiente y los pagos del sistema quedan disponibles nuevamente.
4. Volver al **Modo de Búsqueda = No Asignado** para continuar con la reasignación (manualmente o ejecutando otra simulación).

### 6. Iterar hasta completar

La conciliación puede ejecutarse varias veces: a medida que se registran pagos nuevos en el sistema, volver al formulario y aplicar el algoritmo nuevamente para resolver las líneas que quedaban pendientes.

### 7. Volver al estado de cuenta

Cuando todas las líneas tengan pago asignado, cerrar el formulario y continuar con el flujo del estado de cuenta (generar pagos faltantes desde el visor y completar el documento).

## Ejemplo de uso

Conciliación de un extracto con 70 movimientos:

1. Abrir el **Estado de Cuenta Bancario** previamente cargado con 70 líneas.
2. Ejecutar **Conciliación de Estado de Cuenta**. El algoritmo propone emparejar 45 líneas con pagos y cobros del sistema por coincidencia de importe y referencia.
3. Ejecutar **Aplicar Conciliación**. Las 45 líneas quedan conciliadas automáticamente; 25 quedan pendientes.
4. Revisar las pendientes:
   - 3 corresponden a pagos del sistema que tenían referencia distinta a la del banco; asignarlos manualmente.
   - 1 línea del banco agrupa 4 cobros: ejecutar **Match Múltiple** y seleccionar los 4 pagos del sistema.
   - 21 son comisiones y cargos bancarios; se resolverán desde el visor *Crear Pagos desde Estado de Cuenta*.
5. Cerrar el formulario y continuar con la generación de pagos faltantes.

## Preguntas frecuentes

### Hice un match automático y ahora no veo las líneas que se asignaron. ¿Cómo las recupero para desasignar?

Las líneas asignadas siguen en el estado de cuenta; lo que ocurre es que el filtro **Modo de Búsqueda** por defecto es **No Asignado**, que las oculta. Para recuperarlas:

1. Cambiar el **Modo de Búsqueda** a **Asignado** (solo las ya emparejadas) o **Todos** (toda la grilla, asignadas y pendientes).
2. Pulsar **Refrescar** para actualizar la vista.
3. Las líneas ya conciliadas aparecen con su pago vinculado.
4. Marcar las que se quieren liberar y ejecutar **Desasignar Conciliación**.
5. Volver al modo **No Asignado** para seguir conciliando lo que queda pendiente.

### El estado de cuenta está en Borrador, ¿puedo deshacer un match?

Sí. Mientras el estado de cuenta esté en **Borrador** o **En Proceso**, las acciones de **Desasignar Conciliación** están disponibles y se pueden ejecutar tantas veces como sea necesario. La conciliación queda firme solo al **Completar** el estado de cuenta desde su cabezal.

### Después de un match automático masivo veo que muchas líneas quedaron mal. ¿Puedo deshacer todo de una vez?

Sí. Cambiar el filtro a **Asignado**, **seleccionar todas** las líneas (multiselección) y ejecutar **Desasignar Conciliación**. El sistema libera todas las asignaciones de una sola operación y las líneas vuelven al pool pendiente para reiniciar el proceso (por ejemplo, ejecutar **Simular Conciliación** nuevamente con criterios distintos, o asignar manualmente).

### ¿Necesito acceso a "Conciliación Automática de Cuentas" para deshacer el match?

No. La **Conciliación Automática de Cuentas** del módulo contable es un proceso distinto (conciliación de hechos contables, no del extracto bancario). Para deshacer un match del estado de cuenta bancario, todo se hace desde el formulario **Conciliación de Estado de Cuenta** con la acción **Desasignar Conciliación**, cambiando previamente el filtro Modo de Búsqueda.

## Consideraciones importantes

- El **algoritmo de conciliación** se configura por cuenta bancaria. Si los resultados automáticos son pobres, revisar los criterios (importe exacto, rango de fechas, número de referencia) para ajustarlos.
- El formulario puede ejecutarse **múltiples veces** sobre el mismo estado de cuenta; los matches ya aplicados se conservan y solo se evalúan las líneas pendientes.
- Al **desasignar** una línea, el pago del sistema vuelve al panel de candidatos y queda disponible para asignarse a otra línea.
- Las líneas con **diferencia de importe** pueden asignarse parcialmente; si la diferencia es intencional (comisiones, redondeos), usar la funcionalidad específica de *Conciliación con Diferencia en Montos* para registrarla como ajuste.
- El **match múltiple** es especialmente útil con pasarelas de cobranza que entregan un acreditado consolidado; cada subcomponente debe existir como pago independiente en el sistema.
- La conciliación **no completa el estado de cuenta**: es un paso intermedio. El completado se ejecuta desde la ventana principal del estado de cuenta una vez que todas las líneas están identificadas.
- Si el panel de pagos del sistema no muestra un candidato esperado, verificar que el pago esté en estado *Completo* y corresponda a la misma cuenta bancaria del extracto.
- Los cambios hechos en la conciliación se reflejan inmediatamente en las líneas del **Estado de Cuenta Bancario**, facilitando la revisión cruzada.

## Ventanas relacionadas

- [Estado de Cuenta Bancario](bank-statement)
- [Reporte de Estado de Cuenta Bancario](bank-statement-report)
- [Pagos No Conciliados](unreconciled-payments)
- [Conciliación Manual con Diferencia en Montos](../../accounting-management/reconciliation/bank-statement-assignment-with-difference)
