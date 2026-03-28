---
title: Gestión de Permisos
category: Documentation
star: 9
sticky: 9
article: false
---

# Gestión de Permisos

La **Gestión de Permisos** permite administrar todas las licencias, vacaciones y permisos de los empleados de la organización. Desde la configuración de los tipos de permiso y sus reglas, hasta la solicitud individual y la generación automática de vacaciones, este módulo cubre el ciclo completo de la gestión de ausencias.

## Flujo general

El módulo trabaja con un flujo de cuatro pasos:

1. **Configurar los tipos de permiso** en la ventana [Tipo de Permiso](./leave-type). Aquí se definen las reglas: cuántos días corresponden, si es remunerado, si se repite anualmente, si aplica solo en días hábiles, etc.

2. **Definir los motivos** en la ventana [Motivos de Permiso](./leave-reasons). Los motivos son las razones específicas asociadas a cada tipo (por ejemplo, "Accidente Laboral" para licencias médicas).

3. **Asignar permisos a los empleados**. Al asignar un Tipo de Empleado en la ficha del empleado, el sistema carga automáticamente todos los tipos de permiso correspondientes en la pestaña **Detalle de Permiso**, con las cantidades permitidas.

4. **Solicitar permisos**. El empleado (o su supervisor) crea una [Solicitud de Permiso](./leave-request) indicando el tipo, motivo, fechas y cantidad de días. El sistema valida contra el saldo disponible y gestiona la aprobación.

Para permisos repetitivos como las vacaciones anuales, el proceso [Crear Permiso Repetido](./create-repeated-leave) puede configurarse para generar automáticamente las solicitudes al cumplirse el aniversario del empleado.

## Componentes

| Componente | Tipo | Descripción |
|-----------|------|-------------|
| [Tipo de Permiso](./leave-type) | Ventana | Configura las reglas de cada tipo de permiso: frecuencia, unidad, duración, incrementos y restricciones |
| [Motivos de Permiso](./leave-reasons) | Ventana | Catálogo de razones para las solicitudes de permiso |
| [Solicitud de Permiso](./leave-request) | Ventana | Documento transaccional para registrar y aprobar solicitudes de permiso |
| [Crear Permiso Repetido para Empleado](./create-repeated-leave) | Proceso | Genera automáticamente permisos recurrentes (vacaciones, etc.) basado en la frecuencia configurada |

## Prerrequisitos

- Los empleados deben tener un **Tipo de Empleado** asignado en su ficha para que se les carguen los permisos disponibles
- Los tipos de permiso deben estar vinculados a los tipos de empleado correspondientes (pestaña "Tipo de Permiso por Tipo de Empleado")
- Para la generación automática de permisos repetitivos, el **Programador de Tareas** debe estar configurado y activo con el proceso "Crear Permiso Recurrente" ejecutándose diariamente
