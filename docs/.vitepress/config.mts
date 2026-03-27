import { defineConfig } from 'vitepress'

// https://vitepress.dev/reference/site-config
export default defineConfig({
  title: "Solop",
  base: '/',
  description: "Documentación oficial de Solop ERP",
  lang: 'es-ES',
  lastUpdated: true,
  head: [['link', { rel: 'icon', href: '/favicon.ico' }]],
  themeConfig: {
    search: {
      provider: 'local'
    },
    logo: '/logo_alone.png',
    // logoLink: 'https://solopsoftware.com/es/inicio/',
    // https://vitepress.dev/reference/default-theme-config
    nav: [
      { text: 'Inicio', link: 'https://solopsoftware.com/es/inicio/' },
      { text: 'Reglas Básicas', link: '/basic-rules' },
      { text: 'Funcionalidades', link: '/master-data' },
    ],



    sidebar: [
      {
        text: 'Funcionalidades',
        items: [
          { text: 'Reglas Básicas', link: '/basic-rules' },
          { text: 'Datos Maestros', link: '/master-data' },
          { text: 'Facturación Electrónica', link: '/electronic-billing' },
          { text: 'Gestión Contable', link: '/accounting-management' },
          { text: 'Gestión de Compras', link: '/purchase-management' },
          { text: 'Gestión de Devoluciones', link: '/return-management' },
          { text: 'Gestión de Distribución', link: '/distribution-management' },
          { text: 'Gestión de Materiales', link: '/material-management' },
          { text: 'Gestión de Producción', link: '/production-management' },
          { text: 'Gestión de PDV', link: '/pdv-management' },
          { text: 'Gestión Humana', link: '/human-management' },
          { text: 'Gestión de Relación con Clientes', link: '/customer-relationship-management' },
          { text: 'Gestión de Saldos Pendientes', link: '/balance-management' },
          { text: 'Gestión de Ventas', link: '/sales-management' },
          { text: 'Gestión Financiera', link: '/financial-management' },
          { text: 'Gestión de Activos', link: '/asset-management' },
          { text: 'Dashboards', link: '/dashboards' },
          { text: 'Integración Mercado Libre', link: '/mercado-libre' },
          { text: 'Preguntas Frecuentes', link: '/frequently-asked-questions' },
          { text: 'Verticales Oficiales de Solop ERP', link: '/verticals' },
        ]
      },
      {
        text: 'Diccionario de Aplicación',
        items: [
          { text: 'Índice General', link: '/dictionary/' },
          { text: 'Gestión de Ventas', link: '/dictionary/sales-management/' },
          { text: 'Gestión de Compras', link: '/dictionary/purchase-management/' },
          { text: 'Gestión de Saldos Pendientes', link: '/dictionary/balance-management/' },
          { text: 'Gestión Financiera', link: '/dictionary/financial-management/' },
          { text: 'Gestión Contable', link: '/dictionary/accounting-management/' },
          { text: 'Gestión de Materiales', link: '/dictionary/material-management/' },
          { text: 'Gestión de Producción', link: '/dictionary/production-management/' },
          { text: 'Gestión Humana', link: '/dictionary/human-management/' },
          { text: 'Gestión de Distribución', link: '/dictionary/distribution-management/' },
          { text: 'Gestión de Devoluciones', link: '/dictionary/return-management/' },
          { text: 'Gestión de Activos', link: '/dictionary/asset-management/' },
          { text: 'Facturación Electrónica', link: '/dictionary/electronic-billing/' },
          { text: 'Gestión de Relaciones', link: '/dictionary/customer-relationship-management/' },
          { text: 'Verticales', link: '/dictionary/verticals/' },
          { text: 'Reglas Básicas', link: '/dictionary/basic-rules/' },
          { text: 'Dispositivos', link: '/dictionary/devices/' },
        ]
      }
    ],


    socialLinks: [
      { icon: 'github', link: 'https://github.com/solop-develop/docs' }
    ],
    footer: {
      copyright: 'Copyright © 2024-present Solop Software'
    }
  }
})