---
title: Retenciones por Cobrar
category: Documentation
star: 9
sticky: 9
article: false
---

# Retenciones por Cobrar

## Descripción

Ventana para gestionar las retenciones aplicadas a transacciones de ventas (documentos por cobrar). Permite visualizar y administrar las retenciones que los clientes aplican sobre las facturas emitidas.

## Acceso

Menú: Gestión Financiera → Retenciones → Retenciones por Cobrar

## Pestañas

### Retención (Cliente)

Pestaña principal que muestra las retenciones generadas desde documentos por cobrar con sus datos de transacción, montos, tasas y estado del documento.

#### Campos

| Campo | Descripción | Tipo | Obligatorio |
|-------|-------------|------|-------------|
| Socio de Negocio | Cliente que aplica la retención | Búsqueda | No |
| Retención | Definición de retención aplicada | Tabla Directa | No |
| Tipo de Retención | Tipo de retención según configuración | Tabla Directa | No |
| Monto Base | Monto sobre el que se calcula la retención | Número | No |
| Tasa de Retención | Porcentaje de retención aplicado | Número | No |
| Monto de Retención | Importe retenido calculado | Número | No |
| Moneda | Moneda del documento de retención | Tabla Directa | No |
| Estado del Documento | Estado actual del documento | Lista | No |
| Factura Origen | Documento por cobrar que originó la retención | Búsqueda | No |

## Consideraciones importantes

- La ventana filtra automáticamente los documentos cuyos tipos estén configurados en **Definición de Retenciones** o en **Tipo de Retención**.
- Incluye campos de facturación electrónica y bitácora del documento electrónico para verificar el estado del envío.
- Los tipos de documento de retención para ventas deben estar marcados como **Transacción de Venta** en su configuración.

## Ventanas Relacionadas

- [Definición de Retenciones](withholding-definition)
- [Tipo de Retención](withholding-type)
