---
title: Reporte Lote de Procesador de Pagos
category: Documentation
star: 9
sticky: 9
article: false
---

# Reporte Lote de Procesador de Pagos

## Descripción

El **Reporte Lote de Procesador de Pagos** presenta de forma consolidada la información de un lote de liquidación y cada uno de los cobros que lo componen. Es la vista de auditoría del ciclo completo de liquidación con el procesador: encabezado del lote (totales pagados, retenidos, tarifa, cuenta transitoria, cuenta final) y detalle de cada pago con su factura, orden, socio, moneda y fecha asociada.

El reporte puede ejecutarse desde el encabezado del propio lote (para ver solo ese registro) o desde el menú (para filtrar por múltiples criterios y comparar varios lotes). Es la herramienta habitual para reconciliar con el procesador al cierre del mes y para dejar trazabilidad de cada pago procesado.

## ¿Cuándo se utiliza?

Se utiliza cuando la organización necesita:

- Ver el detalle completo de un lote de procesador (totales y pagos asociados) para auditar o reconciliar.
- Comparar varios lotes del mismo procesador en un rango de fechas.
- Filtrar los cobros de un lote por socio de negocio, factura, orden, moneda u otro atributo.
- Diagnosticar diferencias entre lo emitido y lo acreditado por el procesador.
- Generar el respaldo documental del cierre de liquidación.

## Acceso

Existen dos formas de acceder:

1. **Desde el encabezado del lote:** abrir el lote en **Lote de Procesador de Pagos** y ejecutar la acción de reporte desde el encabezado. Muestra únicamente la información de ese lote.
2. **Desde el menú:** Gestión de Saldos Pendientes → Pagos y Cobros → **Reporte Lote de Procesador de Pagos**. Permite filtrar por múltiples criterios y consultar varios lotes a la vez.

## Parámetros

| Parámetro | Descripción | Tipo | Obligatorio |
|-----------|-------------|------|-------------|
| No. del Documento | Número del lote a consultar | Texto | No |
| Configuración de Lote | Configuración del procesador usada por el lote | Búsqueda | No |
| Organización | Organización a la que pertenece el lote | Búsqueda directa | No |
| Pago | Pago específico a buscar dentro del lote | Búsqueda | No |
| Orden | Orden de venta o compra asociada | Búsqueda | No |
| Factura | Factura asociada al cobro | Búsqueda | No |
| Moneda | Moneda del lote o del pago | Búsqueda | No |
| Método de Pago | Método de pago específico dentro del procesador | Búsqueda directa | No |
| Cuenta Bancaria de Tránsito | Caja bancaria transitoria usada durante la liquidación | Búsqueda | No |
| Cuenta Final | Cuenta bancaria donde el procesador acredita | Búsqueda | No |
| Campaña | Campaña de marketing asociada a los cobros | Búsqueda | No |
| Proyecto | Proyecto financiero asociado | Búsqueda | No |
| Actividad | Actividad de negocio | Búsqueda | No |
| Contrato | Contrato vinculado al cobro | Búsqueda | No |
| Terminal de POS | Punto de venta desde el cual se originó el cobro | Búsqueda directa | No |
| Socio del Negocio | Cliente al que corresponde el cobro | Búsqueda | No |
| Fecha del Documento | Fecha del lote | Fecha | No |
| Fecha Contable | Fecha contable del lote | Fecha | No |
| Fecha de Transacción | Fecha de la transacción del pago | Fecha | No |
| Banco | Banco destino de la acreditación | Búsqueda | No |
| Procesador de Pagos | Procesador externo liquidador | Búsqueda directa | No |

## Acciones disponibles

- **Generar Reporte**
  Ejecuta la consulta con los filtros indicados y presenta los resultados en pantalla.

- **Exportar**
  Descarga el reporte en los formatos habituales del sistema para análisis posterior o archivo.

- **Filtrar por Lote**
  Al ejecutarse desde el encabezado del lote, el reporte se limita automáticamente a ese lote sin necesidad de completar parámetros.

## Flujo del proceso

### 1. Definir el alcance de la consulta

Determinar si la consulta se realiza sobre un lote puntual (acceso desde el encabezado) o sobre un conjunto de lotes (acceso desde el menú con filtros).

### 2. Completar los filtros

Si se ejecuta desde el menú, completar los filtros relevantes: número del lote, configuración, rango de fechas, procesador, moneda o cualquier atributo del cobro.

### 3. Generar el reporte

Ejecutar el reporte. El sistema devuelve:

- **Encabezado del lote**: número del documento, configuración del lote, total pagado, total retenido, tarifa, total abierto, gran total, cuenta bancaria transitoria y cuenta final.
- **Detalle de pagos**: un renglón por cada cobro incluido en el lote con total del pago, fecha, socio, moneda, factura y orden asociadas.

### 4. Revisar y exportar

Analizar el resultado en pantalla. Si corresponde, exportar a un formato externo para archivar o enviar al procesador como respaldo del cierre.

## Ejemplo de uso

Reconciliar a fin de mes todos los lotes de un procesador:

1. Abrir **Reporte Lote de Procesador de Pagos** desde el menú.
2. Completar **Procesador de Pagos = Tarjetas S.A.** y **Fecha del Documento = desde el 1 hasta el 30 del mes**.
3. Dejar el resto de los filtros vacíos para incluir todos los lotes y métodos de pago.
4. Ejecutar. El sistema muestra varios lotes (por ejemplo, los lotes *675, 676, 677*) con su encabezado y el detalle de pagos de cada uno.
5. Comparar los totales con el resumen enviado por el procesador para detectar diferencias y exportar el reporte para el archivo contable.

## Consideraciones importantes

- El reporte **no modifica** datos: es únicamente una vista consolidada. Cualquier diferencia detectada debe corregirse desde el lote, el cobro o la configuración correspondiente.
- Ejecutar el reporte desde el **encabezado del lote** es la forma más rápida de ver el detalle puntual sin escribir parámetros.
- Los filtros del menú son **combinables**: por ejemplo, buscar todos los pagos de un socio de negocio en un procesador específico durante una fecha, para validar acreditaciones puntuales.
- La información de **Cuenta Bancaria de Tránsito** y **Cuenta Final** permite trazar el camino contable del dinero: dónde quedó durante la liquidación y dónde llegó efectivamente al acreditarse.
- Los **totales del encabezado** (pagado, retenido, tarifa, abierto, gran total) deben coincidir con los valores del propio lote. Si hay discrepancias, indica inconsistencia entre el cabezal y las líneas del lote.
- El reporte también admite filtrar por dimensiones contables (campaña, proyecto, actividad, contrato) cuando los cobros están etiquetados con esas dimensiones.

## Ventanas relacionadas

- [Lote de Procesador de Pagos](payment-processor-batch)
- [Configuración de Lote de Procesador de Pago](payment-processor-batch-configuration)
- [Cierre de Lote de Procesador de Pagos](processor-batch-closing)
- [Generar Cobros de Facturas de Procesador de Pagos](generate-payments-for-processor-batch-invoices)
