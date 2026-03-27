---
title: Facturación Masiva
category: Documentation
star: 9
sticky: 9
article: false
---

# Facturación Masiva

## Descripción

Generador de conceptos a facturar. Esta ventana permite gestionar la generación masiva de facturas a partir de informes de gasto y conceptos a facturar, facilitando la facturación por lotes para múltiples clientes.

## Acceso

Menú: Gestión de Ventas → Facturas de Venta → Facturación Masiva

## Pestañas

### General

Configuración general del proceso de facturación masiva.

#### Campos principales

| Campo | Descripción | Tipo | Obligatorio |
|---|---|---|---|
| Tipo de Documento | Tipo de documento para las facturas a generar | Texto | No |
| No. del Documento | Número de secuencia del documento | Texto | No |
| Fecha de la Transacción | Fecha de la transacción | Texto | No |
| Fecha de Inicio | Fecha de inicio del período a facturar | Texto | No |
| Fecha de Fin | Fecha de fin del período a facturar | Texto | No |
| Observaciones | Observaciones adicionales | Texto | No |
| Producto | Producto o servicio a facturar | Texto | No |
| Cargar Datos | Ejecuta la carga de datos a facturar | Texto | No |

### Clientes

Selección de clientes para la facturación masiva.

#### Campos principales

| Campo | Descripción | Tipo | Obligatorio |
|---|---|---|---|
| Socio del Negocio | Identifica al socio del negocio (cliente) | Texto | No |

### Líneas

Líneas de informes de gasto disponibles para facturación.

#### Campos principales

| Campo | Descripción | Tipo | Obligatorio |
|---|---|---|---|
| Seleccionado | Indica si la línea está seleccionada | Texto | No |
| Informe de Gasto | Informe de gasto asociado | Texto | No |
| Estado del Documento | Estado actual del documento | Texto | No |
| Socio del Negocio | Socio del negocio asociado | Texto | No |
| Moneda | Moneda del documento | Texto | No |
| Fecha de la Transacción | Fecha de la transacción | Texto | No |
| Total de Líneas | Suma total de las líneas | Texto | No |
| Gran Total | Monto total incluyendo impuestos | Texto | No |
| Detalle de Conceptos a Facturar | Muestra el detalle de los conceptos a facturar | Texto | No |

### Detalle

Detalle de los conceptos a facturar por cada línea.

#### Campos principales

| Campo | Descripción | Tipo | Obligatorio |
|---|---|---|---|
| Concepto | Concepto a facturar | Texto | No |
| Días de Atraso | Días de atraso del concepto | Texto | No |
| Fecha | Fecha del concepto | Texto | No |
| Lugar | Lugar asociado al concepto | Texto | No |
| Moneda | Moneda del monto | Texto | No |
| Monto | Monto del concepto | Texto | No |
| Número de Recibo | Número de recibo asociado | Texto | No |
| Documento Persona | Documento de identificación de la persona | Texto | No |
| Nombre Persona | Nombre de la persona | Texto | No |
| Porcentaje | Porcentaje aplicado | Texto | No |

### Mensajes Informativos

Mensajes informativos del proceso de facturación.

#### Campos principales

| Campo | Descripción | Tipo | Obligatorio |
|---|---|---|---|
| Mensaje | Mensaje informativo del proceso | Texto | No |
