---
title: Importación de Tasa de Cambio
category: Documentation
star: 9
sticky: 9
article: false
---

# Importación de Tasa de Cambio

## Descripción

El proceso **Importación de Tasa de Cambio** (también conocido como *Consulta Arbitraje de Moneda BCU*) consulta automáticamente al Banco Central del Uruguay (BCU) y carga en el sistema las tasas de cambio publicadas para las distintas monedas configuradas. Evita el ingreso manual de las cotizaciones diarias y garantiza que los documentos del sistema (facturas, pagos, asientos contables) usen el tipo de cambio oficial vigente al momento de la transacción.

El proceso se ejecuta indicando la **Fecha de Ejecución**: el sistema consulta al BCU la información publicada para esa fecha y crea automáticamente los registros de **Tasa de Cambio** correspondientes en el sistema. Por la forma en que el BCU publica sus cotizaciones (publica el cierre del día), la práctica habitual es ejecutarlo con la fecha del **día anterior** para obtener las cotizaciones del día actual.

## ¿Cuándo se utiliza?

Se utiliza cuando la organización necesita:

- Cargar las tasas de cambio diarias del BCU sin tener que ingresarlas manualmente.
- Sincronizar el sistema con las cotizaciones oficiales antes de emitir facturas en moneda extranjera.
- Recuperar cotizaciones faltantes (por ejemplo, días en que el proceso automático no se ejecutó).
- Validar que la tasa configurada en el sistema coincide con la publicada por el BCU para una fecha.
- Mantener actualizado el motor de conversión de monedas usado por contabilidad, facturación electrónica y conciliación bancaria.

## Acceso

Existen dos formas de ejecutar el proceso:

1. **Manual desde el menú:** Gestión Contable → Procesos Contables → Importación de Tasa de Cambio.
2. **Automática mediante el Programador de Procesos:** configurar la ejecución diaria con la frecuencia y fecha deseadas para que el sistema cargue las tasas sin intervención del usuario.

## Configuración previa

### Monedas configuradas

Las monedas que el proceso debe importar (USD, EUR, etc.) deben existir en el sistema con su **código ISO** correcto. Sin esta configuración, el proceso no puede mapear las cotizaciones recibidas del BCU.

### Tipo de Conversión

Debe existir al menos un **Tipo de Conversión de Moneda** (por ejemplo, *Spot* o *BCU*) marcado para uso. El proceso crea las tasas asociadas a este tipo. Si la organización maneja varios tipos (spot, negociado, presupuesto), el proceso permite seleccionar el tipo específico al ejecutar.

### Conectividad

El servidor de Solop debe tener acceso a internet para llegar al servicio del BCU. Si la red corporativa bloquea ese acceso, el proceso falla con error de conexión.

## Parámetros

| Parámetro | Descripción | Tipo | Obligatorio |
|-----------|-------------|------|-------------|
| Fecha de Ejecución | Fecha que se envía a la consulta del BCU. Para cargar las cotizaciones del día actual, suele indicarse el día anterior (ya que el BCU publica el cierre del día) | Fecha | Sí |
| Tipo de Conversión de Moneda | Tipo al que se asociarán las tasas creadas. Si se omite, se usa el tipo configurado por defecto | Tabla Directa | No |
| Moneda | Moneda específica a consultar cuando solo se necesita una; si se omite, el proceso carga todas las monedas configuradas | Tabla Directa | No |

## Acciones disponibles

- **Ejecutar Proceso**
  Lanza la consulta al BCU y crea los registros de tasa de cambio para la fecha indicada.

- **Verificar Tasas Cargadas**
  Tras ejecutar, abrir la ventana **Tasa de Cambio** y refrescar para confirmar que se crearon los nuevos registros.

- **Programar Ejecución Automática**
  Desde el **Programador de Procesos**, configurar la ejecución diaria del proceso para que se cargue automáticamente cada mañana.

## Flujo del proceso

### 1. Verificar la configuración

Antes de la primera ejecución, confirmar que las monedas (USD, EUR, etc.) están configuradas con su código ISO, que existe un tipo de conversión de moneda activo y que el servidor tiene conectividad con el BCU.

### 2. Determinar la fecha de ejecución

Decidir qué fecha enviar al BCU:

- Para cargar las **cotizaciones del día actual**, ejecutar el proceso con la **fecha del día anterior** (porque el BCU publica el cierre).
- Para cargar **cotizaciones históricas faltantes**, ejecutar con la fecha del día anterior a la fecha cuyas tasas se quieren recuperar.

### 3. Ejecutar el proceso

Desde **Procesos Contables → Importación de Tasa de Cambio**, completar la *Fecha de Ejecución*. Opcionalmente, indicar el *Tipo de Conversión* y una *Moneda* específica si se desea filtrar. Ejecutar.

### 4. Verificar la creación de registros

Abrir la ventana **Tasa de Cambio**, filtrar por la fecha correspondiente y refrescar. Deben aparecer los registros recién creados (típicamente uno por cada par de monedas configurado).

### 5. Validar las tasas

Comparar las tasas creadas con la publicación oficial del BCU para confirmar que se importaron correctamente. La unidad de medida y los decimales deben coincidir.

### 6. Programar la ejecución automática (recomendado)

Desde el **Programador de Procesos**, programar la ejecución diaria del proceso (típicamente a primera hora del día) para que el sistema cargue automáticamente las cotizaciones del día sin intervención manual.

## Ejemplo de uso

Cargar manualmente las cotizaciones del 25 de mayo tras detectar que el proceso automático no se ejecutó:

1. Abrir **Tasa de Cambio** y filtrar por el 25 de mayo. Confirmar que no hay registros creados o eliminar los que estuvieran con datos incorrectos.
2. Abrir **Importación de Tasa de Cambio** y completar:
   - **Fecha de Ejecución**: 24 de mayo (el día anterior al objetivo).
   - **Tipo de Conversión de Moneda**: dejar vacío para usar el por defecto.
   - **Moneda**: dejar vacío para cargar todas las monedas configuradas.
3. Ejecutar. El proceso consulta al BCU y crea automáticamente los registros para el 25 de mayo.
4. Volver a **Tasa de Cambio**, refrescar y verificar que aparecen los nuevos registros con las cotizaciones oficiales del 25 de mayo.

## Consideraciones importantes

- La **fecha de ejecución** que se envía al BCU debe ser el día **anterior** al día cuyas tasas se quieren cargar. El BCU publica el cierre del día, por lo que para tener las cotizaciones del 25 de mayo en el sistema se ejecuta con fecha 24 de mayo.
- La práctica recomendada es **programar la ejecución automática** diaria, evitando ejecuciones manuales que pueden olvidarse. La carga manual queda como recurso para días en que la automática falló.
- El proceso **reemplaza** las tasas existentes para esa fecha si las hay (por ejemplo, si se cargaron manualmente y luego se ejecuta la importación automática). Para tener datos limpios, borrar manualmente los registros previos antes de ejecutar el proceso cuando se quiere reimportar.
- Si el proceso falla con error de **conectividad**, verificar que el servidor de Solop tiene salida a internet hacia el servicio del BCU. El error suele indicar tiempo de espera agotado o host no alcanzable.
- Si una **moneda** no aparece en los registros creados, validar que esa moneda existe en el sistema con el código ISO correcto. El BCU envía las cotizaciones identificadas por código; sin el mapeo, se ignoran.
- Para **operaciones en moneda extranjera** (facturas, pagos, asientos), el sistema toma la tasa vigente a la fecha del documento. Si el día de la operación no tiene tasa cargada, el sistema usa la tasa más reciente disponible; por eso es importante mantener la importación al día.
- El proceso solo carga las cotizaciones publicadas por el **BCU**. Para tasas internas o tasas **negociadas** con clientes/proveedores, usar el tipo de conversión correspondiente y cargar manualmente o desde otra fuente.
- La función de **consulta de arbitraje** carga las tasas cruzadas (por ejemplo, USD/EUR) cuando el BCU las publica, además de las tasas directas contra la moneda local. Esto permite usar el motor de conversión sin pasar siempre por la moneda local intermedia.

## Ventanas relacionadas

- [Tipos de Conversión para Facturación Electrónica](../../electronic-billing/conversion-types)
- [Notas de Crédito — Validaciones de Moneda y Tasa de Cambio](../../electronic-billing/credit-note-currency-validations)
