---
title: Orden de Trabajo
category: Documentation
star: 9
sticky: 9
article: false
---

# Orden de Trabajo

## Descripción

Ventana para gestionar órdenes de trabajo. Una orden de trabajo es un proyecto de tipo especial que permite registrar y controlar trabajos específicos a realizar, con seguimiento de materiales, recursos y costos asociados.

## Acceso

Menú: Gestión de Ventas → Proyectos → Orden de Trabajo

## Pestañas

### Orden de Trabajo

Información principal de la orden de trabajo.

#### Campos

| Campo | Descripción | Tipo | Obligatorio |
|-------|-------------|------|-------------|
| Clave de Búsqueda | Número o clave de la orden de trabajo | Texto | Sí |
| Nombre | Descripción de la orden de trabajo | Texto | Sí |
| Descripción | Descripción detallada | Texto | No |
| Tipo de Proyecto | Tipo de proyecto asociado | Tabla Directa | No |
| Socio de Negocio | Cliente o contraparte | Búsqueda | No |
| Localización | Dirección del socio de negocio | Tabla | No |
| Gerente del Proyecto | Responsable de la orden de trabajo | Tabla | No |
| Moneda | Moneda de la orden de trabajo | Tabla | No |
| Fecha de Inicio Programada | Fecha programada de inicio | Fecha | No |
| Fecha de Fin Programada | Fecha programada de finalización | Fecha | No |
| Monto del Contrato | Monto contratado | Monto | No |
| Monto Planificado | Monto planificado de trabajo | Monto | No |
| Estado | Estado actual de la orden de trabajo | Tabla Directa | No |

### Línea de Orden de Trabajo

Detalle de materiales, servicios o recursos requeridos en la orden de trabajo.

#### Campos

| Campo | Descripción | Tipo | Obligatorio |
|-------|-------------|------|-------------|
| Línea | Número de línea | Entero | No |
| Producto | Producto o servicio a utilizar | Búsqueda | No |
| Descripción | Descripción de la línea | Texto | No |
| Cantidad Planificada | Cantidad planificada | Número | No |
| Precio Planificado | Precio unitario planificado | Monto | No |
| Monto Planificado | Monto total planificado de la línea | Monto | No |
| Cantidad Entregada | Cantidad realmente entregada/utilizada | Número | No |
| Monto Facturado | Monto facturado de la línea | Monto | No |
