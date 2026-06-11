---
title: Generar Cargo desde Cuenta Contable
category: Documentation
star: 9
sticky: 9
article: false
---

# Generar Cargo desde Cuenta Contable

## Descripción

El proceso **Generar Cargo desde Cuenta Contable** permite crear registros de cargo directamente a partir de cuentas del plan de cuentas, seleccionando una o varias cuentas contables desde la pestaña **Valor de Elemento** de la ventana **Elemento Contable** y ejecutando el proceso desde las acciones disponibles.

El proceso genera un cargo independiente por cada cuenta contable seleccionada, asociándole el tipo de cargo y la categoría de impuesto indicados. Los cargos generados quedan disponibles de inmediato en la ventana **Cargo** para su uso en documentos transaccionales.

Esta funcionalidad reemplaza el formulario anterior de generación de cargos desde cuentas contables, que solo estaba disponible en la interfaz ZK. El nuevo proceso opera nativamente en la interfaz Vue y soporta la selección simultánea de múltiples cuentas.

## ¿Cuándo se utiliza?

Se utiliza cuando se necesita:

- Crear cargos vinculados a cuentas contables específicas del plan de cuentas, sin tener que configurarlos manualmente uno por uno en la ventana Cargo
- Generar múltiples cargos en una sola operación, seleccionando varias cuentas contables a la vez
- Estandarizar la creación de cargos asegurando que cada uno quede correctamente ligado a su cuenta contable de origen

## Acceso

La ejecución se realiza desde la propia ventana de plan de cuentas:

**Menú:** Gestión Contable → Reglas Contables → Elemento Contable → pestaña **Valor de Elemento** → Acciones → **Generar Cargo desde Elemento**

## Parámetros

| Parámetro | Descripción | Obligatorio |
|---|---|---|
| **Tipo de cargo** | Clasificación del cargo que se va a generar (por ejemplo: redondeo, comisión, interés, etc.) | Sí |
| **Categoría de impuesto** | Categoría fiscal asociada al cargo generado (por ejemplo: IVA Básico, Exento, etc.) | Sí |

## Flujo del proceso

### 1. Abrir la ventana Elemento Contable

Navegar por el menú a **Gestión Contable → Reglas Contables → Elemento Contable**. La ventana muestra los elementos del plan de cuentas de la organización.

### 2. Ir a la pestaña Valor de Elemento

Seleccionar la pestaña **Valor de Elemento** en la parte inferior de la ventana. Esta pestaña contiene el listado de cuentas contables asociadas al elemento seleccionado.

### 3. Seleccionar las cuentas contables

Marcar una o varias cuentas contables sobre las que se desea generar cargos. El proceso permite multiselección, por lo que es posible seleccionar tantas cuentas como sean necesarias en una sola operación.

### 4. Ejecutar el proceso

Desde el menú de **Acciones**, seleccionar **Generar Cargo desde Elemento**. El sistema muestra el formulario con los parámetros del proceso.

### 5. Configurar los parámetros

Ingresar el **Tipo de cargo** y la **Categoría de impuesto** que se asignarán a todos los cargos que se van a generar.

### 6. Confirmar y procesar

Hacer clic en **Generar**. El sistema crea un cargo por cada cuenta contable seleccionada y muestra un mensaje de confirmación indicando la cantidad de cargos generados.

### 7. Verificar los cargos generados

Navegar a la ventana **Cargo** y refrescar la lista para visualizar los nuevos registros. Cada cargo aparece con su nombre, el tipo de cargo asignado y la categoría de impuesto configurada.

## Consideraciones importantes

- Se genera **un cargo por cada cuenta contable seleccionada**. Si se seleccionan dos cuentas, se generan dos cargos independientes.
- El proceso puede ejecutarse también con **una sola cuenta** seleccionada, si solo se requiere crear un cargo puntual.
- Los cargos generados quedan vinculados a la cuenta contable de origen, lo que garantiza que al usarlos en documentos transaccionales (facturas, pagos, etc.) el sistema contabilice correctamente en esa cuenta.
- Es recomendable verificar en la ventana **Cargo** que los registros generados tienen el tipo de cargo y la categoría de impuesto correctos antes de utilizarlos en documentos.
- Este proceso reemplaza el formulario anterior disponible únicamente en la interfaz ZK. En entornos que operan exclusivamente con la interfaz Vue, este es el método vigente para crear cargos desde el plan de cuentas.

## Ejemplo de uso

Se requiere crear cargos para dos cuentas contables que representan comisiones bancarias:

1. Abrir **Elemento Contable** y navegar a la pestaña **Valor de Elemento**
2. Buscar y seleccionar las dos cuentas correspondientes en el listado
3. Ir a **Acciones → Generar Cargo desde Elemento**
4. Seleccionar **Tipo de cargo**: Redondeo
5. Seleccionar **Categoría de impuesto**: IVA Básico
6. Hacer clic en **Generar**
7. El sistema confirma que se han creado 2 cargos
8. Navegar a la ventana **Cargo** y refrescar: los dos nuevos registros aparecen en el listado con la información configurada

## Ventanas relacionadas

- [Recontabilizar Documentos](repost-documents)
