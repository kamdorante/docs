---
title: Importación Masiva de Asientos Contables
category: Documentation
star: 9
sticky: 9
article: false
---

# Importación Masiva de Asientos Contables

## Descripción

Proceso para cargar asientos contables desde un archivo Excel, generando un Lote de Pólizas Contables con sus notas y líneas correspondientes. Útil para registrar asientos de origen externo como liquidaciones de sueldos, devengos o ajustes periódicos preparados fuera del sistema.

## Acceso

| Paso | Ruta de menú |
|------|-------------|
| Cargar el archivo | Gestión de Datos → Cargador de Archivos → Importar Nota de Contabilidad → Carga de Asiento Contable |
| Revisar líneas importadas | Gestión Contable → Importar Datos → Importar Diario Contable |
| Verificar el resultado | Gestión Contable → Asientos Contables → Lote de Pólizas Contables |

## Estructura del Archivo Excel

| Columna | Descripción | Tipo | Obligatorio |
|---------|-------------|------|-------------|
| Número de cuenta | Código de la cuenta contable del plan de cuentas | Texto | Sí |
| Debe (contabilizado) | Importe débito en moneda funcional | Número | No |
| Haber (contabilizado) | Importe crédito en moneda funcional | Número | No |
| Descripción | Descripción de la línea del asiento | Texto | No |
| Fecha | Fecha contable de la línea | Fecha | No |

## Parámetros — Importar Diario Contable

| Parámetro | Descripción | Tipo | Obligatorio |
|-----------|-------------|------|-------------|
| Organización | Organización a la que pertenece el asiento | Tabla Directa | Sí |
| Fecha Contable | Fecha con la que se crearán los asientos importados | Fecha | Sí |
| Solo Validar Datos | Ejecuta la validación sin importar; permite detectar errores antes de procesar | Sí/No | No |

## Consideraciones importantes

- Si el archivo incluye una fila de encabezado, se cargará como línea de datos y dará error al validar. Eliminarla desde **Importar Diario Contable** antes de procesar.
- Ejecutar siempre con **Solo Validar Datos = Sí** antes de importar definitivamente.
- El período contable del lote debe asignarse manualmente antes de completarlo.

## Ventanas Relacionadas

- [Lote de Pólizas Contables](gl-journal-batch)
- [Póliza Contable](gl-journal)
