---
title: Tema de Subasta
category: Documentation
star: 9
sticky: 9
article: false
---

# Tema de Subasta

## Descripción

Permite manejar los temas de las ofertas y la visualización de las subastas. Un tema de subasta es la descripción del elemento a vender o financiar, con sus condiciones, fechas y el registro de las ofertas y pujas realizadas.

## Acceso

Menú: Gestión de Ventas → Mercado → Tema de Subasta

## Pestañas

### Tema de Subasta

Información del tema principal de la subasta.

#### Campos

| Campo | Descripción | Tipo | Obligatorio |
|-------|-------------|------|-------------|
| Tipo de Tema | Tipo de subasta al que pertenece el tema | Tabla Directa | Sí |
| Nombre | Nombre o título del tema de subasta | Texto | Sí |
| Descripción | Descripción del elemento a subastar o financiar | Texto | No |
| Fecha de Inicio de la Acción | Fecha en que inicia la subasta | Fecha | No |
| Fecha de Fin de la Acción | Fecha en que finaliza la subasta | Fecha | No |
| Precio Inicial | Precio inicial de la subasta | Monto | No |
| Precio de Reserva | Precio mínimo de reserva para aceptar una puja | Monto | No |
| Precio de Compra Inmediata | Precio para compra inmediata sin subasta | Monto | No |
| Estado del Tema | Estado actual del tema de subasta | Lista | No |
| Vendedor | Vendedor responsable del tema | Tabla Directa | No |

### Puja

Registro de las pujas realizadas sobre el tema.

#### Campos

| Campo | Descripción | Tipo | Obligatorio |
|-------|-------------|------|-------------|
| Usuario/Contacto | Usuario que realiza la puja | Tabla | Sí |
| Nombre | Nombre de la puja | Texto | Sí |
| Fondos del Comprador | Fondos disponibles del comprador para la puja | Tabla Directa | No |
| Dispuesto a Comprometer | Indica si el pujador está dispuesto a comprometerse | Sí/No | No |
| Mensaje de Texto | Mensaje del pujador al vendedor | Texto | No |
| Nota Privada | Nota privada no visible para otras partes | Texto | No |

### Oferta

Registro de las ofertas realizadas sobre el tema.

#### Campos

| Campo | Descripción | Tipo | Obligatorio |
|-------|-------------|------|-------------|
| Usuario/Contacto | Usuario que realiza la oferta | Tabla | Sí |
| Fondos del Vendedor | Fondos del vendedor vinculados a la oferta | Tabla Directa | No |
| Nombre | Nombre de la oferta | Texto | Sí |
| Dispuesto a Comprometer | Indica si el ofertante está dispuesto a comprometerse | Sí/No | No |
| Mensaje de Texto | Mensaje del ofertante | Texto | No |
| Nota Privada | Nota privada no visible para otras partes | Texto | No |
