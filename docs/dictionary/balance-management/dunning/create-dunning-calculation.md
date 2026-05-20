---
title: Crear Cálculo de Morosidad
category: Documentation
star: 9
sticky: 9
article: false
---

# Crear Cálculo de Morosidad

## Descripción

El proceso **Crear Cálculo de Morosidad** genera un cálculo consolidado de la deuda vencida de los clientes según los niveles de morosidad configurados. Por cada cliente que cumpla los filtros, el proceso crea una entrada con sus facturas vencidas y los importes correspondientes, lo que permite generar después cartas de cobro, enviar correos masivos y dar seguimiento a la cobranza.

Cuando el cliente tiene asignado un **Tipo de Interés de Mora** en el campo *Morosidad* de su pestaña de cliente, el cálculo incluye automáticamente los **intereses por mora** calculados con la fórmula y las tasas escalonadas configuradas. Esto permite ver capital + interés en una misma vista de gestión de cobranza.

## ¿Cuándo se utiliza?

Se utiliza cuando la organización necesita:

- Generar un corte mensual de morosidad para identificar los clientes con facturas vencidas.
- Producir cartas de morosidad para enviar a los clientes con saldos pendientes.
- Incluir los intereses por mora calculados automáticamente dentro del seguimiento de cobranza.
- Filtrar por organización, socio, grupo de socios, moneda o nivel de morosidad.
- Excluir las facturas en disputa o limitar el análisis solo a facturas de venta.

## Acceso

Menú: **Gestión de Saldos Pendientes → Morosidad → Crear Cálculo de Morosidad**

## Parámetros

| Parámetro | Descripción | Tipo | Obligatorio | Valor por defecto |
|-----------|-------------|------|-------------|-------------------|
| Organización | Entidad organizacional dentro del cliente | Búsqueda directa | No | Todas |
| Incluir en Disputa | Incluir facturas marcadas como en disputa | Sí/No | No | No |
| Solo Facturas de Ventas | Si se marca, excluye pagos y facturas de cuentas por pagar | Sí/No | No | No |
| Excluir | Excluir acceso a los datos del cliente | Sí/No | No | Sí |
| Representante de Ventas por Defecto | Vendedor que se asigna al cálculo si no está definido a nivel de socio | Tabla | No | |
| Moneda de Morosidad | Moneda en la que se generan las cartas de morosidad | Búsqueda directa | No | |
| Incluir Todas las Monedas | Reporta también facturas en moneda funcional, no solo extranjera | Sí/No | No | No |
| Socio del Negocio | Cliente específico a procesar; si se omite, se procesan todos los socios elegibles | Búsqueda | No | |
| Grupo de Socio del Negocio | Grupo al que pertenecen los socios a procesar | Búsqueda directa | No | |
| Fecha de Morosidad | Fecha de corte hasta la cual se calculan los días de vencimiento | Fecha | No | Fecha actual |
| Morosidad | Regla de morosidad que se aplica para clasificar las facturas vencidas | Búsqueda directa | No | |
| Nivel de Morosidad | Nivel específico de la regla a procesar | Búsqueda directa | No | |

## Acciones disponibles

- **Ejecutar Proceso**
  Lanza la generación del cálculo de morosidad con los filtros indicados.

- **Ver Cálculo Generado**
  Navegar al cálculo creado para revisar los socios incluidos y sus líneas detalladas.

- **Imprimir Carta de Morosidad**
  Desde el cálculo generado, ejecutar la impresión de las cartas para envío a los clientes.

- **Enviar Email a Socio del Negocio**
  Desde el cálculo generado, usar el visor de envío masivo de correos a los socios incluidos.

## Pestañas del Cálculo Generado

### Entrada

Lista una entrada por cada socio del negocio incluido en el cálculo. La información incluye:

- **Socio del Negocio**
  Cliente al que corresponde el cálculo.

- **Fecha de Morosidad**
  Fecha de corte usada al generar.

- **Cantidad de Líneas**
  Número de facturas vencidas del socio incluidas en el cálculo.

- **Total Adeudado**
  Suma de los montos de las facturas vencidas.

- **Total de Intereses**
  Cuando el socio tiene tipo de morosidad asignado, suma de los intereses calculados sobre las facturas vencidas.

### Línea

Detalle de cada factura vencida del socio. Cuando el socio tiene tipo de interés configurado, incluye columnas con:

- **Factura**
  Documento por cobrar.

- **Días de Vencimiento**
  Cantidad de días desde el vencimiento hasta la fecha de cálculo.

- **Monto de la Factura**
  Importe de la factura vencida.

- **Tipo de Interés de Mora**
  Tipo aplicado al socio.

- **Tasa de Escalón**
  Tasa correspondiente al escalón de días de vencimiento.

- **Fórmula Aplicada**
  Detalle del cálculo (por ejemplo, *17/30 × 1,5% = 0,86%*).

- **Tasa Final**
  Tasa efectiva aplicada (proporcional al tiempo de atraso).

- **Interés Calculado**
  Importe del interés sobre la factura.

## Flujo del proceso

### 1. Configurar la regla de morosidad

Antes de ejecutar el cálculo, definir la **Regla de Morosidad** con sus niveles y criterios. Asignar la regla a los socios del negocio que deban incluirse en la gestión de cobranza.

### 2. Configurar intereses por mora (opcional)

Si la organización cobra intereses por mora, configurar el **Tipo de Interés de Mora** y su **Versión** con tasas escalonadas, y asignar el tipo en el campo *Morosidad* del socio del negocio. Sin esta asignación, el cálculo de morosidad no incluirá intereses para ese socio.

### 3. Ejecutar el proceso

Abrir **Crear Cálculo de Morosidad** y completar los filtros relevantes:

- *Organización*, *Socio del Negocio* o *Grupo* para acotar el alcance.
- *Fecha de Morosidad* como fecha de corte.
- *Moneda de Morosidad* si se requiere un cálculo en una moneda específica.
- *Solo Facturas de Ventas* si se desea excluir compras y pagos.

Ejecutar.

### 4. Revisar las entradas

El cálculo generado lista una entrada por socio. Abrir cada entrada para revisar las facturas incluidas, los días de atraso y los importes adeudados.

### 5. Revisar los intereses calculados

En la pestaña *Línea* de cada entrada, verificar que los intereses se calcularon correctamente para los socios con tipo de morosidad asignado: fórmula aplicada, tasa final, interés.

### 6. Imprimir o enviar las cartas

Desde el cálculo, ejecutar *Imprimir Carta de Morosidad* o *Enviar Email a Socio del Negocio* para comunicar la deuda a los clientes.

### 7. Hacer seguimiento

Las cartas y correos enviados quedan registrados. El seguimiento se puede consultar desde la ventana **Corrida de Morosidad** para conocer el estado de cada gestión.

## Ejemplo de uso

Cierre mensual de morosidad con cálculo de intereses incluido:

1. Configurar el **Tipo de Interés de Mora** *Morosidad General* con su versión 2026 y cuatro escalones (0–30: 1,5%; 31–60: 2,0%; 61–90: 2,5%; >91: 3,5%).
2. Asignar el tipo al campo *Morosidad* de los clientes que correspondan.
3. Ejecutar **Crear Cálculo de Morosidad** con *Fecha de Morosidad = 15 de mayo* y *Socio del Negocio = el cliente a procesar*.
4. Abrir la entrada generada. Aparece el socio con 4 facturas vencidas.
5. Abrir la pestaña *Línea*. Cada factura muestra:
   - Días de vencimiento: 17, 18, 93, 105.
   - Fórmula aplicada: por ejemplo, *17/30 × 1,5% = 0,86%* para la primera.
   - Interés calculado: 120,33 para la línea de 17 días.
6. Imprimir la carta de morosidad para el socio. La carta incluye la deuda total (capital + intereses) con el detalle por factura.

## Consideraciones importantes

- El proceso solo incluye en el cálculo a socios que tienen la regla de morosidad asignada o que cumplen los filtros configurados. Sin regla, el cliente no aparece aunque tenga facturas vencidas.
- Los **intereses por mora** solo se calculan cuando el cliente tiene un tipo asignado en el campo *Morosidad* de la pestaña *Cliente* y la versión vigente tiene tasas escalonadas configuradas.
- La **Fecha de Morosidad** determina los días de vencimiento; cambiarla afecta tanto el listado de facturas vencidas como los intereses calculados (que se evalúan contra el escalón correspondiente).
- Los **escalones de tasa** se evalúan por factura individual según sus días de vencimiento, no por el promedio del socio.
- La **moneda** del cálculo filtra las facturas: si se indica USD, solo aparecen las facturas en USD. Para incluir todas las monedas, marcar *Incluir Todas las Monedas = Sí*.
- Las facturas **en disputa** se excluyen por defecto; marcar *Incluir en Disputa = Sí* solo si se desea reportarlas también.
- El cálculo se puede ejecutar **múltiples veces** con distintos filtros. Cada ejecución genera un cálculo independiente, lo que permite manejar cortes paralelos (por organización, por moneda, etc.).
- Tras ejecutar el cálculo, los intereses no se facturan automáticamente. Para facturarlos al cliente, ejecutar **Generar Interés de Mora** (que crea informes de gasto) o incluirlos en la carta de morosidad.

## Ventanas relacionadas

- [Corrida de Morosidad](dunning-run)
- [Cálculo de Intereses por Mora](late-payment-interest)
- [Imprimir Carta de Morosidad](print-dunning-letters)
- [Envío de Email a Socio del Negocio (Morosidad)](email-to-business-partner-dunning)
