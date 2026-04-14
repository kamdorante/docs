---
title: Contabilización y Costeo por Cola
category: Documentation
star: 9
sticky: 9
article: false
---

# Contabilización y Costeo por Cola

## Descripción

La funcionalidad **Contabilización y Costeo por Cola** permite diferir la generación de asientos contables y el cálculo de costos de producto para que no ocurran al momento de completar un documento. En lugar de procesarse en línea, las operaciones se encolan y son ejecutadas automáticamente por un programador de tareas en segundo plano con una frecuencia configurable.

Esto hace que las operaciones diarias (completar facturas, órdenes, remitos) sean más rápidas para el usuario, ya que el documento se completa de inmediato y la contabilidad/costeo se resuelven en el ciclo siguiente del programador.

## ¿Cuándo se utiliza?

Se utiliza cuando la organización necesita:

- Acelerar la operación diaria en ventanas de alta carga (retail, facturación masiva, ingresos de mercadería).
- Evitar que los cálculos contables o de costeo bloqueen al usuario al completar un documento.
- Procesar de forma ordenada grandes volúmenes de asientos sin degradar la experiencia del sistema.
- Habilitar o deshabilitar la contabilización y el costeo de manera independiente según la compañía.

## Acceso

Existen dos puntos de configuración:

1. **Ejecución inicial:** Definición → Configuración de Contabilidad y Costeo. Este proceso se ejecuta una vez por compañía para crear los programadores necesarios.
2. **Parámetros por compañía:** Información de la Compañía → campos **Configuración de Contabilidad** y **Configuración de Costo**.
3. **Programadores generados:** Definición → Programador de Procesos (se crean dos automáticamente: uno para contabilidad y otro para costeo).

## Pestañas

### Información de la Compañía

Dos campos controlan el comportamiento por compañía:

- **Configuración de Contabilidad**
  Define cuándo se generan los asientos al completar un documento. Valores posibles: *Inmediato*, *En Cola*, *Deshabilitado*.

- **Configuración de Costo**
  Define cuándo se calculan los costos de producto al completar un documento. Valores posibles: *Inmediato*, *En Cola*, *Deshabilitado*.

::: tip
Estos campos reemplazan el antiguo configurador de sistema. El migrador asigna el valor inicial tomando la configuración previa de la compañía o, en su defecto, la del sistema.
:::

### Programador de Procesos (Contabilidad y Costeo)

Al ejecutar la configuración inicial, el sistema crea dos programadores con los siguientes parámetros:

- **Tipo de Cola**
  Indica si el programador procesa la cola de contabilidad o la de costeo.

- **Lotes a Procesar**
  Cantidad de lotes ejecutados por ciclo (por defecto: 10).

- **Registros por Lote**
  Cantidad de registros procesados por lote (por defecto: 1).

- **Frecuencia**
  Intervalo de ejecución en minutos (por defecto: 5).

## Acciones disponibles

- **Configuración de Contabilidad y Costeo**
  Proceso inicial que crea los dos programadores y habilita la compañía para trabajar con cola. Debe ejecutarse una vez por compañía.

- **Recontabilizar**
  Acción directa sobre el documento. Fuerza la generación del asiento sin esperar el ciclo del programador. Útil cuando el documento ya está encolado y se necesita el asiento de inmediato.

- **Activar / Desactivar Programador**
  Los programadores pueden pausarse temporalmente desde la ventana Programador de Procesos si se requiere detener el procesamiento en cola.

## Flujo del proceso

### 1. Ejecutar la configuración inicial

Desde el menú de **Definición**, ejecutar el proceso **Configuración de Contabilidad y Costeo** para la compañía. Esto genera automáticamente los dos programadores de procesos (contabilidad y costeo).

### 2. Ajustar los parámetros por compañía

En **Información de la Compañía**, definir los campos **Configuración de Contabilidad** y **Configuración de Costo** con uno de los valores: *Inmediato*, *En Cola* o *Deshabilitado*.

### 3. Validar los programadores

Desde **Programador de Procesos**, verificar que existan ambos programadores (contabilidad y costeo), que estén activos y que su frecuencia sea la deseada (5 minutos por defecto).

### 4. Completar un documento

Al completar un documento por cobrar, por pagar, orden o remito con configuración *En Cola*, el sistema registra el documento en la tabla de cola (referenciado por tabla y registro) sin generar el asiento en el acto.

### 5. Procesamiento automático

El programador de procesos toma los documentos encolados en cada ciclo y genera los asientos o los cálculos de costo correspondientes. Puede requerir dos ciclos desde la creación del documento hasta ver el asiento procesado.

### 6. Verificar el resultado

Consultar el documento y confirmar que el asiento contable o el cálculo de costo quedó registrado. Si se necesita forzar el procesamiento sin esperar, utilizar la acción **Recontabilizar** desde el documento.

## Ejemplo de uso

Una compañía de retail quiere acelerar la facturación diaria sin que el cálculo contable bloquee la caja:

1. Desde **Definición → Configuración de Contabilidad y Costeo**, ejecutar el proceso para la compañía. El sistema crea dos programadores automáticamente.
2. En **Información de la Compañía**, establecer **Configuración de Contabilidad = En Cola** y **Configuración de Costo = En Cola**.
3. Verificar en **Programador de Procesos** que ambos programadores están activos con frecuencia de 5 minutos.
4. Crear una factura por cobrar y completarla. El documento se marca como completo de inmediato.
5. Esperar el ciclo del programador (hasta 5 minutos). Al volver al documento, el asiento contable ya está generado.
6. Si antes del ciclo se necesita ver el asiento, ejecutar **Recontabilizar** directamente desde la factura.

## Consideraciones importantes

- El proceso de configuración inicial debe ejecutarse **una vez por compañía**. Sin este paso los programadores no se crean y la cola nunca se procesa.
- La configuración por compañía reemplaza al antiguo configurador de sistema; si existe configuración a nivel de sistema y también a nivel de compañía, prevalece la de la compañía.
- El programador puede requerir **dos ciclos de ejecución** antes de procesar un documento recién completado, dependiendo del momento en que se encoló.
- Si durante pruebas se reduce la frecuencia del programador (por ejemplo a 1 minuto), restaurarla al valor por defecto (5 minutos) al finalizar.
- La opción *Deshabilitado* evita que se generen asientos o cálculos de costo al completar el documento. Usar con precaución.
- El usuario y el rol del supervisor del programador deben estar correctamente configurados; de lo contrario, los ciclos no se ejecutarán aunque el programador esté activo.

## Ventanas relacionadas

- [Lote de Pólizas Contables](../journal-entries/gl-journal-batch)
- [Póliza Contable](../journal-entries/gl-journal)
- [Importación Masiva de Asientos Contables](../journal-entries/import-journal-entries)
