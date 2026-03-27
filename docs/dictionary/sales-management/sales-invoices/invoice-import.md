---
title: Bandeja CFE
category: Documentation
star: 9
sticky: 9
article: false
---

# Bandeja CFE

## Descripción

Ventana para la importación y gestión de comprobantes fiscales electrónicos (CFE). Permite importar datos de informes de gasto, vincularlos y generar facturas a partir de los registros importados.

## Acceso

Menú: Gestión de Ventas → Facturas de Venta → Bandeja CFE

## Pestañas

### Importar Factura

Pestaña principal para configurar y ejecutar la importación de facturas.

#### Campos principales

| Campo | Descripción | Tipo | Obligatorio |
|---|---|---|---|
| No. del Documento | Número de secuencia del documento | Texto | No |
| Nombre | Nombre del registro de importación | Texto | No |
| Descripción | Descripción corta del registro | Texto | No |
| Vincular Factura a Informe de Gasto | Ejecuta la vinculación de la factura importada con el informe de gasto | Texto | No |
| Generar Factura desde Informe de Gasto | Genera la factura a partir del informe de gasto vinculado | Texto | No |

### Línea de Informe de Gasto

Líneas de los informes de gasto asociados a la importación.

#### Campos principales

| Campo | Descripción | Tipo | Obligatorio |
|---|---|---|---|
| Socio del Negocio | Socio del negocio asociado | Texto | No |
| Socio de Facturación | Socio del negocio al que se facturará | Texto | No |
| Fecha de Gasto | Fecha del gasto reportado | Texto | No |
| Producto | Producto o servicio asociado | Texto | No |
| Impuesto | Tipo de impuesto aplicado | Texto | No |
| Monto del Gasto | Monto del gasto reportado | Texto | No |
| Moneda | Moneda del monto | Texto | No |
| Facturado | Indica si la línea ha sido facturada | Texto | No |
| Cantidad | Cantidad del producto o servicio | Texto | No |
| No. de Línea | Número de línea del documento | Texto | No |

### Factura

Facturas generadas a partir de la importación.

#### Campos principales

| Campo | Descripción | Tipo | Obligatorio |
|---|---|---|---|
| Tipo de Documento | Tipo de documento de la factura | Texto | No |
| No. del Documento | Número de secuencia del documento | Texto | No |
| Socio del Negocio | Socio del negocio (cliente) | Texto | No |
| Fecha de Facturación | Fecha de la factura | Texto | No |
| Estado del Documento | Estado actual del documento | Texto | No |
| Campaña | Campaña de marketing asociada | Texto | No |
| Moneda | Moneda de la factura | Texto | No |
| Total de Líneas | Suma total de las líneas | Texto | No |
| Gran Total | Monto total incluyendo impuestos | Texto | No |
