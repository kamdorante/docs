---
title: Registro de Shopping
category: Documentation
star: 9
sticky: 9
article: false
---

# Registro de Shopping

## Descripción

La ventana **Registro de Shopping** consolida la bitácora de todos los envíos realizados a la administración de cada shopping conectado. Muestra, en orden cronológico descendente, cada intento de exportación de documento con su fecha, conexión, documento origen, número de referencia devuelto por el shopping y el estado del envío.

Es la herramienta principal para diagnosticar envíos faltantes, fallidos o duplicados, y para confirmar la trazabilidad de cada factura reportada al shopping.

## ¿Cuándo se utiliza?

Se utiliza cuando la organización necesita:

- Verificar que un documento por cobrar se envió correctamente al shopping.
- Diagnosticar por qué un documento no llegó al shopping (falta de rubro, organización inconsistente, problema de conexión).
- Consultar el número de referencia devuelto por el shopping para un documento específico.
- Revisar los envíos realizados a un shopping en un rango de fechas.
- Identificar envíos repetidos al mismo shopping para un documento.

## Acceso

Existen dos formas de acceder:

1. **Desde el menú:** Gestión de Compras → Gestión de Shopping → Registro de Shopping.
2. **Desde el documento por cobrar:** abrir la factura → subpestaña **Bitácora de Envío a Shopping** (muestra únicamente los envíos de ese documento).

## Pestañas

### Log

Pestaña principal con el listado completo de envíos. La información se organiza en:

- **Fecha**
  Fecha y hora del intento de envío.

- **Conexión de Shopping**
  Shopping al que se envió el documento.

- **Documento**
  Documento por cobrar origen del envío (factura, nota, etc.).

- **Organización**
  Organización del documento exportado.

- **Número de Referencia**
  Identificador devuelto por el shopping al aceptar el envío. Permite rastrear el registro en la administración del shopping.

- **Estado**
  Resultado del envío (exitoso, con error).

- **Mensaje**
  Descripción del resultado. En caso de error, contiene el detalle devuelto por el shopping.

## Acciones disponibles

- **Filtrar por Shopping**
  Buscar todos los envíos a una conexión específica.

- **Filtrar por Documento**
  Buscar los envíos de un documento por cobrar concreto.

- **Filtrar por Rango de Fechas**
  Acotar la consulta a un período (por ejemplo, para confirmar que no hay envíos después de una fecha dada).

## Flujo del proceso

### 1. Localizar el envío a verificar

Aplicar filtros por conexión, documento o rango de fechas según el caso. Por ejemplo, para verificar que un shopping dejó de recibir envíos después de una fecha, filtrar por la conexión y ordenar por fecha descendente.

### 2. Revisar el registro

Abrir el registro correspondiente para ver todos los detalles: documento origen, organización, conexión, número de referencia y mensaje.

### 3. Diagnosticar según el estado

Si el estado es **exitoso**, el envío se realizó y el número de referencia confirma la recepción por parte del shopping. Si el estado es **con error**, revisar el mensaje para identificar la causa.

### 4. Corregir la causa del error

Los errores frecuentes son: *rubro no asignado al grupo de materiales*, *organización sin datos de contrato*, *route no encontrado*, o *problema de conexión*. Cada uno se resuelve en su ventana de origen (Rubro de Shopping, Organización, Conexión de Shopping).

### 5. Reenviar el documento

Una vez corregida la causa, volver al documento por cobrar y ejecutar **Exportar Documento a Shopping**. El nuevo intento quedará registrado en la bitácora.

## Ejemplo de uso

Un responsable administrativo debe confirmar por qué un documento de la organización *Local A* no se envió a la administración del shopping:

1. Abrir **Registro de Shopping** y filtrar por la conexión del shopping en cuestión.
2. Verificar el último envío: si la última fecha es anterior a la fecha del documento, los envíos recientes no se están realizando.
3. Abrir el documento por cobrar y revisar su **Bitácora de Envío a Shopping**; si está vacía, el envío automático no se ejecutó.
4. Consultar el mensaje de error del último intento. En este caso, el mensaje indica que el producto solo tiene mapeado su grupo de materiales a rubros de otros shoppings.
5. Abrir el **Grupo de Materiales** del producto y, en *Asignación de Rubro de Shopping*, agregar el rubro del shopping faltante.
6. Reenviar el documento con **Exportar Documento a Shopping**; confirmar en el registro que el nuevo envío quedó registrado como exitoso.

## Consideraciones importantes

- La bitácora registra **todos los intentos**, exitosos o fallidos. Un mismo documento puede tener varias entradas si se reintentó el envío.
- Un documento puede aparecer enviado a **dos conexiones distintas** si ambas tienen la misma organización asociada; es un comportamiento normal.
- Si el **Registro de Shopping** tiene entradas recientes pero la cola automática no procesa los nuevos documentos, revisar el procesador de cola de notificaciones del sistema.
- El **número de referencia** es el dato que permite reconciliar con la administración del shopping. Conservarlo al reportar incidencias.
- La bitácora del documento (subpestaña en la factura) muestra solo los envíos de ese documento; la ventana **Registro de Shopping** muestra el total consolidado y permite comparar envíos entre shoppings.

## Ventanas relacionadas

- [Rubro de Shopping](shopping-category)
- [Exportar Ventas a Shoppings](export-sales-to-shoppings)
- [Obtener Información de Organización](get-organization-info)
