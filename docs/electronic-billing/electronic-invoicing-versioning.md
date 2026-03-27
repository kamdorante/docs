---
title: Versionamiento de Facturación Electrónica
category: Documentation
star: 9
sticky: 9
article: false
---

# Versionamiento de Facturación Electrónica

## Descripción

El **Versionamiento de Facturación Electrónica** es un proceso de configuración que permite gestionar múltiples versiones de proveedores de facturación electrónica en el sistema. Esta funcionalidad es especialmente útil cuando se requiere migrar o convivir con diferentes versiones de servicios de facturación electrónica (por ejemplo, Invoicy_V1 e Invoicy_V2 en Uruguay) dentro de la misma compañía, permitiendo configurar distintas versiones por organización.

El sistema permite crear nuevas versiones de proveedores fiscales manteniendo la configuración base de versiones anteriores, heredando automáticamente parámetros y configuraciones, pero apuntando a nuevas implementaciones técnicas (diferentes clases Java) que soportan las actualizaciones del proveedor de facturación electrónica.

## ¿Cuándo se utiliza?

Se utiliza cuando se necesita implementar o migrar a una nueva versión del proveedor de facturación electrónica sin afectar organizaciones que aún utilizan la versión anterior.

Casos típicos:
- Actualización del proveedor de facturación electrónica a una nueva versión (ej: Invoicy_V1 → Invoicy_V2)
- Migración gradual de organizaciones a nuevas versiones del servicio de facturación
- Pruebas de nuevas versiones del proveedor fiscal en organizaciones específicas
- Soporte simultáneo de múltiples versiones del servicio de facturación electrónica por organización
- Configuración de versionamiento para cumplir con actualizaciones normativas del ente fiscal

## Acceso

Sistema → Soporte de Aplicación API
Compañía → Crear Configuración de Funcionalidad
Compañía → Proveedor Fiscal
Compañía → Organización → Información de la Organización

Tabla principal: Soporte de Aplicación, Proveedor Fiscal

## Conceptos clave

### Soporte de Aplicación

Es la definición a nivel de sistema que registra las diferentes implementaciones técnicas disponibles para facturación electrónica. Cada soporte define:
- Nombre del soporte (ej: Invoicy_V1, Invoicy_V2)
- Clase Java que implementa la funcionalidad
- Parámetros por defecto del proveedor

### Proveedor Fiscal

Es la instancia configurada a nivel de organización que utiliza un soporte de aplicación específico. Incluye:
- Organización a la que aplica
- Versión del servicio (1.0, 2.0, etc.)
- Configuración específica de conexión
- Parámetros operativos

### Definición de Configuración

Proceso que genera automáticamente la estructura necesaria para que una organización pueda utilizar una nueva versión de facturación electrónica.

## Flujo del proceso

### 1. Verificación del Soporte de Aplicación

Antes de configurar el versionamiento, es necesario verificar que el nuevo soporte esté registrado en el sistema:


- Acceder a **Sistema → Soporte de Aplicación API**
- Confirmar que el soporte para la nueva versión (ej: Invoicy_V2) ha sido agregado automáticamente vía XML
- Verificar que los parámetros por defecto son los mismos que la versión anterior (ej: Invoicy_V1)
- Confirmar que apunta a la nueva clase Java (ej: clase V2 vs V1)

**Nota**: El soporte de aplicación generalmente se agrega automáticamente mediante archivos XML de configuración del sistema, no se crea manualmente.

### 2. Configuración por Organización

Activar la funcionalidad de la nueva versión para una organización específica:


- Ir a **Compañía → Crear Configuración de Funcionalidad**
- Seleccionar la funcionalidad de la nueva versión (ej: "Invoicy_V2")
- Configurar por **Organización** (no a nivel de compañía completa)
- Seleccionar la organización donde se probará/implementará la nueva versión

**Importante**: El proceso **Crear Configuración de Funcionalidad** con la versión seleccionada (ej: Invoicy_V2) **solo puede ejecutarse una vez por cliente (compañía)**. Para las demás organizaciones, se debe copiar el proveedor fiscal generado con versión V2 (ver paso 4).

### 3. Procesamiento de Definición de Configuración

Ejecutar el proceso que genera automáticamente el proveedor fiscal:

- En la ventana de **Crear Configuración de Funcionalidad**, seleccionar la definición de configuración para la nueva versión (ej: "Invoicy_V2")
- Ejecutar el proceso **Procesar**
- El sistema crea automáticamente un nuevo registro de proveedor fiscal

### 4. Verificación y Copia del Proveedor Fiscal Generado

Confirmar que el nuevo proveedor fiscal se creó correctamente y replicarlo para las demás organizaciones:


- Acceder a **Compañía → Proveedor Fiscal**
- Refrescar la vista
- Verificar que existe un nuevo registro con:
  - Organización configurada
  - Número de versión actualizado (ej: 2.0)
  - Nombre descriptivo (ej: "Invoicy Uruguay V2")
  - Configuración heredada de la versión anterior
  - Parámetros generados automáticamente
- **Copiar el proveedor fiscal** con versión V2 para todas las organizaciones restantes que requieran la nueva versión

**Nota**: Dado que el proceso de Crear Configuración de Funcionalidad solo se puede ejecutar una vez por cliente, la forma de habilitar la nueva versión en las demás organizaciones es copiando el proveedor fiscal V2 generado y asignándolo a cada organización.

### 5. Asignación del Proveedor Fiscal en cada Organización

Configurar el nuevo proveedor fiscal V2 en cada organización:

- Acceder a la ventana **Organización**
- Ir a la pestaña **Información de la Organización**
- En el campo **Proveedor Fiscal**, seleccionar el nuevo proveedor con versión V2
- Guardar los cambios
- **Repetir este paso para todas las organizaciones** que deban utilizar la nueva versión del proveedor fiscal

**Importante**: Este paso es obligatorio para que cada organización utilice efectivamente la nueva versión. Si no se actualiza el proveedor fiscal en la pestaña Información de la Organización, la organización continuará usando la versión anterior.

### 6. Configuración de Parámetros

Revisar y ajustar los parámetros del nuevo proveedor fiscal:

- Los parámetros se generan automáticamente basados en el soporte de aplicación
- Verificar que apuntan al servicio correcto (ej: servicio de prueba o producción)
- Confirmar URLs de endpoints
- Validar credenciales y certificados si aplican

**Importante**: Esta configuración puede aplicarse a todas las organizaciones o solo a organizaciones específicas según los requerimientos.

### 7. Prueba de Configuración

Validar que la configuración funciona correctamente:


- Si se configura para todas las organizaciones, ejecutar pruebas en cada una
- Verificar que la organización configurada usa la nueva versión
- Confirmar que las organizaciones no configuradas mantienen la versión anterior
- Validar conectividad con el servicio del proveedor

### 8. Validación Operativa

Probar la funcionalidad en un escenario real:

**Prueba en Punto de Venta:**


- Iniciar sesión con usuario POS en la organización configurada
- Crear apertura de caja si no existe
- Realizar operaciones típicas (ventas, devoluciones)
- Procesar documentos que requieran facturación electrónica
- Verificar que se generan con la nueva versión del proveedor

**Prueba de Devoluciones:**


- Seleccionar una orden completa
- Procesar una devolución de producto
- Verificar que no se presenten errores debido a nuevos campos requeridos por la nueva versión
- Confirmar que el documento electrónico se genera correctamente

### 9. Confirmación Final

Verificar la configuración completa del sistema:


- Confirmar que el proveedor fiscal está activo con la nueva versión
- Asegurar que organizaciones que no deban usar la nueva versión mantienen la versión anterior
- Documentar qué organizaciones usan qué versión
- Establecer plan de migración para organizaciones restantes (si aplica)

## Consideraciones importantes

- **Realizar pruebas en entorno de desarrollo/prueba** antes de aplicar cambios en producción. El versionamiento afecta la emisión de documentos fiscales legales.
- **Verificar todos los datos** antes de proceder con la configuración final. Errores en la configuración pueden resultar en documentos electrónicos inválidos.
- **Mantener registro de cambios** realizados en cada paso para facilitar auditoría y troubleshooting.
- **Realizar pruebas en horarios de baja actividad** cuando se aplique a producción para evitar interrupciones en el servicio.
- **El soporte de aplicación se crea vía XML**, no manualmente. Si no aparece el soporte para una nueva versión, verificar los archivos de configuración del sistema.
- **Los parámetros se heredan automáticamente** de la versión anterior, pero deben revisarse ya que pueden haber cambios en endpoints o configuraciones del proveedor.
- **Las organizaciones no configuradas** con la nueva versión continuarán usando la versión anterior del proveedor fiscal sin afectación.
- **Nuevos campos requeridos**: Al migrar a versiones nuevas, pueden existir campos adicionales requeridos por el proveedor que deben ser configurados.
- **Crear Configuración de Funcionalidad es único por cliente**: El proceso solo puede ejecutarse una vez por compañía para cada versión. Para las demás organizaciones, se debe copiar el proveedor fiscal generado.
- **Asignación obligatoria en Organización**: Después de crear o copiar el proveedor fiscal V2, se debe asignar en la ventana Organización → Información de la Organización para que la organización lo utilice efectivamente.
- **Convivencia de versiones**: El sistema soporta que diferentes organizaciones de la misma compañía usen versiones distintas del mismo proveedor fiscal.

## Ejemplo de uso

### Escenario: Migración de Invoicy_V1 a Invoicy_V2 en Uruguay

**Contexto**: Una empresa con múltiples organizaciones en Uruguay necesita migrar gradualmente a Invoicy_V2, comenzando por una organización de prueba.

**Paso 1 - Verificación**:
- Se accede a Soporte de Aplicación API
- Se confirma que existe "Invoicy_V2" creado automáticamente vía XML
- Se verifica que tiene los mismos parámetros que "Invoicy_V1" pero apunta a la clase V2

**Paso 2 - Configuración**:
- Se va a Crear Configuración de Funcionalidad
- Se selecciona "Invoicy_V2"
- Se configura para la organización "A"
- Este proceso solo puede ejecutarse una vez por cliente

**Paso 3 - Procesamiento**:
- Se procesa la definición de configuración "Invoicy_V2"
- El sistema genera automáticamente el proveedor fiscal

**Paso 4 - Verificación y Copia**:
- Se accede a Proveedor Fiscal y se refresca
- Aparece nuevo registro:
  - Organización: "A"
  - Versión: 2.0
  - Nombre: "Invoicy Uruguay V2"
  - Configuración y parámetros generados automáticamente
- Se copia el proveedor fiscal V2 para las organizaciones "B", "C", etc.

**Paso 5 - Asignación en Organizaciones**:
- Se accede a la ventana Organización → Información de la Organización
- Se asigna el proveedor fiscal V2 en la organización "A"
- Se repite para las organizaciones "B", "C" y todas las que requieran V2

**Paso 6 - Parámetros**:
- Los parámetros apuntan al servicio de prueba
- Se revisa que las URLs y credenciales sean correctas

**Paso 7 - Prueba de Configuración**:
- Se ejecuta proceso de prueba
- Se confirma conectividad correcta con el proveedor

**Paso 8 - Validación en PDV**:
- Usuario POS inicia sesión
- Se crea apertura de caja
- Se procesa una venta normal
- Se realiza una devolución de producto
- Ambas operaciones generan CFE correctamente con Invoicy_V2

**Paso 9 - Confirmación**:
- Organización "A", "B", "C" usan Invoicy_V2 (versión 2.0)
- Organizaciones no migradas continúan con Invoicy_V1 (versión 1.0)
- Se documenta la migración
- Se programa migración gradual de organizaciones restantes (si aplica)

**Resultado**:
- Migración exitosa de las organizaciones a Invoicy_V2
- Convivencia estable de V1 y V2 en la misma compañía
- Proceso validado para migrar organizaciones restantes

## Recursos adicionales

### Documentación relacionada

- [Proveedor de Facturación Electrónica](./electronic-billing-supplier) - Configuración general de proveedores fiscales
- [Configuración de Facturación Electrónica](./configuration) - Setup inicial del módulo
- [Emisión de CFE](./issuance) - Proceso de emisión de comprobantes fiscales electrónicos

### Conceptos técnicos

- **Clase V1 vs V2**: Se refiere a diferentes implementaciones Java que se conectan con distintas versiones de la API del proveedor de facturación electrónica
- **Soporte de Aplicación**: Definición técnica a nivel de sistema de las integraciones disponibles
- **Procesamiento de Definición**: Proceso automatizado que crea toda la estructura necesaria en base a templates predefinidos
