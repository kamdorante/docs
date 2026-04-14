---
title: Reporte de Detalle de Hechos Contables
category: Documentation
star: 9
sticky: 9
article: false
---

# Reporte de Detalle de Hechos Contables

## Descripción

Reporte que muestra el detalle completo de las transacciones del libro mayor. Lista cada línea de asiento generada por los documentos del sistema con importes fuente y contabilizados, moneda, tasa de cambio, socio de negocio y descripción. Permite filtrar por múltiples criterios contables y exportar a Excel.

## Acceso

Menú: Gestión Contable → Hechos Contables → Reporte de Detalle de Hechos Contables

## Parámetros

| Parámetro | Descripción | Tipo | Obligatorio |
|-----------|-------------|------|-------------|
| Esquema Contable | Reglas para la contabilización | Tabla Directa | No |
| Organización | Entidad organizacional dentro del cliente | Tabla | No |
| Fecha Contable | Fecha a usar en las entradas del libro mayor (rango) | Fecha | No |
| Fecha de Transacción | Fecha de la transacción (rango) | Fecha | No |
| Período | Período del calendario contable | Tabla Directa | No |
| Clave de Cuenta | Clave del elemento de cuenta | Texto | No |
| Cuenta | Cuenta natural utilizada | Tabla | No |
| Tipo de Cuenta | Tipo de cuenta (Activo, Pasivo, Gasto, etc.) | Lista | No |
| Tipo de Contabilización | Tipo de monto contabilizado (Real, Presupuesto, etc.) | Lista | No |
| Categoría GL | Categoría del libro mayor general | Tabla Directa | No |
| Presupuesto | Presupuesto del libro mayor general | Tabla Directa | No |
| Descripción | Descripción de la transacción | Texto | No |
| Moneda | Moneda para el reporte | Tabla Directa | No |
| Tasa | Tasa de conversión de moneda | Número | No |
| Grupo de Socio de Negocio | Grupo del socio de negocio | Tabla Directa | No |
| Socio de Negocio | Socio de negocio de la transacción | Búsqueda | No |
| Categoría de Producto | Categoría a la que pertenece el producto | Tabla Directa | No |
| Producto | Producto, servicio o artículo | Búsqueda | No |
| Activo Fijo | Activo fijo utilizado internamente o por clientes | Búsqueda | No |
| UPC/EAN | Código de barras del producto | Texto | No |
| Unidad de Medida | Unidad de medida | Tabla Directa | No |
| Cantidad | Cantidad de la transacción | Número | No |
| Almacén | Ubicación del almacén | Búsqueda | No |
| Impuesto | Tipo de impuesto | Tabla Directa | No |
| Proyecto | Proyecto financiero | Búsqueda | No |
| Actividad | Actividad de negocio | Tabla Directa | No |
| Campaña | Campaña de marketing | Tabla Directa | No |
| Organización de la Transacción | Organización que realiza la transacción | Tabla | No |
| Región de Ventas | Región de cobertura de ventas | Tabla Directa | No |
| Lista de Usuario 1 | Elemento de lista definido por usuario #1 | Tabla | No |
| Lista de Usuario 2 | Elemento de lista definido por usuario #2 | Tabla | No |
| Lista de Usuario 3 | Elemento de lista definido por usuario #3 | Tabla | No |
| Lista de Usuario 4 | Elemento de lista definido por usuario #4 | Tabla | No |

## Consideraciones importantes

- El reporte agrupa las líneas por asiento; un mismo documento puede generar múltiples asientos si tiene líneas con distintas cuentas.
- Los campos **Importe Fuente** reflejan el monto en moneda original del documento; los campos contabilizados reflejan el monto convertido a moneda funcional.
- Para ver el mayor de una cuenta con saldos acumulados, usar el reporte **Balance de Prueba** (Mayor Contable), que agrupa todos los movimientos de una cuenta en un período.

## Ventanas Relacionadas

- [Detalle de Hechos Contables](accounting-fact-details-window)
- [Balance de Hechos Contables](accounting-fact-balances)
