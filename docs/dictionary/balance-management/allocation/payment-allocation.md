---
title: Asignación de Pagos
category: Documentation
star: 9
sticky: 9
article: false
---

# Asignación de Pagos

## Descripción

El formulario **Asignación de Pagos** permite vincular de forma manual pagos o cobros registrados en el sistema con documentos por pagar o por cobrar pendientes de cancelación. Es la herramienta habitual para cerrar el ciclo financiero entre el pago/cobro y la factura correspondiente cuando esa asignación no se resolvió automáticamente en el flujo del documento (por ejemplo, cuando el pago entró sin referencia a factura o cuando un proveedor envía varios pagos contra una misma factura).

El formulario ofrece dos paneles: arriba, los pagos/cobros sin asignar del socio de negocio seleccionado; abajo, las facturas con saldo abierto. El usuario marca en qué orden asigna cada documento, y el sistema calcula las diferencias, genera la asignación al confirmar y permite absorber diferencias menores contra un cargo contable (por redondeo, gasto bancario, intereses, etc.).

## ¿Cuándo se utiliza?

Se utiliza cuando la organización necesita:

- Aplicar un cobro recibido a una o varias facturas pendientes de un cliente.
- Aplicar un pago emitido a una o varias facturas pendientes de un proveedor.
- Cancelar parcialmente una factura con un pago/cobro cuyo monto no coincide exactamente.
- Aplicar varios pagos a una misma factura o un mismo pago a varias facturas.
- Resolver diferencias menores entre pago y factura (gastos bancarios, redondeos, intereses) enviándolas a un cargo configurado.
- Generar asignaciones multimoneda con tipo de conversión *spot* o negociado entre las partes.

## Acceso

Menú: **Gestión de Saldos Pendientes → Asignación → Asignación de Pagos**

Desde el formulario se puede navegar a la ventana **Consulta de Asignación** para revisar la asignación generada o anularla si se creó por error.

## Pantallas del formulario

### Pantalla 1 — Definición de la búsqueda

Parámetros iniciales para acotar los documentos que se mostrarán:

- **Socio del Negocio**
  Cliente o proveedor cuyos pagos/cobros y facturas se desean asignar.

- **Organización**
  Organización dentro del cliente en la que se realiza la asignación.

- **Moneda**
  Moneda de trabajo para la asignación.

- **Fecha**
  Hasta qué fecha se consideran documentos (saldos abiertos a esa fecha).

- **Asignación Multimoneda**
  Indicador que habilita la asignación entre documentos en monedas diferentes, con conversión al tipo indicado.

- **Tipo de Conversión**
  *Spot* (tasa de cambio vigente) o una tasa **negociada** (acordada con la contraparte para cancelar un conjunto específico de documentos).

- **Cuentas por Pagar**
  Incluye los documentos por pagar del socio.

- **Cuentas por Cobrar**
  Incluye los documentos por cobrar del socio. Pueden activarse ambos indicadores simultáneamente cuando se desea asignar factura de cliente contra factura de proveedor del mismo socio.

### Pantalla 2 — Panel de asignación

Se abre al continuar desde la pantalla 1. Muestra dos paneles:

- **Panel superior: Pagos y Cobros sin Asignar**
  Lista los pagos y cobros del socio seleccionado con su total convertido a la moneda de trabajo y el saldo abierto actual. A medida que se asignan pagos a facturas, el saldo abierto va disminuyendo.

- **Panel inferior: Facturas con Saldo Abierto**
  Lista las facturas del socio con el total convertido y el saldo abierto. Cada selección reduce el saldo abierto de la factura elegida.

Ambos paneles pueden **colapsarse** individualmente para trabajar con mayor comodidad cuando hay muchos documentos.

### Controles de la pantalla de asignación

- **Check de selección**
  Marca un documento para incluirlo en la asignación. El sistema toma automáticamente el total abierto del documento como importe a asignar; ese valor puede editarse manualmente.

- **Total a Asignar**
  Importe acumulado seleccionado en el panel actualmente "activo" (pagos o facturas).

- **Diferencia**
  Diferencia entre lo seleccionado en el panel superior y lo seleccionado en el inferior. Cuando es cero, la asignación está lista para confirmarse.

- **Enviar Diferencia a Cargo**
  Opción para absorber una diferencia residual contra un cargo configurado (por ejemplo, *Gastos Bancarios*, *Redondeo*, *Intereses*).

- **OK / Confirmar**
  Genera la asignación entre los documentos seleccionados y cancela el saldo correspondiente.

## Acciones disponibles

- **Siguiente**
  Desde la pantalla 1, abre el panel de asignación con los documentos filtrados.

- **Confirmar Asignación**
  Crea la asignación manual entre los documentos seleccionados. El sistema informa el número del documento de asignación generado.

- **Enviar Diferencia a Cargo**
  Envía el saldo residual a un cargo contable configurado para cerrar la asignación cuando los importes no cuadran exactamente.

- **Anular Asignación**
  Desde la ventana *Consulta de Asignación*, revertir una asignación generada por error. Los documentos vuelven a aparecer en el formulario con su saldo abierto previo.

## Flujo del proceso

### 1. Abrir el formulario y filtrar

Ingresar a **Asignación de Pagos** y completar la pantalla 1 con socio de negocio, organización, moneda, fecha y los indicadores de *Cuentas por Pagar* y/o *Cuentas por Cobrar* según el caso.

### 2. Revisar los documentos listados

En la pantalla 2, revisar el panel superior (pagos/cobros sin asignar) y el inferior (facturas con saldo abierto). Confirmar que aparecen los documentos esperados para el socio.

### 3. Seleccionar primero el importe menor

Para asignaciones parciales, seleccionar **primero el documento con menor saldo abierto**. El sistema toma ese importe como total a asignar y, al seleccionar luego el documento con mayor saldo, aplica únicamente la diferencia disponible sin superar el total disponible para asignar.

### 4. Confirmar la asignación

Al tener diferencia cero (lo seleccionado arriba coincide con lo seleccionado abajo), pulsar **OK** para generar la asignación. El sistema crea el documento de asignación con los montos correspondientes y cierra los saldos de ambos documentos.

### 5. Resolver diferencias con cargo

Si al asignar queda una diferencia menor (por redondeo, gastos bancarios, intereses), activar **Enviar Diferencia a Cargo** y seleccionar el cargo configurado. El sistema cierra ambos documentos y registra la diferencia contra el cargo.

### 6. Asignar múltiples documentos

Para una asignación múltiple, seleccionar varios pagos y/o varias facturas. El sistema suma los importes y genera una asignación única que vincula todos los documentos marcados.

### 7. Validar o anular

Desde **Consulta de Asignación**, buscar el documento generado y verificar el detalle (qué pagos cancelaron qué facturas). Si la asignación es incorrecta, anularla para que los documentos vuelvan a estar disponibles.

## Ejemplo de uso

Un proveedor recibe dos pagos parciales que cancelan una factura mayor:

1. Abrir **Asignación de Pagos** y filtrar por el proveedor.
2. Marcar **Cuentas por Pagar** para ver los documentos por pagar.
3. En el panel superior, aparecen dos pagos de 13.066 cada uno. En el panel inferior, una factura de 26.132.
4. **Seleccionar primero los dos pagos** (suma 26.132). El total a asignar muestra 26.132.
5. Seleccionar la factura de 26.132. El sistema toma exactamente ese monto y la diferencia queda en cero.
6. Pulsar **OK**. El sistema genera la asignación que cancela ambos pagos contra la factura.

Variante con diferencia contra cargo:

1. Factura de 13.420 y pago de 13.066 (diferencia 354 por gastos bancarios).
2. Seleccionar el pago primero, luego la factura. Queda una diferencia de 354.
3. Activar **Enviar Diferencia a Cargo** y seleccionar el cargo *Gastos Bancarios*.
4. Confirmar. El sistema genera la asignación cancelando ambos documentos y registrando 354 contra el cargo.

## Consideraciones importantes

- **El orden de selección importa**: para asignaciones parciales, seleccionar primero el documento con menor saldo abierto evita que el sistema tome el total del documento mayor y deje una diferencia que no cierra.
- Al marcar un documento, el sistema toma por defecto su **total abierto** como importe a asignar. Se puede editar manualmente ese valor cuando se quiere hacer una asignación de un importe específico menor.
- Cuando la diferencia no puede cerrarse seleccionando documentos, usar **Enviar Diferencia a Cargo** con un cargo configurado (gastos bancarios, redondeo, intereses, descuentos) para no dejar saldos residuales abiertos.
- La **asignación multimoneda** permite usar tipo de conversión *spot* o una tasa **negociada**. Esta última se usa cuando la empresa y la contraparte acuerdan una tasa específica para cancelar un conjunto de facturas (por ejemplo, cancelar dos meses de facturas a una tasa convenida).
- Activar simultáneamente **Cuentas por Pagar** y **Cuentas por Cobrar** permite asignar factura de cliente contra factura de proveedor cuando el mismo socio opera en ambos roles.
- Una asignación puede incluir **múltiples pagos y múltiples facturas**; el sistema genera un único documento de asignación con todas las líneas.
- Para anular una asignación, usar **Consulta de Asignación** y buscar el documento generado. Al anularlo, los documentos originales vuelven al saldo abierto previo y reaparecen en el formulario.
- La asignación generada desde el formulario queda **marcada como manual** en la descripción del usuario, lo que facilita distinguirla de las asignaciones automáticas del sistema.
- El panel colapsable es útil cuando hay muchos documentos: plegar el panel que no se está modificando ayuda a ver con claridad el otro panel.

## Ventanas relacionadas

- [Consulta de Asignación](view-allocation)
- [Reiniciar Asignación](reset-allocation)
- [Asignación Masiva](massive-allocation)
- [Asignación Automática](auto-allocation)
- [Pagos sin Asignar](unallocated-payments)
- [Facturas sin Asignar](unallocated-invoices)
