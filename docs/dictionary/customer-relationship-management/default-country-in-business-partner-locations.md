---
title: País por Defecto al Crear Localización de Socio del Negocio
category: Documentation
star: 9
sticky: 9
article: false
---

# País por Defecto al Crear Localización de Socio del Negocio

## Descripción

Cuando se agrega una **localización** (dirección) a un **Socio del Negocio** desde su pestaña *Localización*, el campo **País** aparece con un valor predeterminado. Ese valor no es fijo por instalación: **se toma del idioma configurado como principal en el navegador** del usuario que está creando la dirección.

Es decir, el sistema lee el **idioma de visualización** del navegador (por ejemplo, *Español (Uruguay)*, *Español (Venezuela)*, etc.) y lo usa para decidir qué país mostrar por defecto en las localizaciones nuevas del socio. Si el usuario cambia el idioma principal de su navegador y refresca, el país por defecto cambia en consecuencia.

## ¿Cuándo se utiliza?

Se utiliza cuando el usuario necesita:

- Registrar nuevas localizaciones de socios de negocio con un país predeterminado distinto al que aparece por defecto.
- Cambiar el país por defecto para no tener que corregirlo manualmente cada vez que se crea una localización.
- Confirmar por qué el sistema propone determinado país al abrir el diálogo *Nueva Dirección* dentro de la ficha del socio.

## Acceso

El comportamiento se observa dentro de la pestaña **Localización** de la ventana **Socio del Negocio** (o de ventanas equivalentes que exponen esa misma pestaña, como *Cliente* o *Proveedor*):

1. Abrir la ventana **Socio del Negocio**.
2. Ir a la pestaña **Localización**.
3. Pulsar **Nuevo** para crear una localización adicional. El diálogo abre con el campo **País** ya completado según el idioma del navegador.

Para **cambiar** el país por defecto, se ajusta el idioma en la configuración del navegador — no en Solop.

## Configuración previa

- El usuario debe tener acceso a la configuración de idioma de su **navegador** (Chrome, Edge, Firefox u otro).
- El país deseado debe existir dentro de la ventana de países configurados en Solop. Si el idioma del navegador apunta a un país que no está dado de alta, el sistema no puede completarlo por defecto.

## Cómo cambiar el país por defecto

El país por defecto se controla desde el **idioma principal del navegador**. En Chrome, el procedimiento es:

1. Abrir **Configuración de Chrome** → **Idiomas**.
2. En la lista de idiomas, ubicar (o agregar) el idioma que corresponda al país deseado (por ejemplo, *Español (Uruguay)* para que el país por defecto sea *Uruguay*).
3. Abrir el menú del idioma y activar la opción **Mostrar Google Chrome en este idioma**. El idioma queda marcado como el principal.
4. Reiniciar Chrome para que el cambio tome efecto.
5. Volver a Solop y crear una nueva localización desde la pestaña **Localización** del Socio del Negocio: el campo **País** aparece ahora con el país que corresponde al idioma seleccionado.

En otros navegadores el nombre de la opción varía, pero el mecanismo es equivalente: se marca un idioma como **principal** o de visualización.

## Flujo del proceso

### 1. Verificar el idioma actual del navegador

Antes de crear una localización, verificar cuál es el idioma marcado como principal en la configuración del navegador. Ese idioma determina qué país va a proponerse por defecto.

### 2. Ajustar el idioma si es necesario

Si el país por defecto deseado no coincide con el idioma principal actual, cambiar el idioma principal siguiendo las instrucciones de la sección anterior. Reiniciar el navegador.

### 3. Crear la localización en el Socio del Negocio

Volver a Solop, abrir la ventana **Socio del Negocio**, ir a la pestaña **Localización** y pulsar **Nuevo**. El diálogo de dirección se abre con el campo **País** completado con el valor correspondiente al idioma del navegador.

### 4. Completar el resto de los datos

Cargar los campos restantes (calle, número, ciudad, código postal, región, etc.) y guardar. La localización queda registrada con el país propuesto (o con el que el usuario elija manualmente, si decide cambiarlo).

### 5. Confirmar el registro

Verificar que la localización quedó guardada en la pestaña del socio con el país correcto. Si el país fue el propuesto automáticamente, no requiere ajustes; si se cambió a mano, el valor manual prevalece.

## Ejemplo de uso

Un usuario opera habitualmente con socios de negocio de **Uruguay** pero su navegador está configurado en un idioma con locale distinto (por ejemplo, *Español (Venezuela)*):

1. Al crear una nueva localización desde la pestaña *Localización* de un socio del negocio, el diálogo se abre con **Venezuela** como país por defecto.
2. El usuario abre la configuración de su navegador (Chrome → Configuración → Idiomas), agrega o localiza el idioma *Español (Uruguay)* y activa **Mostrar Google Chrome en este idioma**.
3. Reinicia Chrome.
4. Vuelve a Solop y crea otra localización desde el mismo socio: esta vez el diálogo abre con **Uruguay** como país por defecto.
5. A partir de ese momento, todas las localizaciones nuevas que este usuario cree sobre sus socios de negocio proponen *Uruguay* como país inicial, sin necesidad de corregirlo a mano.

## Consideraciones importantes

- El país por defecto **no se configura desde Solop**: se controla desde la configuración de idioma del **navegador**. Ajustar el idioma preferido dentro de Solop (por ejemplo, en la ficha de usuario) no cambia este comportamiento; lo que manda es el idioma del navegador.
- El comportamiento es **por usuario y por navegador**: cada usuario ve el país por defecto que corresponde a su propio navegador. Distintos usuarios pueden ver distintos valores por defecto al crear localizaciones sobre el mismo socio.
- El valor propuesto es únicamente un **default**: el usuario siempre puede cambiar el país manualmente en el diálogo antes de guardar la localización.
- Si el idioma del navegador apunta a un país que no está dado de alta en la lista de países del sistema, el campo puede aparecer vacío. En ese caso, seleccionar el país manualmente.
- Cambiar el idioma del navegador requiere **reiniciar** el navegador para que Solop lo detecte. Cerrar y volver a abrir la pestaña no siempre es suficiente.
- No existe un **campo global** en Solop para forzar un país por defecto en las localizaciones de socios para toda la organización; si se necesita ese comportamiento, todos los usuarios deben configurar el mismo idioma principal en sus navegadores.
- Esta documentación cubre específicamente la **Localización del Socio del Negocio**. El comportamiento observado en otras direcciones (organización, almacén, etc.) puede diferir y no está cubierto por este documento.

## Ventanas relacionadas

- [Generar Localización de Socio del Negocio](generate-business-partner-localization)
- [Cliente](../sales-management/sales-management-crm/customer)
