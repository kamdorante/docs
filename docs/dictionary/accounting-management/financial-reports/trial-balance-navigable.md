---
title: Balance de Prueba Navegable
category: Documentation
star: 9
sticky: 9
article: false
---

# Balance de Prueba Navegable

## Descripción

El **Balance de Prueba Navegable** presenta los saldos acumulados de cada cuenta contable del libro mayor con opción de expandir cada fila para ver el detalle de los movimientos que componen el saldo. A diferencia del Informe Financiero parametrizable (que entrega un balance formalmente estructurado), el Balance de Prueba Navegable es una herramienta operativa rápida: entrega débitos, créditos y saldo por cuenta para un período y una organización, y permite profundizar hacia los asientos contables originales sin salir del reporte.

Es la vista habitual para diagnosticar diferencias entre el informe financiero y los hechos contables, o para auditar el movimiento de una cuenta específica durante un período de tiempo.

## ¿Cuándo se utiliza?

Se utiliza cuando la organización necesita:

- Consultar rápidamente los débitos, créditos y saldo de todas las cuentas del libro mayor en un período.
- Navegar desde un saldo a los movimientos (asientos) que lo generan, sin herramientas externas.
- Diagnosticar diferencias entre el Informe Financiero y los hechos contables reales.
- Auditar el comportamiento de una cuenta específica en un rango de fechas.
- Comparar el saldo acumulado por cuenta contra el Balance General o el Estado de Resultado.

## Acceso

Menú: **Gestión Contable → Análisis de Desempeño → Informes Financieros → Balance de Prueba Navegable**

El reporte también puede ejecutarse desde el **Informe Financiero** seleccionando el formato de impresión correspondiente, aunque con distintas opciones de navegación.

## Parámetros

| Parámetro | Descripción | Tipo | Obligatorio |
|-----------|-------------|------|-------------|
| Esquema Contable | Reglas para la contabilización (si hay varios configurados) | Tabla Directa | No |
| Organización | Organización del informe. Si se omite, incluye todas las organizaciones a las que el usuario tiene acceso | Tabla | No |
| Período Desde / Período Hasta | Rango de períodos contables a incluir en el balance | Tabla Directa | No |
| Fecha Contable Desde / Hasta | Alternativa al rango por período; filtra por fecha contable | Fecha | No |
| Cuenta Desde / Cuenta Hasta | Rango de cuentas del plan a incluir | Búsqueda | No |
| Tipo de Cuenta | Tipo de cuenta (Activo, Pasivo, Ingreso, Gasto, Patrimonio) | Lista | No |
| Tipo de Contabilización | Tipo de importe (Actual, Presupuesto, Reserva, Compromiso, Estadística) | Lista | No |
| Moneda | Moneda del reporte | Tabla Directa | No |
| Socio de Negocio | Filtra los saldos por socio de negocio | Búsqueda | No |
| Proyecto | Filtra por proyecto financiero | Búsqueda | No |
| Contrato | Filtra por contrato | Búsqueda | No |
| Actividad | Filtra por actividad de negocio | Tabla Directa | No |
| Campaña | Filtra por campaña de marketing | Tabla Directa | No |

## Acciones disponibles

- **Generar Balance**
  Ejecuta el reporte con los filtros indicados y muestra el listado de cuentas con su débito, crédito y saldo.

- **Expandir Cuenta**
  Desde cada fila, abre los asientos contables que conforman el saldo. Permite navegar al documento origen (factura, cobro, pago, asiento manual).

- **Exportar**
  Descarga el reporte en Excel para análisis externo o archivo.

- **Filtrar Dinámicamente**
  Sobre el resultado ya generado, aplicar filtros adicionales por texto, rango de saldo u otros atributos sin regenerar el cálculo.

## Flujo del proceso

### 1. Definir el alcance

Decidir si el balance se ejecuta sobre todas las cuentas o sobre un rango específico. Para análisis generales, ejecutar sin rango de cuentas; para diagnosticar una diferencia puntual, acotar con *Cuenta Desde / Hasta*.

### 2. Ejecutar el balance

Abrir **Balance de Prueba Navegable**, completar organización, rango de períodos o fechas, y demás filtros según el análisis. Ejecutar.

### 3. Revisar los saldos

El sistema presenta el listado de cuentas con débito acumulado, crédito acumulado y saldo. Ordenar o filtrar dinámicamente según necesidad.

### 4. Expandir para ver movimientos

Hacer clic sobre una cuenta con saldo inesperado para expandir el detalle. El sistema muestra los asientos que conforman el saldo con fecha, socio, documento origen y monto.

### 5. Navegar al documento origen

Desde un asiento particular, navegar al documento que lo generó (factura, pago, asiento manual) para verificar su configuración y corregir la causa de la diferencia si corresponde.

### 6. Comparar con el Informe Financiero

Si el objetivo es validar el Informe Financiero, comparar los saldos del Balance de Prueba con los que muestra el informe. Cualquier diferencia indica una configuración incorrecta del grupo de líneas o del tipo de aplicación del informe.

## Ejemplo de uso

Diagnóstico de una diferencia en el Balance General:

1. El usuario advierte que el Balance General muestra un activo que no cuadra con las cuentas por cobrar esperadas.
2. Abrir **Balance de Prueba Navegable** y ejecutar con *Organización = Sucursal Sur*, *Período Desde/Hasta = Febrero*, *Tipo de Cuenta = Activo*.
3. Ubicar la cuenta de Cuentas por Cobrar en el listado; el saldo es mayor al esperado en 10.000.
4. Expandir la cuenta para ver los asientos. Identificar un asiento manual por 10.000 registrado por error.
5. Navegar al asiento origen y corregirlo (reversión o ajuste contable).
6. Volver a ejecutar el Balance de Prueba y el Informe Financiero; ambos deben mostrar ahora el saldo correcto.

## Consideraciones importantes

- El **Balance de Prueba Navegable** no usa un grupo de líneas parametrizable como el Informe Financiero: presenta las cuentas del plan directamente. Esto lo hace rápido para auditoría, pero poco apto para informes formales al cliente.
- Si se ejecuta sin **Organización**, el reporte incluye todas las organizaciones a las que el usuario tiene acceso. Puede ser útil para consolidar, o ruidoso si no corresponde; verificar según el caso.
- El **Tipo de Contabilización** por defecto es *Actual*. Cambiarlo para comparar contra presupuesto, compromiso, etc.
- Para diagnosticar diferencias con el Informe Financiero, verificar que ambos reportes usen el mismo **período**, la misma **organización** y el mismo **tipo de aplicación**. Una diferencia en cualquiera de estos parámetros explica la discrepancia.
- La **navegación** a los asientos funciona sobre los hechos contables; si el asiento fue borrado o el documento anulado, la vinculación sigue visible pero el documento puede no existir.
- La exportación a Excel incluye las columnas visibles del reporte; si el usuario expande cuentas y luego exporta, el archivo resultante no conserva el detalle expandido a menos que se haya configurado el formato correspondiente.
- El Balance de Prueba Navegable es especialmente útil como **herramienta de soporte**: ante una consulta del cliente sobre un saldo, compartirlo con el código de la cuenta y los filtros usados facilita el diagnóstico.

## Ventanas relacionadas

- [Informe Financiero](financial-report)
- [Balance de Hechos Contables](../fact-details/accounting-fact-balances)
- [Reporte de Detalle de Hechos Contables](../fact-details/accounting-fact-details-report)
