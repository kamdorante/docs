---
title: Transacciones de Activos
category: Documentation
star: 9
sticky: 9
article: false
---

# Transacciones de Activos

Operaciones de adición, disposición, división y transferencia de activos fijos.

## Ventana: Disposición de Activos

### Descripción

Ventana para registrar y procesar la disposición (baja) de activos fijos. Permite dar de baja un activo por distintos métodos (venta, descarte, canje) y contabilizar el resultado de la operación.

### Acceso

Menú: Gestión de Activos → Transacciones de Activos → Disposición de Activos

### Pestañas

#### Disposición de Activo

Pestaña principal para el registro de la baja del activo.

##### Campos

| Campo | Descripción | Tipo | Obligatorio |
|-------|-------------|------|-------------|
| No. Documento | Número de secuencia del documento | Texto | No |
| Tipo de Documento | Tipo de documento y reglas de procesamiento | Tabla Directa | No |
| Descripción | Descripción opcional del registro | Texto | No |
| Fecha del Documento | Fecha en que se generó el documento | Fecha | No |
| Fecha Contable | Fecha contable para el registro en el Libro Mayor | Fecha | No |
| Activo Fijo | Activo fijo que será dado de baja | Búsqueda | No |
| Fecha de Disposición | Fecha en que el activo fue dispuesto | Fecha | No |
| Método de Disposición | Método utilizado para la disposición del activo | Lista | No |
| Monto de Disposición | Monto de la disposición del activo | Monto | No |
| Motivo de Disposición | Motivo de la baja del activo | Texto | No |
| Activo de Canje | Activo recibido en canje | Tabla Directa | No |
| Ingresos del Activo | Ingresos obtenidos por la venta del activo | Monto | No |
| Costo del Activo Fijo | Costo de adquisición del activo fijo | Monto | No |
| Gasto | Monto del gasto registrado | Monto | No |
| Depreciación Acumulada | Depreciación acumulada del activo | Monto | No |
| Depreciación Acumulada (delta) | Diferencia en depreciación acumulada | Monto | No |
| Tipo de Contabilización | Tipo del monto contabilizado | Lista | No |
| Estado del Activo | Estado actual del activo | Lista | No |
| Estado del Documento | Estado actual del documento | Lista | No |
| Proceso de Disposición | Acción a ejecutar sobre el documento | Lista | No |
| Aprobado | Indica si el documento requiere aprobación | Sí/No | No |
| Contabilizado | Estado de la contabilización en el Libro Mayor | Lista | No |
| Factura | Factura asociada a la disposición | Búsqueda | No |
| Línea de Factura | Línea de la factura asociada | Tabla Directa | No |
| Período | Período del calendario contable | Tabla Directa | No |

## Otros Procesos

- **Adición de Activo**: Registra adiciones al valor de un activo existente.
- **Navegador de División de Activo Fijo**: Permite seleccionar activos para realizar divisiones.
- **División de Activo Fijo**: Registra la división de un activo fijo en múltiples activos.
- **Entregar Activo**: Proceso para entregar activos a socios del negocio.
