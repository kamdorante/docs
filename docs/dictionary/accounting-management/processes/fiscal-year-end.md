---
title: Cierre de Ejercicio
category: Documentation
star: 9
sticky: 9
article: false
---

# Cierre de Ejercicio

## Descripción

Proceso para liquidar las cuentas de costos e ingresos al final del ejercicio fiscal (proceso: C0016_FiscalYearEnd, ID: 2000254). Este proceso cierra las cuentas de costos y gastos al final del período fiscal anual.

La cuenta destinataria (cuenta de resultados) se selecciona como parámetro. El proceso crea un Lote de Pólizas Contables con una póliza por cada cuenta de costo/gasto que tenga saldo. Luego de completar el lote, el saldo de todas las cuentas de costo/gasto queda en cero, mientras que el monto transferido corresponde a la ganancia bruta del período.

## Acceso

Menú: Gestión Contable → Procesos Contables → Cierre de Ejercicio

## Parámetros

| Parámetro | Descripción | Tipo | Obligatorio |
|-----------|-------------|------|-------------|
| Organización | Entidad organizacional dentro del cliente | Tabla Directa | No |
| Esquema Contable | Reglas para la contabilización | Tabla Directa | No |
| Cuenta Destino | Cuenta de resultados a la que se transfieren los saldos | Tabla | No |
| Fecha Contable | Fecha contable del asiento de cierre | Fecha | No |
| Tipo de Documento | Tipo de documento para el lote generado | Tabla Directa | No |
| Categoría GL | Categoría del libro mayor para los asientos | Tabla Directa | No |
