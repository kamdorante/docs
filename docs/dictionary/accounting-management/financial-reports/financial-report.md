---
title: Informe Financiero
category: Documentation
star: 9
sticky: 9
article: false
---

# Informe Financiero

## Descripción

La ventana **Informe Financiero** define los reportes financieros parametrizables que la organización utiliza para presentar el estado de sus cuentas contables (por ejemplo, **Balance General**, **Balance General con Capítulos**, **Balance de Comprobación**, **Estado de Resultado**). Cada informe combina una estructura de líneas (cuentas o agrupaciones), columnas (actual, presupuesto, variaciones), formato de impresión y reglas de filtrado que determinan cómo se presentan los saldos contables al usuario.

A partir de la definición del informe, el usuario ejecuta la acción **Crear Informe** indicando período, organización, tipo de aplicación y otros filtros; el sistema calcula los saldos a partir de los hechos contables y entrega el reporte con el formato configurado. Los informes pueden activarse o desactivarse para mantener visibles solo aquellos que cada organización usa efectivamente.

## ¿Cuándo se utiliza?

Se utiliza cuando la organización necesita:

- Definir un nuevo reporte financiero a medida (balance, estado de resultado, balance de comprobación, análisis por centro de costo).
- Activar o desactivar informes existentes según la operativa actual.
- Ejecutar un informe financiero para un período específico, una organización y, opcionalmente, dimensiones adicionales como contrato, proyecto, actividad o campaña.
- Presentar saldos agrupados por capítulos (activo, pasivo, patrimonio, gastos, ingresos) o en formato detallado por cuenta.
- Exportar los resultados a Excel o imprimirlos como respaldo documental del cierre contable.

## Acceso

Menú: **Gestión Contable → Análisis de Desempeño → Informes Financieros → Informe Financiero**

Desde el informe se accede a los procesos asociados:

1. **Crear Informe** (acción del informe): genera el reporte según los filtros indicados.
2. **Imprimir / Exportar**: presenta el informe generado en pantalla, lo imprime o lo exporta a Excel.

## Pestañas

### Informe Financiero (cabezal)

Pestaña principal con la definición del informe. Los campos relevantes son:

- **Número del Documento**
  Identificador único del informe dentro de la organización (por ejemplo, *800*, *801*). Permite referenciar rápidamente cada reporte.

- **Nombre y Descripción**
  Nombre descriptivo del informe (*Balance General*, *Balance con Capítulos*, *Estado de Resultado*) y descripción opcional.

- **Grupo de Líneas del Informe**
  Conjunto de líneas que conforman el informe. Cada línea puede representar una cuenta específica, una cuenta acumulativa (con sus cuentas detalle) o una agrupación por capítulo.

- **Grupo de Columnas del Informe**
  Conjunto de columnas del informe (por ejemplo, saldo actual, presupuesto, variación, acumulado del año).

- **Formato de Impresión**
  Formato que define la presentación visual (Balance General, Balance de Comprobación, Estado de Resultado, etc.). Al ejecutar el informe, el usuario puede seleccionar un formato alternativo.

- **Reportando Jerarquías**
  Jerarquía contable utilizada para agrupar las cuentas cuando el informe se genera por jerarquía.

- **Activo**
  Indicador que controla la visibilidad del informe en los listados. Los informes inactivos no aparecen al usuario final aunque sigan existiendo en el sistema.

### Grupo de Líneas del Informe

Configuración de las líneas que componen el informe: cuentas específicas, cuentas acumulativas, agrupaciones, subtotales y totales.

### Grupo de Columnas del Informe

Configuración de las columnas: tipo de importe (saldo, débito, crédito), tipo de aplicación (actual, presupuesto, reserva, compromiso, estadística), período de referencia y cálculos (variaciones, acumulados).

## Acciones disponibles

- **Crear Informe**
  Genera el reporte aplicando los filtros indicados y presenta la ventana de resultado.

- **Imprimir Comprobante**
  Desde la ventana del informe generado, imprime el reporte según el formato seleccionado.

- **Exportar a Excel**
  Descarga el informe en formato Excel con dos decimales de precisión por defecto.

- **Activar / Desactivar Informe**
  Alterna la visibilidad del informe para los usuarios finales.

## Parámetros de Crear Informe

| Parámetro | Descripción | Tipo | Obligatorio |
|-----------|-------------|------|-------------|
| Período | Período contable para el cual se emiten los saldos | Tabla Directa | No |
| Organización | Organización a incluir en el informe | Tabla | No |
| Tipo de Aplicación | Clasificación del importe contable (Actual, Presupuesto, Reserva, Compromiso, Estadística). Si se omite, el sistema usa *Actual* | Lista | No |
| Desplegar Fuentes | Si es *Sí*, el informe muestra tanto las cuentas acumulativas como sus cuentas detalle. Si es *No*, solo se muestran las cuentas definidas en el grupo de líneas | Sí/No | No |
| Lista Transacciones | Si es *Sí*, el informe muestra cada transacción (débito/crédito) que conforma el saldo de las cuentas detalle. Habilitado solo cuando *Desplegar Fuentes = Sí* | Sí/No | No |
| Listas Fuentes Primero | Si es *Sí*, las cuentas detalle preceden a las cuentas acumulativas del grupo de líneas. Si es *No*, las suceden | Sí/No | No |
| Reportando Jerarquías | Jerarquía contable que se usa para agrupar las cuentas del informe | Tabla Directa | No |
| Contrato | Contrato específico a filtrar (permite calcular la rentabilidad por contrato) | Búsqueda | No |
| Proyecto | Proyecto financiero asociado | Búsqueda | No |
| Actividad | Actividad de negocio | Tabla Directa | No |
| Campaña | Campaña de marketing | Tabla Directa | No |

## Flujo del proceso

### 1. Definir la estructura del informe

Antes de ejecutarlo, el informe debe tener configurado su **Grupo de Líneas** (cuentas o agrupaciones por capítulos), su **Grupo de Columnas** (tipo de importe, tipo de aplicación, período de referencia) y el **Formato de Impresión** adecuado.

### 2. Numerar e identificar el informe

Asignar al informe un número único fácil de recordar (por ejemplo, *800* para Balance General, *801* para Balance con Capítulos). Este número se usa para referenciar rápidamente el informe en soporte técnico y en conversaciones internas.

### 3. Ejecutar Crear Informe

Desde la ventana del informe, ejecutar la acción **Crear Informe** y completar los filtros:

- Seleccionar el **Período** (por ejemplo, febrero) y la **Organización** (por ejemplo, la sucursal Sur).
- Opcionalmente, acotar por **Contrato** para calcular rentabilidad específica.
- Dejar el **Tipo de Aplicación** vacío si se desea el saldo real (*Actual*).

### 4. Revisar el resultado

El sistema presenta el informe con los saldos calculados según la configuración. Al ser un reporte **parametrizable**, la salida puede cambiarse dinámicamente seleccionando otro formato de impresión (Balance General, Balance de Comprobación, Estado de Resultado) sin regenerar el informe desde cero.

### 5. Profundizar con fuentes y transacciones

Si se necesita ver el detalle de las cuentas acumulativas, activar **Desplegar Fuentes = Sí** al generar el informe. Para ver cada transacción que conforma el saldo, además activar **Lista Transacciones = Sí**.

### 6. Exportar o imprimir

Desde la ventana de resultado, imprimir el comprobante o exportar a Excel. El archivo Excel incluye dos decimales por defecto.

### 7. Mantener activos solo los informes utilizados

Para evitar confusión, dejar inactivos los informes que la organización no usa. El catálogo queda limpio y el usuario final solo ve los reportes relevantes.

## Ejemplo de uso

Generar el Balance General de una sucursal para un contrato específico:

1. Abrir el informe *800 - Balance General* en la ventana **Informe Financiero**.
2. Ejecutar **Crear Informe** indicando:
   - **Período**: Febrero.
   - **Organización**: Sucursal Sur.
   - **Contrato**: Contrato de servicio X.
3. El sistema genera el informe mostrando activos, pasivos y patrimonio para esa combinación.
4. Cambiar el **Formato de Impresión** a *Balance de Comprobación* para ver los mismos datos con débitos, créditos y saldos iniciales y finales.
5. Cambiar a *Estado de Resultado* para ver ingresos y egresos del mismo período.
6. Exportar a Excel para entregar como respaldo mensual.

## Consideraciones importantes

- El **Tipo de Aplicación** define qué tipo de importe se lee de los hechos contables. Si se omite, el sistema usa *Actual* por defecto; seleccionar otro valor (Presupuesto, Compromiso, etc.) permite comparar escenarios.
- Los informes se identifican por **número del documento**. Mantener la numeración es clave para comunicarse con soporte: *"no sale el informe 800"* es más claro que el nombre completo.
- **Desplegar Fuentes** y **Lista Transacciones** son pensados para análisis profundo; normalmente se dejan en *No* para no saturar el reporte visible.
- El parámetro **Contrato** es especialmente útil para calcular rentabilidad de contratos comerciales, agrupando ingresos y gastos asociados.
- Los informes pueden combinarse con filtros de **Actividad**, **Proyecto** y **Campaña** para análisis por dimensiones contables configuradas en los hechos contables.
- **Activar** únicamente los informes realmente utilizados. El resto se mantiene inactivo para no generar ruido en el catálogo.
- El informe ejecutado puede cambiar dinámicamente de **Formato de Impresión** sin regenerar el cálculo; esto permite pasar de Balance General a Balance de Comprobación o Estado de Resultado sobre los mismos datos.
- La exportación a **Excel** respeta dos decimales de precisión y conserva la estructura jerárquica del grupo de líneas.
- Si al ejecutar no aparecen datos, verificar: (1) que el período esté abierto y tenga hechos contables, (2) que la organización seleccionada tenga asientos, (3) que el grupo de líneas cubra las cuentas esperadas.

## Ventanas relacionadas

- [Balance de Hechos Contables](../fact-details/accounting-fact-balances)
- [Reporte de Detalle de Hechos Contables](../fact-details/accounting-fact-details-report)
- [Hechos Contables por Período](../fact-details/accounting-fact-period)
