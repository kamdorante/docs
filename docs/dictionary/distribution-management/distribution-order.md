---
title: Orden de Distribución
category: Documentation
star: 9
sticky: 9
article: false
---

# Orden de Distribución

## Descripción

La Orden de Distribución permite crear órdenes entre almacenes para suplir la demanda. Es el documento principal del módulo DRP (Planificación de Recursos de Distribución) que gestiona los movimientos de inventario de un almacén a otro dentro de la cadena de suministro.

## Acceso

Menú: Gestión de Distribución → Orden de Distribución

## Pestañas

### Orden

La pestaña Orden define los parámetros del encabezado de la orden de distribución. Los valores definidos determinan cómo se procesarán las líneas de la orden.

#### Campos

| Campo | Descripción | Tipo | Obligatorio |
|-------|-------------|------|-------------|
| No. Documento | Número de secuencia del documento generado por el sistema | Texto | No |
| Tipo de Documento | Tipo de documento o reglas que determinan la secuencia y procesamiento | Tabla Directa | No |
| Tipo Doc. Destino | Tipo de documento destino para conversión de documentos | Tabla | No |
| Fecha Ordenada | Fecha en que se realizó la orden | Fecha | No |
| Fecha Prometida | Fecha en que la orden fue prometida para entrega | Fecha | No |
| Socio del Negocio | Identifica el socio del negocio relacionado con la orden | Búsqueda | No |
| Dirección del Socio | Identifica la dirección de envío del socio del negocio | Tabla | No |
| Almacén | Almacén de origen donde se almacenan o proveen los productos | Tabla Directa | No |
| Almacén Destino | Almacén destino al que se enviarán los productos | Tabla Directa | No |
| Estado del Documento | Estado actual del documento | Lista | No |
| Acción del Documento | Estado objetivo del documento al procesar | Lista | No |
| Descripción | Descripción corta opcional del registro | Texto | No |
| Prioridad | Prioridad relativa de la orden de distribución | Lista | No |
| Regla de Entrega | Define cómo se despacha la orden | Lista | No |
| Regla de Costo de Flete | Método de cálculo del costo de flete | Lista | No |
| Transportista | Método o manera de entrega del producto | Tabla Directa | No |
| Agente de Ventas | Representante de ventas o agente de la compañía | Tabla | No |

### Línea Orden

La pestaña Línea Orden define los productos individuales incluidos en la orden de distribución.

#### Campos

| Campo | Descripción | Tipo | Obligatorio |
|-------|-------------|------|-------------|
| No. Línea | Número de línea único para este documento | Entero | No |
| Producto | Producto, servicio o artículo de la línea | Búsqueda | No |
| Descripción | Descripción corta opcional del registro | Texto | No |
| Fecha Prometida | Fecha en que la entrega fue prometida | Fecha | No |
| Cantidad Ordenada | Cantidad que fue ordenada | Número | No |
| Unidad de Medida | Unidad de medida del producto | Tabla Directa | No |
| Localizador | Localizador del almacén de origen | Tabla Directa | No |
| Localizador Destino | Localizador destino en el almacén receptor | Tabla | No |
| Cantidad Entregada | Cantidad que ha sido entregada | Número | No |
| Cantidad en Tránsito | Cantidad actualmente en tránsito | Número | No |
| Confirmada | Indica si la cantidad entregada fue confirmada | Sí/No | No |
