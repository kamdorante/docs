---
title: Aplicaciones de la Página de Inicio
category: Documentation
star: 9
sticky: 9
article: false
---

# Aplicaciones de la Página de Inicio

## Descripción

La **Página de Inicio** (Landing) de Solop es la pantalla de acceso desde la que cada usuario elige la herramienta que va a utilizar: la interfaz nueva, la versión legacy, atención al cliente, proveedores, entre otras. Cada herramienta se muestra como un icono con su nombre.

Además de las aplicaciones web, la Página de Inicio permite publicar **descargas externas**: aplicaciones que no se ejecutan en el navegador sino que se instalan en el equipo o el dispositivo del usuario. Estas aparecen en la misma pantalla, como una aplicación más, y al hacer clic sobre ellas **comienza la descarga** del archivo, sin abrir ninguna ventana del sistema.

Las descargas externas disponibles son:

| Aplicación | Para qué sirve | Plataforma |
|---|---|---|
| Aplicación Móvil | Usar Solop desde un teléfono o tableta | Android |
| Cliente de Aplicaciones (win-x64) | Servicio de impresión local instalado en el equipo del usuario | Windows 64 bits |
| Cliente de Aplicaciones (win-x86) | Servicio de impresión local instalado en el equipo del usuario | Windows 32 bits |
| Actualizador de Aplicaciones (win-x86) | Utilitario que mantiene actualizado el cliente de aplicaciones | Windows 32 bits |

## ¿Cuándo se utiliza?

Se utiliza cuando se necesita:

- Instalar la aplicación móvil en un dispositivo nuevo.
- Instalar el **Cliente de Aplicaciones** en un equipo para habilitar la impresión directa (ver [Impresora Local](./printers/local-printer)).
- Descargar la versión vigente del cliente o del actualizador sin pedir el instalador al equipo de soporte.
- Publicar para todos los usuarios de una instalación nuevas descargas, como aplicaciones de impresoras u otros utilitarios.

## Acceso

Se accede desde la **Página de Inicio** del despliegue, que se muestra al ingresar al sistema antes de elegir la interfaz de trabajo.

## ¿Qué es el Cliente de Aplicaciones?

Es el servicio que se instala en el equipo del usuario para comunicar Solop con los dispositivos locales, principalmente la **impresora**. Una vez instalado queda escuchando en el equipo y permite imprimir de forma directa, sin pasar por el diálogo de impresión del navegador. La instalación y configuración completa se explica en [Impresora Local](./printers/local-printer).

El **Actualizador de Aplicaciones** es un programa complementario que se utiliza para mantener el cliente en su versión vigente.

## Qué aplicaciones ve cada usuario

La visibilidad de cada aplicación se define **por rol**. Para cada aplicación se indica qué roles pueden verla y con qué nivel de acceso (lectura o escritura).

| Aplicación | Roles que la ven |
|---|---|
| Interfaz nueva, Solop ERP, Versión Legacy | Todos los roles activos |
| Atención al Cliente, Proveedores, Studio | Solo Administrador y System Administrator |
| Aplicación Móvil, Cliente de Aplicaciones, Actualizador de Aplicaciones | Solo Administrador y System Administrator |

Si se necesita que otro rol pueda descargar alguna de las aplicaciones, se le debe otorgar acceso a esa aplicación específica.

## Flujo del proceso

### 1. Ingresar a la Página de Inicio

Iniciar sesión en el despliegue con un usuario cuyo rol tenga acceso a las descargas.

### 2. Ubicar la aplicación

Las aplicaciones se ordenan según una **secuencia** definida: primero las aplicaciones web y a continuación las descargas externas. Identificar la tarjeta de la aplicación a instalar.

### 3. Descargar

Hacer clic sobre la tarjeta. El navegador inicia la descarga del archivo (instalador `.exe` en Windows o paquete `.apk` en Android), igual que sucede con cualquier enlace externo.

### 4. Instalar

Ejecutar el archivo descargado y seguir el asistente:

- **Cliente de Aplicaciones:** continuar con los pasos de [Impresora Local](./printers/local-printer).
- **Aplicación Móvil:** permitir la instalación desde el archivo en el dispositivo y abrir la aplicación para iniciar sesión.

## Ejemplo de uso

Un administrador prepara un equipo de caja nuevo, con Windows de 64 bits:

1. Ingresa a la Página de Inicio con su usuario Administrador.
2. Hace clic en **Cliente de Aplicaciones (win-x64)** y se descarga el instalador.
3. Ejecuta el instalador y deja el servicio activo.
4. Vuelve a la Página de Inicio, abre la interfaz de trabajo y configura la impresora desde las preferencias del usuario.

Para el teléfono del encargado, ingresa desde el dispositivo, toca **Aplicación Móvil** y se descarga el paquete de instalación.

## Consideraciones importantes

- Las descargas son **externas**: el archivo se aloja en un almacenamiento de archivos de Solop, por lo que no requiere desarrollo ni configuración adicional en cada cliente.
- La aplicación móvil y el cliente de aplicaciones son **únicos para todos los clientes**. Cada enlace apunta a una **versión específica**; cuando se publica una versión nueva, el enlace de la aplicación en la Página de Inicio debe actualizarse para que los usuarios descarguen la versión vigente.
- Las aplicaciones se identifican por un **código único** dentro de cada cliente (por ejemplo, el de la aplicación móvil es distinto al de cada versión del cliente de aplicaciones). La carga inicial de aplicaciones puede ejecutarse varias veces sin duplicar registros: crea las que faltan y actualiza las existentes.
- Por defecto las descargas quedan visibles solo para **Administrador** y **System Administrator**.
- Elegir la versión que corresponde al equipo: **x64** para Windows de 64 bits y **x86** para 32 bits.
- Las descargas se publican por instalación (Página de Inicio del despliegue). Si una instalación no muestra las aplicaciones, solicitar al equipo de soporte que aplique la carga de aplicaciones correspondiente.

## Ventanas relacionadas

- [Impresora Local](./printers/local-printer)
- [Dispositivos](./index)
