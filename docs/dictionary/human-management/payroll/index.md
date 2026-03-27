---
title: Nómina
category: Documentation
star: 9
sticky: 9
article: false
---

# Nómina

Gestión de nómina y procesos de pago de empleados. Esta sección contiene las ventanas y procesos para la gestión completa de nómina en Solop ERP.

## Ventana: Proceso Nómina

### Descripción

La ventana de Proceso Nómina es utilizada para procesar una nómina; se puede calcular para un empleado o para todos los empleados. Consolida el proceso de cálculo, revisión y contabilización de la nómina.

### Acceso

Menú: Recursos Humanos y Nómina → Nómina → Proceso Nómina

### Pestañas

#### Proceso

Pestaña principal con los parámetros del proceso de nómina a ejecutar.

##### Campos

| Campo | Descripción | Tipo | Obligatorio |
|-------|-------------|------|-------------|
| Nombre | Nombre del proceso de nómina | Texto | No |
| Descripción | Descripción del proceso | Texto | No |
| Nómina | Definición de nómina a procesar | Tabla Directa | No |
| Período de Nómina | Período de la nómina a calcular | Tabla Directa | No |
| Actividad | Actividad contable asociada | Tabla Directa | No |
| Proyecto | Proyecto contable asociado | Tabla Directa | No |
| Contrato de Nómina | Contrato de nómina del proceso | Tabla Directa | No |
| Departamento de Nómina | Departamento de nómina del proceso | Tabla Directa | No |
| Empleado | Empleado específico a procesar (vacío = todos) | Búsqueda | No |
| Fecha Contable | Fecha de contabilización del proceso | Fecha | No |
| Estado del Documento | Estado actual del proceso de nómina | Lista | No |
| Acción del Documento | Acción a ejecutar sobre el proceso | Lista | No |
| Procesado | El proceso ha sido ejecutado | Sí/No | No |

#### Movimiento de Nómina

Detalle de los movimientos generados por el proceso de nómina para cada empleado y concepto.

##### Campos

| Campo | Descripción | Tipo | Obligatorio |
|-------|-------------|------|-------------|
| Empleado | Empleado al que corresponde el movimiento | Búsqueda | No |
| Concepto de Nómina | Concepto de nómina calculado | Tabla Directa | No |
| Descripción | Descripción del movimiento | Texto | No |
| Cantidad | Cantidad del concepto | Número | No |
| Monto | Monto calculado del concepto | Monto | No |
| Contabilizado | Estado de contabilización | Lista | No |

---

## Proceso: Procesamiento de Nómina

### Descripción

Proceso para calcular y ejecutar la nómina de empleados. Permite calcular para un empleado específico o para todos los empleados incluidos en el proceso de nómina.

### Acceso

Menú: Recursos Humanos y Nómina → Nómina → Procesamiento de Nómina

---

## Otras Ventanas y Procesos de Nómina

| Componente | Tipo | Descripción |
|-----------|------|-------------|
| Definición de Nómina | Ventana | Define las características y reglas de la nómina |
| Concepto de Nómina | Ventana | Catálogo de conceptos (devengados y deducidos) |
| Categoría de Concepto | Ventana | Categorías de clasificación de conceptos |
| Tipo de Concepto | Ventana | Tipos de conceptos de nómina |
| Tipo de Tabla de Nómina | Ventana | Tipos de tablas salariales |
| Tabla de Nómina | Ventana | Tablas con rangos y valores salariales |
| Movimiento de Nómina | Ventana | Historial de movimientos de nómina |
| Selección de Pago de Nómina | Ventana | Selección de conceptos para pago |
| Creación de Factura de Nómina | Proceso | Genera facturas para conceptos facturables de nómina |
| Enviar Recibo de Nómina por Email | Proceso | Envía el recibo de nómina a cada empleado por correo |
