---
title: Crear OC desde Proyectos
category: Documentation
star: 9
sticky: 9
article: false
---

# Crear OC desde Proyectos

## Descripción

Este proceso permite generar órdenes de compra a partir de proyectos. Facilita la creación automática de órdenes de compra basándose en las necesidades definidas en los proyectos del sistema, asociando los productos y proveedores correspondientes.

## Acceso

Menú: Gestión de Ventas → Órdenes de Venta → Crear OC desde Proyectos

## Parámetros

| Parámetro | Descripción | Tipo | Obligatorio | Valor por defecto |
|---|---|---|---|---|
| Fecha de la Orden | Fecha para la orden de compra a generar | Fecha | No | |
| Proyecto | Proyecto desde el cual se generará la orden de compra | Búsqueda | No | |
| Socio del Negocio | Socio del negocio asociado al proyecto | Búsqueda | No | |
| Entrega Directa | Indica si el envío será directo del proveedor al cliente | Lista | No | |
| Orden | Orden existente a la que se asociará | Búsqueda | No | |
| Proveedor | Proveedor al que se le generará la orden de compra | Tabla | No | |

## Consideraciones importantes

- Cuando la orden de venta del proyecto se completa con una regla de [Configuración de Entrega Directa](../../purchase-management/purchase-orders/drop-ship-setup) con creación automática, la orden de compra se genera en ese momento tomando la información de la línea de proyecto. Marcar **Socio de Negocio Basado en Documento** en la regla para que el proveedor se tome del proyecto.
- Este proceso es la alternativa manual para generar la orden de compra desde el proyecto cuando no se usa la creación automática.

## Ventanas relacionadas

- [Configuración de Entrega Directa](../../purchase-management/purchase-orders/drop-ship-setup)
- [Orden de Venta](sales-order)
- [Órdenes de Compra](../../purchase-management/purchase-orders/purchase-order)
