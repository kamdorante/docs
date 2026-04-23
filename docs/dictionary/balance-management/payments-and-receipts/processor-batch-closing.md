---
title: Cierre de Lote de Procesador de Pagos
category: Documentation
star: 9
sticky: 9
article: false
---

# Cierre de Lote de Procesador de Pagos

## Descripción

El proceso **Cierre de Lote de Procesador de Pagos** consolida y cierra los lotes de liquidación generados por un procesador externo (por ejemplo, una red de tarjetas) durante un período. Se ejecuta al finalizar el ciclo operativo para agrupar los cobros procesados y dejarlos listos para la conciliación contable contra la acreditación bancaria.

Este proceso se utiliza de forma complementaria al lote generado automáticamente al cerrar caja: cuando por algún motivo quedaron cobros sueltos o es necesario cerrar el lote desde el menú (por ejemplo, para liquidar cobros de varios puntos de venta juntos, o para consolidar una ventana horaria específica), este proceso crea un nuevo lote consolidado filtrando por cuenta bancaria, procesador, método de pago y fecha.

## ¿Cuándo se utiliza?

Se utiliza cuando la organización necesita:

- Cerrar manualmente el lote del procesador al finalizar el día o el ciclo de liquidación.
- Consolidar en un único lote los cobros de varios puntos de venta o turnos.
- Cerrar lotes retroactivamente cuando la caja se cerró sin generar el lote automáticamente.
- Separar lotes por método de pago (por ejemplo, tarjeta de crédito vs. débito) dentro del mismo procesador.

## Acceso

Menú: **Gestión de Saldos Pendientes → Pagos y Cobros → Cierre de Lote de Procesador de Pagos**

## Parámetros

| Parámetro | Descripción | Tipo | Obligatorio | Valor por defecto |
|-----------|-------------|------|-------------|-------------------|
| Cuenta Bancaria | Cuenta en la que el procesador acredita los pagos. Filtra los cobros por la cuenta destino asociada al procesador | Búsqueda | No | |
| Procesador de Pagos | Procesador externo que liquida los cobros. Filtra los cobros por este procesador | Búsqueda directa | No | |
| Método de Pago | Método específico dentro del procesador (tarjeta de crédito, débito, QR, etc.). Si se indica, limita el lote a ese método | Búsqueda directa | No | |
| Fecha del Documento | Fecha con la que se crea el lote de cierre | Fecha | No | Fecha actual |

## Acciones disponibles

- **Ejecutar**
  Lanza el proceso con los filtros indicados y crea un nuevo lote de procesador con los cobros pendientes de liquidación.

- **Ver Histórico**
  Consultar ejecuciones anteriores con fecha, filtros aplicados y lote generado.

## Flujo del proceso

### 1. Identificar los cobros a liquidar

Localizar los cobros realizados con el procesador que aún no están asignados a ningún lote. Pueden consultarse desde la ventana **Pago/Cobro** filtrando por procesador y estado.

### 2. Definir el alcance del cierre

Decidir si el cierre cubre un solo procesador, una sola cuenta bancaria, un método de pago específico o una combinación de estos. Cuanto más acotado sea el alcance, más específico será el lote generado.

### 3. Ejecutar el proceso

Abrir **Cierre de Lote de Procesador de Pagos**, completar los filtros correspondientes y la fecha del documento, y ejecutar.

### 4. Revisar el lote generado

El proceso crea un nuevo lote en **Lote de Procesador de Pagos** con los cobros que cumplen los filtros. Abrir el lote resultante y verificar que las líneas corresponden a los cobros esperados.

### 5. Completar el ciclo de liquidación

Desde el lote recién creado, continuar con el flujo estándar: registrar tarifa y retención, definir el programa de pago, generar documentos por pagar y por cobrar, y completar.

## Ejemplo de uso

Se necesita cerrar el lote del día del procesador de tarjetas combinando los cobros de dos puntos de venta:

1. Abrir **Cierre de Lote de Procesador de Pagos**.
2. Seleccionar **Procesador de Pagos = Tarjetas S.A.** y dejar **Cuenta Bancaria** vacía para incluir todas las cuentas acreditadoras del procesador.
3. Dejar **Método de Pago** vacío para incluir crédito y débito en el mismo lote.
4. Usar la **Fecha del Documento = hoy** (por defecto).
5. Ejecutar. El sistema crea un nuevo lote con los cobros de ambos puntos de venta pendientes de liquidación.
6. Abrir el lote y continuar con la carga de tarifa, retención y programa de pago.

## Consideraciones importantes

- El proceso solo considera cobros que **aún no están asignados** a un lote del procesador. Los cobros ya incluidos en un lote anterior no se duplican.
- Si se omite **Procesador de Pagos**, el proceso puede generar lotes para cada procesador configurado cuyos cobros coincidan con los filtros. Generalmente conviene acotar siempre este parámetro.
- La **Fecha del Documento** determina el período contable del lote. Usarla con cuidado cuando se cierran lotes retroactivos para que no afecte períodos ya cerrados.
- Si el procesador tiene varias **cuentas bancarias** habilitadas en su configuración, el lote generado usará la cuenta que corresponda a cada cobro según la configuración de la caja. Si se indica *Cuenta Bancaria* como filtro, solo se incluyen los cobros que acreditan en esa cuenta.
- El **Método de Pago** permite separar, por ejemplo, crédito y débito: generando dos lotes distintos con este filtro. Esto es útil cuando el procesador aplica tarifas o programas de acreditación distintos para cada método.
- El proceso **no calcula** la tarifa ni la retención; solo agrupa los cobros. Estos importes deben cargarse manualmente en el lote o mediante un proceso complementario.

## Ventanas relacionadas

- [Lote de Procesador de Pagos](payment-processor-batch)
- [Configuración de Lote de Procesador de Pago](payment-processor-batch-configuration)
- [Generar Cobros de Facturas de Procesador de Pagos](generate-payments-for-processor-batch-invoices)
