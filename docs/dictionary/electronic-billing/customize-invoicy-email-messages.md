---
title: Personalizar Mensajes de E-mail al Receptor del CFE (Invoicy)
category: Documentation
star: 9
sticky: 9
article: false
---

# Personalizar Mensajes de E-mail al Receptor del CFE (Invoicy)

## Descripción

Cuando se emite un **Comprobante Fiscal Electrónico (CFE)** desde Solop y se despacha a través del proveedor fiscal **Invoicy**, el envío del comprobante al receptor incluye un correo automático con el XML del CFE, la Representación Impresa (PDF) y/o el Recibo Electrónico. El **asunto** y el **cuerpo** de esos correos se pueden personalizar por empresa desde el propio panel de Invoicy.

Esta funcionalidad no se opera desde Solop: se opera directamente en el **panel de Invoicy** con un perfil que tenga los accesos correspondientes.

## ¿Cuándo se utiliza?

Se utiliza cuando la organización necesita:

- Personalizar el **asunto** y el **cuerpo** del correo que Invoicy envía al receptor del CFE.
- Adaptar el mensaje al idioma o al tono comercial que usa la empresa.
- Incorporar datos dinámicos del emisor o del comprobante (razón social, RUT, tipo, serie, número).
- Diferenciar el texto por **tipo de envío**: sólo XML, sólo Representación Impresa, XML + Representación, Recibo Electrónico, etc.

## Acceso

**Panel de Invoicy** → **Inicio** → **Panel de Control** → **E-mail para Envío** → botón **Personalizar los mensajes enviados** (esquina superior derecha).

## Configuración previa

Para que la opción esté disponible, el usuario debe ingresar a Invoicy con un perfil habilitado:

- **Perfil MANTENIMIENTO** (recomendado): trae los accesos necesarios activados por defecto.
- **Otro perfil**, siempre que tenga marcados **al menos** estos dos accesos en la sección *Empresa*:
  - **Configuraciones para Envío de E-mails**.
  - **Personalizar Mensajes Enviados por E-mail**.

Si el perfil no cuenta con esos accesos, el botón **Personalizar los mensajes enviados** no aparece en el panel.

> [CAPTURA: pantalla *Datos del usuario* del panel de Invoicy con el campo *Perfil = Mantenimiento* y los dos accesos *CONFIGURACIONES PARA ENVIO DE E-MAILS* y *PERSONALIZAR MENSAJES ENVIADAS POR E-MAIL* recuadrados]

## Secciones editables

Al ingresar a **Personalizar los mensajes de e-mail** se listan las plantillas de correo utilizadas para cada tipo de envío. Cada plantilla tiene dos campos editables:

- **Asunto**: título del correo tal como lo verá el receptor.
- **Cuerpo del e-mail**: texto principal del correo, con soporte de formato básico (negrita, cursiva, listas, alineación).

Las plantillas típicas que aparecen son:

- **E-mail con el XML del CFE Entre Empresas**
- **E-mail con el PDF de la Representación Impresa**
- **E-mail con el XML Entre Empresas y el PDF de la Representación Impresa**
- **Recibo Electrónico — E-mail con el XML del CFE Entre Empresas**

Cada organización puede tener plantillas adicionales según los tipos de documento habilitados.

## Placeholders disponibles

Dentro del asunto y del cuerpo se pueden usar **marcadores dinámicos** entre llaves dobles, que Invoicy reemplaza al enviar el correo con los datos reales del CFE:

| Placeholder | Reemplazo |
|-------------|-----------|
| `{{EmisorRazonSocial}}` | Razón social de la empresa emisora del CFE |
| `{{EmisorRUT}}` | RUT del emisor |
| `{{CFETipo}}` | Tipo de CFE (por ejemplo, e-Factura, e-Ticket, e-Remito, etc.) |
| `{{CFESerie}}` | Serie del CFE |
| `{{CFENumero}}` | Número del CFE |

Los placeholders funcionan igual en el **asunto** y en el **cuerpo**. Deben respetarse exactamente como se muestran (con las llaves dobles y sin espacios internos).

## Acciones disponibles

- **Editar**
  Modificar el texto del asunto y/o del cuerpo de una plantilla. El editor del cuerpo admite formato básico (negrita, cursiva, listas, alineación).

- **Guardar**
  Persiste los cambios. A partir de ese momento, los próximos correos que Invoicy envíe usarán el nuevo texto.

- **Volver**
  Regresa a la pantalla *Configuración de e-mail para envío* sin aplicar cambios pendientes.

## Flujo del proceso

### 1. Ingresar al panel de Invoicy con el perfil correcto

Iniciar sesión en Invoicy con el perfil **Mantenimiento**, o con un perfil que tenga marcados los accesos *Configuraciones para Envío de E-mails* y *Personalizar Mensajes Enviados por E-mail*.

### 2. Abrir el Panel de Control

Desde el menú superior, ir a **Inicio → Panel de Control**.

> [CAPTURA: pantalla *Panel de Control* del panel de Invoicy con el ícono *E-mail para Envío* señalado]

### 3. Ingresar a E-mail para Envío

En la sección **Empresa** del Panel de Control, pulsar **E-mail para Envío**. Se abre la pantalla *Configuración de e-mail para envío* que muestra la lista de cuentas configuradas para el envío.

### 4. Abrir la personalización de mensajes

En la esquina **superior derecha** de la pantalla, pulsar **Personalizar los mensajes enviados**.

> [CAPTURA: pantalla *Configuración de e-mail para envío* con flecha apuntando al botón *Personalizar los mensajes enviados* en la esquina superior derecha]

### 5. Editar las plantillas necesarias

Localizar la sección correspondiente al tipo de envío que se quiere personalizar (por ejemplo, *E-mail con el PDF de la Representación Impresa*). Modificar el **Asunto** y/o el **Cuerpo del e-mail**. Insertar los placeholders donde correspondan.

> [CAPTURA: pantalla *Personalizar los mensajes de e-mail* con las secciones de Asunto y Cuerpo del e-mail para cada tipo de envío]

### 6. Guardar los cambios

Al finalizar la edición, pulsar **Guardar**. A partir de la próxima emisión, los correos usarán el nuevo texto.

### 7. Validar con un envío de prueba

Emitir un CFE de prueba desde Solop y verificar que el correo que llega al receptor refleje el texto y los datos dinámicos configurados (razón social, RUT, tipo, serie y número correctos).

## Ejemplo de uso

Ajustar el mensaje que reciben los clientes cuando se les envía la Representación Impresa del CFE:

1. Ingresar al panel de Invoicy con el perfil **Mantenimiento**.
2. Ir a **Inicio → Panel de Control → E-mail para Envío**.
3. Pulsar **Personalizar los mensajes enviados**.
4. Ubicar la sección **E-mail con el PDF de la Representación Impresa**.
5. Cambiar el **Asunto** por:
   *`Comprobante {{CFETipo}} N° {{CFESerie}}-{{CFENumero}} — {{EmisorRazonSocial}}`*
6. Cambiar el **Cuerpo del e-mail** por un texto propio, dejando los placeholders necesarios:
   *`Estimado cliente,`*
   *`Adjuntamos la Representación Impresa del comprobante {{CFETipo}}, serie {{CFESerie}}, número {{CFENumero}}, emitido por {{EmisorRazonSocial}} (RUT {{EmisorRUT}}).`*
7. Pulsar **Guardar**.
8. Emitir un CFE de prueba y confirmar que el correo recibido usa el nuevo texto con los datos del emisor y del comprobante reemplazados.

## Consideraciones importantes

- Los cambios aplican **solo a los envíos posteriores**. Los correos enviados antes de guardar la personalización no se modifican.
- La personalización es **por empresa** dentro del panel de Invoicy: si la organización tiene varias empresas configuradas, cada una gestiona sus propias plantillas.
- Si el usuario no ve el botón **Personalizar los mensajes enviados**, es porque el perfil no tiene marcados los accesos *Configuraciones para Envío de E-mails* y/o *Personalizar Mensajes Enviados por E-mail*. Ajustar el perfil desde **Panel de Control → Usuarios de la Sucursal → Datos del usuario**.
- Los **placeholders** son sensibles al formato exacto (llaves dobles, sin espacios internos, respetando mayúsculas/minúsculas). Un placeholder mal escrito **no se reemplaza** y se envía literal.
- Al editar el **cuerpo del e-mail** se pueden usar las herramientas de formato básico del editor (negrita, cursiva, listas). Evitar imágenes o estilos complejos que algunos clientes de correo no renderizan bien.
- Existen plantillas **distintas por tipo de envío** (sólo XML, sólo PDF, XML + PDF, Recibo Electrónico). Si se quiere unificar el tono, hay que editar cada una.
- El envío efectivo de los correos depende de que la cuenta de e-mail configurada en *E-mail para Envío* esté **Activa** y con el proveedor autenticado.
- La personalización de mensajes se hace **fuera de Solop**: los cambios no se reflejan en el diccionario de Solop; solo afectan los correos que Invoicy dispara al enviar el CFE al receptor.

## Ventanas relacionadas

- [Proceso de Facturación Electrónica](electronic-billing-process)
- [Enviar Factura al Emisor Fiscal](send-invoice-to-fiscal-sender)
- [Enviar Entrega al Proveedor Fiscal](send-shipment-to-fiscal-provider)
- [Emisor Fiscal](fiscal-sender)
- [Bitácora de Documento Electrónico](electronic-document-log)
- [Comentario Fiscal (Adenda) en CFE](fiscal-comment-adenda)
