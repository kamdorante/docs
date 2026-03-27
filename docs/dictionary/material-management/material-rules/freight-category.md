---
title: Categoria de Flete
category: Documentation
star: 9
sticky: 9
article: false
---

# Categoria de Flete

## Descripcion

La ventana Categoria de Flete permite mantener las categorias de flete que se utilizan para calcular el costo del flete segun el transportista seleccionado. Las categorias permiten agrupar productos o envios con caracteristicas similares para aplicar tarifas de flete diferenciadas.

## Acceso

Menu: Gestion de Materiales → Reglas de Material → Categoria de Flete

## Pestanas

### Categoria de Flete

Define las categorias para calcular el flete del transportista seleccionado.

#### Campos

| Campo | Descripcion | Tipo | Obligatorio |
|-------|-------------|------|-------------|
| Clave de Busqueda | Clave unica de identificacion de la categoria | Texto | Si |
| Nombre | Nombre de la categoria de flete | Texto | Si |
| Descripcion | Descripcion opcional de la categoria | Texto | No |
| Activo | El registro esta activo en el sistema | Si/No | No |
| Comentario/Ayuda | Comentario o pista sobre el uso de esta categoria | Texto | No |
| Tipo de Calculo de Flete | Tipo de calculo utilizado para esta categoria | Lista | No |
| Facturado | Si esta marcado, se generan facturas para este flete | Si/No | No |
| Producto | Producto asociado si el flete es facturado | Busqueda | No |
| Cargo | Cargo adicional del documento si el flete es facturado | Tabla Directa | No |
