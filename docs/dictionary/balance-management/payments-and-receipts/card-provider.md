---
title: Proveedor de Tarjeta
category: Documentation
star: 9
sticky: 9
article: false
---

# Proveedor de Tarjeta

## Descripción
Proveedor de tarjeta para pagos. Permite definir los proveedores de tarjetas de crédito y débito utilizados en el procesamiento de pagos.

## Acceso
Menú: Gestión de Saldos Pendientes → Pagos y Cobros → Proveedor de Tarjeta

## Pestañas

### Proveedor
Definición del proveedor de tarjetas.

#### Campos principales
| Campo | Descripción | Tipo | Obligatorio |
|---|---|---|---|
| Clave de Búsqueda | Clave de búsqueda para el registro | Texto | Sí |
| Nombre | Identificador alfanumérico de la entidad | Texto | Sí |
| Descripción | Descripción corta opcional del registro | Texto | No |

### Tarjeta
Tarjetas asociadas al proveedor.

#### Campos principales
| Campo | Descripción | Tipo | Obligatorio |
|---|---|---|---|
| Proveedor de Tarjeta | Proveedor de la tarjeta | Búsqueda directa | Sí |
| Clave de Búsqueda | Clave de búsqueda para el registro | Texto | Sí |
| Nombre | Identificador alfanumérico de la entidad | Texto | Sí |
| Descripción | Descripción corta opcional del registro | Texto | No |
| Tarjeta de Crédito | Tipo de tarjeta de crédito (Visa, MC, AmEx) | Lista | Sí |
