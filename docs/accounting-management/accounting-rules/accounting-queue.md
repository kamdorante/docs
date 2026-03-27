---
title: Cola de Contabilidad
category: Documentation
star: 9
sticky: 9
article: false
---

# Cola de Contabilidad

## Descripción

La funcionalidad de **Cola de Contabilidad** permite configurar el sistema para que la contabilización de documentos no se procese de forma inmediata al completar un documento, sino que se encole y se procese automáticamente mediante un programador de procesos.

De esta forma, cuando un documento es completado, el sistema no genera el asiento contable en ese momento, sino que crea un registro en la cola del sistema. Un programador de procesos automático se encarga posteriormente de procesar dicha cola y generar la contabilidad correspondiente.

## ¿Cuándo se utiliza?

Se utiliza cuando se requiere diferir el procesamiento contable de los documentos para optimizar el rendimiento del sistema.

Casos típicos:

- Alto volumen de documentos que se completan simultáneamente y cuya contabilización inmediata podría afectar el rendimiento.
- Procesos masivos donde se desea que la contabilidad se genere en segundo plano.
- Escenarios donde se prefiere centralizar y programar el procesamiento contable en horarios específicos.

## Configuración

### 1. Validar Tipo de Cola

Se debe verificar que exista el Tipo de Cola **Accounting Processor - PAC** en la compañía System. Este registro se crea automáticamente mediante XML, por lo que normalmente ya se encuentra disponible en el sistema.

### 2. Crear Configuración de Funcionalidad

Se debe crear una configuración de funcionalidad de tipo **Accounting And Cost Setup**. Esta configuración es necesaria para que el sistema reconozca y habilite la funcionalidad de contabilidad en cola.

### 3. Configurar Programador de Procesos

Se debe asegurar que exista el programador de procesos **Process Accounting Queue** con la siguiente configuración:

- **Compañía**
  Debe estar asociado a una compañía específica (no a System).

- **Rol**
  Se debe configurar el rol correcto como Procesador de Tareas.

- **Supervisor**
  Se debe asignar el Supervisor adecuado como Procesador.

::: note
La frecuencia predeterminada del programador es de 5 minutos. Se puede ajustar según las necesidades de la organización.
:::

### 4. Configurar Contabilidad en Compañía

En la ventana **Compañía** se verifica que la configuración de contabilidad esté establecida en el modo deseado. Las opciones disponibles son:

- **Inmediato**
  La contabilidad se genera al momento de completar el documento.

- **Cola**
  La contabilidad se encola y se procesa automáticamente mediante el programador de procesos.

- **Deshabilitado**
  La contabilidad no se genera automáticamente.

::: warning
La configuración de contabilidad se realiza directamente en la ventana **Compañía**. Ya no se utiliza el System Configurator para este propósito.
:::

## Flujo del Proceso

### 1. Completar un Documento

Se completa un documento (por ejemplo, un documento por cobrar) de la forma habitual.

### 2. Verificar Ausencia de Contabilidad Inmediata

Al verificar el documento completado, se observa que no se ha generado contabilidad de forma inmediata, lo cual confirma que la configuración de cola está activa.

### 3. Verificar Registro en Cola del Sistema

En la ventana **Cola del Sistema** se puede observar que se ha creado un registro correspondiente al documento completado. Este registro queda en espera de ser procesado.

### 4. Procesamiento Automático

El programador de procesos **Process Accounting Queue** ejecuta automáticamente el procesamiento de los registros en cola. Una vez procesado, el registro en la cola cambia su estado a procesado.

### 5. Validar Contabilización

Se verifica en el documento original que la contabilidad se ha generado correctamente, accediendo a la opción **Contabilizado** del documento.

## Consideraciones Importantes

- El registro en la cola se procesa únicamente cuando ha transcurrido cierto tiempo desde su creación. Esto implica que puede ser necesario esperar a que el programador de procesos ejecute al menos dos ciclos antes de que el registro sea procesado.
- La frecuencia predeterminada del programador es de 5 minutos, por lo que el tiempo total de espera puede variar entre 5 y 10 minutos aproximadamente.
- Se recomienda verificar la correcta configuración del Rol y el Supervisor en el programador de procesos para garantizar su funcionamiento.
- Si la configuración de contabilidad en la compañía se cambia de un modo a otro (por ejemplo, de deshabilitado a cola), el cambio aplica para los documentos que se completen a partir de ese momento.
