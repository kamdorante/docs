---
title: Definición de Comisión
category: Documentation
star: 9
sticky: 9
article: false
---

# Definición de Comisión

## Descripción
Define cómo y cuándo se calcularán las comisiones y a quién se pagarán. La ventana de Comisiones permite definir cómo se pagarán las comisiones y regalías. Se pueden pagar múltiples comisiones por la misma orden o factura (por ejemplo, a la persona que ingresa la transacción, al responsable de la venta del producto o categoría y/o socio del negocio o grupo).

## Acceso
Menú: Gestión de Ventas → Ventas y Mercadeo → Definición de Comisión

## Pestañas

### Comisión
Configuración principal de la comisión.

#### Campos principales
| Campo | Descripción | Tipo | Obligatorio |
|---|---|---|---|
| Nombre | Identificador alfanumérico de la entidad | Texto | Sí |
| Descripción | Descripción corta opcional del registro | Texto | No |
| Grupo de Comisión | Grupo al que pertenece la comisión | Búsqueda | No |
| Moneda | Moneda para el cálculo | Búsqueda | Sí |
| Base de Cálculo | Base para el cálculo del documento | Lista | Sí |
| Tipo de Comisión | Tipo de comisión personalizada | Búsqueda | No |
| Tipo de Frecuencia | Frecuencia de cálculo de la comisión | Lista | Sí |
| Cargo | Cargo asociado a la comisión | Búsqueda | No |
| Pagado Totalmente | Indica si se requiere pago total | Sí/No | No |
| Dividir Documentos | Indica si se dividen los documentos | Sí/No | No |
| Días de Vencimiento desde Término de Pago | Los días de vencimiento se calculan desde el término de pago | Sí/No | No |
| Permitir RMA | Permite devolución de mercancía | Sí/No | No |

### Línea de Comisión
Detalle de las líneas que componen la comisión.

#### Campos principales
| Campo | Descripción | Tipo | Obligatorio |
|---|---|---|---|
| Comisión | Referencia a la comisión padre | Búsqueda | Sí |
| Nro. de Línea | Número de línea del documento | Numérico entero | No |
| Descripción | Descripción corta opcional | Texto | No |
| Solo Órdenes de Comisión | Comisión solo para órdenes específicas | Sí/No | No |
| Organización | Entidad organizacional | Búsqueda | No |
| Grupo de Socio del Negocio | Grupo del Socio del Negocio | Búsqueda | No |
| Socio del Negocio | Identifica un Socio del Negocio | Búsqueda | No |
| Categoría de Producto | Categoría del producto | Búsqueda | No |
| Clase de Producto | Clase del producto | Búsqueda | No |
| Clasificación de Producto | Clasificación del producto | Búsqueda | No |
| Grupo de Producto | Grupo del producto | Búsqueda | No |
| Producto | Producto, servicio o artículo | Búsqueda | No |

### Agente Comercial
Asignación de representantes de ventas a la comisión.

#### Campos principales
| Campo | Descripción | Tipo | Obligatorio |
|---|---|---|---|
| Comisión | Referencia a la comisión padre | Búsqueda | Sí |
| Socio del Negocio | Socio del Negocio que recibe la comisión | Búsqueda | Sí |
