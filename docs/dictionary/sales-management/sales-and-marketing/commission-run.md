---
title: Ejecución de Comisión
category: Documentation
star: 9
sticky: 9
article: false
---

# Ejecución de Comisión

## Descripción
La ventana de Ejecución de Comisión muestra el resultado del cálculo de comisiones. Permite ver los montos calculados y los detalles de las transacciones que generaron dichas comisiones.

## Acceso
Menú: Gestión de Ventas → Ventas y Mercadeo → Ejecución de Comisión

## Pestañas

### Ejecución de Comisión
Registro principal con los datos de la ejecución de comisión.

#### Campos principales
| Campo | Descripción | Tipo | Obligatorio |
|---|---|---|---|
| Comisión | Regla de comisión asociada | Búsqueda | Sí |
| Descripción | Descripción del procesamiento | Texto | No |
| Fecha del Documento | Fecha del documento de comisión | Fecha | Sí |
| Fecha de Inicio | Primera fecha efectiva (inclusiva) | Fecha | No |
| Total General | Monto total de la comisión | Monto | No |

### Monto de Comisión
Detalle de los montos de comisión por representante de ventas.

#### Campos principales
| Campo | Descripción | Tipo | Obligatorio |
|---|---|---|---|
| Ejecución de Comisión | Referencia a la ejecución de comisión | Búsqueda | Sí |
| Línea de Comisión | Línea de comisión asociada | Búsqueda | No |
| Socio del Negocio Comisionado | Socio del Negocio que recibe la comisión | Búsqueda | No |
| Monto Convertido | Monto convertido a la moneda de la comisión | Monto | No |
| Monto Real | Monto real de la comisión | Monto | No |
