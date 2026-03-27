---
title: Validación de Tasa de Cambio en Documentos Referenciados
category: Documentation
star: 9
sticky: 9
article: false
---

# Validación de Tasa de Cambio en Documentos Referenciados

## Descripción

La funcionalidad de **Validación de Tasa de Cambio en Documentos Referenciados** asegura que los documentos que hacen referencia a un comprobante fiscal electrónico (CFE) original mantengan la misma tasa de cambio, sin importar la fecha en que se generen.

Aplica a los siguientes tipos de documentos:

- Notas de crédito
- Notas de débito
- e-Resguardos anulados

Este proceso es completamente automático y no requiere configuración adicional. Al completar un documento referenciado, el sistema crea o reutiliza un tipo de conversión específico por día que garantiza la consistencia de la tasa de cambio entre el documento original y el referenciado.

## ¿Cuándo se utiliza?

Se utiliza cuando se genera un documento que referencia a un CFE original emitido en una fecha anterior con una tasa de cambio diferente a la del día actual.

Casos típicos:

- Nota de crédito sobre una factura emitida días antes con una tasa de cambio distinta a la vigente.
- Nota de débito que referencia un documento en moneda extranjera.
- Anulación de un e-Resguardo cuyo documento original tiene una tasa de cambio diferente.

## Acceso

La validación se ejecuta automáticamente al completar el documento referenciado. No es necesario acceder a una ventana específica para activarla.

Para verificar los tipos de conversión generados:

**Gestión Financiera** → **Tipo de Conversión**

## Conceptos clave

- **Tipo de conversión por día**
  El sistema genera un tipo de conversión específico para la fecha del documento original (por ejemplo, "Spot - 10/02/2025"), que mantiene la tasa de cambio de ese día.

- **Reutilización automática**
  Si ya existe un tipo de conversión válido para la fecha y tipo de conversión base del documento original, el sistema lo reutiliza en lugar de crear uno nuevo.

- **Vigencia extendida**
  Los tipos de conversión generados tienen una vigencia de 100 años a partir de la fecha del documento original, permitiendo que cualquier documento futuro que referencie esa fecha pueda utilizar la misma tasa.

- **Soporte para múltiples tipos de conversión**
  Si un cliente utiliza varios tipos de conversión (por ejemplo, "Tipo A" y "Tipo B"), el sistema genera tipos de conversión por día para cada uno de forma independiente. Esto permite que en un mismo día coexistan tasas distintas según el tipo de conversión base.

## Campos en Tipo de Conversión

Al generarse un tipo de conversión por día, se completan los siguientes campos en la ventana de Tipo de Conversión:

- **Conversión para el día** (check)
  Indica que este tipo de conversión se generó para mantener la tasa de cambio de un día específico, en el contexto de facturación electrónica.

- **Tipo de conversión de referencia**
  Indica el tipo de conversión base a partir del cual se generó este tipo de conversión por día. Permite identificar a qué tipo de conversión original corresponde.

## Flujo del proceso

### 1. Creación del documento referenciado

Se crea una nota de crédito, nota de débito o e-Resguardo de anulación que referencia un CFE original. La fecha del nuevo documento puede ser diferente a la del documento original.

### 2. Validación automática al completar

Al completar el documento, el sistema:

- Verifica que el documento original y el referenciado tengan la misma moneda.
- Busca o crea un tipo de conversión por día para la fecha del documento original.
- Asigna automáticamente la tasa de cambio del documento original al documento referenciado.
- Genera la tasa de cambio tanto en la conversión directa como en la inversa.

### 3. Resultado

El documento referenciado se completa con la misma tasa de cambio que el documento original, visible tanto en la sección de totales como en las referencias del CFE.

## Validaciones

- La moneda del documento referenciado debe ser la misma que la del documento original.
- La tasa de cambio del documento referenciado debe coincidir con la del CFE que se emite.
- La validación solo aplica si el tipo de documento maneja facturación electrónica.
- El monto de referencia debe ser mayor o igual a cero y menor o igual al monto total a pagar del CFE que se emite.

## Consideraciones importantes

- No requiere ninguna configuración por parte del usuario; el proceso es completamente automático.
- Los tipos de conversión se generan por día y por tipo de conversión base, evitando duplicados innecesarios.
- Si ya existe una tasa de cambio válida para la fecha y tipo de conversión del documento original, no se genera un tipo de conversión adicional.
- Se soportan múltiples tipos de conversión por día cuando el cliente utiliza distintos tipos de conversión en sus operaciones.

## Ejemplo de uso

Se tiene un e-Ticket emitido el 17/02 con tipo de conversión Spot y tasa de cambio 38.841. El 27/02, se genera una nota de crédito que referencia dicho e-Ticket.

Al completar la nota de crédito, el sistema:

1. Busca si existe un tipo de conversión "Spot - 17/02/2025" con la tasa del documento original.
2. Si no existe, lo crea con vigencia de 100 años y la tasa de 38.841.
3. Asigna la tasa 38.841 a la nota de crédito.
4. En el CFE generado, tanto en la sección de totales como en las referencias, se refleja la tasa 38.841.

Si posteriormente se genera otra nota de crédito sobre un documento de la misma fecha (17/02) con el mismo tipo de conversión base, el sistema reutiliza el tipo de conversión ya existente sin crear uno nuevo.

## Documentación relacionada

- [Comprobantes Fiscales Electrónicos](cfe-documents)
- [Configuración Comprobantes Fiscales Electrónicos](configuration)
- [Retenciones y Resguardos](withholding)
