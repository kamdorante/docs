---
title: Configuración del Punto de Venta
category: Documentation
star: 9
sticky: 9
article: false
---

Este módulo permite configurar las terminales del Punto de Venta (PDV) en Solop ERP, estableciendo reglas de operación, control de caja, dispositivos asociados y condiciones comerciales. Asegura un comportamiento correcto del sistema durante las ventas, cobranzas y devoluciones.

---

## Terminal PDV

### Acceso

Desde el menú de Solop ERP:  
**Gestión de Ventas > Órdenes de Venta > Punto de Venta > Terminal PDV**

La ventana **Terminal PDV** permite configurar cajas, taquillas o autoservicios donde se gestionarán órdenes, facturación y cobro.

### Campos Principales

- **Organización**: Define a qué entidad pertenece el terminal.
- **Nombre / Descripción**: Identificación del PDV.
- **Agente Comercial**: Vendedor asignado.
- **Retraso de Cierre Automático**: Tiempo de inactividad antes del cierre de sesión.
- **Lista de Precios**: Lista utilizada para las ventas.
- **Modificación de Precio**: Permite cambios de precio con autorización.
- **Caja Menor**: Caja asociada para pagos en efectivo.
- **Plantilla de Socio del Negocio**: Cliente genérico para registrar ventas rápidas.
- **Cuenta Bancaria**: Cuenta vinculada a las operaciones de cobro.
- **Transferencia a Banco**: Cuenta destino para transferencias.

### Documentos y Reglas

- **Tipo de Documento**: Para ventas, devoluciones, cobros, etc.
- **Reglas de Facturación / Entrega**: Definen cómo se generan y gestionan los documentos.

### Parámetros de Dispositivos

- **Impresora Fiscal**
- **Registradora / Balanzas**
- **PIN POS Requerido**
- **Teclado en Pantalla**: Habilita entrada por pantalla táctil.

### Checks y Configuraciones Adicionales

- **POS Compartido**
- **Permitir Crear Cliente Nuevo**
- **Límites de Reembolso y Descuento**
- **Vendedores Asignados**

---

## Pestañas de Configuración Específica

- **Almacenes**: Definen desde dónde se realiza la entrega.
- **Formas de Pago**: Métodos disponibles y reglas de cambio.
- **Listas de Precios / Tipos de Documento**
- **Esquemas de Descuento**
- **Vendedores Asignados**: Usuarios habilitados para operar en ese PDV.

Para más información sobre precios:  


---

## Operaciones en el PDV

### Documentos por Defecto

Tipos predefinidos para apertura, retiro de caja, cobros y devoluciones.

### Productos Favoritos

Desde la pestaña **Llave PDV**, se pueden asignar productos destacados, imágenes y categorías.

### Cajas del Punto de Venta

Definición de caja asociada a la terminal, socio del negocio y cargo contable predeterminado.

---

## Definir SDN con RUT o Cédula

### Objetivo

Permitir la creación rápida de socios de negocio (clientes) en el PDV usando plantillas según si es empresa (RUT) o persona física (Cédula).

### Pasos

1. Acceder a la ventana de **Terminal PDV**.
2. Ir a la pestaña **Business Partner Template**.
3. Dejar activos solo dos templates:  
   - RUT Template  
   - Cédula Template
4. Verificar en cada plantilla:
   - Grupo de Impuestos correcto.
   - Activo en todos los clientes.
   - Tipo de impuesto correspondiente.

Una vez guardado, el sistema podrá crear automáticamente socios desde el PDV.

---

## Cambio en Otra Moneda

### Configuración en Terminal PDV

- Si se define una moneda específica: **No** se puede cambiar la moneda al cobrar ni al entregar cambio.
- Si no se define: el sistema **permite seleccionar otra moneda**.

Para que un método de pago pueda usarse como cambio:  
* Marcar **Is Allowed To Refund**

Podés usar un método existente (ej. efectivo) o crear uno específico llamado “Cambio”.

### Funcionamiento

Si un producto **no tiene precio** en la lista principal, el sistema busca en una **lista de referencia**, aunque esté en otra moneda.

> Convierte automáticamente el precio usando la **tasa de cambio del día**.

Esto permite vender productos con precios en distintas monedas sin duplicar listas.

### Observaciones Clave

- La **lista principal** es la configurada en el terminal.
- Si no hay precio allí, consulta la lista secundaria.
- El precio se convierte automáticamente.

---

## Definir un Término de Pago Fijo (Contado o Crédito)

### Objetivo

Permite que las facturas generadas desde una Terminal PDV se emitan siempre con una condición de pago específica (Contado o Crédito), sin depender de la condición de pago configurada en el Socio de Negocio (cliente).

### ¿Cómo se determina si una factura es Contado o Crédito?

En la factura, el campo **Pago** indica **CONTADO** o **CRÉDITO** según los días configurados en el Término de Pago aplicado:

- Si el Término de Pago tiene **0 días** → la factura se imprime como **CONTADO**.
- Si el Término de Pago tiene **más de 0 días** → la factura se imprime como **CRÉDITO**.

### Pasos

1. Acceder a la ventana **Terminal PDV** (**Gestión de Ventas > Órdenes de Venta > Punto de Venta > Terminal PDV**).
2. Buscar y abrir la terminal que se desea configurar.
3. En el campo **Término de Pago**, seleccionar la condición de pago que se desea aplicar a todas las ventas de esa terminal:
   - Para que las facturas se generen **a Contado**, seleccionar una condición con **0 días**.
   - Para que se generen **a Crédito**, seleccionar una condición con **más de 0 días**.
4. Guardar los cambios.

> Si el campo **Término de Pago** se deja vacío, el sistema continúa utilizando la condición de pago configurada en el Socio de Negocio (cliente), como funcionaba anteriormente.

### Verificar o crear la condición de pago a utilizar

Antes de asignarla en la Terminal PDV, se recomienda revisar la ventana **Condición de Pago** para confirmar que la condición deseada tenga configurados los días correctos (0 para Contado, más de 0 para Crédito). Si no existe una condición adecuada, puede crearse una nueva desde esa misma ventana.

### Validación

Luego de configurar el campo, se recomienda realizar una venta de prueba desde la terminal y verificar que la factura generada muestre correctamente **CONTADO** o **CRÉDITO** según lo esperado.

---

## Beneficios

- ✔️ Configuración completa por terminal.
- ✔️ Flexibilidad en el uso de múltiples monedas.
- ✔️ Automatización para creación de clientes.
- ✔️ Integración con dispositivos físicos.
- ✔️ Control por permisos, reglas y límites.
