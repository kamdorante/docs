---
title: Lote de Facturas
category: Documentation
star: 9
sticky: 9
article: false
---

# Lote de Facturas

## Descripción

Ingreso de facturas de gastos en lote. Después de crear las líneas, las facturas reales son creadas al procesar el lote. Permite definir la moneda y decidir si las facturas son de Cuentas por Cobrar o Cuentas por Pagar.

## Acceso

Menú: Gestión de Compras → Documentos por Pagar → Lote de Facturas

## Pestañas

### Lote de Facturas

Encabezado del lote. Se define la moneda y el tipo (ventas o compras). Opcionalmente se puede ingresar un monto de control.

#### Campos

| Campo | Descripción | Tipo | Obligatorio |
|-------|-------------|------|-------------|
| Descripción | Descripción corta opcional del registro | Texto | No |
| Agente de la Empresa | Agente de ventas/compras responsable | Búsqueda | No |
| Moneda | La moneda para este registro | Búsqueda | No |
| Tipo de Moneda | Tipo de conversión de moneda | Búsqueda | No |
| Procesado | El documento ha sido procesado | Sí/No | No |

### Línea de Lote

Líneas del lote. Se crea una nueva factura si hay diferente número de documento, socio de negocio o dirección. El número de documento puede ser sobreescrito según el control de numeración del tipo de documento seleccionado.

#### Campos

| Campo | Descripción | Tipo | Obligatorio |
|-------|-------------|------|-------------|
| Tipo de Documento | Tipo de documento o reglas de procesamiento | Búsqueda | Sí |
| Descripción | Descripción corta opcional | Texto | No |
| Socio de Negocio | Identifica un Socio de Negocio | Búsqueda | Sí |
| Dirección del Socio | Dirección del Socio de Negocio | Búsqueda | No |
| Usuario/Contacto | Usuario dentro del sistema | Búsqueda | No |
| Cargo | Cargo o gastos adicionales | Búsqueda | No |
| Producto | Producto, Servicio, Artículo | Búsqueda | No |
| Impuesto | Identificador del impuesto | Búsqueda | No |
| Proyecto | Proyecto financiero | Búsqueda | No |
| Actividad | Actividad de negocio | Búsqueda | No |
| Procesado | El documento ha sido procesado | Sí/No | No |
