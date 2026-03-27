---
title: Esquema de Descuentos
category: Documentation
star: 9
sticky: 9
article: false
---

# Esquema de Descuentos

## Descripcion

La ventana Esquema de Descuentos permite mantener los esquemas de descuento comercial. Un esquema de descuento calcula el porcentaje de descuento comercial que se aplica sobre el precio estandar calculado, resultando en el precio final. Soporta diferentes tipos de calculo: descuento plano, por escalonado de cantidades/montos, y mediante scripts Java.

## Acceso

Menu: Gestion de Materiales → Reglas de Material → Esquema de Descuentos

## Pestanas

### Esquema de Descuentos

Define el esquema de calculo de descuento comercial. Incluye todos los tipos excepto el tipo Precio.

#### Campos

| Campo | Descripcion | Tipo | Obligatorio |
|-------|-------------|------|-------------|
| Nombre | Nombre del esquema de descuento | Texto | Si |
| Descripcion | Descripcion opcional del esquema | Texto | No |
| Activo | El registro esta activo en el sistema | Si/No | No |
| Tipo de Descuento | Tipo de procedimiento para calcular el descuento | Lista | Si |
| Script | Script Java dinamico para calcular el descuento | Texto | No |
| Descuento Plano del Socio | Usar descuento plano definido en el socio de negocio | Si/No | No |
| Descuento Plano % | Porcentaje de descuento plano | Numero | No |
| Basado en Cantidad | El escalon se basa en cantidad (no en monto) | Si/No | No |
| Nivel de Acumulacion | Nivel para calculos acumulativos | Lista | No |
| Valido Desde | Fecha de inicio de vigencia del esquema | Fecha | No |

### Descuento por Escalonado

Descuento comercial basado en escalones (pasos).

#### Campos

| Campo | Descripcion | Tipo | Obligatorio |
|-------|-------------|------|-------------|
| Secuencia | Orden de las lineas del escalon | Entero | Si |
| Activo | El registro esta activo en el sistema | Si/No | No |
| Categoria de Producto | Categoria de producto para el escalon | Tabla Directa | No |
| Producto | Producto especifico para el escalon | Busqueda | No |
| Valor de Escalon | Valor (cantidad o monto) de inicio del nivel | Numero | Si |
| Descuento Plano del Socio | Usar descuento plano del socio de negocio | Si/No | No |
| Descuento por Escalon % | Porcentaje de descuento comercial para el escalon | Numero | No |
