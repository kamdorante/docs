---
title: Copiar Datos de Auditoría
category: Documentation
star: 9
sticky: 9
article: false
---

# Copiar Datos de Auditoría

## Descripción

**Copiar Datos de Auditoría** agrupa las acciones de copia al portapapeles que ofrece el sistema para **reproducir, depurar o reportar** lo que está pasando en una pantalla. En todos los casos el resultado es texto plano fácil de pegar en un correo, un chat, una nota o un ticket de soporte.

El sistema ofrece **seis acciones independientes**, una por cada contexto:

| # | Acción | Documento |
|---|--------|-----------|
| 1 | Copiar parámetros de un **Reporte** | [Copiar Parámetros de un Reporte](copy-report-parameters) |
| 2 | Copiar parámetros de un **Navegador (Smart Browser)** | [Copiar Parámetros de un Navegador](copy-browser-parameters) |
| 3 | Copiar datos de una **Ventana** | [Copiar Datos de una Ventana](copy-window-data) |
| 4 | Copiar la **Auditoría** de un documento | [Copiar Auditoría de un Documento](copy-document-audit) |
| 5 | Copiar la **Auditoría Detallada** de un documento | [Copiar Auditoría Detallada de un Documento](copy-detailed-document-audit) |
| 6 | Copiar el **resultado de un proceso con error** | [Copiar Resultado de un Proceso con Error](copy-process-error) |

Cada acción está documentada en su propio archivo con su ubicación exacta, paso a paso y caso de uso.

## ¿Cuándo se utiliza?

Se utiliza cuando se necesita:

- **Reportar un problema** a soporte o desarrollo con el contexto exacto (configuración, parámetros, error textual).
- **Reproducir** un reporte o un navegador con los mismos parámetros más adelante o por otro usuario.
- **Auditar** los cambios sufridos por un documento (quién, cuándo y qué se cambió).
- **Compartir** la configuración de ejecución sin tener que describirla a mano.
- **Adjuntar evidencia textual** a un ticket cuando un proceso devuelve error.

## Consideraciones generales

- Todas las opciones devuelven **texto plano**. Conviene pegarlo en un editor (bloc de notas, correo, ticket) y revisar antes de enviar.
- Los datos copiados **incluyen información de sesión** (usuario, rol, organización, almacén). Es información operativa, no contraseñas, pero conviene revisar antes de compartirla fuera de la organización.
- Las acciones 1, 2 y 3 (Reporte, Navegador, Ventana) usan el **mismo botón de copiar** ubicado en la **barra superior** de la interfaz, junto al ícono de información. El contenido copiado depende del contexto en el que se pulse.
- Las acciones 4 y 5 (Auditoría y Auditoría Detallada) están dentro de la ventana **Histórico de Cambios** del documento. La diferencia entre las dos es el interruptor *Ver todos los cambios*.
- La acción 6 (Error) tiene su propio botón en el pie del aviso de error.
- Estas funcionalidades son **transversales**: aplican a cualquier reporte, navegador, ventana, documento o error del sistema, no a uno en particular.

## Ventanas relacionadas

- [Copiar Parámetros de un Reporte](copy-report-parameters)
- [Copiar Parámetros de un Navegador](copy-browser-parameters)
- [Copiar Datos de una Ventana](copy-window-data)
- [Copiar Auditoría de un Documento](copy-document-audit)
- [Copiar Auditoría Detallada de un Documento](copy-detailed-document-audit)
- [Copiar Resultado de un Proceso con Error](copy-process-error)
- [Descargar Registros a Planilla](export-records-to-spreadsheet)
