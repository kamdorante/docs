---
title: Estado de Cuenta Corriente
category: Documentation
star: 9
sticky: 9
article: false
---

# Estado de Cuenta Corriente

## Descripción

El **Estado de Cuenta Corriente** es el reporte que presenta cronológicamente todos los movimientos contables (facturas, notas de crédito, cobros, pagos, ajustes) de un socio de negocio en un rango de fechas, con su saldo acumulado a cada fecha. Es la herramienta habitual para conciliar con el cliente o el proveedor lo que la organización tiene registrado contra lo que figura en sus libros, y para entregar como respaldo de la cuenta corriente a fin de mes.

El reporte permite filtrar por **Organización** o por **Corporación** (un agrupador que reúne varias organizaciones bajo un mismo socio comercial), pero **nunca por ambos a la vez ni por ninguno**: el proceso valida que se elija exactamente uno antes de ejecutarse. Cuando se filtra por corporación, el reporte muestra todas las organizaciones asociadas que tengan movimientos del socio seleccionado, junto con un total acumulado consolidado.

## ¿Cuándo se utiliza?

Se utiliza cuando la organización necesita:

- Entregar al cliente o proveedor el detalle de su cuenta corriente con saldo acumulado.
- Conciliar lo registrado en el sistema con la cuenta corriente del socio.
- Validar el total abierto del socio comparando contra el reporte de **Saldos Pendientes**.
- Consolidar la cuenta corriente de varias organizaciones que pertenecen al mismo grupo empresarial (corporación).
- Filtrar la cuenta corriente de una sola organización dentro de un grupo más amplio.

## Acceso

Menú: **Gestión de Saldos Pendientes → Pagos y Cobros → Estado de Cuenta Corriente**

## Parámetros

| Parámetro | Descripción | Tipo | Obligatorio | Valor por defecto |
|-----------|-------------|------|-------------|-------------------|
| Organización | Organización a incluir en el reporte. Excluyente con *Corporación* | Búsqueda | Condicional | |
| Corporación | Agrupador que incluye varias organizaciones. Al elegirla, el reporte muestra todas las organizaciones asociadas que tengan movimientos. Excluyente con *Organización* | Búsqueda | Condicional | |
| Transacción de Ventas | Filtra por tipo de operación: *Sí* para clientes (cuentas por cobrar), *No* para proveedores (cuentas por pagar) | Sí/No | No | Sí |
| Socio del Negocio | Cliente o proveedor del cual se consultan los movimientos | Búsqueda | No | |
| Moneda | Moneda en la que se presentan los movimientos | Tabla | No | |
| Fecha Inicio | Primera fecha efectiva (inclusive) del rango a consultar | Fecha | No | Fecha actual |
| Fecha Fin | Última fecha efectiva (inclusive) del rango a consultar | Fecha | No | Fecha actual |

::: warning
El reporte exige que se seleccione **Organización** o **Corporación**, **pero nunca ambos a la vez ni ninguno**. Si no se cumple esta regla, la ejecución del reporte falla con el mensaje correspondiente.
:::

## Acciones disponibles

- **Ejecutar Reporte**
  Genera el estado de cuenta corriente con los filtros indicados.

- **Exportar**
  Descarga el reporte en los formatos habituales (Excel, PDF) para enviar al cliente/proveedor o archivarlo.

- **Comparar con Saldos Pendientes**
  Ejecutar paralelamente el reporte de **Saldos Pendientes** con la misma corporación, moneda, fecha y socio (sin elegir organización) para validar que el total abierto coincida con el acumulado del Estado de Cuenta Corriente.

## Flujo del proceso

### 1. Determinar el alcance del reporte

Decidir si la consulta abarca:

- Una **organización individual** (por ejemplo, una sucursal puntual).
- Una **corporación** completa (todas las organizaciones del grupo).

### 2. Completar los filtros

Abrir **Estado de Cuenta Corriente** y completar:

- *Organización* o *Corporación* (uno solo).
- *Transacción de Ventas* (Sí para clientes, No para proveedores).
- *Socio del Negocio* (cliente o proveedor a consultar).
- *Moneda* (la que se desea reportar).
- *Fecha Inicio* y *Fecha Fin* del rango.

### 3. Ejecutar el reporte

Lanzar la ejecución. El sistema valida los parámetros (en particular, la regla excluyente entre Organización y Corporación) y genera el reporte.

### 4. Revisar el resultado

El reporte presenta los movimientos cronológicamente con su saldo acumulado. Cuando se filtra por corporación, el reporte separa los movimientos por organización mientras mantiene un acumulado global.

### 5. Validar contra Saldos Pendientes (opcional)

Para confirmar consistencia, ejecutar el reporte **Saldos Pendientes** con los mismos filtros (corporación, moneda, fecha, socio) y dejar el campo *Organización* vacío. El total abierto del reporte de saldos pendientes debe coincidir con el acumulado final del Estado de Cuenta Corriente.

### 6. Exportar y entregar

Si todo coincide, exportar el reporte para entregar al socio o archivarlo como respaldo del cierre.

## Ejemplo de uso

Comparar la cuenta corriente del cliente con el total abierto consolidado de una corporación:

1. Abrir **Estado de Cuenta Corriente** y filtrar:
   - *Corporación*: el grupo empresarial (por ejemplo, una corporación con cuatro organizaciones).
   - *Socio del Negocio*: el cliente.
   - *Moneda*: pesos uruguayos.
   - *Fecha Inicio / Fin*: desde varios años atrás hasta hoy.
   - *Transacción de Ventas*: No (cuentas por pagar).
2. Ejecutar el reporte. El sistema lista todos los movimientos del cliente en las cuatro organizaciones, agrupados, con un total acumulado final de 269.978,98.
3. Abrir el reporte de **Saldos Pendientes** con los mismos filtros (corporación, moneda, fecha, socio) sin seleccionar organización. El total abierto da 269.978,98.
4. Confirmada la coincidencia, exportar y entregar el Estado de Cuenta Corriente al cliente.

Variante con organización individual:

1. Repetir el paso 1 pero filtrando por *Organización* (por ejemplo, la sucursal *Tres Cruces*) en vez de corporación.
2. Ejecutar. El reporte muestra solo los movimientos de esa organización del socio.

## Consideraciones importantes

- La regla **uno-y-solo-uno** entre Organización y Corporación es estricta. Si el reporte falla con el mensaje de validación, revisar que solo uno de los dos campos esté completo.
- El **acumulado** se calcula cronológicamente sobre los movimientos filtrados; cambiar la fecha de inicio o de fin altera el saldo de apertura y cierre presentados.
- Para que el **filtro por corporación** funcione, las organizaciones deben estar previamente asociadas a la corporación desde la ventana **Organización → Información de la Organización**, campo *Corporación*.
- El acumulado del **Estado de Cuenta Corriente** filtrado por corporación coincide con el total abierto del reporte de **Saldos Pendientes** ejecutado para esa corporación sin filtro de organización. Si difieren, indica inconsistencia en los filtros, en los movimientos del período o en la asignación de organizaciones a la corporación.
- Cuando se ejecuta para **proveedores** (Transacción de Ventas = No), los importes se interpretan como cuentas por pagar; para clientes (Sí), como cuentas por cobrar.
- El reporte se basa en **movimientos contables**; los documentos en estado borrador no aparecen. Si falta un movimiento esperado, verificar que el documento esté completo.
- La selección de moneda no convierte los importes: filtra los movimientos cuya moneda coincide con la elegida.

## Ventanas relacionadas

- [Corporación](../../basic-rules/corporation)
- [Detalles del Pago](payment-details)
- [Impuesto de Documento por Pagar](invoice-tax)
