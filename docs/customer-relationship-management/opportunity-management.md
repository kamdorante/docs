---
title: Gestión de Oportunidades
category: Documentation
star: 9
sticky: 9
article: false
---

La ventana de **Oportunidades** centraliza el seguimiento del proceso comercial dentro del módulo CRM de Solop ERP. Permite registrar, filtrar y gestionar cada oportunidad de venta desde el primer contacto hasta la generación del proyecto y la orden de venta.

---

## Visualización y filtros

Desde la ventana de oportunidades es posible ver todas las oportunidades activas y aplicar filtros por:

- **Agente comercial**: muestra únicamente las oportunidades asignadas a un vendedor específico.
- **Etapa**: filtra por la fase del proceso de venta en que se encuentra cada oportunidad.

Además de la vista de lista, el sistema ofrece una **vista de embudo de ventas** donde las oportunidades se agrupan por etapa. Desde esta vista se pueden arrastrar y soltar registros entre etapas, y crear nuevas oportunidades directamente.

---

## Campos principales de una oportunidad

- **Socio de negocio**: cliente o prospecto al que corresponde la oportunidad. El sistema muestra el nombre fantasía del socio cuando está configurado.
- **Agente comercial**: vendedor responsable de gestionar la oportunidad.
- **Etapa**: fase actual en el proceso comercial. Las etapas son definidas por cada organización según su flujo de ventas.
- **Probabilidad (%)**: porcentaje de cierre estimado para la etapa actual. Actualiza automáticamente el importe ponderado.
- **Importe ponderado**: resultado de multiplicar el presupuesto total por la probabilidad. Se usa en reportes para estimar ingresos proyectados.
- **Contrato**: contrato del socio de negocio asociado a la oportunidad. Solo se muestran contratos del socio seleccionado que estén completos.
- **Contacto**: persona de contacto dentro del cliente con quien se gestiona la oportunidad.

---

## Recursos en la oportunidad

Los recursos representan los productos o servicios que se están cotizando. Se agregan directamente desde la oportunidad indicando:

- Tipo de recurso
- Fecha desde / Fecha hasta, o cantidad de períodos
- Cantidad de unidades

El sistema verifica la disponibilidad de cada recurso para el rango de fechas indicado. Si la cantidad solicitada supera la disponibilidad, se muestra un error y no permite continuar.

::: warning
Si se necesita aplicar **descuentos diferentes** a grupos de recursos del mismo tipo, deben agregarse en líneas separadas. El sistema puede agrupar recursos del mismo tipo en una sola línea, lo que impide asignar descuentos distintos por grupo.
:::

Cuando un recurso tiene **instalación requerida** configurada, el sistema genera automáticamente una línea adicional de instalación en la cotización.

---

## Generación de cotización

Desde la oportunidad se puede crear una **cotización de venta** que hereda automáticamente:

- Socio de negocio y contrato de la oportunidad
- Recursos y líneas definidos

Sobre la cotización es posible:

- Ajustar cantidades y aplicar descuentos por línea
- Adjuntar material adicional (imágenes, documentos, ubicaciones)
- Enviar la cotización por correo electrónico directamente desde el sistema usando una plantilla de diseño

---

## Generación de proyecto y orden de venta

Una vez confirmada la cotización, desde la oportunidad se ejecuta la acción **Crear Proyecto**. Esto genera:

1. Un **proyecto** vinculado a la oportunidad, que hereda el contrato del socio de negocio.
2. Una **orden de venta** con las mismas líneas, cantidades y descuentos de la cotización.

::: warning
El contrato asociado a la oportunidad debe estar en estado **Completo** para que el proyecto lo tome automáticamente. Si el contrato está en borrador, el proyecto y la orden de venta no heredarán el contrato.
:::

Si durante el proceso se cambia el socio de negocio de la oportunidad, el sistema busca automáticamente un contrato completo de ese nuevo socio dentro de la misma organización.

---

## Actividades y seguimiento

Desde la oportunidad se pueden registrar actividades de seguimiento como llamadas, correos o tareas futuras. Estas actividades:

- Quedan asociadas a la oportunidad con fecha y responsable
- Son visibles en un calendario para planificación
- Permiten al equipo comercial hacer seguimiento activo sin salir del registro

---

## Documentación relacionada

- [Planificación de visitas](visit-planning)
