---
title: Red de Distribución
category: Documentation
star: 9
sticky: 9
article: false
---

# Red de Distribución

## Descripción

La Red de Distribución define las relaciones de suministro entre almacenes. Cada relación en la red contiene un almacén receptor, un almacén fuente y un porcentaje de suministro. Una relación es en una sola vía, de almacén a almacén. El módulo DRP (Planificación de Recursos de Distribución) utiliza las redes de distribución para generar el plan de distribución.

## Acceso

Menú: Gestión de Distribución → Red de Distribución

## Pestañas

### Red de Distribución

Define los parámetros generales de la red de distribución. Cada red establece la ruta de suministro mediante relaciones entre almacenes fuente y destino.

#### Campos

| Campo | Descripción | Tipo | Obligatorio |
|-------|-------------|------|-------------|
| Clave de Búsqueda | Clave de búsqueda para el registro en el formato requerido; debe ser única | Texto | No |
| Nombre | Identificador alfanumérico de la entidad | Texto | No |
| Descripción | Descripción corta opcional del registro | Texto | No |
| Ayuda/Comentario | Ayuda, comentario o pista sobre el uso de este elemento | Texto | No |
| No. Documento | Número de secuencia del documento | Texto | No |
| Aviso de Cambio | Aviso de cambio de ingeniería (Versión) de la lista de materiales | Búsqueda | No |
| Revisión | Revisión de la red de distribución | Texto | No |
| Válido Desde | Válido desde esta fecha (primer día del rango de fechas) | Fecha | No |
| Válido Hasta | Válido hasta esta fecha (último día del rango de fechas) | Fecha | No |
| Red Distribución | Identifica una red de distribución; las redes de distribución se usan para establecer el origen y destino de los materiales en la cadena de suministro | Búsqueda | No |

### Línea Red

Define las líneas individuales de la red de distribución, estableciendo las relaciones de suministro entre almacenes específicos.

#### Campos

| Campo | Descripción | Tipo | Obligatorio |
|-------|-------------|------|-------------|
| Almacén Fuente | Almacén opcional para reabastecer | Tabla Directa | No |
| Almacén Destino | Almacén destino y punto de servicio | Tabla Directa | No |
| Válido Desde | Válido desde esta fecha (primer día del rango de fechas) | Fecha | No |
| Válido Hasta | Válido hasta esta fecha (último día del rango de fechas) | Fecha | No |
| Transportista | Método o manera de entrega del producto | Tabla Directa | No |
| Tiempo de Traslado | Indica el número de días que el producto necesita para ser movido de un almacén a otro | Entero | No |
| Porcentaje | Porcentaje de suministro asignado a esta relación | Número | No |
| Prioridad Relativa | Indica la ubicación desde la cual se debe tomar el inventario primero (100 = máxima prioridad, 0 = mínima) | Entero | No |
