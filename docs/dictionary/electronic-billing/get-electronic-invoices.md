---
title: Obtener Facturas Electrónicas
category: Documentation
star: 9
sticky: 9
article: false
---

# Obtener Facturas Electrónicas

## Descripción

Proceso para descargar y recibir las facturas electrónicas desde el proveedor de facturación electrónica. Consulta el servicio del emisor fiscal y recupera los documentos electrónicos emitidos por los proveedores, permitiendo su importación y procesamiento en Solop ERP.

## Acceso

Menú: Facturación Electrónica → Obtener Facturas Electrónicas

## Parámetros

| Parámetro | Descripción | Tipo | Obligatorio |
|-----------|-------------|------|-------------|
| Compañía | Compañía/inquilino de la instalación para la cual se obtendrán las facturas | Tabla Directa | No |
| Organización | Organización dentro de la compañía para la cual se obtendrán las facturas | Tabla Directa | No |
| Fecha de Transacción | Fecha de las transacciones a consultar en el proveedor fiscal | Fecha | No |
| Período | Período del calendario para filtrar las facturas electrónicas a obtener | Tabla Directa | No |

---

# Importación de Facturas Electrónicas (CxP)

## Descripción

Proceso para recibir e importar las facturas electrónicas emitidas por proveedores como facturas de Cuentas por Pagar. Se ejecuta en dos etapas: obtención desde el proveedor fiscal y completado de datos antes de importar.

## Tipo de Documento — Configuración para Importación

| Campo | Descripción | Tipo | Obligatorio |
|-------|-------------|------|-------------|
| Documento de Compra Electrónico | Habilita los campos fiscales necesarios para la importación de CFE | Sí/No | Sí |
| Tipo de Documento Fiscal | Tipo fiscal del comprobante (ej. Factura) | Lista | Sí |
| Tipo de Transacción Fiscal | Tipo de transacción fiscal del comprobante | Lista | Sí |

## Información de la Compañía

| Campo | Descripción | Tipo | Obligatorio |
|-------|-------------|------|-------------|
| Crear Socios al Importar Documentos | Crea automáticamente socios de negocio inexistentes con la información del comprobante recibido | Sí/No | No |

## Proceso: Completar Datos de Factura

| Parámetro | Descripción | Tipo | Obligatorio |
|-----------|-------------|------|-------------|
| Organización | Organización para la que se completan los datos pendientes | Tabla Directa | No |

## Proceso: Importar Facturas

| Parámetro | Descripción | Tipo | Obligatorio |
|-----------|-------------|------|-------------|
| Organización | Organización para la que se ejecuta la importación | Tabla Directa | No |
| Acción del Documento | Estado con que se crearán los documentos importados (ej. Preparar) | Lista | No |
