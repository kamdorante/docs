---
title: Generar Retención
category: Documentation
star: 9
sticky: 9
article: false
---

# Generar Retención

## Descripción

Generar Retención es usado para generar desde Documentos por Pagar. Este proceso permite generar retenciones desde Facturas por Pagar para agregar a la declaración.

## Acceso

Menú: Gestión Financiera → Retenciones → Generar Retención

## Parámetros

| Parámetro | Descripción | Tipo | Obligatorio |
|-----------|-------------|------|-------------|
| Organización | Entidad organizacional dentro de la empresa | Tabla | No |
| Socio de Negocio | Identifica un Socio de Negocio | Búsqueda | No |
| Moneda | Moneda para este registro | Tabla | No |
| Factura | Identificador del documento de factura | Búsqueda | No |
| Fecha Contable | Fecha contable usada en los asientos del libro mayor | Fecha | No |
| Tipo de Retención | Indica los tipos de retenciones de impuestos nacionales | Tabla | No |
| Acción del Documento | Estado objetivo del documento | Lista | No |
| Fecha del Documento | Fecha en que fue generado el documento | Fecha | No |
| Moneda Destino | Moneda destino para la conversión | Tabla Directa | No |
| Manual | Indica si el proceso será realizado manualmente | Sí/No | No |
| No. del Documento | Número de secuencia del documento (solo si es manual) | Texto | No |
