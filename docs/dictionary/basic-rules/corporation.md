---
title: Corporación
category: Documentation
star: 9
sticky: 9
article: false
---

# Corporación

## Descripción

La ventana **Corporación** define agrupaciones lógicas de organizaciones que pertenecen a un mismo grupo empresarial. Una corporación reúne dos o más organizaciones bajo un identificador común y permite emitir reportes consolidados (por ejemplo, el **Estado de Cuenta Corriente**) que abarquen los movimientos de todas las organizaciones asociadas a la vez.

Esta funcionalidad es útil cuando la organización opera con múltiples sucursales, sociedades o unidades de negocio dentro del mismo grupo y necesita presentar al cliente o proveedor una visión unificada de la cuenta corriente, sin perder la posibilidad de filtrar por una sola organización cuando corresponda.

## ¿Cuándo se utiliza?

Se utiliza cuando la organización necesita:

- Agrupar varias organizaciones bajo un mismo grupo empresarial para reportes consolidados.
- Presentar la cuenta corriente unificada de un cliente o proveedor que opera con varias sucursales.
- Habilitar el filtro de **Corporación** en el reporte **Estado de Cuenta Corriente**.
- Mantener una identificación común para socios comerciales que reúnen ventas o compras de varias organizaciones.

## Acceso

Existen dos formas de configurar la corporación:

1. **Desde el menú:** Reglas Básicas → Corporación.
2. **Desde la organización:** ventana **Organización → Información de la Organización** → campo *Corporación*.

## Pestañas

### Corporación

Pestaña principal con los datos básicos del agrupador. Los campos relevantes son:

- **Nombre**
  Identificador descriptivo de la corporación (por ejemplo, el nombre del grupo empresarial).

- **Descripción**
  Texto opcional con información adicional sobre la corporación.

- **Activo**
  Indicador que controla si la corporación se puede usar en filtros y selecciones. Las corporaciones inactivas no aparecen en los reportes.

### Organizaciones

Pestaña que lista las organizaciones enlazadas a la corporación. La asociación se realiza desde la ventana **Organización → Información de la Organización**, indicando la corporación en el campo correspondiente; las relaciones se reflejan automáticamente aquí.

Información que muestra cada línea:

- **Organización**
  Nombre de la organización vinculada.

- **Activa**
  Estado de la organización dentro del sistema.

## Acciones disponibles

- **Crear Corporación**
  Define un nuevo agrupador con su nombre y descripción.

- **Asociar Organización**
  Acción que se ejecuta desde la ventana **Organización**: editar el campo *Corporación* en *Información de la Organización* y guardar. La organización aparece automáticamente en la pestaña *Organizaciones* de la corporación.

- **Activar / Desactivar**
  Controla la disponibilidad de la corporación para filtros y reportes.

## Flujo del proceso

### 1. Crear la corporación

Desde **Reglas Básicas → Corporación**, crear un nuevo registro con el nombre del grupo empresarial. Guardar.

### 2. Enlazar organizaciones

Para cada organización que debe formar parte de la corporación, abrir **Organización → Información de la Organización** y completar el campo *Corporación* con el agrupador creado en el paso anterior. Guardar.

### 3. Verificar las asociaciones

Volver a la ventana **Corporación** y abrir la pestaña *Organizaciones*. Confirmar que aparecen todas las organizaciones enlazadas.

### 4. Usar la corporación en reportes

Ejecutar reportes que admiten filtro por corporación (por ejemplo, **Estado de Cuenta Corriente**) seleccionando la corporación en lugar de una organización individual. El reporte consolida los movimientos de todas las organizaciones asociadas.

### 5. Mantener la corporación

Si se agregan o quitan organizaciones del grupo empresarial, actualizar el campo *Corporación* en cada organización. La pestaña *Organizaciones* refleja los cambios automáticamente.

## Ejemplo de uso

Una empresa opera con cuatro sucursales como sociedades independientes en el sistema y necesita reportes consolidados:

1. Crear la corporación con el nombre del grupo en **Reglas Básicas → Corporación**.
2. Abrir cada una de las cuatro organizaciones y, en *Información de la Organización*, asignar el campo *Corporación*. Guardar.
3. Verificar en la ventana **Corporación**, pestaña *Organizaciones*, que figuran las cuatro.
4. Ejecutar el reporte **Estado de Cuenta Corriente** filtrando por la corporación. El reporte presenta los movimientos del cliente seleccionado en las cuatro organizaciones, con un acumulado consolidado.

## Consideraciones importantes

- La asociación entre organización y corporación se hace desde la **ventana de la organización**, no desde la pestaña *Organizaciones* de la corporación. Esa pestaña es de solo lectura: refleja los enlaces ya configurados.
- Una organización puede pertenecer a una sola corporación a la vez. Si ya está asociada a una y se asigna otra, el enlace anterior se reemplaza.
- Las corporaciones **inactivas** no aparecen en los selectores de filtro de los reportes; usar el indicador *Activo* para gestionar disponibilidad sin borrar el registro.
- El reporte **Estado de Cuenta Corriente** exige seleccionar **Organización o Corporación, pero no ambas ni ninguna**. Esto garantiza un alcance claro al ejecutar el consolidado o el detalle individual.
- Si una organización no aparece en la pestaña *Organizaciones* de la corporación, verificar que el campo *Corporación* esté efectivamente guardado en la información de esa organización.
- Las corporaciones se pueden crear y mantener sin afectar la operativa diaria: solo intervienen al ejecutar reportes que las filtran. Se pueden agregar o reorganizar sin riesgo de romper movimientos existentes.

## Ventanas relacionadas

- [Estado de Cuenta Corriente](../balance-management/payments-and-receipts/account-status)
