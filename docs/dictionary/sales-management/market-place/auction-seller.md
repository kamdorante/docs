---
title: Vendedor de la Subasta
category: Documentation
star: 9
sticky: 9
article: false
---

# Vendedor de la Subasta

## Descripción

Permite mantener la información del vendedor de la subasta. Un vendedor es un usuario en el sistema que participa en subastas ofreciendo bienes o servicios. Esta ventana gestiona los datos del vendedor y sus fondos provenientes de las ofertas en los temas de subasta.

## Acceso

Menú: Gestión de Ventas → Mercado → Vendedor de la Subasta

## Pestañas

### Vendedor

Información del vendedor participante en subastas.

#### Campos

| Campo | Descripción | Tipo | Obligatorio |
|-------|-------------|------|-------------|
| Usuario/Contacto | Usuario del sistema que actúa como vendedor | Tabla | Sí |
| Nombre | Nombre del vendedor | Texto | Sí |
| Descripción | Descripción o información adicional del vendedor | Texto | No |
| Válido Hasta | Fecha hasta la que el vendedor está habilitado | Fecha | No |
| Interno | Indica si el vendedor es una organización interna | Sí/No | No |

### Fondos del Vendedor

Fondos del vendedor provenientes de las ofertas realizadas en los temas de subasta.

#### Campos

| Campo | Descripción | Tipo | Obligatorio |
|-------|-------------|------|-------------|
| Usuario/Contacto | Usuario vinculado a los fondos | Tabla | No |
| Monto Comprometido | Monto comprometido en ofertas activas | Monto | No |
| Monto No Comprometido | Monto disponible aún no comprometido | Monto | No |
| Pago | Pago vinculado a los fondos del vendedor | Tabla Directa | No |
| Orden de Compra | Orden de compra vinculada a los fondos | Tabla Directa | No |

### Oferta del Vendedor

Ofertas realizadas por el vendedor en los temas de subasta.

#### Campos

| Campo | Descripción | Tipo | Obligatorio |
|-------|-------------|------|-------------|
| Tema | Tema de subasta al que se realiza la oferta | Tabla Directa | Sí |
| Nombre | Nombre de la oferta | Texto | Sí |
| Fondos del Vendedor | Fondos del vendedor vinculados a la oferta | Tabla Directa | No |
| Dispuesto a Comprometer | Indica si el vendedor está dispuesto a comprometerse | Sí/No | No |
| Mensaje de Texto | Mensaje del vendedor | Texto | No |
| Nota Privada | Nota privada no visible para otras partes | Texto | No |
