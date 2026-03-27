---
title: Conciliaciones Bancarias
category: Documentation
star: 9
sticky: 9
article: false
---

Este módulo permite gestionar el proceso completo de conciliación bancaria dentro de VIO, desde la carga del estado de cuenta hasta la generación de pagos o cobros asociados. El objetivo es garantizar que los movimientos registrados en el sistema coincidan con los del banco, asegurando exactitud en la contabilidad y trazabilidad en las operaciones financieras.

## Flujo General del Proceso

1. Crear un nuevo Estado de Cuenta Bancario.

2. Cargar el archivo del estado de cuenta en formato válido (ej. TXT desde Multicash).

3. Importar las líneas del extracto bancario.

4. Ejecutar la conciliación automática y/o manual.

5. Generar pagos y cobros asociados a las transacciones.

6. Revisar saldos y diferencias.

7. Emitir reportes del Estado de Cuenta Bancario.

## Paso a Paso

### 1. Crear Estado de Cuenta Bancario

* Ir a la ventana Estado de Cuenta Bancario.

* Crear un nuevo registro (ejemplo: Conciliación 1).

* Completar los datos:

* Cuenta bancaria (ej. 1030).

* Tipo de documento: Conciliación Bancaria.

* Fecha: seleccionar la correspondiente (ej. último día de febrero).

* Guardar el registro.

![Campo](/assets/img/docs/balance-management/bam-balance-image140.png)

### 2. Cargar el Estado de Cuenta

Desde el registro creado, ir a Acciones > Selección > Carga de Estado de Cuenta.

* Seleccionar el cargador configurado y el archivo en formato TXT.

* Cargar el archivo.

* Confirmar que se carguen las líneas en el registro.

![Campo](/assets/img/docs/balance-management/bam-balance-image1000.png)

![Campo](/assets/img/docs/balance-management/bam-balance-image147.png)

### 3. Importar Líneas del Extracto

* Ir a **Importar Estado de Cuenta**

* Visualizar las transacciones cargadas desde el archivo (para búsqueda más ágil se puede definir el buscador "Importado" = NO)

* Presionar importar (definir datos de Organización y cuenta bancaria) y aceptar.

* Esto generará las líeas en el Estado de Cuentas Bancario.

![Carga de Extracto](/assets/img/docs/education-management/edum-image24.png)

### 4. Ejecutar la Conciliación Bancaria

* Ir a la ventana Conciliación de Estado de Cuenta.

* Revisar las líneas importadas y validar coincidencias.

* Iniciar el proceso de conciliación bancaria.

* El sistema intentará machear automáticamente las líneas con los pagos/cobros existentes (ejemplo: un cobro registrado el 10/02 por 110.000).

* En caso de diferencias de signo o formato, ajustar manualmente.

![Campo](/assets/img/docs/balance-management/bam-balance-image1001.png)

![Campo](/assets/img/docs/balance-management/bam-balance-image161.png)

### 5. Generar Pagos y Cobros desde el Estado de Cuenta

Ir a Acciones > Generar Pagos desde Extracto.

Opciones:

* Generación automática: si está configurada la lógica, el sistema creará pagos/cobros leyendo la descripción y vinculando el socio de negocio.

* Generación manual: seleccionar las líneas pendientes e indicar tipo de transacción.

Los tipos de transacción pueden ser:

- Cargo Bancario
- Otro Tipo de Pago
- Pago sin Identificar
- Tranferencia entre Cuentas

* Confirmar y guardar. Se generarán los pagos/cobros correspondientes.

* Visualizar las transacciones generadas en la pestaña Bank Statement Line.

![Campo](/assets/img/docs/balance-management/bam-balance-image1003.png)

![Campo](/assets/img/docs/balance-management/bam-balance-image1004.png)

![Campo](/assets/img/docs/balance-management/bam-balance-image1006.png)

![Campo](/assets/img/docs/balance-management/bam-balance-image1007.png)

### 6. Revisar Saldos y Diferencias

* Verificar que el sistema muestre el saldo inicial, movimientos conciliados y diferencias pendientes.

* Completar acciones manuales si es necesario hasta que no existan diferencias.

![Campo](/assets/img/docs/balance-management/bam-balance-image1002.png)

### 7. Emitir Reportes

* Ir al reporte Estado de Cuenta Bancario.

* Seleccionar la cuenta bancaria (ej. 1030 – Santander).

* Visualizar todas las líneas cargadas, con el detalle de pagos conciliados, pendientes y saldos.

* Se pueden generar vistas filtradas por balance, socio de negocio o tipo de transacción.

![Campo](/assets/img/docs/balance-management/bam-balance-image1005.png)

### Consideraciones Finales

* El proceso admite conciliaciones parciales o totales.

* La conciliación automática depende de la configuración de algoritmos y la correcta carga de pagos/cobros en el sistema.

* Todos los movimientos quedan trazados en el Estado de Cuenta Bancario, garantizando control y transparencia.

* El Estado de Cuentas Bancario debe completarse luego de realizar la identificación de los pagos y cobros (para que impacte en el saldo de la cuenta). 

::: tip
Es importante que estos estado de cuentas bancarios se completen de forma cronológica para que los saldos se actualocen correctamente
:::