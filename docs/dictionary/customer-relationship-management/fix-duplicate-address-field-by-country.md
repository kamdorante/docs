---
title: Corregir un Campo de Dirección Duplicado según el Formato de País
category: Documentation
star: 9
sticky: 9
article: false
---

# Corregir un Campo de Dirección Duplicado según el Formato de País

## Descripción

En la pestaña **Localización** de un **Socio del Negocio**, el campo **País** no solo propone un valor por defecto (ver [País por Defecto al Crear Localización de Socio del Negocio](default-country-in-business-partner-locations)): también determina **qué campos de dirección se muestran** en el diálogo y cómo se compone el texto final de la dirección.

Cada país tiene su propio **formato de dirección**. Por ejemplo:

- Un país como **Estados Unidos** expone los campos **Dirección 1**, **Dirección 2**, **Dirección 3** y **Dirección 4**, además de **Ciudad**, **State** y **Código Postal**.
- Un país como **Uruguay** expone únicamente **Dirección 1**, **Dirección 2**, **Ciudad** y **Departamento**, sin los campos Dirección 3 y 4.

Cuando una localización se carga (o se migra) con un país cuyo formato expone más campos de dirección que el país que realmente corresponde, puede quedar un valor guardado en un campo (por ejemplo, **Dirección 4**) que el formato del país correcto no muestra en pantalla, pero que **sigue formando parte de la dirección compuesta**. El resultado visible es una calle que parece repetida en el texto de la dirección (por ejemplo, "Avenida Central" aparece dos veces), aunque en el diálogo actual no se vea el campo que contiene el valor duplicado.

## ¿Cuándo se utiliza?

Este procedimiento se aplica cuando:

- La dirección de un socio de negocio muestra una calle o dato repetido al visualizarla o imprimirla.
- El campo con el valor duplicado no es visible en el diálogo de **Localización** porque el país actual no lo expone en su formato.
- Se necesita limpiar ese campo sin alterar el resto de la dirección ni recargar la localización desde cero.

## Acceso

1. Abrir la ventana **Socio del Negocio** (o la ventana equivalente: **Cliente**, **Proveedor**).
2. Ir a la pestaña **Localización**.
3. Abrir la localización con el dato duplicado.

## Por qué no alcanza con editar el campo visible

El campo de dirección que se ve en pantalla (por ejemplo, **Dirección 1**) **no es el mismo campo** que contiene el valor duplicado (por ejemplo, **Dirección 4**). Editar o borrar el campo visible únicamente cambia esa línea de la dirección; el valor duplicado, guardado en el campo que el país actual no muestra, permanece intacto y sigue apareciendo en la dirección compuesta.

Por eso, para eliminar el duplicado es necesario **exponer temporalmente** el campo oculto, y eso solo se logra cambiando el **País** a uno cuyo formato lo incluya.

## Flujo del proceso

### 1. Identificar el campo con el valor duplicado

Revisar la dirección compuesta y determinar qué dato aparece repetido (por ejemplo, la calle "Avenida Central").

### 2. Cambiar temporalmente el País

En el diálogo de **Localización**, cambiar el campo **País** a uno cuyo formato de dirección exponga el campo adicional (por ejemplo, **Estados Unidos**, que muestra Dirección 1 a Dirección 4). El diálogo se reorganiza y muestra los campos correspondientes a ese formato, incluido el que contenía el valor oculto.

### 3. Borrar el campo con el dato duplicado

Ubicar el campo que contiene el valor repetido (por ejemplo, **Dirección 4**) y dejarlo vacío.

### 4. Guardar

Confirmar el diálogo. El valor queda eliminado del campo correspondiente, aunque el país todavía esté configurado temporalmente en el valor usado para exponer el campo.

### 5. Definir el País correcto

Volver a abrir la localización y establecer el **País** real del socio de negocio (por ejemplo, **Uruguay**). El diálogo vuelve a mostrar únicamente los campos del formato de ese país.

### 6. Confirmar la dirección resultante

Verificar que la dirección compuesta ya no muestra el dato duplicado y que el resto de los campos (Dirección 1, Dirección 2, Ciudad, Departamento, etc.) conserva la información correcta.

## Ejemplo de uso

Una localización muestra la dirección "Avenida Central, Avenida Central" al visualizarla, aunque el diálogo (configurado con **Uruguay** como país) solo muestra un campo de calle con ese valor:

1. Se abre la localización y se cambia el **País** a **Estados Unidos**, cuyo formato expone Dirección 1 a Dirección 4.
2. Se identifica que **Dirección 4** contiene el valor duplicado "Avenida Central".
3. Se borra el contenido de **Dirección 4** y se guarda.
4. Se vuelve a abrir la localización y se define el **País** correcto: **Uruguay**.
5. La dirección compuesta queda con "Avenida Central" una sola vez, junto con Ciudad y Departamento correctamente cargados.

## Consideraciones importantes

- **No** se debe intentar resolver la duplicación editando o borrando el campo de calle visible para luego volver a escribirlo: el dato duplicado está guardado en otro campo, oculto por el formato del país actual.
- Se recomienda, al momento de revisar o depurar direcciones con este problema, **usar temporalmente un país que exponga todos los campos de dirección** (Dirección 1 a 4, Ciudad, State/Departamento, Código Postal), de forma de poder ver y corregir cualquier campo con datos residuales antes de fijar el país definitivo.
- El campo **País** determina el **formato de captura**, no solo un valor de referencia geográfica: cambiarlo reorganiza qué campos se muestran y cuáles quedan ocultos (pero no se borran automáticamente).
- Este ajuste corrige la localización puntual donde se detectó el problema; si varias localizaciones del mismo socio presentan el mismo síntoma, el procedimiento debe repetirse en cada una.
- Cambiar el país únicamente para depurar el campo oculto es una operación temporal: siempre se debe volver a dejar configurado el país real del socio de negocio antes de guardar la versión final de la dirección.

## Ventanas relacionadas

- [País por Defecto al Crear Localización de Socio del Negocio](default-country-in-business-partner-locations)
- [Generar Localización de Socio del Negocio](generate-business-partner-localization)
