---
title: Generar Ganancia/Pérdida No Realizada
category: Documentation
star: 9
sticky: 9
article: false
---

# Generar Ganancia/Pérdida No Realizada

## Descripción

Proceso para generar las ganancias y pérdidas no realizadas (diferencias de cambio no realizadas) para facturas en moneda extranjera (proceso: C0012_UnrealizedExchangeDiff, ID: 2000253). El reporte lista las líneas de informe con cantidades abiertas, cantidades del libro mayor y cantidades nuevas. Si se selecciona el tipo de documento de libro mayor (GL), se crea un diario de asientos contables para registrar la diferencia de cambio.

## Acceso

Menú: Gestión Contable → Procesos Contables → Generar Ganancia/Pérdida No Realizada

## Parámetros

| Parámetro | Descripción | Tipo | Obligatorio |
|-----------|-------------|------|-------------|
| Organización | Entidad organizacional dentro del cliente | Tabla Directa | No |
| Esquema Contable | Reglas para la contabilización | Tabla Directa | No |
| Tipo de Conversión de Revaluación | Tipo de conversión de moneda para revaluación | Tabla | No |
| Fecha de Revaluación | Fecha para el cálculo de la revaluación | Fecha | No |
| AP - AR | Incluir transacciones de cuentas por cobrar y/o pagar | Lista | No |
| Incluir Todas las Monedas | Reportar no solo facturas en moneda extranjera | Sí/No | No |
| Moneda | Moneda para el reporte | Tabla Directa | No |
| Tipo de Documento de Revaluación | Tipo de documento para el diario de revaluación | Tabla | No |
