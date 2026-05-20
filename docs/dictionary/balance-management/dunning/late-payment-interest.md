---
title: Cálculo de Intereses por Mora
category: Documentation
star: 9
sticky: 9
article: false
---

# Cálculo de Intereses por Mora

## Descripción

La funcionalidad **Cálculo de Intereses por Mora** permite calcular automáticamente los intereses que se cobran a los clientes sobre las facturas pagadas con atraso. Se apoya en un **Tipo de Interés de Mora** (con un cargo contable asociado) y en una **Versión de Intereses de Mora** que define las tasas vigentes durante un período, con la posibilidad de configurar **tasas escalonadas** según la cantidad de días de atraso.

Una vez configurada, la funcionalidad opera de dos formas complementarias:

- **Generar Interés de Mora**: proceso que recorre las facturas pagadas con atraso de un cliente, calcula el interés tramo por tramo según la asignación de cada pago, y crea un **Informe de Gasto** por cada asignación con el detalle del cálculo.
- **Integración con Cálculo de Morosidad**: dentro del flujo estándar de morosidad, las líneas de cada socio incluyen los intereses calculados automáticamente con la misma lógica de tasas escalonadas.

La asignación al cliente se hace desde el campo **Morosidad** en la pestaña *Cliente* del socio del negocio: solo los socios con un tipo asignado son incluidos en los cálculos.

## ¿Cuándo se utiliza?

Se utiliza cuando la organización necesita:

- Cobrar intereses a clientes que pagaron una factura después del vencimiento.
- Aplicar tasas diferenciadas según la magnitud del atraso (tramos de 0–30, 31–60, 61–90, >91 días, etc.).
- Mantener un histórico de tasas vigentes en distintos períodos (por ejemplo, una versión para 2025 y otra para 2026).
- Diferenciar tasas por moneda cuando se opera con clientes en monedas distintas.
- Generar automáticamente los informes de gasto para facturar los intereses a los clientes.
- Incluir los intereses calculados dentro del proceso estándar de morosidad para visualizarlos junto a la deuda vencida.

## Acceso

Existen varias ventanas y procesos relacionados con la funcionalidad:

1. **Tipo de Interés de Mora:** Gestión de Saldos Pendientes → Morosidad → Tipo de Interés de Mora.
2. **Versión de Intereses de Mora:** Gestión de Saldos Pendientes → Morosidad → Versión de Intereses de Mora.
3. **Asignación al cliente:** ventana **Socio del Negocio** → pestaña *Cliente* → campo **Morosidad**.
4. **Generar Interés de Mora (proceso):** Gestión de Saldos Pendientes → Morosidad → Generar Interés de Mora.
5. **Cálculo de Morosidad integrado:** Gestión de Saldos Pendientes → Morosidad → Crear Cálculo de Morosidad.

## Pestañas

### Tipo de Interés de Mora

Pestaña principal donde se define cada tipo de interés. Los campos relevantes son:

- **Nombre**
  Identificador descriptivo del tipo (por ejemplo, *Morosidad General*, *Morosidad USD*).

- **Cargo**
  Cargo contable que se usará en las líneas de los informes de gasto generados (por ejemplo, *Intereses Bancarios*). Este cargo define las cuentas contables del interés cobrado.

- **Activo**
  Indicador para habilitar o deshabilitar el tipo.

### Versión de Intereses de Mora

Pestaña que vincula una versión a un tipo y define la vigencia de las tasas. Los campos relevantes son:

- **Tipo de Interés de Mora**
  Referencia al tipo creado en la ventana anterior.

- **Fecha Desde**
  Fecha de inicio de vigencia de la versión.

- **Fecha Hasta**
  Fecha de fin de vigencia. Si se deja vacía, la versión queda abierta indefinidamente hasta que se cree una versión nueva o se cierre manualmente.

- **Descripción**
  Texto opcional con detalle de la versión (por ejemplo, *"Versión 2026 - Tasas anuales"*).

### Tasas Escalonadas

Pestaña hija de la versión. Define los escalones de tasa según los días de atraso. Cada escalón tiene:

- **Días Desde / Días Hasta**
  Rango de días de atraso al que aplica la tasa (por ejemplo, 0 a 30, 31 a 60, 61 a 90, más de 91).

- **Tasa (%)**
  Porcentaje aplicado dentro del rango.

- **Moneda**
  Moneda específica del escalón cuando aplica solo a una; si se deja vacía, el escalón aplica a cualquier moneda.

## Acciones disponibles

- **Crear Tipo de Interés de Mora**
  Define un nuevo tipo asociándolo a un cargo contable.

- **Crear Versión de Intereses de Mora**
  Crea una nueva versión vinculada a un tipo, con su vigencia y sus tasas escalonadas.

- **Asignar Morosidad al Socio**
  Desde la pestaña *Cliente* del socio del negocio, indicar el tipo de interés que aplicará a sus facturas.

- **Generar Interés de Mora**
  Proceso que toma las facturas pagadas con atraso de los clientes configurados y genera los informes de gasto con el interés calculado.

- **Crear Cálculo de Morosidad**
  Proceso estándar de morosidad que también incluye los intereses calculados como columnas adicionales en cada línea cuando el socio tiene tipo asignado.

## Parámetros — Generar Interés de Mora

| Parámetro | Descripción | Tipo | Obligatorio |
|-----------|-------------|------|-------------|
| Fecha de Cálculo | Fecha hasta la cual se calculan los intereses (vencimientos y pagos hasta esta fecha) | Fecha | Sí |
| Socio del Negocio | Cliente sobre el que se ejecuta el proceso. Si se omite, se procesan todos los clientes con tipo de morosidad asignado | Búsqueda | No |
| Organización | Organización a la que pertenecen las facturas | Tabla Directa | No |
| Acción del Documento | Estado en que se generan los informes de gasto (*Preparar* o *Completar*) | Lista | Sí |

## Flujo del proceso

### 1. Configurar el tipo de interés

Desde **Tipo de Interés de Mora**, crear un registro con nombre y el cargo contable que se usará en los informes de gasto (típicamente *Intereses Bancarios* o similar). Activar el tipo.

### 2. Crear la versión y las tasas escalonadas

Desde **Versión de Intereses de Mora**, crear una versión vinculada al tipo con su fecha de inicio. Dejar la fecha hasta vacía o indicar el cierre de período.

En la pestaña *Tasas Escalonadas*, agregar los escalones que correspondan. Configuración típica:

- 0 a 30 días: 1,5%
- 31 a 60 días: 2,0%
- 61 a 90 días: 2,5%
- Más de 91 días: 3,5%

Si se desea tasa diferenciada por moneda, agregar un set de escalones por moneda.

### 3. Asignar el tipo a los clientes

Para cada cliente al que aplicará el cálculo, abrir el **Socio del Negocio**, ir a la pestaña *Cliente* y completar el campo **Morosidad** con el tipo creado. Si el campo queda vacío, ese cliente no se incluirá en el cálculo aunque tenga facturas vencidas.

### 4. Ejecutar Generar Interés de Mora

Cuando se desee facturar intereses (por ejemplo, una vez por mes), ejecutar **Generar Interés de Mora**:

- Indicar la **Fecha de Cálculo**.
- Opcionalmente filtrar por **Socio del Negocio** si solo se quiere procesar uno.
- Elegir la **Acción del Documento** (recomendado *Preparar* para revisar antes de completar).

El sistema:

- Recorre las facturas vencidas pagadas con atraso del cliente.
- Calcula el interés según la asignación de cada pago, tramo a tramo.
- Genera un **Informe de Gasto** por cada asignación (un pago parcial genera un informe; varios pagos parciales sobre la misma factura generan varios informes).
- Cada línea del informe lleva el cargo configurado y una descripción con el detalle: número de factura, asignación, porcentaje cubierto, tipo de interés, días de vencimiento y tasa aplicada.

### 5. Validar los informes generados

Abrir **Informes de Gasto** y revisar los registros generados. La descripción de cada línea muestra paso a paso cómo se llegó al monto del interés, lo que facilita la trazabilidad ante consultas del cliente.

### 6. Facturar los intereses

Los informes de gasto generados pasan al flujo estándar de facturación: vincular al cliente, generar la factura desde el informe y enviar al cobro.

### 7. Integración con Cálculo de Morosidad

Al ejecutar **Crear Cálculo de Morosidad** sobre clientes que tienen tipo de morosidad asignado, las líneas resultantes incluyen automáticamente columnas con los intereses calculados (días de vencimiento, fórmula aplicada, tasa final, monto del interés). El interés se aplica con la fórmula:

```
Interés = (Días de Vencimiento / 30) × Tasa de Escalón × Monto de Factura
```

Esto permite ver la deuda total (capital + intereses) en una misma vista durante la gestión de cobranza.

## Ejemplo de uso

Un cliente paga una factura de 15.420 con 102 días de atraso (escalón *más de 91 días*, tasa 3,5%), distribuyendo el pago en dos asignaciones parciales:

1. Verificar la configuración: el tipo *Morosidad General* existe, su versión 2026 tiene las cuatro tasas escalonadas (0–30: 1,5%; 31–60: 2,0%; 61–90: 2,5%; >91: 3,5%) y el cargo contable es *Intereses Bancarios*.
2. Confirmar que el campo **Morosidad** del cliente está asignado al tipo *Morosidad General*.
3. Ejecutar **Generar Interés de Mora** con Fecha de Cálculo del día actual y Acción del Documento = *Preparar*.
4. El sistema genera dos informes de gasto (por ejemplo, *Informe 3381* y *3382*) — uno por cada asignación de pago de la factura.
5. Abrir cada informe y verificar:
   - Cargo de la línea: *Intereses Bancarios*.
   - Descripción: número de factura, asignación, porcentaje cubierto por la asignación, días de vencimiento (102) y tasa aplicada (3,5%).
   - Importe: la porción de interés correspondiente al pago parcial.
6. Completar los informes y proceder a facturar los intereses al cliente.

Variante con Cálculo de Morosidad integrado:

1. Ejecutar **Crear Cálculo de Morosidad** con fecha 15 de mayo, filtrando por el cliente.
2. En la pestaña *Entrada* aparece una entrada para el socio con 4 facturas vencidas.
3. En la pestaña *Línea*, cada factura muestra los días de vencimiento, la fórmula aplicada (por ejemplo, 17/30 × 1,5% = 0,86%), el monto de la factura y el interés calculado (120,33).
4. Los intereses se ven dentro del mismo cálculo de morosidad y forman parte de la deuda total reportada al cliente.

## Consideraciones importantes

- Sin tipo asignado en el campo **Morosidad** del socio, el cliente no se incluye en el cálculo aunque tenga facturas vencidas. Es la forma de activar la funcionalidad por cliente.
- Las versiones se manejan por **fecha de vigencia** para mantener histórico. Para cambiar las tasas en un período nuevo, crear una versión nueva con fecha desde el cambio, no editar las tasas de una versión vigente.
- Si una versión tiene **Fecha Hasta** vacía, queda abierta indefinidamente. Si se crea una versión nueva con fecha desde posterior, la versión anterior se considera vigente hasta esa fecha.
- Los **escalones** se evalúan según los días de atraso de cada asignación de pago. Si una factura se pagó en dos asignaciones (40 y 110 días de atraso, por ejemplo), cada asignación toma el escalón correspondiente, no el promedio.
- La **moneda** del escalón filtra: si una factura está en USD, solo aplican los escalones cuyo campo Moneda esté vacío o coincida con USD.
- El proceso **Generar Interés de Mora** crea un informe por cada **asignación** de pago, no por factura. Una factura con pagos parciales genera múltiples informes.
- Cada línea del informe lleva en la **descripción** el detalle del cálculo (factura, días, tasa, fórmula). Esto facilita explicar al cliente cómo se llegó al monto del interés.
- El **cargo** definido en el tipo determina las cuentas contables del interés cobrado. Si se requieren cuentas distintas según el caso, definir varios tipos de interés con cargos diferentes.
- La integración con **Cálculo de Morosidad** aplica la misma lógica de tasas escalonadas, pero los intereses se muestran como columnas adicionales en la línea del cálculo, no como informes separados.
- La fórmula estándar de cálculo es *(Días de Vencimiento / 30) × Tasa del Escalón × Monto de la Factura*. Esto convierte la tasa mensual de la versión a la tasa proporcional al tiempo efectivo de atraso.
- Para corregir un informe de gasto generado por error (cliente cuya morosidad no debía aplicarse, monto incorrecto, etc.), eliminar el informe en estado *Preparar* y volver a ejecutar el proceso con los filtros corregidos.

## Ventanas relacionadas

- [Crear Cálculo de Morosidad](create-dunning-calculation)
- [Corrida de Morosidad](dunning-run)
- [Imprimir Carta de Morosidad](print-dunning-letters)
- [Envío de Email a Socio del Negocio (Morosidad)](email-to-business-partner-dunning)
