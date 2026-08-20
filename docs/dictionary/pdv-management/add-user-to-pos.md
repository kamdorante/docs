---
title: Agregar un Usuario a Punto de Venta
category: Documentation
star: 9
sticky: 9
article: false
---

# Agregar un Usuario a Punto de Venta

## Descripción

Habilitar a un usuario para que opere una **Terminal PDV** no consiste solo en asignarlo a la terminal: el sistema requiere que el usuario esté enlazado a un **Socio del Negocio** que además esté marcado como **Agente Comercial** (representante de ventas). Sin ese enlace, el usuario **no aparece** en la lista de agentes comerciales seleccionables en la pestaña *Vendedores Asignados* de la terminal.

Este documento describe el flujo completo de habilitación de un usuario en una terminal PDV, cubriendo las tres piezas que deben quedar conectadas:

1. **Socio del Negocio** con marca *Empleado* y *Agente Comercial*.
2. **Contacto (Usuario)** del Socio del Negocio enlazado al usuario existente.
3. **Vendedores Asignados** de la terminal PDV donde va a operar el usuario, con la configuración de permisos operativos correspondiente.

::: tip
Si al intentar asignar un usuario a *Vendedores Asignados* no aparece en el desplegable de *Agente Comercial*, casi siempre es porque falta el Socio del Negocio con la marca de Agente Comercial o porque el usuario no está enlazado como contacto de ese SDN. Los tres pasos deben quedar completos para que el enlace funcione.
:::

## ¿Cuándo se utiliza?

Se utiliza cuando la organización necesita:

- Dar de alta a un **nuevo cajero o vendedor** para que opere una terminal PDV.
- Habilitar a un usuario existente para una **terminal adicional** en la que aún no puede operar.
- Corregir la situación en la que un usuario ya creado no aparece en el desplegable de agentes comerciales de una terminal.

## Acceso

El flujo involucra tres ventanas distintas del sistema:

- **Socio del Negocio** — Gestión de Ventas → Gestión de Ventas CRM → **Socio del Negocio** (o desde su equivalente en el menú de socios).
- **Usuario** (opcional, si el usuario aún no existe) — Gestión del Sistema → Seguridad → **Usuario**.
- **Terminal PDV** — Menú de configuración PDV → **Terminal PDV** → seleccionar la terminal → pestaña *Vendedores Asignados*.

## Configuración previa

- El **usuario** que se va a habilitar debe existir en el sistema con su contraseña definida y su rol asignado. Si no existe, se crea antes de comenzar el flujo (fuera del alcance de este documento).
- La **terminal PDV** donde va a operar el usuario debe estar dada de alta.
- El operador que ejecuta el alta debe tener rol con permisos sobre las ventanas **Socio del Negocio** y **Terminal PDV** (habitualmente el rol *Administrador*).

## Flujo del proceso

### 1. Crear el Socio del Negocio del usuario

Abrir la ventana **Socio del Negocio** y crear un nuevo registro con los datos del usuario:

- **Razón Social** y **Nombre Fantasía** (o al menos la Razón Social) que identifiquen al usuario.
- **Grupo de Socio del Negocio** apropiado (por ejemplo, un grupo *Empleados*).
- **Organización** correspondiente.
- **Activo** = *Sí*.

En la solapa superior o en la pestaña principal del socio, marcar **Empleado = Sí**. Guardar.

::: warning
Si el usuario también va a poder actuar como *Cliente* o *Proveedor*, marcar además esas casillas. Para uso exclusivo como vendedor de PDV alcanza con la marca de Empleado.
:::

### 2. Marcar el Socio del Negocio como Agente Comercial

Dentro del Socio del Negocio recién creado, abrir la pestaña **Empleado** y marcar la casilla **Agente Comercial = Sí**. Guardar.

Este paso es el que hace que el registro aparezca posteriormente como opción válida en el desplegable *Agente Comercial* al asignarlo a la terminal PDV.

### 3. Enlazar el usuario como Contacto del Socio del Negocio

Dentro del mismo Socio del Negocio, ir a la pestaña **Contacto (Usuario)**. Crear un nuevo contacto con:

- **Nombre** del contacto (habitualmente el mismo nombre del usuario para facilitar la trazabilidad).
- **Código** = el mismo login del usuario del sistema.
- **Socio del Negocio** = el registro que se está creando (se auto-completa al estar dentro de la pestaña).
- **Email** del usuario.
- **Contraseña** (si aplica según la política de seguridad de la instancia).
- **Activo** = *Sí*.

En este mismo formulario debe quedar el **enlace** al usuario existente en el sistema. En instancias donde ese enlace se hace mediante el campo *Socio del Negocio* dentro de la ventana **Usuario**, alternativamente se puede editar el usuario y apuntarlo al SDN recién creado. En cualquier caso, la relación queda: `Usuario ↔ Contacto ↔ Socio del Negocio (Agente Comercial)`.

### 4. Abrir la Terminal PDV correspondiente

Ir a **Terminal PDV**, filtrar por el nombre de la caja o terminal en la que se quiere habilitar al usuario (por ejemplo, *Caja 1* de una sucursal) y abrir el registro.

### 5. Agregar el vendedor en la pestaña Vendedores Asignados

Dentro de la terminal, ir a la pestaña **Vendedores Asignados** y pulsar **Nuevo**. Completar:

| Campo | Descripción | Obligatorio |
|-------|-------------|-------------|
| Secuencia | Orden en la lista de vendedores asignados a la terminal | Sí |
| Terminal PDV | Terminal a la que se asigna el vendedor (auto-completado) | Sí |
| Agente Comercial | Socio del Negocio marcado como Agente Comercial (paso 2) | Sí |
| Organización | Organización a la que se asocia esta asignación | Sí |
| Activo | Marcar en *Sí* para habilitar al vendedor | Sí |

Al abrir el desplegable **Agente Comercial**, buscar por parte del nombre del contacto: debe aparecer el registro creado en los pasos 1-3. Si no aparece, revisar que el SDN tenga *Empleado = Sí* y *Agente Comercial = Sí*.

### 6. Definir los permisos operativos del vendedor

En el mismo registro de la pestaña *Vendedores Asignados* se configuran los **permisos** que va a tener el vendedor sobre la terminal. Los principales son:

- **% Descuento Máximo** — Descuento máximo que el vendedor puede aplicar.
- **Reembolso Máximo Diario Permitido** — Tope de devoluciones diarias.
- **Tolerancia para Ajustar Documentos** — Margen para ajustes.
- **Permitir Aplicar Descuento (Por Documento)**
- **Permitir Modificar Descuento (Por Línea)**
- **Permitir Modificar Cantidad**
- **Permitir Modificar el Precio**
- **Permitir Apertura de Caja**
- **Permitir Cierre de Caja**
- **Permitir Retiro de Caja**
- **Permitir Cobrar**
- **Permitir Crear Orden**
- **Permitir Crear Cliente**
- **Permitir Devolución**
- **Permitir Imprimir Documento**
- **Permitir Confirmar Entrega**
- **Permitir Confirmar Entrega por Documento**

Cada casilla se marca según el nivel de responsabilidad del vendedor (por ejemplo, un cajero junior puede tener *Permitir Retiro de Caja = No* y *Permitir Devolución = No*, mientras que un supervisor los tiene en *Sí*).

Guardar.

### 7. Validar el ingreso a la terminal

El usuario ahora puede iniciar sesión con su cuenta en la aplicación de PDV y seleccionar la terminal donde fue asignado. Solo va a poder operar dentro de los límites que definen los permisos configurados.

## Ejemplo de uso

Dar de alta un nuevo cajero (con usuario ya creado en el sistema) para operar en la Caja 1 de una sucursal:

1. Abrir **Socio del Negocio**, crear el registro con la Razón Social del cajero, marcar *Empleado = Sí*, *Activo = Sí*. Guardar.
2. Ir a la pestaña **Empleado** del SDN y marcar **Agente Comercial = Sí**. Guardar.
3. Ir a la pestaña **Contacto (Usuario)**, crear el contacto usando el mismo *Código* que el login del usuario, cargar el email y (si aplica) la contraseña. Confirmar que el enlace con el usuario del sistema queda establecido.
4. Abrir **Terminal PDV** y localizar la Caja 1 de la sucursal.
5. En la pestaña **Vendedores Asignados**, pulsar **Nuevo**. Completar:
   - Secuencia = siguiente disponible.
   - Agente Comercial = el SDN creado en el paso 1.
   - Organización = la sucursal.
   - Activo = *Sí*.
6. Marcar los permisos correspondientes al perfil del cajero (por ejemplo, *Permitir Cobrar*, *Permitir Aplicar Descuento*, *Permitir Cierre de Caja*, pero *Permitir Devolución = No* si no está autorizado).
7. Guardar. El cajero puede ingresar a la aplicación de PDV con su usuario y trabajar sobre la Caja 1.

## Consideraciones importantes

- La razón más común por la que el usuario **no aparece** en el desplegable *Agente Comercial* de la terminal es que **falta la marca de Agente Comercial** en la pestaña Empleado del SDN, o que el usuario **no está enlazado** al SDN como contacto. Ambas piezas son obligatorias.
- El **Código del Contacto** debe coincidir con el login del usuario del sistema para que el enlace usuario–SDN sea coherente. Discrepancias en este campo son fuente frecuente de errores de asignación.
- Los **permisos** se definen a nivel de la línea de *Vendedores Asignados* — es decir, por combinación *usuario + terminal*. Un mismo usuario puede tener permisos distintos en distintas terminales, si opera en más de una.
- La casilla **Activo** de la línea de *Vendedores Asignados* permite deshabilitar temporalmente a un vendedor en una terminal sin borrarlo. Al reactivarlo, los permisos configurados se mantienen.
- Este flujo aplica también para **habilitar a un usuario en una terminal adicional**: si el SDN + contacto ya existen, alcanza con el paso 5 (agregar la línea en Vendedores Asignados de la nueva terminal).
- La creación del **usuario** en la ventana de Seguridad es un paso previo independiente. Este documento asume que el usuario ya existe; si no existe, crearlo antes con su rol, contraseña y organización habilitada.
- Los cambios en permisos tienen efecto en la **próxima sesión** del usuario en la terminal. Si el vendedor está operando en ese momento, conviene pedirle que cierre y vuelva a ingresar.

## Ventanas relacionadas

- [Solicitud](../customer-relationship-management/request)
- [Información del Agente Comercial](../customer-relationship-management/sales-rep-info)
- [Cliente](../sales-management/sales-management-crm/customer)
- [Retiro y Depósito Automáticos al Cerrar Caja POS](../balance-management/bank-operations/auto-deposit-on-pos-cash-close)
