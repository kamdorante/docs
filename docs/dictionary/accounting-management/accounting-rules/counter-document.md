---
title: Contra Documentos
category: Documentation
star: 9
sticky: 9
article: false
---

# Contra Documentos

## Descripción

La ventana **Contra Documentos** define qué documento genera el sistema automáticamente en la otra organización cuando se registra una **transacción entre organizaciones del mismo grupo** (transacción inter-organización).

Una transacción es inter-organización cuando el **Socio del Negocio** del documento está vinculado a otra organización del sistema mediante el campo **Liga Organización**. En ese caso, al completar el documento, el sistema puede crear en la organización vinculada el documento "espejo" o **contra documento** (ver [Condiciones para generar un contra documento](#condiciones-para-generar-un-contra-documento)). Por ejemplo:

| Documento original (organización A) | Contra documento (organización B) |
|---|---|
| Orden de Venta | Orden de Compra |
| Factura de Cliente | Factura de Proveedor |
| Pago | Cobro |
| Retiro de Caja | Apertura de Caja |

Cada registro de esta ventana es una **regla explícita** que indica, para un tipo de documento de origen, con qué tipo de documento se genera el contra documento, si efectivamente debe generarse y en qué estado debe quedar.

::: warning Configuración explícita obligatoria
El sistema **exige una regla en esta ventana** para cada tipo de documento que pueda generar un contra documento. Si un documento cumple las [condiciones para generar un contra documento](#condiciones-para-generar-un-contra-documento) y no existe la regla correspondiente, el documento no se completa y se muestra el error **"No encontrado Tipo de Contra Documento"**. Ver [Comportamiento del control](#comportamiento-del-control).
:::

## ¿Cuándo se utiliza?

Se utiliza cuando la organización necesita:

- Definir qué tipo de documento se genera en la organización vinculada al completar un documento inter-organización (por ejemplo, que una *OV Intercompany* genere una *Orden de Compra*).
- Indicar que un tipo de documento **no debe generar** contra documento aunque se use con un socio vinculado a otra organización.
- Establecer si el contra documento queda **completado** automáticamente o en **borrador** para revisión.
- Resolver el error **"No encontrado Tipo de Contra Documento"** al completar un documento.

## Acceso

Menú: **Gestión Contable → Reglas Contables → Contra Documentos**

## Pestañas

### Contra Documentos

Pestaña única donde se registra cada regla. Los campos más importantes son:

- **Organización**
  Organización a la que aplica la regla. Con `*` la regla aplica a todas las organizaciones; también puede definirse una regla para una organización específica.

- **Nombre** y **Descripción**
  Identifican la regla. Se recomienda un nombre que indique el origen y el destino, por ejemplo *OC a OV* o *Retiro de Caja*.

- **Tipo de Documento**
  Tipo de documento **de origen**: el que se registra en la organización que inicia la transacción.

- **Crea Contra-Documento**
  Indica si el tipo de documento de origen genera contra documento.
  - **Marcado**: al completar el documento con un socio vinculado, se genera el contra documento con el tipo indicado en **Tipo Contra-Documento**.
  - **Desmarcado**: el documento se completa sin generar contra documento. Es la forma de indicar explícitamente que ese tipo de documento **no** debe tener espejo en la otra organización.

- **Tipo Contra-Documento**
  Tipo de documento que se genera en la organización vinculada. Solo es necesario cuando **Crea Contra-Documento** está marcado.

- **Acción en el Documento**
  Estado en que queda el contra documento generado:
  - **Completar**: el contra documento se completa automáticamente.
  - **\<Ninguno\>**: el contra documento queda en **Borrador** para que la organización destino lo revise y complete.

- **Válido** y **Valida tipo de documento**
  El botón **Valida tipo de documento** verifica que el tipo de origen y el tipo de contra documento sean compatibles (por ejemplo, que a un documento de venta le corresponda uno de compra) y marca la regla como **Válido**.

- **Activo**
  Solo las reglas activas se tienen en cuenta. Una regla inactiva equivale a no tener regla.

## Condiciones para generar un contra documento

Al completar un documento, el sistema intenta generar un contra documento cuando se cumplen **las tres** condiciones siguientes:

| # | Condición | Dónde se configura |
|---|---|---|
| 1 | El documento es una **orden** (de venta o de compra), una **factura** (de cliente o de proveedor), una **entrega o recepción** de mercadería, o un **pago o cobro** (incluye retiros y aperturas de caja) | Tipo de documento usado |
| 2 | El **Socio del Negocio** del documento tiene informado el campo **Liga Organización**, es decir, representa a otra organización del sistema | Ventana **Socio del Negocio** |
| 3 | La **organización del documento** tiene a su vez un Socio del Negocio vinculado a ella (un socio cuya **Liga Organización** es la organización que registra el documento) | Ventana **Socio del Negocio** |

La condición 3 es necesaria porque el contra documento se registra en la otra organización **a nombre del socio que representa a la organización de origen**. Por ejemplo, si la organización A vende a la organización B, la orden de compra generada en B tiene como proveedor al socio vinculado a A.

Si alguna de las tres condiciones no se cumple, el documento se completa normalmente sin consultar la ventana **Contra Documentos**.

::: warning La casilla del Tipo de Documento no interviene
Actualmente el sistema **no tiene en cuenta** la casilla **Crea Contra-Documento** de la ventana **Tipo de Documento** para decidir si genera el contra documento: alcanza con que se cumplan las tres condiciones. Para que un documento que cumple las condiciones **no** genere contra documento ni dé error, se debe crear una regla en **Contra Documentos** para su tipo de documento con **Crea Contra-Documento** desmarcado.
:::

## Comportamiento del control

Cuando se cumplen las tres condiciones, el sistema decide qué hacer según la regla de **Contra Documentos**:

```
¿Se cumplen las 3 condiciones?
(orden / factura / entrega / pago  +  socio con "Liga Organización"
 +  la organización del documento tiene socio vinculado)
   │
   ├── NO  → El documento se completa normalmente (no hay transacción inter-organización).
   │
   └── SÍ  → Busca una regla activa en Contra Documentos para el Tipo de Documento
             │
             ├── No existe regla
             │     → Error "No encontrado Tipo de Contra Documento".
             │       El documento queda en Borrador.
             │
             ├── Existe regla con "Crea Contra-Documento" DESMARCADO
             │     → El documento se completa sin generar contra documento.
             │
             └── Existe regla con "Crea Contra-Documento" MARCADO
                   → Se genera el contra documento del "Tipo Contra-Documento"
                     en la organización vinculada, con la "Acción en el Documento" definida.
```

### Diferencia con el comportamiento anterior

| Situación | Antes | Ahora |
|---|---|---|
| Documento que cumple las tres condiciones y **sin regla** en Contra Documentos | Se generaba el contra documento con el **primer tipo de documento inverso** que encontraba el sistema (pago → cobro, orden de venta → orden de compra, etc.) | El documento **no se completa** y se muestra el error *"No encontrado Tipo de Contra Documento"* |
| Tipo de documento que **no** debe generar contra documento | Bastaba con desmarcar **Crea Contra-Documento** en la ventana **Tipo de Documento** | Se debe crear una regla en **Contra Documentos** con **Crea Contra-Documento** desmarcado |

## Flujo del proceso

### 1. Identificar los socios vinculados a organizaciones

En la ventana **Socio del Negocio**, revisar qué socios tienen informado el campo **Liga Organización** y a qué organización apuntan. Con esa información se identifican:

- Los socios con los que un documento se trata como transacción inter-organización (por ejemplo, el socio que representa a la propia empresa en una apertura de caja, o una empresa del grupo a la que se envían entregas).
- Las organizaciones que tienen socio vinculado, que son las únicas en las que se cumple la condición 3.

### 2. Identificar los tipos de documento que se usan con esos socios

Listar los tipos de documento de órdenes, facturas, entregas/recepciones y pagos/cobros (incluidos retiros y aperturas de caja) que se registran con esos socios desde organizaciones que tienen socio vinculado.

### 3. Decidir para cada tipo de documento si debe generar contra documento

- **Sí debe generar**: definir el tipo de documento que se debe crear en la organización vinculada y en qué estado.
- **No debe generar**: se registra igual una regla, con **Crea Contra-Documento** desmarcado.

### 4. Registrar las reglas

En **Contra Documentos**, crear un registro por cada tipo de documento de origen:

1. Seleccionar la **Organización** (`*` para todas).
2. Ingresar **Nombre** y **Tipo de Documento** de origen.
3. Marcar o desmarcar **Crea Contra-Documento** según lo decidido.
4. Si se marca, completar **Tipo Contra-Documento** y **Acción en el Documento**.
5. Guardar y ejecutar **Valida tipo de documento**.

### 5. Reintentar los documentos pendientes

Los documentos que quedaron en **Borrador** por el error pueden completarse nuevamente una vez registrada la regla. No es necesario volver a crearlos.

## Ejemplo de uso

**Caso 1 — Documento que no debe generar contra documento**

La empresa registra entregas electrónicas (*e-Remito*) a un cliente que es otra organización del grupo. El cliente recibe la mercadería por su cuenta, por lo que no se desea generar una recepción automática en su organización. Al completar la entrega aparece el error *"No encontrado Tipo de Contra Documento"*.

1. Ir a **Contra Documentos** y crear un registro:
   - **Organización**: `*`
   - **Nombre**: *e-Remito*
   - **Tipo de Documento**: *e-Remito*
   - **Crea Contra-Documento**: desmarcado
2. Guardar.
3. Volver a la entrega en Borrador y completarla. El documento se completa sin generar contra documento.

**Caso 2 — Documento que sí debe generar contra documento**

Al abrir la caja del punto de venta, el sistema registra un **Retiro de Caja** desde la caja o banco de origen con el socio que representa a la propia empresa, y ese retiro debe generar la **Apertura de Caja** correspondiente en la caja destino.

1. Crear un registro en **Contra Documentos**:
   - **Tipo de Documento**: *Retiro de Caja*
   - **Crea Contra-Documento**: marcado
   - **Tipo Contra-Documento**: *Apertura de Caja*
   - **Acción en el Documento**: *Completar*
2. Guardar y ejecutar **Valida tipo de documento**.
3. Al completar el retiro, el sistema genera y completa la apertura en la caja destino.

::: info
Cuando el contra documento es un pago o cobro, el documento generado queda relacionado con el original en el campo **Pago Referido** de la ventana **Pago/Cobro**. Revisar ese campo en documentos anteriores permite confirmar si un tipo de documento venía generando contra documentos y, por lo tanto, qué valor de **Crea Contra-Documento** corresponde en la regla.
:::

## Preguntas frecuentes

### Al completar un documento aparece "No encontrado Tipo de Contra Documento". ¿Qué significa?

Que el documento cumple las [tres condiciones](#condiciones-para-generar-un-contra-documento) para generar un contra documento (es una orden, factura, entrega o pago; su **Socio del Negocio** está vinculado a otra organización, y la organización del documento tiene socio vinculado) y no existe una regla activa en **Contra Documentos** para el **Tipo de Documento** usado. Para resolverlo, crear la regla correspondiente: con **Crea Contra-Documento** marcado si se quiere generar el documento espejo, o desmarcado si no.

### El documento se completaba sin problemas hasta ayer y no cambié ninguna configuración. ¿Por qué falla ahora?

Porque cambió el control del sistema: antes, si no había regla, se generaba un contra documento con el primer tipo inverso disponible; ahora la regla explícita es obligatoria. La configuración de socios y tipos de documento puede seguir igual; lo que falta es la regla en **Contra Documentos**.

### Desmarqué "Crea Contra-Documento" en el Tipo de Documento y el error sigue. ¿Por qué?

Porque actualmente el sistema no tiene en cuenta esa casilla: si el documento cumple las tres condiciones, intenta generar el contra documento igual. Se debe crear la regla en **Contra Documentos** para ese tipo de documento y desmarcar allí **Crea Contra-Documento**.

### ¿Tengo que crear una regla para todos los tipos de documento marcados como "Crea Contra-Documento"?

No necesariamente. Como la casilla del Tipo de Documento no interviene, lo que importa es qué tipos de documento (órdenes, facturas, entregas o pagos) se usan con socios vinculados a otra organización desde organizaciones que tienen socio vinculado. Esos tipos necesitan regla, estén o no marcados como **Crea Contra-Documento**. Los demás no la necesitan, aunque se recomienda registrarla si se prevé empezar a operar con socios vinculados.

### ¿Por qué un mismo tipo de documento da error en una organización y en otra no?

Porque la condición 3 depende de la organización del documento: solo se intenta generar contra documento si esa organización tiene un Socio del Negocio vinculado. Si una organización no tiene socio vinculado, sus documentos se completan sin consultar **Contra Documentos**, aunque el socio del documento sí esté vinculado a otra organización.

### ¿Puedo eliminar o inactivar una regla?

Sí, pero tener en cuenta que sin regla activa los documentos de ese tipo con socios vinculados vuelven a dar el error. Si lo que se quiere es dejar de generar el contra documento, desmarcar **Crea Contra-Documento** en lugar de eliminar la regla.

## Consideraciones importantes

- El control solo aplica a **órdenes, facturas, entregas/recepciones y pagos/cobros**, cuando el **Socio del Negocio** del documento tiene informado **Liga Organización** y la organización del documento tiene a su vez un socio vinculado. Si falta alguna de estas condiciones, los documentos se completan sin consultar esta ventana.
- La casilla **Crea Contra-Documento** de la ventana **Tipo de Documento** actualmente no interviene en la decisión; la que decide es la de la regla en **Contra Documentos**.
- Una regla con **Organización** `*` aplica a todas las organizaciones. Si se necesita un comportamiento distinto en una organización, crear una regla específica para ella.
- Las reglas **inactivas** no se consideran: equivalen a no tener regla.
- El error se produce al **completar**; el documento queda en **Borrador** y puede completarse nuevamente cuando la regla esté creada.
- Antes de crear una regla con **Crea Contra-Documento** marcado, confirmar que el contra documento es realmente necesario: una regla mal definida genera documentos (órdenes, recepciones, cobros, aperturas) en la otra organización.
- Usar **Acción en el Documento = \<Ninguno\>** cuando la organización destino deba revisar el contra documento antes de completarlo.

## Ventanas relacionadas

- [Pago/Cobro](../../balance-management/payments-and-receipts/payment)
- [Entregas (Cliente)](../../sales-management/shipments/shipment-customer)
- [Completar Facturas de Compra Intercompañía](../../purchase-management/reception/complete-intercompany-invoices)
- [Cargo](charge)
- **Tipo de Documento**: define los tipos de documento y la casilla **Crea Contra-Documento**.
- **Socio del Negocio**: define el campo **Liga Organización** que convierte una transacción en inter-organización.
