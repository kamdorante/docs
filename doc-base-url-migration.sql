-- ============================================================
-- DocBaseURL Migration Script
-- Link SoloP ERP dictionary components to documentation URLs
-- Safe to run multiple times (idempotent UPDATEs)
-- ============================================================

-- === AD_Window (126 registros) ===

-- Facturas Conciliadas
UPDATE AD_Window SET DocBaseURL = '/dictionary/purchase-management/reception/matched-invoices' WHERE AD_Window_ID = 107;
-- Cliente
UPDATE AD_Window SET DocBaseURL = '/dictionary/sales-management/sales-management-crm/customer' WHERE AD_Window_ID = 109;
-- Obtener Información de Organización
UPDATE AD_Window SET DocBaseURL = '/dictionary/purchase-management/shopping-management/get-organization-info' WHERE AD_Window_ID = 110;
-- Copiar Entidades con Nueva Moneda
UPDATE AD_Window SET DocBaseURL = '/dictionary/basic-rules/admin-tools/copy-entities-with-new-currency' WHERE AD_Window_ID = 115;
-- Unidad de Medida
UPDATE AD_Window SET DocBaseURL = '/dictionary/material-management/material-rules/unit-of-measure' WHERE AD_Window_ID = 120;
-- Generar Localización de Socio del Negocio
UPDATE AD_Window SET DocBaseURL = '/dictionary/customer-relationship-management/generate-business-partner-localization' WHERE AD_Window_ID = 121;
-- Envío de Email a Socio del Negocio (Morosidad)
UPDATE AD_Window SET DocBaseURL = '/dictionary/balance-management/dunning/email-to-business-partner-dunning' WHERE AD_Window_ID = 123;
-- Copiar Hechos Contables desde Otro Esquema
UPDATE AD_Window SET DocBaseURL = '/dictionary/basic-rules/admin-tools/copy-accounting-fact' WHERE AD_Window_ID = 125;
-- Lote de Pólizas Contables
UPDATE AD_Window SET DocBaseURL = '/dictionary/accounting-management/journal-entries/gl-journal-batch' WHERE AD_Window_ID = 132;
-- Almacen
UPDATE AD_Window SET DocBaseURL = '/dictionary/material-management/material-rules/warehouse' WHERE AD_Window_ID = 139;
-- Producto
UPDATE AD_Window SET DocBaseURL = '/dictionary/material-management/material-rules/product' WHERE AD_Window_ID = 140;
-- Transportista
UPDATE AD_Window SET DocBaseURL = '/dictionary/material-management/material-rules/shipper' WHERE AD_Window_ID = 142;
-- Consulta de Órdenes de Venta
UPDATE AD_Window SET DocBaseURL = '/dictionary/sales-management/sales-orders/browser-sales-order' WHERE AD_Window_ID = 143;
-- Categoria de Producto
UPDATE AD_Window SET DocBaseURL = '/dictionary/material-management/material-rules/product-category' WHERE AD_Window_ID = 144;
-- Lista de Precios
UPDATE AD_Window SET DocBaseURL = '/dictionary/material-management/material-rules/price-list' WHERE AD_Window_ID = 146;
-- Campaña de Mercadeo
UPDATE AD_Window SET DocBaseURL = '/dictionary/sales-management/sales-and-marketing/marketing-campaign' WHERE AD_Window_ID = 149;
-- Canal de Mercadeo
UPDATE AD_Window SET DocBaseURL = '/dictionary/sales-management/sales-and-marketing/marketing-channel' WHERE AD_Window_ID = 150;
-- Región de Ventas
UPDATE AD_Window SET DocBaseURL = '/dictionary/sales-management/sales-and-marketing/sales-region' WHERE AD_Window_ID = 152;
-- Actualizar Saldo de Banco y Estados de Cuenta
UPDATE AD_Window SET DocBaseURL = '/dictionary/balance-management/bank-operations/update-bank-statements-balance' WHERE AD_Window_ID = 158;
-- Corrida de Morosidad
UPDATE AD_Window SET DocBaseURL = '/dictionary/balance-management/dunning/dunning-run' WHERE AD_Window_ID = 159;
-- Documentos por Cobrar
UPDATE AD_Window SET DocBaseURL = '/dictionary/sales-management/sales-invoices/invoice-customer' WHERE AD_Window_ID = 167;
-- Entregas (Cliente)
UPDATE AD_Window SET DocBaseURL = '/dictionary/sales-management/shipments/shipment-customer' WHERE AD_Window_ID = 169;
-- Inventario Perpetuo
UPDATE AD_Window SET DocBaseURL = '/dictionary/material-management/material-rules/perpetual-inventory' WHERE AD_Window_ID = 175;
-- Detalles del Proveedor
UPDATE AD_Window SET DocBaseURL = '/dictionary/material-management/material-rules/vendor-details' WHERE AD_Window_ID = 176;
-- Órdenes de Compra
UPDATE AD_Window SET DocBaseURL = '/dictionary/purchase-management/purchase-orders/purchase-order' WHERE AD_Window_ID = 181;
-- Documentos por Pagar
UPDATE AD_Window SET DocBaseURL = '/dictionary/purchase-management/payable-documents/invoice-vendor' WHERE AD_Window_ID = 183;
-- Recepción de Productos
UPDATE AD_Window SET DocBaseURL = '/dictionary/purchase-management/reception/material-receipt' WHERE AD_Window_ID = 184;
-- Información del Agente Comercial
UPDATE AD_Window SET DocBaseURL = '/dictionary/customer-relationship-management/sales-rep-info' WHERE AD_Window_ID = 187;
-- Estado de Cuenta Bancario
UPDATE AD_Window SET DocBaseURL = '/dictionary/balance-management/bank-operations/bank-statement' WHERE AD_Window_ID = 194;
-- Pago/Cobro
UPDATE AD_Window SET DocBaseURL = '/dictionary/balance-management/payments-and-receipts/payment' WHERE AD_Window_ID = 195;
-- Diario de Caja Chica
UPDATE AD_Window SET DocBaseURL = '/dictionary/balance-management/cash-journal/cash-journal' WHERE AD_Window_ID = 198;
-- Solicitud
UPDATE AD_Window SET DocBaseURL = '/dictionary/customer-relationship-management/request' WHERE AD_Window_ID = 201;
-- Plantilla de Correo
UPDATE AD_Window SET DocBaseURL = '/dictionary/customer-relationship-management/mail-template' WHERE AD_Window_ID = 204;
-- Consulta de Asignación
UPDATE AD_Window SET DocBaseURL = '/dictionary/balance-management/allocation/view-allocation' WHERE AD_Window_ID = 205;
-- Detalle de Selección de Pago
UPDATE AD_Window SET DocBaseURL = '/dictionary/balance-management/payment-selection/payment-selection-detail' WHERE AD_Window_ID = 206;
-- Definición de Comisión
UPDATE AD_Window SET DocBaseURL = '/dictionary/sales-management/sales-and-marketing/commission-definition' WHERE AD_Window_ID = 207;
-- Ejecución de Comisión
UPDATE AD_Window SET DocBaseURL = '/dictionary/sales-management/sales-and-marketing/commission-run' WHERE AD_Window_ID = 223;
-- Conciliación OC-Recepción-Factura
UPDATE AD_Window SET DocBaseURL = '/dictionary/purchase-management/reception/matching-po-receipt-invoice' WHERE AD_Window_ID = 228;
-- Selección de Pago
UPDATE AD_Window SET DocBaseURL = '/dictionary/balance-management/payment-selection/payment-selection' WHERE AD_Window_ID = 233;
-- Activo Fijo
UPDATE AD_Window SET DocBaseURL = '/dictionary/asset-management/asset' WHERE AD_Window_ID = 251;
-- Grupo de Activo Fijo
UPDATE AD_Window SET DocBaseURL = '/dictionary/asset-management/asset-group' WHERE AD_Window_ID = 252;
-- Lote de Facturas
UPDATE AD_Window SET DocBaseURL = '/dictionary/purchase-management/payable-documents/invoice-batch' WHERE AD_Window_ID = 257;
-- Factura de Gastos
UPDATE AD_Window SET DocBaseURL = '/dictionary/purchase-management/payable-documents/expense-invoice' WHERE AD_Window_ID = 262;
-- Tipo de Proyecto
UPDATE AD_Window SET DocBaseURL = '/dictionary/sales-management/projects/project-type' WHERE AD_Window_ID = 265;
-- Programa de Pagos de Facturas
UPDATE AD_Window SET DocBaseURL = '/dictionary/sales-management/sales-invoices/invoice-payment-schedule' WHERE AD_Window_ID = 275;
-- Categoria de Flete
UPDATE AD_Window SET DocBaseURL = '/dictionary/material-management/material-rules/freight-category' WHERE AD_Window_ID = 282;
-- Detalle de Hechos Contables
UPDATE AD_Window SET DocBaseURL = '/dictionary/accounting-management/fact-details/accounting-fact-details-window' WHERE AD_Window_ID = 285;
-- Saldos de Hechos Contables
UPDATE AD_Window SET DocBaseURL = '/dictionary/accounting-management/fact-details/accounting-fact-balances' WHERE AD_Window_ID = 286;
-- Registro de Shopping
UPDATE AD_Window SET DocBaseURL = '/dictionary/purchase-management/shopping-management/shopping-record-log' WHERE AD_Window_ID = 301;
-- Tema de Subasta
UPDATE AD_Window SET DocBaseURL = '/dictionary/sales-management/market-place/bid-topic' WHERE AD_Window_ID = 307;
-- Tipo de Tema de Subasta
UPDATE AD_Window SET DocBaseURL = '/dictionary/sales-management/market-place/auction-topic-type' WHERE AD_Window_ID = 308;
-- Vendedor de la Subasta
UPDATE AD_Window SET DocBaseURL = '/dictionary/sales-management/market-place/auction-seller' WHERE AD_Window_ID = 309;
-- Comprador de la Subasta
UPDATE AD_Window SET DocBaseURL = '/dictionary/sales-management/market-place/auction-buyer' WHERE AD_Window_ID = 310;
-- Tema de Solicitud para Cotización
UPDATE AD_Window SET DocBaseURL = '/dictionary/purchase-management/requisitions/rfq-topic' WHERE AD_Window_ID = 314;
-- Solicitud para Cotización
UPDATE AD_Window SET DocBaseURL = '/dictionary/purchase-management/requisitions/rfq' WHERE AD_Window_ID = 315;
-- Suscripción
UPDATE AD_Window SET DocBaseURL = '/dictionary/sales-management/sales-orders/subscription' WHERE AD_Window_ID = 316;
-- Tipo de Suscripción
UPDATE AD_Window SET DocBaseURL = '/dictionary/sales-management/sales-orders/subscription-type' WHERE AD_Window_ID = 317;
-- ADM de Cliente
UPDATE AD_Window SET DocBaseURL = '/dictionary/return-management/customer-rma' WHERE AD_Window_ID = 320;
-- Requisición
UPDATE AD_Window SET DocBaseURL = '/dictionary/purchase-management/requisitions/requisition' WHERE AD_Window_ID = 322;
-- Solicitud para Cotización (Con Respuesta)
UPDATE AD_Window SET DocBaseURL = '/dictionary/purchase-management/requisitions/rfq-response' WHERE AD_Window_ID = 324;
-- Tipo de ADM
UPDATE AD_Window SET DocBaseURL = '/dictionary/return-management/rma-type' WHERE AD_Window_ID = 331;
-- Esquema de Lista de Precios
UPDATE AD_Window SET DocBaseURL = '/dictionary/material-management/material-rules/price-list-schema' WHERE AD_Window_ID = 337;
-- Posición
UPDATE AD_Window SET DocBaseURL = '/dictionary/human-management/employee/position' WHERE AD_Window_ID = 351;
-- Categoría de Posición
UPDATE AD_Window SET DocBaseURL = '/dictionary/human-management/employee/position-category' WHERE AD_Window_ID = 352;
-- Plantilla de Notificación por Evento
UPDATE AD_Window SET DocBaseURL = '/dictionary/customer-relationship-management/event-notice-template' WHERE AD_Window_ID = 374;
-- Orden de Distribución
UPDATE AD_Window SET DocBaseURL = '/dictionary/distribution-management/distribution-order' WHERE AD_Window_ID = 53012;
-- Red de Distribución
UPDATE AD_Window SET DocBaseURL = '/dictionary/distribution-management/distribution-network' WHERE AD_Window_ID = 53018;
-- Tipo de Impuesto Electrónico
UPDATE AD_Window SET DocBaseURL = '/dictionary/electronic-billing/electronic-tax-type' WHERE AD_Window_ID = 53035;
-- Flujo de Efectivo
UPDATE AD_Window SET DocBaseURL = '/dictionary/financial-management/cash-flow/cash-flow' WHERE AD_Window_ID = 53072;
-- Generar Picking y Entregas desde Orden de Salida
UPDATE AD_Window SET DocBaseURL = '/dictionary/distribution-management/outbound-order-lines-to-pick-and-ship' WHERE AD_Window_ID = 53090;
-- Devolución a Proveedor
UPDATE AD_Window SET DocBaseURL = '/dictionary/return-management/return-to-vendor' WHERE AD_Window_ID = 53098;
-- ADM de Proveedor
UPDATE AD_Window SET DocBaseURL = '/dictionary/return-management/vendor-rma' WHERE AD_Window_ID = 53099;
-- Origen de la Orden
UPDATE AD_Window SET DocBaseURL = '/dictionary/sales-management/sales-orders/order-source' WHERE AD_Window_ID = 53101;
-- Lote de Pagos
UPDATE AD_Window SET DocBaseURL = '/dictionary/balance-management/payment-selection/payment-batch' WHERE AD_Window_ID = 53102;
-- Factura (Retención)
UPDATE AD_Window SET DocBaseURL = '/dictionary/purchase-management/payable-documents/invoice-withholding' WHERE AD_Window_ID = 53104;
-- Prospecto
UPDATE AD_Window SET DocBaseURL = '/dictionary/sales-management/sales-management-crm/lead' WHERE AD_Window_ID = 53105;
-- Panel del Agente Comercial
UPDATE AD_Window SET DocBaseURL = '/dictionary/sales-management/sales-management-crm/sales-rep-dashboard' WHERE AD_Window_ID = 53106;
-- Etapa de Venta
UPDATE AD_Window SET DocBaseURL = '/dictionary/sales-management/sales-management-crm/sales-stage' WHERE AD_Window_ID = 53107;
-- Contacto
UPDATE AD_Window SET DocBaseURL = '/dictionary/sales-management/sales-management-crm/contact' WHERE AD_Window_ID = 53152;
-- Oportunidad de Venta
UPDATE AD_Window SET DocBaseURL = '/dictionary/sales-management/sales-management-crm/sales-opportunity' WHERE AD_Window_ID = 53155;
-- Clasificacion de Producto
UPDATE AD_Window SET DocBaseURL = '/dictionary/material-management/material-rules/product-classification' WHERE AD_Window_ID = 53176;
-- Clase de Producto
UPDATE AD_Window SET DocBaseURL = '/dictionary/material-management/material-rules/product-class' WHERE AD_Window_ID = 53177;
-- Grupo de Producto
UPDATE AD_Window SET DocBaseURL = '/dictionary/material-management/material-rules/product-group' WHERE AD_Window_ID = 53178;
-- Grupo de Comisión
UPDATE AD_Window SET DocBaseURL = '/dictionary/sales-management/sales-and-marketing/commission-group' WHERE AD_Window_ID = 53502;
-- Grupo de Proyecto
UPDATE AD_Window SET DocBaseURL = '/dictionary/sales-management/projects/project-group' WHERE AD_Window_ID = 53542;
-- Clase de Proyecto
UPDATE AD_Window SET DocBaseURL = '/dictionary/sales-management/projects/project-class' WHERE AD_Window_ID = 53543;
-- Categoría de Proyecto
UPDATE AD_Window SET DocBaseURL = '/dictionary/sales-management/projects/project-category' WHERE AD_Window_ID = 53544;
-- Proyectos
UPDATE AD_Window SET DocBaseURL = '/dictionary/sales-management/projects/project' WHERE AD_Window_ID = 53545;
-- Categoría del Status de Proyecto
UPDATE AD_Window SET DocBaseURL = '/dictionary/sales-management/projects/project-status-category' WHERE AD_Window_ID = 53546;
-- Tipo de Miembro de Proyecto
UPDATE AD_Window SET DocBaseURL = '/dictionary/sales-management/projects/project-member-type' WHERE AD_Window_ID = 53559;
-- Acuerdo Financiero
UPDATE AD_Window SET DocBaseURL = '/dictionary/financial-management/investments/financial-agreement' WHERE AD_Window_ID = 53573;
-- Cuenta Financiera
UPDATE AD_Window SET DocBaseURL = '/dictionary/financial-management/investments/financial-account' WHERE AD_Window_ID = 53576;
-- Lote de Transacción Financiera
UPDATE AD_Window SET DocBaseURL = '/dictionary/financial-management/investments/financial-transaction-batch' WHERE AD_Window_ID = 53577;
-- Transacción Financiera
UPDATE AD_Window SET DocBaseURL = '/dictionary/financial-management/investments/financial-transaction' WHERE AD_Window_ID = 53578;
-- Préstamo
UPDATE AD_Window SET DocBaseURL = '/dictionary/financial-management/investments/financial-loan' WHERE AD_Window_ID = 53580;
-- Información del Proyecto
UPDATE AD_Window SET DocBaseURL = '/dictionary/sales-management/projects/project-info' WHERE AD_Window_ID = 53590;
-- Tipo de Comisión
UPDATE AD_Window SET DocBaseURL = '/dictionary/sales-management/sales-and-marketing/commission-type' WHERE AD_Window_ID = 53656;
-- Definición de Retenciones
UPDATE AD_Window SET DocBaseURL = '/dictionary/financial-management/withholding/withholding-definition' WHERE AD_Window_ID = 53671;
-- Retención Generada
UPDATE AD_Window SET DocBaseURL = '/dictionary/financial-management/withholding/withholding-allocation' WHERE AD_Window_ID = 53672;
-- Tipo de Retención
UPDATE AD_Window SET DocBaseURL = '/dictionary/financial-management/withholding/withholding-type' WHERE AD_Window_ID = 53673;
-- Log de Retención
UPDATE AD_Window SET DocBaseURL = '/dictionary/financial-management/withholding/withholding-log' WHERE AD_Window_ID = 53675;
-- Orden de Devolución (Cliente)
UPDATE AD_Window SET DocBaseURL = '/dictionary/sales-management/sales-orders/return-material-order-customer' WHERE AD_Window_ID = 53695;
-- Devolución de Cliente
UPDATE AD_Window SET DocBaseURL = '/dictionary/return-management/customer-return' WHERE AD_Window_ID = 53696;
-- Emisor Fiscal
UPDATE AD_Window SET DocBaseURL = '/dictionary/electronic-billing/fiscal-sender' WHERE AD_Window_ID = 53816;
-- Tipo de Transacción Fiscal
UPDATE AD_Window SET DocBaseURL = '/dictionary/electronic-billing/fiscal-transaction-type' WHERE AD_Window_ID = 53817;
-- Bitácora de Documento Electrónico
UPDATE AD_Window SET DocBaseURL = '/dictionary/electronic-billing/electronic-document-log' WHERE AD_Window_ID = 53818;
-- Retenciones por Pagar
UPDATE AD_Window SET DocBaseURL = '/dictionary/financial-management/withholding/withholding-vendor' WHERE AD_Window_ID = 53824;
-- Retenciones por Cobrar
UPDATE AD_Window SET DocBaseURL = '/dictionary/financial-management/withholding/withholding-customer' WHERE AD_Window_ID = 53825;
-- Cruce de Facturas
UPDATE AD_Window SET DocBaseURL = '/dictionary/electronic-billing/invoice-matcher' WHERE AD_Window_ID = 53835;
-- Categoría de Shopping
UPDATE AD_Window SET DocBaseURL = '/dictionary/purchase-management/shopping-management/shopping-category' WHERE AD_Window_ID = 53837;
-- Definicion de Conteo Personalizado
UPDATE AD_Window SET DocBaseURL = '/dictionary/material-management/custom-count-definition' WHERE AD_Window_ID = 53842;
-- Configuración de Entrega Directa
UPDATE AD_Window SET DocBaseURL = '/dictionary/purchase-management/purchase-orders/drop-ship-setup' WHERE AD_Window_ID = 53844;
-- Reservas de Productos
UPDATE AD_Window SET DocBaseURL = '/dictionary/material-management/product-reservations' WHERE AD_Window_ID = 53860;
-- Instantanea de Almacenamiento
UPDATE AD_Window SET DocBaseURL = '/dictionary/material-management/storage-snapshot' WHERE AD_Window_ID = 53861;
-- Lote de Procesador de Pagos
UPDATE AD_Window SET DocBaseURL = '/dictionary/balance-management/payments-and-receipts/payment-processor-batch' WHERE AD_Window_ID = 53863;
-- Configuración de Lote de Procesador de Pago
UPDATE AD_Window SET DocBaseURL = '/dictionary/balance-management/payments-and-receipts/payment-processor-batch-configuration' WHERE AD_Window_ID = 53864;
-- Tarjeta
UPDATE AD_Window SET DocBaseURL = '/dictionary/balance-management/payments-and-receipts/card' WHERE AD_Window_ID = 53865;
-- Proveedor de Tarjeta
UPDATE AD_Window SET DocBaseURL = '/dictionary/balance-management/payments-and-receipts/card-provider' WHERE AD_Window_ID = 53866;
-- Tipo de Etiqueta
UPDATE AD_Window SET DocBaseURL = '/dictionary/basic-rules/tags/tag-type' WHERE AD_Window_ID = 53867;
-- Etiquetas
UPDATE AD_Window SET DocBaseURL = '/dictionary/basic-rules/tags/tags' WHERE AD_Window_ID = 53868;
-- Presupuesto de Proyecto
UPDATE AD_Window SET DocBaseURL = '/dictionary/sales-management/projects/project-budget' WHERE AD_Window_ID = 2000065;
-- Bandeja CFE
UPDATE AD_Window SET DocBaseURL = '/dictionary/sales-management/sales-invoices/invoice-import' WHERE AD_Window_ID = 2000068;
-- Facturación Masiva
UPDATE AD_Window SET DocBaseURL = '/dictionary/sales-management/sales-invoices/invoice-generate' WHERE AD_Window_ID = 2000070;
-- Selección de Pago Personalizada
UPDATE AD_Window SET DocBaseURL = '/dictionary/balance-management/payment-selection/payment-selection-custom' WHERE AD_Window_ID = 2000077;
-- Orden de Trabajo
UPDATE AD_Window SET DocBaseURL = '/dictionary/sales-management/projects/work-order' WHERE AD_Window_ID = 2000079;
-- Definición de Calendario de Facturación
UPDATE AD_Window SET DocBaseURL = '/dictionary/sales-management/sales-orders/invoice-schedule-definition' WHERE AD_Window_ID = 2000087;

-- === AD_Process (101 registros) ===

-- Generar Facturas (Lote)
UPDATE AD_Process SET DocBaseURL = '/dictionary/sales-management/sales-invoices/generate-invoices-manual' WHERE AD_Process_ID = 119;
-- Órdenes Abiertas
UPDATE AD_Process SET DocBaseURL = '/dictionary/sales-management/sales-orders/open-orders' WHERE AD_Process_ID = 121;
-- Facturación Diaria
UPDATE AD_Process SET DocBaseURL = '/dictionary/sales-management/invoice-inquiry/daily-invoice' WHERE AD_Process_ID = 128;
-- Facturación Mensual por Proveedor
UPDATE AD_Process SET DocBaseURL = '/dictionary/sales-management/invoice-inquiry/monthly-invoice-vendor' WHERE AD_Process_ID = 129;
-- Facturación Semanal
UPDATE AD_Process SET DocBaseURL = '/dictionary/sales-management/invoice-inquiry/weekly-invoice' WHERE AD_Process_ID = 130;
-- Pagos sin Conciliar
UPDATE AD_Process SET DocBaseURL = '/dictionary/balance-management/bank-operations/unreconciled-payments' WHERE AD_Process_ID = 146;
-- Asignación de Pago
UPDATE AD_Process SET DocBaseURL = '/dictionary/balance-management/allocation/allocation-report' WHERE AD_Process_ID = 148;
-- Imprimir/Exportar Pagos
UPDATE AD_Process SET DocBaseURL = '/dictionary/balance-management/payment-selection/payment-print-export' WHERE AD_Process_ID = 156;
-- Detalle de Diario de Caja
UPDATE AD_Process SET DocBaseURL = '/dictionary/balance-management/cash-journal/cash-journal-detail' WHERE AD_Process_ID = 170;
-- Dar de Baja Cuentas por Cobrar
UPDATE AD_Process SET DocBaseURL = '/dictionary/balance-management/allocation/receivables-write-off' WHERE AD_Process_ID = 171;
-- Orden de Venta
UPDATE AD_Process SET DocBaseURL = '/dictionary/sales-management/sales-orders/sales-order' WHERE AD_Process_ID = 186;
-- Generar OC desde Orden de Venta
UPDATE AD_Process SET DocBaseURL = '/dictionary/sales-management/sales-orders/generate-po-from-sales-order' WHERE AD_Process_ID = 193;
-- Imprimir Facturas
UPDATE AD_Process SET DocBaseURL = '/dictionary/sales-management/sales-invoices/print-invoices' WHERE AD_Process_ID = 200;
-- Reporte de Estado de Cuenta Bancario
UPDATE AD_Process SET DocBaseURL = '/dictionary/balance-management/bank-operations/bank-statement-report' WHERE AD_Process_ID = 204;
-- Enviar Texto de Correo
UPDATE AD_Process SET DocBaseURL = '/dictionary/customer-relationship-management/send-mail-text' WHERE AD_Process_ID = 209;
-- Convertir Cotización
UPDATE AD_Process SET DocBaseURL = '/dictionary/sales-management/sales-orders/quote-convert' WHERE AD_Process_ID = 231;
-- Recalcular Precio de Orden/Factura
UPDATE AD_Process SET DocBaseURL = '/dictionary/sales-management/sales-orders/reprice-order-invoice' WHERE AD_Process_ID = 232;
-- Organizacion de Almacen
UPDATE AD_Process SET DocBaseURL = '/dictionary/material-management/material-rules/warehouse-organization' WHERE AD_Process_ID = 244;
-- Organizacion de Producto
UPDATE AD_Process SET DocBaseURL = '/dictionary/material-management/material-rules/product-organization' WHERE AD_Process_ID = 245;
-- Impuesto de Documento por Pagar
UPDATE AD_Process SET DocBaseURL = '/dictionary/balance-management/payments-and-receipts/invoice-tax' WHERE AD_Process_ID = 251;
-- Reporte de Detalle de Hechos Contables
UPDATE AD_Process SET DocBaseURL = '/dictionary/accounting-management/fact-details/accounting-fact-details-report' WHERE AD_Process_ID = 252;
-- Hechos Contables Diarios
UPDATE AD_Process SET DocBaseURL = '/dictionary/accounting-management/fact-details/accounting-fact-daily' WHERE AD_Process_ID = 253;
-- Hechos Contables por Período
UPDATE AD_Process SET DocBaseURL = '/dictionary/accounting-management/fact-details/accounting-fact-period' WHERE AD_Process_ID = 254;
-- Reabrir Orden
UPDATE AD_Process SET DocBaseURL = '/dictionary/sales-management/sales-orders/reopen-order' WHERE AD_Process_ID = 255;
-- SpC sin Respuesta
UPDATE AD_Process SET DocBaseURL = '/dictionary/purchase-management/requisitions/rfq-unanswered' WHERE AD_Process_ID = 263;
-- Respuesta SpC (Reporte)
UPDATE AD_Process SET DocBaseURL = '/dictionary/purchase-management/requisitions/rfq-response-report' WHERE AD_Process_ID = 264;
-- Requisiciones Abiertas
UPDATE AD_Process SET DocBaseURL = '/dictionary/purchase-management/requisitions/open-requisitions' WHERE AD_Process_ID = 270;
-- Crear Cálculo de Morosidad
UPDATE AD_Process SET DocBaseURL = '/dictionary/balance-management/dunning/create-dunning-calculation' WHERE AD_Process_ID = 289;
-- Detalle de Entregas
UPDATE AD_Process SET DocBaseURL = '/dictionary/sales-management/shipments/shipment-details' WHERE AD_Process_ID = 294;
-- Asignación (Automática)
UPDATE AD_Process SET DocBaseURL = '/dictionary/balance-management/allocation/auto-allocation' WHERE AD_Process_ID = 302;
-- Asignación (Restaurar)
UPDATE AD_Process SET DocBaseURL = '/dictionary/balance-management/allocation/reset-allocation' WHERE AD_Process_ID = 303;
-- Imprimir Carta de Morosidad
UPDATE AD_Process SET DocBaseURL = '/dictionary/balance-management/dunning/print-dunning-letters' WHERE AD_Process_ID = 312;
-- Procesar Órdenes
UPDATE AD_Process SET DocBaseURL = '/dictionary/sales-management/sales-orders/process-orders' WHERE AD_Process_ID = 315;
-- Facturas sin Asignar
UPDATE AD_Process SET DocBaseURL = '/dictionary/balance-management/allocation/unallocated-invoices' WHERE AD_Process_ID = 316;
-- Pagos sin Asignar
UPDATE AD_Process SET DocBaseURL = '/dictionary/balance-management/allocation/unallocated-payments' WHERE AD_Process_ID = 317;
-- Detalles del Pago
UPDATE AD_Process SET DocBaseURL = '/dictionary/balance-management/payments-and-receipts/payment-details' WHERE AD_Process_ID = 318;
-- Crear OC desde Requisición
UPDATE AD_Process SET DocBaseURL = '/dictionary/purchase-management/requisitions/create-po-from-requisition' WHERE AD_Process_ID = 337;
-- Facturación Trimestral por Producto
UPDATE AD_Process SET DocBaseURL = '/dictionary/sales-management/invoice-inquiry/quarter-invoice-product' WHERE AD_Process_ID = 341;
-- Generar Movimiento
UPDATE AD_Process SET DocBaseURL = '/dictionary/distribution-management/generate-movement' WHERE AD_Process_ID = 53046;
-- Ejecución de Órdenes de Distribución
UPDATE AD_Process SET DocBaseURL = '/dictionary/distribution-management/distribution-run-orders' WHERE AD_Process_ID = 53150;
-- Detalle de Orden de Distribución
UPDATE AD_Process SET DocBaseURL = '/dictionary/distribution-management/distribution-order-detail' WHERE AD_Process_ID = 53151;
-- Transferencia Bancaria Inmediata
UPDATE AD_Process SET DocBaseURL = '/dictionary/balance-management/bank-operations/immediate-bank-transfer' WHERE AD_Process_ID = 53152;
-- Transferencia Bancaria
UPDATE AD_Process SET DocBaseURL = '/dictionary/balance-management/bank-operations/bank-transfer' WHERE AD_Process_ID = 53153;
-- Detalle de Flujo de Efectivo
UPDATE AD_Process SET DocBaseURL = '/dictionary/financial-management/cash-flow/review-cashflow' WHERE AD_Process_ID = 53165;
-- Transacciones de Órdenes
UPDATE AD_Process SET DocBaseURL = '/dictionary/sales-management/sales-orders/order-transactions' WHERE AD_Process_ID = 53176;
-- Conciliación Automática de Cuentas
UPDATE AD_Process SET DocBaseURL = '/dictionary/accounting-management/reconciliation/automatic-account-reconciliation' WHERE AD_Process_ID = 53221;
-- Genera Factura desde Embarques
UPDATE AD_Process SET DocBaseURL = '/dictionary/sales-management/sales-invoices/generate-invoices-from-shipments' WHERE AD_Process_ID = 53345;
-- Cierre de Ejercicio
UPDATE AD_Process SET DocBaseURL = '/dictionary/accounting-management/processes/fiscal-year-end' WHERE AD_Process_ID = 54043;
-- Generar Retención
UPDATE AD_Process SET DocBaseURL = '/dictionary/financial-management/withholding/withholding-generate' WHERE AD_Process_ID = 54243;
-- Procesar Retenciones
UPDATE AD_Process SET DocBaseURL = '/dictionary/financial-management/withholding/withholding-process' WHERE AD_Process_ID = 54293;
-- Enviar Retenciones
UPDATE AD_Process SET DocBaseURL = '/dictionary/financial-management/withholding/withholding-send' WHERE AD_Process_ID = 54362;
-- Reporte de Detalle de Consignación
UPDATE AD_Process SET DocBaseURL = '/dictionary/purchase-management/reception/consignment-detail-report' WHERE AD_Process_ID = 54532;
-- Copiar Organización
UPDATE AD_Process SET DocBaseURL = '/dictionary/basic-rules/admin-tools/copy-organization' WHERE AD_Process_ID = 54541;
-- Crear Esquema Contable Desde
UPDATE AD_Process SET DocBaseURL = '/dictionary/basic-rules/admin-tools/accounting-schema-create-from' WHERE AD_Process_ID = 54544;
-- Copiar Formato de Impresión con Conversión
UPDATE AD_Process SET DocBaseURL = '/dictionary/basic-rules/admin-tools/copy-print-format' WHERE AD_Process_ID = 54549;
-- Proceso de Mantenimiento de Almacenamiento
UPDATE AD_Process SET DocBaseURL = '/dictionary/basic-rules/admin-tools/storage-maintaining' WHERE AD_Process_ID = 54619;
-- Recalcular Precio Límite de Facturas de Venta
UPDATE AD_Process SET DocBaseURL = '/dictionary/basic-rules/admin-tools/recalculate-price-limit' WHERE AD_Process_ID = 54623;
-- Lista de Precios por Proveedor
UPDATE AD_Process SET DocBaseURL = '/dictionary/material-management/product-reports/product-price-list-by-vendor' WHERE AD_Process_ID = 54654;
-- Etiquetas para Productos
UPDATE AD_Process SET DocBaseURL = '/dictionary/material-management/product-reports/product-labels' WHERE AD_Process_ID = 54673;
-- Inventario Analitico
UPDATE AD_Process SET DocBaseURL = '/dictionary/material-management/product-reports/analytical-inventory' WHERE AD_Process_ID = 54700;
-- Detalle de Transacciones (Analitico)
UPDATE AD_Process SET DocBaseURL = '/dictionary/material-management/product-reports/analytical-inventory-transaction' WHERE AD_Process_ID = 54701;
-- Análisis de Solicitud para Cotización
UPDATE AD_Process SET DocBaseURL = '/dictionary/purchase-management/requisitions/rfq-analysis' WHERE AD_Process_ID = 54702;
-- Actualizar Descripción de Combinación Válida
UPDATE AD_Process SET DocBaseURL = '/dictionary/basic-rules/admin-tools/update-description-valid-combination' WHERE AD_Process_ID = 54703;
-- Almacenamiento por Proveedor
UPDATE AD_Process SET DocBaseURL = '/dictionary/material-management/product-reports/storage-per-vendor-report' WHERE AD_Process_ID = 54777;
-- Enviar Factura al Emisor Fiscal
UPDATE AD_Process SET DocBaseURL = '/dictionary/electronic-billing/send-invoice-to-fiscal-sender' WHERE AD_Process_ID = 54779;
-- Imprimir Recibo de Factura
UPDATE AD_Process SET DocBaseURL = '/dictionary/electronic-billing/print-invoice-receipt' WHERE AD_Process_ID = 54785;
-- Exportar Ventas a Shoppings
UPDATE AD_Process SET DocBaseURL = '/dictionary/purchase-management/shopping-management/export-sales-to-shoppings' WHERE AD_Process_ID = 54790;
-- Obtener Facturas Electrónicas
UPDATE AD_Process SET DocBaseURL = '/dictionary/electronic-billing/get-electronic-invoices' WHERE AD_Process_ID = 54814;
-- Generar Retenciones (Reporte)
UPDATE AD_Process SET DocBaseURL = '/dictionary/financial-management/withholding/generate-withholding-report' WHERE AD_Process_ID = 54867;
-- Actualizar Almacenamiento
UPDATE AD_Process SET DocBaseURL = '/dictionary/material-management/update-storage' WHERE AD_Process_ID = 54868;
-- Cierre de Lote de Procesador de Pagos
UPDATE AD_Process SET DocBaseURL = '/dictionary/balance-management/payments-and-receipts/processor-batch-closing' WHERE AD_Process_ID = 54869;
-- Generar Cobros de Facturas de Procesador de Pagos
UPDATE AD_Process SET DocBaseURL = '/dictionary/balance-management/payments-and-receipts/generate-payments-for-processor-batch-invoices' WHERE AD_Process_ID = 54870;
-- Reporte Lote de Procesador de Pagos
UPDATE AD_Process SET DocBaseURL = '/dictionary/balance-management/payments-and-receipts/payment-processor-batch-payment-report' WHERE AD_Process_ID = 54871;
-- Enviar Entrega al Proveedor Fiscal
UPDATE AD_Process SET DocBaseURL = '/dictionary/electronic-billing/send-shipment-to-fiscal-provider' WHERE AD_Process_ID = 54875;
-- Imprimir Recibo de Entrega
UPDATE AD_Process SET DocBaseURL = '/dictionary/electronic-billing/print-shipment-receipt' WHERE AD_Process_ID = 54877;
-- Transferencia Bancaria Multimoneda
UPDATE AD_Process SET DocBaseURL = '/dictionary/balance-management/bank-operations/multi-currency-bank-transfer' WHERE AD_Process_ID = 2000030;
-- Cancelar Folio de Cheque
UPDATE AD_Process SET DocBaseURL = '/dictionary/balance-management/bank-operations/cancel-folio-check' WHERE AD_Process_ID = 2000057;
-- Asignación (Automática con Exclusión)
UPDATE AD_Process SET DocBaseURL = '/dictionary/balance-management/allocation/auto-allocation-with-exclusion' WHERE AD_Process_ID = 2000123;
-- Verificación de Cuentas Puente
UPDATE AD_Process SET DocBaseURL = '/dictionary/accounting-management/fact-details/bridge-account-verification' WHERE AD_Process_ID = 2000152;
-- Rendimiento de Proyecto
UPDATE AD_Process SET DocBaseURL = '/dictionary/sales-management/projects/project-performance' WHERE AD_Process_ID = 2000160;
-- Detalle de Avance de Proyecto
UPDATE AD_Process SET DocBaseURL = '/dictionary/sales-management/projects/project-advance-detail' WHERE AD_Process_ID = 2000198;
-- Entregas por Grupo de Producto
UPDATE AD_Process SET DocBaseURL = '/dictionary/sales-management/invoice-inquiry/entregas-por-grupo-de-producto' WHERE AD_Process_ID = 2000200;
-- Asignación Masiva Factura-Recepción
UPDATE AD_Process SET DocBaseURL = '/dictionary/purchase-management/reception/massive-invoice-receipt-assignment' WHERE AD_Process_ID = 2000231;
-- Saldo Bancario
UPDATE AD_Process SET DocBaseURL = '/dictionary/balance-management/bank-operations/bank-balance' WHERE AD_Process_ID = 2000237;
-- Detalle de Órdenes
UPDATE AD_Process SET DocBaseURL = '/dictionary/sales-management/sales-orders/order-detail' WHERE AD_Process_ID = 2000240;
-- Transacciones de Factura (Cont.)
UPDATE AD_Process SET DocBaseURL = '/dictionary/sales-management/invoice-inquiry/invoice-transactions-acct' WHERE AD_Process_ID = 2000241;
-- Transacciones de Factura (Doc.)
UPDATE AD_Process SET DocBaseURL = '/dictionary/sales-management/invoice-inquiry/invoice-transactions-doc' WHERE AD_Process_ID = 2000242;
-- Detalle de Recepción de Material
UPDATE AD_Process SET DocBaseURL = '/dictionary/purchase-management/reception/material-receipt-details' WHERE AD_Process_ID = 2000243;
-- Detalle de Factura y Margen
UPDATE AD_Process SET DocBaseURL = '/dictionary/sales-management/invoice-inquiry/invoice-detail-margin' WHERE AD_Process_ID = 2000244;
-- Detalle de Ejecución de Comisión
UPDATE AD_Process SET DocBaseURL = '/dictionary/sales-management/sales-and-marketing/commission-run-detail' WHERE AD_Process_ID = 2000245;
-- Ejecución de Comisión (Resumen)
UPDATE AD_Process SET DocBaseURL = '/dictionary/sales-management/sales-and-marketing/commission-run-summary' WHERE AD_Process_ID = 2000246;
-- Estado de Cuenta Corriente
UPDATE AD_Process SET DocBaseURL = '/dictionary/balance-management/payments-and-receipts/account-status' WHERE AD_Process_ID = 2000247;
-- Facturación Mensual
UPDATE AD_Process SET DocBaseURL = '/dictionary/sales-management/invoice-inquiry/monthly-invoice' WHERE AD_Process_ID = 2000248;
-- Facturación Mensual por Categoría de Producto
UPDATE AD_Process SET DocBaseURL = '/dictionary/sales-management/invoice-inquiry/monthly-invoice-prod-cat' WHERE AD_Process_ID = 2000249;
-- Facturación Mensual por Producto
UPDATE AD_Process SET DocBaseURL = '/dictionary/sales-management/invoice-inquiry/monthly-invoice-product' WHERE AD_Process_ID = 2000250;
-- Facturación Trimestral por Cliente y Producto
UPDATE AD_Process SET DocBaseURL = '/dictionary/sales-management/invoice-inquiry/quarterly-invoice-customer-by-product' WHERE AD_Process_ID = 2000251;
-- Facturación Trimestral por Cliente y Proveedor
UPDATE AD_Process SET DocBaseURL = '/dictionary/sales-management/invoice-inquiry/quarterly-invoice-customer-by-vendor' WHERE AD_Process_ID = 2000252;
-- Facturación Semanal por Categoría de Producto
UPDATE AD_Process SET DocBaseURL = '/dictionary/sales-management/invoice-inquiry/weekly-invoice-prod-cat' WHERE AD_Process_ID = 2000253;
-- Hechos Contables sin Conciliar
UPDATE AD_Process SET DocBaseURL = '/dictionary/accounting-management/reconciliation/unreconciled-accounting-facts' WHERE AD_Process_ID = 2000256;
-- Asignación de Pagos Masiva
UPDATE AD_Process SET DocBaseURL = '/dictionary/balance-management/allocation/massive-allocation' WHERE AD_Process_ID = 2000258;
-- Completar Facturas de Compra Intercompañía
UPDATE AD_Process SET DocBaseURL = '/dictionary/purchase-management/reception/complete-intercompany-invoices' WHERE AD_Process_ID = 2000264;

-- === AD_Browse (33 registros) ===

-- Aprobación de Requisición de Material
UPDATE AD_Browse SET DocBaseURL = '/dictionary/purchase-management/requisitions/approval-material-requisition' WHERE AD_Browse_ID = 50008;
-- Browser Facturas por Pagar
UPDATE AD_Browse SET DocBaseURL = '/dictionary/purchase-management/payable-documents/browser-ap-invoice' WHERE AD_Browse_ID = 50013;
-- Consulta de Órdenes de Compra
UPDATE AD_Browse SET DocBaseURL = '/dictionary/purchase-management/purchase-orders/browser-purchase-order' WHERE AD_Browse_ID = 50063;
-- Generar Selección de Pago (Desde Factura)
UPDATE AD_Browse SET DocBaseURL = '/dictionary/balance-management/payment-selection/generate-payment-selection-from-invoice' WHERE AD_Browse_ID = 50064;
-- Generar Entregas desde Línea de Orden
UPDATE AD_Browse SET DocBaseURL = '/dictionary/sales-management/shipments/generate-shipment-from-order-lines' WHERE AD_Browse_ID = 50079;
-- Generar Selección de Pago (Desde Préstamo)
UPDATE AD_Browse SET DocBaseURL = '/dictionary/financial-management/investments/browser-generate-payment-selection-from-loan' WHERE AD_Browse_ID = 50118;
-- Generar Factura (Desde Préstamo)
UPDATE AD_Browse SET DocBaseURL = '/dictionary/financial-management/investments/browser-generate-invoice-from-loan' WHERE AD_Browse_ID = 50119;
-- Generar Pago (Desde Factura Cliente)
UPDATE AD_Browse SET DocBaseURL = '/dictionary/balance-management/payment-selection/generate-payment-from-invoice-customer' WHERE AD_Browse_ID = 50121;
-- Consulta de Activos Fijos
UPDATE AD_Browse SET DocBaseURL = '/dictionary/asset-management/fixed-assets-browser' WHERE AD_Browse_ID = 50122;
-- Generar Factura (Pago Total de Préstamo)
UPDATE AD_Browse SET DocBaseURL = '/dictionary/financial-management/investments/browser-generate-invoice-from-loan-prepayment' WHERE AD_Browse_ID = 50131;
-- Crear OC desde Líneas de Requisición
UPDATE AD_Browse SET DocBaseURL = '/dictionary/purchase-management/requisitions/browser-requisition-create-po' WHERE AD_Browse_ID = 50137;
-- Crear desde Requisición
UPDATE AD_Browse SET DocBaseURL = '/dictionary/purchase-management/requisitions/browser-requisition' WHERE AD_Browse_ID = 50179;
-- Generar Factura desde Orden de Salida
UPDATE AD_Browse SET DocBaseURL = '/dictionary/sales-management/sales-invoices/generate-invoice-from-outbound-order' WHERE AD_Browse_ID = 50180;
-- Generar Retenciones
UPDATE AD_Browse SET DocBaseURL = '/dictionary/financial-management/withholding/browser-generate-withholding' WHERE AD_Browse_ID = 50181;
-- Generar Declaracion de Retenciones
UPDATE AD_Browse SET DocBaseURL = '/dictionary/financial-management/withholding/browser-generate-withholding-declaration' WHERE AD_Browse_ID = 50184;
-- Enviar Retenciones
UPDATE AD_Browse SET DocBaseURL = '/dictionary/financial-management/withholding/browser-generate-withholding-send' WHERE AD_Browse_ID = 50207;
-- Generar Facturas desde Órdenes
UPDATE AD_Browse SET DocBaseURL = '/dictionary/sales-management/sales-invoices/generate-invoices-from-sales-orders' WHERE AD_Browse_ID = 50233;
-- Aplicar Costo de Desembarque al Producto PDV
UPDATE AD_Browse SET DocBaseURL = '/dictionary/purchase-management/reception/apply-landed-cost' WHERE AD_Browse_ID = 50257;
-- Generar Orden de Distribucion desde Ordenes de Venta
UPDATE AD_Browse SET DocBaseURL = '/dictionary/material-management/generate-distribution-order-from-sales-orders' WHERE AD_Browse_ID = 50264;
-- Generar Movimiento de Inventario desde Orden de Salida
UPDATE AD_Browse SET DocBaseURL = '/dictionary/distribution-management/generate-inventory-move-from-outbound-order' WHERE AD_Browse_ID = 50286;
-- Reabastecimiento de Productos
UPDATE AD_Browse SET DocBaseURL = '/dictionary/material-management/product-replenishment' WHERE AD_Browse_ID = 50296;
-- Conciliación de Hechos Contables (Manual)
UPDATE AD_Browse SET DocBaseURL = '/dictionary/accounting-management/reconciliation/accounting-fact-reconciliation-manual' WHERE AD_Browse_ID = 50308;
-- Crear Factura de Venta en Consignación
UPDATE AD_Browse SET DocBaseURL = '/dictionary/sales-management/sales-invoices/create-consignment-sales-invoice' WHERE AD_Browse_ID = 50309;
-- Generar Factura desde Línea de Orden
UPDATE AD_Browse SET DocBaseURL = '/dictionary/sales-management/sales-invoices/generate-invoice-from-order-lines' WHERE AD_Browse_ID = 90002;
-- Generar OC desde Líneas de OV
UPDATE AD_Browse SET DocBaseURL = '/dictionary/sales-management/sales-orders/generate-po-from-so-line' WHERE AD_Browse_ID = 1000013;
-- Generar Factura desde Concepto
UPDATE AD_Browse SET DocBaseURL = '/dictionary/sales-management/sales-invoices/generate-invoice-from-contract' WHERE AD_Browse_ID = 2000011;
-- Generar Cobros desde Orden de Salida
UPDATE AD_Browse SET DocBaseURL = '/dictionary/distribution-management/generate-payment-from-outbound-order' WHERE AD_Browse_ID = 2000029;
-- Generar Orden desde Proyecto
UPDATE AD_Browse SET DocBaseURL = '/dictionary/sales-management/sales-orders/generate-order-from-project' WHERE AD_Browse_ID = 2000033;
-- Navegador de Proyectos
UPDATE AD_Browse SET DocBaseURL = '/dictionary/sales-management/projects/project-browser' WHERE AD_Browse_ID = 2000035;
-- Navegador de Líneas de Proyectos
UPDATE AD_Browse SET DocBaseURL = '/dictionary/sales-management/projects/project-lines-browser' WHERE AD_Browse_ID = 2000037;
-- Cancelar y Reemplazar OC
UPDATE AD_Browse SET DocBaseURL = '/dictionary/purchase-management/purchase-orders/cancel-and-replace-po' WHERE AD_Browse_ID = 2000047;
-- Generar Factura desde Cuotas de Orden
UPDATE AD_Browse SET DocBaseURL = '/dictionary/sales-management/sales-invoices/generate-invoice-from-order-invoice-schedule' WHERE AD_Browse_ID = 2000057;
-- Generar Facturas desde Líneas de Orden con Agrupación
UPDATE AD_Browse SET DocBaseURL = '/dictionary/sales-management/sales-invoices/generate-invoice-from-order-line-with-grouping' WHERE AD_Browse_ID = 2000058;

-- === AD_Workflow (3 registros) ===

-- Configuración de Ventas
UPDATE AD_Workflow SET DocBaseURL = '/dictionary/sales-management/sales-and-marketing/sales-setup' WHERE AD_Workflow_ID = 111;
-- Configuración de Manufactura
UPDATE AD_Workflow SET DocBaseURL = '/dictionary/production-management/manufacturing-setup' WHERE AD_Workflow_ID = 50000;
-- Configuración de Distribución
UPDATE AD_Workflow SET DocBaseURL = '/dictionary/distribution-management/distribution-management-setup' WHERE AD_Workflow_ID = 50010;

-- === AD_Menu (249 registros) ===

-- Copiar Entidades con Nueva Moneda
UPDATE AD_Menu SET DocBaseURL = '/dictionary/basic-rules/admin-tools/copy-entities-with-new-currency' WHERE AD_Menu_ID = 102;
-- Unidad de Medida
UPDATE AD_Menu SET DocBaseURL = '/dictionary/material-management/material-rules/unit-of-measure' WHERE AD_Menu_ID = 107;
-- Generar Localización de Socio del Negocio
UPDATE AD_Menu SET DocBaseURL = '/dictionary/customer-relationship-management/generate-business-partner-localization' WHERE AD_Menu_ID = 108;
-- Envío de Email a Socio del Negocio (Morosidad)
UPDATE AD_Menu SET DocBaseURL = '/dictionary/balance-management/dunning/email-to-business-partner-dunning' WHERE AD_Menu_ID = 110;
-- Copiar Hechos Contables desde Otro Esquema
UPDATE AD_Menu SET DocBaseURL = '/dictionary/basic-rules/admin-tools/copy-accounting-fact' WHERE AD_Menu_ID = 111;
-- Lote de Pólizas Contables
UPDATE AD_Menu SET DocBaseURL = '/dictionary/accounting-management/journal-entries/gl-journal-batch' WHERE AD_Menu_ID = 118;
-- Almacen
UPDATE AD_Menu SET DocBaseURL = '/dictionary/material-management/material-rules/warehouse' WHERE AD_Menu_ID = 125;
-- Producto
UPDATE AD_Menu SET DocBaseURL = '/dictionary/material-management/material-rules/product' WHERE AD_Menu_ID = 126;
-- Transportista
UPDATE AD_Menu SET DocBaseURL = '/dictionary/material-management/material-rules/shipper' WHERE AD_Menu_ID = 128;
-- Consulta de Órdenes de Venta
UPDATE AD_Menu SET DocBaseURL = '/dictionary/sales-management/sales-orders/browser-sales-order' WHERE AD_Menu_ID = 129;
-- Categoria de Producto
UPDATE AD_Menu SET DocBaseURL = '/dictionary/material-management/material-rules/product-category' WHERE AD_Menu_ID = 130;
-- Lista de Precios
UPDATE AD_Menu SET DocBaseURL = '/dictionary/material-management/material-rules/price-list' WHERE AD_Menu_ID = 132;
-- Campaña de Mercadeo
UPDATE AD_Menu SET DocBaseURL = '/dictionary/sales-management/sales-and-marketing/marketing-campaign' WHERE AD_Menu_ID = 134;
-- Canal de Mercadeo
UPDATE AD_Menu SET DocBaseURL = '/dictionary/sales-management/sales-and-marketing/marketing-channel' WHERE AD_Menu_ID = 136;
-- Región de Ventas
UPDATE AD_Menu SET DocBaseURL = '/dictionary/sales-management/sales-and-marketing/sales-region' WHERE AD_Menu_ID = 137;
-- Cliente
UPDATE AD_Menu SET DocBaseURL = '/dictionary/sales-management/sales-management-crm/customer' WHERE AD_Menu_ID = 148;
-- Obtener Información de Organización
UPDATE AD_Menu SET DocBaseURL = '/dictionary/purchase-management/shopping-management/get-organization-info' WHERE AD_Menu_ID = 149;
-- Actualizar Saldo de Banco y Estados de Cuenta
UPDATE AD_Menu SET DocBaseURL = '/dictionary/balance-management/bank-operations/update-bank-statements-balance' WHERE AD_Menu_ID = 171;
-- Corrida de Morosidad
UPDATE AD_Menu SET DocBaseURL = '/dictionary/balance-management/dunning/dunning-run' WHERE AD_Menu_ID = 172;
-- Facturas Conciliadas
UPDATE AD_Menu SET DocBaseURL = '/dictionary/purchase-management/reception/matched-invoices' WHERE AD_Menu_ID = 174;
-- Documentos por Cobrar
UPDATE AD_Menu SET DocBaseURL = '/dictionary/sales-management/sales-invoices/invoice-customer' WHERE AD_Menu_ID = 178;
-- Entregas (Cliente)
UPDATE AD_Menu SET DocBaseURL = '/dictionary/sales-management/shipments/shipment-customer' WHERE AD_Menu_ID = 180;
-- Inventario Perpetuo
UPDATE AD_Menu SET DocBaseURL = '/dictionary/material-management/material-rules/perpetual-inventory' WHERE AD_Menu_ID = 187;
-- Detalles del Proveedor
UPDATE AD_Menu SET DocBaseURL = '/dictionary/material-management/material-rules/vendor-details' WHERE AD_Menu_ID = 188;
-- Generar Facturas (Lote)
UPDATE AD_Menu SET DocBaseURL = '/dictionary/sales-management/sales-invoices/generate-invoices-manual' WHERE AD_Menu_ID = 192;
-- Órdenes Abiertas
UPDATE AD_Menu SET DocBaseURL = '/dictionary/sales-management/sales-orders/open-orders' WHERE AD_Menu_ID = 195;
-- Recepción de Productos
UPDATE AD_Menu SET DocBaseURL = '/dictionary/purchase-management/reception/material-receipt' WHERE AD_Menu_ID = 204;
-- Órdenes de Compra
UPDATE AD_Menu SET DocBaseURL = '/dictionary/purchase-management/purchase-orders/purchase-order' WHERE AD_Menu_ID = 205;
-- Documentos por Pagar
UPDATE AD_Menu SET DocBaseURL = '/dictionary/purchase-management/payable-documents/invoice-vendor' WHERE AD_Menu_ID = 206;
-- Facturación Diaria
UPDATE AD_Menu SET DocBaseURL = '/dictionary/sales-management/invoice-inquiry/daily-invoice' WHERE AD_Menu_ID = 210;
-- Facturación Mensual por Proveedor
UPDATE AD_Menu SET DocBaseURL = '/dictionary/sales-management/invoice-inquiry/monthly-invoice-vendor' WHERE AD_Menu_ID = 211;
-- Facturación Semanal
UPDATE AD_Menu SET DocBaseURL = '/dictionary/sales-management/invoice-inquiry/weekly-invoice' WHERE AD_Menu_ID = 215;
-- Información del Agente Comercial
UPDATE AD_Menu SET DocBaseURL = '/dictionary/customer-relationship-management/sales-rep-info' WHERE AD_Menu_ID = 216;
-- Estado de Cuenta Bancario
UPDATE AD_Menu SET DocBaseURL = '/dictionary/balance-management/bank-operations/bank-statement' WHERE AD_Menu_ID = 234;
-- Pago/Cobro
UPDATE AD_Menu SET DocBaseURL = '/dictionary/balance-management/payments-and-receipts/payment' WHERE AD_Menu_ID = 235;
-- Solicitud
UPDATE AD_Menu SET DocBaseURL = '/dictionary/customer-relationship-management/request' WHERE AD_Menu_ID = 237;
-- Plantilla de Correo
UPDATE AD_Menu SET DocBaseURL = '/dictionary/customer-relationship-management/mail-template' WHERE AD_Menu_ID = 238;
-- Diario de Caja Chica
UPDATE AD_Menu SET DocBaseURL = '/dictionary/balance-management/cash-journal/cash-journal' WHERE AD_Menu_ID = 241;
-- Pagos sin Conciliar
UPDATE AD_Menu SET DocBaseURL = '/dictionary/balance-management/bank-operations/unreconciled-payments' WHERE AD_Menu_ID = 244;
-- Asignación de Pagos
UPDATE AD_Menu SET DocBaseURL = '/dictionary/balance-management/allocation/payment-allocation' WHERE AD_Menu_ID = 245;
-- Asignación de Pago
UPDATE AD_Menu SET DocBaseURL = '/dictionary/balance-management/allocation/allocation-report' WHERE AD_Menu_ID = 246;
-- Consulta de Asignación
UPDATE AD_Menu SET DocBaseURL = '/dictionary/balance-management/allocation/view-allocation' WHERE AD_Menu_ID = 251;
-- Detalle de Selección de Pago
UPDATE AD_Menu SET DocBaseURL = '/dictionary/balance-management/payment-selection/payment-selection-detail' WHERE AD_Menu_ID = 255;
-- Definición de Comisión
UPDATE AD_Menu SET DocBaseURL = '/dictionary/sales-management/sales-and-marketing/commission-definition' WHERE AD_Menu_ID = 257;
-- Configuración de Ventas
UPDATE AD_Menu SET DocBaseURL = '/dictionary/sales-management/sales-and-marketing/sales-setup' WHERE AD_Menu_ID = 269;
-- Ejecución de Comisión
UPDATE AD_Menu SET DocBaseURL = '/dictionary/sales-management/sales-and-marketing/commission-run' WHERE AD_Menu_ID = 287;
-- Detalle de Diario de Caja
UPDATE AD_Menu SET DocBaseURL = '/dictionary/balance-management/cash-journal/cash-journal-detail' WHERE AD_Menu_ID = 288;
-- Ejecución de Comisión
UPDATE AD_Menu SET DocBaseURL = '/dictionary/sales-management/sales-and-marketing/commission-run' WHERE AD_Menu_ID = 292;
-- Conciliación OC-Recepción-Factura
UPDATE AD_Menu SET DocBaseURL = '/dictionary/purchase-management/reception/matching-po-receipt-invoice' WHERE AD_Menu_ID = 300;
-- Dar de Baja Cuentas por Cobrar
UPDATE AD_Menu SET DocBaseURL = '/dictionary/balance-management/allocation/receivables-write-off' WHERE AD_Menu_ID = 304;
-- Selección de Pago
UPDATE AD_Menu SET DocBaseURL = '/dictionary/balance-management/payment-selection/payment-selection' WHERE AD_Menu_ID = 310;
-- Facturas Conciliadas
UPDATE AD_Menu SET DocBaseURL = '/dictionary/purchase-management/reception/matched-invoices' WHERE AD_Menu_ID = 315;
-- Conciliación OC-Recepción-Factura
UPDATE AD_Menu SET DocBaseURL = '/dictionary/purchase-management/reception/matching-po-receipt-invoice' WHERE AD_Menu_ID = 316;
-- Orden de Venta
UPDATE AD_Menu SET DocBaseURL = '/dictionary/sales-management/sales-orders/sales-order' WHERE AD_Menu_ID = 328;
-- Generar OC desde Orden de Venta
UPDATE AD_Menu SET DocBaseURL = '/dictionary/sales-management/sales-orders/generate-po-from-sales-order' WHERE AD_Menu_ID = 335;
-- Activo Fijo
UPDATE AD_Menu SET DocBaseURL = '/dictionary/asset-management/asset' WHERE AD_Menu_ID = 342;
-- Grupo de Activo Fijo
UPDATE AD_Menu SET DocBaseURL = '/dictionary/asset-management/asset-group' WHERE AD_Menu_ID = 343;
-- Generar Entregas (Manual)
UPDATE AD_Menu SET DocBaseURL = '/dictionary/sales-management/shipments/generate-shipments-manual' WHERE AD_Menu_ID = 346;
-- Imprimir Facturas
UPDATE AD_Menu SET DocBaseURL = '/dictionary/sales-management/sales-invoices/print-invoices' WHERE AD_Menu_ID = 347;
-- Reporte de Estado de Cuenta Bancario
UPDATE AD_Menu SET DocBaseURL = '/dictionary/balance-management/bank-operations/bank-statement-report' WHERE AD_Menu_ID = 350;
-- Lote de Facturas
UPDATE AD_Menu SET DocBaseURL = '/dictionary/purchase-management/payable-documents/invoice-batch' WHERE AD_Menu_ID = 356;
-- Factura de Gastos
UPDATE AD_Menu SET DocBaseURL = '/dictionary/purchase-management/payable-documents/expense-invoice' WHERE AD_Menu_ID = 360;
-- Tipo de Proyecto
UPDATE AD_Menu SET DocBaseURL = '/dictionary/sales-management/projects/project-type' WHERE AD_Menu_ID = 364;
-- SpC sin Respuesta
UPDATE AD_Menu SET DocBaseURL = '/dictionary/purchase-management/requisitions/rfq-unanswered' WHERE AD_Menu_ID = 374;
-- Programa de Pagos de Facturas
UPDATE AD_Menu SET DocBaseURL = '/dictionary/sales-management/sales-invoices/invoice-payment-schedule' WHERE AD_Menu_ID = 377;
-- Categoria de Flete
UPDATE AD_Menu SET DocBaseURL = '/dictionary/material-management/material-rules/freight-category' WHERE AD_Menu_ID = 381;
-- Detalle de Hechos Contables
UPDATE AD_Menu SET DocBaseURL = '/dictionary/accounting-management/fact-details/accounting-fact-details-window' WHERE AD_Menu_ID = 386;
-- Saldos de Hechos Contables
UPDATE AD_Menu SET DocBaseURL = '/dictionary/accounting-management/fact-details/accounting-fact-balances' WHERE AD_Menu_ID = 387;
-- Enviar Texto de Correo
UPDATE AD_Menu SET DocBaseURL = '/dictionary/customer-relationship-management/send-mail-text' WHERE AD_Menu_ID = 396;
-- Recalcular Precio de Orden/Factura
UPDATE AD_Menu SET DocBaseURL = '/dictionary/sales-management/sales-orders/reprice-order-invoice' WHERE AD_Menu_ID = 406;
-- Convertir Cotización
UPDATE AD_Menu SET DocBaseURL = '/dictionary/sales-management/sales-orders/quote-convert' WHERE AD_Menu_ID = 407;
-- Hechos Contables Diarios
UPDATE AD_Menu SET DocBaseURL = '/dictionary/accounting-management/fact-details/accounting-fact-daily' WHERE AD_Menu_ID = 408;
-- Detalle de Hechos Contables
UPDATE AD_Menu SET DocBaseURL = '/dictionary/accounting-management/fact-details/accounting-fact-details-window' WHERE AD_Menu_ID = 409;
-- Saldos de Hechos Contables
UPDATE AD_Menu SET DocBaseURL = '/dictionary/accounting-management/fact-details/accounting-fact-balances' WHERE AD_Menu_ID = 410;
-- Hechos Contables por Período
UPDATE AD_Menu SET DocBaseURL = '/dictionary/accounting-management/fact-details/accounting-fact-period' WHERE AD_Menu_ID = 411;
-- Organizacion de Producto
UPDATE AD_Menu SET DocBaseURL = '/dictionary/material-management/material-rules/product-organization' WHERE AD_Menu_ID = 421;
-- Organizacion de Almacen
UPDATE AD_Menu SET DocBaseURL = '/dictionary/material-management/material-rules/warehouse-organization' WHERE AD_Menu_ID = 422;
-- Registro de Shopping
UPDATE AD_Menu SET DocBaseURL = '/dictionary/purchase-management/shopping-management/shopping-record-log' WHERE AD_Menu_ID = 431;
-- Impuesto de Documento por Pagar
UPDATE AD_Menu SET DocBaseURL = '/dictionary/balance-management/payments-and-receipts/invoice-tax' WHERE AD_Menu_ID = 432;
-- Reporte de Detalle de Hechos Contables
UPDATE AD_Menu SET DocBaseURL = '/dictionary/accounting-management/fact-details/accounting-fact-details-report' WHERE AD_Menu_ID = 433;
-- Hechos Contables Diarios
UPDATE AD_Menu SET DocBaseURL = '/dictionary/accounting-management/fact-details/accounting-fact-daily' WHERE AD_Menu_ID = 434;
-- Hechos Contables por Período
UPDATE AD_Menu SET DocBaseURL = '/dictionary/accounting-management/fact-details/accounting-fact-period' WHERE AD_Menu_ID = 435;
-- Reabrir Orden
UPDATE AD_Menu SET DocBaseURL = '/dictionary/sales-management/sales-orders/reopen-order' WHERE AD_Menu_ID = 436;
-- Comprador de la Subasta
UPDATE AD_Menu SET DocBaseURL = '/dictionary/sales-management/market-place/auction-buyer' WHERE AD_Menu_ID = 442;
-- Vendedor de la Subasta
UPDATE AD_Menu SET DocBaseURL = '/dictionary/sales-management/market-place/auction-seller' WHERE AD_Menu_ID = 443;
-- Tema de Subasta
UPDATE AD_Menu SET DocBaseURL = '/dictionary/sales-management/market-place/bid-topic' WHERE AD_Menu_ID = 447;
-- Tipo de Suscripción
UPDATE AD_Menu SET DocBaseURL = '/dictionary/sales-management/sales-orders/subscription-type' WHERE AD_Menu_ID = 448;
-- Suscripción
UPDATE AD_Menu SET DocBaseURL = '/dictionary/sales-management/sales-orders/subscription' WHERE AD_Menu_ID = 449;
-- Tema de Solicitud para Cotización
UPDATE AD_Menu SET DocBaseURL = '/dictionary/purchase-management/requisitions/rfq-topic' WHERE AD_Menu_ID = 452;
-- Tipo de Tema de Subasta
UPDATE AD_Menu SET DocBaseURL = '/dictionary/sales-management/market-place/auction-topic-type' WHERE AD_Menu_ID = 453;
-- Solicitud para Cotización
UPDATE AD_Menu SET DocBaseURL = '/dictionary/purchase-management/requisitions/rfq' WHERE AD_Menu_ID = 454;
-- ADM de Cliente
UPDATE AD_Menu SET DocBaseURL = '/dictionary/return-management/customer-rma' WHERE AD_Menu_ID = 455;
-- Tipo de ADM
UPDATE AD_Menu SET DocBaseURL = '/dictionary/return-management/rma-type' WHERE AD_Menu_ID = 463;
-- Solicitud para Cotización (Con Respuesta)
UPDATE AD_Menu SET DocBaseURL = '/dictionary/purchase-management/requisitions/rfq-response' WHERE AD_Menu_ID = 466;
-- Respuesta SpC (Reporte)
UPDATE AD_Menu SET DocBaseURL = '/dictionary/purchase-management/requisitions/rfq-response-report' WHERE AD_Menu_ID = 467;
-- SpC sin Respuesta
UPDATE AD_Menu SET DocBaseURL = '/dictionary/purchase-management/requisitions/rfq-unanswered' WHERE AD_Menu_ID = 468;
-- Requisiciones Abiertas
UPDATE AD_Menu SET DocBaseURL = '/dictionary/purchase-management/requisitions/open-requisitions' WHERE AD_Menu_ID = 471;
-- Tipo de ADM
UPDATE AD_Menu SET DocBaseURL = '/dictionary/return-management/rma-type' WHERE AD_Menu_ID = 480;
-- Esquema de Lista de Precios
UPDATE AD_Menu SET DocBaseURL = '/dictionary/material-management/material-rules/price-list-schema' WHERE AD_Menu_ID = 490;
-- Detalle de Entregas
UPDATE AD_Menu SET DocBaseURL = '/dictionary/sales-management/shipments/shipment-details' WHERE AD_Menu_ID = 494;
-- Asignación (Restaurar)
UPDATE AD_Menu SET DocBaseURL = '/dictionary/balance-management/allocation/reset-allocation' WHERE AD_Menu_ID = 496;
-- Asignación (Automática)
UPDATE AD_Menu SET DocBaseURL = '/dictionary/balance-management/allocation/auto-allocation' WHERE AD_Menu_ID = 497;
-- Imprimir Carta de Morosidad
UPDATE AD_Menu SET DocBaseURL = '/dictionary/balance-management/dunning/print-dunning-letters' WHERE AD_Menu_ID = 505;
-- Procesar Órdenes
UPDATE AD_Menu SET DocBaseURL = '/dictionary/sales-management/sales-orders/process-orders' WHERE AD_Menu_ID = 507;
-- Facturas sin Asignar
UPDATE AD_Menu SET DocBaseURL = '/dictionary/balance-management/allocation/unallocated-invoices' WHERE AD_Menu_ID = 509;
-- Pagos sin Asignar
UPDATE AD_Menu SET DocBaseURL = '/dictionary/balance-management/allocation/unallocated-payments' WHERE AD_Menu_ID = 510;
-- Detalles del Pago
UPDATE AD_Menu SET DocBaseURL = '/dictionary/balance-management/payments-and-receipts/payment-details' WHERE AD_Menu_ID = 511;
-- Posición
UPDATE AD_Menu SET DocBaseURL = '/dictionary/human-management/employee/position' WHERE AD_Menu_ID = 530;
-- Categoría de Posición
UPDATE AD_Menu SET DocBaseURL = '/dictionary/human-management/employee/position-category' WHERE AD_Menu_ID = 531;
-- Crear OC desde Requisición
UPDATE AD_Menu SET DocBaseURL = '/dictionary/purchase-management/requisitions/create-po-from-requisition' WHERE AD_Menu_ID = 549;
-- Facturación Trimestral por Producto
UPDATE AD_Menu SET DocBaseURL = '/dictionary/sales-management/invoice-inquiry/quarter-invoice-product' WHERE AD_Menu_ID = 553;
-- Plantilla de Notificación por Evento
UPDATE AD_Menu SET DocBaseURL = '/dictionary/customer-relationship-management/event-notice-template' WHERE AD_Menu_ID = 570;
-- Configuración de Manufactura
UPDATE AD_Menu SET DocBaseURL = '/dictionary/production-management/manufacturing-setup' WHERE AD_Menu_ID = 53015;
-- Configuración de Distribución
UPDATE AD_Menu SET DocBaseURL = '/dictionary/distribution-management/distribution-management-setup' WHERE AD_Menu_ID = 53067;
-- Orden de Distribución
UPDATE AD_Menu SET DocBaseURL = '/dictionary/distribution-management/distribution-order' WHERE AD_Menu_ID = 53068;
-- Generar Movimiento
UPDATE AD_Menu SET DocBaseURL = '/dictionary/distribution-management/generate-movement' WHERE AD_Menu_ID = 53070;
-- Red de Distribución
UPDATE AD_Menu SET DocBaseURL = '/dictionary/distribution-management/distribution-network' WHERE AD_Menu_ID = 53088;
-- Tipo de Impuesto Electrónico
UPDATE AD_Menu SET DocBaseURL = '/dictionary/electronic-billing/electronic-tax-type' WHERE AD_Menu_ID = 53113;
-- Generar Entregas y Facturas (Manual)
UPDATE AD_Menu SET DocBaseURL = '/dictionary/sales-management/shipments/generate-shipments-invoices-manual' WHERE AD_Menu_ID = 53132;
-- ADM de Proveedor
UPDATE AD_Menu SET DocBaseURL = '/dictionary/return-management/vendor-rma' WHERE AD_Menu_ID = 53161;
-- Ejecución de Órdenes de Distribución
UPDATE AD_Menu SET DocBaseURL = '/dictionary/distribution-management/distribution-run-orders' WHERE AD_Menu_ID = 53184;
-- Detalle de Orden de Distribución
UPDATE AD_Menu SET DocBaseURL = '/dictionary/distribution-management/distribution-order-detail' WHERE AD_Menu_ID = 53185;
-- Transferencia Bancaria Inmediata
UPDATE AD_Menu SET DocBaseURL = '/dictionary/balance-management/bank-operations/immediate-bank-transfer' WHERE AD_Menu_ID = 53187;
-- Transferencia Bancaria
UPDATE AD_Menu SET DocBaseURL = '/dictionary/balance-management/bank-operations/bank-transfer' WHERE AD_Menu_ID = 53190;
-- Detalle de Flujo de Efectivo
UPDATE AD_Menu SET DocBaseURL = '/dictionary/financial-management/cash-flow/review-cashflow' WHERE AD_Menu_ID = 53208;
-- Flujo de Efectivo
UPDATE AD_Menu SET DocBaseURL = '/dictionary/financial-management/cash-flow/cash-flow' WHERE AD_Menu_ID = 53209;
-- Transacciones de Órdenes
UPDATE AD_Menu SET DocBaseURL = '/dictionary/sales-management/sales-orders/order-transactions' WHERE AD_Menu_ID = 53223;
-- Generar Picking y Entregas desde Orden de Salida
UPDATE AD_Menu SET DocBaseURL = '/dictionary/distribution-management/outbound-order-lines-to-pick-and-ship' WHERE AD_Menu_ID = 53231;
-- ADM de Proveedor
UPDATE AD_Menu SET DocBaseURL = '/dictionary/return-management/vendor-rma' WHERE AD_Menu_ID = 53244;
-- Devolución a Proveedor
UPDATE AD_Menu SET DocBaseURL = '/dictionary/return-management/return-to-vendor' WHERE AD_Menu_ID = 53245;
-- Origen de la Orden
UPDATE AD_Menu SET DocBaseURL = '/dictionary/sales-management/sales-orders/order-source' WHERE AD_Menu_ID = 53249;
-- Lote de Pagos
UPDATE AD_Menu SET DocBaseURL = '/dictionary/balance-management/payment-selection/payment-batch' WHERE AD_Menu_ID = 53251;
-- Factura (Retención)
UPDATE AD_Menu SET DocBaseURL = '/dictionary/purchase-management/payable-documents/invoice-withholding' WHERE AD_Menu_ID = 53256;
-- Conciliación Automática de Cuentas
UPDATE AD_Menu SET DocBaseURL = '/dictionary/accounting-management/reconciliation/automatic-account-reconciliation' WHERE AD_Menu_ID = 53288;
-- Contacto
UPDATE AD_Menu SET DocBaseURL = '/dictionary/sales-management/sales-management-crm/contact' WHERE AD_Menu_ID = 53358;
-- Oportunidad de Venta
UPDATE AD_Menu SET DocBaseURL = '/dictionary/sales-management/sales-management-crm/sales-opportunity' WHERE AD_Menu_ID = 53361;
-- Prospecto
UPDATE AD_Menu SET DocBaseURL = '/dictionary/sales-management/sales-management-crm/lead' WHERE AD_Menu_ID = 53363;
-- Campaña de Mercadeo
UPDATE AD_Menu SET DocBaseURL = '/dictionary/sales-management/sales-and-marketing/marketing-campaign' WHERE AD_Menu_ID = 53364;
-- Clasificacion de Producto
UPDATE AD_Menu SET DocBaseURL = '/dictionary/material-management/material-rules/product-classification' WHERE AD_Menu_ID = 53416;
-- Clase de Producto
UPDATE AD_Menu SET DocBaseURL = '/dictionary/material-management/material-rules/product-class' WHERE AD_Menu_ID = 53417;
-- Grupo de Producto
UPDATE AD_Menu SET DocBaseURL = '/dictionary/material-management/material-rules/product-group' WHERE AD_Menu_ID = 53418;
-- Aprobación de Requisición de Material
UPDATE AD_Menu SET DocBaseURL = '/dictionary/purchase-management/requisitions/approval-material-requisition' WHERE AD_Menu_ID = 53452;
-- Genera Facturas desde Embarques (Manual)
UPDATE AD_Menu SET DocBaseURL = '/dictionary/sales-management/sales-invoices/generate-invoices-from-shipments-manual' WHERE AD_Menu_ID = 53474;
-- Genera Factura desde Embarques
UPDATE AD_Menu SET DocBaseURL = '/dictionary/sales-management/sales-invoices/generate-invoices-from-shipments' WHERE AD_Menu_ID = 53475;
-- Consulta de Órdenes de Compra
UPDATE AD_Menu SET DocBaseURL = '/dictionary/purchase-management/purchase-orders/browser-purchase-order' WHERE AD_Menu_ID = 54093;
-- Consulta de Órdenes de Compra
UPDATE AD_Menu SET DocBaseURL = '/dictionary/purchase-management/purchase-orders/browser-purchase-order' WHERE AD_Menu_ID = 54094;
-- Browser Facturas por Pagar
UPDATE AD_Menu SET DocBaseURL = '/dictionary/purchase-management/payable-documents/browser-ap-invoice' WHERE AD_Menu_ID = 54095;
-- Browser Facturas por Pagar
UPDATE AD_Menu SET DocBaseURL = '/dictionary/purchase-management/payable-documents/browser-ap-invoice' WHERE AD_Menu_ID = 54096;
-- Generar Selección de Pago (Desde Factura)
UPDATE AD_Menu SET DocBaseURL = '/dictionary/balance-management/payment-selection/generate-payment-selection-from-invoice' WHERE AD_Menu_ID = 54102;
-- Generar Entregas desde Línea de Orden
UPDATE AD_Menu SET DocBaseURL = '/dictionary/sales-management/shipments/generate-shipment-from-order-lines' WHERE AD_Menu_ID = 54138;
-- Generar Factura desde Línea de Orden
UPDATE AD_Menu SET DocBaseURL = '/dictionary/sales-management/sales-invoices/generate-invoice-from-order-lines' WHERE AD_Menu_ID = 54139;
-- Grupo de Comisión
UPDATE AD_Menu SET DocBaseURL = '/dictionary/sales-management/sales-and-marketing/commission-group' WHERE AD_Menu_ID = 54140;
-- Grupo de Proyecto
UPDATE AD_Menu SET DocBaseURL = '/dictionary/sales-management/projects/project-group' WHERE AD_Menu_ID = 54204;
-- Clase de Proyecto
UPDATE AD_Menu SET DocBaseURL = '/dictionary/sales-management/projects/project-class' WHERE AD_Menu_ID = 54205;
-- Categoría de Proyecto
UPDATE AD_Menu SET DocBaseURL = '/dictionary/sales-management/projects/project-category' WHERE AD_Menu_ID = 54206;
-- Proyectos
UPDATE AD_Menu SET DocBaseURL = '/dictionary/sales-management/projects/project' WHERE AD_Menu_ID = 54207;
-- Categoría del Status de Proyecto
UPDATE AD_Menu SET DocBaseURL = '/dictionary/sales-management/projects/project-status-category' WHERE AD_Menu_ID = 54209;
-- Crear Cálculo de Morosidad
UPDATE AD_Menu SET DocBaseURL = '/dictionary/balance-management/dunning/create-dunning-calculation' WHERE AD_Menu_ID = 54230;
-- Tipo de Miembro de Proyecto
UPDATE AD_Menu SET DocBaseURL = '/dictionary/sales-management/projects/project-member-type' WHERE AD_Menu_ID = 54238;
-- Cierre de Ejercicio
UPDATE AD_Menu SET DocBaseURL = '/dictionary/accounting-management/processes/fiscal-year-end' WHERE AD_Menu_ID = 54257;
-- Acuerdo Financiero
UPDATE AD_Menu SET DocBaseURL = '/dictionary/financial-management/investments/financial-agreement' WHERE AD_Menu_ID = 54263;
-- Cuenta Financiera
UPDATE AD_Menu SET DocBaseURL = '/dictionary/financial-management/investments/financial-account' WHERE AD_Menu_ID = 54266;
-- Lote de Transacción Financiera
UPDATE AD_Menu SET DocBaseURL = '/dictionary/financial-management/investments/financial-transaction-batch' WHERE AD_Menu_ID = 54267;
-- Transacción Financiera
UPDATE AD_Menu SET DocBaseURL = '/dictionary/financial-management/investments/financial-transaction' WHERE AD_Menu_ID = 54268;
-- Préstamo
UPDATE AD_Menu SET DocBaseURL = '/dictionary/financial-management/investments/financial-loan' WHERE AD_Menu_ID = 54273;
-- Generar Selección de Pago (Desde Préstamo)
UPDATE AD_Menu SET DocBaseURL = '/dictionary/financial-management/investments/browser-generate-payment-selection-from-loan' WHERE AD_Menu_ID = 54278;
-- Generar Factura (Desde Préstamo)
UPDATE AD_Menu SET DocBaseURL = '/dictionary/financial-management/investments/browser-generate-invoice-from-loan' WHERE AD_Menu_ID = 54280;
-- Generar Pago (Desde Factura Cliente)
UPDATE AD_Menu SET DocBaseURL = '/dictionary/balance-management/payment-selection/generate-payment-from-invoice-customer' WHERE AD_Menu_ID = 54281;
-- Información del Proyecto
UPDATE AD_Menu SET DocBaseURL = '/dictionary/sales-management/projects/project-info' WHERE AD_Menu_ID = 54291;
-- Consulta de Activos Fijos
UPDATE AD_Menu SET DocBaseURL = '/dictionary/asset-management/fixed-assets-browser' WHERE AD_Menu_ID = 54292;
-- Generar Factura (Pago Total de Préstamo)
UPDATE AD_Menu SET DocBaseURL = '/dictionary/financial-management/investments/browser-generate-invoice-from-loan-prepayment' WHERE AD_Menu_ID = 54304;
-- Conciliación de Estado de Cuenta
UPDATE AD_Menu SET DocBaseURL = '/dictionary/balance-management/bank-operations/bank-statement-match' WHERE AD_Menu_ID = 54311;
-- Aprobación de Requisición de Material
UPDATE AD_Menu SET DocBaseURL = '/dictionary/purchase-management/requisitions/approval-material-requisition' WHERE AD_Menu_ID = 54341;
-- Crear OC desde Líneas de Requisición
UPDATE AD_Menu SET DocBaseURL = '/dictionary/purchase-management/requisitions/browser-requisition-create-po' WHERE AD_Menu_ID = 54342;
-- Tipo de Comisión
UPDATE AD_Menu SET DocBaseURL = '/dictionary/sales-management/sales-and-marketing/commission-type' WHERE AD_Menu_ID = 54426;
-- Definición de Retenciones
UPDATE AD_Menu SET DocBaseURL = '/dictionary/financial-management/withholding/withholding-definition' WHERE AD_Menu_ID = 54466;
-- Retención Generada
UPDATE AD_Menu SET DocBaseURL = '/dictionary/financial-management/withholding/withholding-allocation' WHERE AD_Menu_ID = 54467;
-- Generar Retención
UPDATE AD_Menu SET DocBaseURL = '/dictionary/financial-management/withholding/withholding-generate' WHERE AD_Menu_ID = 54468;
-- Tipo de Retención
UPDATE AD_Menu SET DocBaseURL = '/dictionary/financial-management/withholding/withholding-type' WHERE AD_Menu_ID = 54469;
-- Log de Retención
UPDATE AD_Menu SET DocBaseURL = '/dictionary/financial-management/withholding/withholding-log' WHERE AD_Menu_ID = 54471;
-- Generar Factura desde Orden de Salida
UPDATE AD_Menu SET DocBaseURL = '/dictionary/sales-management/sales-invoices/generate-invoice-from-outbound-order' WHERE AD_Menu_ID = 54502;
-- Generar Retenciones
UPDATE AD_Menu SET DocBaseURL = '/dictionary/financial-management/withholding/browser-generate-withholding' WHERE AD_Menu_ID = 54513;
-- Procesar Retenciones
UPDATE AD_Menu SET DocBaseURL = '/dictionary/financial-management/withholding/withholding-process' WHERE AD_Menu_ID = 54517;
-- Generar Declaracion de Retenciones
UPDATE AD_Menu SET DocBaseURL = '/dictionary/financial-management/withholding/browser-generate-withholding-declaration' WHERE AD_Menu_ID = 54521;
-- Orden de Devolución (Cliente)
UPDATE AD_Menu SET DocBaseURL = '/dictionary/sales-management/sales-orders/return-material-order-customer' WHERE AD_Menu_ID = 54538;
-- Devolución de Cliente
UPDATE AD_Menu SET DocBaseURL = '/dictionary/return-management/customer-return' WHERE AD_Menu_ID = 54539;
-- Enviar Retenciones
UPDATE AD_Menu SET DocBaseURL = '/dictionary/financial-management/withholding/withholding-send' WHERE AD_Menu_ID = 54568;
-- Enviar Retenciones
UPDATE AD_Menu SET DocBaseURL = '/dictionary/financial-management/withholding/browser-generate-withholding-send' WHERE AD_Menu_ID = 54569;
-- Generar Facturas desde Órdenes
UPDATE AD_Menu SET DocBaseURL = '/dictionary/sales-management/sales-invoices/generate-invoices-from-sales-orders' WHERE AD_Menu_ID = 54642;
-- Reporte de Detalle de Consignación
UPDATE AD_Menu SET DocBaseURL = '/dictionary/purchase-management/reception/consignment-detail-report' WHERE AD_Menu_ID = 54752;
-- Copiar Organización
UPDATE AD_Menu SET DocBaseURL = '/dictionary/basic-rules/admin-tools/copy-organization' WHERE AD_Menu_ID = 54761;
-- Aplicar Costo de Desembarque al Producto PDV
UPDATE AD_Menu SET DocBaseURL = '/dictionary/purchase-management/reception/apply-landed-cost' WHERE AD_Menu_ID = 54762;
-- Crear Esquema Contable Desde
UPDATE AD_Menu SET DocBaseURL = '/dictionary/basic-rules/admin-tools/accounting-schema-create-from' WHERE AD_Menu_ID = 54765;
-- Copiar Formato de Impresión con Conversión
UPDATE AD_Menu SET DocBaseURL = '/dictionary/basic-rules/admin-tools/copy-print-format' WHERE AD_Menu_ID = 54769;
-- Generar Orden de Distribucion desde Ordenes de Venta
UPDATE AD_Menu SET DocBaseURL = '/dictionary/material-management/generate-distribution-order-from-sales-orders' WHERE AD_Menu_ID = 54796;
-- Proceso de Mantenimiento de Almacenamiento
UPDATE AD_Menu SET DocBaseURL = '/dictionary/basic-rules/admin-tools/storage-maintaining' WHERE AD_Menu_ID = 54816;
-- Recalcular Precio Límite de Facturas de Venta
UPDATE AD_Menu SET DocBaseURL = '/dictionary/basic-rules/admin-tools/recalculate-price-limit' WHERE AD_Menu_ID = 54820;
-- Análisis de Solicitud para Cotización
UPDATE AD_Menu SET DocBaseURL = '/dictionary/purchase-management/requisitions/rfq-analysis' WHERE AD_Menu_ID = 54907;
-- Actualizar Descripción de Combinación Válida
UPDATE AD_Menu SET DocBaseURL = '/dictionary/basic-rules/admin-tools/update-description-valid-combination' WHERE AD_Menu_ID = 54908;
-- Generar Movimiento de Inventario desde Orden de Salida
UPDATE AD_Menu SET DocBaseURL = '/dictionary/distribution-management/generate-inventory-move-from-outbound-order' WHERE AD_Menu_ID = 54922;
-- Emisor Fiscal
UPDATE AD_Menu SET DocBaseURL = '/dictionary/electronic-billing/fiscal-sender' WHERE AD_Menu_ID = 54979;
-- Enviar Factura al Emisor Fiscal
UPDATE AD_Menu SET DocBaseURL = '/dictionary/electronic-billing/send-invoice-to-fiscal-sender' WHERE AD_Menu_ID = 54980;
-- Tipo de Transacción Fiscal
UPDATE AD_Menu SET DocBaseURL = '/dictionary/electronic-billing/fiscal-transaction-type' WHERE AD_Menu_ID = 54981;
-- Bitácora de Documento Electrónico
UPDATE AD_Menu SET DocBaseURL = '/dictionary/electronic-billing/electronic-document-log' WHERE AD_Menu_ID = 54982;
-- Imprimir Recibo de Factura
UPDATE AD_Menu SET DocBaseURL = '/dictionary/electronic-billing/print-invoice-receipt' WHERE AD_Menu_ID = 54985;
-- Reabastecimiento de Productos
UPDATE AD_Menu SET DocBaseURL = '/dictionary/material-management/product-replenishment' WHERE AD_Menu_ID = 54994;
-- Retenciones por Cobrar
UPDATE AD_Menu SET DocBaseURL = '/dictionary/financial-management/withholding/withholding-customer' WHERE AD_Menu_ID = 55003;
-- Cruce de Facturas
UPDATE AD_Menu SET DocBaseURL = '/dictionary/electronic-billing/invoice-matcher' WHERE AD_Menu_ID = 55017;
-- Obtener Facturas Electrónicas
UPDATE AD_Menu SET DocBaseURL = '/dictionary/electronic-billing/get-electronic-invoices' WHERE AD_Menu_ID = 55018;
-- Categoría de Shopping
UPDATE AD_Menu SET DocBaseURL = '/dictionary/purchase-management/shopping-management/shopping-category' WHERE AD_Menu_ID = 55021;
-- Definicion de Conteo Personalizado
UPDATE AD_Menu SET DocBaseURL = '/dictionary/material-management/custom-count-definition' WHERE AD_Menu_ID = 55026;
-- Generar Cobros de Facturas de Procesador de Pagos
UPDATE AD_Menu SET DocBaseURL = '/dictionary/balance-management/payments-and-receipts/generate-payments-for-processor-batch-invoices' WHERE AD_Menu_ID = 55033;
-- Configuración de Entrega Directa
UPDATE AD_Menu SET DocBaseURL = '/dictionary/purchase-management/purchase-orders/drop-ship-setup' WHERE AD_Menu_ID = 55035;
-- Imprimir Recibo de Entrega
UPDATE AD_Menu SET DocBaseURL = '/dictionary/electronic-billing/print-shipment-receipt' WHERE AD_Menu_ID = 55036;
-- Enviar Entrega al Proveedor Fiscal
UPDATE AD_Menu SET DocBaseURL = '/dictionary/electronic-billing/send-shipment-to-fiscal-provider' WHERE AD_Menu_ID = 55037;
-- Crear Factura de Venta en Consignación
UPDATE AD_Menu SET DocBaseURL = '/dictionary/sales-management/sales-invoices/create-consignment-sales-invoice' WHERE AD_Menu_ID = 55043;
-- Tarjeta
UPDATE AD_Menu SET DocBaseURL = '/dictionary/balance-management/payments-and-receipts/card' WHERE AD_Menu_ID = 55061;
-- Lote de Procesador de Pagos
UPDATE AD_Menu SET DocBaseURL = '/dictionary/balance-management/payments-and-receipts/payment-processor-batch' WHERE AD_Menu_ID = 55062;
-- Configuración de Lote de Procesador de Pago
UPDATE AD_Menu SET DocBaseURL = '/dictionary/balance-management/payments-and-receipts/payment-processor-batch-configuration' WHERE AD_Menu_ID = 55063;
-- Proveedor de Tarjeta
UPDATE AD_Menu SET DocBaseURL = '/dictionary/balance-management/payments-and-receipts/card-provider' WHERE AD_Menu_ID = 55064;
-- Etiquetas
UPDATE AD_Menu SET DocBaseURL = '/dictionary/basic-rules/tags/tags' WHERE AD_Menu_ID = 55066;
-- Tipo de Etiqueta
UPDATE AD_Menu SET DocBaseURL = '/dictionary/basic-rules/tags/tag-type' WHERE AD_Menu_ID = 55067;
-- Cierre de Ejercicio
UPDATE AD_Menu SET DocBaseURL = '/dictionary/accounting-management/processes/fiscal-year-end' WHERE AD_Menu_ID = 1000042;
-- Transferencia Bancaria Multimoneda
UPDATE AD_Menu SET DocBaseURL = '/dictionary/balance-management/bank-operations/multi-currency-bank-transfer' WHERE AD_Menu_ID = 2000070;
-- Cancelar Folio de Cheque
UPDATE AD_Menu SET DocBaseURL = '/dictionary/balance-management/bank-operations/cancel-folio-check' WHERE AD_Menu_ID = 2000092;
-- Generar Factura desde Concepto
UPDATE AD_Menu SET DocBaseURL = '/dictionary/sales-management/sales-invoices/generate-invoice-from-contract' WHERE AD_Menu_ID = 2000111;
-- Asignación (Automática con Exclusión)
UPDATE AD_Menu SET DocBaseURL = '/dictionary/balance-management/allocation/auto-allocation-with-exclusion' WHERE AD_Menu_ID = 2000125;
-- Generar Cobros desde Orden de Salida
UPDATE AD_Menu SET DocBaseURL = '/dictionary/distribution-management/generate-payment-from-outbound-order' WHERE AD_Menu_ID = 2000143;
-- Verificación de Cuentas Puente
UPDATE AD_Menu SET DocBaseURL = '/dictionary/accounting-management/fact-details/bridge-account-verification' WHERE AD_Menu_ID = 2000153;
-- Rendimiento de Proyecto
UPDATE AD_Menu SET DocBaseURL = '/dictionary/sales-management/projects/project-performance' WHERE AD_Menu_ID = 2000161;
-- Generar Orden desde Proyecto
UPDATE AD_Menu SET DocBaseURL = '/dictionary/sales-management/sales-orders/generate-order-from-project' WHERE AD_Menu_ID = 2000165;
-- Navegador de Proyectos
UPDATE AD_Menu SET DocBaseURL = '/dictionary/sales-management/projects/project-browser' WHERE AD_Menu_ID = 2000166;
-- Navegador de Líneas de Proyectos
UPDATE AD_Menu SET DocBaseURL = '/dictionary/sales-management/projects/project-lines-browser' WHERE AD_Menu_ID = 2000170;
-- Generar OC desde Líneas de OV
UPDATE AD_Menu SET DocBaseURL = '/dictionary/sales-management/sales-orders/generate-po-from-so-line' WHERE AD_Menu_ID = 2000180;
-- Detalle de Avance de Proyecto
UPDATE AD_Menu SET DocBaseURL = '/dictionary/sales-management/projects/project-advance-detail' WHERE AD_Menu_ID = 2000182;
-- Entregas por Grupo de Producto
UPDATE AD_Menu SET DocBaseURL = '/dictionary/sales-management/invoice-inquiry/entregas-por-grupo-de-producto' WHERE AD_Menu_ID = 2000184;
-- Presupuesto de Proyecto
UPDATE AD_Menu SET DocBaseURL = '/dictionary/sales-management/projects/project-budget' WHERE AD_Menu_ID = 2000192;
-- Bandeja CFE
UPDATE AD_Menu SET DocBaseURL = '/dictionary/sales-management/sales-invoices/invoice-import' WHERE AD_Menu_ID = 2000194;
-- Cancelar y Reemplazar OC
UPDATE AD_Menu SET DocBaseURL = '/dictionary/purchase-management/purchase-orders/cancel-and-replace-po' WHERE AD_Menu_ID = 2000196;
-- Facturación Masiva
UPDATE AD_Menu SET DocBaseURL = '/dictionary/sales-management/sales-invoices/invoice-generate' WHERE AD_Menu_ID = 2000203;
-- Selección de Pago Personalizada
UPDATE AD_Menu SET DocBaseURL = '/dictionary/balance-management/payment-selection/payment-selection-custom' WHERE AD_Menu_ID = 2000208;
-- Asignación Masiva Factura-Recepción
UPDATE AD_Menu SET DocBaseURL = '/dictionary/purchase-management/reception/massive-invoice-receipt-assignment' WHERE AD_Menu_ID = 2000210;
-- Transacciones de Factura (Cont.)
UPDATE AD_Menu SET DocBaseURL = '/dictionary/sales-management/invoice-inquiry/invoice-transactions-acct' WHERE AD_Menu_ID = 2000216;
-- Orden de Trabajo
UPDATE AD_Menu SET DocBaseURL = '/dictionary/sales-management/projects/work-order' WHERE AD_Menu_ID = 2000221;
-- Facturación Semanal por Categoría de Producto
UPDATE AD_Menu SET DocBaseURL = '/dictionary/sales-management/invoice-inquiry/weekly-invoice-prod-cat' WHERE AD_Menu_ID = 2000222;
-- Definición de Calendario de Facturación
UPDATE AD_Menu SET DocBaseURL = '/dictionary/sales-management/sales-orders/invoice-schedule-definition' WHERE AD_Menu_ID = 2000224;
-- Generar Factura desde Cuotas de Orden
UPDATE AD_Menu SET DocBaseURL = '/dictionary/sales-management/sales-invoices/generate-invoice-from-order-invoice-schedule' WHERE AD_Menu_ID = 2000225;
-- Generar Facturas desde Líneas de Orden con Agrupación
UPDATE AD_Menu SET DocBaseURL = '/dictionary/sales-management/sales-invoices/generate-invoice-from-order-line-with-grouping' WHERE AD_Menu_ID = 2000226;
-- Completar Facturas de Compra Intercompañía
UPDATE AD_Menu SET DocBaseURL = '/dictionary/purchase-management/reception/complete-intercompany-invoices' WHERE AD_Menu_ID = 2000228;

-- === Additional entries ===

-- Consulta Arbitraje de Moneda BCU
UPDATE AD_Process SET DocBaseURL = '/dictionary/accounting-management/processes/currency-arbitration' WHERE AD_Process_ID = 2000110;
-- Generar Movimiento Manual
UPDATE AD_Browse SET DocBaseURL = '/dictionary/distribution-management/generate-movement-manual' WHERE AD_Browse_ID = 50046;
-- Recibos de Materiales de la Orden de Distribución
UPDATE AD_Browse SET DocBaseURL = '/dictionary/distribution-management/material-receipt-distribution-order' WHERE AD_Browse_ID = 50047;
-- Generar Facturas
UPDATE AD_Process SET DocBaseURL = '/dictionary/sales-management/sales-invoices/generate-invoices' WHERE AD_Process_ID = 134;
-- Generar OC para Instalación de Producto
UPDATE AD_Browse SET DocBaseURL = '/dictionary/sales-management/sales-management-crm/generate-po-for-product-installation' WHERE AD_Browse_ID = 2000044;
-- Crear OC desde Proyectos
UPDATE AD_Process SET DocBaseURL = '/dictionary/sales-management/sales-orders/create-order-po-from-projects' WHERE AD_Process_ID = 2000036;

-- === Correcciones finales ===

-- Póliza Contable (GL Journal - single view, Window 132 also used for batch)
-- Note: Window 132 primary slug set to gl-journal (overrides gl-journal-batch)

-- Orden de Devolución (Proveedor) - Window 53695
-- Orden de Devolución de Material (Proveedor)
UPDATE AD_Window SET DocBaseURL = '/dictionary/purchase-management/purchase-orders/return-material-order-vendor' WHERE AD_Window_ID = 53695;
-- Órdenes de Compra Conciliadas - Window 228
UPDATE AD_Window SET DocBaseURL = '/dictionary/purchase-management/reception/matched-purchase-orders' WHERE AD_Window_ID = 228;
-- Consulta de Facturas (Ventas) - Browse 50013
UPDATE AD_Browse SET DocBaseURL = '/dictionary/sales-management/sales-invoices/browser-ar-invoice' WHERE AD_Browse_ID = 50013;
-- Generar Ganancia/Pérdida No Realizada - Process 2000253 
UPDATE AD_Process SET DocBaseURL = '/dictionary/accounting-management/processes/generate-not-realized-gain-loss' WHERE AD_Process_ID = 2000253;
-- Esquema de Descuentos - Window 479
UPDATE AD_Window SET DocBaseURL = '/dictionary/material-management/material-rules/discount-schema' WHERE AD_Window_ID = 479;

-- === Gestión de Permisos (Leave Management) ===

-- Motivos de Permiso
UPDATE AD_Window SET DocBaseURL = '/dictionary/human-management/leave-management/leave-reasons' WHERE AD_Window_ID = 53324;
-- Tipo de Permiso
UPDATE AD_Window SET DocBaseURL = '/dictionary/human-management/leave-management/leave-type' WHERE AD_Window_ID = 53325;
-- Solicitud de Permiso
UPDATE AD_Window SET DocBaseURL = '/dictionary/human-management/leave-management/leave-request' WHERE AD_Window_ID = 53629;
-- Crear Permiso Repetido para Empleado
UPDATE AD_Process SET DocBaseURL = '/dictionary/human-management/leave-management/create-repeated-leave' WHERE AD_Process_ID = 54259;

-- AD_Menu entries for Leave Management
-- Motivos de Permiso (menu)
UPDATE AD_Menu SET DocBaseURL = '/dictionary/human-management/leave-management/leave-reasons' WHERE AD_Menu_ID = 53724;
-- Tipo de Permiso (menu)
UPDATE AD_Menu SET DocBaseURL = '/dictionary/human-management/leave-management/leave-type' WHERE AD_Menu_ID = 53725;
-- Solicitud de Permiso (menu)
UPDATE AD_Menu SET DocBaseURL = '/dictionary/human-management/leave-management/leave-request' WHERE AD_Menu_ID = 54383;
-- Crear Permiso Repetido para Empleado (menu)
UPDATE AD_Menu SET DocBaseURL = '/dictionary/human-management/leave-management/create-repeated-leave' WHERE AD_Menu_ID = 54489;

-- === Notas sobre slugs sin DocBaseURL ===
-- /dictionary/financial-management/investments/loan-simulator → Form 53075 (AD_Form no tiene DocBaseURL)
-- /dictionary/accounting-management/journal-entries/gl-journal → Window 132 (ya asignado a gl-journal-batch)
-- /dictionary/purchase-management/purchase-orders/price-list → Window 146 (ya asignado a material-rules/price-list)
