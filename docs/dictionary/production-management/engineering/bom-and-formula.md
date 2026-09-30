---
title: Lista de Materiales y Fórmula
category: Documentation
star: 9
sticky: 9
article: false
---

# Lista de Materiales y Fórmula

## Descripción

La ventana **Lista de Materiales y Fórmula** permite definir de qué está compuesto un producto terminado: qué productos se consumen y en qué cantidad para fabricar una unidad. También se conoce como fórmula, receta o lista de ingredientes según la industria.

Es la base de la producción por lista de materiales: cuando se ejecuta una [Producción](../../material-management/production), el sistema lee esta lista para saber qué componentes descontar del inventario y qué producto terminado ingresar. Resulta especialmente útil cuando la organización compra insumos a granel (por ejemplo, en tambores) y los fracciona en presentaciones más pequeñas (por ejemplo, botellas) para entregarlas o consumirlas.

## ¿Cuándo se utiliza?

Se utiliza cuando la organización necesita:

- Definir la composición de un producto que se fabrica o fracciona a partir de otros productos.
- Convertir una materia prima comprada a granel en varias unidades de una presentación menor.
- Incluir insumos adicionales en la fabricación, como el envase o la botella.
- Validar que la estructura de la lista es correcta antes de habilitar el producto para producción.

## Acceso

Menú: Gestión de Manufactura → Gestión de Ingeniería → Lista de Materiales y Fórmulas → **Lista de Materiales y Fórmula**.

## Pestañas

### Producto Padre

Define el producto terminado que se obtiene con la lista de materiales.

- **Producto**
  Producto terminado que se fabricará (por ejemplo, la botella de 1 litro de desinfectante).

- **Nombre**
  Nombre descriptivo de la lista de materiales.

- **Válido desde / Válido hasta**
  Rango de fechas de vigencia de la lista. Si la fecha de la producción queda fuera del rango, el sistema no encuentra la lista.

- **Verificar LDM**
  Botón que valida la estructura de la lista y deja el producto habilitado para producción.

### Componentes de la Lista de Materiales y Fórmula

Componentes que se consumen para fabricar una unidad del producto padre.

- **Producto**
  Materia prima o insumo que se consume (por ejemplo, el tambor de 200 litros o la botella vacía).

- **Cantidad**
  Cantidad del componente necesaria por cada unidad del producto padre. En fraccionamientos corresponde a la proporción entre ambos productos.

- **Válido desde / Válido hasta**
  Vigencia del componente dentro de la lista.

## Acciones disponibles

- **Verificar LDM**
  Revisa que la lista esté bien estructurada y actualiza el nivel de la lista. Es el último paso para dar de alta el producto como fabricable.

## Flujo del proceso

### 1. Crear los productos

Antes de armar la lista deben existir el producto terminado y sus componentes (ver [Producto](../../material-management/material-rules/product)). Para cada uno se define la unidad de medida y la precisión decimal. Si la materia prima se compra y se almacena en la misma unidad de medida, no es necesario definir conversiones de unidad.

### 2. Crear la lista de materiales

Abrir la ventana y crear un registro nuevo seleccionando el producto terminado. Indicar una fecha de validez anterior a la fecha de las producciones que se van a registrar.

### 3. Agregar los componentes y su proporción

En la pestaña de componentes agregar cada producto que interviene y la cantidad por unidad terminada. Para fraccionar un producto a granel, la cantidad es el inverso del rendimiento:

```
Cantidad de materia prima por unidad = 1 ÷ unidades que se obtienen
```

| Componente | Unidades que rinde | Cantidad en la lista |
|---|---:|---:|
| Tambor de 200 litros | 200 botellas de 1 litro | 0,005 |
| Botella vacía de 1 litro | 1 botella | 1 |

Aunque la pantalla puede mostrar un valor redondeado, el sistema conserva los decimales configurados en la precisión del producto.

### 4. Verificar la lista

Ejecutar **Verificar LDM**. Si la estructura es correcta, el sistema lo confirma y el producto queda listo para fabricarse.

## Ejemplo de uso

Una organización compra desinfectante en tambores de 200 litros y lo entrega en botellas de 1 litro:

1. Crear el producto terminado *Desinfectante botella 1 litro* y las materias primas *Tambor 200 litros* y *Botella vacía 1 litro*.
2. Crear una lista de materiales para el producto terminado, con vigencia anterior a la fecha de producción.
3. Agregar el tambor con cantidad **0,005** y la botella con cantidad **1**.
4. Ejecutar **Verificar LDM**.
5. Continuar con la compra de las materias primas y su [Producción](../../material-management/production).

## Consideraciones importantes

- La lista solo se aplica si su **fecha de validez** incluye la fecha de la producción; de lo contrario el sistema no la encuentra.
- Si un producto tiene **varias listas**, se recomienda seleccionar la lista específica al registrar la producción.
- Las materias primas conviene clasificarlas en una categoría de producto propia (por ejemplo, *Materia Prima*), para diferenciarlas contablemente y en los reportes.
- Cuando el insumo se almacena a granel, su unidad de medida debe ser la unidad de consumo (litro, kilogramo), de modo que la proporción de la lista sea directa.
- La lista no descuenta ni ingresa inventario por sí sola: solo describe la composición. Los movimientos se generan al completar una producción.

## Ventanas relacionadas

- [Producción](../../material-management/production)
- [Producto](../../material-management/material-rules/product)
- [Unidad de Medida](../../material-management/material-rules/unit-of-measure)
- [Orden de Compra](../../purchase-management/purchase-orders/purchase-order)
- [Recepción de Material](../../purchase-management/reception/material-receipt)
- [Inventario de Uso Interno](../../material-management/internal-use-inventory)
