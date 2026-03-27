---
title: Reabastecimiento de Producto
category: Documentation
star: 9
sticky: 9
article: false
---

Este proceso de reabastecimiento sólo permite agregarle lógicas al criterio de reabastecimiento, como calcular cantidades vendidas para poder generar un reabastecimiento específico.



## 📦 Guía de Usuario: Reglas para Reabastecer

### 🧭 Objetivo

Esta guía tiene como objetivo explicar las diferentes reglas y mecanismos disponibles para reabastecer productos en el sistema de gestión de inventario. A través de esta documentación, el usuario podrá comprender cuándo y cómo se activan los procesos de reabastecimiento, así como personalizar reglas específicas por producto o almacén.

### 🛒 ¿Qué significa reabastecer?

Reabastecer implica reponer el inventario de un producto que ha salido del almacén por diversos motivos: ventas, movimientos internos, ajustes, producción o consumo. El sistema puede reabastecer de diferentes maneras:

* A través de una orden de distribución desde otro almacén.

* Mediante una orden de compra a un proveedor.

* Usando una requisición, si aplica al proceso de compras.

* Con un movimiento de inventario directo entre almacenes, sin orden asociada.

### 📊 Mecanismos y reglas de reabastecimiento

#### Reabastecimiento por mínimos y máximos

El sistema permite establecer niveles mínimos y máximos de inventario para cada producto y almacén.
Cuando el stock cae por debajo del mínimo, se genera una sugerencia de reabastecimiento.

El sistema calculará la cantidad a ordenar para alcanzar el nivel máximo definido.

📌 Ejemplo:

Mínimo = 1 | Máximo = 5

Stock actual = 1 → el sistema sugerirá pedir 4 unidades para llegar a 5.

### Reglas personalizadas

El sistema permite definir reglas de reabastecimiento específicas por almacén o por producto.
Estas reglas deben ser desarrolladas previamente y pueden adaptarse a necesidades del cliente.

Se configuran principalmente a nivel de almacén, pero se puede sobrescribir por producto si se desea una lógica diferente.

### 🔄 Tipos de reglas disponibles

🟩 1. Reponer según lo vendido ayer
Reabastece las unidades vendidas el día anterior.

Muy útil en tiendas o locales donde se repone el stock de mostrador diariamente.

🟨 2. Reponer según el mínimo
Se activa cuando el stock baja al mínimo definido.

Suma las unidades necesarias para alcanzar el máximo.

🟦 3. Reponer todo lo que salió del almacén
Reabastece sin importar el motivo de salida (venta, ajuste, traslado, producción).

Ideal para mantener un stock constante y parejo.

### ⚙️ ¿Cómo aplica el sistema la regla?

Si el campo de Regla de Reabastecimiento está vacío en el producto, el sistema tomará la regla definida a nivel de almacén.

Si se especifica una regla en el producto, esta tendrá prioridad sobre la del almacén.

::: tip
✅ Recomendaciones
Verificar regularmente los valores mínimos y máximos para cada producto.

Validar si la lógica por defecto del almacén aplica a todos los casos o si hay productos con comportamientos particulares.

Documentar internamente qué regla se aplica a cada almacén y mantener coherencia.
:::

## ⚙️ Guía de Usuario: Configuración de Reabastecimiento

### 🧭 Objetivo

Esta guía explica paso a paso cómo se configura el sistema para aplicar reglas de reabastecimiento automáticas. El enfoque está orientado a mantener un stock óptimo en almacenes o puntos de venta, evitando pérdidas económicas y garantizando reposiciones efectivas.

### 🧱 Fundamento del Reabastecimiento

#### ¿Qué hace el sistema?

* El sistema identifica qué productos deben reponerse basándose en:

* Las ventas realizadas.

* El nivel mínimo/máximo configurado por producto.

* Las reglas personalizadas aplicadas a nivel de almacén o producto.

#### 🧪 ¿Cómo calcula el sistema qué reponer?

1. Tipo de transacción relevante: El sistema considera los movimientos que representen salida de mercadería —por ejemplo, "embarque a cliente".

2. Fecha de corte: El usuario realiza un corte manual. Desde ese momento hacia atrás, el sistema calcula cuántas unidades salieron y lo toma como base para el reabastecimiento.

3. Acción posterior: Tras el corte, el sistema espera una acción concreta:

* Requisición

* Orden de compra

* Movimiento de inventario

* Orden de distribución

::: tip
📌 Si no se realiza ninguna de estas acciones, la fecha de corte no se actualiza, lo que puede causar duplicación de sugerencias o errores de cálculo en períodos posteriores.
:::

### 🔁 ¿Qué regla se aplica?

* Si el producto tiene configurada una regla personalizada, esa será la utilizada.

* Si no hay configuración a nivel de producto, se tomará la regla definida en el almacén.

* ⚠️ Si no hay configuración en ningún nivel, el sistema no generará sugerencias (aunque se realicen ventas).

* 🧰 Herramienta para visualizar: “Reabastecimiento de Producto”

::: tip
Se debe usar el smart browser llamado Reabastecimiento de Producto, y no el de Reabastecimiento de Almacén (este último solo aplica para mínimos y máximos y no soporta reglas personalizadas).
:::

#### Campos obligatorios:

* Almacén (debe coincidir con el configurado en el producto).

* Producto (que tenga una regla activa de reabastecimiento).

### 🧠 Tipos de configuración de reabastecimiento disponibles

#### Tipo de Reabastecimiento

Descripción

* 🔁 Reponer por debajo del mínimo

Cuando el stock está por debajo del mínimo, reordena hasta alcanzar el máximo.

* 📈 Mantener nivel máximo

Siempre que el stock esté por debajo del máximo, reordena automáticamente.

#### 🛠 Reglas personalizadas (desarrolladas a medida)

Ejecutan cálculos específicos antes de sugerir reabastecimientos.

* 📋 Informativo

No genera acción automática, pero muestra en pantalla para evaluación manual.

* ⚠️ No soportado

Algunos tipos como “calculado” o “EDM del proyecto” no están habilitados para este proceso.

* 📝 Notas clave

::: tip
Importante: Si un producto no tiene regla asignada, no aparecerá en el módulo de reabastecimiento, incluso si tuvo ventas.

El sistema solo relaciona ventas (o salidas) que se produjeron entre la última fecha de corte y la fecha actual.

Este método es ideal para negocios con mostradores o stock reducido donde se repone diariamente lo que se vendió.
:::

## 🔄 Guía de Usuario: Proceso de Reabastecimiento de Inventario

### 🧭 Objetivo

Esta guía detalla el proceso completo para generar un reabastecimiento de inventario utilizando el sistema, ya sea por órdenes de compra, distribución o movimientos entre almacenes.

### 🗂 Pasos para generar un reabastecimiento

Ingreso al módulo de reabastecimiento
Accedé al módulo correspondiente y seleccioná el almacén destino. Este es el almacén que necesita reponer productos.

Aplicación de filtros para facilitar la búsqueda
Para mejorar la eficiencia del proceso, el sistema permite aplicar múltiples filtros antes de ejecutar la acción:

✅ Marca

✅ Medio

✅ Clasificación

✅ Grupo de compras

✅ Tipo de reabastecimiento

✅ Organización

✅ Grupo de productos

✅ Socio de negocio (importante si el producto requiere ser adquirido a un proveedor)

::: tip
📌 Nota: Si el producto no tiene un socio de negocio definido, no podrá ser reabastecido mediante una orden de compra.
:::

### Consulta previa (vista sin acción)

Al aplicar los filtros, se puede consultar el estado sin ejecutar ninguna acción. Esto permite revisar sin generar movimientos.

### Creación del reabastecimiento

Para iniciar el proceso real:

* Seleccioná el producto.

* Presioná el botón Crear Reabastecimiento del Producto.

* Elegí el tipo de acción:

📝 Movimiento de inventario

📦 Orden de distribución

📄 Orden de compra

📌 Requisición

* Indicá el tipo de documento a generar.

### 🏢 Configuración del almacén fuente

Al seleccionar el almacén destino, es posible establecer el almacén fuente desde donde se realizará el reabastecimiento.

Por ejemplo: si el almacén “Triple X” depende del almacén central, el sistema entenderá que debe solicitar los productos desde ese almacén fuente.

Esta lógica evita que el sistema intente comprar directamente desde un proveedor cuando el flujo pasa por distribución interna.

### 🧩 Configuración específica por producto

Si se desea una excepción a la regla general:

* Ingresá a la configuración del producto en el módulo de reabastecimiento.

* Definí un almacén fuente personalizado solo para ese ítem.

📌 De este modo, el producto tomará siempre su reabastecimiento desde ese almacén, independientemente de lo que esté definido a nivel general.

### 📥 Generación automática de movimientos

Una vez confirmado el reabastecimiento, el sistema genera uno o más movimientos de inventario.

Si hay múltiples almacenes fuente, se genera un movimiento por cada almacén fuente involucrado.

Todos los productos llegarán al almacén destino original.

### 📅 Visualización de la fecha de reabastecimiento

El sistema registrará una fecha de reabastecimiento por producto, que puede consultarse luego en la ficha del ítem. Esta fecha se actualiza según la configuración del proceso (manual o automática).

::: tip
✅ Recomendaciones
Definí correctamente los almacenes fuente y destino antes de comenzar.

Verificá que todos los productos tengan su socio de negocio asignado si se va a usar orden de compra.

Revisá que las reglas de reabastecimiento estén bien configuradas para evitar errores de cálculo o duplicación de movimientos.
:::

## 🔧 Guía de Usuario: Otros Procesos dentro de la Funcionalidad de Reabastecimiento 

### 🧭 Objetivo 

Esta sección explica funcionalidades adicionales del sistema relacionadas al proceso de reabastecimiento. Su propósito es ahorrar tiempo operativo, automatizar tareas repetitivas y facilitar el control del inventario. 

### 🟢 1. Reabastecimiento por Defecto en Categoría de Producto 

 📌 ¿Para qué sirve? 

Permite definir un reabastecimiento por defecto directamente a nivel de categoría de producto. Esto evita tener que configurar el mismo tipo de reabastecimiento manualmente en cada producto. 

 🛠 ¿Cómo se usa? 

Se accede desde la ventana de Categoría de Producto. 

Se asigna una regla de reabastecimiento predeterminada (por ejemplo: mínimo/máximo). 

Esta regla será aplicada automáticamente a todos los productos de esa categoría que no tengan una configuración individual. 

📍 Beneficio principal: agilidad en la configuración y estandarización para empresas con muchos productos similares (especialmente útil en retail). 

 

### 🟦 2. Conteo de Inventario Personalizado 

📌 ¿Qué es? 

Una nueva funcionalidad que permite crear listas de conteo personalizadas, basada en productos vendidos recientemente. 

🧪 ¿Dónde se encuentra? 

En el módulo de Conteo de Inventario → Crear Lista de Conteo Personalizada. 

#### 🧰 Tipos de listas disponibles: 

✅ Basadas en productos vendidos el día anterior. 

✅ Límite configurable (ejemplo: hasta 20 productos). 

::: tip
💡 Ideal para: empresas con alto volumen de SKUs diarios (500–600), que no pueden hacer conteo completo a diario. Usan este método para controlar solo una muestra diaria (20 productos, por ejemplo). 
:::

### 🔄 Comparativa con método tradicional 

|         Funcionalidad          |    Método Tradicional   |           Método Personalizado                        |  
| ------------------------------ | ----------------------- | ----------------------------------------------------- | 
|      Filtros por Producto      |    Manual y General     |   Basado en Ventas del día anterior                   | 
|        Creación de Lista       | Desde Filtros Genéricos |  Automática por clase personalizada                   | 
|           Adaptación           |   Limitada a Filtros    |  Totalmente adaptable a cada cliente                  | 
| Requiere Desarrollo Específico |            No           | Sí (a medida del SDN, s/ modificar interf/inventario) | 

### 🔧 3. Clase Personalizada para Conteo 

Es posible definir un nombre de clase personalizada que determine la lógica de selección de productos para el conteo. 

🛠 Este desarrollo puede ser adaptado por cliente, sin necesidad de modificar las ventanas estándar del sistema. Solo requiere implementar la clase deseada que defina qué productos se deben contar y con qué criterio. 

🔁 Ejemplo: 

Una empresa puede pedir una clase que cree listas de conteo semanales basadas en los productos más vendidos de los últimos 7 días. 

::: tip
🧠 Recomendaciones 

Usar el reabastecimiento por categoría para reducir tareas repetitivas. 

Implementar conteo personalizado si el volumen de productos es alto y se necesita control selectivo. 

Evaluar con el equipo técnico si es necesario desarrollar una clase específica para ajustar las listas de conteo al modelo de negocio. 
:::