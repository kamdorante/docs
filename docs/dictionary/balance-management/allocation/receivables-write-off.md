---
title: Dar de Baja Cuentas por Cobrar
category: Documentation
star: 9
sticky: 9
article: false
---

# Dar de Baja Cuentas por Cobrar

## Descripción
Dar de baja cuentas por recibir pendientes. Causa que las facturas seleccionadas por los criterios sean marcadas como pagadas y los totales de las facturas abiertas sean dados de baja. Alternativamente puede crear pagos.

## Acceso
Menú: Gestión de Saldos Pendientes → Asignación → Dar de Baja Cuentas por Cobrar

## Parámetros
| Parámetro | Descripción | Tipo | Obligatorio | Valor por defecto |
|---|---|---|---|---|
| Organización | Entidad organizacional dentro del cliente | Búsqueda directa | No | |
| Moneda | Moneda para este registro | Búsqueda directa | No | |
| Socio del Negocio | Identifica un socio del negocio | Búsqueda | No | |
| Grupo de Socio del Negocio | Grupo del socio del negocio | Búsqueda directa | No | |
| Factura | Documento de factura | Búsqueda | No | |
| Estado de Cobranza | Estado del proceso de cobro de la factura | Lista | No | |
| Nivel de Morosidad | Nivel de morosidad | Búsqueda directa | No | |
| Máximo Castigo por Factura | Monto máximo a dar de baja por factura | Monto | No | 0.01 |
| CxP - CxC | Incluir transacciones de cuentas por cobrar y/o por pagar | Lista | No | Cobros |
| Fecha de Facturación | Fecha impresa en la factura | Fecha | No | Fecha actual |
| Simulación | Indica que la función es solo simulada | Sí/No | No | Sí |
| Crear Pago | Crear pago | Sí/No | No | No |
| Fecha Contable | Fecha contable | Fecha | No | Fecha actual |
| Cuenta Bancaria | Cuenta en el banco | Búsqueda directa | No | |
