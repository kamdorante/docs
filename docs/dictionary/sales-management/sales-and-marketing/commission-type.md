---
title: Tipo de Comisión
category: Documentation
star: 9
sticky: 9
article: false
---

# Tipo de Comisión

## Descripción
El Tipo de Comisión se utiliza para definir un cálculo personalizado de comisiones. Permite definir consultas personalizadas para el cálculo o búsqueda de comisiones.

## Acceso
Menú: Gestión de Ventas → Ventas y Mercadeo → Tipo de Comisión

## Pestañas

### Tipo de Comisión
Configuración del tipo de comisión personalizado.

#### Campos principales
| Campo | Descripción | Tipo | Obligatorio |
|---|---|---|---|
| Clave de Búsqueda | Clave de búsqueda para el registro | Texto | Sí |
| Nombre | Identificador alfanumérico de la entidad | Texto | Sí |
| Descripción | Descripción corta opcional del registro | Texto | No |
| Basado en Vista | Indica si el cálculo de comisión se basa en vista | Sí/No | No |
| Vista | Vista que permite crear vistas dinámicas de información | Búsqueda | Sí (si Basado en Vista = Sí) |
| Regla | Regla para el cálculo | Búsqueda | No |
| No Facturar desde Contrato | Cuando es Sí, la dirección de facturación del Socio del Negocio será nula | Sí/No | No |
| SQL WHERE | Cláusula SQL WHERE completa para selección de registros | Texto | No |
| Es Facturable Dividida | Indica si permite dividir la facturación | Sí/No | No |
| Columna de Moneda | Columna de moneda para obtener de la vista | Búsqueda | Sí (si Basado en Vista = Sí) |
| Columna de Fecha Documento | Columna de fecha de documento para obtener de la vista | Búsqueda | Sí (si Basado en Vista = Sí) |
| Actualizar Columnas Complementarias | Indica si se actualizan las columnas complementarias | Sí/No | No |
| Columna de Cantidad | Columna de cantidad para obtener de la vista | Búsqueda | Sí (si Basado en Vista = Sí) |
| Columna de Monto | Columna de monto para obtener de la vista | Búsqueda | Sí (si Basado en Vista = Sí) |
| Nombre de Clase | Nombre de la clase Java utilizada | Texto | Sí (si Basado en Vista = No) |
