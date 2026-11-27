---
title: Productos de la Organización
category: Documentation
star: 9
sticky: 9
article: false
---

# Productos de la Organización

## Descripción

El proceso **Productos de la Organización** permite cambiar o verificar la organización propietaria de un producto y de las entidades que dependen de él: Lista de Materiales, Sustitutos, Reabastecimiento, Compras, Información de Socios de Negocio y Costeo. Se puede procesar un producto específico o todos los productos de una Categoría de Producto.

Es la forma indicada de modificar la organización con la que está registrado un producto. Por ejemplo, un producto que quedó asociado a una organización particular puede pasar a la organización **\*** (asterisco), de modo que esté disponible para todas las organizaciones de la compañía.

## ¿Cuándo se utiliza?

Se utiliza cuando se necesita:

- Cambiar la organización con la que está registrado un producto.
- Pasar un producto de una organización específica a la organización **\*** para que lo puedan utilizar todas las organizaciones.
- Corregir de una sola vez la organización de todos los productos de una categoría.
- Verificar que un producto y sus entidades dependientes pertenezcan a la misma organización.

## Acceso

Menú: Gestión de Materiales → Reglas de Material → Productos de la Organización

El proceso está disponible para el rol **Administrador**.

## Parámetros

| Parámetro | Descripción | Obligatorio |
|---|---|---|
| Organización | Organización que se asignará como propietaria de los productos. Para que el producto quede disponible para todas, seleccionar **\*** | No |
| Categoría de Producto | Categoría cuyos productos se procesan. Permite cambiar varios productos a la vez | No |
| Producto | Producto específico que se desea procesar | No |

## Flujo del proceso

### 1. Ubicar el producto a modificar

Abrir la ventana [Producto](./product), buscar el producto y revisar el campo **Organización** para confirmar con qué organización está registrado actualmente.

### 2. Abrir el proceso

Ingresar con el rol **Administrador** y buscar en el menú **Productos de la Organización**.

### 3. Completar los parámetros

Seleccionar la **Organización** que se desea asignar y el **Producto** a modificar. Si se necesita aplicar el cambio a varios productos, seleccionar en su lugar la **Categoría de Producto**.

### 4. Ejecutar el proceso

Pulsar **Aceptar** para ejecutar. El sistema informa que el proceso finalizó correctamente.

### 5. Verificar el resultado

Volver a la ventana [Producto](./product), buscar nuevamente el producto y revisar el campo **Organización**: debe mostrar la organización asignada en el proceso.

## Ejemplo de uso

Un producto de climatización figura registrado con la organización de una de las sucursales, pero debe poder utilizarse en toda la compañía.

1. Ingresar con el rol **Administrador** y abrir **Gestión de Materiales → Reglas de Material → Productos de la Organización**.
2. En **Organización** seleccionar **\*** y en **Producto** elegir el artículo a modificar.
3. Ejecutar el proceso. El sistema confirma que finalizó correctamente.
4. Abrir la ventana **Producto**, buscar el mismo artículo y comprobar que ahora figura con la organización **\***.

## Consideraciones importantes

- El proceso está disponible solo para el rol **Administrador**.
- El cambio alcanza también a las entidades dependientes del producto (Lista de Materiales, Sustitutos, Reabastecimiento, Compras, Información de Socios de Negocio y Costeo), por lo que no es necesario modificarlas una por una.
- Al elegir una **Categoría de Producto**, el cambio se aplica a todos los productos de esa categoría; revisar la categoría seleccionada antes de ejecutar.
- Cambiar la organización del producto no modifica la ventana **Producto** de forma manual: se debe usar este proceso para que las entidades relacionadas queden consistentes.
- Un producto con organización **\*** es visible desde todas las organizaciones; un producto asignado a una organización específica solo es visible para esa organización.

## Preguntas frecuentes

Consultar [¿Cómo cambio la organización con la que está registrado un producto?](../../../frequently-asked-questions/materials-management#como-cambio-la-organizacion-con-la-que-esta-registrado-un-producto).

## Ventanas relacionadas

- [Producto](./product)
- [Categoría de Producto](./product-category)
- [Organización de Almacén](./warehouse-organization)
