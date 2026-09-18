---
title: Crear Nuevo Cliente desde una Orden de Venta o Documento por Cobrar
category: Documentation
star: 9
sticky: 9
article: false
---

# Crear Nuevo Cliente desde una Orden de Venta o Documento por Cobrar

## Descripción

Cuando se registra una **Orden de Venta** o un **Documento por Cobrar** para un cliente que **aún no existe** en el sistema, Solop permite crear el **Socio de Negocio** al vuelo desde un **modal** que aparece directamente sobre la ventana del documento. Es una alternativa rápida a interrumpir la operación, cerrar el documento, ir a la ventana de Socio de Negocio, cargar el cliente y regresar.

La acción se llama **Crear Nuevo Cliente** y se accede desde el ícono de acciones del campo *Socio del Negocio*. Al ejecutarla, se abre un modal que reúne en una sola pantalla los datos básicos del cliente y su dirección.

::: tip Regla operativa clave
Para que la Orden de Venta (o Documento por Cobrar) se pueda **completar** más adelante, el Socio de Negocio creado desde el modal debe tener cargada la **dirección con Ciudad**. El campo **Ciudad** es el que el sistema valida al momento de completar; sin ese dato, el documento queda bloqueado y hay que volver al SDN a agregarlo.
:::

## ¿Cuándo se utiliza?

Se utiliza cuando la organización necesita:

- Emitir una **Orden de Venta** a un cliente que se está atendiendo por primera vez.
- Registrar un **Documento por Cobrar** a un cliente que aún no está dado de alta en el sistema.
- Dar de alta el cliente **sin interrumpir el flujo** para cambiar de ventana.
- Asegurar que el SDN queda cargado con la **dirección** (y en particular con **Ciudad**) desde el mismo momento de la creación, para no bloquear el documento al momento de completarlo.

## Acceso

Existen dos puntos de entrada equivalentes al mismo modal:

- **Orden de Venta** — Menú: Gestión de Ventas → Órdenes de Venta → **Orden de Venta** → en el campo **Socio del Negocio**, abrir el menú del ícono de acciones y seleccionar **Crear Nuevo Cliente**.
- **Documento por Cobrar** (Factura Cliente) — Menú: Gestión de Ventas → Facturas de Venta → **Factura (Cliente)** → en el campo **Socio del Negocio**, abrir el menú del ícono de acciones y seleccionar **Crear Nuevo Cliente**.

El menú del campo contiene además otras acciones estándar (*Acercar*, *Información del Socio*, *Refrescar*, *Bitácora de Cambios*, *Información*); la que dispara la creación es **Crear Nuevo Cliente**.

## Configuración previa

- El usuario debe tener permiso para **crear socios de negocio** desde la ventana en cuestión. Un rol solo con permiso de operación —sin permiso de alta de maestros— no ve la opción *Crear Nuevo Cliente* en el menú de acciones.
- Deben existir los datos maestros que el modal necesita: **Grupo de Socio del Negocio**, **Grupo de Impuestos**, **País**, **Ciudad** y **Región** (si aplica) del cliente.
- Para reutilizar el cliente en emisiones posteriores, conviene tener definidos previamente la **Lista de Precios** y el **Término de Pago** que apliquen (aunque estos se cargan en la orden, no en el modal).

## Modal *Crear Nuevo Cliente*

El modal está dividido en dos bloques: **datos del cliente** y **dirección** (esta última se despliega al pulsar *Agregar Dirección*).

### Datos del cliente

Campos del bloque principal del modal:

| Campo | Descripción | Obligatorio |
|-------|-------------|-------------|
| Código | Clave de búsqueda del cliente en el sistema | Sí |
| Nro. Identificación | Identificación tributaria (RUT, cédula, etc.) | Recomendado |
| Grupo Impuesto | Grupo de impuestos que aplica al cliente | Sí |
| Nombre | Nombre o razón social del cliente | Sí |
| Business Partner Group | Grupo de socio de negocio (categoría comercial) | Sí |
| Límite de Crédito | Tope de crédito autorizado al cliente | No |
| Crédito Usado | Se calcula automáticamente en base a los documentos abiertos | No (calculado) |

### Dirección

Al pulsar **Agregar Dirección** se despliega el bloque de dirección con los siguientes campos:

| Campo | Descripción | Obligatorio |
|-------|-------------|-------------|
| Nombre de Referencia | Identificador interno de la dirección (por ejemplo, *"Fiscal"*, *"Depósito"*) | No |
| Dirección 1 / 2 / 3 / 4 | Líneas de la dirección (calle, número, piso, etc.) | Recomendado |
| **Ciudad** | Ciudad de la dirección — **campo obligatorio para completar el documento** | Sí |
| Código Postal | Código postal | No |
| State / Región | Región o estado del país | Depende del país |
| País | País de la dirección; el valor por defecto proviene del idioma del navegador (ver *País por Defecto al Crear Localización*) | Sí |
| Dirección de Envío | Marca la dirección como dirección de envío del cliente | Sí (uno de los dos) |
| Dirección de Facturación | Marca la dirección como dirección de facturación del cliente | Sí (uno de los dos) |

::: warning
El sistema permite guardar el modal sin cargar **Ciudad**, pero al ir a **Completar** la Orden de Venta o el Documento por Cobrar el sistema emite un error de validación de localización. Cargar **Ciudad** desde el modal es la forma más rápida de evitar volver al SDN a agregarla.
:::

## Flujo del proceso

### 1. Iniciar la Orden de Venta o el Documento por Cobrar

Abrir la ventana **Orden de Venta** (o **Factura Cliente**) y crear un nuevo registro, completando *Tipo de Documento Destino*, *Organización*, *Fecha*, *Moneda*, etc.

### 2. Abrir el menú de acciones del campo Socio del Negocio

En el campo **Socio del Negocio**, abrir el menú desplegable del ícono de acciones (a la derecha del campo). Se muestran las opciones *Acercar*, **Crear Nuevo Cliente**, *Información del Socio*, *Refrescar*, *Bitácora de Cambios*, *Información*. Seleccionar **Crear Nuevo Cliente**.

### 3. Completar los datos del cliente en el modal

Rellenar los campos del bloque principal: **Código**, **Nombre**, **Business Partner Group**, **Grupo Impuesto**, y —si aplica— **Nro. Identificación** y **Límite de Crédito**.

### 4. Agregar la dirección con Ciudad

Pulsar **Agregar Dirección** para desplegar el bloque de dirección. Completar como mínimo:

- **Ciudad** (obligatoria para poder completar el documento).
- **País** (viene por defecto según el idioma del navegador; ajustar si corresponde).
- Al menos una casilla de **Dirección de Envío** o **Dirección de Facturación** marcada.
- Recomendado: **Dirección 1**, **State/Región** y **Código Postal**.

### 5. Guardar el modal

Guardar (Alt + Enter o pulsando el tick verde). El sistema crea el Socio de Negocio con su Localización y devuelve el SDN seleccionado en la Orden de Venta / Documento por Cobrar.

### 6. Completar el resto del documento

De regreso en la ventana:

- Ajustar **Lista de Precios**, **Agente Comercial** y **Término de Pago** según corresponda.
- Agregar las **líneas** con los productos.
- Ejecutar **Completar**. El documento pasa a *Completo* sin errores.

## Ejemplo de uso

Emitir una Orden de Venta a un cliente que llega por primera vez:

1. En **Orden de Venta**, crear una nueva orden con *Tipo de Documento Destino = Orden de Venta*, *Organización = la que corresponda*, *Fecha = hoy*, *Moneda = UYU*.
2. En el campo **Socio del Negocio**, abrir el menú del ícono de acciones y seleccionar **Crear Nuevo Cliente**.
3. En el modal, cargar:
   - **Código**: el que la organización asigne.
   - **Nombre**: razón social del cliente.
   - **Business Partner Group**: el grupo comercial que corresponda.
   - **Grupo Impuesto**: el grupo fiscal que corresponda.
4. Pulsar **Agregar Dirección** y cargar como mínimo:
   - **Ciudad**: la ciudad del cliente (obligatoria).
   - **País**: ajustar si el default no corresponde.
   - Marcar **Dirección de Envío** y/o **Dirección de Facturación**.
5. Guardar el modal.
6. De regreso en la orden, asignar **Lista de Precios**, **Agente Comercial**, **Término de Pago**. Guardar.
7. Ir a **Líneas de la Orden**, agregar el producto y la cantidad. Guardar.
8. Ejecutar **Completar**. La orden pasa a *Completo* sin errores de validación de localización.

## Consideraciones importantes

- El campo **Ciudad** es el que el sistema exige para completar el documento. Aunque el modal permite guardar sin cargar Ciudad, hacerlo obliga a volver al SDN a agregarla antes de poder completar la orden o la factura.
- El modal se dispara desde **Orden de Venta** y desde **Documento por Cobrar (Factura Cliente)**; el flujo es el mismo en ambos casos y el SDN creado sirve para futuros documentos.
- El bloque de dirección se despliega solo al pulsar **Agregar Dirección**. Si el modal se guarda sin desplegarlo, el SDN queda sin Localización y al completar el documento el sistema emite el mismo error.
- El país por defecto de la dirección proviene de la configuración de idioma del navegador. Para el detalle del mecanismo y cómo cambiarlo, ver [País por Defecto al Crear Localización de Socio del Negocio](../../customer-relationship-management/default-country-in-business-partner-locations).
- Marcar las casillas **Dirección de Envío** y **Dirección de Facturación** determina cómo se usa la dirección en documentos posteriores (entregas, facturas). Se puede marcar una, la otra o ambas; si el cliente tendrá direcciones separadas, se cargan más tarde desde la ventana *Socio de Negocio* → pestaña *Localización*.
- El SDN creado desde el modal **queda como cualquier otro socio de negocio** en el sistema: es reutilizable, se le pueden agregar datos adicionales (bancos, retenciones, contactos, direcciones adicionales) desde la ventana de Socio de Negocio.
- Si el usuario **no tiene permiso** para crear socios de negocio, la opción *Crear Nuevo Cliente* no aparece en el menú del campo. Solicitar el alta al administrador o a un rol con permiso.
- El modal se puede **cancelar** con el botón rojo o cerrando la ventana: si se cancela, el SDN no se crea y la orden queda sin cliente asignado.

## Ventanas relacionadas

- [Orden de Venta](sales-order)
- [Factura (Cliente)](../sales-invoices/invoice-customer)
- [Cliente](../sales-management-crm/customer)
- [País por Defecto al Crear Localización de Socio del Negocio](../../customer-relationship-management/default-country-in-business-partner-locations)
- [Generar Localización de Socio del Negocio](../../customer-relationship-management/generate-business-partner-localization)
