---
title: Cálculo de Interés por mora de Facturas
category: Documentation
star: 9
sticky: 9
article: false
---

## Cálculo de interés por Mora sobre Facturas de colegios

### Primer paso: Cálculo de Morosidad

El proceso de Cálculo de Mora sobre Facturas se realiza en dos etapas. Primero se genera un cálculo estimado de lo que hasta la fecha lleva adeudado el responsable de pago y que será notificado en el Estado de Cuenta realizado desde el Cálculo de Morosidad. En este caso se realiza simplemente un cálculo de la mora generada por las facturas adeudadas hasta la fecha que se genera el Cálculo de Morosidad.

Luego tendremos el proceso de cálculo de mora correspondiente que sucede una única vez por Factura cuando ésta es cancelada en su totalidad. Al momento de realizar la asignación por el total de la factura, se marcará el check de Pagado junto con los dias de vencido que la misma tuvo. 

### Cálculo de interés por mora en el Cálculo de Morosidad

En el cálculo de morosidad se obtiene y asigna al campo "Total de Tarifa" el importe de mora hasta la fecha, y se muestra a modo informativo en el PDF de estado de cuenta.

Para esto, si el nivel de morosidad tiene marcado el check "Cargo", primero se intenta obtener la tasa financiera definida en el SDN, si no existe entonces se toma la del nivel de morosidad, y como última opción se tomará desde el campo "Total de Tarifa" en el propio nivel de morosidad.

::: tip
Cálculo de la Tasa Financiera:
Tasa Final = (Días Vencido / Días del Mes) * Tasa de Interés
:::

![Cálculo de morosidad](/assets/img/docs/balance-management/bam-default-image1.png)

![Estado de Cuenta](/assets/img/docs/balance-management/bam-default-image2.png)

![Morosidad](/assets/img/docs/balance-management/bam-default-image3.png)

### Segundo paso: Generar Cálculo de Mora desde Facturas

Posteriormente a que se realicen todas las asignaciones y antes de correr un nuevo proceso de facturación masiva, se deberá correr manualmente el proceso de "Generar cálculo de Mora desde Facturas". Este proceso recorrerá todas las facturas que tengan días de vencido diferente de 0 y que no estén con una mora ya calculada y generará el correspondiente cálculo de mora (Transacción Financiera y Lote de transacción financiera). En los casos que exista un importe de mora > a 0 se generará automáticamente al Socio del Negocio de cada factura un "Concepto a Facturar" (Informe de Gasto) con el importe y el producto de interés de mora para que pueda ser facturado como un concepto más de la mensualidad. Considerar que estos conceptos se crean con fecha del día que se corre.

**Cálculo de Mora sobre Factura**

### Proceso de Cálculo de Mora sobre Factura

Este proceso se puede ejecutar masivamente desde el menú, o desde un DxC en particular.

![Proceso del Menú](/assets/img/docs/balance-management/bam-default-image6.png)

![Proceso del Documento](/assets/img/docs/balance-management/bam-default-image7.png)

Obtiene los DxC que cumplan las siguientes condiciones:

* Transacción de Ventas = SI
* Pagado = SI
* Organización con la cual se ingresó al sistema
* Tipo de transacción financiera: Interés por Mora (por defecto)
* La factura no debe estar en un lote de transacción financiera cuyo estado sea distinto a REVERSADO o ANULADO

El proceso genera un lote de transacción financiera para cada factura procesada, el lote se completa y desde el mismo se genera el informe de gastos y se completa.

Si el término de pago de la factura tiene definido días de gracia, se considera esto para comparar con los días de vencido de la factura, y en caso que los días de vencido sean menores o  
iguales a los días de gracia, entonces se genera el lote pero con importe en cero, y el informe de gasto no se genera.

::: tip
Si el informe financiero tiene vinculado un lote de transacción financiera, entonces se asigna a la factura generada el tipo de documento correspondiente de "Nota de Débito" según la organización y grupo de impuestos del SDN (estos documentos Nota de débito no generan cálculo por mora).
:::

![Condición de Pago](/assets/img/docs/balance-management/bam-default-image8.png)

![Lote de Transacción](/assets/img/docs/balance-management/bam-default-image9.png)

Luego, los DxC generados por el SB de generar factura desde cuota, son tomados por el proceso de cálculo de mora y considerados en el PDF de estado de cuenta corriente.

Se obtiene la tasa financiera definida en el SDN, y desde la misma el producto y el porcentaje para la versión actual.  
Para obtener el importe de mora se utiliza el campo de "Días de Vencido" asignado previamente en el DxC.

![Socio del Negocio](/assets/img/docs/balance-management/bam-default-image10.png)

![Definición de Tasa](/assets/img/docs/balance-management/bam-default-image11.png)

![Versión de Tasa](/assets/img/docs/balance-management/bam-default-image12.png)

En el lote generado se agrega una descripción indicando que fue creado por el proceso

![Batch](/assets/img/docs/balance-management/bam-default-image13.png)

![Transacciones](/assets/img/docs/balance-management/bam-default-image14.png)

**Generación de Lote de transacción:**

Se generan los lotes de transacción financiera e informes de gasto abiertos ambos por línea de factura, es decir que ambos documentos poseen la misma cantidad de líneas que tiene el DxC desde el cual se ejecuta el proceso de mora. El importe de mora se muestra en cada línea de ambos documentos, y el totalizador en los cabezales.

Se puede visualizar el dato de "Actividad" y "Línea de Contrato de Servicio", ambos datos son obtenidos desde la línea de DxC.

**Aplicación de interés:**

Se cuenta con una configuración especial para definir la fecha que deseen y sea considerada como **comienzo de aplicación de los días de vencimiento sobre facturas** sobre la cuál aplicar interés por mora.

Esta fecha se utiliza:

1. Días de Vencimiento en Facturas: Al marcarse el check de PAGADO en el DxC se calcularán los días de vencimiento según la diferencia entre la fecha de vencimiento de la Factura y la Fecha de Asignación que canceló la factura, siempre y cuando la Fecha de Vencimiento de la Factura sea MAYOR a la **"FECHA INICIO MORA"**, si la fecha de Vencimiento de la factura es MENOR **"FECHA INICIO MORA"** entonces se considerará la diferencia entre la Asignación y la Fecha de Inicio MORA para definir los días de Vencida de factura.

![Días de Vencimiento](/assets/img/docs/balance-management/bam-default-image15.png)

2. Días de Vencimiento en línea de Cálculo de Morosidad: Lo explicado en el punto anterior también aplica para la definición de días de Vencimiento en las líneas en el cálculo de morosidad.

![Días Vencimiento en Morosidad](/assets/img/docs/balance-management/bam-default-image16.png)

En el configurador del sistema "UY_Dunning_Date_From" se setea la fecha desde la cual se aplicará la mora.

![Configurador del Sistema](/assets/img/docs/balance-management/bam-default-image17.png)

Esta fecha se utiliza al marcarse el check de PAGADO en el DxC, y en base a la misma se hace el cálculo y seteo de los días de vencido de la factura.

Esto también aplica para la creación de las líneas en el cálculo de morosidad.

### Documentos por Cobrar

En el campo "Días de Vencido" en ventana de DxC, se calcula y se muestra cuando se marca el check de "Pagado" en el documento al momento de completarse la asiganción de pagos.

![Documento por Cobrar](/assets/img/docs/balance-management/bam-default-image4.png)

**Cálculo de "Días de Vencido"**

Se obtienen los días de vencido a partir de la fecha de vencimiento de la factura y la fecha de la asignación. Si se le quita el check de pagado a la factura, se setea en cero los días de vencido.

En la asignación indica que se trata de una asignación de nota de crédito, este tipo de asignación no es considerada en esta funcionalidad.

![Asignación](/assets/img/docs/balance-management/bam-default-image5.png)

### Cálculo de Pagos Parciales

Cuando la factura tiene más de una asignación, se considera los días de vencido de la línea de asignación, y no los del cabezal de la factura. Tambíen se hace un prorrateo para saber qué porcentaje de la factura se ha asignado en cada una de las asignaciones.

::: tip
Los lotes de transacción financiera se generan según la cantidad de asignaciones que tenga la factura.
:::