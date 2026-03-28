---
title: Motivos de Permiso
category: Documentation
star: 9
sticky: 9
article: false
---

# Motivos de Permiso

## Descripción

La ventana **Motivos de Permiso** permite definir el catálogo de razones por las cuales un empleado puede solicitar un permiso o licencia. Los motivos son informativos y sirven para clasificar las solicitudes, facilitando el seguimiento y la generación de reportes.

Cada motivo está asociado a un [Tipo de Permiso](./leave-type), lo que permite organizar las razones por categoría. Por ejemplo, el tipo "Licencia Médica" puede tener motivos como "Accidente Laboral", "Accidente Extralaboral" o "Enfermedad General".

## ¿Cuándo se utiliza?

Se utiliza cuando se necesita:

- Crear o modificar los motivos disponibles para las solicitudes de permiso
- Asociar motivos específicos a un tipo de permiso existente
- Revisar el catálogo de motivos configurados en el sistema

Casos típicos:
- Agregar el motivo "Donación de Sangre" al tipo de permiso correspondiente
- Crear motivos para licencias médicas: "Accidente Laboral", "Enfermedad"
- Definir motivos para ausencias: "Injustificado", "Trámites Legales"

## Acceso

Menú: Gestión de Recursos Humanos y Nómina → Gestión de Permisos → Motivos de Permiso

## Pestañas

### Motivos de Permiso

Pestaña única donde se definen los motivos. Los campos principales son:

- **Tipo de Permiso**
  El tipo de permiso al que pertenece este motivo. Es obligatorio y establece la relación entre el motivo y su categoría.

- **Clave de Búsqueda**
  Código único que identifica al motivo en el sistema.

- **Nombre**
  Nombre descriptivo del motivo (por ejemplo, "Licencia por Maternidad").

- **Descripción**
  Texto adicional que explica el motivo en mayor detalle.

## Consideraciones importantes

- Tanto el **Tipo de Permiso** como el **Motivo** son obligatorios al momento de crear una solicitud de permiso
- Los motivos son una tabla sencilla de referencia; no definen reglas de negocio (las reglas se configuran en el [Tipo de Permiso](./leave-type))
- Se pueden agregar nuevos motivos en cualquier momento sin afectar los permisos ya registrados

## Ejemplo de uso

Para el tipo de permiso "Licencia Médica", se pueden crear los siguientes motivos:
- **Accidente Laboral** - Para accidentes ocurridos durante la jornada de trabajo
- **Accidente Extralaboral** - Para accidentes fuera del ámbito laboral
- **Enfermedad General** - Para enfermedades que requieran reposo médico
