---
title: Importación de CFE Recibidos
category: Documentation
star: 9
sticky: 9
article: false
---

# Importación de CFE Recibidos

## Descripción

La **Importación de CFE Recibidos** abarca el proceso completo para incorporar al sistema los Comprobantes Fiscales Electrónicos (CFE) emitidos por proveedores. Se ejecuta en tres etapas secuenciales:

1. **Obtener Facturas Electrónicas**: consulta al proveedor de facturación electrónica y descarga los CFE emitidos contra la organización.
2. **Completar Datos de Factura**: completa la información faltante (término de pago, producto, cargo) sobre los CFE descargados antes de convertirlos.
3. **Importar Facturas**: convierte los CFE completados en documentos por pagar (Factura de Proveedor, Nota de Crédito, etc.).

El flujo permite además enlazar automáticamente la factura generada con una **Orden de Compra** existente mediante el proceso **Importar Facturas con Enlace a Orden de Compra**, heredando cantidades, precios, dimensiones (proyecto, sellos) y generando el match purchase-order automáticamente.

## ¿Cuándo se utiliza?

Se utiliza cuando la organización necesita:

- Incorporar como documentos por pagar las facturas electrónicas recibidas de proveedores.
- Evitar el ingreso manual de facturas de proveedor, aprovechando la información del CFE.
- Crear socios de negocio automáticamente a partir de los CFE recibidos.
- Enlazar facturas de proveedor con órdenes de compra existentes y generar el match de manera automática.
- Validar masivamente los CFE descargados y corregir configuraciones faltantes antes de convertirlos en facturas.

## Acceso

Existen varios puntos de acceso según la etapa:

1. **Descarga desde el proveedor fiscal:** Facturación Electrónica → Obtener Facturas Electrónicas.
2. **Bandeja de CFE descargados:** Gestión de Ventas → Facturas de Venta → Bandeja CFE.
3. **Completar datos:** Facturación Electrónica → Completar Datos de Factura.
4. **Importar facturas:** Facturación Electrónica → Importar Facturas.
5. **Importar facturas con enlace a OC:** Facturación Electrónica → Importar Facturas con Enlace a Orden de Compra.

## Configuración previa

### Tipo de Documento

Para que un tipo de documento por pagar sea elegible como destino de CFE recibidos, debe tener:

- **Documento de Compra Electrónico**
  Habilita los campos fiscales y permite relacionar el CFE recibido con este tipo de documento del sistema.

- **Tipo de Documento Fiscal**
  Clasificación fiscal del comprobante (Factura, Nota de Crédito, Nota de Débito, Remito, etc.).

- **Tipo de Transacción Fiscal**
  Tipo de transacción fiscal que identifica la categoría del CFE (por ejemplo, Factura, Nota de Entrega y Remito).

Cada tipo de CFE que se espera recibir debe estar configurado; de lo contrario, los documentos de ese tipo quedarán con error *"tipo de documento no encontrado"* al importarse.

### Información de la Compañía y de la Organización

- **Crear Socios al Importar Documentos**
  Indicador que crea automáticamente el socio de negocio a partir de los datos del CFE cuando no existe. Puede configurarse a nivel compañía (aplica a todas las organizaciones) o a nivel organización (solo a esa organización).

### Socio de Negocio

- **Cargo por Defecto**
  Cargo contable que se asigna por defecto a las líneas de factura generadas desde un CFE de ese socio. Útil cuando el CFE no viene con productos mapeables.

### Lista de Precios

La organización debe tener al menos una lista de precios que coincida con: la **moneda** del CFE y el indicador **Impuesto Incluido en el Precio = Sí**. Si no existe una lista compatible, el CFE falla con el mensaje *"lista de precio no encontrada con moneda X e impuesto incluido = Sí"*.

### Configuración de Referencias (Match con Orden de Compra)

Algunos proveedores envían en el CFE un número de referencia (por ejemplo, *CC ID Compra*) que permite enlazar la factura a una orden de compra. La ventana de configuración de referencias define qué clase se usa para resolver cada tipo de referencia y contra qué tabla del sistema se hace el match.

## Pestañas (Bandeja CFE)

### Línea CFE

Líneas del CFE tal como se descargaron del proveedor de facturación electrónica. Estas son las líneas originales antes de generar las líneas definitivas del documento por pagar.

### Factura Generada

Factura de proveedor creada a partir del CFE una vez importado.

### Socio a Crear

CFEs cuyo socio de negocio no existe en el sistema. Si la compañía o la organización tiene activado *Crear Socios al Importar Documentos*, al importar se crea el socio con los datos del CFE (incluido el código de país).

## Acciones disponibles

- **Obtener Facturas Electrónicas**
  Consulta al proveedor de facturación electrónica y descarga los CFE emitidos contra la organización, dentro del rango de fechas o período indicado.

- **Completar Datos de Factura**
  Recorre los CFE descargados pendientes y completa la información derivada (término de pago desde el socio, cargo por defecto, producto si el código coincide).

- **Importar Facturas**
  Convierte los CFE completados en documentos por pagar con la acción de documento indicada (por ejemplo, *Preparar* o *Completar*).

- **Importar Facturas con Enlace a Orden de Compra**
  Variante que, además de crear la factura, busca la orden de compra referenciada por el CFE y enlaza la factura heredando cantidades, precios y dimensiones.

- **Ver Histórico del Proceso**
  Muestra los resultados de la última ejecución: total de CFE procesados, líneas generadas, errores con número de documento y descripción del error.

## Parámetros

### Obtener Facturas Electrónicas

| Parámetro | Descripción | Tipo | Obligatorio |
|-----------|-------------|------|-------------|
| Compañía | Compañía de la instalación para la cual se obtendrán las facturas | Tabla Directa | No |
| Organización | Organización dentro de la compañía | Tabla Directa | No |
| Fecha de Transacción | Fecha de las transacciones a consultar | Fecha | No |
| Período | Período del calendario para filtrar los CFE a obtener | Tabla Directa | No |

### Completar Datos de Factura

| Parámetro | Descripción | Tipo | Obligatorio |
|-----------|-------------|------|-------------|
| Organización | Organización para la que se completan los datos pendientes | Tabla Directa | No |

### Importar Facturas

| Parámetro | Descripción | Tipo | Obligatorio |
|-----------|-------------|------|-------------|
| Organización | Organización para la que se ejecuta la importación | Tabla Directa | No |
| Acción del Documento | Estado con que se crearán los documentos importados (Preparar o Completar) | Lista | No |

### Importar Facturas con Enlace a Orden de Compra

| Parámetro | Descripción | Tipo | Obligatorio |
|-----------|-------------|------|-------------|
| Organización | Organización para la que se ejecuta la importación | Tabla Directa | Sí |
| Acción del Documento | Estado con que se crearán los documentos importados | Lista | Sí |

## Flujo del proceso

### 1. Validar la configuración previa

Confirmar que los tipos de documento de compra que se recibirán por CFE tienen marcado *Documento de Compra Electrónico* y completados *Tipo de Documento Fiscal* y *Tipo de Transacción Fiscal*. Revisar que exista al menos una lista de precios con la moneda esperada e *Impuesto Incluido = Sí*.

### 2. Descargar los CFE

Ejecutar **Obtener Facturas Electrónicas** indicando la organización y el rango de fechas o período. El proceso consulta al proveedor fiscal y deja los CFE descargados en la **Bandeja CFE**.

### 3. Completar los datos faltantes

Ejecutar **Completar Datos de Factura** para que el sistema resuelva término de pago, cargo por defecto, producto y datos derivados. Revisar en la Bandeja CFE cualquier registro que quedó con error e ingresar manualmente la información faltante (por ejemplo, el término de pago si el proveedor no lo envía).

### 4. Importar los CFE como facturas

Ejecutar **Importar Facturas** (o **Importar Facturas con Enlace a Orden de Compra** si se desea el match). Seleccionar la organización y elegir si los documentos se crean en *Preparar* o *Completar*.

### 5. Revisar el histórico

Abrir el histórico del proceso y verificar cuántas facturas se generaron, cuántas líneas tienen y cuántos CFE quedaron con error. Cada error incluye el número del documento, el RUT del emisor y el detalle de la causa.

### 6. Completar o corregir manualmente

Para los CFE que quedaron con error, abrir el registro en la Bandeja CFE, corregir la causa (configurar el tipo de documento faltante, asignar cargo por defecto, crear la lista de precios compatible) y reintentar el proceso.

### 7. Validar el documento generado

Abrir la factura resultante en **Documentos por Pagar**. La subpestaña **Líneas CFE** muestra las líneas tal como vinieron del CFE; las líneas del documento son las que se usan en la contabilización y en el match con orden de compra cuando corresponde.

## Ejemplo de uso

Una organización recibe 50 CFE del proveedor fiscal y desea importarlos como facturas de proveedor:

1. Ejecutar **Obtener Facturas Electrónicas** para la organización con el período del mes. El sistema descarga los 50 CFE y los coloca en la Bandeja CFE.
2. Ejecutar **Completar Datos de Factura** para esa organización. El proceso resuelve término de pago, cargo por defecto y productos.
3. Ejecutar **Importar Facturas** con *Acción del Documento = Preparar*. El histórico muestra que se generaron 44 facturas con 59 líneas y 16 quedaron con error.
4. Revisar los errores en el histórico:
   - 5 CFE con error de *lista de precio no encontrada* porque falta una lista con moneda euro e impuesto incluido.
   - 8 CFE con error *tipo de documento 181 no encontrado* porque no se configuró el documento "Nota de Entrega y Remito".
   - 3 CFE ya existentes en el sistema (duplicados ignorados).
5. Crear la lista de precios en euros con impuesto incluido, configurar el tipo de documento 181 como *Documento de Compra Electrónico*, y volver a ejecutar **Importar Facturas**.
6. Al completar las facturas preparadas, el sistema enlaza las que tenían referencia a orden de compra, hereda cantidades y precios y genera el match automáticamente.

## Consideraciones importantes

- Cada **tipo de CFE** esperado debe estar configurado como *Documento de Compra Electrónico* con su *Tipo de Documento Fiscal* y *Tipo de Transacción Fiscal*. Sin esta configuración, los CFE de ese tipo quedan en error.
- La **lista de precios** utilizada debe tener *Impuesto Incluido en el Precio = Sí* y la moneda del CFE. Es una causa frecuente de error en la importación.
- Si el proveedor no envía el **término de pago** en el CFE, el sistema no puede resolverlo automáticamente; se asigna manualmente antes de completar la factura.
- El indicador **Crear Socios al Importar Documentos** puede activarse a nivel compañía o a nivel organización; si está activo a nivel compañía, aplica a todas las organizaciones.
- El **Cargo por Defecto** del socio de negocio se usa al importar cuando la línea del CFE no puede resolverse a un producto del sistema.
- Los **CFE duplicados** (mismo socio, mismo tipo de documento, mismo número) se ignoran automáticamente para evitar importaciones repetidas.
- La acción **Importar Facturas con Enlace a Orden de Compra** es preferible cuando el proveedor envía referencia de compra: la factura hereda cantidades, precios y dimensiones de la OC, y el match se genera al completar.
- La subpestaña **Líneas CFE** del documento por pagar conserva las líneas originales del CFE; no deben modificarse, ya que son la base para las líneas definitivas del documento.
- El proceso puede disparar la creación dinámica de socios incluyendo el **código de país** que envía el CFE; los nuevos socios quedan listos para cargos y configuraciones posteriores.

## Ventanas relacionadas

- [Bandeja CFE](../sales-management/sales-invoices/invoice-import)
- [Factura (Proveedor)](../sales-management/sales-invoices/invoice-customer)
