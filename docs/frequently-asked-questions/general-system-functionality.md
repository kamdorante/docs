---
title: Generales
category: Documentation
star: 9
sticky: 9
article: false
---

## Mantenimientos

### No me aparece un Proceso desde los Procesos de la Barra de Herramientas

Los Procesos desde la Barra de Herramientas no se actualizan automáticamente, por lo que si por ejemplo se selecciona desde la Pestaña “Fase” de la Ventana “Proyecto”, recordará los Procesos que existen para dicha pestaña y si luego los quiere visualizar desde la pestaña Padre como puede ser “Proyecto” no se visualizarán. Para solucionarlo deberá ingresar nuevamente a la ventana y presionar “Procesos” desde la pestaña Padre (por ej de proyecto).

### Cuales son los niveles de acceso de los usuarios

### Nivel de Acceso a Datos en ROL:

Según el Rol se puede definir un nivel de Acceso a Datos determinado. Esto significa que según el nivel de dicho Rol definirá los documentos que pueda visualizar en el sistema.

Por ejemplo si se desea que determinado Rol sólo visualice Documentos de determinada Organización, se deberá definir el nivel “Organización”.

### Nivel de Acceso a Datos en Tabla:

También se puede definir en determinada tabla el nivel de acceso a datos posible de la misma. Si un Rol tiene un Nivel menor al que tiene definido una tabla los usuarios no podrán guardar ni modificar ningún campo de la misma.

### Roles Incluídos

Se utiliza para ir creando roles manuales de manera creciente en cuanto a los accesos o  ventanas que se le asigna a cada uno.

### ¿Por qué al modificar los permisos de un ROL el usuario sigue sin ver la Ventana, Proceso, Smartbrowser o Reporte?

Si una Ventana, Proceso, Smartbrowser o Reporte no se encuentra en el arbol del menú para determinado ROL, por mas que se le de permiso en el rol, el usuario no lo va a ver. Por lo tanto se debe agregar al MENU que usan esos roles, mediante SYSTEM.

### ¿Cómo me doy cuenta que es una opción del sistema es un proceso?

Básicamente por el icono del menú y que al abrirlo se muestra un proceso (filtros de búsqueda) y no una ventana con Campos. Brinda la opción de dar check y tiene ciertos parámetros con un título y descripción.

### ¿Cómo solicitar un Update de un Registro (actualización)?

Se debe solicitar un update cuando se desea modificar un dato en un documento y el mismo ya está Completo o el campo está Sólo lectura. (verificar antes si el dato no puede ser modificado de otra manera, por ejemplo si el registro no está INACTIVO o si se puede borrar y generar nuevamente.) Se debe intentar generar lo menos posible.

**Datos a solicitar:** 

* Id del Registro que se quiere cambiar (Tabla del registro con su ID). 
  * Se obtiene al hacer click en la esquina inferior derecha donde está la auditoría
* Campo que se quiere cambiar (ID del campo que se quiere actualizar) 
  * Botón derecho en el campo, seleccionar Bitácora de Cambios. copiar el nombre del campo.
* Busco el ID del Registro que se quiere definir en el campo de la tabla mediante una actualización y aclarararlo.

::: tip
*(No siempre es un ID lo que se quiere actualizar, también puede ser un código por ejemplo o cualquier campo de una tabla.)
:::

### ¿Qué puede suceder si luego de generar un Documento, bajo a la pestaña hija y al volver a subir no lo veo?

Si se abre una ventana desde el menú, el sistema lo hace mostrando todos los registros de la misma, sin aplicar ningún filtro. 

Si ésta se abre desde el Acceso Rápido de "Últimos Documentos" o se navega a la misma desde un campo en especial, la ventana se abre pero con un "FILTRO APLICADO".

El problema se da cuando desde una ventana con un filtro aplicado, generan un NUEVO REGISTRO, el mismo se podrá editar y guardar sin problema siempre y cuando estemos en la misma Pestaña; ahora si se baja a una pestaña Hija al volver a subir a la pestaña PADRE, se volverá a aplicar el Filtro Inicial que teníamos definido; si este filtro NO INCLUYE el nuevo Registro que habíamos generado, el mismo no se verá.

### ¿Cómo saber si un registro está guardado?

En un documento podemos saber si un registro está guardado visualizando el mismo abajo a la derecha. En este caso por ejemplo, aparece un *1 esto quiere decir que aún no tiene número de registro guardado.

### No se actualiza Moneda en Documento según Lista de Precio:

Cuando el usuario selecciona una Lista de precios, cuya fecha de validez es posterior a la fecha del documento que se está creando, el campo de la moneda no se actualiza. Esto se debe a que en la ventana “Lista de Precios”, seleccionando la lista de precios en cuestion, luego pestaña “Version”, el campo “Valido desde” corresponde a una fecha posterior al documento (por ejemplo Orden de Compra), entonces el campo moneda no refleja el tipo de moneda de la lista de precios en el documento que se esta creando.

::: tip
Para que una lista de precios sea correctamente considerada por un Documento la misma debe tener una Fecha (Válido desde) Desde en la Versión Activa igual o mayor al día del Documento.
:::

### ERROR: Producto no está en lista de precios.

Para solucionarlo se debe navegar al producto y agregar en la pestaña Precio la lista de precio que indica el mensaje.

## Acciones

### Guardar Búsquedas Avanzadas en una Ventana

Es posible que hayan ciertas búsquedas que se repiten y se usan constantemente, en esos casos puede resultar útil guardar la consulta con un nombre para poder seleccionarla y utilizarla rápidamente. Para ello:

1. Abrir la ventana que contiene la información que se desea
2. Clic en el icono de la lupa  para buscar.
3. Seleccionar “Buscar registros” (en algunos casos la ventana se abre directamente).
4. Clic en la pestaña “Avanzado”.
5. Agregar el/los criterios de búsqueda con los filtros de acuerdo a la información de la ventana.
6. Colocar un nombre a la consulta y guardarla con el disquete como indica la figura:

   La próxima vez que entre en esta ventana, en la pestaña “Avanzado”, encontrara esta búsqueda en la ventana desplegable con el nombre establecido.

### Reiniciar Cache

En algunos casos no hay acceso a la información, o por ejemplo no da acceso a botones de la barra de herramientas cuando de forma normal estarían habilitados. Por ejemplo: El usuario se puede comunicar indicando que está generando una Factura (Documentos Por Cobrar), genera el cabezal y cuando va a agregar “Líneas” el botón de registro nuevo está deshabilitado.

Otros casos del uso de Reinicia Cache es cuando se ha creado un formulario o reporte nuevo y no se visualiza el cambio en la apariencia del reporte por ejemplo.

Para reiniciar desde Solop ERP, en el cajón de búsqueda se escribe “Reinicia cache”, se selecciona, y se abrirá la ventana, con un botón en la parte inferior derecha con aspecto de “check”. Dar clic y se mostrará un mensaje en azul indicando que el cache se ha reiniciado.

### Exportar registros desde una Ventana

1. Abrir la ventana que contiene la información deseada.
2. Clic en el botón “Informe”.
3. Se despliega un documento (formato PDF por defecto), en la barra de herramientas, clic en la lupa, se abre la ventana, seleccionar pestaña “Avanzado”:
4. Seleccionar los campos por los que quiera Filtrar la información (Rango de fechas por ejemplo):
5. Para un rango de fechas, tener presente el operador utilizado.
6. Clic en Ok.
7. En la barra de herramientas del reporte, seleccionar la ventana desplegable ubicada en el extremo izquierdo:  y seleccionar el formato deseado (XLSX, HTML, etc.).
8. El reporte será descargado en el navegador.

### Acciones sobre un Documento

Las acciones sobre el Documento son:

* Cerrar
* Reversar - Causación
* Reversar - Corregir
* Anular

### Cerrar un Documento

**__Cerrar Orden de Venta/Compra:__**

Al Cerrar todas las Cantidades serán llevadas a la Cantidad Entregada. modificando así el importe total de la Orden.

**En caso de haber cerrado una Orden por error, existe un proceso que se llama “Reabrir Orden” que la vuelve al estado “Completo” (desde el menú):**

**__Reversar - Causación__**

Restaurar extornando la transacción con la fecha de HOY.

**__Reversar - Corregir__**

Restaurar extornando la transacción con la fecha del Documento extornado.  
Anular

Setea en valor cero las cantidades.

### ¿Cuáles son los requisitos para poder eliminar un documento?

Para eliminar un documento, la primera regla general es que no se haya utilizado el mismo en ningún otro documento. Si ya se referenció en cualquier otro registro, no se podrá borrar justamente por razones de coherencia/consistencia de la base de datos. 
 
Más allá de esto, puede ser que un documento una vez creado no permita ser borrado. En este caso se deberá inactivar el mismo o Anular.
Cabe destacar que si se trata de un documento que puede ingresar en un proceso masivo, lo ideal será anularlo (como por ejemplo un Contrato de Servicio, que pueda ingresar en la generación masiva de cuotas).

### ¿Cómo se define un Proveedor en un Producto?

Para definir un Proveedor en un producto se debe ir a la ventana Producto / Pestaña Compras y definir el SDN a quien se compra este producto. es según este dato que se hace la búsqueda de los productos tan fácil desde una fase o línea de fase.

### Cómo se define un usuario como “Agente Compañía” de un Proyecto, Orden, Factura o Solicitud.

El campo agente compañía en el cabezal de un Proyecto permitirá elegir a todos aquellos usuarios que tengan asociado un Socio del Negocio que a su vez el mismo tenga marcado el check de "Agente compañia" en "Y", en la Pestaña "Empleado" de la ventana "Socio de negocio".

### ¿Cómo Modificar un Producto?

El sistema posee un control por el cual solo se podrán editar Productos de tipo “Artículo”.

En el caso que se quiera modificar un producto de tipo “Servicio” se deberá cambiar el tipo de producto a “Articulo”, modificar los campos que se deseen y volver a definirlo como “Servicio”.

### ¿Cómo se define el centro de costos en un Producto de Servicio?

La actividad se toma desde el "Grupo" del producto, mediante un callout en la línea de contrato al momento de seleccionar el producto.

### Definir “Valor de Preferencia” en Campo

En cada documento si queres definir una opción de un campo por defecto puede realizarse oprimiendo botón derecho sobre el campo y seleccionando “Valor de Preferencia”. Ahora cada vez que ingreses a dicha ventana te aparecerá definido en el campo el valor seleccionado. 

### Cómo quitar aviso de “Producto sin Inventario” cuando no se desea controlar inventario?

Se soluciona definiendo a los Productos con Tipo “ARTÍCULOS” como Almacenables “N”.

### Se puede cambiar el nombre de un producto (o SDN) existente?

Los productos tienen un ID que los identifica dentro de la aplicación. Por lo cual si, es posible cambiar el nombre de los productos (O SDN), pero siempre tendrá afectación en todo lugar del sistema donde se visualice dicho producto (inclusive en forma retroactiva). O sea, el nombre que cambien para ese ID producto cambiará para todos los registros en la aplicación.

Por ejemplo si se utilizó este producto en algún Contrato o Factura pasada, el cambio de nombre afectará el nombre del producto definido en dichas facturas... entiendo que en cierta operativa podría afectar si existe alguna factura que aún se encuentra pendiente, entonces en un Estado de Cuenta que se envíe por Morosidad, se reflejará el nuevo Nombre y no el anterior.

### Es posible modificar la Organización de un Socio del Negocio o Producto?

Es posible realizar esta acción desde el proceso "Socio del Negocio de la Organización".

El proceso permite cambiar y/o verificar la propiedad de la organización de la entidad Socios del Negocio.
Es posible seleccionar cualquier grupo de Socios del Negocio o un Socio del Negocio especifico.

::: tip
En el caso de seleccionar un grupo de socio del negocio, se actualizará la organización para todos los socios de negocios ligados a ese grupo
:::

### ¿Existe una forma de definir el tiempo en el cual expira la sesión de usuario?

En Ventana Usuario, Campo "Expiración de Sesión" es posible definir el timeout en milisegundos de la sesión. Aquí se puede definir cada cuanto se cierra la sesión del usuario.

Esta configuración es por cada Usuario, lo que permite tener un usuario exclusivo para la consulta de precios y que se reinicie cada una semana.

## Procesos

### BÚSQUEDA INTELIGENTE (SMARTBROWSER)

Los procesos que se encuentran dentro de los "Navegadores Inteligentes" permiten una gestión fácil y rápida de los registros sobre los cuales se desea correr cierto proceso.

Lamentablemente estos Navegadores presentan algunas limitaciones que son las siguientes:

1. No se puede alterar el ordenamiento presentado por el Navegador, los datos se deben simplemente filtrar pero no se puede "Ordenar" según un criterio diferente al presentado.

2. No se puede correr más de 1 vez un proceso desde un Navegador Inteligente, esto quiere decir que sí realizó una selección y corrió un proceso, si desea generar un nuevo proceso con nuevos filtros se deberá abrir una nueva ventana del navegador inteligente para realizar la nueva consulta y el nuevo Proceso.

### ¿Existe alguna rutina automática que actualice el precio de la versión de lista de precio?

Mediante la activación de una configuración de sistema se obtiene la versión de lista vigente según la fecha de factura (DateInvoiced) o fecha de orden (DateOrdered) según corresponda.

Si para una línea se encuentra que el precio es distinto, respecto del precio en la versión vigente, entonces se actualiza el precio en la versión.

Además, en el campo "Comentarios" en la pestaña de "Precio de Producto", se guardan los datos relacionados a la modificación de ese precio.