---
title: Empleado
category: Documentation
star: 9
sticky: 9
article: false
---

# Empleado

## Descripción

Ventana para el mantenimiento de empleados de nómina. La ventana de Empleados es utilizada para definir los empleados en la estructura organizacional de la empresa. Gestiona tanto la información del socio del negocio como los datos específicos del empleado.

## Acceso

Menú: Recursos Humanos y Nómina → Recursos Humanos → Empleado

## Pestañas

### Socio del Negocio

Pestaña principal con la información del socio del negocio del empleado (solo muestra socios marcados como empleados).

#### Campos

| Campo | Descripción | Tipo | Obligatorio |
|-------|-------------|------|-------------|
| Clave de Búsqueda | Clave de búsqueda única del empleado | Texto | Sí |
| Nombre | Nombre completo del empleado | Texto | Sí |
| Nombre 2 | Nombre adicional o apellido | Texto | No |
| Descripción | Descripción opcional del registro | Texto | No |
| Empleado | Indica que el socio del negocio es un empleado | Sí/No | No |
| Tipo de Empleado | Clasificación del empleado | Lista | No |

### Empleado

Información específica de nómina del empleado.

#### Campos

| Campo | Descripción | Tipo | Obligatorio |
|-------|-------------|------|-------------|
| Contrato de Nómina | Contrato de nómina asignado al empleado | Tabla Directa | No |
| Departamento de Nómina | Departamento de nómina del empleado | Tabla Directa | No |
| Puesto de Nómina | Puesto de nómina del empleado | Tabla Directa | No |
| Fecha de Inicio | Fecha de inicio de la relación laboral | Fecha | No |
| Fecha de Fin | Fecha de fin de la relación laboral | Fecha | No |
| Días de Vacaciones | Días de vacaciones disponibles | Entero | No |
| Días Usados | Días de vacaciones utilizados | Entero | No |
| Imagen | Fotografía del empleado | Texto | No |

### Contabilidad del Empleado

Cuentas contables predeterminadas para el reembolso de gastos del empleado.

### Atributo

Atributos adicionales del empleado de nómina (conceptos de nómina personalizados).

### Cuenta Bancaria

Información bancaria del empleado para el pago de nómina.

### Ubicación

Dirección física del empleado.

### Contacto (Usuario)

Usuario del sistema asociado al empleado para acceso interno.

## Ventanas Relacionadas

- [Categoría de Puesto](position-category)
- [Puesto](position)
