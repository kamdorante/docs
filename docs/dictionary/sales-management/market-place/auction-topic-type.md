---
title: Tipo de Tema de Subasta
category: Documentation
star: 9
sticky: 9
article: false
---

# Tipo de Tema de Subasta

## Descripción

Permite mantener el tipo y las categorías del tema de la subasta. El tipo del tema de la subasta determina qué clase de subasta se utiliza para un área particular. Cada tipo puede tener su propia lista de precios, producto de membresía y categorías asociadas.

## Acceso

Menú: Gestión de Ventas → Mercado → Tipo de Tema de Subasta

## Pestañas

### Tipo de Tema

Información principal del tipo de subasta.

#### Campos

| Campo | Descripción | Tipo | Obligatorio |
|-------|-------------|------|-------------|
| Nombre | Nombre del tipo de tema de subasta | Texto | Sí |
| Descripción | Descripción del tipo de tema | Texto | No |
| Comentario/Ayuda | Comentario o ayuda sobre el uso | Texto | No |
| Tipo de Subasta | Tipo específico de subasta (inglesa, holandesa, etc.) | Lista | No |
| Lista de Precios | Lista de precios utilizada en este tipo de subasta | Tabla Directa | No |
| Membresía | Producto utilizado para determinar el precio de membresía del tipo de tema | Búsqueda | No |
| Producto | Producto asociado al tipo de subasta | Búsqueda | No |

### Categoría del Tipo

Categorías definidas para este tipo de subasta.

#### Campos

| Campo | Descripción | Tipo | Obligatorio |
|-------|-------------|------|-------------|
| Tipo de Tema | Tipo de tema al que pertenece la categoría | Tabla Directa | Sí |
| Nombre | Nombre de la categoría | Texto | Sí |
| Descripción | Descripción de la categoría | Texto | No |
