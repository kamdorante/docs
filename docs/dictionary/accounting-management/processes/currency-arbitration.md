---
title: Importación de Tasa de Cambio
category: Documentation
star: 9
sticky: 9
article: false
---

# Importación de Tasa de Cambio (Consultar Tasa de Cambio al BCU)

## Descripción

El proceso **Consultar Tasa de Cambio al BCU** (también identificado como *Importación de Tasa de Cambio*) consulta directamente al **Banco Central del Uruguay (BCU)** las cotizaciones oficiales del día y las carga automáticamente en el sistema como registros de **Tasa de Cambio**. Evita el ingreso manual de las cotizaciones diarias y garantiza que las facturas, pagos y asientos contables en moneda extranjera usen el tipo de cambio oficial.

::: tip Regla operativa clave
La tasa publicada por el BCU **con fecha X** es la que el sistema **aplica al día siguiente (X + 1)**. Por eso, para cargar la cotización del **día actual**, el proceso debe ejecutarse con **la fecha del día anterior** como parámetro.

Por ejemplo, para cargar la tasa del **11 de junio**, ejecutar el proceso con **Fecha de Consulta = 10 de junio**.
:::

Cada ejecución exitosa crea **las dos patas de la conversión** entre la moneda local y cada moneda extranjera configurada (por ejemplo, USD → UYU y UYU → USD). Esto permite que el motor de conversión opere en ambos sentidos sin pasos adicionales.

## ¿Cuándo se utiliza?

Se utiliza cuando la organización necesita:

- Cargar manualmente la tasa del día porque la importación automática no se ejecutó.
- Recuperar cotizaciones faltantes de días anteriores.
- Sincronizar el sistema con las cotizaciones oficiales antes de emitir facturas o registrar pagos en moneda extranjera.
- Validar que la tasa cargada en el sistema coincide con la publicada oficialmente por el BCU.

## Acceso

Existen dos formas de ejecutar el proceso:

1. **Manual desde el menú:** Gestión Contable → Procesos Contables → **Consultar Tasa de Cambio al BCU** (también identificado en algunas instancias como *Importación de Tasa de Cambio*).
2. **Automática mediante el Programador de Procesos:** configurar la ejecución diaria a primera hora para que el sistema cargue las tasas sin intervención del usuario.

## Configuración previa

### Monedas configuradas

Las monedas que el proceso debe importar (USD, EUR, etc.) deben existir en el sistema con su **código ISO** correcto. Sin este mapeo, el BCU envía la cotización pero el sistema no la asocia a la moneda destino.

### Tipo de Conversión

Debe existir al menos un **Tipo de Conversión de Moneda** activo (por ejemplo, *Spot* o *BCU*). El proceso asocia las tasas creadas a este tipo. Si la organización maneja varios tipos (spot, negociado, presupuesto), el proceso permite seleccionar el específico al ejecutar.

### Conectividad

El servidor de Solop debe tener acceso a internet para llegar al servicio del BCU. Si la red corporativa bloquea ese acceso, el proceso falla con error de conexión.

## Parámetros

| Parámetro | Descripción | Tipo | Obligatorio |
|-----------|-------------|------|-------------|
| Fecha de Consulta | Fecha que se envía al BCU. **Debe ser el día anterior al día cuyas tasas se quieren cargar** (la tasa de cierre del día X aplica al día X+1) | Fecha | Sí |
| Tipo de Conversión de Moneda | Tipo al que se asociarán las tasas creadas. Si se omite, se usa el tipo configurado por defecto | Tabla Directa | No |
| Moneda | Moneda específica a consultar cuando solo se necesita una; si se omite, el proceso carga todas las monedas configuradas | Tabla Directa | No |

## Acciones disponibles

- **Ejecutar Proceso**
  Lanza la consulta al BCU y crea los registros de tasa de cambio. Al finalizar, muestra mensaje de éxito o error según el resultado.

- **Verificar Tasas Cargadas**
  Tras ejecutar, abrir la ventana **Tasa de Cambio** y refrescar para confirmar que se crearon los nuevos registros (dos por cada moneda: una pata directa y una inversa).

- **Programar Ejecución Automática**
  Desde el **Programador de Procesos**, configurar la ejecución diaria del proceso para que se cargue automáticamente cada mañana.

## Flujo del proceso

### 1. Verificar que la tasa no esté cargada

Abrir la ventana **Tasa de Cambio** y filtrar por la fecha cuya cotización se quiere cargar (por ejemplo, el día actual). Confirmar que **no existen registros** para esa fecha. Si ya existen y se quiere reimportar, eliminarlos antes para evitar duplicados o reemplazos no deseados.

### 2. Calcular la Fecha de Consulta

Aplicar la regla operativa: la **Fecha de Consulta** debe ser el **día anterior** al día cuyas tasas se quieren cargar.

| Día cuya tasa se quiere cargar | Fecha de Consulta a indicar |
|--------------------------------|-----------------------------|
| Hoy (11 de junio) | Ayer (10 de junio) |
| 25 de mayo | 24 de mayo |
| Cualquier día X | X − 1 |

### 3. Ejecutar el proceso

Abrir **Consultar Tasa de Cambio al BCU** y completar:

- **Fecha de Consulta**: el día anterior al objetivo (paso 2).
- **Tipo de Conversión de Moneda**: dejar vacío para usar el predeterminado, o seleccionar uno específico.
- **Moneda**: dejar vacío para cargar todas las monedas configuradas, o seleccionar una.

Confirmar.

### 4. Confirmar el resultado del proceso

El sistema devuelve un mensaje de éxito o error. Si el resultado es exitoso, las tasas ya están cargadas; si hay error, revisar el detalle (problema de conectividad, moneda sin mapeo, etc.).

### 5. Verificar las tasas creadas

Volver a la ventana **Tasa de Cambio**, filtrar por el día objetivo y refrescar. Deben aparecer **dos registros por cada moneda extranjera configurada**:

- Una pata directa (por ejemplo, USD → UYU).
- Una pata inversa (UYU → USD).

Esto confirma que el motor de conversión podrá operar en ambos sentidos.

### 6. Programar la ejecución automática (recomendado)

Desde el **Programador de Procesos**, programar la ejecución diaria (típicamente a primera hora del día) para que el sistema cargue automáticamente las cotizaciones del día sin intervención manual. La ejecución manual queda como recurso para días en que la automática falló.

## Ejemplo de uso

Cargar manualmente las cotizaciones del 11 de junio cuando el proceso automático no se ejecutó esa mañana:

1. Abrir **Tasa de Cambio** y filtrar por la fecha **11 de junio**. Confirmar que no hay registros para ese día.
2. Abrir **Consultar Tasa de Cambio al BCU** y completar:
   - **Fecha de Consulta**: **10 de junio** (el día anterior).
   - **Tipo de Conversión de Moneda**: vacío (usa el predeterminado).
   - **Moneda**: vacío (carga todas las configuradas).
3. Ejecutar. El sistema confirma el resultado exitoso.
4. Volver a **Tasa de Cambio** y filtrar nuevamente por el **11 de junio**. Aparecen las dos patas de la conversión (USD → UYU y UYU → USD) con la cotización oficial del BCU.

## Preguntas frecuentes

### ¿Por qué tengo que poner la fecha del día anterior?

Porque el BCU **publica el cierre del día**: la cotización publicada con fecha X corresponde al cierre de ese día y es la que el sistema usa para las transacciones del **día siguiente (X + 1)**. Si se ejecutara el proceso con la fecha del día actual, el BCU aún no tiene la cotización de ese día (recién la cerrará al final).

### Ejecuté el proceso pero no aparece la tasa en la ventana Tasa de Cambio

Verificar:

1. Que la **Fecha de Consulta** fue el día anterior, no el del día buscado.
2. Que el filtro de la ventana **Tasa de Cambio** apunta al día objetivo correcto.
3. Que la moneda esperada tiene su **código ISO** correctamente configurado.
4. Que el proceso devolvió mensaje de éxito (no de error de conectividad o respuesta vacía).

### ¿Qué hago si la tasa ya estaba cargada con un valor incorrecto?

Eliminar el registro previo desde la ventana **Tasa de Cambio** y volver a ejecutar el proceso con la fecha correcta. Si el proceso reemplaza automáticamente, también es válido ejecutarlo nuevamente.

### ¿Puedo cargar tasas de varios días faltantes?

Sí, pero el proceso se ejecuta **una vez por día**. Para tres días faltantes, ejecutar tres veces, cada una con la Fecha de Consulta correspondiente.

## Consideraciones importantes

- La **Fecha de Consulta** es siempre **el día anterior** al día cuya cotización se quiere cargar. Esta es la fuente más común de error en la carga manual.
- Cada ejecución exitosa crea **dos registros por moneda** (las dos patas de conversión). Si solo aparece una, la moneda no tiene configurada la pata inversa o falta el código ISO de alguna moneda.
- La práctica recomendada es **programar la ejecución automática diaria**. La carga manual queda como recurso para días en que la automática falló.
- El proceso **reemplaza** las tasas existentes para esa fecha si las hay. Para reimportar con datos limpios, conviene eliminar los registros previos antes de ejecutar.
- Si el proceso falla con error de **conectividad**, verificar la salida a internet del servidor de Solop hacia el servicio del BCU.
- Si una **moneda** no aparece en los registros creados, validar que esa moneda existe en el sistema con el código ISO correcto. Sin código, el BCU envía la cotización pero el sistema no la mapea.
- Para **operaciones en moneda extranjera**, el sistema toma la tasa vigente a la fecha del documento. Si el día de la operación no tiene tasa cargada, usa la tasa más reciente disponible; por eso conviene mantener la importación al día.
- El proceso solo carga las cotizaciones publicadas por el **BCU**. Para tasas **negociadas** con clientes/proveedores, usar el tipo de conversión correspondiente y cargar manualmente.
- El proceso también carga **tasas cruzadas** entre monedas extranjeras (por ejemplo, USD/EUR) cuando el BCU las publica, permitiendo conversión directa sin pasar por la moneda local.

## Ventanas relacionadas

- [Tipos de Conversión para Facturación Electrónica](../../electronic-billing/conversion-types)
- [Notas de Crédito — Validaciones de Moneda y Tasa de Cambio](../../electronic-billing/credit-note-currency-validations)
