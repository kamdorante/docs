---
title: Configuración de Lote de Procesador de Pago
category: Documentation
star: 9
sticky: 9
article: false
---

# Configuración de Lote de Procesador de Pago

## Descripción
Configuración de los lotes del procesador de pagos. Permite definir los parámetros de configuración para la generación de lotes de pagos electrónicos.

## Acceso
Menú: Gestión de Saldos Pendientes → Pagos y Cobros → Configuración de Lote de Procesador de Pago

## Pestañas

### Configuración de Lote de Procesador de Pago
Configuración principal del lote.

#### Campos principales
| Campo | Descripción | Tipo | Obligatorio |
|---|---|---|---|
| Clave de Búsqueda | Clave de búsqueda para el registro | Texto | Sí |
| Socio del Negocio | Identifica un socio del negocio | Búsqueda directa | Sí |
| Dirección del Socio | Dirección del socio del negocio | Búsqueda directa | No |
| Cargo por Comisión | Cargo por comisión del procesador | Búsqueda directa | No |
| Cargo por Retención | Cargo por retención | Búsqueda directa | No |
| Cargo Factura de Venta | Cargo para factura de venta | Búsqueda directa | Sí |
| Moneda para Comisión | Moneda para el cargo de comisión | Búsqueda directa | No |
| Tipo Doc. Factura Compra | Tipo de documento para facturas de compra | Búsqueda directa | No |
| Tipo Doc. Factura Venta | Tipo de documento para facturas de venta | Búsqueda directa | No |
| Tipo Doc. Retención | Tipo de documento para retenciones | Búsqueda directa | No |

### Línea de Configuración
Líneas de configuración por cuenta bancaria.

#### Campos principales
| Campo | Descripción | Tipo | Obligatorio |
|---|---|---|---|
| Configuración de Lote | Referencia a la configuración del lote | Búsqueda directa | Sí |
| Cuenta Bancaria | Cuenta en el banco | Búsqueda directa | Sí |
