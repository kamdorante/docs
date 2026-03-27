---
title: Factura de Gastos
category: Documentation
star: 9
sticky: 9
article: false
---

# Factura de Gastos

## Descripción

Ventana para el ingreso de facturas de gastos de proveedores (Cuentas por Pagar). Permite registrar facturas de compras con sus líneas de productos/servicios, condiciones de pago e información contable.

## Acceso

Menú: Gestión de Compras → Documentos por Pagar → Factura de Gastos (Alpha)

## Pestañas

### Factura

Encabezado de la factura con información del proveedor, fechas, condiciones de pago y totales.

#### Campos

| Campo | Descripción | Tipo | Obligatorio |
|-------|-------------|------|-------------|
| No. del Documento | Número de secuencia del documento | Texto | No |
| Referencia de Orden | Número de referencia de la orden del proveedor | Texto | No |
| Descripción | Descripción corta opcional del registro | Texto | No |
| Tipo de Documento Destino | Tipo de documento final (Factura AP, Nota de Crédito AP) | Búsqueda | Sí |
| Fecha Facturada | Fecha de la factura del proveedor | Fecha | Sí |
| Fecha Contable | Fecha de contabilización | Fecha | Sí |
| Socio de Negocio | Proveedor que emite la factura | Búsqueda | Sí |
| Dirección del Socio | Dirección del proveedor | Búsqueda | No |
| Usuario/Contacto | Contacto del proveedor | Búsqueda | No |
| Lista de Precios | Lista de precios utilizada | Búsqueda | No |
| Moneda | La moneda para este registro | Búsqueda | No |
| Agente de la Empresa | Agente de compras responsable | Búsqueda | No |
| Regla de Pago | Forma de pago (efectivo, crédito, etc.) | Lista | No |
| Término de Pago | Condiciones de pago | Búsqueda | No |
| Proyecto | Proyecto financiero relacionado | Búsqueda | No |
| Actividad | Actividad de negocio | Búsqueda | No |
| Campaña | Campaña de marketing | Búsqueda | No |
| Total de Líneas | Suma de todas las líneas | Monto | No |
| Total | Total incluyendo impuestos | Monto | No |
| Estado del Documento | Estado actual del documento | Lista | No |
| Acción del Documento | Acción a ejecutar sobre el documento | Lista | No |
| Contabilizado | El documento ha sido contabilizado | Sí/No | No |

### Líneas Incluidas

Líneas de la factura con los productos o servicios facturados.

#### Campos

| Campo | Descripción | Tipo | Obligatorio |
|-------|-------------|------|-------------|
| No. de Línea | Número de línea en el documento | Entero | Sí |
| Cargo | Cargo o gasto adicional | Búsqueda | No |
| Descripción | Descripción de la línea | Texto | No |
| Impuesto | Identificador del impuesto | Búsqueda | No |
| Monto de Línea | Monto neto de la línea | Monto | No |
| Monto de Impuesto | Monto de impuesto de la línea | Monto | No |
