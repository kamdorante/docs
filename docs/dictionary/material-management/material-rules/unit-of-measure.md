---
title: Unidad de Medida
category: Documentation
star: 9
sticky: 9
article: false
---

# Unidad de Medida

## Descripcion

La ventana Unidad de Medida permite definir unidades de medida no monetarias. Tambien define si se permiten conversiones entre unidades de medida y como deben realizarse. El sistema provee algunas conversiones automaticas entre unidades de medida (como minuto, hora, dia, dia laborable, etc.) si no estan definidas explicitamente. Las conversiones deben ser directas: si solo existe conversion A-B y B-C, el sistema no puede convertir A-C; debe definirse explicitamente.

## Acceso

Menu: Gestion de Materiales → Reglas de Material → Unidad de Medida

## Pestanas

### Unidad de Medida

Define una unidad de medida no monetaria.

#### Campos

| Campo | Descripcion | Tipo | Obligatorio |
|-------|-------------|------|-------------|
| Codigo UOM | Codigo EDI X12 de la unidad de medida (elemento 355) | Texto | No |
| Simbolo | Simbolo que representa la unidad de medida | Texto | Si |
| Nombre | Nombre de la unidad de medida | Texto | Si |
| Descripcion | Descripcion opcional del registro | Texto | No |
| Tipo de UOM | Tipo de la unidad de medida | Lista | No |
| Activo | El registro esta activo en el sistema | Si/No | No |
| Predeterminada | Esta es la unidad de medida predeterminada | Si/No | No |
| Precision Estandar | Numero de decimales para redondeo en transacciones contables | Entero | Si |
| Precision de Costeo | Numero de decimales para calculos de costeo | Entero | Si |

### Traduccion

Traducciones de la unidad de medida a otros idiomas.

#### Campos

| Campo | Descripcion | Tipo | Obligatorio |
|-------|-------------|------|-------------|
| Idioma | Idioma para esta entidad | Lista | Si |
| Traducida | Esta columna esta traducida | Si/No | No |
| Simbolo | Simbolo traducido | Texto | No |
| Nombre | Nombre traducido | Texto | No |
| Descripcion | Descripcion traducida | Texto | No |

### Conversion

Define las tasas de conversion entre unidades de medida. Las conversiones deben definirse directamente entre pares de unidades.

#### Campos

| Campo | Descripcion | Tipo | Obligatorio |
|-------|-------------|------|-------------|
| UOM | Unidad de medida origen | Tabla Directa | Si |
| UoM Destino | Unidad de medida de destino | Tabla Directa | Si |
| Producto | Producto especifico para la conversion (opcional) | Busqueda | No |
| Activo | El registro esta activo en el sistema | Si/No | No |
| Factor Multiplicador | Factor por el cual se multiplica el origen para obtener el destino | Numero | Si |
| Factor Divisor | Factor por el cual se divide el origen para obtener el destino | Numero | No |
