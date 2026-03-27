---
title: Conciliación Automática de Cuentas
category: Documentation
star: 9
sticky: 9
article: false
---

# Conciliación Automática de Cuentas

## Descripción

Proceso para conciliar automáticamente los hechos contables de cuentas contables seleccionadas. El sistema empareja automáticamente los débitos con los créditos de igual monto que pertenecen al mismo período y cuenta, marcándolos como conciliados.

## Acceso

Menú: Gestión Contable → Conciliación Contable → Conciliación Automática de Cuentas

## Parámetros

| Parámetro | Descripción | Tipo | Obligatorio |
|-----------|-------------|------|-------------|
| Organización | Entidad organizacional dentro del cliente | Tabla Directa | No |
| Esquema Contable | Reglas para la contabilización | Tabla Directa | Sí |
| Cuenta | Cuenta contable a conciliar automáticamente | Tabla | Sí |
| Fecha Contable | Rango de fechas contables a incluir en la conciliación | Fecha | No |
| Período | Período del calendario contable | Tabla Directa | No |
| Tipo de Contabilización | Tipo de monto contabilizado (Real, Presupuesto, etc.) | Lista | No |
| Socio de Negocio | Filtro por socio de negocio | Búsqueda | No |
