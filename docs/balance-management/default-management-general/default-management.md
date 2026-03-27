---
title: Gestión de Morosidad
category: Documentation
star: 9
sticky: 9
article: false
---

El Cálculo de Morosidad es un proceso que permite obtener una “foto” de los documentos pendientes de cobro/pago y convertirla en una Carta de Deuda o Estado de Cuenta por cada cliente/familia morosa.
El proceso se utiliza para presentar todos los Documentos por Pagar o Cobrar con saldo abierto al momento de la ejecución, según la fecha definida.

## Flujo General del Proceso

1. Selección de la Morosidad y Nivel de Morosidad.

2. Generación de entradas por Socio de Negocio (SDN).

3. Visualización de documentos pendientes con saldos abiertos.

4. Generación de reportes de Estado de Cuenta / Cartas de Morosidad.

5. Envío masivo de Estados de Cuenta vía correo electrónico.

6. Gestión de Notificaciones y Cola de Envíos.

7. Empaquetado y descarga de estados de cuenta en formato ZIP.

## Paso a Paso

### 1. Definición de Morosidad

La Morosidad se configura en el maestro correspondiente.

Puede incluir parámetros como:

* Mostrar todas las deudas.

* Solo enviar aviso sin importes.

* Enviar deudas por rangos de fecha.

* El Nivel de Morosidad define las condiciones exactas de inclusión/exclusión de documentos.

![Cálculo de Morosidad](/assets/img/docs/balance-management/bam-default18.png)

### 2. Generación de Entradas

Al correr el cálculo, se generan tantas entradas como Socios de Negocio con deuda existan.

Cada entrada muestra:

* Importe total adeudado.

* Cantidad de documentos pendientes.

En las líneas de cada entrada se visualiza:

* Número de documento.

* Importe pendiente.

* Días vencidos.

![Entradas](/assets/img/docs/balance-management/bam-default19.png)

::: tip
Si el check “No Muestra Deuda” está marcado, también se mostrarán facturas no vencidas.
Si el check no está marcado, facturas con días de vencido < 0 no se mostrarán.
:::

### 3. Estado de Cuenta

* Desde cada entrada se puede generar el Estado de Cuenta (carta de deuda en PDF).

* El sistema muestra un cuadro de confirmación y luego genera el PDF con el formato definido.

* Estos reportes se consideran Cartas de Morosidad y pueden ser enviadas al cliente.

### 4. Envío Masivo de Estados de Cuenta

* Acceder al proceso Envío de Estado de Cuenta por Correo.

* Seleccionar las entradas de cálculo que se desean enviar.

Definir parámetros de envío:

* Formato PDF: plantilla de impresión del Estado de Cuenta.

* Template de correo: cuerpo del mensaje a enviar.

* Check “Send Email”: permite enviar o solo simular el envío.

* Si está marcado, además de enviar al cliente, también se remite a familiares responsables configurados en la Familia del SDN.

![Envío de Estado de Cuenta](/assets/img/docs/balance-management/bam-default20.png)

### 5. Notificaciones y Cola de Envío

Cada envío genera Notificaciones en el sistema con:

* Usuario destino.

* Texto del correo.

* Reporte adjunto.

* Dirección de correo remitente/destinatario.

El proceso de envío no es simultáneo:

* Normalmente se procesan 20 notificaciones cada 5 minutos.

En el cálculo se pueden visualizar:

* Correos para enviar.

* Correos enviados.

![Cola de Notificación](/assets/img/docs/balance-management/bam-default21.png)

#### Importante

* Notificación marcada como procesada no significa necesariamente que haya sido enviada (pueden existir rebotes o errores de dirección).

* En caso de error, el registro queda con:

Procesado = NO.

Activo = NO (para que no reingrese al próximo lote).

### 6. Empaquetado de Estados de Cuenta

* Existe un proceso para empaquetar en ZIP todos los estados de cuenta generados en un cálculo de morosidad.

* El archivo queda adjunto al cabezal del cálculo.

* Los archivos no se sobrescriben: se van acumulando, lo que permite descargar todos los estados de cuenta desde una sola acción.

![Empaquetar Estados de Cuenta](/assets/img/docs/balance-management/bam-default23.png)

## Consideraciones Finales

* El Cálculo de Morosidad automatiza tareas que normalmente realiza Cuentas Corrientes cliente por cliente.

* Es posible incluir o excluir anticipos en el cálculo.

El proceso garantiza:

* Centralización de la deuda de cada SDN/familia.

* Generación masiva de estados de cuenta.

* Envío automático de notificaciones con trazabilidad.

::: tip
Se recomienda siempre revisar la Cola de Notificaciones para confirmar que no existan rebotes o errores de envío.
:::