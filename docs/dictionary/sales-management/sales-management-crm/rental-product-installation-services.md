---
title: Configuración de Servicios de Instalación en Productos de Arrendamiento
category: Documentation
star: 9
sticky: 9
article: false
---

# Configuración de Servicios de Instalación en Productos de Arrendamiento

## Descripción

En Solop ERP, los recursos (soportes) que se comercializan mediante arrendamiento pueden requerir uno o más servicios de instalación asociados: producción, montaje, instalación física u otros. Estos servicios se configuran directamente en el **producto de arrendamiento** asignado al recurso, a través de la pestaña **Servicios de Instalación**.

Cuando el recurso se incorpora a una oportunidad de venta y se genera la cotización o la orden de venta, el sistema toma automáticamente los servicios de instalación configurados y los materializa como **instalaciones requeridas**. Cada instalación requerida puede luego convertirse en una **Orden de Compra** al proveedor responsable de ejecutar ese servicio.

## ¿Cuándo se utiliza?

Se utiliza cuando se necesita:

- Asociar uno o más servicios de producción o instalación a un recurso que se arrienda
- Controlar si el costo de instalación se incluye o no en la cotización/orden de venta que recibe el cliente
- Asegurar que al generar el proyecto desde la oportunidad, se creen automáticamente las instalaciones requeridas para cada recurso
- Generar órdenes de compra a los proveedores que ejecutan los servicios de instalación, directamente desde el flujo comercial

## Acceso

La configuración se realiza desde la ficha del **Producto** que está asignado al recurso:

**Menú:** Gestión de Materiales → Reglas de Materiales → Producto → pestaña **Servicios de Instalación**

También se puede navegar al producto directamente desde la ventana **Recurso**, a través del campo **Producto** del encabezado.

## Estructura de configuración

### Recurso → Producto de Arrendamiento

Cada recurso (soporte) tiene asignado un **producto de arrendamiento** en su definición. Este producto representa el bien o servicio que se arrienda al cliente y es el punto de partida para configurar los servicios de instalación.

Para verificar qué producto tiene asignado un recurso, abrir el registro del recurso y revisar el campo **Producto** en el encabezado.

### Pestaña Servicios de Instalación

Dentro de la ficha del producto de arrendamiento, la pestaña **Servicios de Instalación** permite registrar todos los servicios que deben ejecutarse cuando se comercializa ese recurso. Cada línea representa un servicio independiente y contiene:

- **Producto de instalación** — Producto que representa el servicio (por ejemplo: *Producción Full Bus*, *Instalación Full Bus*)
- **Costo excluido del arrendamiento** — Indica si el costo de este servicio se factura al cliente de forma separada al arrendamiento

### Campo: Costo excluido del arrendamiento

Este campo es el control central de la visibilidad económica del servicio para el cliente:

| Valor | Comportamiento |
|---|---|
| **No incluido (costo excluido = No)** | El servicio **no aparece** en la cotización ni en la orden de venta. El cliente no ve ni paga este servicio directamente. |
| **Incluido (costo excluido = Sí)** | El servicio **sí se incluye** como línea en la cotización y en la orden de venta, con su precio correspondiente. El cliente lo ve y lo paga. |

::: tip
Independientemente de si el costo está incluido o excluido para el cliente, **ambos servicios** se generan como instalaciones requeridas al crear el proyecto. La diferencia es únicamente si aparecen o no en los documentos de venta.
:::

## Flujo del proceso

### 1. Identificar el producto del recurso

Abrir el registro del recurso (soporte) que se comercializará. En el encabezado, localizar el campo **Producto** para identificar qué producto de arrendamiento tiene asignado.

### 2. Abrir la ficha del producto

Navegar al producto desde el vínculo en el recurso, o buscarlo directamente en **Producto** filtrando por nombre.

### 3. Configurar los servicios de instalación

Ir a la pestaña **Servicios de Instalación** del producto. Agregar una línea por cada servicio que deba ejecutarse cuando se arriende ese recurso:

1. Seleccionar el **Producto de instalación** correspondiente (ej.: Producción, Instalación)
2. Definir si el **costo está excluido** del arrendamiento (controla si aparece en la cotización/OV del cliente)
3. Guardar cada línea

Repetir para todos los servicios requeridos por ese producto de arrendamiento.

### 4. Verificar el proveedor en el producto de instalación

Cada producto de instalación debe tener configurado su **proveedor por defecto** en la pestaña **Compras** de su ficha. Este proveedor es el que recibirá la Orden de Compra cuando se ejecute el proceso de generación de OC para instalación.

::: warning
Si el producto de instalación no tiene proveedor configurado, la generación de la Orden de Compra no podrá completarse correctamente. Verificar la pestaña **Compras** de cada producto de instalación antes de operar en producción.
:::

### 5. Cotizar el recurso en la oportunidad

Al agregar el recurso a una **Oportunidad de Venta** con su rango de fechas y cantidad, el sistema toma automáticamente los servicios de instalación configurados en el producto de arrendamiento.

### 6. Generar cotización y verificar instalaciones

Al ejecutar **Generar Cotización**, el sistema hereda las líneas de recursos. Los servicios con **costo excluido = Sí** aparecerán como líneas adicionales en la cotización; los que tienen costo no excluido no serán visibles para el cliente.

### 7. Crear el proyecto y las instalaciones requeridas

Al ejecutar **Crear Proyecto** desde la oportunidad (una vez aceptada la cotización), el sistema genera automáticamente:

- El **proyecto** vinculado a la oportunidad
- La **orden de venta**
- Las **instalaciones requeridas** para cada recurso: una entrada por cada servicio de instalación configurado en el producto de arrendamiento

### 8. Generar la Orden de Compra al proveedor

Desde el navegador **Generar OC para Instalación de Producto**, seleccionar las instalaciones requeridas y generar las órdenes de compra a los proveedores configurados en cada producto de instalación.

## Ejemplo de uso

Se tiene un recurso **Full Bus** asignado al producto de arrendamiento *Arrendamiento Full Bus Exclusivo*. Este producto tiene configurados dos servicios de instalación:

| Servicio | Costo excluido |
|---|---|
| Producción Full Bus | No |
| Instalación Full Bus | Sí |

**Flujo completo:**

1. El equipo comercial agrega el recurso Full Bus a la oportunidad 92, con 4 semanas de duración
2. Se genera la cotización: aparece la línea de *Instalación Full Bus* como costo adicional para el cliente; la *Producción Full Bus* no aparece porque su costo está incluido en el arrendamiento
3. El cliente acepta la cotización y se ejecuta **Crear Proyecto**
4. El sistema genera el proyecto, la orden de venta y dos instalaciones requeridas: una para Producción Full Bus y otra para Instalación Full Bus
5. Desde **Generar OC para Instalación de Producto**, se seleccionan ambas instalaciones y se generan las órdenes de compra al proveedor configurado en cada producto de instalación

## Consideraciones importantes

- La configuración de servicios de instalación se realiza **a nivel de producto**, no a nivel de recurso. Si varios recursos comparten el mismo producto de arrendamiento, todos heredarán la misma configuración de servicios.
- El **proveedor por defecto** en la pestaña Compras del producto de instalación puede modificarse al momento de generar la Orden de Compra si se necesita usar un proveedor diferente.
- Un producto de arrendamiento puede tener **múltiples servicios de instalación** configurados, cada uno con su propia definición de costo incluido/excluido.
- Los servicios con **costo excluido = No** son invisibles en los documentos comerciales del cliente pero sí se generan como instalaciones requeridas para gestión interna y de compras.
- Si se realizan cambios en la configuración de servicios de instalación de un producto, los cambios aplican únicamente a las **nuevas oportunidades** que se creen desde ese momento.

## Ventanas relacionadas

- [Oportunidad de Venta](./sales-opportunity)
- [Generar OC para Instalación de Producto](./generate-po-for-product-installation)
