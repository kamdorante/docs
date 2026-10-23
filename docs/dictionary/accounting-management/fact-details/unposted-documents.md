---
title: Documentos sin Aplicar
category: Documentation
star: 9
sticky: 9
article: false
---

# Documentos sin Aplicar

## Descripción

La ventana **Documentos sin Aplicar** reúne en un solo lugar todos los documentos del sistema que **no tienen asiento contable** generado. Incluye documentos de distintos tipos (facturas, pagos y cobros, asignaciones, entregas y recepciones, órdenes, conciliaciones, etc.), sin importar la ventana desde la que se crearon.

Su uso principal es detectar los documentos que fueron **procesados** (completados, anulados o reversados) pero que, por algún motivo, **no pudieron contabilizarse**: una cuenta mal definida, una tasa de cambio faltante, un período cerrado, un documento relacionado sin contabilizar, etc. Desde la misma ventana se puede intentar la contabilización de cada documento y, si falla, el sistema muestra el **motivo** por el cual no se generó el asiento.

Todo documento que debe generar un asiento tiene que tenerlo. Por eso esta ventana es un control obligatorio antes del **cierre de cada período y de cada ejercicio**: si quedan documentos sin aplicar, alguna cuenta contable (en especial las **cuentas puente**) puede no cerrar correctamente.

## ¿Cuándo se utiliza?

Se utiliza cuando la organización necesita:

- Controlar, antes del cierre de un mes o de un ejercicio, que todos los documentos procesados tengan su asiento contable.
- Encontrar el motivo por el cual un documento completo no aparece en los reportes contables o en el mayor de una cuenta.
- Contabilizar documentos que quedaron pendientes (por ejemplo, por falta de tasa de cambio en una fecha puntual).
- Investigar diferencias en cuentas puente (por ejemplo, *Cheques en Tránsito* o cuentas de recepción sin factura) causadas por documentos que no aplicaron.

## Acceso

Buscar **Documentos sin Aplicar** en el buscador del menú.

También se puede contabilizar un documento individual desde su propia ventana (Pago/Cobro, Documentos por Cobrar, Entrega, etc.) con la acción de contabilización del documento.

## Pestañas

### Documentos sin Aplicar

Una fila por cada documento sin asiento contable. Los campos más importantes son:

- **Nombre de la Tabla**
  Tipo de documento expresado como tabla del sistema (por ejemplo, *C_Payment* para pagos y cobros). Ver la tabla de referencia en [Tipos de documento y su impacto contable](#tipos-de-documento-y-su-impacto-contable).

- **No. del Documento**
  Número del documento sin contabilizar.

- **Fecha Contable**
  Fecha con la que el documento debe contabilizarse. Es el filtro principal para acotar la revisión a un período.

- **Estado del Documento**
  Estado del documento de origen: *Completo*, *Cerrado*, *Revertido*, *Anulado*, etc.

- **Procesado**
  Indica si el documento ya fue procesado (completado, anulado o reversado). Solo los documentos procesados deberían tener asiento.

- **Aplicado**
  Indica si el documento tiene asiento contable. En esta ventana, los documentos pendientes figuran con *Aplicado = No*.

- **Botón de contabilización**
  Botón ubicado debajo del campo **Estado del Documento**. Intenta generar el asiento del documento seleccionado. Si no puede, muestra el motivo del error.

## Tipos de documento y su impacto contable

No todos los documentos que aparecen en la ventana afectan la contabilidad financiera. Algunos solo generan asientos en la **contabilidad de compromiso**, que normalmente no se utiliza.

| Nombre de la Tabla | Documento | ¿Debe contabilizarse? |
|---|---|---|
| C_Invoice | Documentos por Cobrar / por Pagar (facturas, notas de crédito y débito) | Sí |
| C_Payment | Pago/Cobro | Sí |
| C_AllocationHdr | Asignación | Sí |
| M_InOut | Entrega a cliente / Recepción de proveedor | Sí |
| C_BankStatement | Estado de Cuenta Bancario | Sí |
| GL_Journal | Póliza Contable (asiento manual) | Sí |
| C_Order | Orden de Venta / Orden de Compra | Solo contabilidad de compromiso |
| M_MatchPO | Correspondencia Orden de Compra | Solo contabilidad de compromiso |

::: tip
Si la organización no trabaja con contabilidad de compromiso, las **órdenes de venta, órdenes de compra y correspondencias de orden de compra** pueden quedar sin aplicar sin afectar los saldos contables. Todos los demás documentos procesados deben quedar aplicados.
:::

## Acciones disponibles

- **Contabilizar**
  Genera el asiento contable del documento seleccionado. Si el asiento se genera correctamente, el documento deja de aparecer en la ventana al refrescar.

- **Ir al documento**
  Desde el número de documento se puede navegar a la ventana de origen para revisar su configuración (socio del negocio, productos, cargos, cuentas, fechas).

- **Filtrar y ordenar**
  Filtrar por **Procesado**, **Aplicado**, **Fecha Contable** y **Nombre de la Tabla**, y ordenar por **Estado del Documento** o **Nombre de la Tabla** para agrupar los casos similares.

## Flujo del proceso

### 1. Abrir la ventana y filtrar

Abrir **Documentos sin Aplicar** y aplicar los filtros:

- **Procesado** = Sí
- **Aplicado** = No
- **Fecha Contable**: rango del período que se quiere controlar (por ejemplo, el trimestre o el ejercicio a cerrar).

### 2. Ordenar y descartar los documentos que no afectan

Ordenar por **Nombre de la Tabla** o por **Estado del Documento**. Descartar las órdenes de venta, órdenes de compra y correspondencias de orden de compra (*C_Order*, *M_MatchPO*), que solo afectan la contabilidad de compromiso.

### 3. Contabilizar los documentos pendientes

Para cada documento restante, seleccionarlo y ejecutar el **botón de contabilización**. Si el asiento se genera, el documento desaparece de la lista al refrescar y la cantidad de registros disminuye.

Para revisar un tipo de documento en particular (por ejemplo, todos los pagos y cobros), filtrar por **Nombre de la Tabla** = *C_Payment* y contabilizar uno por uno.

### 4. Analizar los documentos que no contabilizan

Si el sistema no puede contabilizar el documento, muestra el motivo. Los casos más comunes son:

| Motivo | Qué revisar |
|---|---|
| Cuenta no válida | Alguna cuenta contable del documento está mal definida o inactiva. Revisar las cuentas del socio del negocio, de la categoría del producto, del cargo o de la cuenta bancaria usados en el documento |
| Documento reversado sin aplicar | El reverso de un documento requiere que el documento original esté contabilizado. Contabilizar primero el documento original y luego el reverso |
| Falta de tasa de cambio | En documentos en moneda extranjera, verificar que exista tasa de cambio para la fecha contable del documento. Cargarla y volver a contabilizar |
| Período cerrado | El período de la fecha contable está cerrado. Abrirlo temporalmente o consultar con el responsable contable |

Corregir la causa en el documento o en su configuración y volver a contabilizar.

### 5. Verificar que la lista quede vacía

Repetir hasta que, con los filtros del paso 1, solo queden los documentos que no afectan la contabilidad financiera (órdenes y correspondencias de orden de compra).

### 6. Validar las cuentas puente

Una vez contabilizado todo, controlar los saldos de las cuentas puente con [Verificación de Cuentas Puente](bridge-account-verification) y el [Balance de Prueba Navegable](../financial-reports/trial-balance-navigable). Un saldo que no cierra suele indicar un documento o un reverso que quedó sin aplicar.

## Ejemplo de uso

Control previo al cierre de un trimestre:

1. Abrir **Documentos sin Aplicar** y filtrar *Procesado = Sí*, *Aplicado = No* y **Fecha Contable** del primer al último día del trimestre.
2. La ventana muestra órdenes de venta, correspondencias de orden de compra, varios documentos revertidos, una asignación, una entrega y decenas de pagos y cobros.
3. Ordenar por **Nombre de la Tabla**. Las órdenes de venta y las correspondencias de orden de compra se descartan porque solo afectan la contabilidad de compromiso.
4. Los documentos revertidos no aplicaron porque su documento original tampoco estaba aplicado. Se contabiliza primero el original y luego el reverso.
5. Filtrar **Nombre de la Tabla** = *C_Payment* y contabilizar los pagos y cobros uno por uno. La cantidad de registros va bajando a medida que se aplican.
6. Una factura muestra el error *Cuenta no válida*. Se navega al documento, se detecta que uno de los productos tiene una cuenta mal definida en su categoría, se corrige y se vuelve a contabilizar.
7. Al final solo quedan órdenes y correspondencias de orden de compra. Se revisan las cuentas puente con **Verificación de Cuentas Puente** y se continúa con el cierre.

## Consideraciones importantes

- La ventana muestra **todos** los documentos sin asiento, incluso los que todavía no se procesaron (borradores). Aplicar siempre el filtro **Procesado = Sí** para revisar solo los que deberían estar contabilizados.
- Este control debe hacerse **siempre al cierre** de cada período y de cada ejercicio. Con los filtros del flujo, el resultado esperado es **cero documentos**, salvo órdenes de venta, órdenes de compra y correspondencias de orden de compra.
- Un **reverso** nunca se contabiliza si el documento original no está contabilizado: siempre se aplica primero el original.
- Contabilizar desde esta ventana genera el mismo asiento que se generaría desde la ventana del documento: no hay diferencia en el resultado.
- Si un documento no contabiliza por una **cuenta no válida**, corregir la configuración contable (socio del negocio, categoría de producto, cargo, cuenta bancaria) antes de reintentar. Para documentos que ya contabilizaron con una configuración incorrecta, usar [Recontabilizar Documentos](../processes/repost-documents).
- Si la organización trabaja con **contabilización por cola**, algunos documentos pueden aparecer sin aplicar mientras la cola se procesa. Verificar el estado del procesador antes de contabilizarlos manualmente. Ver [Contabilización y Costeo por Cola](../processes/accounting-cost-queue).
- Los documentos sin aplicar **no aparecen** en el mayor, en el balance ni en los informes financieros, lo que puede generar diferencias entre los saldos operativos (por ejemplo, saldos pendientes de clientes) y los saldos contables.

## Ventanas relacionadas

- [Detalle de Hechos Contables](accounting-fact-details-window)
- [Verificación de Cuentas Puente](bridge-account-verification)
- [Recontabilizar Documentos](../processes/repost-documents)
- [Contabilización y Costeo por Cola](../processes/accounting-cost-queue)
- [Cierre de Ejercicio](../processes/fiscal-year-end)
- [Balance de Prueba Navegable](../financial-reports/trial-balance-navigable)
- [Cargo](../accounting-rules/charge)
