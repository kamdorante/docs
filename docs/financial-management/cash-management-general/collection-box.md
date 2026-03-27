---
title: Caja Cobranza
category: Documentation
star: 9
sticky: 9
article: false
---

El requerimiento principal para realizar el proceso de gestión de caja cobranza es tener una definición de caja creada, para esto contacte a un consultor de Solop ERP. El procedimiento consta en reflejar en Solop ERP el pago realizado por el socio del negocio cliente, por concepto de abono o anticipo de una orden de venta o factura de cuentas por cobrar. Dicho procedimiento se realiza registrando diariamente el cobro en caja y posteriormente el cierre de la misma.

Luego del cierre de caja, el departamento de tesorería realiza el depósito de las cajas en sus respectivos bancos correspondientes, para que caja pueda realizar su cierre y llevar el saldo inicial a cero (0) nuevamente.

El presente material elaborado por Solop ERP pretende ofrecerle una explicación eficiente a nuestros clientes del procedimiento a seguir para obtener un resultado exitoso al momento de realizar el proceso de caja cobranza en la versión 3.9.2 de Solop ERP en la localización Venezuela.

A continuación se explica detalladamente el procedimiento que se debe realizar para obtener un resultado exitoso en caja cobranza.

- Registro de Caja Cobranza

## Registro de Caja Cobranza

Ubique y seleccione en el menú de Solop ERP, la carpeta **Gestión de Saldos Pendientes**, luego seleccione la carpeta **Diario de Caja**, por último seleccione la ventana **Caja**.

![Campo](/assets/img/docs/balance-management/bam-balance-image36.png)

Imagen 1. Menú de Solop ERP

Luego podrá visualizar la ventana **Caja**, donde debe seleccionar el icono **Registro Nuevo** ubicado en la barra de herramientas de Solop ERP para crear un nuevo registro en caja.

![Campo](/assets/img/docs/balance-management/bam-balance-image37.png)

Imagen 2. Icono Registro Nuevo

Seleccione en el campo **Organización**, la organización para la cual esta realizando el documento **Caja**.

Seleccione el tipo de documento a generar en el campo **Tipo de Documento**, la selección de este define el comportamiento del documento que se esta elaborando, dicho comportamiento se encuentra explicado en el documento Tipo de Documento elaborado por Solop ERP. Para ejemplificar el registro es utilizada la opción **Cobro Nacional**.

Seleccione en el campo **Cuenta** la cuenta caja correspondiente al documento que esta realizando. Para ejemplificar el registro es utilizada la opción **Caja Cobranza - –\_Cobranza Nacional**.

Recuerde que para getionar el procedimiento de caja cobranza, debe tener creada la definición de caja cobranza.

Seleccione en el campo **Orden de Venta**, la orden de venta que será reflejada en la caja que esta realizando. Para ejemplificar el registro es utilizada la orden de venta **OVN-28** creada anteriormente.

Al seleccionar la orden de venta, se cargan automáticamente los campos **Socio del Negocio** y **Total de Caja**, con la información contenida en la orden seleccionada. Adicional a ello, se tilda el checklist **Anticipo**.

Introduzca en el campo **Total de Caja** el monto total del pago realizado por el socio del negocio cliente, correspondiente al abono o anticipo del mismo. Para ejemplificar el registro el monto utilizado es **90.000**.

Seleccione en el campo **Tipo de Pago**, la forma de pago utilizada por el socio del negocio cliente. Para ejemplificar el registro es utilizada la opción **Depósito Directo**.

Recuerde guardar los cambios realizados seleccionando el icono **Guardar Cambios**, ubicado en la barra de herramientas de Solop ERP.

Seleccione la opción **Completar**, ubicada en la parte inferior del documento.

![Campo](/assets/img/docs/balance-management/bam-balance-image44.png)

Imagen 9. Opción Completar

Seleccione la acción **Completar** y la opción **Ok** para completar el documento **Caja**.

Realice el procedimiento regular para generar un cierre de caja, explicado en el documento Registro de Cierre de Caja, elaborado por Solop ERP, seleccionando en el campo **Tipo de Documento** la opción **Cierre de Caja Cobranza**.

Ubique y seleccione en el menú de Solop ERP, la carpeta **Gestión de Saldos Pendientes**, luego seleccione la carpeta **Diario de Caja**, por último seleccione la ventana **Depósito de Caja**.

![Campo](/assets/img/docs/balance-management/bam-balance-image47.png)

Imagen 12. Menú de Solop ERP

Luego podrá visualizar la ventana de búsqueda inteligente **Depósito de Caja**, con diferentes campos o filtros para realizar la búsqueda de información en base a lo requerido por el usuario.

![Campo](/assets/img/docs/balance-management/bam-balance-image48.png)

Imagen 13. Ventana de Búsqueda Inteligente Depósito de Caja

Seleccione en el campo **Cuenta Bancaria**, la caja cobranza seleccionada en el campo **Cuenta** de la ventana **Caja**. Para ejemplificar el registro es utilizada la cuenta bancaria **Caja Cobranza - –\_Cobranza Nacional**.

Seleccione la opción **Comenzar Búsqueda**, para filtar búsqueda de la información en base a lo seleccionado.

Podrá visualizar la ventana de búsqueda inteligente **Depósito de Caja**, con los diferentes registros asociados a la cuenta bancaria seleccionada.

![Campo](/assets/img/docs/balance-management/bam-balance-image51.png)

Imagen 16. Ventana de Búsqueda Inteligente Depósito de Caja

Seleccione en el campo **Fecha de la Transacción**, la fecha contable de la caja de la cual se va a realizar el depósito.

Seleccione en el campo **Socio del Negocio**, la compañía para la cual realizó los documentos **Caja**, **Cierre de Caja** y para la cual va a realizar el **Depósito de Caja**.

El checklist **Dividir Depósitos** destildado, permite visualizar el campo **No. del Documento** para ingresar el número de referencia del pago realizado por el socio del negocio y es utilizado cuando se tienen varios registros de caja con el mismo número de referencia, generando un (1) documento de egreso en **Caja** y un (1) documento de cobro en **Pago/Cobro**.

Adicional a ello, al tildar el checklist **Dividir Depósitos** no puede ser visualizado el campo **No. del Documento**, esta acción permite que sea generado un (1) documento de egreso en **Caja**, con la sumatoria de todos los registros de documentos **Caja** que sean seleccionados en la ventana de búsqueda inteligente **Depósito de Caja** y un (1) documento de cobro en **Pago/Cobro**, por cada uno de los registros seleccionados en dicha ventana.

Seleccione en el campo **Tipo de Documento para Retiros**, el tipo de documento que será generado en la ventana **Caja**. Para ejemplificar el registro, el tipo de documento para retiros utilizado es **Egreso Caja**.

Seleccione en el campo **Cuenta Bancaria**, la cuenta bancaria a la cual será realizado el depósito de caja.

Introduzca en el campo **No. del Documento**, el número de referencia del pago realizado por el socio del negocio cliente.

Seleccione en el campo **Cargo**, el cargo correspondiente al procedimiento que se esta realizando. Para ejemplificar el registro es utilizado el cargo **Efectivo en Transito Cobranza**.

Seleccione en el campo **Tipo de Documento para Depósitos**, el tipo de documento que será generado en la ventana **Pago/Cobro**. Para ejemplificar el registro, el tipo de documento para depósito utilizado es **Cobro Nacional**.

Seleccione los diferentes registros de caja que pertenezcan a un mismo banco y la opción **OK** para ejecutar el proceso **Depósito de Caja** con la información ingresada en la ventana de búsqueda inteligente **Depósito de Caja**. Para ejemplificar el registro es seleccionado solo registro de caja **CCxCN-41**.

Se deben seleccionar solo los registros que se conozca que pertencen al banco seleccionado en el campo **Cuenta Bancaria**.

Podrá visualizar los números de documentos en la parte inferior izquierda de la ventana de búsqueda inteligente **Depósito de Caja**. Dichos números de documentos pueden ser utilizados para ubicar los documetos generados.

![Campo](/assets/img/docs/balance-management/bam-balance-image62.png)

Imagen 27. Números de Documento Generados

Al consultar del documento de egreso generado en la ventana **Caja**, con ayuda del número de documento generado en la parte inferior izquierda de la ventana de búsqueda inteligente **Depósito de Caja**, se puede visualizar el registro de la siguiente manera.

![Campo](/assets/img/docs/balance-management/bam-balance-image63.png)

Imagen 28. Documento de Egreso Generado en Caja

Al consultar del documento de cobro generado en la ventana **Pago/Cobro**, con ayuda del número de documento generado en la parte inferior izquierda de la ventana de búsqueda inteligente **Depósito de Caja**, se puede visualizar el registro de la siguiente manera.

![Campo](/assets/img/docs/balance-management/bam-balance-image64.png)

Imagen 29. Documento de Cobro Generado en Pago/Cobro

Realice el procedimiento regular para generar un cierre de caja, explicado en el documento Registro de Cierre de Caja, elaborado por Solop ERP, seleccionando en el campo **Tipo de Documento** la opción **Cierre de Caja Administrativo**.

![Campo](/assets/img/docs/balance-management/bam-balance-image65.png)

Imagen 30. Cierre de Caja Administrativo

::: tip
Para identificar los cobros sin registros en Solop ERP, se debe realizar el procedimiento explicado en el proceso Pagos/Cobros sin Registros del documento **Conciliaciones Automáticas**.
:::