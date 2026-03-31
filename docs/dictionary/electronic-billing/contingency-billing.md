---
title: Facturación de Contingencia
category: Documentation
star: 9
sticky: 9
article: false
---

# Facturación de Contingencia

## Descripción

Permite emitir documentos electrónicos de forma manual cuando el servicio del proveedor de facturación no está disponible. El usuario ingresa el número del comprobante físico y el sistema lo registra sin requerir respuesta del proveedor.

## Tipo de Documento de Contingencia

| Campo | Descripción | Tipo | Obligatorio |
|-------|-------------|------|-------------|
| Tipo de Transacción Fiscal | Debe configurarse como **Contingencia** | Lista | Sí |

## Tipo de Documento de Orden (POS)

| Campo | Descripción | Tipo | Obligatorio |
|-------|-------------|------|-------------|
| Genera Documento Manual | Habilita la emisión de documentos de contingencia desde esta orden | Sí/No | Sí |
| Tipo de Documento para la Factura | Tipo de documento de contingencia que se generará al facturar | Tabla Directa | Sí |

## Grupo de Impuestos

| Campo | Descripción | Tipo | Obligatorio |
|-------|-------------|------|-------------|
| Tipo de Documento Manual - Factura | Tipo de contingencia a usar cuando el socio requiere factura manual | Tabla Directa | No |
| Tipo de Documento Manual - Nota de Crédito | Tipo de contingencia para notas de crédito manuales | Tabla Directa | No |
| Tipo de Documento Manual - Nota de Débito | Tipo de contingencia para notas de débito manuales | Tabla Directa | No |

## Terminal PDV — Vendedores Asignados

| Campo | Descripción | Tipo | Obligatorio |
|-------|-------------|------|-------------|
| Permite Crear Documentos Manuales | Habilita al agente comercial para emitir documentos de contingencia desde el POS | Sí/No | No |

## Ventanas Relacionadas

- [Tipo de Transacción Fiscal](fiscal-transaction-type)
- [Bitácora de Documento Electrónico](electronic-document-log)
- [Emisor Fiscal](fiscal-sender)
