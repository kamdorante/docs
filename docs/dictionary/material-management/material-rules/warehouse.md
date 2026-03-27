---
title: Almacen
category: Documentation
star: 9
sticky: 9
article: false
---

# Almacen

## Descripcion

La ventana Almacen y Localizadores permite definir cada almacen utilizado por la organizacion, los localizadores dentro de cada almacen y los parametros contables para el inventario de ese almacen. Si se selecciona un almacen fuente, todo el reabastecimiento de productos provendra de ese almacen. Si se utilizan algoritmos de reabastecimiento personalizados, se debe definir la clase utilizada por cada almacen.

## Acceso

Menu: Gestion de Materiales → Reglas de Material → Almacen

## Pestanas

### Almacen

Define cada almacen utilizado para almacenar productos.

#### Campos

| Campo | Descripcion | Tipo | Obligatorio |
|-------|-------------|------|-------------|
| Clave de Busqueda | Clave unica de busqueda del almacen | Texto | Si |
| Nombre | Nombre del almacen | Texto | Si |
| Descripcion | Descripcion opcional del almacen | Texto | No |
| Activo | El registro esta activo en el sistema | Si/No | No |
| Direccion | Direccion del almacen | Tabla | No |
| Almacen Fuente | Almacen del que proviene el reabastecimiento | Tabla Directa | No |
| Clase de Reabastecimiento | Clase Java para algoritmos de reabastecimiento | Texto | No |
| Separador de Localizador | Separador utilizado en la visualizacion del localizador | Texto | No |

### Localizador

Define las ubicaciones dentro del almacen (pasillos, racks, posiciones).

#### Campos

| Campo | Descripcion | Tipo | Obligatorio |
|-------|-------------|------|-------------|
| Localizador | Ubicacion dentro del almacen | Texto | Si |
| Activo | El registro esta activo en el sistema | Si/No | No |
| Almacen | Almacen al que pertenece el localizador | Tabla Directa | Si |
| Pasillo (X) | Identificador del pasillo | Texto | No |
| Columna (Y) | Identificador de la columna | Texto | No |
| Nivel (Z) | Identificador del nivel | Texto | No |
| Prioridad Relativa | Prioridad para la seleccion del localizador | Entero | No |
| Es Predeterminado | Este es el localizador predeterminado | Si/No | No |
| Disponible para Picking | El localizador esta disponible para recoleccion | Si/No | No |

### Contabilidad

Define los parametros contables para el inventario almacenado en este almacen.

#### Campos

| Campo | Descripcion | Tipo | Obligatorio |
|-------|-------------|------|-------------|
| Esquema Contable | Esquema de contabilidad aplicable | Tabla Directa | Si |
| Cuenta de Activos de Almacen | Cuenta contable para los activos del almacen | Tabla | Si |
| Cuenta de Diferencias de Inventario | Cuenta para diferencias de inventario | Tabla | Si |
| Cuenta de Perdidas por Ajuste de Inventario | Cuenta para perdidas en ajuste | Tabla | No |
