---
title: Tipo de Documento según Grupo de Impuestos
category: Documentation
star: 9
sticky: 9
article: false
---

# Tipo de Documento según Grupo de Impuestos

## Descripción

Selección automática del tipo de documento electrónico correcto (e-Ticket, e-Factura, etc.) al guardar una factura, en función del Grupo de Impuestos del socio de negocio.

## Información de la Organización

| Campo | Descripción | Tipo | Obligatorio |
|-------|-------------|------|-------------|
| Maneja Facturación Electrónica | Activa el validador de tipo de documento electrónico para la organización. Requiere reinicio de caché al modificarse | Sí/No | Sí |

## Comportamiento por Grupo de Impuestos

| Tipo de socio | Tipo de documento asignado automáticamente |
|---------------|-------------------------------------------|
| Persona física (cédula) | e-Ticket |
| Persona jurídica (RUT / empresa) | e-Factura |
| Documento sin tipo de transacción fiscal configurado | Factura (tipo por defecto del grupo de impuestos) |

## Ventanas Relacionadas

- [Tipo de Transacción Fiscal](fiscal-transaction-type)
- [Emisor Fiscal](fiscal-sender)
