---
title: Corrida de Morosidad
category: Documentation
star: 9
sticky: 9
article: false
---

# Corrida de Morosidad

## Descripción
Ventana para gestionar las corridas de morosidad (dunning). Permite configurar y ejecutar los cálculos de morosidad para generar cartas de cobro a clientes con pagos vencidos.

## Acceso
Menú: Gestión de Saldos Pendientes → Morosidad → Corrida de Morosidad

## Pestañas

### Corrida de Morosidad
Configuración de la corrida de morosidad.

#### Campos principales
| Campo | Descripción | Tipo | Obligatorio |
|---|---|---|---|
| Nivel de Morosidad | Nivel de morosidad | Búsqueda directa | Sí |
| Fecha de Morosidad | Fecha de la morosidad | Fecha | Sí |
| Descripción | Descripción corta opcional del registro | Texto | No |
| Procesado | Indica si el documento ha sido procesado | Sí/No | No |
| Enviar | Enviar las cartas de morosidad | Botón | No |

### Entrada de Corrida
Detalle de las entradas de la corrida de morosidad por socio del negocio.

#### Campos principales
| Campo | Descripción | Tipo | Obligatorio |
|---|---|---|---|
| Socio del Negocio | Identifica un socio del negocio | Búsqueda | Sí |
| Contacto | Contacto del socio del negocio | Búsqueda directa | No |
| Representante de Ventas | Representante de ventas o agente | Tabla | No |
| Monto | Monto total | Monto | No |
| Cantidad | Número de documentos | Numérico entero | No |

### Línea de Corrida
Detalle de las facturas incluidas en la corrida.

#### Campos principales
| Campo | Descripción | Tipo | Obligatorio |
|---|---|---|---|
| Factura | Documento de factura | Búsqueda | Sí |
| Orden | Orden de compra/venta | Búsqueda | No |
| Pago | Identificador de pago | Búsqueda | No |
| Monto Abierto | Monto pendiente | Monto | No |
| Monto Convertido | Monto convertido a la moneda de la morosidad | Monto | No |
| Monto de Comisión | Monto de comisión por morosidad | Monto | No |
| Días de Vencimiento | Número de días vencidos | Numérico entero | No |
