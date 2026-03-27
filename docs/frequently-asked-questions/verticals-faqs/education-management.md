---
title: Gestión de Educación
category: Documentation
star: 9
sticky: 9
article: false
---

## Mantenimientos

### Documentos generados al Alumno en vez de al responsable de pago

Una vez definida la relación entre el alumno y el responsable de pago en la ventana Familia, si bien el Contrato de Servicio se vinculará al alumno, debe considerarse que los documentos a generar relacionados a la facturación y el cobro serán vinculados siempre al responsable de pago (y no al alumno).

### Fallo de envío Mail de estado de cuenta a uno de los dos familiares ¿Cómo realizo reenvío?

Cuando se da el caso de que un estudiante con familiar Madre y Padre se les envía a ambos el estado de cuenta y uno de los dos envíos por mail falla; la manera de poder realizar un envío nuevamente sería desde el proceso de "Envío de Estado de Cuenta por Correo" filtrando por el Socio del Negocio (familiar) del Responsable de pago y marcando el check de "Impreso" = SI.

### ¿Por qué motivo puede ocurrir que en un estado de cuenta corriente de un cliente se muestren pendientes comprobantes que ya fueron pagados?

Una posibilidad es que los comprobantes sean en una determinada moneda (UYU) y que el cobro se haya realizado en otra moneda (dolar). Y que se haya generado el pago/cobro definiendo la Tasa de Cambio acordada como Texto en el campo Descripción y no desde la ventana "Recibo de cobro" donde se define que un documento es "Multimoneda" y se puede definir una tasa de cambio específica sobre la cuál se realicen la asignación con las facturas en pesos.

Solución:

**Cuándo se muestran documentos en diferentes monedas en el estado de cuenta corriente?**

La manera de que se puedan ver Pagos o Cobros en una moneda diferente a la que se obtiene un reporte de "Estado de Cuenta Corriente" es que los mismos sean generados desde el documento "Recibo de Cobro" o "Recibo de Pago" y tengan marcado que es un documento "multimoneda". De esta manera se solicitará también que se defina en dicho documento la tasa de cambio que se desea considerar para hacer la asignación contra los documentos en una moneda diferente al cobro. Esta tasa de cambio será la que se considerará para realizar la conversión de este documento y así mostrarlo en un estado de cuenta corriente en la moneda de asignación y no la moneda original del Pago.

### ¿Por qué un Estado de cuenta atrasada no muestra pago cobro con saldo abierto en ultimos pagos?

Lo que sucede es que la consulta de últimos pagos toma los pagos cuya fecha de creado sea menor o igual a la fecha de morosidad, y lo mismo para la fecha de transacción del pago.

En un caso hipotético si un cálculo de morosidad tiene fecha 10/12/2023, el pago en cuestión tiene fecha de transacción 4/12/23, pero su fecha de creado es 11/12/23 (mayor a la fecha de morosidad), por esa razón no se mostraría en la sección de últimos pagos.

### ¿Por qué motivo puede quedar la contabilización de un anticipo abierta por Edificio?

Es posible que esté considerando una distribución contable al momento de realizar el asiento.

Lo primero a revisar son las distribuciones contables que tienen definidas.
Puede existir alguna creada que no le hayn marcaron ninguna "Campaña" (Marca) que sería donde se debe seleccionar el "EDIFICIO" que se desea distribuir.

La solución en tal caso sería confirmar que todas las distribuciones contables tengan correctamente definidos sus Parámetros de selección y volver a recontabilizar el pago/Cobro.

## Acciones

### Definición del Socio del Negocio a Facturar en un Contrato de Servicios

Para poder seleccionar a un Socio del Negocio diferente al definido en el Contrato se deberá establecer una Relación entre ambos Socios del Negocio.

En el caso de Educación esta relación se define en la ventana “FAMILIA” y en la pestaña miembros se debe definir al “Socio del Negocio” que se desea definir como “Socio del Negocio a Facturar” como “Responsable de Pago = SI”. Luego de haber marcado este check se debe refrescar el campo del “SDN a Facturar” en el Contrato y seleccionar el mismo.

### Estado de Cuenta Educación (descuento en la misma línea)

 la columna "Descuento" (en el PDF de estado de cuenta educación) muestra el importe de descuento de línea de DxC, el cual es el resultado de la siguiente operación:

(Precio de Lista - Precio ingresado) * Cantidad

### Definición de precios en las Lineas de Contratos

Los precios en las líneas de los Contratos se pueden definir o manualmente o Según Lista de Precios. 

### Definición de Precios en Contrato según Lista de Precios:

Los precios se definen según la Versión de Lista de Precios que esté Activa con fecha menor a la fecha de hoy de la “Lista de Precios” que tiene definido el Contrato.

### ¿Cómo borrar o quitar un Contrato de Servicios cuando ya existe otro para mismo Socio del Negocio?

Los Contratos de Servicio una vez guardados con un Socio del Negocio ya no se podrán Borrar ni Anular por razones de Auditoría. Si se desea que un Contrato de Servicio no figure más como selección el mismo se deberá “INACTIVAR”. Se inactiva simplemenete 

definiendo el Check de “Activo” = NO

## Procesos

### ¿Desde dónde se puede imprimir el "Estado de cuenta corriente"?

Existe un proceso denominado "Imprimir Estado de Cuenta Corriente", a ejecutarse desde la entrada de morosidad (en cálculo de morosidad), el cual ejecuta un PDF u otro, según el nivel de morosidad.

El nivel de morosidad tiene asignado el formato de impresión correspondiente con sus dos opciones:

Estado de Cuenta Corriente cuando el nivel de morosidad es Estado de Cuenta.

Resumen de Saldos Pendientes cuando el nivel de morisidad es Deuda Atrasada.

### Crear Cuotas desde Contrato de Servicios

Las cuotas se crean desde el proceso “crear Cuota desde contrato de Servicios” que está en la ventana Contrato de Servicios. Estas se generarán según la definición que tenga en las líneas. 

Las líneas deberá tener si es “Recurrente” y hay que definir el Producto, el precio y la cantidad.

El precio se define desde la Lista de precios.

* FECHAS DE CONTRATO: para poder crear Cuotas desde un Contrato se debe definir OBLIGATORIAMENTE la fecha inicio y fecha fin. Ya que el proceso generará las cuotas RECURRENTES entre estas fechas.

### ¿Existe un proceso para anular conceptos a facturar?

Si, existen dos procesos para realizar la anulación dependiendo del tipo de concepto a facturar que se desee anular:

Anular conceptos recurrentes: posee filtro de Socio del Negocio obligatorio (se utiliza para anular los conceptos recurrentes).

Anular conceptos no recurrentes: posee filtros de producto y fecha obligatorios (se utiliza para anular los conceptos no recurrentes).

::: tip
El check "Self-Service" se traduce como "No Recurrente"
:::

### ¿Es posible importar contrato manual de hermano en familia existente?

En el proceso de importación de Contrato manual, al seleccionar una familia existente, todos los campos de los grupos de Contacto 1, 2 y 3 se visualizan como sólo lectura, y no se importa ningún dato de ellos, por lo cual el contrato nuevo creado tendrá como Responsable de Pago el mismo que la familia seleccionada.

Si la familia no tiene un RP, entonces los datos de Socio del Negocio a facturar del contrato quedarán vacíos, debiendo completarse a mano luego de finalizar la importación.

### ¿Como ingresar el número de Cédula del Contacto 2 del alumno (que no es responsable de pago)?

Existe el campo de "Cédula" en grupo de "Contacto 2", para las ventanas de importación de contrato (manual y con planilla).

La cédula ingresada para el Contacto 2 se guarda en el campo "Código" del usuario (usuario sin socio del negocio asociado).

Esta cédula se muestra en el reporte de miembros de familia, en la misma columna "CI" ya existente, mediante la siguiente lógica en el reporte:

* Si existe SDN, se toma el número de identificación del SDN
* Si No existe SDN, se toma el código del usuario (cédula)

## Reportes

### ¿Cómo podemos visualizar fácilmente los nuevos contratos año a año para obtener del sistema cuantos nuevos alumnos tenemos?

Para obtener esta información en el reporte "Detalle de Lineas de Contrato" existe (como filtro y columna) el campo "Fecha de Ingreso". El mismo corresponde a la menor fecha de inicio de todos los contratos del alumno, en cualquier estado que se encuentren los mismos.

### ¿Dónde se puede visualizar un desglose de descuento por líneas de Contrato?

En el reporte "Detalle de Líneas de Contratos". Se muestran tantas líneas como cantidad de descuentos haya en pestaña de "Descuentos de Líneas", y cualquiera sea el esquema de descuento.

Para esto se cuenta con las siguientes columnas:

* % Total Desc. en Líneas: es la sumatoria del porcentaje de descuento de las "líneas" del contrato

* Esquema Descuentos: es el nombre del esquema definido en la línea de descuento

* Descripción: es la descripción del esquema de descuento

* % Descuento: es el porcentaje de descuento definido en la línea de descuento del contrato