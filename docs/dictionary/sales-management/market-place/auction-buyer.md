---
title: Comprador de la Subasta
category: Documentation
star: 9
sticky: 9
article: false
---

# Comprador de la Subasta

## Descripción

Permite mantener la información del comprador de la subasta. Un comprador es un usuario en el sistema que participa en subastas realizando pujas para adquirir bienes o servicios. Esta ventana gestiona los datos del comprador, sus fondos disponibles y las pujas realizadas.

## Acceso

Menú: Gestión de Ventas → Mercado → Comprador de la Subasta

## Pestañas

### Comprador

Información del comprador participante en subastas.

#### Campos

| Campo | Descripción | Tipo | Obligatorio |
|-------|-------------|------|-------------|
| Usuario/Contacto | Usuario del sistema que actúa como comprador | Tabla | Sí |
| Nombre | Nombre del comprador | Texto | Sí |
| Descripción | Descripción o información adicional del comprador | Texto | No |
| Válido Hasta | Fecha hasta la que el comprador está habilitado | Fecha | No |

### Fondos del Comprador

Fondos disponibles del comprador para realizar pujas en los temas de subasta.

#### Campos

| Campo | Descripción | Tipo | Obligatorio |
|-------|-------------|------|-------------|
| Usuario/Contacto | Usuario vinculado a los fondos | Tabla | No |
| Monto Comprometido | Monto comprometido en pujas activas | Monto | No |
| Monto No Comprometido | Monto disponible aún no comprometido | Monto | No |
| Pago | Pago vinculado a los fondos del comprador | Tabla Directa | No |
| Orden | Orden de venta vinculada a los fondos | Tabla Directa | No |

### Puja del Comprador

Pujas realizadas por el comprador en los temas de subasta.

#### Campos

| Campo | Descripción | Tipo | Obligatorio |
|-------|-------------|------|-------------|
| Tema | Tema de subasta en el que se realiza la puja | Tabla Directa | Sí |
| Nombre | Nombre de la puja | Texto | Sí |
| Fondos del Comprador | Fondos del comprador vinculados a la puja | Tabla Directa | No |
| Dispuesto a Comprometer | Indica si el comprador está dispuesto a comprometerse | Sí/No | No |
| Mensaje de Texto | Mensaje del comprador al vendedor | Texto | No |
| Nota Privada | Nota privada no visible para otras partes | Texto | No |
