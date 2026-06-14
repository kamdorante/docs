---
title: Cargo
category: Documentation
star: 9
sticky: 9
article: false
---

# Cargo

## Descripción

La ventana **Cargo** define los conceptos contables que se utilizan en documentos transaccionales (facturas, pagos, cobros, líneas del estado de cuenta, etc.) cuando lo que se factura o se paga **no corresponde a un producto del catálogo**, sino a un concepto puntual: comisiones bancarias, intereses, redondeos, rechazos de cheque, pagos a organismos fiscales, gastos varios, etc.

Cada cargo está vinculado a un **Tipo de Cargo** y a las **cuentas contables** que determinan cómo se contabilizará al usarse. Además, el sistema controla **en qué tipos de documento aparece** el cargo a partir de una relación entre su tipo de cargo y los tipos de documento que el sistema acepta para ese concepto. Esta lógica es clave para que los cargos correctos aparezcan en cada ventana o visor (por ejemplo, en *Crear Pagos desde Estado de Cuenta* solo aparecen los cargos cuyo tipo de cargo está habilitado para el tipo de documento *Estado de Cuenta Bancario*).

## ¿Cuándo se utiliza?

Se utiliza cuando la organización necesita:

- Definir un nuevo concepto contable que se factura, paga o cobra (comisión, interés, redondeo, gasto, retención específica, etc.).
- Asociar el concepto a un tipo de cargo y a las cuentas contables que se moverán al usarlo.
- Habilitar el concepto para que aparezca como opción en ciertos tipos de documento (por ejemplo, en cargos bancarios o rechazos de cheque).
- Mantener un catálogo de cargos compartido por toda la operativa contable.

## Acceso

Menú: **Gestión Contable → Reglas Contables → Cargo**

## Pestañas

### Cargo

Pestaña principal con los datos del cargo. Los campos relevantes son:

- **Nombre**
  Identificador descriptivo del cargo (por ejemplo, *Comisiones Bancarias*, *Rechazo de Cheques*, *DGI a Pagar*).

- **Descripción**
  Texto opcional con información adicional.

- **Tipo de Cargo**
  Clasificación del cargo. Es la pieza clave: el tipo de cargo determina **en qué tipos de documento** el cargo aparece como opción. Un mismo tipo de cargo puede agrupar varios cargos (por ejemplo, un tipo de cargo *Bancario* puede agrupar *Comisiones Bancarias*, *Intereses Bancarios*, *Mantenimiento de Cuenta*).

- **Categoría de Impuesto**
  Categoría fiscal aplicable al cargo (IVA Básico, Exento, etc.).

- **Cargo de Mismo Impuesto que el Documento**
  Indica si el cargo hereda el impuesto del documento donde se usa o aplica su propia categoría.

- **Activo**
  Indicador para habilitar o deshabilitar el cargo sin eliminarlo.

### Contabilidad

Cuentas contables asociadas al cargo. Definen el asiento que se genera al utilizar el cargo en un documento (gasto, ingreso o cuenta puente, según corresponda).

## Configuración relacionada: Tipo de Cargo

El **Tipo de Cargo** es el agrupador que determina la visibilidad. Cada Tipo de Cargo se asocia a uno o varios **Tipos de Documento** desde la ventana **Tipo de Documento**, pestaña *Tipo de Cargo por Tipo de Documento*. Esta relación es la que controla en qué documentos aparece cada cargo.

### Regla de visibilidad

Para que un cargo aparezca como opción dentro de un tipo de documento (factura, pago, cobro, estado de cuenta bancario, etc.), debe cumplirse:

1. El cargo tiene asignado un **Tipo de Cargo**.
2. Ese Tipo de Cargo está asignado al **Tipo de Documento** que se está utilizando.

Si el cargo no tiene Tipo de Cargo asignado, **no aparece en ningún documento**. Si el Tipo de Cargo no incluye el Tipo de Documento donde se busca usarlo, el cargo tampoco aparece allí.

## Acciones disponibles

- **Crear Cargo**
  Crear un nuevo registro con su nombre, tipo de cargo, categoría de impuesto y cuentas contables.

- **Asignar Tipo de Cargo**
  Editar el campo *Tipo de Cargo* del cargo para cambiar su agrupación.

- **Configurar Tipos de Documento Habilitados**
  Desde **Tipo de Documento → Tipo de Cargo por Tipo de Documento**, agregar los tipos de documento donde el tipo de cargo (y por lo tanto sus cargos) debe estar disponible.

- **Generar Cargo desde Cuenta Contable**
  Proceso complementario que crea cargos a partir de cuentas del plan de cuentas. Ver [Generar Cargo desde Cuenta Contable](../processes/generate-charge-from-account).

- **Activar / Desactivar**
  Habilitar o deshabilitar el cargo sin eliminarlo.

## Flujo del proceso

### 1. Crear o reutilizar el Tipo de Cargo

Antes de crear el cargo, definir el **Tipo de Cargo** al que pertenecerá. Si ya existe uno apropiado, reutilizarlo (por ejemplo, *Bancario* para todos los cargos bancarios). Si no, crear uno nuevo.

### 2. Habilitar el Tipo de Cargo en los Tipos de Documento

Desde **Tipo de Documento**, abrir cada tipo de documento donde el cargo debe estar disponible (Pago, Cobro, Estado de Cuenta Bancario, etc.) y en la pestaña *Tipo de Cargo por Tipo de Documento* agregar el tipo de cargo. Sin este paso, el cargo no aparecerá al usuario, aunque exista.

### 3. Crear el Cargo

En la ventana **Cargo**, crear el registro con nombre, descripción, **Tipo de Cargo** (el del paso 1), Categoría de Impuesto y demás campos. Guardar.

### 4. Configurar la Contabilidad del Cargo

En la pestaña *Contabilidad*, asignar las cuentas contables que se moverán al usar el cargo. Esto determina la imputación contable.

### 5. Verificar la disponibilidad

Abrir uno de los tipos de documento habilitados (por ejemplo, una factura o el visor de *Crear Pagos desde Estado de Cuenta*) y confirmar que el cargo aparece como opción al seleccionar el campo *Cargo*.

## Ejemplo de uso

Crear un cargo *DGI a Pagar* que debe aparecer al crear pagos desde el estado de cuenta bancario:

1. Confirmar que existe un **Tipo de Cargo** apropiado. Si la organización ya usa *Bancario* para todos los cargos visibles desde la conciliación, reutilizarlo. Si no, crear un Tipo de Cargo *DGI* y asignarlo al tipo de documento *Estado de Cuenta Bancario* desde **Tipo de Documento → Tipo de Cargo por Tipo de Documento**.
2. Abrir **Cargo** y crear un nuevo registro:
   - **Nombre**: *DGI a Pagar*.
   - **Tipo de Cargo**: *Bancario* (o *DGI* según paso 1).
   - **Categoría de Impuesto**: la que corresponda.
3. En la pestaña *Contabilidad*, asignar la cuenta de gasto correspondiente.
4. Abrir el visor *Crear Pagos desde Estado de Cuenta*, seleccionar una línea, ejecutar *Crear Otro Tipo de Pago* y elegir el socio. Al desplegar el campo **Cargo**, el cargo *DGI a Pagar* aparece en la lista.

## Consideraciones importantes

- Un cargo **sin Tipo de Cargo asignado** no aparece en ningún documento. Es el error más común cuando un cargo se crea pero no se ve al usarlo.
- Un mismo **Tipo de Cargo** puede agrupar varios cargos. Todos ellos serán visibles en los tipos de documento donde ese tipo de cargo esté habilitado.
- Cambiar el Tipo de Cargo asignado a un cargo **modifica su visibilidad** en los documentos: dejará de aparecer en los documentos donde el tipo anterior estaba habilitado y aparecerá en los del nuevo tipo.
- Crear un *nuevo* tipo de cargo para cada cargo concreto es innecesario en la mayoría de los casos. Si ya existe un tipo de cargo apropiado (por ejemplo, *Bancario*), reutilizarlo y agregar el nuevo cargo a ese tipo es lo recomendado.
- La **contabilidad** del cargo debe configurarse antes de utilizarlo en documentos completos; sin las cuentas, el documento puede fallar al contabilizar.
- Cargos **inactivos** no aparecen en ningún selector aunque su tipo de cargo esté habilitado en el tipo de documento.
- La regla de visibilidad por *Tipo de Cargo por Tipo de Documento* aplica a múltiples ventanas: facturas (cliente y proveedor), pagos, cobros, recibos, estados de cuenta bancarios, libretas de cheques, etc.
- Para casos puntuales donde el cargo debe heredar el impuesto del documento (no aplicar uno propio), usar el indicador *Cargo de Mismo Impuesto que el Documento*.

## Ventanas relacionadas

- [Generar Cargo desde Cuenta Contable](../processes/generate-charge-from-account)
