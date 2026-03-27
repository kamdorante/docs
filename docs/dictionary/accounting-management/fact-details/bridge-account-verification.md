---
title: Verificación de Cuentas Puente
category: Documentation
star: 9
sticky: 9
article: false
---

# Verificación de Cuentas Puente

## Descripción

Reporte para verificar el estado de las cuentas puente contables (proceso: UY_R_AcctVerification, ID: 2000152). Las cuentas puente son cuentas transitorias que deberían tener saldo cero al finalizar el período. Este reporte identifica cuentas puente con saldo pendiente.

## Acceso

Menú: Gestión Contable → Hechos Contables → Verificación de Cuentas Puente

## Parámetros

| Parámetro | Descripción | Tipo | Obligatorio |
|-----------|-------------|------|-------------|
| Compañía | Compañía/Cliente para esta instalación | Tabla Directa | No |
| Organización | Entidad organizacional dentro del cliente | Tabla | No |
| Esquema Contable | Reglas para la contabilización | Tabla Directa | No |
| Tipo de Contabilización | Tipo de monto contabilizado (Real, Presupuesto, etc.) | Lista | No |
| Concepto | Concepto de cuenta puente a verificar | Lista | No |
| Fecha Hasta | Fecha final del rango de consulta | Fecha | No |
