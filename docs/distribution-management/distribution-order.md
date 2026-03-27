---
title: Orden de Distribución
category: Documentation
star: 9
sticky: 9
article: false
---

El proceso de Orden de Distribución permite transferir productos entre almacenes de una organización, utilizando un almacén en tránsito como paso intermedio obligatorio.
Nunca se mueve directamente de origen a destino: siempre existen dos movimientos intermedios que garantizan el control de stock durante el transporte.

## Objetivo

Asegurar que los movimientos de inventario entre locales/almacenes:

    1. Registren las cantidades confirmadas.

    2. Mantengan control en tránsito.

    3. Finalicen con la correcta recepción en el almacén destino.

## Alcance / Audiencia

    * Usuarios de logística, inventarios y operaciones que gestionan movimientos entre almacenes en el ERP.

## Requisitos Previos

    * Almacén en tránsito configurado (crear almacén "En tránsito")

        1. Se crea en Menú → Almacenes y ubicaciones.

        2. Debe tener su ubicación definida.

        3. Debe marcarse como predeterminado.

![Almacén](/assets/img/docs/distribution-management/dim-distribution-image33.png) 

    * Existencias disponibles en el almacén origen

       1. Los productos a mover deben tener stock suficiente en la ubicación de origen.

    * Orden de Distribución creada

       1. Se genera en Menú → Distribución → Orden de distribución.

       2. En el cabezal, se debe definir el almacén en tránsito.

       3. Completar todos los campos obligatorios y guardar (completar orden).

 ![Almacén](/assets/img/docs/distribution-management/dim-distribution-image34.png)

## Flujo general

    1. Crear Orden de Distribución con almacén en tránsito.

    2. Cargar líneas de productos: cantidades solicitadas y cantidad confirmada.

    3. Guardar y Completar la Orden de Distribución.

    4. Ejecutar proceso Generar movimiento (origen → tránsito).

    5. Validar stock en tránsito con Detalle de almacenamiento.

    6. Ejecutar proceso Recibos de materiales de la orden (tránsito → destino).

    7. Confirmar actualización de cantidades (entregada vs en tránsito).

## Paso a paso detallado

### 1. Crear Orden Distribución

    1.1. Navegar a: Menú → Distribución → Orden de Distribución.

    1.2. En el cabezal, definir:

      * Organización.

      * Almacén en tránsito.

      * Campos obligatorios adicionales (ej. fechas, socio, etc.).

      * Guardar la orden.

### 2. Definir líneas de productos

    2.1. Seleccionar el producto desde la ubicación de origen.

    2.2. Completar los campos:

      * Cantidad solicitada.

      * Cantidad confirmada (ejemplo: 25).

      * Ubicación origen (donde se encuentra el producto).

      * Ubicación destino.

::: tip
- Si cantidad confirmada > existencia, el sistema solo mueve lo disponible (ej. existencia 20 → moverá 20).
- Solo se moverá lo cantidad mayor a existencia si la orden está marcada como regla de entrega forzada.
:::

### 3. Guardar y completar la orden desde el cabezal.

    * Ejemplo: se genera la Orden de Distribución Nº 2.

### 4. Generar movimiento (origen → tránsito)

    1. Navegar a: Menú → Procesos → Generar movimiento.

    2. Ingresar el número de la Orden de Distribución (ejemplo: 2).

    3. Verificar que aparezcan registros pendientes (solo se muestran si hay cantidad confirmada).

    4. Seleccionar el registro y hacer clic en Aceptar.

    5. En la ventana emergente:

       * Definir Fecha de Movimiento.

       * Confirmar con Aceptar.

    6. Validar en la Orden de Distribución que la cantidad pasó a En tránsito.

![Generar Movimiento](/assets/img/docs/distribution-management/dim-distribution-image35.png)

![Generar Movimiento](/assets/img/docs/distribution-management/dim-distribution-image36.png) 

### 5. Confirmar stock en tránsito

    1. Consultar el reporte Detalle de almacenamiento.

    2. Verificar que las cantidades movidas (ejemplo: 25) figuren en el almacén en tránsito.

### 6. Recibir en el destino (tránsito → destino)

    1. Navegar a: Menú → Procesos → Recibos de materiales de la orden.

    2. Ingresar el número de la Orden de Distribución.

    3. Seleccionar el registro en tránsito que será recibido.

    4. Hacer clic en Aceptar.

    5. En la ventana emergente:

       * Definir Fecha de Movimiento.

       * Confirmar con Aceptar.

### 7. Validar en la Orden de Distribución que:

    1. Cantidad en tránsito = 0.

    2. Cantidad entregada = cantidad confirmada (ejemplo: 25).

![Generar Movimiento](/assets/img/docs/distribution-management/dim-distribution-image37.png) 

### Casos especiales

    1. Entrega forzada: si confirmada > existencia, solo mueve stock real salvo que la orden tenga regla de entrega forzada.

    2. Anulación: al anular documentos, el sistema revierte movimientos:

       * De destino → tránsito.

       * De tránsito → origen.

### Reportes y verificaciones

    1. Detalle de almacenamiento: confirma cantidades en tránsito.

    2. Orden de distribución: refleja cambios en los campos En tránsito y Entregado.

### Checklist de control

    * Almacén en tránsito creado y con ubicación.
    * Orden de distribución generada con almacén en tránsito.
    * Cantidades confirmadas definidas.
    * Movimiento origen → tránsito generado.
    * Detalle de almacenamiento actualizado.
    * Movimiento tránsito → destino completado.
    * Orden de distribución liberada.

### Resumen final

El circuito de Orden de Distribución asegura el traslado controlado de inventario entre almacenes en dos pasos: primero de origen a tránsito, y luego de tránsito a destino.
El control de cantidades confirmadas, validación de existencias y posibilidad de reversión garantizan trazabilidad completa y seguridad en los movimientos.

Versión: 1.0
Autor: Equipo Funcional ERP
Fecha: 25/09/2025