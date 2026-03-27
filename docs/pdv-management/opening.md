---
title: Acciones del Punto de Venta
category: Documentation
star: 9
sticky: 9
article: false
---

## Apertura de Caja

El proceso de apertura de caja consiste en realizar una transferencia bancaria desde un proceso específico del punto de venta. Este procedimiento permite efectuar un egreso desde la caja administrativa y un ingreso en la caja donde se realizarán las operaciones de venta. Dichos movimientos se reflejan en la ventana Caja, mediante los documentos Pago y Cobro.

Este procedimiento genera un registro en la ventana Cierre de Caja, con la cuenta Caja, desde la cual egresa el dinero. En la línea correspondiente, se asocia el registro de Pago, generado en la ventana Caja.

Adicionalmente, se crea un registro en Cierre de Caja, con la cuenta Caja POS, a la cual ingresa el dinero. En la línea del registro se asocia el Cobro, generado en Caja por la apertura.

#### Procedimiento

1. Ubicarse en la solapa [Opciones Rápidas del Punto de Ventas], en sección [Gestión de Caja].

2. Seleccionar la opción [Apertura].

3. Definir el importe para aperturar.

4. Definir en campo [Usar Fondos de Caja] la caja origen para el ingreso de apertura.

5. Seleccionar opción [Transferir Fondos].

6. Aceptar.


::: tip
* Este proceso debe realizarse antes de iniciar las ventas del día.

* No se debe realizar la apertura de caja sin haber entregado físicamente el dinero correspondiente. De lo contrario, los saldos en Solop ERP no coincidirán con los saldos físicos.

* Es obligatorio seleccionar la opción OK en la ventana Transferencia Bancaria para completar el proceso y reflejar el movimiento monetario en Solop ERP.

* Si se requiere aperturar la caja con más de una moneda, se debe realizar una transferencia por cada moneda.
:::

![Apertura 1](/assets/img/docs/pdv-management/pdm-pdv-image292.png)

![Apertura 2](/assets/img/docs/pdv-management/pdm-pdv-image293.png)

## Completar Orden Preparada

El proceso de Completar Orden Preparada permite completar la orden de venta y generar automáticamente su factura y entrega en estado Completo. Se utiliza después de concluir la toma de pedido en la ventana Punto de Venta, permitiendo realizar la venta sin un cobro inmediato.

#### Procedimiento:

* Ubicarse en la solapa [Opciones Rápidas del Punto de Ventas] en sección [Orden de Venta]

* Luego de la toma de pedido, seleccionar la opción Completar Orden Preparada 

![Campo](/assets/img/docs/pdv-management/pdm-pdv-image55.png)

## Copiar Orden Desde Otra

El proceso de Copiar Orden Desde Otra permite duplicar una orden de venta manteniendo los precios de los productos y la tasa de cambio utilizada en la orden original. Es especialmente útil para generar de manera ágil, órdenes recurrentes de ciertos Clientes desde el punto de venta.

#### Procedimiento:

* Ubicarse en la solapa [Opciones Rápidas del Punto de Ventas] en sección [Orden de Venta]

* Seleccionar Orden a copiar desde la opción Registros Históricos en la ventana Punto de Venta.

* Ubicar y seleccionar la orden de venta a copiar.

* Seleccionar la opción Copiar Orden.


::: tip
* Si el terminal requiere un PIN de usuario, se debe ingresar antes de ejecutar el proceso.

* Una vez copiada, la orden se generará en estado Borrador con la fecha actual.

* Si se va a generar una nota de crédito, la orden debe copiarse antes de realizar la devolución, ya que al generarse la nota de crédito la orden original pasará a estado Cerrado.
:::

## Anular Transacción de Venta

Este proceso permite realizar la devolución total de una venta, generando automáticamente los documentos Orden de Devolución, Devolución y Nota de Crédito en estado Completo.

#### Procedimiento:

* Ubicarse en la solapa [Opciones Rápidas del Punto de Ventas] en sección [Orden de Venta]

* Seleccionar la orden desde opción Registros Históricos para localizar la transacción a anular.

* Seleccionar opción [Anular Transacción de Venta].

![Anular Transacción de venta](/assets/img/docs/pdv-management/pdm-pdv-image291.png)

## Cambio de Producto con Nota de Crédito y Nueva Factura

Esta función permitir al usuario realizar la devolución de un producto para generar una Nota de Crédito (NC), la cual será utilizada como saldo a favor para adquirir otros productos en una nueva orden. Si el nuevo total supera el importe de la devolución, se deberá abonar la diferencia.

### Flujo General

1. Buscar la factura original del producto devuelto.

2. Seleccionar el producto a devolver.

3. Generar una Nota de Crédito sin reintegro de dinero.

4. Crear una nueva orden sustituta agregando nuevos productos.

5. Aplicar la NC como medio de pago parcial.

6. Abonar la diferencia (si corresponde).

7. Emitir la nueva factura.

### Paso a Paso

#### 1️⃣ Buscar la factura original

* Ingresal al Punto de Venta (Ejemplo: Caja 1).

* Ir a Histórico de Órdenes.

![Devolución de Producto](/assets/img/docs/pdv-management/pdm-pdv-image302.png)

![Devolución de Producto](/assets/img/docs/pdv-management/pdm-pdv-image303.png)

* Usar el buscador para encontrar la factura, ya sea por:

* Fecha

* Número de factura (proporcionado por el cliente)

* Seleccioná la factura correspondiente.

![Devolución de Producto](/assets/img/docs/pdv-management/pdm-pdv-image304.png)

![Devolución de Producto](/assets/img/docs/pdv-management/pdm-pdv-image305.png)

#### 2️⃣ Iniciar la devolución del producto

Una vez visualizada la factura, hacer clic en Devolver Producto.

Seleccionar la línea del producto que el cliente desea devolver.

El sistema controla la cantidad para que solo pueda devolverse lo comprado.

Confirmar la operación:

* Se generará automáticamente una Nota de Crédito (NC).

#### 3️⃣ Visualizar o imprimir la Nota de Crédito

Opcionalmente, es posible imprimir la NC desde el Facturador Electrónico.

Verificar el importe generado (incluye IVA).

#### 4️⃣ Crear nueva orden sustituta

Seleccionar la opción Crear Nueva Orden.

El sistema copiará la línea del producto devuelto.

* Borrar esa línea, si el cliente quiere llevar productos distintos.

Agregar los nuevos productos que el cliente desea llevar.

#### 5️⃣ Aplicar la NC como medio de pago

Proceder a cobrar la orden.

En Medios de Pago, seleccionar:

* Nota de Crédito

![Devolución de Producto](/assets/img/docs/pdv-management/pdm-pdv-image306.png)

Aparecerá la NC recién generada (ej: A3539).

Al seleccionarla:

Se aplicará el importe como saldo a favor.

Se completará automáticamente la referencia y la fecha.

#### 6️⃣ Abonar la diferencia (si aplica)

Si el nuevo total supera el monto de la NC, se mostrará el saldo pendiente.

* Seleccionar el medio de pago para cubrir la diferencia (ej: efectivo, tarjeta, etc.).

* Confirmar el pago total.

![Devolución de Producto](/assets/img/docs/pdv-management/pdm-pdv-image307.png)

#### 7️⃣ Generar la nueva factura

Una vez cancelado el total:

Se emitirá una nueva factura, con múltiples medios de pago.

La factura reflejará:

* Parte pagada con NC.

* Parte abonada por el cliente.

El ticket estará disponible con todos los detalles.

![Devolución de Producto](/assets/img/docs/pdv-management/pdm-pdv-image308.png)

### Inventario

Al completar este proceso:

* El producto devuelto se ingresa nuevamente al inventario.

* Los nuevos productos salen como una venta normal.

### Resultado Final

- El cliente recibe una nueva factura con productos nuevos.

- El importe de la devolución fue correctamente utilizado como saldo a favor.

- La diferencia fue pagada según el medio seleccionado.

- Todo el proceso queda documentado y trazable.

## Retiro Detallado de PDV

Un retiro de fondos ocurre cuando se extrae dinero de una caja del punto de venta, ya sea por alivio de caja, cancelación de un gasto, entre otros.

#### Ejecución del Proceso

1. Ubicarse en la solapa [Opciones Rápidas del Punto de Ventas], en sección [Gestión de Caja].

2. Seleccione la opción [Retiro].

3. Configure los filtros según su necesidad:

* Terminal PDV: Terminal del punto de venta.
* Definir Caja (origen) en [Usar Fondos de Caja]
* Socio del Negocio: Vendedor asociado.
* Tipo de Pago y Moneda.
* Seleccionar [Transferir Fondos].
* Aceptar

::: tip
Por cada retiro realizado, Solop ERP genera en la ventana Caja:
* Un documento de pago asociando la caja POS.
* Un documento de cobro asociando la caja administrativa.
:::

Si el punto de venta tiene transacciones en efectivo y tarjeta, se deben realizar dos retiros por separado

## Dar Cambio desde PDV

En Solop ERP, cuando se usa el Punto de Venta (POS) y un cliente paga con un importe superior al total de la venta, el sistema permite registrar el cambio entregado como parte de la operación.

### Pasos a seguir:

1. Abrir el Punto de Venta

Accedé al módulo de POS (Punto de Venta) desde el menú principal de Solop ERP.

2. Cargar los productos

Escanear o seleccionar los productos que el cliente está comprando. Verificar que los precios y cantidades sean correctos.

Ejemplo: Total de la venta = $530

3. Ingresar el monto recibido

En el campo **Total del Pago**, ingresar el valor entregado por el cliente.

Ejemplo: el cliente entrega $600

4. Seleccionar la forma de pago

Elegir la opción de pago correspondiente, por ejemplo: Efectivo.

5. Presionar el botón de cobro

Hacer clic en el botón "Pago" (➕). El monto recibido se visualizará en la línea de "Pago".

![Dar Cambio](/assets/img/docs/pdv-management/pdm-pdv-image298.png)

6. Verificar el cambio a entregar

El sistema calcula automáticamente el cambio a entregar y lo muestra en pantalla (en la lína de "Cambio"):

Cambio a entregar: $70

7. Confirmar la operación

Presionar "Aceptar" (botón azul de carrito) para cerrar la venta.

![Dar Cambio](/assets/img/docs/pdv-management/pdm-pdv-image299.png)

8. Entregar el cambio al cliente

Entregar al cliente el monto del cambio indicado por el sistema.

![Dar Cambio](/assets/img/docs/pdv-management/pdm-pdv-image300.png)

* Resultado:

La venta queda registrada por el monto real de la compra ($530).

El sistema deja constancia del importe recibido ($600) y el cambio entregado ($70).

La caja registra correctamente el efectivo neto.

## Cambio en otra Moneda

Esta funcionalidad permite realizar cobros y entregar cambio en una moneda distinta a la de la factura, siempre que la configuración del punto de venta lo permita.

![Dar Cambio](/assets/img/docs/pdv-management/pdm-pdv-image301.png)

### Cambio en Otra Moneda

* La lógica para el cambio en otra moneda es similar a la del cobro:

* Si el método de pago tiene una moneda predeterminada, no se podrá seleccionar otra.

* Si no tiene moneda asignada, sí se podrá seleccionar otra al momento de entregar el cambio.

### Recomendación

Para habilitar el cambio en otra moneda:

* Crear un nuevo método de pago, por ejemplo llamado Cambio.

* Asociarlo al mismo tipo de método de pago que “Efectivo”.

* Activar el campo “Is Allowed To Refund”.

::: tip
Este check es indispensable para que el método de pago esté disponible en la pantalla de cambio.
:::

Cambio Predeterminado: Está definido como default el devolver el cambio al cliente por la diferencia.

![Predeterminado](/assets/img/docs/pdv-management/pdm-pdv-image294.png)

Otra forma de pago: Se devuelve el cambio en otro modo de pago (como ejemplo pago diferido)

![Pago Diferido](/assets/img/docs/pdv-management/pdm-pdv-image295.png)

Ajuste: Realiza un ajuste por pérdida o ganancia por la diferencia.

![Ajuste](/assets/img/docs/pdv-management/pdm-pdv-image296.png)

Resultado:

![Ajuste](/assets/img/docs/pdv-management/pdm-pdv-image297.png)

### Cobros Diferente Moneda

Para que sea posible cobrar en una moneda distinta a la de la factura, el método de pago configurado en el punto de venta no debe tener una moneda predeterminada.

#### Ejemplo funcional: El método de pago Mastercard permite seleccionar una moneda diferente porque no tiene moneda fija asignada.

::: tip
Excepción: El método de pago Efectivo tiene una moneda fija configurada, por lo tanto no permite seleccionar otra moneda al momento del cobro.
:::

### Monedas para el cobro

Las monedas que se muestran en el punto de venta para seleccionar dependen de los siguientes criterios:

* Que la moneda tenga una tasa de conversión configurada.

* Que dicha tasa esté configurada para el mismo tipo de conversión que utiliza la moneda principal del punto de venta.

* Que la tasa esté vigente a la fecha actual.

## Crear SDN en PDV

### Objetivo

Crear directamente un nuevo Socio de Negocio desde la ventana de ventas del POS, con la posibilidad de ingresar número de cédula o RUT.

### Pasos:

* Abrir el Punto de Venta (POS):

Ingresar al POS con la terminal configurada (Ver Configuración del Punto de Venta)

* Iniciar una nueva orden de venta:

Crear una nueva orden y seleccionar la opción de crear un nuevo socio de negocio.

* Seleccionar tipo de identificación:

Elegir si se va a ingresar una cédula o un RUT.

Si es persona física seleccionar el template de cédula.

Si es empresa seleccionar el template de RUT.

* Completar datos del nuevo socio:

Nombre del cliente o empresa

Correo electrónico

Teléfono

Dirección (Calle, Departamento, País)

* Confirmar creación:

Al guardar, se crea automáticamente el socio de negocio y se vincula a la orden.

* Validación automática de documentos:

Si el tipo de documento es “POS Order” y está configurado para emitir factura electrónica:

a. Se genera la factura 

b. Se emite el ticket sin requerir etiquetas adicionales

* Notas adicionales:

Si se vuelve a ingresar un RUT ya definido, el sistema lo detecta automáticamente y reutiliza el socio.

El proceso está automatizado para facilitar la operación en POS

## Precio convertido en PDV

En la terminal PDV se utiliza una lista de precios principal (por ejemplo, Ventas POS) que puede tener productos con precio definido o en cero.

Esta lista puede referenciar una lista de precios de respaldo o referencia (por ejemplo, en otra moneda como USD).

El sistema aplica la lógica de conversión solo si se cumplen ambas condiciones:

El producto está en la lista de precios activa del punto de venta.

El producto tiene precio cero en esa lista.

### Conversión en PDV

Si al cargar un producto su precio está en cero en la lista de precios activa, el sistema busca el mismo producto en la lista de precios de referencia.

Si lo encuentra, toma ese valor, lo convierte a la moneda local (la del punto de venta) utilizando la tasa de cambio vigente, y lo carga automáticamente en la orden.

Este proceso de conversión ocurre únicamente en los siguientes casos:

* Al agregar una nueva línea en la orden de venta.

* Al cambiar de producto en una línea ya existente.

No se aplica la conversión si:

Se modifica la cantidad: simplemente se multiplica por el precio ya asignado.

Se edita manualmente el precio en la línea: en ese caso se respeta el valor ingresado y no se vuelve a calcular.

Esta funcionalidad permite mantener listas de precios simplificadas en moneda local, tomando como base precios definidos en moneda extranjera, sin necesidad de duplicar valores o mantener listas paralelas completas.

#### Ejemplo Práctico

Producto: Zapatilla Modelo X

Lista de precios activa en PDV: Ventas POS (moneda: Pesos ARS)
→ Precio definido: $0

Lista de precios de referencia: Precios USD Público (moneda: Dólares USD)
→ Precio definido: USD 10

Tasa de cambio del día: 1 USD = $950

#### Resultado en PDV al agregar el producto:

El sistema detecta que el precio está en cero en la lista activa.

Busca en la lista de referencia y encuentra el precio: USD 10.

Aplica la conversión:
USD 10 × $950 = $9.500

El producto se carga automáticamente con $9.500 en la orden de venta.