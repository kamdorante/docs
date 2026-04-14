---
title: Rubro de Shopping
category: Documentation
star: 9
sticky: 9
article: false
---

# Rubro de Shopping

## Descripción

La ventana **Rubro de Shopping** mantiene el catálogo de rubros (categorías) definido por cada shopping con el que la organización opera. Cada rubro representa una clasificación reconocida por la administración del shopping y es utilizada para declarar correctamente las ventas al enviar los documentos al canal.

Los rubros se obtienen automáticamente desde cada shopping ejecutando el proceso **Obtener Información de Organización**. Una vez disponibles en el sistema, se asocian al **Grupo de Materiales** del producto, de manera que al facturar un producto el sistema sepa bajo qué rubro reportarlo a cada shopping.

## ¿Cuándo se utiliza?

Se utiliza cuando la organización necesita:

- Sincronizar el catálogo de rubros vigente en cada shopping.
- Asignar al grupo de materiales del producto el rubro correspondiente en cada shopping donde se vende.
- Corregir errores de envío cuando un documento no se exporta por falta de mapeo de rubro.
- Mantener un mismo grupo de materiales con rubros distintos en varios shoppings (por ejemplo, el mismo grupo puede tener un código en un shopping y otro en otro).

## Acceso

Existen dos formas de acceder:

1. **Desde el menú:** Gestión de Compras → Gestión de Shopping → Rubro de Shopping.
2. **Desde el Grupo de Materiales:** abrir el grupo de materiales del producto → pestaña **Asignación de Rubro de Shopping**.

## Pestañas

### Rubro de Shopping

Pestaña principal con el listado de rubros sincronizados desde cada shopping. La información se organiza en:

- **Conexión de Shopping**
  Shopping al que pertenece el rubro (por ejemplo, Shopping A, Shopping B, Shopping C).

- **Código**
  Código del rubro tal como lo define el shopping. Cada shopping puede usar su propia convención de numeración o prefijo.

- **Nombre**
  Descripción del rubro en el catálogo del shopping.

- **Organización**
  Organización del sistema asociada a la conexión del shopping. El rubro solo se usa para documentos de esta organización.

### Asignación de Rubro de Shopping (desde Grupo de Materiales)

Dentro de la ventana **Grupo de Materiales**, esta pestaña permite enlazar el grupo con uno o varios rubros de shopping. La información incluye:

- **Grupo de Materiales**
  Grupo al que pertenece el producto.

- **Rubro de Shopping**
  Rubro del shopping al que se debe asociar. Un mismo grupo puede asociarse a rubros de diferentes shoppings para permitir envíos simultáneos a varios canales.

## Acciones disponibles

- **Obtener Información de Organización**
  Proceso que consulta al shopping y sincroniza el catálogo de rubros y los datos de la organización. Debe ejecutarse al iniciar la integración y cada vez que el shopping actualice su catálogo.

- **Asignar Rubro a Grupo de Materiales**
  Desde la ventana **Grupo de Materiales**, agregar en la pestaña *Asignación de Rubro de Shopping* el rubro correspondiente por cada shopping donde se venderá el producto.

## Flujo del proceso

### 1. Sincronizar los rubros

Desde **Obtener Información de Organización**, seleccionar la conexión de shopping y ejecutar el proceso. El sistema trae el catálogo de rubros del shopping y los datos actualizados de la organización.

### 2. Verificar el listado

Abrir **Rubro de Shopping** y confirmar que aparecen los rubros del shopping sincronizado, cada uno con su código y nombre.

### 3. Asociar el rubro al grupo de materiales

Desde la ventana **Grupo de Materiales**, abrir el grupo asociado a los productos que se venderán en el shopping. En la pestaña *Asignación de Rubro de Shopping*, agregar el rubro correspondiente al shopping.

### 4. Repetir para cada shopping

Si el mismo grupo de materiales se vende en más de un shopping, repetir el paso 3 agregando el rubro correspondiente a cada conexión. Un grupo puede tener varios rubros asignados, uno por cada shopping.

### 5. Validar en el producto

Al abrir el producto en la ventana **Producto**, verificar que tiene asignado el **Grupo de Materiales** correspondiente. Esta es la cadena que usa el sistema al exportar el documento: producto → grupo de materiales → rubro del shopping.

## Ejemplo de uso

Una organización vende un producto (por ejemplo, un artículo de la categoría *Restos locales*) en tres shoppings distintos:

1. Ejecutar **Obtener Información de Organización** para cada una de las tres conexiones de shopping. El sistema trae los rubros de cada shopping.
2. Abrir **Rubro de Shopping** y verificar que aparecen los rubros de los tres shoppings, cada uno con su código (por ejemplo, un shopping usa un número plano, otro usa un prefijo de letras y otro usa un código distinto).
3. Abrir el **Grupo de Materiales** *Restos locales*, ir a *Asignación de Rubro de Shopping* y agregar tres líneas: una por cada rubro del shopping correspondiente.
4. Asegurarse de que el producto tiene el grupo de materiales *Restos locales* asignado.
5. Al facturar el producto y exportar el documento al shopping, el sistema resuelve automáticamente el rubro correcto según el shopping destino.

## Consideraciones importantes

- Los rubros **no se crean manualmente**: vienen desde el shopping mediante el proceso *Obtener Información de Organización*. Crearlos a mano puede producir códigos inconsistentes y errores de envío.
- Un mismo **Grupo de Materiales** puede asociarse a **varios rubros** si se vende en más de un shopping. Cada shopping mantendrá su mapeo independiente.
- Si un producto no se envía a un shopping, revisar: (1) que el producto tenga asignado un grupo de materiales, (2) que ese grupo de materiales tenga asignado un rubro para el shopping destino, (3) que la organización del documento coincida con la organización configurada en la conexión del shopping.
- Si el shopping actualiza su catálogo de rubros, volver a ejecutar *Obtener Información de Organización* para que los nuevos rubros queden disponibles en el sistema.

## Ventanas relacionadas

- [Exportar Ventas a Shoppings](export-sales-to-shoppings)
- [Obtener Información de Organización](get-organization-info)
- [Registro de Shopping](shopping-record-log)
