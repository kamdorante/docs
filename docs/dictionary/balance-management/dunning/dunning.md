---
title: Morosidad
category: Documentation
star: 9
sticky: 9
article: false
---

# Morosidad

## Descripción

La ventana **Morosidad** permite definir las reglas de morosidad que se aplicarán sobre los clientes con deuda vencida. Una regla de morosidad agrupa uno o varios **niveles**, cada uno con su propio criterio: mostrar toda la deuda, mostrar solo la deuda vencida a partir de determinada cantidad de días, incluir o no las facturas con pagos parciales, y definir el formato de impresión que se usará para el estado de cuenta enviado al cliente.

Cada **Socio del Negocio** puede asociarse a una regla de morosidad desde el campo *Morosidad* de su pestaña *Cliente*. Ese dato es obligatorio para que el socio sea encontrado cuando se ejecuta el cálculo de morosidad: sin una regla asignada, el cliente no aparece en el cálculo aunque tenga facturas vencidas.

## ¿Cuándo se utiliza?

Se utiliza cuando la organización necesita:

- Definir uno o varios grupos de morosidad para clasificar y organizar la gestión de deuda de forma diferenciada.
- Configurar distintos niveles dentro de una misma regla, por ejemplo según la cantidad de días de atraso (más de 30 días, más de 60 días).
- Definir si un nivel muestra toda la deuda o solo la vencida, y si incluye el detalle de facturas y pagos.
- Establecer el **formato de impresión** que se usará para generar el estado de cuenta o carta que se enviará al cliente.

## Acceso

Menú: Gestión de Saldos Pendientes → Morosidad → Morosidad

## Pestañas

### Morosidad

Encabezado de la regla de morosidad. Agrupa los distintos niveles que se van a configurar debajo.

- **Nombre**
  Identifica la regla de morosidad (por ejemplo, "Morosidad"). Es el valor que luego se asigna en el campo *Morosidad* del Socio del Negocio y el que se selecciona al ejecutar el cálculo.

### Nivel

Cada regla puede tener uno o varios niveles, que definen cómo se comporta el cálculo y qué se muestra en cada caso.

- **Días de Morosidad**
  Cantidad de días de atraso a partir de la cual se aplica este nivel. Permite tener niveles distintos según la antigüedad de la deuda (por ejemplo, uno para más de 30 días y otro para más de 60).

- **Solo Vencidas**
  Determina si el nivel muestra únicamente los documentos ya vencidos a la fecha de generación, o toda la deuda (vencida y no vencida).

- **Incluir Detalle de Facturas**
  Indica si el informe detalla cada factura pendiente o solo un total consolidado.

- **Incluir Pagos**
  Indica si se muestran también los pagos aplicados, o únicamente el saldo pendiente.

- **Formato de Impresión**
  Formato que se usa para generar el documento (carta o estado de cuenta) que se envía al cliente en este nivel. Distintos niveles pueden usar formatos distintos.

### Traducción

Traducciones del nombre y la descripción del nivel para los idiomas activos del sistema.

## Flujo del proceso

### 1. Crear la regla de morosidad

Definir el nombre de la regla (por ejemplo, "Morosidad").

### 2. Configurar los niveles

Dentro de la regla, crear uno o varios niveles según la política de cobranza de la organización: por ejemplo, un nivel simple que muestre el saldo pendiente con el detalle de facturas, o niveles escalonados por días de atraso.

### 3. Definir el formato de impresión

En cada nivel, seleccionar el formato de impresión que se usará para el documento que se envía al cliente.

### 4. Asignar la regla a los clientes

En la ventana **Socio del Negocio**, pestaña *Cliente*, completar el campo *Morosidad* con la regla configurada. Este paso es obligatorio: solo los clientes con la regla asignada son encontrados por el cálculo.

### 5. Ejecutar el cálculo

Una vez configurada la regla y asignada a los socios correspondientes, continuar con [Crear Cálculo de Morosidad](create-dunning-calculation) para generar el detalle de deuda por cliente.

## Ejemplo de uso

Configuración simple de un solo nivel para notificar saldo pendiente con detalle de facturas:

1. Crear la regla de morosidad "Morosidad".
2. Agregar un nivel único, sin restricción de días de morosidad, marcado para incluir el detalle de facturas.
3. Definir el formato de impresión que se usará para el estado de cuenta.
4. Asignar la regla "Morosidad" en el campo *Morosidad* de cada cliente que deba incluirse en la gestión de cobranza.
5. Ejecutar el cálculo desde [Crear Cálculo de Morosidad](create-dunning-calculation) para obtener el detalle de deuda de esos clientes.

## Consideraciones importantes

- El campo *Morosidad* del Socio del Negocio es **obligatorio** para que el cliente sea considerado en el cálculo; si no está definido, el cálculo no encuentra la deuda del cliente aunque existan facturas vencidas.
- Una misma regla de morosidad puede tener **varios niveles**, lo que permite aplicar criterios distintos (por ejemplo, distinto formato de carta) según la antigüedad de la deuda del cliente.
- El **formato de impresión** definido en el nivel es el que determina cómo se ve el documento que finalmente recibe el cliente; puede adaptarse a los datos de cada organización (dirección, razón social, comentarios, etc.).
- Esta ventana define únicamente las **reglas**; el cálculo de la deuda vencida de cada cliente se ejecuta por separado desde [Crear Cálculo de Morosidad](create-dunning-calculation).
- Si la organización cobra intereses por mora, la configuración de tasas se realiza en una ventana aparte y se vincula al cliente en un campo distinto al de la regla de morosidad general.

## Ventanas relacionadas

- [Crear Cálculo de Morosidad](create-dunning-calculation)
- [Corrida de Morosidad](dunning-run)
- [Imprimir Carta de Morosidad](print-dunning-letters)
- [Envío de Email a Socio del Negocio (Morosidad)](email-to-business-partner-dunning)
- [Cálculo de Intereses por Mora](late-payment-interest)
