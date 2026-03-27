---
title: Ejecución de Órdenes de Distribución
category: Documentation
star: 9
sticky: 9
article: false
---

# Ejecución de Órdenes de Distribución

## Descripción

Crea órdenes de distribución de ejecución basadas en las listas de distribución y redistribuye la cantidad en las líneas de plan de distribución. Basado en la demanda DRP es seleccionado, la cantidad de redistribución es basada en el porcentaje de demanda.

Por favor note que debido al redondeo, la cantidad total de la(s) orden(es) es ligeramente mayor que la cantidad ingresada. La opción "Consolidar a un documento" permite la distribución en documentos actuales con rango de fechas prometida; si no es seleccionado, entonces se genera una nueva orden.

## Acceso

Menú: Gestión de Distribución → Ejecución de Órdenes de Distribución

## Parámetros

| Parámetro | Descripción | Tipo | Obligatorio |
|-----------|-------------|------|-------------|
| Organización | Entidad organizacional dentro del cliente | Tabla Directa | No |
| Almacén | Almacén de almacenamiento y punto de servicio | Tabla Directa | No |
| Fecha Prometida | Fecha en que la orden fue prometida | Fecha | No |
| Lista de Distribución | Las listas de distribución permiten distribuir productos a una lista seleccionada de socios | Tabla Directa | No |
| Consolidar en un Documento | Consolidar líneas en un solo documento | Sí/No | No |
| Basado en Demanda DRP | Indica si la redistribución de cantidad se basa en la demanda DRP | Sí/No | No |
| Prueba | Ejecutar en modo de prueba | Sí/No | No |
