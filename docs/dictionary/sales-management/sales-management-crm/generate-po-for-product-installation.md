---
title: Generar OC para Instalación de Producto
category: Documentation
star: 9
sticky: 9
article: false
---

# Generar OC para Instalación de Producto

## Descripción

El navegador **Generar OC para Instalación de Producto** permite seleccionar las instalaciones requeridas generadas desde proyectos de venta y crear automáticamente las **Órdenes de Compra** a los proveedores responsables de ejecutar cada servicio de instalación.

Es la herramienta operativa que cierra el circuito entre la cotización comercial y la gestión de compras: una vez que la oportunidad avanza a proyecto y se generan las instalaciones requeridas, este navegador permite procesar la compra de los servicios de instalación (producción, montaje, instalación física, etc.) que deben contratarse con proveedores externos.

## ¿Cuándo se utiliza?

Se utiliza cuando se necesita:

- Generar órdenes de compra para servicios de instalación que corresponden a recursos arrendados en proyectos activos
- Controlar las cantidades pendientes de instalación versus las ya enviadas o facturadas
- Seleccionar múltiples instalaciones y procesarlas en una sola operación

## Acceso

Menú: Gestión de Ventas → Gestión de Ventas CRM → Generar OC para Instalación de Producto

## Criterios de búsqueda

| Campo | Descripción | Obligatorio |
|---|---|---|
| **Socio del Negocio** | Filtra por el cliente de la orden de venta de origen | No |
| **Orden** | Filtra por una orden de venta específica | No |
| **Producto** | Filtra por el producto de instalación a comprar | No |

## Columnas de resultado

| Columna | Descripción |
|---|---|
| **Socio del Negocio** | Cliente de la orden de venta asociada a la instalación |
| **Orden** | Número de la orden de venta de referencia |
| **Producto** | Producto de instalación que debe comprarse al proveedor |
| **Cantidad Consignada** | Cantidad enviada en consignación hasta el momento |
| **Cantidad Pendiente** | Cantidad que aún no tiene orden de compra generada |
| **Cantidad Vendida** | Cantidad total vendida para ese servicio de instalación |
| **Cantidad a Facturar** | Cantidad que se incluirá en la orden de compra a generar |

## Acciones disponibles

- **Generar Orden de Compra**
  Crea la orden de compra para las líneas seleccionadas, dirigida al proveedor configurado por defecto en la ficha del producto de instalación. Si se desea, el proveedor puede modificarse al momento de la generación.

## Flujo del proceso

### 1. Ejecutar la búsqueda

Abrir el navegador y aplicar los filtros necesarios (socio de negocio, orden o producto) para localizar las instalaciones requeridas pendientes de orden de compra.

### 2. Revisar los resultados

Verificar las columnas de cantidad (vendida, consignada, pendiente) para confirmar qué instalaciones requieren OC y en qué cantidad.

### 3. Seleccionar las instalaciones a procesar

Marcar una o varias filas del resultado. Se pueden seleccionar instalaciones de diferentes órdenes en una misma operación.

### 4. Generar la Orden de Compra

Hacer clic en **Generar Orden de Compra**. El sistema crea las OC correspondientes a los proveedores configurados en cada producto de instalación. Si el proveedor por defecto debe cambiarse, hacerlo antes de confirmar.

### 5. Verificar las órdenes generadas

Navegar a la ventana **Órdenes de Compra** para verificar que los documentos se generaron correctamente con el proveedor, los productos y las cantidades indicadas.

## Consideraciones importantes

- El **proveedor por defecto** que recibirá la OC es el configurado en la pestaña **Compras** del producto de instalación. Puede modificarse al momento de generar la orden si se requiere un proveedor diferente.
- Las instalaciones requeridas se generan automáticamente cuando se ejecuta la acción **Crear Proyecto** desde la oportunidad de venta.
- La **Cantidad Pendiente** refleja lo que falta ordenar; si ya existe una OC parcial para esa instalación, la cantidad pendiente se reduce automáticamente.
- Este navegador forma parte del flujo de vía pública/medios: la configuración previa de los servicios de instalación en el producto de arrendamiento es un paso necesario para que las instalaciones requeridas se generen correctamente.

## Ventanas relacionadas

- [Configuración de Servicios de Instalación en Productos de Arrendamiento](rental-product-installation-services)
- [Oportunidad de Venta](sales-opportunity)

