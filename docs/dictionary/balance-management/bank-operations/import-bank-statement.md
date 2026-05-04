---
title: Importación de Extracto Bancario
category: Documentation
star: 9
sticky: 9
article: false
---

# Importación de Extracto Bancario

## Descripción

La **Importación de Extracto Bancario** es el flujo que toma el archivo descargado del banco (planilla con los movimientos del período), lo carga en una tabla intermedia del sistema y lo convierte en un **Estado de Cuenta Bancario** listo para conciliar contra los pagos y cobros del sistema. El proceso se divide en tres etapas: preparación de la planilla, carga del archivo a la tabla intermedia mediante el **Cargador de Archivos**, y ejecución del proceso **Importar Extracto de Cuenta Bancaria** que genera el documento final.

Esta funcionalidad es necesaria cuando el banco no tiene un cargador automático integrado (por ejemplo, BROU, donde se descarga la planilla manualmente y se transforma a un formato compatible). Para entidades con clase de carga propia (Itaú, Scotia, Multicash), el proceso es similar pero sin la etapa manual de transformación.

## ¿Cuándo se utiliza?

Se utiliza cuando la organización necesita:

- Cargar el extracto bancario de un banco que no tiene cargador automático configurado.
- Convertir planillas descargadas del homebanking a un formato importable por el sistema.
- Ingresar los movimientos del banco en lotes ordenados (por mes, por semana o por la frecuencia que defina la organización).
- Validar las líneas importadas antes de generar el estado de cuenta para conciliar.
- Cargar en cuentas bancarias cuyo cargador automático aún no está disponible.

## Acceso

El flujo recorre tres ventanas o procesos:

1. **Cargador de Archivos:** Sistema → Cargador de Archivos → Importar Estado de Cuenta Bancaria.
2. **Importar Estado de Cuenta Bancaria** (tabla intermedia): Gestión de Saldos Pendientes → Operaciones Bancarias → Importar Estado de Cuenta Bancaria.
3. **Importar Extracto de Cuenta Bancaria** (proceso final): Gestión de Saldos Pendientes → Operaciones Bancarias → Importar Extracto de Cuenta Bancaria.

## Configuración previa

### Cuenta bancaria

La cuenta bancaria destino debe estar **activa** y configurada en la ventana **Banco → Cuenta**, con su moneda definida y un socio de negocio asociado al banco.

### Formato de archivo esperado

El sistema acepta archivos **TSV** (separados por tabulados). Se prefiere TSV antes que CSV porque las comas pueden interpretarse como separadores decimales en algunos exports y causar errores de parsing.

Estructura mínima esperada:

- **Fecha del movimiento** (en formato compatible, no como serial de Excel).
- **Descripción** del movimiento.
- **Importe** con signo (positivo para cobros, negativo para pagos).
- **Número de Referencia** del banco (cuando lo provee).

## Pestañas

### Importar Estado de Cuenta Bancaria (tabla intermedia)

Pestaña de la tabla donde quedan los registros descargados desde el cargador antes de convertirse en líneas del estado de cuenta. Los campos relevantes son:

- **Organización**
  Organización a la que pertenece el extracto.

- **Banco y Cuenta Bancaria**
  Banco y cuenta destino del extracto.

- **Moneda**
  Moneda en que están expresados los movimientos.

- **Fecha del Movimiento**
  Fecha bancaria de la transacción.

- **Descripción**
  Texto descriptivo del banco.

- **Número de Referencia**
  Identificador del movimiento provisto por el banco.

- **Importe**
  Monto del movimiento con signo.

- **Estado de Importación**
  Indica si el registro fue ya procesado al estado de cuenta o si está pendiente.

## Acciones disponibles

- **Cargar Archivo** (desde Cargador de Archivos)
  Sube el archivo TSV al sistema, lo parsea y deja los registros en la tabla intermedia. Permite eliminar la primera línea de encabezados al cargar.

- **Eliminar Línea Pendiente** (desde Importar Estado de Cuenta Bancaria)
  Borra registros que no deben procesarse (encabezados accidentales, líneas duplicadas, errores de parsing).

- **Importar Extracto de Cuenta Bancaria** (proceso)
  Toma todos los registros pendientes de la tabla intermedia, los procesa contra la cuenta bancaria seleccionada y genera el documento **Estado de Cuenta Bancario** con todas sus líneas.

## Flujo del proceso

### 1. Descargar el extracto del banco

Acceder al homebanking, descargar la planilla con los movimientos del período. Generalmente viene en formato Excel con filtros y agrupaciones.

### 2. Limpiar y transformar la planilla

En Excel o Google Sheets:

- Quitar los filtros del archivo descargado.
- Seleccionar todos los movimientos completos (desde el cabezal hasta el último registro) y copiarlos a una hoja nueva.
- Agregar una columna **Importe** con una fórmula que asigne signo positivo (cobros) o negativo (pagos) según la convención del banco.
- Aplicar un filtro para descartar líneas vacías (sin fecha o sin importe) y eliminarlas.
- Pasar los movimientos definitivos a una **tercera hoja** que contenga solo lo que se va a importar.

### 3. Validar el formato de fecha

Verificar que el campo **Fecha** se mantiene en formato de fecha (no como número serial). Si el archivo se procesó en Google Drive Sheets, suele ser necesario reestablecer el formato de la columna antes de exportar.

### 4. Exportar como TSV

Descargar la hoja final como archivo separado por **tabulaciones (TSV)**. Evitar CSV separado por comas porque puede confundir los decimales.

### 5. Cargar el archivo en el sistema

Desde **Cargador de Archivos → Importar Estado de Cuenta Bancaria**:

- Seleccionar el banco y la moneda destino.
- Avanzar al siguiente paso y elegir el archivo TSV.
- Si el archivo trae cabecera, eliminarla desde la pantalla del cargador para evitar que entre como una línea de datos.
- Validar visualmente los registros que el sistema interpreta antes de confirmar.
- Procesar el cargador. El sistema informa la cantidad de líneas importadas; comparar con la cantidad esperada (por ejemplo, 174 de 174).

### 6. Revisar la tabla intermedia

Abrir **Importar Estado de Cuenta Bancaria** y verificar que los registros recién cargados están como pendientes. Eliminar líneas erróneas (por ejemplo, una primera línea de encabezado que no se descartó en el cargador).

### 7. Ejecutar Importar Extracto de Cuenta Bancaria

Desde el proceso correspondiente, indicar la organización y la cuenta bancaria. Ejecutar. El sistema toma todos los registros pendientes de la tabla intermedia, los procesa y genera el documento **Estado de Cuenta Bancario** con sus líneas.

### 8. Validar el estado de cuenta generado

Abrir el documento **Estado de Cuenta Bancario** generado, verificar que la cantidad de líneas coincide con lo cargado y continuar con el flujo estándar de conciliación.

## Ejemplo de uso

Cargar el extracto mensual de una cuenta bancaria que no tiene cargador automático:

1. Desde el homebanking, descargar el extracto del mes (174 movimientos).
2. Abrir el archivo en Google Sheets, quitar filtros y copiar los movimientos a una hoja nueva.
3. Agregar la columna **Importe** con la fórmula que aplica signo según la columna *Débito/Crédito* del banco.
4. Filtrar y eliminar líneas vacías (las que no tienen fecha).
5. Pasar los movimientos definitivos a una tercera hoja.
6. Verificar el formato de fecha y descargar como **TSV**.
7. En el sistema, abrir **Cargador de Archivos → Importar Estado de Cuenta Bancaria**, seleccionar el banco y moneda correspondientes.
8. Subir el TSV. El sistema indica que cargó 174 líneas.
9. Abrir **Importar Estado de Cuenta Bancaria** y confirmar que las 174 líneas están pendientes; eliminar la primera fila si es un encabezado que se coló.
10. Ejecutar **Importar Extracto de Cuenta Bancaria** indicando la cuenta bancaria. El sistema genera el documento Estado de Cuenta Bancario listo para conciliar.

## Consideraciones importantes

- El formato **TSV** (tabulaciones) es más seguro que el CSV (comas) cuando los importes incluyen decimales separados por coma; evita errores de parsing.
- El campo **Fecha** debe quedar en formato de fecha legible. Si la planilla pasó por Google Drive Sheets, puede convertirse a número serial; corregir el formato antes de exportar.
- Cargar **un extracto a la vez** por cuenta bancaria. El proceso de importación toma todos los registros pendientes de la tabla intermedia, así que mezclar dos cargas distintas puede generar diferencias.
- Si la primera línea del archivo es un **encabezado**, eliminarla desde el cargador o borrarla luego en la tabla intermedia. De lo contrario aparece como una línea de datos con error.
- Validar siempre que la **cantidad de líneas importadas** coincide con la del archivo original (por ejemplo, *174 de 174*). Si difiere, revisar las líneas vacías y los registros mal parseados.
- Los movimientos quedan en la **tabla intermedia** hasta que se ejecuta el proceso de importación. Pueden eliminarse o corregirse desde esta tabla antes de procesarlos definitivamente.
- El proceso **Importar Extracto de Cuenta Bancaria** procesa todos los pendientes; si hay registros de cargas anteriores no procesados, se incluirán en el estado de cuenta generado. Limpiar la tabla intermedia antes de cargar nuevas planillas.
- Para bancos con **cargador automático** (Itaú, Multicash, Scotia, etc.), el flujo es similar pero la transformación manual de la planilla no es necesaria: el cargador interpreta el formato nativo del banco directamente.

## Ventanas relacionadas

- [Estado de Cuenta Bancario](bank-statement)
- [Conciliación de Estado de Cuenta](bank-statement-match)
- [Conciliación Manual con Diferencia en Montos](../../accounting-management/reconciliation/bank-statement-assignment-with-difference)
