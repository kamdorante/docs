---
title: Comparación de Pronóstico de Ventas
category: Documentation
star: 9
sticky: 9
article: false
---

# Comparación de Pronóstico de Ventas

## Descripción

La funcionalidad de **Comparación de Pronóstico de Ventas** permite evaluar los resultados reales de ventas contra los valores pronosticados. Esto proporciona información actualizada sobre cómo se desarrolla lo real en comparación con el pronóstico, facilitando la toma de decisiones comerciales y operativas.

El cálculo de comparación se ejecuta de forma asíncrona a través de una cola de procesamiento, lo que evita interferir con las operaciones diarias del sistema.

## ¿Cuándo se utiliza?

Se utiliza cuando ya existe un pronóstico de ventas creado y calculado, y se desea comparar los datos reales (facturas, órdenes o entregas) contra los valores pronosticados.

Casos típicos:

- Evaluar el desempeño de ventas reales contra el pronóstico establecido.
- Monitorear la precisión del pronóstico a nivel financiero, de clasificación de productos o por producto específico.
- Identificar desviaciones entre lo pronosticado y lo real para ajustar estrategias comerciales.
- Validar qué se debe producir en función de las órdenes recibidas contra lo pronosticado.

## Niveles de Pronóstico

El sistema maneja tres niveles de pronóstico, cada uno con un alcance diferente:

| Nivel | Descripción | Agrupación |
|-------|-------------|------------|
| Financiero | Por organización y opcionalmente por vendedor | Sin detalle de producto. Se calcula exclusivamente con facturas |
| Clasificación | Por agrupación de producto | Categoría, grupo, clase, clasificación, grupo de compras, grupo de ventas, tipo de industria, marca de producto |
| Operativo | Por producto específico | Producto, monto y cantidad individual |

::: note
El nivel financiero **siempre** se calcula únicamente con facturas, independientemente de la fuente de comparación configurada.
:::

## Configuración

### Información de Compañía

La configuración principal se realiza en la ventana **Compañía**, pestaña **Información de Compañía**. Los campos relevantes son:

- **Calcula Pronóstico**
  Check que habilita el cálculo de comparación de pronóstico para la compañía. Al activarse, se muestran los campos adicionales de configuración.

- **Motor de Pronóstico**
  Lista que permite seleccionar el motor de cálculo. Si la compañía tiene habilitado el cálculo de pronóstico y este campo se deja vacío, el sistema utiliza el motor predeterminado.

- **Nivel de Pronóstico**
  Determina qué niveles se calculan en la comparación:
  - **Financiero**: Solo calcula comparaciones a nivel financiero.
  - **Clasificación**: Solo a nivel de clasificación de productos.
  - **Operativo**: Solo a nivel de producto específico.
  - **Todo**: Calcula los tres niveles.

- **Fuente de Comparación**
  Define el origen de los datos reales para la comparación:
  - **Factura**: Compara contra facturas completadas.
  - **Orden**: Compara contra órdenes de venta.
  - **Entrega**: Compara contra entregas realizadas.

### Programador de Procesos

El cálculo de comparación se ejecuta mediante un programador de procesos denominado **Forecast Comparison**, que utiliza una cola de tipo **Comparación de Pronóstico** para procesar los cálculos de forma asíncrona.

- **Frecuencia recomendada**: 5 minutos.
- **Rol y Supervisor**: Se deben configurar correctamente, al igual que cualquier otro procesador del sistema.

::: tip
Si el programador de procesos no existe, se debe ejecutar el proceso **Crear Configuración de Funcionalidad** (Forecast Comparison Set) a nivel de compañía para generarlo automáticamente.
:::

## Ventanas Relacionadas

### Presupuesto de Venta

Corresponde al pronóstico para el **nivel financiero**. Contiene:

- **Tipo de Presupuesto**: Tipo asociado al presupuesto.
- **Año**: Período fiscal del presupuesto.
- **Total de Presupuesto**: Monto total presupuestado.

#### Línea de Presupuesto

Las líneas se agrupan por:

- Organización
- Período
- Agente de compañía
- Región de venta
- Canal de ventas

Cada línea contiene **Cantidad de Presupuesto** y **Monto de Presupuesto**.

### Pronóstico de Venta

Corresponde a los niveles de **clasificación** y **operativo**. Contiene:

- **Nivel de Pronóstico**: Clasificación u operativo.

#### Líneas de Pronóstico - Nivel Clasificación

Agrupadas por organización, agente comercial y período. Incluyen campos de agrupación de productos:

- Categoría de producto
- Grupo de producto
- Clase
- Clasificación
- Grupo de compras
- Grupo de ventas
- Tipo de industria
- Categoría de flete
- Marca de producto

Cada línea tiene su cantidad y monto pronosticado.

#### Líneas de Pronóstico - Nivel Operativo

Agrupadas por organización, agente comercial y período. Lo principal es:

- **Producto**: Producto específico.
- **Cantidad**: Cantidad pronosticada.
- **Monto**: Monto pronosticado.

### Comparación de Pronóstico

Al procesar las líneas de pronóstico o presupuesto, se genera automáticamente la **Comparación de Pronóstico**. Esta es una copia de las líneas tanto de presupuesto de venta como de pronóstico de venta, que luego se actualiza con los datos reales.

Campos principales de la comparación:

- **Organización**
  Organización asociada a la comparación.

- **Período**
  Período de la comparación.

- **Cantidad del Pronóstico**
  Cantidad originalmente pronosticada.

- **Cantidad Actual**
  Cantidad real obtenida.

- **Monto del Pronóstico**
  Monto originalmente pronosticado.

- **Monto Actual**
  Monto real obtenido.

- **Varianza de Monto**
  Diferencia entre el monto real y el pronosticado.

- **Varianza de Cantidad**
  Diferencia entre la cantidad real y la pronosticada.

- **MAPE (Mean Absolute Percentage Error)**
  Error porcentual absoluto medio. Indica qué tan lejos estuvo el pronóstico del valor real en términos porcentuales.

- **Bias**
  Sesgo del pronóstico. Indica la tendencia de sobre o sub-estimación.

- **Precisión**
  Porcentaje de precisión del pronóstico (100% - MAPE).

## Flujo del Proceso

### 1. Configurar la Compañía

Acceder a la ventana **Compañía**, pestaña **Información de Compañía**. Activar el check **Calcula Pronóstico** y configurar el nivel de pronóstico y la fuente de comparación.

### 2. Verificar el Programador de Procesos

Verificar que exista el programador **Forecast Comparison** con el tipo de cola correspondiente. Si no existe, ejecutar **Crear Configuración de Funcionalidad** a nivel de compañía.

### 3. Crear el Pronóstico

Crear el presupuesto de venta (nivel financiero) y/o el pronóstico de venta (niveles de clasificación y operativo) con las cantidades y montos esperados.

### 4. Generar la Comparación

Al procesar las líneas de pronóstico, el sistema genera automáticamente los registros de comparación como copia de las líneas originales.

### 5. Completar Documentos

Al completar facturas, órdenes o entregas (según la fuente configurada), el sistema agrega automáticamente un registro a la cola de comparación de pronóstico.

### 6. Procesamiento Asíncrono

El programador de procesos toma los registros de la cola y ejecuta los cálculos de comparación, actualizando las métricas (varianza, MAPE, bias, precisión) en los registros de comparación.

## Reporte de Comparación de Pronóstico

El sistema incluye un **Reporte de Comparación de Pronóstico** basado en una vista de la tabla de comparación. Este reporte permite visualizar de forma consolidada:

- Monto total pronosticado y monto actual (real).
- Cantidades pronosticadas y actuales.
- Varianza entre cantidades y montos.
- Métricas de cálculo: MAPE, bias y precisión.

Los datos se pueden filtrar por nivel de pronóstico para ver la información a nivel financiero, de clasificación o por producto.

## Consideraciones Importantes

- El pronóstico debe estar creado y calculado **antes** de iniciar la comparación.
- El nivel financiero **siempre** se calcula con facturas, sin importar la fuente de comparación configurada.
- Los niveles de clasificación y operativo pueden calcularse con facturas, órdenes de venta o entregas, según la configuración.
- El procesamiento es asíncrono mediante una cola, lo que garantiza que no interfiera con las operaciones diarias.
- La frecuencia recomendada del programador de procesos es de 5 minutos.
- Se debe determinar la moneda de los pronósticos: si será por cada pronóstico o a nivel de compañía.
- Es posible vaciar la cola manualmente desde la ventana **Vaciar Cola del Sistema**, seleccionando el tipo de cola **Forecast Comparison**.

## Ejemplo de Uso

Una empresa configura su compañía con el cálculo de pronóstico habilitado, nivel **Todo** y fuente de comparación **Factura**. Se crea un presupuesto de venta para enero con un total de 135.500.

A nivel operativo, se definen pronósticos por producto:

| Producto | Cantidad Pronosticada | Monto Pronosticado |
|----------|-----------------------:|-------------------:|
| Lavarropas 9 | 50 | 40.000 |
| Cafetería Express | 30 | 18.000 |
| Cocina Princesas | 60 | 10.500 |
| Bicicleta Mini | 30 | 15.000 |
| Tractor Batería | 70 | 17.250 |
| Conservadora Combo | 25 | 25.500 |

Al completar facturas durante el período, el sistema agrega registros a la cola de comparación. El programador de procesos ejecuta el cálculo y actualiza las métricas. Por ejemplo, si el monto real total resulta en 139.850 contra los 135.500 pronosticados:

| Métrica | Valor |
|---------|------:|
| Varianza | 4.350 |
| MAPE | 3,11% |
| Precisión | 96,89% |

A nivel de producto individual, si el Lavarropas 9 tiene un monto real de 24.000 contra los 40.000 pronosticados:

| Métrica | Valor |
|---------|------:|
| Varianza | -16.000 |
| MAPE | 66,67% |
| Precisión | 33,33% |

Esto permite identificar rápidamente qué productos están por debajo o por encima del pronóstico y tomar las acciones correctivas necesarias.
