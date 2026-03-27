---
title: Transportista
category: Documentation
star: 9
sticky: 9
article: false
---

# Transportista

## Descripcion

La ventana Transportista permite definir los diferentes proveedores de envio utilizados por una organizacion. Cuando se utiliza el metodo de entrega por Transportista en un pedido, se debe seleccionar un transportista predefinido. Tambien permite configurar las tarifas de flete por pais, region y categoria de flete.

## Acceso

Menu: Gestion de Materiales → Reglas de Material → Transportista

## Pestanas

### Transportista

Define cualquier entidad que provea servicios de envio hacia o desde la organizacion.

#### Campos

| Campo | Descripcion | Tipo | Obligatorio |
|-------|-------------|------|-------------|
| Nombre | Nombre del transportista | Texto | Si |
| Descripcion | Descripcion opcional del transportista | Texto | No |
| Activo | El registro esta activo en el sistema | Si/No | No |
| Socio de Negocio | Socio de negocio asociado al transportista | Busqueda | No |
| URL de Seguimiento | URL del transportista para rastrear envios | Texto | No |
| Tipo de Vehiculo Predeterminado | Tipo de vehiculo utilizado por defecto | Tabla Directa | No |
| Clase de Calculo | Clase Java para calcular tarifas de flete | Texto | No |

### Flete

Define las tarifas de flete para este transportista segun pais, region y categoria.

#### Campos

| Campo | Descripcion | Tipo | Obligatorio |
|-------|-------------|------|-------------|
| Transportista | Transportista para la tarifa | Tabla Directa | Si |
| Activo | El registro esta activo en el sistema | Si/No | No |
| Categoria de Flete | Categoria de flete aplicada | Tabla Directa | No |
| Valido Desde | Fecha de inicio de vigencia de la tarifa | Fecha | Si |
| Moneda | Moneda de la tarifa de flete | Tabla Directa | Si |
| Monto del Flete | Monto cobrado por el flete | Monto | Si |
| Pais | Pais de origen del envio | Tabla Directa | No |
| Destino | Pais destino del envio | Tabla Directa | No |
| Region | Region de origen del envio | Tabla Directa | No |
| Destino (Region) | Region destino del envio | Tabla Directa | No |
