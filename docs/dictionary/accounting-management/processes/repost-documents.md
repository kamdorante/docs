---
title: Recontabilizar Documentos
category: Documentation
star: 9
sticky: 9
article: false
---

# Recontabilizar Documentos

## Descripción

El proceso **Recontabilizar Documentos** regenera los asientos contables de los documentos completos (facturas, pagos, entregas, recepciones, asignaciones, asientos manuales) tomando como base las **reglas contables actuales** del sistema (configuración de cuentas en socio de negocio, categoría de producto, esquema contable, cargos, etc.). Es la herramienta clave durante el **análisis y cierre contable** para corregir asientos que quedaron con cuentas equivocadas porque cuando el documento se completó, la configuración contable estaba mal o aún no aplicaba la lógica final.

A diferencia de la acción **Recontabilizar** disponible en cada documento individual (que aplica a un único asiento), este proceso permite recontabilizar de forma **masiva** filtrando por organización, tipo de documento, socio de negocio, rango de fechas o cuenta. Es la herramienta habitual cuando se actualiza la cuenta contable de un cargo, una categoría de producto o un socio de negocio y se necesita propagar el cambio a todos los documentos ya completados.

## ¿Cuándo se utiliza?

Se utiliza cuando la organización necesita:

- Regenerar los asientos después de corregir la cuenta contable de un cargo, una categoría de producto o un socio de negocio.
- Propagar masivamente cambios de configuración contable a documentos ya completos del período.
- Cerrar un mes contable corrigiendo errores detectados en el balance (saldos disparatados, cuentas con monto inesperado).
- Reaplicar la lógica contable correcta cuando una funcionalidad se entrega/corrige y los documentos previos quedaron con la lógica anterior.
- Volver a generar asientos de entregas o recepciones cuando el costeo se actualizó.

## Acceso

Menú: **Gestión Contable → Procesos Contables → Recontabilizar Documentos**

Existen dos modalidades:

1. **Recontabilizar individual:** desde cada documento (factura, pago, entrega, etc.), ejecutar la acción **Recontabilizar** en el menú del documento. Aplica solo a ese asiento.
2. **Recontabilizar masivo (este proceso):** desde el menú, filtrar por criterios y procesar muchos documentos de una sola ejecución.

## Parámetros

| Parámetro | Descripción | Tipo | Obligatorio |
|-----------|-------------|------|-------------|
| Organización | Organización a la que pertenecen los documentos a recontabilizar | Tabla | No |
| Tipo de Documento | Tipo específico (factura, pago, entrega, recepción, asignación, asiento manual). Si se omite, abarca todos | Tabla Directa | No |
| Socio del Negocio | Filtra por cliente o proveedor cuando se desea acotar a sus documentos | Búsqueda | No |
| Cuenta Contable | Filtra por documentos cuya contabilización afecta a una cuenta específica | Búsqueda | No |
| Fecha Contable Desde | Primera fecha contable del rango de documentos a procesar | Fecha | No |
| Fecha Contable Hasta | Última fecha contable del rango | Fecha | No |
| Esquema Contable | Esquema sobre el que se regeneran los asientos | Tabla Directa | No |
| Solo Documentos con Diferencia | Si está activo, procesa únicamente los documentos cuyo asiento actual difiere del que se generaría con la configuración vigente | Sí/No | No |

## Acciones disponibles

- **Ejecutar Proceso**
  Lanza la recontabilización con los filtros indicados. El sistema regenera los asientos de los documentos seleccionados.

- **Ver Histórico**
  Consultar ejecuciones previas del proceso con sus filtros, fecha, cantidad de documentos procesados y resultado.

- **Recontabilizar Individual**
  Acción complementaria disponible en cada documento; aplica solo al asiento específico cuando se quiere puntualizar la corrección.

## Flujo del proceso

### 1. Identificar la causa de la corrección

Antes de ejecutar el proceso, identificar qué configuración cambió y qué documentos se ven afectados. Las causas frecuentes son:

- Cambio en la cuenta contable de un **cargo** o **categoría de producto**.
- Corrección de la **cuenta de cliente/proveedor** del socio de negocio.
- Actualización del **costeo** de productos en un período.
- Incorporación de una **nueva regla contable** que aplica retroactivamente al período abierto.

### 2. Acotar el alcance

Decidir qué documentos deben recontabilizarse. Cuanto más acotado el alcance, menor el riesgo de afectar asientos correctos. Filtros sugeridos:

- Por **tipo de documento** y **rango de fechas** del período abierto.
- Por **socio de negocio** cuando el cambio afecta solo a un cliente o proveedor.
- Por **cuenta contable** para identificar los documentos que tocan la cuenta corregida.

### 3. Ejecutar con la opción de validación

En primera instancia, marcar **Solo Documentos con Diferencia = Sí** para detectar cuántos documentos efectivamente cambian con la nueva configuración. Esto evita reprocesar asientos que ya estaban correctos.

### 4. Procesar definitivamente

Tras validar el alcance, ejecutar el proceso con los filtros confirmados. El sistema regenera los asientos de los documentos seleccionados aplicando la configuración contable vigente.

### 5. Verificar el resultado

Abrir el **Balance de Prueba Navegable** (o el **Informe Financiero**) y revisar las cuentas afectadas. El saldo debe reflejar la corrección esperada. Para diagnósticos puntuales, expandir la cuenta y navegar a los asientos para confirmar que ahora usan la cuenta correcta.

### 6. Iterar si corresponde

Si quedan diferencias adicionales, identificar la causa, ajustar la configuración correspondiente y volver a ejecutar el proceso. La recontabilización se puede ejecutar tantas veces como sea necesario en un período abierto.

## Ejemplo de uso

Durante el cierre mensual se detecta que la cuenta *Otros Gastos* tiene un saldo de varios millones inesperado, mientras que la cuenta del cargo correspondiente quedó vacía:

1. Investigar la causa: los pagos del mes con un cargo bancario habían usado la cuenta antigua del cargo. La cuenta del cargo se corrigió a mediados del mes, pero los documentos previos no se recontabilizaron.
2. Abrir **Recontabilizar Documentos** y configurar:
   - **Tipo de Documento**: Pago/Cobro.
   - **Fecha Contable Desde / Hasta**: el mes a corregir.
   - **Cuenta Contable**: la cuenta antigua (Otros Gastos) para acotar a los documentos que tocan esa cuenta.
3. Ejecutar primero con **Solo Documentos con Diferencia = Sí** para validar cuántos documentos cambian. El sistema reporta, por ejemplo, 12 documentos.
4. Ejecutar definitivamente. El sistema regenera los 12 asientos aplicando la cuenta nueva del cargo.
5. Abrir el **Balance de Prueba Navegable** y verificar que la cuenta *Otros Gastos* ahora muestra el saldo correcto y la cuenta del cargo recibió el monto que correspondía.
6. Si surgen otras diferencias, repetir el procedimiento para los nuevos casos identificados.

## Consideraciones importantes

- El proceso solo aplica a documentos en estado **Completo** o **Cerrado**. Documentos en borrador o anulados no se ven afectados.
- Las **reglas contables actuales** son las que se aplican: si la configuración del socio de negocio o del cargo se modifica entre la primera contabilización y la recontabilización, el asiento nuevo reflejará la última configuración.
- La recontabilización **invalida** el asiento anterior y genera uno nuevo con el mismo número de documento. La trazabilidad queda en la bitácora de hechos contables y en la fecha de generación.
- Un período **cerrado** no admite recontabilización. Si el período se cerró antes de la corrección, debe abrirse temporalmente o registrar la corrección como asiento de ajuste en el período abierto.
- Para diagnosticar diferencias antes de procesar, comparar los saldos del **Balance de Prueba Navegable** con los del **Informe Financiero**: cualquier diferencia sugiere documentos que requieren recontabilización.
- Las **diferencias de cambio realizadas y no realizadas** se generan a través de procesos específicos (no mediante recontabilización masiva); usar **Generar Ganancia/Pérdida No Realizada** para los ajustes de revalorización.
- El proceso puede ser **costoso** en períodos con muchos documentos (miles de movimientos). Acotarlo siempre con filtros relevantes y evitar ejecutarlo sin filtros.
- Después de cambios de configuración importantes (cuentas de cliente/proveedor, categoría de producto, esquema contable), recontabilizar es una **práctica habitual** durante el cierre y no representa anomalía contable.
- Si la organización trabaja con **contabilidad por cola** habilitada, los nuevos asientos se procesan vía cola; verificar el procesador antes de validar el resultado del balance.

## Ventanas relacionadas

- [Cierre de Ejercicio](fiscal-year-end)
- [Generar Ganancia/Pérdida No Realizada](generate-not-realized-gain-loss)
- [Contabilización y Costeo por Cola](accounting-cost-queue)
- [Balance de Prueba Navegable](../financial-reports/trial-balance-navigable)
- [Informe Financiero](../financial-reports/financial-report)
