---
title: Asientos Contables por Documentos
category: Documentation
star: 9
sticky: 9
article: false
---

## Gestión de Compras

### Compras Productos / Artículos (Almacenables)

Orden de Compra (Productos Artículos Almacenables)

|           Cuenta             |    Debe    |    Haber   |   Depende de  |          Campo        | Tipo de Aplic. |
| ---------------------------- | ---------- | ---------- | ------------- | --------------------- | -------------- |
| 51100 - Costo de Venta Prod. | 12,000.00  |  0.00      |  Producto     | COGS del Prod.        | Compromisos    |
| 952 - Compras Comprometidas  | 0.00       | 12,000.00  | Esquema Cont. | Conciliac de comprom. | Compromisos    |

### Recepción (Productos Artículos Almacenables)

|           Cuenta             |    Debe    |    Haber   |   Depende de  |          Campo        | Tipo de Aplic. |
| ---------------------------- | ---------- | ---------- | ------------- | --------------------- | -------------- |
| 14120 - Invent. Prod. A      | 100,000.00 |  0.00      |  Producto     | Ingreso Inventario    | Actual         |    
| 21190 - Depós. sin Facturar  | 0.00       | 100,000.00 | Socio de Neg. | Depósit. no Fact.     | Actual         |
| 952 - Compras Comprometidas  | 100,000.00 |  0.00      | Esquema Cont. | Conciliac de comprom. | Compromisos    |
| 51100 - Costo Vta. Producto  | 0.00       | 100,000.00 | Producto      | COGS del Prod.        | Compromisos    |

### Asignación inventario (sin diferencia de Precio)

|           Cuenta                 |    Debe    |    Haber   |   Depende de  |          Campo          |
| -------------------------------- | ---------- | ---------- | ------------- | ----------------------- | 
| 21190 - Depósistos sin Facturar  | 28,352.00  |  0.00      | Socio de Neg. | Depósitos no Facturados | 
| 51290 - Ajustes a Costos de Prod | 0.00       | 28,352.00  | Producto      | Conciliac de Inventario | 

### Asignación inventario (Con diferencia de Precio)

|           Cuenta                 |    Debe    |    Haber   |   Depende de  |          Campo           |
| -------------------------------- | ---------- | ---------- | ------------- | ------------------------ | 
| 21190 - Depósistos sin Facturar  | 30,000.00  |  0.00      | Socio de Neg. | Depósitos no Facturados  | 
| 51290 - Ajustes a Costos de Prod | 0.00       | 28,352.00  | Producto      | Conciliac de Inventario  |
| 58100 - variación en Precio Fact | 0.00       | 1,648.00   | Producto      | Variación Precio Factura |

### Documento por Pagar (Producto Almacenable)

|              Cuenta               |    Debe    |    Haber   |   Depende de    |          Campo        |
| --------------------------------- | ---------- | ---------- | --------------- | --------------------- |
| 152110 - IVA Compras              | 0.00       |  0.00      | Tasa de Imp.    | Impuesto al comprar   |  
| 51290 - Ajustes a Costos de Prod  | 10,000.00  | 0.00       | Producto        | Conciliación de Inven |
| 51290 - Ajustes a Costos de Prod  | 18,352.00  |  0.00      | Producto        | Conciliación de Inven |
| 21110 - Acreedores por Compras    | 0.00       | 28,352.00  | Socio del Neg.  | CxP del Proveedor     |

::: warning La cuenta de IVA depende del check *Impuesto de Venta* de la Tasa
La línea marcada como *"Impuesto al comprar"* solo se contabiliza contra la cuenta configurada en el campo **Impuesto al Comprar** de la tasa cuando esta tiene el check **Impuesto de Venta = No**. Si la tasa aplicada a la línea de la factura tiene el check **Impuesto de Venta = Sí**, el sistema toma en su lugar la cuenta configurada en **Gastos Impuesto** — que en la mayoría de las configuraciones apunta a la misma cuenta que *Impuesto al Vender* (por ejemplo, *IVA Ventas*) — y el asiento del documento por pagar aparece con IVA Ventas en lugar de IVA Compras.

Para el detalle completo del mecanismo, la matriz de cuentas por tipo de documento y la solución al error típico, ver [Configuración Contable — Impuestos](../accounting-rules/configuration#check-impuesto-de-venta).
:::

### Compras Productos /Servicios (No Almacenables)

### Orden de Compra (Productos Artículos No Almacenables)

|           Cuenta             |    Debe    |    Haber   |   Depende de  |          Campo        | Tipo de Aplic. |
| ---------------------------- | ---------- | ---------- | ------------- | --------------------- | -------------- |
| 52100 - COGS Medios          | 12,000.00  |  0.00      |  Producto     | Costos o Gastos Prod. | Compromisos    |
| 952 - Compras Comprometidas  | 0.00       | 12,000.00  | Esquema Cont. | Conciliac de comprom. | Compromisos    |

### Recepción Servicios (No Almacenables)

|              Cuenta             |    Debe    |    Haber   |   Depende de  |          Campo      | Tipo de Aplic. |
| ------------------------------- | ---------- | ---------- | ------------- | ------------------- | -------------- |
| 22200 - Cta Fact. no Entregada  | 12,000.00  |  0.00      | Producto      | Concil. Serv recib. | Actual         | 
| 152110 - IVA Compras            | 2,640.00   |  0.00      | Tasa de Imp.  | Impuesto al comprar | Actual         |
| 21110 - Acreedores por Compras  | 0.00       |  14,640.00 | Socio del Neg | CxP del Proveedor   | Actual         |

### Asignación Recepción-Factura de Servicios (Match Invoice PO)

Sin diferencia de precio.
Al  asociar la Factura con la Recepción.
Se visualiza: Factura/Recepciones de Productos Asignados.

|           Cuenta             |    Debe    |    Haber   |   Depende de  |          Campo        | Tipo de Aplic. |
| ---------------------------- | ---------- | ---------- | ------------- | --------------------- | -------------- |
| 21190 - Serv Entreg no Fact  | 12,000.00  |  0.00      | Gru. Soc. Neg | Serv. No Facturados   | Actual         |    
| 22200 - Cta Fact. no Entreg  | 0.00       | 12,000.00  | Producto      | Concil. Serv recib.   | Actual         |
| 952 - Compras Comprometidas  | 0.00       | 12,000.00  | Esquema Cont. | Conciliac de comprom. | Compromisos    |
| 52100 - COGS Medios          | 12,000.00  | 0.00       | Producto      | Costos o Gastos Prod  | Compromisos    |

### Asignación Productos Servicios (Match Invoice) con dif. precio

Cuando hay diferencia de Precio entre el Costo se agrega la VARIACIÓN
Al  asociar la Factura con la Recepción
Se visualiza: Factura/Recepciones de Productos Asignados

|              Cuenta           |    Debe    |    Haber   |   Depende de  |          Campo       | Tipo de Aplic. |
| ----------------------------- | ---------- | ---------- | ------------- | -------------------- | -------------- |
| 21190 - Serv Entreg no Fact   | 30,000.00  |  0.00      | Gru. Soc. Neg | Serv. No Facturados  | Actual         | 
| 21200 - Cta Fact. no Entreg   | 0.00       |  28,352.00 | Producto      | Concil. Serv recib.  | Actual         |
| 52100 - COGS Medios           | 0.00       |  1,648.00  | Producto      | Costos o Gastos Prod | Actual         |
| 952 - Compras Comprometidas  | 0.00       | 28,352.00  | Esquema Cont. | Conciliac de comprom. | Compromisos    |
| 52100 - COGS Medios          | 28,352.00  | 0.00       | Producto      | Costos o Gastos Prod  | Compromisos    |

### Factura Compra Servicios con Recepción

|              Cuenta             |    Debe    |    Haber   |   Depende de  |          Campo      | Tipo de Aplic. |
| ------------------------------- | ---------- | ---------- | ------------- | ------------------- | -------------- |
| 22200 - Cta Fact. no Entregada  | 12,000.00  |  0.00      | Producto      | Concil. Serv recib. | Actual         | 
| 152110 - IVA Compras            | 2,640.00   |  0.00      | Tasa de Imp.  | Impuesto al comprar | Actual         |
| 21110 - Acreedores por Compras  | 0.00       |  14,640.00 | Socio del Neg | CxP del Proveedor   | Actual         |

### Pago (día)

|             Cuenta              |    Debe   |    Haber  |   Depende de  |          Campo        | Tipo de Aplic. |
| ------------------------------- | --------- | --------- | ------------- | --------------------- | -------------- |
| 21300 - Pagos Seleccionados     | 3,720.00  |  0.00     |  Producto     | Pagos sin Asignar     | Actual         |
| 1111011 - Ch. en Tráns City UYU | 0.00      |  3,720.00 | Esquema Cont. | Banco Mov. no Concil. | Actual         |

### Asignación de Pago/ DXP

|             Cuenta              |    Debe   |    Haber  |   Depende de  |          Campo        | 
| ------------------------------- | --------- | --------- | ------------- | --------------------- | 
| 21110 - Acreedores por Compras  | 3,720.00  |  0.00     | Socio del Neg | CxP del Proveedor     | 
| 21300 - Pagos Seleccionados     | 0.00      |  3,720.00 | Banco         | Pagos sin Asignar     | 

## Gestión de Ventas Servicios (con Entrega)

### Orden de Venta

|             Cuenta              |    Debe   |    Haber  |   Depende de  |          Campo        | Tipo de Aplic. |
| ------------------------------- | --------- | --------- | ------------- | --------------------- | -------------- |
| 953 - Ventas Comprometidas      | 80,000.00 | 0.00      | Esquema Cont. | Concil de Compr Venta | Compromisos    |
| 45100 - Ventas Medios           | 0.00      | 80,000.00 | Producto      | Ingresos Producto     | Compromisos    |

### Entrega Servicios (Delivery)

|              Cuenta           |    Debe    |    Haber   |   Depende de  |          Campo        | Tipo de Aplic. |
| ----------------------------- | ---------- | ---------- | ------------- | --------------------- | -------------- |
| 12200 - Entr. Pend Facturar   | 80,000.00  |  0.00      | Gru. Soc. Neg | CxC no Facturados     | Actual         | 
| 45100 - Ventas Medios         | 0.00       |  80,000.00 | Producto      | Ingresos Producto     | Actual         |
| 45100 - Ventas Medios         | 80,000.00  |  0.00      | Producto      | Ingresos Producto     | Compromisos    |
| 953 - Ventas Comprometidas    | 0.00       |  80,000.00 | Esquema Cont. | Concil de Compr Venta | Compromisos    |

### Asignación Entrega - Factura Cliente (Match Invoice)

|             Cuenta              |    Debe   |    Haber  |   Depende de  |          Campo        |
| ------------------------------- | --------- | --------- | ------------- | --------------------- |
| 12300 - Ventas Fact no Entreg.  | 80,000.00 | 0.00      | Producto      | Ingresos Producto     |
| 12200 - Entregas pend. Facturar | 0.00      | 80,000.00 | Esquema Cont. | Ingresos no Factur.   |

### Documento por Cobrar Servicios

|              Cuenta             |    Debe    |    Haber   |   Depende de  |          Campo      | Tipo de Aplic. |
| ------------------------------- | ---------- | ---------- | ------------- | ------------------- | -------------- |
| 12110 - Cta x cobrar Comercial. | 97,600.00  |  0.00      | Socio del Neg | CxC Clientes        | Actual         | 
| 21610 - Impuestos por Pagar     | 0.00       |  17,600.00 | Tasa de Imp.  | Impuesto al vender  | Actual         |
| 12300 - Ventas Fact no Entreg.  | 0.00       |  80,000.00 | Producto      | Ingresos Producto   | Actual         |

## Gestión Financiera

### Cobro

|             Cuenta              |    Debe    |    Haber   |   Depende de  |          Campo        |
| ------------------------------- | ---------- | ---------- | ------------- | --------------------- |
| 11110 - Cheques en Tránsito     | 108,629.19 | 0.00       | Banco         | Banco Mov. no Concil. |
| 11130 - Cheques Depós. no Asig. | 0.00       | 108,629.19 | Banco         | Recaudos sin Asignar  |

### Asignación (Moneda UYU)

|             Cuenta              |    Debe    |    Haber   |   Depende de  |          Campo        |
| ------------------------------- | ---------- | ---------- | ------------- | --------------------- |
| 12110 - Cta x cobrar Comercial. | 0.00       | 715,534.00 | Socio del Neg | CxC Clientes          |
| 11130 - Cheques Depós. no Asig. | 715,534.00 | 0.00       | Banco         | Recaudos sin Asignar  |

### Asignación (Moneda USD)

Al Asignar  compara los tipos de Cambio que tuvo la misma cuando fue Cobrada y Facturada

**Diferencia de Cambio Ganada**

|             Cuenta              |    Debe    |    Haber   |   Depende de  |          Campo        |
| ------------------------------- | ---------- | ---------- | ------------- | --------------------- |
| 12110 - Cta x cobrar Comercial. | 0.00       | 79,056.69  | Socio del Neg | CxC Clientes          |
| 80540 - Ganancia Realizada      | 0.00       | 5,268.52   | Esquema Cont. | Cta Ganancia Realiz.  |
| 12115 - Cta x Cobrar Servicios  | 5,268.52   | 0.00       | Socio del Neg | CxC Clientes          |
| 11130 - Cheques Depós. no Asig. | 79,056.69  | 0.00       | Banco         | Recaudos sin Asignar  |

### Diferencia de Cambio Perdida

Al Asignar  compara los tipos de Cambio que tuvo la misma cuando fue Cobrada y Facturada

|             Cuenta              |    Debe    |    Haber   |   Depende de  |          Campo        |
| ------------------------------- | ---------- | ---------- | ------------- | --------------------- |
| 12110 - Cta x cobrar Comercial. | 0.00       | 73,788.17  | Socio del Neg | CxC Clientes          |
| 82540 - Pérdida Realizada       | 5,268.52   | 0.00       | Esquema Cont. | Cta Pérdida Realiz.   |
| 12115 - Cta x Cobrar Servicios  | 0.00       | 5,268.52   | Socio del Neg | CxC Clientes          |
| 11130 - Cheques Depós. no Asig. | 73,788.17  | 0.00       | Banco         | Recaudos sin Asignar  |

### Pago

|             Cuenta              |    Debe   |    Haber  |   Depende de  |          Campo        |
| ------------------------------- | --------- | --------- | ------------- | --------------------- |
| 21300 - Pagos Seleccionados     | 3,720.00  |  0.00     |  Banco        | Pagos sin Asignar     |
| 11110 - Cheques en Tránsito     | 0.00      |  3,720.00 |  Banco        | Banco Mov. no Concil. |

### Asignación (Pago - Documento por Pagar)

|             Cuenta              |    Debe   |    Haber  |   Depende de  |          Campo        |
| ------------------------------- | --------- | --------- | ------------- | --------------------- |
| 21110 - Acreedores x Compras    | 3,720.00  |  0.00     | Socio del Neg | CxP del Proveedor     |
| 21300 - Pagos Seleccionados     | 0.00      |  3,720.00 | Banco         | Pagos sin Asignar     | 

### Cheque Diferido por Pagar

Emisión

|             Cuenta              |    Debe    |    Haber   |   Depende de   |          Campo        |
| ------------------------------- | ---------- | ---------- | -------------- | --------------------- |
| 15300 - Cta Puente Cheque Dif.  | 186,361.52 | 0.00       | Cargo Definido | Cargo Gasto e Ingreso |
| 21200 - Cheques Dif. a Pagar    | 0.00       | 186,361.52 | Esquema Cont.  | Cheque Dif. x pagar   | 

### Pago Diferido

Cancelación de Deuda tipo Nota de Crédito) simultáneo a la creación del Cheque

|             Cuenta              |    Debe    |    Haber   |   Depende de  |          Campo        |
| ------------------------------- | ---------- | ---------- | ------------- | --------------------- |
| 21110 - Acreedores x Compras    | 186,361.52 | 0.00       | Socio del Neg | CxP del Proveedor     |
| 15300 - Cta Puente Cheque Dif.  | 0.00       | 186,361.52 | Cargo         | Cargo Gasto e Ingreso | 

### Asignación (Cobro Diferido - Documento por Cobrar)

Igual que una Nota de Crédito, Debita el saldo de Acreedores por Compras ya en el Documento Nota de Crédito. 
La asignación sólo se realiza por si existe diferencia de Cambio en la Asignación.

|             Cuenta              |    Debe    |    Haber   |   Depende de  |          Campo        |
| ------------------------------- | ---------- | ---------- | ------------- | --------------------- |
| 21110 - Acreedores x Compras    | 186,361.52 | 0.00       | Socio del Neg | CxP del Proveedor     |
| 21110 - Acreedores x Compras    | 0.00       | 186,361.52 | Socio del Neg | CxP del Proveedor     | 

### Débito de Cheque

Cuando el Tercero a quién se le entrega el Cheque realiza el Depósito. Más adelante se puede generar un Proceso de realizar el Débito de manera automática cuando el mismo se vence.

|             Cuenta              |    Debe   |    Haber  |   Depende de  |          Campo        |
| ------------------------------- | --------- | --------- | ------------- | --------------------- |
| 21300 - Pagos Seleccionados     | 3,000.00  |  0.00     |  Banco        | Pagos sin Asignar     |
| 11110 - Pagos en Tránsito       | 0.00      |  3,000.00 |  Banco        | Banco Mov. no Concil. |

### Asignación (Cheque Diferido por Cobrar - Débito de Cheque)

|             Cuenta              |    Debe    |    Haber   |   Depende de   |          Campo        |
| ------------------------------- | ---------- | ---------- | -------------- | --------------------- |
| 21200 - Cheques Dif. a Pagar    | 3,000.00   | 0.00       | Esquema Cont.  | Cheque Dif. x pagar   |
| 21300 - Pagos Seleccionados     | 0.00       | 3,000.00   | Banco          | Banco Mov. no Concil. | 

### Cheque Diferido por Cobrar

|             Cuenta              |    Debe    |    Haber   |   Depende de   |          Campo        |
| ------------------------------- | ---------- | ---------- | -------------- | --------------------- |
| 12120 - Cheques Dif. x Cobrar   | 23,713.14  | 0.00       | Esquema Cont.  | Cheque Dif. x pagar   |
| 15300 - Cta Puente Cheque Dif.  | 0.00       | 23,713.14  | Cargo Definido | Cargo Gasto e Ingreso |

### Cobro Diferido

Documento del Tipo Nota de Crédito que genera el Cheque Diferido por Cobrar para “Bajar” el saldo de los Documentos por Cobrar que está cancelando. 

|             Cuenta              |    Debe    |    Haber   |   Depende de   |          Campo        |
| ------------------------------- | ---------- | ---------- | -------------- | --------------------- |
| 15300 - Cta Puente Cheque Dif.  | 23,713.14  | 0.00       | Cargo          | Cargo Gasto e Ingreso |
| 12110 - Cta x cobrar Comercial. | 0.00       | 23,713.14  | Socio del Neg  | CxC Clientes          |

### Asignación (Cobro Diferido - Documento por Pagar)

Al mismo momento que cobro diferido

|             Cuenta              |    Debe    |    Haber   |   Depende de   |          Campo        |
| ------------------------------- | ---------- | ---------- | -------------- | --------------------- |
| 12110 - Cta x cobrar Comercial. | 23,713.14  | 0.00       | Socio del Neg  | CxC Clientes          |
| 12110 - Cta x cobrar Comercial. | 0.00       | 23,713.14  | Socio del Neg  | CxC Clientes          |

### Asignación (Cobro Diferido - Documento por Pagar en Moneda USD)

mismo momento que cobro diferido

|             Cuenta              |    Debe    |    Haber   |   Depende de   |          Campo        |
| ------------------------------- | ---------- | ---------- | -------------- | --------------------- |
| 12110 - Cta x cobrar Comercial. | 23,713.14  | 0.00       | Socio del Neg  | CxC Clientes          |
| 12110 - Cta x cobrar Comercial. | 83.67      | 0.00       | Socio del Neg  | CxC Clientes          |
| 82540 - Pérdida/Ganan. Realiz.  | 0.00       | 83.67      | Esquema Cont.  | Pérdida/Ganan Realiz. |
| 12110 - Cta x cobrar Comercial. | 0.00       | 23,713.14  | Socio del Neg  | CxC Clientes          |

### Depósito de Cheque Diferido por Cobrar

Cuando el Tercero a quién se le entrega el Cheque realiza el Depósito. 
Más adelante se puede generar un Proceso de realizar el Débito de manera automática cuando el mismo se vence.

|             Cuenta              |    Debe    |    Haber   |   Depende de  |          Campo        |
| ------------------------------- | ---------- | ---------- | ------------- | --------------------- |
| 11110 - Cheques en Tránsito     | 23,713.14  | 0.00       | Banco         | Banco Mov. no Concil. |
| 11130 - Cheques Depós. no Asig. | 0.00       | 23,713.14  | Banco         | Recaudos sin Asignar  |

### Asignación (Depósito - Cheque Diferido por Cobrar)

|             Cuenta              |    Debe    |    Haber   |   Depende de  |          Campo        |
| ------------------------------- | ---------- | ---------- | ------------- | --------------------- |
| 11130 - Cheques Depós. no Asig. | 23,713.14  | 0.00       | Banco         | Recaudos sin Asignar  |
| 12120 - Cheques Dif. x Cobrar   | 0.00       | 23,713.14  | Esquema Cont. | Cheque Dif. x Cobrar  |

### Conciliación Bancaria

Por cada línea de Estado de Cuenta se puede tener las siguientes aplicaciones contables

|             Cuenta              |    Debe    |    Haber   |   Depende de  |            Campo              |
| ------------------------------- | ---------- | ---------- | ------------- | ----------------------------- |
| 11100 - Bco Santander UYU       | 15,390.100 | 0.00       | Banco         | Bancos                        |
| 11110 - Cheques en Tránsito     | 0.00       | 15,602.58  | Banco         | Banco Mov. no Concil.         |
| 79600 - Otros Gastos            | 18.00      | 0.00       | Cargo         | Cargo Gasto o Ingreso         |
| 82100 - Intereses               | 194.58     | 0.00       | Banco         | +Ing x inter. -Gast x Inter.  |