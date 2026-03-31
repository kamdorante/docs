# Hilo: ✅[YS] #2445 Conciliación: Manejo de monto por Diferencia

**Canal:** limpiasur
**Issue:** #2445 (github) — https://github.com/solop-develop/adempiere-solop/issues/2445
**Exportado:** 2026-03-30 17:06
**Total mensajes:** 73

---

### yamelsenih — 2026-03-24 13:13

Actualmente se está modificado el registro de importación y esto no está correcto. Los únicos campos que debemos modificar son los de control del match.

Hay que verificar que columnas se están modificando

---

### yamelsenih — 2026-03-24 13:14

<@600677127356153886> por favor necesito que especifiques cuáles columnas (que no deberían modificarse) se están modificando al momento de hacer el match

---

### Solop RAG — 2026-03-24 13:14

Issue creado https://github.com/solop-develop/adempiere-solop/issues/2445

---

### Solop RAG — 2026-03-24 13:15

🔫[ED] #2445 Conciliación: Manejo de monto por Diferencia

---

### Solop RAG — 2026-03-24 13:16

> **✅ Tiempo estimado establecido**
> ⏱️ **Tiempo estimado actualizado:** 1.0 horas
> ✅ Actualizado en GitHub Project (campo 'Estimado')
> 🔗 [Issue #2445](https://github.com/solop-develop/adempiere-solop/issues/2445)

---

### edwinbetanc0urt — 2026-03-24 13:57

Yo quite eso, eran
- C_Charge_ID
- ChargeAmt

---

### Solop RAG — 2026-03-24 13:57

Issue asignado a yamelsenih <@875822077465219193>

---

### Solop RAG — 2026-03-24 13:57

🔫[YS] #2445 Conciliación: Manejo de monto por Diferencia

---

### edwinbetanc0urt — 2026-03-24 14:33

<@372591380729692160>

---

### Solop RAG — 2026-03-24 16:10

Issue asignado a GLescalona <@372591380729692160>

---

### Solop RAG — 2026-03-24 16:10

🔫[GE] #2445 Conciliación: Manejo de monto por Diferencia

---

### yamelsenih — 2026-03-24 16:28

# ¿Qué se debe hacer?
## Cambios de Diccionario
Agregar una columna en la tabla `I_BankStatement` llamada `SimulationChargeAmt`, debe aparecer en la ventana tambien
## Cambios de Aplicación
- Cuando exista una diferencia simplemente se debe establecer la diferencia en la nueva columna `SimulationChargeAmt`.
- Al momento de importar, el valor de esa columna debe establecerse en la columna `C_BankStamentLin.ChargeAmt`
- Si resultaque ya está importado el registro y lo que va a hacer es actualziar los datos entonces simplemente se debe tomar el valor de esa columna y establecerlo en `C_BankStamentLin.ChargeAmt`
- Para todo el contról y demás de match se debe tomar `SimulationChargeAmt` como ya se venía tomando

<@372591380729692160> después de hacer y aplicar los cambios le pasas esto a <@600677127356153886> para que lo haga en el backend

---

### gabriel152413 — 2026-03-24 18:02

<@600677127356153886> pr en backend
https://github.com/solop-develop/adempiere-grpc-server/pull/1625
Pr en migrate 
https://github.com/solop-develop/adempiere-migrate-xml/pull/255

> **add new column SimulationChargeAmt and use that when importing bank...**
> Additional Context
> Ref: https://github.com/solop-develop/adempiere-solop/issues/2445

---

### Solop RAG — 2026-03-24 18:03

> **✅ Tiempo registrado exitosamente**

---

### Solop RAG — 2026-03-24 18:03

Issue asignado a EdwinBetanc0urt <@600677127356153886>

---

### Solop RAG — 2026-03-24 18:03

🔫[ED] #2445 Conciliación: Manejo de monto por Diferencia

---

### gabriel152413 — 2026-03-24 18:03

<@600677127356153886> ya esta los cambios de diccionario y las clases con la nueva columna, te lo dejo para lo que te toca hacer a ti

---

### Solop RAG — 2026-03-24 22:33

Estado del issue cambiado a En Proceso

---

### Solop RAG — 2026-03-24 22:33

🏃 [ED] #2445 Conciliación: Manejo de monto por Diferencia

---

### Solop RAG — 2026-03-24 22:50

Estado del issue cambiado a Por Montar

---

### Solop RAG — 2026-03-24 22:50

🤏 [ED] #2445 Conciliación: Manejo de monto por Diferencia

---

### Solop RAG — 2026-03-24 22:51

> **✅ Tiempo registrado exitosamente**

---

### Solop RAG — 2026-03-25 13:35

Estado del issue cambiado a Por Validar

---

### Solop RAG — 2026-03-25 13:35

✅ [ED] #2445 Conciliación: Manejo de monto por Diferencia

---

### Solop RAG — 2026-03-25 15:58

Estado del issue cambiado a Por Desarrollar

---

### Solop RAG — 2026-03-25 15:58

🔫 [ED] #2445 Conciliación: Manejo de monto por Diferencia

---

### Solop RAG — 2026-03-25 19:52

Issue asignado a GLescalona <@372591380729692160>

---

### Solop RAG — 2026-03-25 19:52

🔫[GE] #2445 Conciliación: Manejo de monto por Diferencia

---

### Solop RAG — 2026-03-25 19:52

⚠️ Issue rechazado (rechazo #1)

---

### Solop RAG — 2026-03-25 19:52

❌ [GE] #2445 Conciliación: Manejo de monto por Diferencia

---

### gabriel152413 — 2026-03-25 20:45

<@600677127356153886> pr en backend, calcula el monto de transaccion de la linea de estado de cuenta si viene desde importacion y tienenmonto simulado de cargo
https://github.com/solop-develop/adempiere-grpc-server/pull/1636

> **Statement Line Calculate Trx Amount from import by GLescalona · Pu...**
> Additional Context
> Ref: https://github.com/solop-develop/adempiere-solop/issues/2445

---

### Solop RAG — 2026-03-25 20:45

> **✅ Tiempo registrado exitosamente**

---

### Solop RAG — 2026-03-25 20:46

Issue asignado a EdwinBetanc0urt <@600677127356153886>

---

### Solop RAG — 2026-03-25 20:46

[ED] #2445 Issue #2445

---

### Solop RAG — 2026-03-25 21:24

Estado del issue cambiado a En Proceso

---

### Solop RAG — 2026-03-25 21:24

🏃 [ED] #2445 Issue #2445

---

### Solop RAG — 2026-03-25 21:25

> **✅ Tiempo registrado exitosamente**

---

### edwinbetanc0urt — 2026-03-27 14:19

🏃 [ED] #2445 Conciliación: Manejo de monto por Diferencia

---

### nicolopezm — 2026-03-27 19:08

hola

---

### nicolopezm — 2026-03-27 19:08

consulta como viene esto?

---

### nicolopezm — 2026-03-27 19:08

veo que está en el Release q estamos cerrando

---

### edwinbetanc0urt — 2026-03-27 19:09

Esto ya estaria listo pero no he logrado hacer el video por la duración

---

### Solop RAG — 2026-03-27 19:09

Estado del issue cambiado a Por Montar

---

### Solop RAG — 2026-03-27 19:09

🤏 [ED] #2445 Conciliación: Manejo de monto por Diferencia

---

### nicolopezm — 2026-03-27 19:09

ok si queres lo hago yo

---

### nicolopezm — 2026-03-27 19:09

pasame algo básico de como es esta funcionalidad nomás

---

### nicolopezm — 2026-03-27 19:09

por qeu te demora tanto?

---

### nicolopezm — 2026-03-27 19:10

yo en estos casos pasé un ejemnplo de como lo valide al otro hilo viste?

---

### nicolopezm — 2026-03-27 19:10

me hice una conciliación chica

---

### nicolopezm — 2026-03-27 19:10

sino es muy dificil

---

### nicolopezm — 2026-03-27 19:10

para entregar esto incluso haría una de una línea sóla

---

### nicolopezm — 2026-03-27 19:10

asi se completa

---

### nicolopezm — 2026-03-27 19:11

en realidad pregunto por que quiero hacer el video de entrega de la funcionalidad completa de conciliación.

---

### nicolopezm — 2026-03-27 19:11

lo puedo hacer el lunes sino igual no hay problema

---

### nicolopezm — 2026-03-27 19:11

pero quería cerrar el release

---

### edwinbetanc0urt — 2026-03-27 19:13

Voy a hacerlo de la laptop de elsio

---

### yamelsenih — 2026-03-29 04:23

Esto parece que tardo más en el video que en el desarrollo 😒  y no tiene que ser sencillo, debe estar bien explicado

---

### yamelsenih — 2026-03-29 04:23

Para poder documentarlo

---

### edwinbetanc0urt — 2026-03-30 14:33

<@875822077465219193>  esto ya esta para pruebas en https://dyd.dev.solopcloud.com/vue/

* `SimulationChargeAmt   =    TrxAmt - PayAmt`
* `ChargeAmt             =    SimulationChargeAmt`
* `TrxAmt                =    StmtAmt - SimulationChargeAmt`


https://www.loom.com/share/a2ba11734d0a4c38a66c66bcd545a46a

> **#2445 Asignación de Estado de Cuenta con diferencia**
> En este video, revisamos el estado del documento 2830 y realizamos una simulación de coincidencia para un pago de menos 18 mil pesos con el número de referencia 76255. Asigné manualmente el monto de 11.000 y verifiqué que ya existía en la cuenta bancaria. Al finalizar la importación, observamos que el estado de cuenta muestra un pago de 11...

---

### Solop RAG — 2026-03-30 14:33

Estado del issue cambiado a Por Validar

---

### Solop RAG — 2026-03-30 14:33

✅ [ED] #2445 Conciliación: Manejo de monto por Diferencia

---

### Solop RAG — 2026-03-30 14:33

Issue asignado a yamelsenih <@875822077465219193>

---

### Solop RAG — 2026-03-30 14:33

✅[YS] #2445 Conciliación: Manejo de monto por Diferencia

---

### edwinbetanc0urt — 2026-03-30 14:34

Adjunto: **2445_Asignacion_de_Estado_de_Cuenta_con_diferencia.srt** (3.3 KB)
---

### edwinbetanc0urt — 2026-03-30 14:47

Code Doc

Adjunto: **2445_Asignacion_de_Estado_de_Cuenta_con_diferencia_-_Code_doc.md** (2.7 KB)
---

### edwinbetanc0urt — 2026-03-30 14:47

QA Steps

Adjunto: **2445_Asignacion_de_Estado_de_Cuenta_con_diferencia_-_QA_Steps.md** (2.9 KB)
---

### edwinbetanc0urt — 2026-03-30 14:47

PR Description

Adjunto: **2445_Asignacion_de_Estado_de_Cuenta_con_diferencia_-_PR_Description.md** (1.7 KB)
---

### edwinbetanc0urt — 2026-03-30 14:47

Bug Report

Adjunto: **2445_Asignacion_de_Estado_de_Cuenta_con_diferencia_-_Bug_Report.md** (1.1 KB)
---

### edwinbetanc0urt — 2026-03-30 14:48

Procedimiento Operativo Estandar

Adjunto: **2445_Asignacion_de_Estado_de_Cuenta_con_diferencia_-_Procedimiento_Operativo_Estandar.md** (3.3 KB)
---

### Solop RAG — 2026-03-30 14:49

> **✅ Tiempo registrado exitosamente**

---

### Solop RAG — 2026-03-30 17:06

> **Exportando hilo...**
> Obteniendo mensajes del hilo...

---
