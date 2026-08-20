---
title: Operaciones de Almacen Retail
category: Documentation
star: 9
sticky: 9
article: false
---

# Operaciones de Almacén Retail

Procesos rápidos de operación diaria de almacén que permiten ejecutar movimientos, salidas y ajustes de inventario **por producto y en un solo paso**, sin necesidad de armar el cabezal y las líneas de las ventanas tradicionales (*Movimiento de Inventario*, *Inventario de Uso Interno*, *Inventario Físico*).

Cada proceso arma internamente el documento correspondiente y lo completa en la misma ejecución. Son útiles en escenarios de retail donde el operador necesita actuar sobre un ítem específico con la menor sobrecarga de carga posible, y para evitar el problema clásico del *Inventario Físico* tradicional cuando el documento se carga en un día y se completa varios días después con una *Cantidad en Libros* ya desactualizada.

## Procesos

- [Mover un Producto](move-product) — Traslada un producto entre dos almacenes (o entre ubicaciones) generando un *Movimiento de Inventario* completo en un solo paso.
- [Uso Interno del Producto](product-internal-use) — Registra la salida de un producto por consumo interno, rotura, muestra o merma, imputada a un cargo contable.
- [Ajuste de Inventario del Producto](product-inventory-adjustment) — Ajusta la existencia de un producto por conteo físico, leyendo la Cantidad en Libros al momento de ejecutar (evita ajustes desactualizados).
