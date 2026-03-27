---
title: Selección de Pago
category: Documentation
star: 9
sticky: 9
article: false
---

# Selección de Pago

## Descripción
La ventana de selección de pago permite seleccionar facturas para generar pagos. Se pueden seleccionar las facturas a pagar y generar los pagos correspondientes.

## Acceso
Menú: Gestión de Saldos Pendientes → Selección de Pago → Selección de Pago

## Pestañas

### Selección de Pago
Configuración principal de la selección de pago.

#### Campos principales
| Campo | Descripción | Tipo | Obligatorio |
|---|---|---|---|
| No. del Documento | Número de secuencia del documento | Texto | Sí |
| Nombre | Identificador alfanumérico de la entidad | Texto | Sí |
| Descripción | Descripción corta opcional del registro | Texto | No |
| Cuenta Bancaria | Cuenta en el banco | Búsqueda directa | Sí |
| Fecha del Documento | Fecha del documento | Fecha | Sí |
| Monto Total | Monto total del documento | Monto | No |
| Estado del Documento | Estado actual del documento | Lista | No |

### Línea de Selección de Pago
Líneas de la selección de pago con las facturas a pagar.

#### Campos principales
| Campo | Descripción | Tipo | Obligatorio |
|---|---|---|---|
| Factura | Documento de factura | Búsqueda | Sí |
| Socio del Negocio | Identifica un socio del negocio | Búsqueda | No |
| Monto del Pago | Monto que se está pagando | Monto | Sí |
| Monto de Descuento | Monto calculado de descuento | Monto | No |
| Diferencia | Diferencia entre el monto abierto y el monto del pago | Monto | No |
| Monto Abierto | Monto pendiente de la factura | Monto | No |
