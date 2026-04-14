---
title: Retenciones por Pagar
category: Documentation
star: 9
sticky: 9
article: false
---

# Retenciones por Pagar

## Descripción

Ventana para gestionar las retenciones aplicadas a transacciones de compras (documentos por pagar). Permite visualizar y administrar las retenciones que la empresa aplica sobre las facturas recibidas de proveedores.

## Acceso

Menú: Gestión Financiera → Retenciones → Retenciones por Pagar

## Pestañas

### Retención (Proveedor)

Pestaña principal que muestra las retenciones generadas desde documentos por pagar con sus datos de transacción, montos, tasas y estado del documento.

#### Campos

| Campo | Descripción | Tipo | Obligatorio |
|-------|-------------|------|-------------|
| Socio de Negocio | Proveedor al que se aplica la retención | Búsqueda | No |
| Retención | Definición de retención aplicada | Tabla Directa | No |
| Tipo de Retención | Tipo de retención según configuración | Tabla Directa | No |
| Monto Base | Monto sobre el que se calcula la retención | Número | No |
| Tasa de Retención | Porcentaje de retención aplicado | Número | No |
| Monto de Retención | Importe retenido calculado | Número | No |
| Moneda | Moneda del documento de retención | Tabla Directa | No |
| Estado del Documento | Estado actual del documento | Lista | No |
| Factura Origen | Documento por pagar que originó la retención | Búsqueda | No |

## Consideraciones importantes

- La ventana filtra automáticamente los documentos cuyos tipos estén configurados en **Definición de Retenciones** o en **Tipo de Retención**.
- Incluye campos de facturación electrónica y bitácora del documento electrónico para verificar el estado de envío del resguardo.
- Los resguardos asociados a cada retención son visibles desde la pestaña **Documentos Asignados**.

## Ventanas Relacionadas

- [Definición de Retenciones](withholding-definition)
- [Tipo de Retención](withholding-type)
- [Generar Retenciones](withholding-generate)
