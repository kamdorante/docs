---
title: Oportunidad de Venta
category: Documentation
star: 9
sticky: 9
article: false
---

# Oportunidad de Venta

## Descripción

La ventana **Oportunidad de Venta** centraliza la gestión del proceso comercial dentro del módulo CRM. Permite registrar cada oportunidad desde el primer contacto con el cliente, asignarle un agente comercial, ubicarla en una etapa del embudo de ventas, agregar los recursos cotizados, generar la cotización y, posteriormente, crear el proyecto y la orden de venta asociada.

Cada oportunidad mantiene visible el importe estimado, el porcentaje de probabilidad y el importe ponderado, lo que habilita reportes de pronóstico y seguimiento por etapa. La información capturada en la oportunidad se hereda automáticamente hacia la cotización, el proyecto y la orden de venta cuando se avanza en el ciclo comercial.

## ¿Cuándo se utiliza?

Se utiliza cuando el equipo comercial necesita:

- Registrar un nuevo lead o prospecto y seguirle desde la primera interacción.
- Gestionar el embudo de ventas y mover oportunidades entre etapas.
- Filtrar las oportunidades activas por agente comercial o por etapa del proceso.
- Cotizar recursos (productos o servicios) validando disponibilidad para un rango de fechas.
- Generar una cotización, un proyecto y una orden de venta a partir de la misma oportunidad.
- Registrar actividades de seguimiento (llamadas, correos, tareas) sobre la oportunidad.

## Acceso

Existen dos formas de acceder:

1. **Desde el menú:** Gestión de Ventas → Gestión de Ventas CRM → Oportunidad de Venta.
2. **Desde la vista de embudo:** ingresar a la vista *Funnel* del CRM y abrir una oportunidad existente o crear una nueva arrastrando entre etapas.

## Pestañas

### Oportunidad

Pestaña principal donde se registra la oportunidad y su contexto comercial. La información se organiza en:

- **Socio del Negocio y Contacto**
  Cliente o prospecto al que corresponde la oportunidad, junto con la persona de contacto dentro del cliente. Cuando el socio tiene configurado un nombre fantasía, el sistema lo muestra en la cabecera.

- **Agente Comercial**
  Vendedor responsable de gestionar la oportunidad. Se utiliza como filtro principal en la vista de lista y de embudo.

- **Etapa de Venta**
  Fase actual en el proceso comercial. Cada organización define sus propias etapas según el flujo de ventas.

- **Probabilidad e Importe Ponderado**
  Porcentaje de cierre estimado para la etapa actual. El sistema multiplica el presupuesto total por la probabilidad para calcular el importe ponderado usado en reportes de pronóstico.

- **Contrato**
  Contrato del socio de negocio asociado a la oportunidad. El selector muestra únicamente contratos del socio elegido que estén en estado *Completo*.

- **Fecha de Cierre Esperada**
  Fecha estimada para cerrar la oportunidad; se usa en el pronóstico de ingresos.

### Recursos

Recursos (productos o servicios) que se están cotizando dentro de la oportunidad. Cada línea permite indicar:

- **Tipo de Recurso**
- **Fecha Desde / Fecha Hasta** o cantidad de períodos.
- **Cantidad de Unidades**

El sistema verifica la disponibilidad de cada recurso para el rango indicado. Si la cantidad solicitada supera la disponibilidad, muestra un error y no permite continuar.

Cuando un recurso tiene **instalación requerida** configurada, el sistema agrega automáticamente una línea de instalación adicional al generar la cotización.

### Cotización / Orden

Muestra las cotizaciones y órdenes de venta generadas desde la oportunidad. Campos visibles:

- **Número del Documento**
- **Tipo de Documento**
- **Fecha de la Orden**
- **Socio del Negocio**
- **Total General**

### Línea de la Orden

Detalle de las líneas de la cotización u orden generada, con producto, cantidad, precio y descuento aplicado.

### Asignación de Recursos

Vinculación de los recursos de la oportunidad con disponibilidad concreta para el rango de fechas solicitado.

### Instalaciones Requeridas

Lista de instalaciones generadas automáticamente cuando los recursos lo requieren.

### Actividades

Actividades de seguimiento registradas sobre la oportunidad: llamadas, correos o tareas. Cada actividad queda asociada a la oportunidad con fecha y responsable, y se visualiza en el calendario del agente.

## Acciones disponibles

- **Generar Cotización**
  Crea una cotización de venta que hereda automáticamente el socio, el contrato y las líneas de recursos de la oportunidad. Desde la cotización se pueden ajustar cantidades, aplicar descuentos por línea y enviarla por correo electrónico.

- **Crear Proyecto**
  Genera un proyecto vinculado a la oportunidad junto con la orden de venta correspondiente, heredando contrato, líneas y descuentos.

- **Mover entre Etapas**
  Desde la vista de embudo, arrastrar y soltar la oportunidad entre etapas para actualizar su fase y la probabilidad asociada.

- **Registrar Actividad**
  Agrega una nueva actividad de seguimiento (llamada, correo o tarea) asociada a la oportunidad.

## Flujo del proceso

### 1. Crear la oportunidad

Desde la ventana o desde la vista de embudo, crear una nueva oportunidad indicando socio de negocio, contacto, agente comercial y etapa inicial.

### 2. Definir probabilidad y contrato

Completar el porcentaje de probabilidad de la etapa, la fecha de cierre esperada y el contrato asociado (si existe uno completo para el socio).

### 3. Agregar recursos

En la pestaña *Recursos*, cargar los productos o servicios a cotizar con su rango de fechas y cantidad. El sistema valida disponibilidad automáticamente.

### 4. Generar la cotización

Ejecutar la acción **Generar Cotización**. El sistema crea un documento de cotización con las líneas heredadas. Ajustar cantidades y aplicar descuentos si corresponde.

### 5. Enviar la cotización al cliente

Desde la cotización, usar la opción de envío por correo electrónico con plantilla para entregarla al cliente. Opcionalmente se pueden adjuntar imágenes, documentos o referencias.

### 6. Crear el proyecto y la orden de venta

Una vez aceptada la cotización, ejecutar **Crear Proyecto** desde la oportunidad. El sistema genera un proyecto vinculado y la orden de venta con las mismas líneas, cantidades y descuentos.

### 7. Seguimiento

Registrar actividades (llamadas, correos, tareas) desde la pestaña *Actividades* para mantener la trazabilidad del proceso comercial hasta el cierre.

## Ejemplo de uso

Un agente comercial debe gestionar una nueva oportunidad para un cliente recurrente:

1. Abrir **Oportunidad de Venta** y crear un registro con el socio del negocio y el contacto correspondiente.
2. Asignarse como agente comercial y mover la oportunidad a la etapa *Calificación* con una probabilidad del 20%.
3. Seleccionar el contrato *Completo* del cliente para heredar condiciones al proyecto.
4. En la pestaña *Recursos*, agregar dos productos distintos con fechas desde/hasta y cantidades. El sistema valida disponibilidad.
5. Ejecutar **Generar Cotización** y enviarla al cliente por correo desde el propio documento.
6. Al aceptar la cotización, mover la oportunidad a la etapa *Cierre Ganado* (100%) y ejecutar **Crear Proyecto**. El sistema genera el proyecto y la orden de venta.
7. Registrar una actividad de seguimiento para confirmar la instalación con el cliente.

## Consideraciones importantes

- El **contrato** asociado a la oportunidad debe estar en estado *Completo* para que el proyecto y la orden de venta lo hereden automáticamente. Si está en borrador, el proyecto no tomará el contrato.
- Si se cambia el **socio de negocio** de la oportunidad, el sistema busca automáticamente un contrato completo de ese nuevo socio dentro de la misma organización.
- Para aplicar **descuentos diferentes** a grupos de recursos del mismo tipo, agregarlos en líneas separadas. Si se agrupan en una sola línea, no será posible asignar descuentos distintos por grupo.
- Los recursos con **instalación requerida** generan automáticamente una línea de instalación adicional al crear la cotización.
- El **importe ponderado** se recalcula automáticamente al cambiar la probabilidad o el presupuesto total; se usa en reportes de pronóstico de ingresos.
- La vista de **embudo de ventas** permite crear oportunidades y cambiar etapas por arrastre y soltar, sin necesidad de abrir cada registro.
- Las actividades registradas son visibles en el calendario del agente y facilitan el seguimiento sin salir del registro de la oportunidad.

## Ventanas relacionadas

- [Etapa de Venta](./sales-stage)
- [Lead](./lead)
- [Cliente](./customer)
- [Tablero del Representante de Ventas](./sales-rep-dashboard)
