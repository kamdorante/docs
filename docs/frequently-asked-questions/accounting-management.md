---
title: Gestión contable
category: Documentation
star: 9
sticky: 9
article: false
---

## Mantenimientos

### Error: Período cerrado

Para abrir un periodo se debe ingresar en la ventana Año Calendario y Periodo, seleccionar el período que corresponda y luego, en Control de periodo se podrán visualizar todos los documentos para los cuales ese periodo está abierto.

::: tip
Si un período se cierra “Permanentemente”, luego no se puede volver a abrir, ya que el control que realiza el sistema, filtra para no tomar en cuenta los registros con estado “P” (cerrado permanentemente). En ese caso se debe solicitar actualizar los registros cambiando su estado a “C” (Cerrado).
:::

## Acciones

### Definición de Impuestos

Para gestionar diferentes cuentas contables definidas para un impuesto, como por ejemplo si es un Impuesto de GASTO o de VENTA, se debe marcar el check en la Tasa de Impuesto. 

En el caso que una cuenta quede sin número y por fuera del árbol en Elemento Contable. El problema con esta cuenta será que ha sido incorrectamente creada (qued sin tener definido el MENÚ). 
Es una funcionalidad del sistema que lo necesita para que se pueda ver en el árbol. cuando pasa esto hay que verificar si tiene bien definido el Árbol en el elemento contable (Cuenta contable).

::: tip
Seguramente esto sucedió debido a que se creó manualmente sin "Copiar Cuenta" por lo que no se está seteando el menú por defecto. 
:::

### Creación de Tasas de Cambio:

Entrar como Administrador, y en el caso de que la Compañía tenga varias Organizaciones, entrar como asterisco (*).

Ventana: Tasa de Cambio

Se debe tener los valores de: Moneda desde y hacia, factor de conversión y rango de fecha de validez. Con esos valores se crea el registro en el caso de que se requiera.

Puede ocurrir que falle la actualización automática de la tasa de cambio diaria. Por lo cual, quedan días sin cotización y al iniciar el proceso de cierre de mes identifican que existen asientos con valor cero. En este caso se debe generar la actualización de los tipos de cambio por los días faltantes y luego recontabiliizar los casos reportados.

### Creación de Moneda:

Para crear monedas y activarlas se ingresa como System Administrator, en la

Ventana: Moneda

Se crea la moneda, se puede dejar por defecto los valores de precisión. Si es una moneda nueva automáticamente queda activada.

### Modificar Fecha Asiento Diario Simple:

**Ventana:** Asiento Diario Simple

En el campo F.Documento y Fecha Contable (fecha documento), se actualiza el campo F.Documento y luego se toca el boton “Contabilizado”.

A la derecha del campo, hay un boton de control, con el se cambia la fecha. Al presionar el boton “Contabilizado” se abre la ventana “Informacion Contable” con dos subventanas llamadas “Entrar consulta” y “Ver resultado”. Estando parado en “Ver resultado”, presionar el boton “Re-Contabilizar”.

En los casos en los que el documento esta reversado, se debe actualizar por base de datos, con el comando (es solo un ejemplo, el ID del registro despues del signo de igual sera obviamente distinto, asi como la fecha que se quiera actualizar)

TODO cambio de documentos que involucre cambio de fecha, requiere que luego del cambio se toque el boton de “Recontabilizar” dado que el cambio de fecha implica la ubicacion en el tiempo de movimientos contables y si no se reorganiza las cantidades, el resultado del analisis contable no será correcto.

::: tip
El Período de la fecha que dicho asiento fue contabilizado debe estar ABIERTO para permitir re-contabilizar.
:::

### ¿Cómo se puede sortear los controles de Cuenta Controlada en los asientos diarios?

Para poder sortear los controles de "Cuenta Controlada" en los asientos diarios en Lote se debe marcar en "Y" el check de Apertura/Cierre de Ejercicio. 

::: tip
CUIDADO esto no se debe realizar sin verificación de un consultor.
:::

### ¿Cómo re contabilizar un asiento?

Para re contabilizar un asiento se debe abrir el asiento desde el documento en cuestión y hacer click en el botón “Re-Contabilizar” ubidado en el extremo inferior izquierdo. 

El Período de la fecha que dicho asiento fue contabilizado debe estar ABIERTO para permitir re-contabilizar (caso contrario, se deberá abrir el mismo desde la ventana Año, Calendario y Período).

### ¿Qué realiza el proceso de Cierre de Cuentas Integrales? ¿Se puede evitar que genere diferencias?

Este proceso cierra las cuentas de Activo/Pasivo al final del periodo anual fiscal llevándolas a cero y generando un nuevo asiento de Apertura al día siguiente con los mismos valores que cerró. 

La cuenta destinataria se escoge como parámetro. El proceso crea un Lote de Notas Contables con la fecha definida, con una Nota Contable con cada cuenta de Activo/Pasivo con saldo. 

Luego de completar el lote, el saldo de todas las cuentas de Activo/Pasivo será cero para el período que se esté Cerrando. 

También se generará un nuevo Lote de Notas Contables para la “Apertura del Saldo Contable” con fecha del día siguiente al definida inicialmente, con una Nota Contable donde se incluirá todos los saldos que fueron cerrados en el lote anterior dejando el mismo saldo que se tenía en el período anterior que fue cerrado.

Y si, es posible evitar generar diferencias.
Para esto existe un check "Considerar Saldo Total" en ventana del proceso de cierre de ejercicio de cuentas integrales.
Mediante este check se indica cómo se obtiene el saldo de balance para las cuentas, de la manera siguiente:

Y (tildado) = realiza la consulta de saldo con fecha menor o igual a la fecha contable seleccionada
N (destildado) = realiza la consulta de saldo con fecha HASTA igual a la fecha contable seleccionada, y fecha DESDE igual a la fecha contable menos 12 meses.


### ¿Es posible generar el cierre de ejercicio cuentas integrales con fecha diferente al 31/12?

Existen organizaciones que tienen manejan una fecha distinta de cierre (por ejemplo 31/03). 
Para estos casos en los cuales se generará el cierre de 3 meses de un año y 9 de un año diferente, se debe tildar el check "Considerar Salto Total".

### ¿Cuando creamos pagos desde el botón procesos y se pagan gastos sin facturas qué debemos elegir en el campo proveedor?

Si se selecciona la opción en el Tipo de Transacción: Cargo Bancario, el pago será generado con el cargo seleccionado en el campo "Cargo" pero le definirá siempre el Socio del Negocio definido en el Banco de la Cuenta Bancaria desde donde se genera, justamente para que no tengan que elegir el Socio del Negocio que corresponde.
Opcionalmente la lista que se desplega como "Cargo" cuando selecciona la opción de Cargo Bancario también puede ser filtrada para que sólo apareszcan los cargos definidos como Cargos Bancarios.

## Procesos

### Abrir periodo del año y del mes:

Ventana: Año Calendario y Periodo

Pestaña: Calendario

Pestaña: Año (Boton multiple, Seleccionar el año)

Pestaña: Periodo (boton multiple, seleccionar mes)

Pestaña: Control de Periodo (boton multiple, validar columna “Estado del periodo”) debe decir “Abierto”.

En caso contrario (el campo “Estado del Periodo” debería indicar en este momento “Nunca Abierto”), seleccionar el Documento, boton monoregistro, hacer clic en la ventana desplegable “Accion del Periodo”, seleccionar la acción que se desea (en este caso “Abrir”), luego clic en el boton “Abrir/Cerrar” y se abrirá una ventana para “Abrir/Cerrar”, clic en OK.

El estado del Período debería indicar “Abierto”.

### Proceso de “Factura Pérdida/Ganancia Diferencia de Cambio No Realizada”

En proceso “Factura Pérdida/Ganancia No Realizada”, si al ejecutarlo se genera error de que obtiene más de un registro para el mismo ID de asiento, esto se debe a que la factura tiene asociados más de un programa de pagos (pestaña de vencimientos).

### Proceso Diferencia de Cambio Realizada

Esta es la manera como se comporta el sistema:

* Envía Cuentas de **GANANCIA** en los **Documentos por Cobrar** o **Recibos de COBRO** y envía a cuentas de **PERDIDA** en los **Documentos por Pagar** y **Recibo de Pago**.

* Envía a Cuentas De Impuestos DIFERENTES según sea el Documento por Cobrar o por Pagar (Factura cliente o Factura Proveedor) o si es según un Ajuste por Diferencia de Cambio (Asignación).

### Asignación entre Documentos por Pagar/Cobrar

Cuando se realiza una Asignación entre Factura y Nota de Crédito, el ajuste de Diferencia de cambio que realiza es **sólo** por la diferencia entre “Cuentas por Cobrar Comerciales” sin ajustar el Impuesto en cuestión ya que dicho impuesto se entiende se ajustó correctamente de manera implícita en el Asiento de la Nota de Crédito.

### Proceso “Asignación de pagos”
  
En el proceso de "Asignación de pagos", los pagos sin asignar que se hayan hecho con cheques diferidos aparecerán en la parte inferior de la pantalla, junto con las facturas, ya que éstos funcionan como una Nota de crédito.

### ¿Dónde recontabilizo en el caso que haya fallado la contabilización por no existir tasa de cambio del día?

Existen casos (no frecuentes) en los cuales la carga de la tasa automática falla por temas de comunicación con el BCU u otros motivos. En estos casos hay documentos en estado completo que no se encuentren contabilizados debido a la falta de la tasa de cambio (operaciones en moneda extranjera).
En estos casos la solución es ingresar en la ventana **Documentos sin Aplicar**, realizar la búsqueda del documento en cuestión por fecha y estado. Y desde allí realizar la recontabilización (botón azul debajo del campo Estado del documento).

### Proceso de Asignación

* El proceso de Asignación (automático) considera Notas de Crédito?

No, el proceso sólo generará asignaciones entre Facturas y Pagos

* El proceso de Asignación (automático) considera Documentos por Pagar contra Documentos por Cobrar?

No, el proceso sólo considerará DxC con Cobros y DxP contra Pagos.

## Reportes

### Saldo inicial del Balance de Prueba

El saldo inicial del Balance de Prueba sólo brinda el saldo que posee la cuenta en cuestión pero en el AÑO del período que se definió “Desde”. Si la cuenta trae más saldo del año anterior no se mostrará.

Esta funcionalidad presenta un comportamiento correcto si la empresa tiene como Cierre de Ejercicio el 31/12 y si realiza el Cierre y Apertura del Ejercicio. Pero si la empresa tiene como fecha de cierre de ejercicio en una fecha DIFERENTE al 31/12, este reporte presentará inconvenientes. 

::: tip
En este caso de se debería definir un Saldo Inicial según dicha Fecha (Diferente al 31/12). 
:::

### Explicación del Saldo de Cuentas Contables PUENTE

* Cheque Depósitos no Asignados:

El saldo de esta cuenta refiere a los Pagos que no han sido asignados aún. 

Si Todos los pagos son generados de manera correcta al completarse y su importe de  “Totales con sobre/sub pago” es correcto, este Reporte de Pagos sin Asignar debería corresponderse con el Mayor “Cheque Depósito no Asignados”.

### ¿Que registros se consideran en el reporte de Pagos sin Conciliar?

Solamente considera pagos "procesados" (para que se vean sólo en estado "Completo, Anulado, Cerrado o Reversado"), y que además el banco de la cuenta bancaria del pago sea "Banco Propio".