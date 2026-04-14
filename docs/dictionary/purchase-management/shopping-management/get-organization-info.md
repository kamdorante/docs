---
title: Obtener Información de Organización
category: Documentation
star: 9
sticky: 9
article: false
---

# Obtener Información de Organización

## Descripción

El proceso **Obtener Información de Organización** consulta al servidor del shopping y sincroniza dos conjuntos de datos: el catálogo de **rubros** vigente en ese shopping y los **datos de la organización** registrados en la administración del shopping (número de contrato, código de shopping, código de canal).

Se ejecuta al iniciar una nueva integración y cada vez que el shopping actualiza su catálogo o los datos comerciales de la organización. Su salida alimenta la ventana **Rubro de Shopping** y actualiza los campos requeridos en la organización del sistema.

## ¿Cuándo se utiliza?

Se utiliza cuando la organización necesita:

- Cargar por primera vez el catálogo de rubros de un shopping recién conectado.
- Refrescar el catálogo porque el shopping agregó o modificó rubros.
- Actualizar los datos de identificación de la organización en la administración del shopping.
- Validar que la conexión con el shopping responde correctamente antes de habilitar envíos.

## Acceso

Menú: **Gestión de Compras → Gestión de Shopping → Obtener Información de Organización**

## Parámetros

| Parámetro | Descripción | Tipo | Obligatorio |
|-----------|-------------|------|-------------|
| Conexión de Shopping | Conexión al servidor del shopping sobre la que se ejecutará la consulta | Búsqueda | Sí |

## Acciones disponibles

- **Ejecutar**
  Lanza la consulta al shopping y sincroniza los datos en el sistema.

- **Ver Histórico de Procesos**
  Muestra las ejecuciones anteriores con fecha, conexión y resultado.

## Flujo del proceso

### 1. Configurar la conexión de shopping

Antes de ejecutar el proceso, la **Conexión de Shopping** debe estar creada con su usuario, contraseña y organización asociada.

### 2. Ejecutar el proceso

Desde el menú, abrir **Obtener Información de Organización**, seleccionar la conexión correspondiente y ejecutar. El sistema consulta al shopping y trae los rubros y los datos de la organización.

### 3. Verificar los rubros

Abrir la ventana **Rubro de Shopping** y refrescar. Los rubros del shopping consultado deben aparecer listados con su código y nombre.

### 4. Verificar los datos de la organización

Abrir la ventana **Organización** correspondiente y validar los campos de integración con el shopping (número de contrato, código de shopping, código de canal). Si estaban mal formateados, el proceso los actualiza al formato esperado.

### 5. Repetir por cada conexión

Si la organización trabaja con más de un shopping, repetir el proceso una vez por cada conexión de shopping.

## Ejemplo de uso

Al configurar una integración con un nuevo shopping:

1. Crear la **Conexión de Shopping** con usuario, contraseña y organización.
2. Ejecutar **Obtener Información de Organización** seleccionando la nueva conexión.
3. Verificar en **Rubro de Shopping** que los rubros del shopping quedaron cargados.
4. Verificar en la ventana **Organización** que los datos de identificación del shopping están completos y bien formateados.
5. Continuar con la asignación de rubros a los grupos de materiales para habilitar los envíos.

## Consideraciones importantes

- El proceso debe ejecutarse **una vez por cada conexión de shopping**. Si una organización trabaja con tres shoppings, se ejecuta tres veces.
- Si el shopping no devuelve datos nuevos (por ejemplo, porque ya se ejecutó recientemente), el proceso finaliza sin incorporar registros adicionales; no es un error.
- Si los datos de identificación de la organización están mal formateados (por ejemplo, el número de contrato sin el prefijo esperado), este proceso los corrige automáticamente.
- El proceso no habilita el envío de documentos por sí solo; después de ejecutarlo hay que **asignar los rubros** a los grupos de materiales de los productos para que la exportación funcione.
- Si el proceso falla con error de conexión, verificar las credenciales y la URL configurada en la conexión de shopping antes de reintentar.

## Ventanas relacionadas

- [Rubro de Shopping](shopping-category)
- [Exportar Ventas a Shoppings](export-sales-to-shoppings)
- [Registro de Shopping](shopping-record-log)
