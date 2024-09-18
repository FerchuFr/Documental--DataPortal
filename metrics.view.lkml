include: "/commerce/first_party/data_portal/explores/develop_1p.explore.lkml"
include: "/utilities/parameters.view"


view: metrics_1p {
  extends: [comparision_selector_fecha,comparision_selector_alternativa,select_period_metrics_1p,comparision_selector_fecha_bi]
  derived_table: {

    explore_source: develop_1p {

######################################################

############### D I M E N S I O N E S ################

######################################################

# --------------------------------
# Buy IN
# --------------------------------
      derived_column: last_date {
        sql: current_date()-1 ;;
      }

      column: ord_closed_date_im {
        field: inventory_metrics.ord_closed_date
      }
      column: plan_month {
        field: plan.plan_month
      }

      column: period_type_im {
        field: inventory_metrics.period_type
      }
      column: period_type_plan {
        field: plan.period_type
      }

      column: sit_site_id_im {
        field: inventory_metrics.sit_site_id
      }
      column: sit_site_id_plan {
        field: plan.sit_site_id
      }

      column: vertical_domain_im {
        field: inventory_metrics.vertical_domain
      }
      column: vertical_domain_plan {
        field: plan.vertical_domain
      }

      column: dom_domain_agg1_im {
        field: inventory_metrics.dom_domain_agg1
      }
     column: dom_domain_agg1_plan {
       field: plan.dom_domain_agg1
     }

      column: dom_domain_agg2_im {
        field: inventory_metrics.dom_domain_agg2
      }
      column: dom_domain_agg2_plan {
        field: plan.dom_domain_agg2
      }

      column: dom_domain_id_im {
        field: inventory_metrics.dom_domain_id
      }
      column: dom_domain_id_plan {
        field: plan.dom_domain_id
      }

      column: bu_name {
        field: jerarquias_comerciales.bu_name
      }



      column: orders_1p_qty {
        field: orders.orders_1p_qty
      }
      column: orders_3p_qty {
        field: orders.orders_3p_qty
      }
      column: gmv_iva_deducted_lc {
        field: inventory_metrics.gmv_iva_deducted_lc
      }
      column: gmv_iva_deducted {
        field: inventory_metrics.gmv_iva_deducted
      }
      column: qty_visits {
        field: visits.visits_1p
      }
      column: tgmv {
        field: orders.tgmv
      }
      column: tgmv_1p {
        field: orders.tgmv_1p
      }
      column: tgmv_3p {
        field: orders.tgmv_3p
      }
      column: tgmv_1p_lc {
        field: orders.tgmv_1p_lc
      }
      column: tgmv_3p_lc {
        field: orders.tgmv_3p_lc
      }
      column: gmv_3p {
        field: orders.gmv_3p
      }
      column: gmv_1p {
        field: orders.gmv_1p
      }
      column: gmv_1p_lc {
        field: orders.gmv_1p_lc
      }
      column: gmv_3p_lc {
        field: orders.gmv_3p_lc
      }
      column: tgmv {
        field: orders.tgmv
      }
      column: tgmv_lc {
        field: orders.tgmv_lc
      }
      column: tsi {
        field: orders.tsi
      }
      column: tsi_1p {
        field: orders.tsi_1p
      }
      column: tsi_3p {
        field: orders.tsi_3p
      }
      column: si {
        field: orders.si
      }
      column: si_1p {
        field: orders.si_1p
      }
      column: si_3p {
        field: orders.si_3p
      }
      column: sell_brands {
        field: inventory_metrics.sell_brands
      }
      column: stock_value {
        field: inventory_metrics.stock_value
      }
      column: stock_value_lc {
        field: inventory_metrics.stock_value_lc
      }
      column: stock_available_valued_estimated {
        field: inventory_metrics.stock_available_valued_estimated
      }
      column: stock_saleable {
        field: inventory_metrics.stock_saleable
      }
#      column: benefit_sampa {
#        field: inventory_metrics.benefit_sampa
#      }
#      column: costo_sampa {
#        field: inventory_metrics.costo_sampa
#      }
      column: ppm_full_num {
        field: inventory_metrics.ppm_full_num
      }
      column: ppm_full_num_lc {
        field: inventory_metrics.ppm_full_num_lc
      }
      column: ppm_rodagem_num {
        field: inventory_metrics.ppm_rodagem_num
      }
      column: ppm_rodagem_num_lc {
        field: inventory_metrics.ppm_rodagem_num_lc
      }
      #     column: ppm_sampa_num {
      #       field: refactoring_1p_inventory_metrics.ppm_sampa_num
      #     }
      column: denominador_ppm {
        field: inventory_metrics.denominador_ppm
      }
      column: denominador_ppm_lc {
        field: inventory_metrics.denominador_ppm_lc
      }

      column: agreement_amount_estimated_lc {
        field: inventory_metrics.agreement_amount_estimated_lc
      }
      column: agreement_amount_estimated {
        field: inventory_metrics.agreement_amount_estimated
      }

# --------------------------------
# Pricing
# --------------------------------

      column: ite_site_current_price {
        field: pricing.ite_site_current_price
      }
      column: pi_vista_pond_visits {
        field: pricing.pi_vista_pond_visits
      }
      column: visits {
        field: pricing.visits
      }
# --------------------------------
# pricing coverage
# --------------------------------

      column: visits_coverage_items {
        field: coverage.visits_coverage_items
      }
      column: visits_active_items {
        field: coverage.visits_active_items
      }


# --------------------------------
# Pricing NRT
# --------------------------------


      column: pl1p_time_in_status_perc {
        field: pricing_nrt.pl1p_time_in_status_perc
      }
      column: total_visits {
        field: pricing_nrt.total_visits
      }
      column: price_index_vista {
        field: pricing_nrt.price_index_vista
      }
      column: visits_1if {
        field: pricing_nrt.visits_1if
      }
      column: visits_2if {
        field: pricing_nrt.visits_2if
      }
      column: visits_3if {
        field: pricing_nrt.visits_3if
      }
      column: total_visits_active {
        field: pricing_nrt.total_visits_active
      }
      column: automatic_price {
        field: pricing_nrt.automatic_price
      }
      column: total_visits_bb_active {
        field: pricing_nrt.total_visits_bb_active
      }
      column: visits_1p_bb_active {
        field: pricing_nrt.visits_1p_bb_active
      }
      column: pc_landed_visits {
        field: pricing_nrt.pc_landed_visits
      }
      column: pc_visits_total {
        field: pricing_nrt.pc_visits_total
      }
      column: pc_box_visits {
        field: pricing_nrt.pc_box_visits
      }
      column: num_price_index {
        field: pricing_nrt.num_price_index
      }
      column: den_price_index {
        field: pricing_nrt.den_price_index
      }

# --------------------------------
# Selection Funnels
# --------------------------------

      column: ll_act {
        field: selection_funnel.ll_act
      }
      column: ll_act_views {
        field: selection_funnel.ll_act_views
      }
      column: ll_act_sales {
        field: selection_funnel.ll_act_sales
      }

# --------------------------------
# OOS
# --------------------------------

      column: num_oos_total {
        field: oos_db.num_oos_total
      }
      column: den_oos_total {
        field: oos_db.den_oos_total
      }
      column: num_oos_curva {
        field: oos_db.num_oos_curva
      }
      column: den_oos_curva {
        field: oos_db.den_oos_curva
      }
      column: tgmv_lost {
        field: oos_db.tgmv_lost
      }

# --------------------------------
# UE
# --------------------------------

      column: revenues_lc {
        field: ue_output.revenues_lc
      }
      column: revenues_usd {
        field: ue_output.revenues_usd
      }
      column: cupones_usd {
        field: ue_output.cupones_usd
      }
      column: cupones_lc {
        field: ue_output.cupones_lc
      }
      column: other_revenues_usd {
        field: ue_output.other_revenues_usd
      }
      column: other_revenues_lc {
        field: ue_output.other_revenues_lc
      }
      column: bpp_recovery_usd {
        field: ue_output.bpp_recovery_usd
      }
      column: bpp_recovery_lc {
        field: ue_output.bpp_recovery_lc
      }
      column: p_cost_usd {
        field: ue_output.p_cost_usd
      }
      column: p_cost_lc {
        field: ue_output.p_cost_lc
      }
      column: bu_local_exp_lc {
        field: ue_output.bu_local_exp_lc
      }
      column: bu_local_exp_usd {
        field: ue_output.bu_local_exp_usd
      }
      column: advertising_revenues_lc {
        field: ue_output.advertising_revenues_lc
      }
      column: advertising_revenues_usd {
        field: ue_output.advertising_revenues_usd
      }
      column: bpp_lc {
        field: ue_output.bpp_lc
      }
      column: bpp_usd {
        field: ue_output.bpp_usd
      }
      column: chagebks_bd_lc {
        field: ue_output.chagebks_bd_lc
      }
      column: chagebks_bd_usd {
        field: ue_output.chagebks_bd_usd
      }
      column: chagebks_bd_lc {
        field: ue_output.chagebks_bd_lc
      }
      column: collection_fees_lc {
        field: ue_output.collection_fees_lc
      }
      column: collection_fees_usd {
        field: ue_output.collection_fees_usd
      }
      column: contracogs_lc {
        field: ue_output.contracogs_lc
      }
      column: contracogs_usd {
        field: ue_output.contracogs_usd
      }
      column: cx_directo_lc {
        field: ue_output.cx_directo_lc
      }
      column: cx_directo_usd {
        field: ue_output.cx_directo_usd
      }
      column: cx_indirecto_lc {
        field: ue_output.cx_indirecto_lc
      }
      column: cx_indirecto_usd {
        field: ue_output.cx_indirecto_usd
      }
      column: direct_contribution_lc {
        field: ue_output.direct_contribution_lc
      }
      column: direct_contribution_usd {
        field: ue_output.direct_contribution_usd
      }
      column: marketing_directo_lc {
        field: ue_output.marketing_directo_lc
      }
      column: marketing_directo_usd {
        field: ue_output.marketing_directo_usd
      }
      column: marketing_indirecto_lc {
        field: ue_output.marketing_indirecto_lc
      }
      column: marketing_indirecto_usd {
        field: ue_output.marketing_indirecto_usd
      }
      column: other_cogs_lc {
        field: ue_output.other_cogs_lc
      }
      column: other_cogs_usd {
        field: ue_output.other_cogs_usd
      }
      column: payments_cost_lc {
        field: ue_output.payments_cost_lc
      }
      column: payments_cost_usd {
        field: ue_output.payments_cost_usd
      }
      column: payments_revenue_lc {
        field: ue_output.payments_revenue_lc
      }
      column: payments_revenue_usd {
        field: ue_output.payments_revenue_usd
      }
      column: product_cost_gross_lc {
        field: ue_output.product_cost_gross_lc
      }
      column: product_cost_gross_usd {
        field: ue_output.product_cost_gross_usd
      }
      column: sales_taxes_lc {
        field: ue_output.sales_taxes_lc
      }
      column: sales_taxes_usd {
        field: ue_output.sales_taxes_usd
      }
      column: ship_ops_cost_lc {
        field: ue_output.ship_ops_cost_lc
      }
      column: ship_ops_cost_usd {
        field: ue_output.ship_ops_cost_usd
      }
      column: shipping_cost_fijo_lc {
        field: ue_output.shipping_cost_fijo_lc
      }
      column: shipping_cost_fijo_usd {
        field: ue_output.shipping_cost_fijo_usd
      }
      column: shipping_cost_variable_lc {
        field: ue_output.shipping_cost_variable_lc
      }
      column: shipping_cost_variable_usd {
        field: ue_output.shipping_cost_variable_usd
      }
      column: shipping_revenues_lc {
        field: ue_output.shipping_revenues_lc
      }
      column: shipping_revenues_usd {
        field: ue_output.shipping_revenues_usd
      }
      column: tax_recovery_lc {
        field: ue_output.tax_recovery_lc
      }
      column: tax_recovery_usd {
        field: ue_output.tax_recovery_usd
      }
      column: ppm_rodagem_lc {
        field: ue_output.ppm_rodagem_lc
      }
      column: ppm_rodagem_usd  {
        field: ue_output.ppm_rodagem_usd
      }
      column: ppm_governance_lc {
        field: ue_output.ppm_governance_lc
      }
      column: ppm_governance_usd {
        field: ue_output.ppm_governance_usd
      }
      column: alloc_exp_usd {
        field: ue_output.alloc_exp_usd
      }
      column: alloc_exp_lc {
        field: ue_output.alloc_exp_lc
      }
      column: ebit_usd {
        field: ue_output.ebit_usd
      }
      column: ebit_lc {
        field: ue_output.ebit_lc
      }
      column: usgaap_amf_usd {
        field: ue_output.usgaap_amf_usd
      }
      column: usgaap_amf_lc {
        field: ue_output.usgaap_amf_lc
      }
      column: usgaap_vnr_usd {
        field: ue_output.usgaap_vnr_usd
      }
      column: usgaap_vnr_lc {
        field: ue_output.usgaap_vnr_lc
      }
      column: usgaap_obsolesencia_usd {
        field: ue_output.usgaap_obsolesencia_usd
      }
      column: usgaap_obsolesencia_lc {
        field: ue_output.usgaap_obsolesencia_lc
      }
      column: write_offs_usd {
        field: ue_output.write_offs_usd
      }
      column: write_offs_lc {
        field: ue_output.write_offs_lc
      }
      column: usgaap_prov_dev_futuras_usd {
        field: ue_output.usgaap_prov_dev_futuras_usd
      }
      column: usgaap_prov_dev_futuras_lc {
        field: ue_output.usgaap_prov_dev_futuras_lc
      }
      column: triage_usd {
        field: ue_output.triage_usd
      }
      column: triage_lc {
        field: ue_output.triage_lc
      }

      column: bpp_nc_lc {
        field: ue_output.ue_con_bonif_1p_amt_lc
      }
      column: bpp_nc_usd {
        field: ue_output.ue_con_bonif_1p_amt_usd
      }
      column: ppm_ajuste_lc {
        field: ue_output.ue_ppm_dif_adj_amt_lc
      }
      column: ppm_ajuste_usd {
        field: ue_output.ue_ppm_dif_adj_amt_usd
      }
      column: forex_lc {
        field: ue_output.ue_con_forex_expenses_amt_lc
      }
      column: forex_usd {
        field: ue_output.ue_con_forex_expenses_amt_usd
      }
      column: dc_ajuste_lc {
        field: ue_output.dc_ajuste_lc
      }
      column: dc_ajuste_usd {
        field: ue_output.dc_ajuste_usd
      }
      column: ebit_ajuste_lc {
        field: ue_output.ebit_ajuste_lc
      }
      column: ebit_ajuste_usd {
        field: ue_output.ebit_ajuste_usd
      }
      column: shipping_cost_lc {
        field: ue_output.shipping_cost_lc
      }
      column: shipping_cost_usd {
        field: ue_output.shipping_cost_usd
      }

      column: ppm_cierre_lc {
        field: ue_output.ppm_cierre_lc
      }
      column: ppm_cierre_usd {
        field: ue_output.ppm_cierre_usd
      }

# --------------------------------
# UE CALLERI
# --------------------------------

#     column: m_direct_contribution_lc {
#       field: calleri.m_direct_contribution_lc
#     }
#     column: m_direct_contribution_usd {
#       field: calleri.m_direct_contribution_usd
#     }
     column: m_ebit_lc {
       field: calleri.m_ebit_lc
     }
#     column: m_ebit_usd {
#       field: calleri.m_ebit_usd
#     }
     column: ppm_adjusted_lc {
       field: calleri.ppm_adjusted_lc
     }
#     column: ppm_adjusted_usd {
#       field: calleri.ppm_adjusted_usd
#     }

# --------------------------------
# UE MANAGERIAL
# --------------------------------

      column: ue_con_tgmv_amt_lc {
        field: ue_managerial.ue_con_tgmv_amt_lc}
      column: ue_con_tsi_amt_lc {
        field: ue_managerial.ue_con_tsi_amt_lc}
      column: ue_mng_revenue_gross_amt_lc {
        field: ue_managerial.ue_mng_revenue_gross_amt_lc}
      column: ue_mng_coupon_without_iva_amt_lc {
        field: ue_managerial.ue_mng_coupon_without_iva_amt_lc}
      column: ue_mng_net_var_fees_amt_lc {
        field: ue_managerial.ue_mng_net_var_fees_amt_lc}
      column: ue_mng_net_fix_fees_amt_lc {
        field: ue_managerial.ue_mng_net_fix_fees_amt_lc}
      column: ue_mng_promotions_amt_lc {
        field: ue_managerial.ue_mng_promotions_amt_lc}
      column: ue_mng_vendor_margin_amt_lc {
        field: ue_managerial.ue_mng_vendor_margin_amt_lc}
      column: ue_mng_retail_revenues_amt_lc {
        field: ue_managerial.ue_mng_retail_revenues_amt_lc}
      column: ue_con_cmv_amt_lc {
        field: ue_managerial.ue_con_cmv_amt_lc}
      column: ue_con_contracogs_amt_lc {
        field: ue_managerial.ue_con_contracogs_amt_lc}
      column: ue_mng_other_product_margin_amt_lc {
        field: ue_managerial.ue_mng_other_product_margin_amt_lc}
      column: ue_mng_product_net_monetization_amt_lc {
        field: ue_managerial.ue_mng_product_net_monetization_amt_lc}
      column: ue_mng_payments_net_amt_lc {
        field: ue_managerial.ue_mng_payments_net_amt_lc}
      column: ue_mng_payments_revenues_gross_amt_lc {
        field: ue_managerial.ue_mng_payments_revenues_gross_amt_lc}
      column: ue_mng_financing_cost_amt_lc {
        field: ue_managerial.ue_mng_financing_cost_amt_lc}
      column: ue_mng_financing_adj_amt_lc {
        field: ue_managerial.ue_mng_financing_adj_amt_lc}
      column: ue_mng_shipping_net_amt_lc {
        field: ue_managerial.ue_mng_shipping_net_amt_lc}
      column: ue_mng_shipping_revenues_amt_lc {
        field: ue_managerial.ue_mng_shipping_revenues_amt_lc}
      column: ue_mng_shipping_cost_amt_lc {
        field: ue_managerial.ue_mng_shipping_cost_amt_lc}
      column: ue_mng_ads_amt_lc {
        field: ue_managerial.ue_mng_ads_amt_lc}
      column: ue_mng_ads_display_amt_lc {
        field: ue_managerial.ue_mng_ads_display_amt_lc}
      column: ue_mng_ads_pads_amt_lc {
        field: ue_managerial.ue_mng_ads_pads_amt_lc}
      column: ue_con_advertising_revenues_nc_amt_lc {
        field: ue_managerial.ue_con_advertising_revenues_nc_amt_lc}
      column: ue_mng_other_revenues_amt_lc {
        field: ue_managerial.ue_mng_other_revenues_amt_lc}
      column: ue_mng_sales_tax_amt_lc {
        field: ue_managerial.ue_mng_sales_tax_amt_lc}
      column: ue_mng_total_net_monetization_amt_lc {
        field: ue_managerial.ue_mng_total_net_monetization_amt_lc}
      column: ue_con_net_revenues_amt_lc {
        field: ue_managerial.ue_con_net_revenues_amt_lc}
      column: ue_mng_shipping_ops_cost_var_total_amt_lc {
        field: ue_managerial.ue_mng_shipping_ops_cost_var_total_amt_lc}
      column: ue_mng_collection_fees_amt_lc {
        field: ue_managerial.ue_mng_collection_fees_amt_lc}
      column: ue_mng_chargebacks_amt_lc {
        field: ue_managerial.ue_mng_chargebacks_amt_lc}
      column: ue_mng_bad_dev_amt_lc {
        field: ue_managerial.ue_mng_bad_dev_amt_lc}
      column: ue_mng_bpp_amt_lc {
        field: ue_managerial.ue_mng_bpp_amt_lc}
      column: ue_mng_marketing_performance_amt_lc {
        field: ue_managerial.ue_mng_marketing_performance_amt_lc}
      column: ue_mng_cx_var_amt_lc {
        field: ue_managerial.ue_mng_cx_var_amt_lc}
      column: ue_mng_hosting_var_amt_lc {
        field: ue_managerial.ue_mng_hosting_var_amt_lc}
      column: ue_mng_variable_contribution_amt_lc {
        field: ue_managerial.ue_mng_variable_contribution_amt_lc}
      column: ue_mng_ops_cost_fix_total_amt_lc {
        field: ue_managerial.ue_mng_ops_cost_fix_total_amt_lc}
      column: ue_mng_shp_distrib_fix_amt_lc {
        field: ue_managerial.ue_mng_shp_distrib_fix_amt_lc}
      column: ue_mng_marketing_indirecto_amt_lc {
        field: ue_managerial.ue_mng_marketing_indirecto_amt_lc}
      column: ue_mng_lyl_content_total_amt_lc {
        field: ue_managerial.ue_mng_lyl_content_total_amt_lc}
      column: ue_mng_cx_fix_amt_lc {
        field: ue_managerial.ue_mng_cx_fix_amt_lc}
      column: ue_mng_hosting_fix_amt_lc {
        field: ue_managerial.ue_mng_hosting_fix_amt_lc}
      column: ue_mng_fraud_prevention_amt_lc {
        field: ue_managerial.ue_mng_fraud_prevention_amt_lc}
      column: ue_mng_sm_local_amt_lc {
        field: ue_managerial.ue_mng_sm_local_amt_lc}
      column: ue_mng_other_costs_amt_lc {
        field: ue_managerial.ue_mng_other_costs_amt_lc}
      column: ue_mng_direct_contribution_amt_lc {
        field: ue_managerial.ue_mng_direct_contribution_amt_lc}
      column: ue_mng_direct_contribuition_adjustment_amt_lc {
        field: ue_managerial.ue_mng_direct_contribuition_adjustment_amt_lc}
      column: ue_mng_mkt_branding_amt_lc {
        field: ue_managerial.ue_mng_mkt_branding_amt_lc}
      column: ue_mng_product_development_amt_lc {
        field: ue_managerial.ue_mng_product_development_amt_lc}
      column: ue_mng_ga_bu_amt_lc {
        field: ue_managerial.ue_mng_ga_bu_amt_lc}
      column: ue_mng_sm_bu_amt_lc {
        field: ue_managerial.ue_mng_sm_bu_amt_lc}
      column: ue_mng_business_contribution_amt_lc {
        field: ue_managerial.ue_mng_business_contribution_amt_lc}
      column: ue_mng_other_business_margin_adjustment_amt_lc {
        field: ue_managerial.ue_mng_other_business_margin_adjustment_amt_lc}
      column: ue_mng_ga_corporate_amt_lc {
        field: ue_managerial.ue_mng_ga_corporate_amt_lc}
      column: ue_mng_sm_corporate_amt_lc {
        field: ue_managerial.ue_mng_sm_corporate_amt_lc}
      column: ue_mng_business_margin_amt_lc {
        field: ue_managerial.ue_mng_business_margin_amt_lc}
      column: ue_mng_interco_adjustment_amt_lc {
        field: ue_managerial.ue_mng_interco_adjustment_amt_lc}
      column: ue_mng_financing_expenses_below_ebit_amt_lc {
        field: ue_managerial.ue_mng_financing_expenses_below_ebit_amt_lc}
      column: ue_mng_foreign_exchange_adjusment_amt_lc {
        field: ue_managerial.ue_mng_foreign_exchange_adjusment_amt_lc}
      column: ue_mng_other_ebit_adjustment_amt_lc {
        field: ue_managerial.ue_mng_other_ebit_adjustment_amt_lc}
      column: ue_mng_ebit_amt_lc {
        field: ue_managerial.ue_mng_ebit_amt_lc}

      column: ue_mng_non_bank_coupons_discount_amt_lc {
        field: ue_managerial.ue_mng_non_bank_coupons_discount_amt_lc   }
      column: ue_mng_bank_coupons_discount_amt_lc {
        field: ue_managerial.ue_mng_bank_coupons_discount_amt_lc  }
      column: ue_mng_return_amt_lc {
        field: ue_managerial.ue_mng_return_amt_lc  }
      column: ue_mng_vendor_cofounded_coupons_amt_lc {
        field: ue_managerial.ue_mng_vendor_cofounded_coupons_amt_lc  }
      column: ue_ccogs_sellout_amt_lc {
        field: ue_managerial.ue_ccogs_sellout_amt_lc  }
      column: ue_ccogs_lumpsum_amt_lc {
        field: ue_managerial.ue_ccogs_lumpsum_amt_lc }
      column: ue_mng_other_vendor_ccogs_amt_lc {
        field: ue_managerial.ue_mng_other_vendor_ccogs_amt_lc  }
      column: ue_mng_other_product_revenues_amt_lc {
        field: ue_managerial.ue_mng_other_product_revenues_amt_lc }
      column: ue_mng_venta_liquidadores_amt_lc {
        field: ue_managerial.ue_mng_venta_liquidadores_amt_lc  }
      column: ue_mng_cmv_venta_liquidadores_amt_lc {
        field: ue_managerial.ue_mng_cmv_venta_liquidadores_amt_lc }
      column: ue_mng_write_off_amt_lc {
        field: ue_managerial.ue_mng_write_off_amt_lc  }
      column: ue_mng_scrap_amt_lc {
        field: ue_managerial.ue_mng_scrap_amt_lc  }
      column: ue_mng_triage_recovery_amt_lc {
        field: ue_managerial.ue_mng_triage_recovery_amt_lc  }
      column: ue_mng_return_to_vendor_amt_lc {
        field: ue_managerial.ue_mng_return_to_vendor_amt_lc  }
      column: ue_mng_other_product_cogs_amt_lc {
        field: ue_managerial.ue_mng_other_product_cogs_amt_lc  }
      column: ue_mng_foreign_exchange_amt_lc {
        field: ue_managerial.ue_mng_foreign_exchange_amt_lc  }
      column: ue_mng_financing_cost_adjustment_amt_lc {
        field: ue_managerial.ue_mng_financing_cost_adjustment_amt_lc }
      column: ue_mng_business_margin_adj_amt_lc {
        field: ue_managerial.ue_mng_business_margin_adj_amt_lc  }
      column: ue_mng_net_monetization_adjustment_amt_lc {
        field: ue_managerial.ue_mng_net_monetization_adjustment_amt_lc  }
      column: ue_mng_sales_exp_amt_lc {
        field: ue_managerial.ue_mng_sales_exp_amt_lc  }
      column: ue_mng_amf_amt_lc {
        field: ue_managerial.ue_mng_amf_amt_lc  }

      column: ue_mng_other_product_cost_amt_lc {
        field: ue_managerial.ue_mng_other_product_cost_amt_lc  }
      column: ue_mng_coupons_recov_amt_lc {
        field: ue_managerial.ue_mng_coupons_recov_amt_lc  }
      column: ue_mng_bank_cofounded_coupons_amt_lc {
        field: ue_managerial.ue_mng_bank_cofounded_coupons_amt_lc  }
      column: ue_mng_credits_cofounded_coupons_amt_lc {
        field: ue_managerial.ue_mng_credits_cofounded_coupons_amt_lc }
      column: ue_mng_returns_liquidations_amt_lc {
        field: ue_managerial.ue_mng_returns_liquidations_amt_lc  }
      column: ue_mng_total_returns_amt_lc {
        field: ue_managerial.ue_mng_total_returns_amt_lc }
      column: ue_mng_bpp_bonif_returns_amt_lc {
        field: ue_managerial.ue_mng_bpp_bonif_returns_amt_lc  }
      column: ue_mng_triage_no_saleable_amt_lc {
        field: ue_managerial.ue_mng_triage_no_saleable_amt_lc }
      column: ue_mng_refurbished_amt_lc {
        field: ue_managerial.ue_mng_returns_mgmt_amt_lc }
      column: ue_mng_returns_mgmt_amt_lc {
        field: ue_managerial.ue_mng_refurbished_amt_lc }
      column: ue_mng_cmv_refurbished_amt_lc {
        field: ue_managerial.ue_mng_cmv_refurbished_amt_lc }
      column: ue_mng_inventory_reg_amt_lc {
        field: ue_managerial.ue_mng_inventory_reg_amt_lc }
      column: ue_mng_vnr_amt_lc {
        field: ue_managerial.ue_mng_vnr_amt_lc }
      column: ue_mng_obsolescence_amt_lc {
        field: ue_managerial.ue_mng_obsolescence_amt_lc }

      column: ue_mng_cmv_gross_amt_lc {
        field: ue_managerial.ue_mng_cmv_gross_amt_lc }
      column: ue_mng_product_net_monetization_adj_amt_lc {
        field: ue_managerial.ue_mng_product_net_monetization_adj_amt_lc }
      column: ue_mng_payments_revenues_amt_lc {
        field: ue_managerial.ue_mng_payments_revenues_amt_lc }
      column: ue_mng_ratably_amt_lc {
        field: ue_managerial.ue_mng_ratably_amt_lc }
      column: ue_mng_ebit_adj_amt_lc {
        field: ue_managerial.ue_mng_ebit_adj_amt_lc }


## CAMPOS EN USD ##

      column: ue_con_tgmv_amt {
        field: ue_managerial.ue_con_tgmv_amt}
      column: ue_mng_revenue_gross_amt {
        field: ue_managerial.ue_mng_revenue_gross_amt}
      column: ue_mng_coupon_without_iva_amt {
        field: ue_managerial.ue_mng_coupon_without_iva_amt}
      column: ue_mng_net_var_fees_amt {
        field: ue_managerial.ue_mng_net_var_fees_amt}
      column: ue_mng_net_fix_fees_amt {
        field: ue_managerial.ue_mng_net_fix_fees_amt}
      column: ue_mng_promotions_amt {
        field: ue_managerial.ue_mng_promotions_amt}
      column: ue_mng_vendor_margin_amt {
        field: ue_managerial.ue_mng_vendor_margin_amt}
      column: ue_mng_retail_revenues_amt {
        field: ue_managerial.ue_mng_retail_revenues_amt}
      column: ue_con_cmv_amt {
        field: ue_managerial.ue_con_cmv_amt}
      column: ue_con_contracogs_amt {
        field: ue_managerial.ue_con_contracogs_amt}
      column: ue_mng_other_product_margin_amt {
        field: ue_managerial.ue_mng_other_product_margin_amt}
      column: ue_mng_product_net_monetization_amt {
        field: ue_managerial.ue_mng_product_net_monetization_amt}
      column: ue_mng_payments_net_amt {
        field: ue_managerial.ue_mng_payments_net_amt}
      column: ue_mng_payments_revenues_gross_amt {
        field: ue_managerial.ue_mng_payments_revenues_gross_amt}
      column: ue_mng_financing_cost_amt {
        field: ue_managerial.ue_mng_financing_cost_amt}
      column: ue_mng_financing_adj_amt {
        field: ue_managerial.ue_mng_financing_adj_amt}
      column: ue_mng_shipping_net_amt {
        field: ue_managerial.ue_mng_shipping_net_amt}
      column: ue_mng_shipping_revenues_amt {
        field: ue_managerial.ue_mng_shipping_revenues_amt}
      column: ue_mng_shipping_cost_amt {
        field: ue_managerial.ue_mng_shipping_cost_amt}
      column: ue_mng_ads_amt {
        field: ue_managerial.ue_mng_ads_amt}
      column: ue_mng_ads_display_amt {
        field: ue_managerial.ue_mng_ads_display_amt}
      column: ue_mng_ads_pads_amt {
        field: ue_managerial.ue_mng_ads_pads_amt}
      column: ue_con_advertising_revenues_nc_amt {
        field: ue_managerial.ue_con_advertising_revenues_nc_amt}
      column: ue_mng_other_revenues_amt {
        field: ue_managerial.ue_mng_other_revenues_amt}
      column: ue_mng_sales_tax_amt {
        field: ue_managerial.ue_mng_sales_tax_amt}
      column: ue_mng_total_net_monetization_amt {
        field: ue_managerial.ue_mng_total_net_monetization_amt}
      column: ue_con_net_revenues_amt {
        field: ue_managerial.ue_con_net_revenues_amt}
      column: ue_mng_shipping_ops_cost_var_total_amt {
        field: ue_managerial.ue_mng_shipping_ops_cost_var_total_amt}
      column: ue_mng_collection_fees_amt {
        field: ue_managerial.ue_mng_collection_fees_amt}
      column: ue_mng_chargebacks_amt {
        field: ue_managerial.ue_mng_chargebacks_amt}
      column: ue_mng_bad_dev_amt {
        field: ue_managerial.ue_mng_bad_dev_amt}
      column: ue_mng_bpp_amt {
        field: ue_managerial.ue_mng_bpp_amt}
      column: ue_mng_marketing_performance_amt {
        field: ue_managerial.ue_mng_marketing_performance_amt}
      column: ue_mng_cx_var_amt {
        field: ue_managerial.ue_mng_cx_var_amt}
      column: ue_mng_hosting_var_amt {
        field: ue_managerial.ue_mng_hosting_var_amt}
      column: ue_mng_variable_contribution_amt {
        field: ue_managerial.ue_mng_variable_contribution_amt}
      column: ue_mng_ops_cost_fix_total_amt {
        field: ue_managerial.ue_mng_ops_cost_fix_total_amt}
      column: ue_mng_shp_distrib_fix_amt {
        field: ue_managerial.ue_mng_shp_distrib_fix_amt}
      column: ue_mng_marketing_indirecto_amt {
        field: ue_managerial.ue_mng_marketing_indirecto_amt}
      column: ue_mng_lyl_content_total_amt {
        field: ue_managerial.ue_mng_lyl_content_total_amt}
      column: ue_mng_cx_fix_amt {
        field: ue_managerial.ue_mng_cx_fix_amt}
      column: ue_mng_hosting_fix_amt {
        field: ue_managerial.ue_mng_hosting_fix_amt}
      column: ue_mng_fraud_prevention_amt {
        field: ue_managerial.ue_mng_fraud_prevention_amt}
      column: ue_mng_sm_local_amt {
        field: ue_managerial.ue_mng_sm_local_amt}
      column: ue_mng_other_costs_amt {
        field: ue_managerial.ue_mng_other_costs_amt}
      column: ue_mng_direct_contribution_amt {
        field: ue_managerial.ue_mng_direct_contribution_amt}
      column: ue_mng_direct_contribuition_adjustment_amt {
        field: ue_managerial.ue_mng_direct_contribuition_adjustment_amt}
      column: ue_mng_mkt_branding_amt {
        field: ue_managerial.ue_mng_mkt_branding_amt}
      column: ue_mng_product_development_amt {
        field: ue_managerial.ue_mng_product_development_amt}
      column: ue_mng_ga_bu_amt {
        field: ue_managerial.ue_mng_ga_bu_amt}
      column: ue_mng_sm_bu_amt {
        field: ue_managerial.ue_mng_sm_bu_amt}
      column: ue_mng_business_contribution_amt {
        field: ue_managerial.ue_mng_business_contribution_amt}
      column: ue_mng_other_business_margin_adjustment_amt {
        field: ue_managerial.ue_mng_other_business_margin_adjustment_amt}
      column: ue_mng_ga_corporate_amt {
        field: ue_managerial.ue_mng_ga_corporate_amt}
      column: ue_mng_sm_corporate_amt {
        field: ue_managerial.ue_mng_sm_corporate_amt}
      column: ue_mng_business_margin_amt {
        field: ue_managerial.ue_mng_business_margin_amt}
      column: ue_mng_interco_adjustment_amt {
        field: ue_managerial.ue_mng_interco_adjustment_amt}
      column: ue_mng_financing_expenses_below_ebit_amt {
        field: ue_managerial.ue_mng_financing_expenses_below_ebit_amt}
      column: ue_mng_foreign_exchange_adjusment_amt {
        field: ue_managerial.ue_mng_foreign_exchange_adjusment_amt}
      column: ue_mng_other_ebit_adjustment_amt {
        field: ue_managerial.ue_mng_other_ebit_adjustment_amt}
      column: ue_mng_ebit_amt {
        field: ue_managerial.ue_mng_ebit_amt
      }

      column: ue_mng_non_bank_coupons_discount_amt {
        field: ue_managerial.ue_mng_non_bank_coupons_discount_amt   }
      column: ue_mng_bank_coupons_discount_amt {
        field: ue_managerial.ue_mng_bank_coupons_discount_amt  }
      column: ue_mng_return_amt {
        field: ue_managerial.ue_mng_return_amt  }
      column: ue_mng_vendor_cofounded_coupons_amt {
        field: ue_managerial.ue_mng_vendor_cofounded_coupons_amt  }
      column: ue_ccogs_sellout_amt {
        field: ue_managerial.ue_ccogs_sellout_amt  }
      column: ue_ccogs_lumpsum_amt {
        field: ue_managerial.ue_ccogs_lumpsum_amt }
      column: ue_mng_other_vendor_ccogs_amt {
        field: ue_managerial.ue_mng_other_vendor_ccogs_amt  }
      column: ue_mng_other_product_revenues_amt {
        field: ue_managerial.ue_mng_other_product_revenues_amt }
      column: ue_mng_venta_liquidadores_amt {
        field: ue_managerial.ue_mng_venta_liquidadores_amt  }
      column: ue_mng_cmv_venta_liquidadores_amt {
        field: ue_managerial.ue_mng_cmv_venta_liquidadores_amt }
      column: ue_mng_write_off_amt {
        field: ue_managerial.ue_mng_write_off_amt  }
      column: ue_mng_scrap_amt {
        field: ue_managerial.ue_mng_scrap_amt  }
      column: ue_mng_triage_recovery_amt {
        field: ue_managerial.ue_mng_triage_recovery_amt  }
      column: ue_mng_return_to_vendor_amt {
        field: ue_managerial.ue_mng_return_to_vendor_amt  }
      column: ue_mng_other_product_cogs_amt {
        field: ue_managerial.ue_mng_other_product_cogs_amt  }
      column: ue_mng_foreign_exchange_amt {
        field: ue_managerial.ue_mng_foreign_exchange_amt  }
      column: ue_mng_financing_cost_adjustment_amt {
        field: ue_managerial.ue_mng_financing_cost_adjustment_amt }
      column: ue_mng_business_margin_adj_amt {
        field: ue_managerial.ue_mng_business_margin_adj_amt  }
      column: ue_mng_net_monetization_adjustment_amt {
        field: ue_managerial.ue_mng_net_monetization_adjustment_amt  }
      column: ue_mng_sales_exp_amt {
        field: ue_managerial.ue_mng_sales_exp_amt  }
      column: ue_mng_amf_amt {
        field: ue_managerial.ue_mng_amf_amt  }

      column: ue_mng_other_product_cost_amt {
        field: ue_managerial.ue_mng_other_product_cost_amt  }
      column: ue_mng_coupons_recov_amt {
        field: ue_managerial.ue_mng_coupons_recov_amt  }
      column: ue_mng_bank_cofounded_coupons_amt {
        field: ue_managerial.ue_mng_bank_cofounded_coupons_amt  }
      column: ue_mng_credits_cofounded_coupons_amt {
        field: ue_managerial.ue_mng_credits_cofounded_coupons_amt }
      column: ue_mng_returns_liquidations_amt {
        field: ue_managerial.ue_mng_returns_liquidations_amt  }
      column: ue_mng_total_returns_amt {
        field: ue_managerial.ue_mng_total_returns_amt }
      column: ue_mng_bpp_bonif_returns_amt {
        field: ue_managerial.ue_mng_bpp_bonif_returns_amt  }
      column: ue_mng_triage_no_saleable_amt {
        field: ue_managerial.ue_mng_triage_no_saleable_amt }
      column: ue_mng_refurbished_amt {
        field: ue_managerial.ue_mng_returns_mgmt_amt }
      column: ue_mng_returns_mgmt_amt {
        field: ue_managerial.ue_mng_refurbished_amt }
      column: ue_mng_cmv_refurbished_amt {
        field: ue_managerial.ue_mng_cmv_refurbished_amt }
      column: ue_mng_inventory_reg_amt {
        field: ue_managerial.ue_mng_inventory_reg_amt }
      column: ue_mng_vnr_amt {
        field: ue_managerial.ue_mng_vnr_amt }
      column: ue_mng_obsolescence_amt {
        field: ue_managerial.ue_mng_obsolescence_amt }

      column: ue_mng_cmv_gross_amt {
        field: ue_managerial.ue_mng_cmv_gross_amt }
      column: ue_mng_product_net_monetization_adj_amt {
        field: ue_managerial.ue_mng_product_net_monetization_adj_amt }
      column: ue_mng_payments_revenues_amt {
        field: ue_managerial.ue_mng_payments_revenues_amt }
      column: ue_mng_ratably_amt {
        field: ue_managerial.ue_mng_ratably_amt }
      column: ue_mng_ebit_adj_amt {
        field: ue_managerial.ue_mng_ebit_adj_amt }


# --------------------------------
# plan UE - PLANES
# --------------------------------

      column: plan_tgmv {
        field: plan.plan_tgmv
      }
      column: plan_tgmv_lc {
        field: plan.plan_tgmv_lc
      }
      column: plan_tsi {
        field: plan.plan_tsi
      }
      column: plan_revenues_gross {
        field: plan.plan_revenues_gross
      }
      column: plan_revenues_gross_lc {
        field: plan.plan_revenues_gross_lc
      }
      column: plan_ads_revenues {
        field: plan.plan_ads_revenues
      }
      column: plan_ads_revenues_lc {
        field: plan.plan_ads_revenues_lc
      }
      column: plan_payment_revenues {
        field: plan.plan_payment_revenues
      }
      column: plan_payment_revenues_lc {
        field: plan.plan_payment_revenues_lc
      }
      column: plan_payment_cost {
        field: plan.plan_payment_cost
      }
      column: plan_payment_cost_lc {
        field: plan.plan_payment_cost_lc
      }
      column: plan_shipment_revenues {
        field: plan.plan_shipment_revenues
      }
      column: plan_shipment_revenues_lc {
        field: plan.plan_shipment_revenues_lc
      }
      column: plan_bpp_recfast_triage_write_off {
        field: plan.plan_bpp_recfast_triage_write_off
      }
      column: plan_bpp_recfast_triage_write_off_lc {
        field: plan.plan_bpp_recfast_triage_write_off_lc
      }
      column: plan_tax_recovery {
        field: plan.plan_tax_recovery
      }
      column: plan_tax_recovery_lc {
        field: plan.plan_tax_recovery_lc
      }
      column: plan_contracogs {
        field: plan.plan_contracogs
      }
      column: plan_contracogs_lc {
        field: plan.plan_contracogs_lc
      }
      column: plan_shipping_cost {
        field: plan.plan_shipping_cost
      }
      column: plan_shipping_cost_lc {
        field: plan.plan_shipping_cost_lc
      }
      column: plan_shipping_ops_cost_variable {
        field: plan.plan_shipping_ops_cost_variable
      }
      column: plan_shipping_ops_cost_variable_lc {
        field: plan.plan_shipping_ops_cost_variable_lc
      }
      column: plan_shipping_ops_cost_fijo {
        field: plan.plan_shipping_ops_cost_fijo
      }
      column: plan_shipping_ops_cost_fijo_lc {
        field: plan.plan_shipping_ops_cost_fijo_lc
      }
      column: plan_shipping_ops_cost_total {
        field: plan.plan_shipping_ops_cost_total
      }
      column: plan_shipping_ops_cost_total_lc {
        field: plan.plan_shipping_ops_cost_total_lc
      }
      column: plan_cx {
        field: plan.plan_cx
      }
      column: plan_cx_lc {
        field: plan.plan_cx_lc
      }
      column: plan_collection_fees {
        field: plan.plan_collection_fees
      }
      column: plan_collection_fees_lc {
        field: plan.plan_collection_fees_lc
      }
      column: plan_chargebacks {
        field: plan.plan_chargebacks
      }
      column: plan_chargebacks_lc {
        field: plan.plan_chargebacks_lc
      }
      column: plan_sales_taxes {
        field: plan.plan_sales_taxes
      }
      column: plan_sales_taxes_lc {
        field: plan.plan_sales_taxes_lc
      }
      column: plan_bpp {
        field: plan.plan_bpp
      }
      column: plan_bpp_lc {
        field: plan.plan_bpp_lc
      }
      column: plan_bpp_recovery {
        field: plan.plan_bpp_recovery
      }
      column: plan_bpp_recovery_lc {
        field: plan.plan_bpp_recovery_lc
      }
      column: plan_marketing_indirecto {
        field: plan.plan_marketing_indirecto
      }
      column: plan_marketing_indirecto_lc {
        field: plan.plan_marketing_indirecto_lc
      }
      column: plan_marketing_directo {
        field: plan.plan_marketing_directo
      }
      column: plan_marketing_directo_lc {
        field: plan.plan_marketing_directo_lc
      }
      column: plan_bu_local_exp {
        field: plan.plan_bu_local_exp
      }
      column: plan_bu_local_exp_lc {
        field: plan.plan_bu_local_exp_lc
      }
      column: plan_write_off {
        field: plan.plan_write_off
      }
      column: plan_write_off_lc {
        field: plan.plan_write_off_lc
      }
      column: plan_all_exp {
        field: plan.plan_all_exp
      }
      column: plan_all_exp_lc {
        field: plan.plan_all_exp_lc
      }
      column: plan_dc {
        field: plan.plan_dc
      }
      column: plan_dc_lc {
        field: plan.plan_dc_lc
      }
      column: plan_ebit {
        field: plan.plan_ebit
      }
      column: plan_ebit_lc {
        field: plan.plan_ebit_lc
      }
      column: plan_product_cost {
        field: plan.plan_product_cost
      }
      column: plan_product_cost_lc {
        field: plan.plan_product_cost_lc
      }
      column: plan_ppm_full {
        field: plan.plan_ppm_full
      }
      column: plan_ppm_full_lc {
        field: plan.plan_ppm_full_lc
      }
      column: plan_doh {
        field: plan.plan_doh
      }
      column: plan_doi {
        field: plan.plan_doi
      }
      column: plan_aging {
        field: plan.plan_aging
      }
      column: plan_deadwood {
        field: plan.plan_deadwood
      }

# --------------------------------
# fbm_stock_aging_1p
# --------------------------------

      column: available_quantity  {
        field: stock_aging.available_quantity
      }
      column: ag_0_45_available_qty {
        field: stock_aging.ag_0_45_available_qty
      }
      column:  ag_46_60_available_qty {
        field: stock_aging.ag_46_60_available_qty
      }
      column:  ag_61_90_available_qty {
        field: stock_aging.ag_61_90_available_qty
      }
      column:  ag_91_120_available_qty {
        field: stock_aging.ag_91_120_available_qty
      }
      column:  ag_121_180_available_qty {
        field: stock_aging.ag_121_180_available_qty
      }
      column:  ag_greater_180_available_qty {
        field: stock_aging.ag_greater_180_available_qty
      }
      column: ag_greater_60_available_qty {
        field: stock_aging.ag_greater_60_available_qty
      }


      column:  awg_0_45_s_saleable_qty {
        field: stock_aging.awg_0_45_s_saleable_qty
      }
      column:  awg_46_60_s_saleable_qty {
        field: stock_aging.awg_46_60_s_saleable_qty
      }
      column:  awg_61_90_s_saleable_qty {
        field: stock_aging.awg_61_90_s_saleable_qty
      }
      column:  awg_91_120_s_saleable_qty {
        field: stock_aging.awg_91_120_s_saleable_qty
      }
      column:  awg_121_180_s_saleable_qty {
        field: stock_aging.awg_121_180_s_saleable_qty
      }
      column:  awg_greater_180_s_saleable_qty {
        field: stock_aging.awg_greater_180_s_saleable_qty
      }
      column:  awg_greater_60_s_saleable_qty {
        field: stock_aging.awg_greater_60_s_saleable_qty
      }

      column:  awg_0_45_s_saleable_valued_est {
        field: stock_aging.awg_0_45_s_saleable_valued_est
      }
      column:  awg_46_60_s_saleable_valued_est {
        field: stock_aging.awg_46_60_s_saleable_valued_est
      }
      column:  awg_61_90_s_saleable_valued_est {
        field: stock_aging.awg_61_90_s_saleable_valued_est
      }
      column:  awg_91_120_s_saleable_valued_est {
        field: stock_aging.awg_91_120_s_saleable_valued_est
      }
      column:  awg_121_180_s_saleable_valued_est {
        field: stock_aging.awg_121_180_s_saleable_valued_est
      }
      column:  awg_greater_180_s_saleable_valued_est {
        field: stock_aging.awg_greater_180_s_saleable_valued_est
      }
      column:  awg_greater_60_s_saleable_valued_est {
        field: stock_aging.awg_greater_60_s_saleable_valued_est
      }

      column:  awg_0_45_s_saleable_valued_est_lc {
        field: stock_aging.awg_0_45_s_saleable_valued_est_lc
      }
      column:  awg_46_60_s_saleable_valued_est_lc {
        field: stock_aging.awg_46_60_s_saleable_valued_est_lc
      }
      column:  awg_61_90_s_saleable_valued_est_lc {
        field: stock_aging.awg_61_90_s_saleable_valued_est_lc
      }
      column:  awg_91_120_s_saleable_valued_est_lc {
        field: stock_aging.awg_91_120_s_saleable_valued_est_lc
      }
      column:  awg_121_180_s_saleable_valued_est_lc {
        field: stock_aging.awg_121_180_s_saleable_valued_est_lc
      }
      column:  awg_greater_180_s_saleable_valued_est_lc {
        field: stock_aging.awg_greater_180_s_saleable_valued_est_lc
      }
      column:  awg_greater_60_s_saleable_valued_est_lc {
        field: stock_aging.awg_greater_60_s_saleable_valued_est_lc
      }

      column:  stock_saleable_valued_deadwood {
        field: stock_aging.stock_saleable_valued_deadwood
      }

      column: si_30 {
        field: stock_aging.si_30
      }
      column: si_valued_estimated_30 {
        field: stock_aging.si_valued_estimated_30
      }
      column: stock_days_30 {
        field: stock_aging.stock_days_30
      }

    }
  }

################################################

############### M E A S U R E S ################

################################################

# --------------------------------
# DATES
# --------------------------------

  dimension_group: ord_closed_date {
    type: time
    label: ""
    group_label: "Date"
    description: "Fecha de IM desde la Order"
    convert_tz: no
    datatype: timestamp
    timeframes: [
      raw,
      day_of_week,
      day_of_month,
      date,
      week,
      week_of_year,
      month,
      month_name,
      month_num,
      quarter,
      quarter_of_year,
      year,
    ]
    sql: COALESCE(    CAST( ${ord_closed_date_im} AS TIMESTAMP) ,CAST( ${plan_month}AS TIMESTAMP) )  ;;
  }
  dimension: plan_month {
    hidden: yes
    type: date
    datatype: timestamp
    label: ""
    group_label: "Date plan"
    description: "Fecha de Plan - solo meses"
    convert_tz: no
  }
  dimension: ord_closed_date_im {
    hidden: yes
    type: date
    datatype: timestamp
    label: ""
    group_label: "Date IM"
    description: "Fecha de Plan - solo meses"
    convert_tz: no
  }

# --------------------------------
# PERIODS FILTERS
# --------------------------------

  dimension: period_type_im {
    hidden: yes
    type: string
    label: "Period Type im"
    group_label: "Parameters"
  }
  dimension: period_type_plan {
    hidden: yes
    type: string
    label: "Period Type Plan"
    group_label: "Parameters"
  }

  dimension: period_type {
    hidden: yes
    type: string
    label: "Period Type"
    group_label: "Parameters"
    sql: COALESCE (${period_type_im},${period_type_plan}) ;;
  }

  filter: period_filter {
    hidden: yes
    label: "Select Period"
    group_label: "Parameters"
    type: yesno
    sql: "{{select_period_metrics_1p._parameter_value}}" = ${period_type} ;;
  }


  parameter: closed_period_parameter {
    label: "Closed Periods"
    group_label: "Filters"
    description: ""
    type: unquoted
    allowed_value: { label: "Si" value: "si" }
    allowed_value: { label: "No" value: "no" }
    default_value: "no"
  }
  dimension_group: last_date {
    hidden: yes
    type: time
    label: ""
    group_label: "Last_Dates"
    description: "Ultima Fecha Orders"
    convert_tz: no
    datatype: timestamp
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year,
    ]
  }
  filter: closed_period_filter_by_period {
    hidden: yes
    label: "Closed Periods campo"
    group_label: "Filters"
    description: "Al aplicar el filtro solo mostrará los periodos cerrados, teniendo en cuenta como ultimo dia ayer"
    type: yesno
    sql:
    {% if select_period_metrics_1p._parameter_value == "day" %}
    ${ord_closed_date_date} <${last_date_date}
    {% elsif select_period_metrics_1p._parameter_value == "week" %}
    ${ord_closed_date_week} <${last_date_week}
    {% elsif select_period_metrics_1p._parameter_value == "month" %}
    ${ord_closed_date_month} <${last_date_month}
    {% elsif select_period_metrics_1p._parameter_value == "quarter" %}
    ${ord_closed_date_quarter} <${last_date_quarter}
    {% endif %}
    ;;
  }

  filter: closed_period_filter {
    hidden: yes
    label: "Closed Periods filtro"
    group_label: "Filters"
    description: ""
    type: yesno
    sql: case when "{{closed_period_parameter._parameter_value}}" = "si" THEN ${closed_period_filter_by_period}  else
      TRUE end;;
  }

  parameter: remove_goals_future_dates_parameter {
    label: "Remove (Future dates goals)"
    group_label: "Filters"
    description: ""
    type: unquoted
    allowed_value: { label: "Si" value: "si" }
    allowed_value: { label: "No" value: "no" }
    default_value: "si"
  }


  filter: remove_goals_future_dates{
    hidden: yes
    label: "Remove (Future dates goals) filtro"
    group_label: "Filters"
    description: "Al aplicar el filtro se mostrará los periodos futuros para metas"
    type: yesno
    sql: case when "{{remove_goals_future_dates_parameter._parameter_value}}" = "si" THEN ${ord_closed_date_date} <= ${last_date_date} else
     TRUE end;;
  }



  dimension: selected_date{
    label: "Period Date"
    group_label: "Date"
    alpha_sort: yes
    datatype: date
    sql:
      {% if select_period_metrics_1p._parameter_value == "day" %}
       ${ord_closed_date_date}
      {% elsif select_period_metrics_1p._parameter_value == "week" %}
       ${ord_closed_date_week}
      {% elsif select_period_metrics_1p._parameter_value == "month" %}
       ${ord_closed_date_month}
      {% elsif select_period_metrics_1p._parameter_value == "quarter" %}
       ${ord_closed_date_quarter}
      {% else %}
         NULL
      {% endif %}
    ;;
    convert_tz: no
  }

# --------------------------------
# DIMENSIONS
# --------------------------------

  dimension: sit_site_id_im {
    hidden: yes
    type: string
    label: "a.Sit Site ID im"
    group_label: "Dimensions & Filters"
  }
  dimension: sit_site_id_plan {
    hidden: yes
    type: string
    label: "Sit Site ID plan"
    group_label: "Dimensions & Filters"
  }
  dimension: sit_site_id {
    type: string
    label: "a. Sit Site ID"
    group_label: "Dimensions & Filters"
    sql: COALESCE( ${sit_site_id_im},${sit_site_id_plan} );;
  }


  dimension: vertical_domain_im {
    hidden: yes
    type: string
    label: "Vertical Domain im"
    group_label: "Dimensions & Filters"
    description: "Vertical del ítem"
  }
  dimension: vertical_domain_plan {
    hidden: yes
    type: string
    label: "Vertical Domain plan"
    group_label: "Dimensions & Filters"
    description: "Vertical del ítem"
  }
  dimension: vertical_domain {
    type: string
    label: "b. Vertical Domain"
    group_label: "Dimensions & Filters"
    description: "Vertical del ítem"
    sql: COALESCE( ${vertical_domain_im},${vertical_domain_plan});;
  }

  dimension: dom_domain_agg1_im {
    hidden: yes
    type: string
    label: "Dom Domain Agg1 im"
    group_label: "Dimensions & Filters"
    description: "Agrupación de dominio 1"
  }
  dimension: dom_domain_agg1_plan {
    hidden: yes
    type: string
    label: "Dom Domain Agg1 plan"
    group_label: "Dimensions & Filters"
    description: "Agrupación de dominio 1"
  }
  dimension: dom_domain_agg1 {
    type: string
    label: "c. Dom Domain Agg1"
    group_label: "Dimensions & Filters"
    description: "Agrupación de dominio 1"
    sql: COALESCE( ${dom_domain_agg1_im},${dom_domain_agg1_plan});;
  }

  dimension: dom_domain_agg2_im {
    hidden: yes
    type: string
    label: "Dom Domain Agg2 im"
    group_label: "Dimensions & Filters"
    description: "Agrupación de dominio 2"
  }
  dimension: dom_domain_agg2_plan {
    hidden: yes
    type: string
    label: "Dom Domain Agg2 plan"
    group_label: "Dimensions & Filters"
    description: "Agrupación de dominio 2"
  }
  dimension: dom_domain_agg2 {
    type: string
    label: "d. Dom Domain Agg2"
    group_label: "Dimensions & Filters"
    description: "Agrupación de dominio 2"
    sql: COALESCE( ${dom_domain_agg2_im},${dom_domain_agg2_plan});;
  }


  dimension: dom_domain_id_im {
    hidden: yes
    type: string
    label: "Dom Domain ID im"
    group_label: "Dimensions & Filters"
    description: "Agrupación de dominio 2"
  }
  dimension: dom_domain_id_plan {
    hidden: yes
    type: string
    label: "Dom Domain ID plan"
    group_label: "Dimensions & Filters"
    description: "Agrupación de dominio 2"
  }
  dimension: dom_domain_id {
    type: string
    label: "e. Dom Domain ID"
    group_label: "Dimensions & Filters"
    description: "Identificación de dominio del ítem, por la naturaleza de la información"
    sql: COALESCE( ${dom_domain_id_im},${dom_domain_id_plan} );;
  }

  dimension: bu_name {
    type: string
    group_label: "Dimensions & Filters"
    label: "f. BU Name"
    description: "bu_name: Jerarquia comercial"
  }

# --------------------------------
# measures
# --------------------------------

  measure: orders_1p_qty {
    type: sum
    label: "Orders"
    group_label: "TOP LINE"
    value_format_name: decimal_0
    description: "Cantidad de Transacciones por Ordern en 1P"
  }
#  measure: orders_3p_qty {
#    type: sum
#    label: "Orders 3P"
#    group_label: "TOP LINE 3P"
#    value_format_name: decimal_0
#    description: "Cantidad de Transacciones por Ordern en 3P"
#  }
  measure: tgmv_1p {
    type: sum
    label: "TGMV"
    group_label: "TOP LINE"
    value_format_name: usd_0
    description: "Transactional Gross Merchandise Value (USD) en 1P"
  }
#  measure: tgmv_3p {
#    type: sum
#    label: "TGMV 3P"
#    group_label: "TOP LINE 3P"
#    value_format_name: usd_0
#    description: "Transactional Gross Merchandise Value (USD) en 3P"
#  }
  measure: tgmv_1p_lc {
    type: sum
    label: "TGMV LC"
    group_label: "TOP LINE"
    value_format_name: usd_0
    description: "Transactional Gross Merchandise Value (LC) sin mercado Shops ni Proximity"
  }
#  measure: tgmv_3p_lc {
#    type: sum
#    label: "TGMV 3P LC"
#    group_label: "TOP LINE 3P"
#    value_format_name: usd_0
#    description: "Transactional Gross Merchandise Value (LC) sin mercado Shops ni Proximity"
#  }
  measure: gmv_1p {
    type: sum
    label: "GMV"
    group_label: "TOP LINE"
    value_format_name: usd_0
    description: "Gross Merchandise Volume en USD"
  }
#  measure: gmv_3p {
#    type: sum
#    label: "GMV 3P"
#    group_label: "TOP LINE 3P"
#    value_format_name: usd_0
#    description: "Gross Merchandise Volume en USD en 3P"
#  }
  measure: gmv_1p_lc {
    type: sum
    label: "GMV LC"
    group_label: "TOP LINE"
    value_format_name: usd_0
    description: "Gross Merchandise Volume en LC en 1P"
  }
#  measure: gmv_3p_lc {
#    type: sum
#    label: "GMV 3P LC"
#    group_label: "TOP LINE 3P"
#    value_format_name: usd_0
#    description: "Gross Merchandise Volume en LC en 3P"
#  }
  measure: tgmv {
    type: sum
    hidden: yes
  }
#  measure: share_of_site {
#    type: number
#    label: "Share of Site"
#    group_label: "CX"
#    value_format_name: percent_2
#    description: "Participación de las ventas totales del negocio 1P dentro de Meli en su conjunto"
#    sql: safe_divide(${tgmv_1p},${tgmv}) ;;
#  }
  measure: tsi_1p {
    type: sum
    label: "TSI"
    group_label: "TOP LINE"
    value_format_name: decimal_0
    description: "Transactional Successful Items en 1P"
  }
#  measure: tsi_3p {
#    type: sum
#    label: "TSI 3P"
#    group_label: "TOP LINE 3P"
#    value_format_name: decimal_0
#    description: "Transactional Successful Items en 3P"
#  }
  measure: si_1p {
    type: sum
    label: "SI"
    group_label: "TOP LINE"
    value_format_name: decimal_0
    description: "Successful Items"
  }
#  measure: si_3p {
#    type: sum
#    label: "SI 3P"
#    group_label: "TOP LINE 3P"
#    value_format_name: decimal_0
#    description: "Successful Items"
#  }
  measure: asp {
    type: number
    label: "ASP"
    group_label: "TOP LINE"
    value_format_name: decimal_2
    description: "Valor promedio de Venta del item"
    sql: safe_divide(${tgmv_1p},${tsi_1p}) ;;
  }
  measure: gmv_iva_deducted_lc {
    type: sum
    label: "GMV Sin IVA LC"
    group_label: "TOP LINE"
    value_format_name: usd_0
    description: "Gross Merchandise Volume Sin IVA en LC"
  }
  measure: gmv_iva_deducted {
    type: sum
    label: "GMV Sin IVA"
    group_label: "TOP LINE"
    value_format_name: usd_0
    description: "Gross Merchandise Volume Sin IVA en USD"
  }
  measure: qty_visits {
    type: sum
    label: "QTY Visits"
    group_label: "TOP LINE"
    value_format_name: decimal_0
    description: "Cantidad de visitas"
  }
  measure: sell_brands  {
    type: sum
    label: "Sell Brands"
    group_label: "BUY IN"
    description: "Brands con ventas"
    value_format_name: decimal_0
  }
  measure: stock_value {
    type: sum
    label: "Stock Saleable Value usd"
    group_label: "AVAILABILITY"
    description: "Stock SAleable Valued Estimated: Inventario en valor monetario (INVENTORY VALUE), basado en el costo de SKU"
    value_format_name: decimal_2
  }
  measure: stock_value_lc {
    type: sum
    label: "Stock Saleable Value lc"
    group_label: "AVAILABILITY"
    description: "Stock SAleable Valued Estimated: Inventario en valor monetario (INVENTORY VALUE), basado en el costo de SKU"
    value_format_name: decimal_2
  }
  measure: stock_available_valued_estimated {
    type: sum
    label: "Stock Available Valued Estimated"
    description: "STOCK AVAILABLE VALUED ESTIMATED"
    group_label: "STOCK AVAILABLE VALUED ESTIMATED"
    hidden: yes
  }
  measure: stock_saleable {
    type: sum
    group_label: "AVAILABILITY"
    description: "STOCK_SALEABLE"
    label: "Stock Saleable qty"
    value_format_name: decimal_0
  }
#  measure: benefit_sampa {
#    type: sum
#    group_label: "SAMPA"
#    description: ""
#    label: "Crédito Sampa LC"
#    value_format_name: decimal_0
#  }
#  measure: costo_sampa {
#    type: sum
#    group_label: "SAMPA"
#    description: ""
#    label: "Costo Nuevo LC (Costo Sin Sampa)"
#    value_format_name: decimal_0
#  }
  measure: ppm_full_num {
    type: sum
    label: "PPM Full"
    group_label: "PPM IM"
    description: ""
    value_format_name: decimal_2
  }
  measure: ppm_full_num_lc {
    hidden: yes
    type: sum
    label: "PPM Full lc"
    group_label: "PPM IM"
    description: ""
    value_format_name: decimal_2
  }
  measure: ppm_rodagem_num {
    type: sum
    label: "PPM Rodagem"
    group_label: "PPM IM"
    description: ""
    value_format_name: decimal_2
  }
  measure: ppm_rodagem_num_lc {
    type: sum
    label: "PPM Rodagem lc"
    group_label: "PPM IM"
    description: ""
    value_format_name: decimal_2
  }
  measure: denominador_ppm {
    hidden: yes
    type: sum
  }
  measure: denominador_ppm_lc {
    hidden: yes
    type: sum
  }

#  measure: ppm_sampa_num {
#    type: sum
#    label: "PPM Sin Sampa"
#    group_label: "PPM IM"
#    description: ""
#    value_format_name: decimal_2
#  }
  measure: ppm_full {
    type:  number
    label: "PPM Full %"
    group_label: "PPM IM"
    description: ""
    value_format_name: percent_2
    #sql: SAFE_DIVIDE(${ppm_full_num},${gmv_iva_deducted_lc}) ;;
    sql: SAFE_DIVIDE(${ppm_full_num},${denominador_ppm}) ;;
  }
  measure: ppm_rodagem {
    type:  number
    label: "PPM Rodagem %"
    group_label: "PPM IM"
    description: ""
    value_format_name: percent_2
    sql: SAFE_DIVIDE(${ppm_rodagem_num},${denominador_ppm}) ;;
  }
#  measure: ppm_sampa {
#    type:  number
#    label: "PPM Sin Sampa %"
#    group_label: "PPM IM"
#    description: ""
#    value_format_name: percent_2
#    sql: SAFE_DIVIDE(${ppm_sampa_num},${gmv_iva_deducted_lc}) ;;
#  }
  measure: agreement_amount_estimated {
    type: sum
    label: "Agreement Amount"
    group_label: "AGREEMENTS"
    description: "Monto total del acuerdo (en USD)"
    value_format_name: decimal_0
  }
  measure: agreement_amount_estimated_lc {
    type: sum
    label: "Agreement Amount LC"
    group_label: "AGREEMENTS"
    description: "Monto total del acuerdo (En moneda local)"
    value_format_name: decimal_0
  }

# --------------------------------
# Pricing
# --------------------------------

  measure: ite_site_current_price {
    type: average
    label: "Current Price"
    group_label: "PRICING"
    description: "ITE_SITE_CURRENT_PRICE - Precio actual del item id"
    value_format_name: decimal_1
  }
  measure: visits {
    type: sum
    hidden: yes
  }
  measure: pi_vista_pond_visits {
    type: sum
    hidden: yes
  }
  measure: pi_visits {
    type: number
    label: "Price Index Visits"
    group_label: "PRICING"
    description: "PI_VISITS ponderado por Visitas"
    value_format_name: decimal_2
    sql: safe_divide(${pi_vista_pond_visits},${visits}) ;;
  }
  measure: pi_visits_weighted {
    type: number
    label: "Price Index Visits Ponderado"
    group_label: "PRICING"
    description: "PI_VISITS ponderado por Visitas y por rango de PI (0,3 - 3)"
    value_format_name: decimal_2
    sql: CASE WHEN safe_divide(${pi_vista_pond_visits},${visits}) BETWEEN 0.3 AND 3 THEN
      safe_divide(${pi_vista_pond_visits},${visits}) END;;
  }

# --------------------------------
# Pricing Coverage
# --------------------------------

  measure: visits_coverage_items {
    type: sum
    hidden: yes
  }
  measure: visits_active_items {
    type: sum
    hidden: yes
  }
  measure: visits_coverage {
    type: number
    label: "Pricing Coverage (Visits)"
    group_label: "PRICING"
    description: "Cobertura Pricing según visitas"
    value_format_name: percent_2
    sql: safe_divide(${visits_coverage_items},${visits_active_items}) ;;
  }

# --------------------------------
# Pricing NRT
# --------------------------------


# CAMPOS CLAVES PREVIOS
# ______________________

  measure: pl1p_time_in_status_perc {
    type: sum
    hidden: yes
  }
  measure: total_visits {
    hidden: yes
    type: sum
  }
  measure: price_index_vista {
    hidden: yes
    type: sum
  }
  measure: visits_1if {
    hidden: yes
    type: sum
  }
  measure: visits_2if {
    hidden: yes
    type: sum
  }
  measure: visits_3if {
    hidden: yes
    type: sum
  }
  measure: total_visits_active {
    hidden: yes
    type: sum
  }
  measure: automatic_price {
    hidden: yes
    type: sum
  }
  measure: total_visits_bb_active {
    hidden: yes
    type: sum
  }
  measure: visits_1p_bb_active {
    hidden: yes
    type: sum
  }
  measure: pc_landed_visits {
    hidden: yes
    type: sum
  }
  measure: pc_visits_total {
    hidden: yes
    type: sum
  }
  measure: pc_box_visits {
    hidden: yes
    type: sum
  }
  measure: num_price_index {
    hidden: yes
    type: sum
  }
  measure: den_price_index {
    hidden: yes
    type: sum
  }

# MEASURES FINALES
# __________________

  measure: price_index {
    type: number
    value_format_name: decimal_2
    group_label: "PRICING"
    label: "Price Index"
    description: "Price Index"
    sql: SAFE_DIVIDE(${num_price_index},
      ${den_price_index});;
  }
  measure: 1if {
    type: number
    value_format_name: percent_2
    group_label: "PRICING"
    description: "1IF"
    label: "1IF"
    sql: SAFE_DIVIDE(${visits_1if},${total_visits_active}) ;;
  }
  measure: 2if {
    type: number
    value_format_name: percent_2
    group_label: "PRICING"
    description: "2IF"
    label: "2IF"
    sql: SAFE_DIVIDE(${visits_2if},${total_visits_active}) ;;
  }
  measure: 3if {
    type: number
    value_format_name: percent_2
    group_label: "PRICING"
    description: "3IF"
    label: "3IF"
    sql: SAFE_DIVIDE(${visits_3if},${total_visits_active});;
  }
  measure: visits_automatic_price {
    type: number
    value_format_name: percent_2
    group_label: "PRICING"
    description: "Visitas en precio automático, incluyen visitas de todos los participantes de la Buybox"
    label: "Visits Automatic Price"
    sql: SAFE_DIVIDE(${automatic_price},${total_visits_active}) ;;
  }
  measure: visits_lost_buybox {
    hidden: no
    type: number
    label: "Visits_Lost_BuyBox"
    description: "Total de Visitas para BuyBox menos el total de visitas en 1P (Items Activos)"
    sql: ${total_visits_bb_active} - ${visits_1p_bb_active} ;;
  }
  measure: price_competitiveness_landed {
    type: number
    value_format_name: percent_2
    label: "Price Competitiveness Landed"
    group_label: "PRICING"
    description: "Visitas Competitivas a precio vista (Landed)"
    sql:  SAFE_DIVIDE(${pc_landed_visits},${pc_visits_total});;
  }

  measure: price_competitiveness_box {
    type: number
    value_format_name: percent_2
    label: "Price Competitiveness Box"
    group_label: "PRICING"
    description: "Visitas Competitivas a precio vista (Box)"
    sql:  SAFE_DIVIDE(${pc_box_visits},${pc_visits_total});;
  }

# --------------------------------
# Selection Funnel
# --------------------------------

  measure: ll_act {
    type: sum
    label: "LL activos"
    description: "LL activos"
    group_label: "Selection Funnel"
  }
  measure: ll_act_views {
    type: sum
    label: "Vistas LL activos"
    description: "Vistas LL activos"
    group_label: "Selection Funnel"
  }
  measure: ll_act_sales {
    type: sum
    label: "Ventas LL activos"
    description: "Ventas LL activos"
    group_label: "Selection Funnel"
  }

# --------------------------------
# OOS
# --------------------------------

  measure: num_oos_total {
    type: sum
    hidden: yes
  }
  measure: den_oos_total {
    type: sum
    hidden: yes
  }
  measure: num_oos_curva {
    type: sum
    hidden: yes
  }
  measure: den_oos_curva {
    type: sum
    hidden: yes
  }
  measure: oos_total {
    type: number
    label: "OOS Total"
    group_label: "BUY IN"
    description: ""
    value_format_name: percent_2
    sql: SAFE_DIVIDE(${num_oos_total},${den_oos_total}) ;;
  }
  measure: oos_curva {
    type: number
    label: "OOS Curva Head"
    group_label: "BUY IN"
    description: ""
    value_format_name: percent_2
    sql: SAFE_DIVIDE(${num_oos_curva},${den_oos_curva}) ;;
  }
  measure: tgmv_lost {
    type: sum
    label: "TGMV lost USD"
    group_label: "BUY IN"
    description: ""
    value_format_name: usd_0
  }

# --------------------------------
# UE
# --------------------------------

  measure: revenues_lc {
    label: "Revenues Lc"
    type: sum
    value_format_name: decimal_2
    group_label: "UE Output"
    description: ""
  }
  measure: revenues_usd {
    label: "Revenues usd"
    type: sum
    value_format_name: decimal_2
    group_label: "UE Output"
    description: ""
  }
  measure: cupones_lc {
    label: "Cupones Lc"
    type: sum
    value_format_name: decimal_2
    group_label: "UE Output"
    description: ""
  }
  measure: cupones_usd {
    label: "Cupones usd"
    type: sum
    value_format_name: decimal_2
    group_label: "UE Output"
    description: ""
  }
  measure: other_revenues_lc {
    label: "Other Revenues Lc"
    type: sum
    value_format_name: decimal_2
    group_label: "UE Output"
    description: ""
  }
  measure: other_revenues_usd {
    label: "Other Revenues usd"
    type: sum
    value_format_name: decimal_2
    group_label: "UE Output"
    description: ""
  }
  measure: bpp_recovery_lc {
    label: "BPP Recovery Lc"
    type: sum
    value_format_name: decimal_2
    group_label: "UE Output"
    description: ""
  }
  measure: bpp_recovery_usd {
    label: "BPP Recovery usd"
    type: sum
    value_format_name: decimal_2
    group_label: "UE Output"
    description: ""
  }
  measure: p_cost_lc {
    label: "P. Cost Lc"
    type: sum
    value_format_name: decimal_2
    group_label: "UE Output"
    description: ""
  }
  measure: p_cost_usd {
    label: "P. Cost usd"
    type: sum
    value_format_name: decimal_2
    group_label: "UE Output"
    description: ""
  }
  measure: bu_local_exp_lc {
    label: "Bu local exp Lc"
    type: sum
    value_format_name: decimal_2
    group_label: "UE Output"
    description: ""
  }
  measure: bu_local_exp_usd {
    label: "Bu local exp usd"
    type: sum
    value_format_name: decimal_2
    group_label: "UE Output"
    description: ""
  }
  measure: advertising_revenues_lc {
    label: "Adv Revenues Lc"
    type: sum
    value_format_name: decimal_2
    group_label: "UE Output"
    description: ""
  }
  measure: advertising_revenues_usd {
    label: "Adv Revenues usd"
    type: sum
    value_format_name: decimal_2
    group_label: "UE Output"
    description: ""
  }
  measure: tax_recovery_lc {
    label: "Tax recovery Lc"
    type: sum
    value_format_name: decimal_2
    group_label: "UE Output"
    description: ""
  }
  measure: tax_recovery_usd {
    label: "tax recovery usd"
    type: sum
    value_format_name: decimal_2
    group_label: "UE Output"
    description: ""
  }
  measure: shipping_revenues_lc {
    label: "Shipping revenues Lc"
    type: sum
    value_format_name: decimal_2
    group_label: "UE Output"
    description: ""
  }
  measure: shipping_revenues_usd {
    label: "Shipping revenues usd"
    type: sum
    value_format_name: decimal_2
    group_label: "UE Output"
    description: ""
  }
  measure: shipping_cost_fijo_usd {
    label: "Shipping cost fijo usd"
    type: sum
    value_format_name: decimal_2
    group_label: "UE Output"
    description: ""
  }
  measure: shipping_cost_fijo_lc {
    label: "Shipping cost fijo Lc"
    type: sum
    value_format_name: decimal_2
    group_label: "UE Output"
    description: ""
  }
  measure: shipping_cost_variable_usd {
    label: "Shipping cost Variable usd"
    type: sum
    value_format_name: decimal_2
    group_label: "UE Output"
    description: ""
  }
  measure: shipping_cost_variable_lc {
    label: "Shipping cost Variable Lc"
    type: sum
    value_format_name: decimal_2
    group_label: "UE Output"
    description: ""
  }
  measure: ship_ops_cost_lc {
    label: "Ship ops cost Lc"
    type: sum
    value_format_name: decimal_2
    group_label: "UE Output"
    description: ""
  }
  measure: ship_ops_cost_usd {
    label: "Ship ops cost usd"
    type: sum
    value_format_name: decimal_2
    group_label: "UE Output"
    description: ""
  }
  measure: sales_taxes_lc {
    label: "Sales taxes Lc"
    type: sum
    value_format_name: decimal_2
    group_label: "UE Output"
    description: ""
  }
  measure: sales_taxes_usd {
    label: "Sales taxes usd"
    type: sum
    value_format_name: decimal_2
    group_label: "UE Output"
    description: ""
  }
  measure: payments_revenue_lc {
    label: "Payments revenue Lc"
    type: sum
    value_format_name: decimal_2
    group_label: "UE Output"
    description: ""
  }
  measure: payments_revenue_usd {
    label: "Payments revenue usd"
    type: sum
    value_format_name: decimal_2
    group_label: "UE Output"
    description: ""
  }
  measure: payments_cost_lc {
    label: "Payments cost Lc"
    type: sum
    value_format_name: decimal_2
    group_label: "UE Output"
    description: ""
  }
  measure: payments_cost_usd {
    label: "Payments cost usd"
    type: sum
    value_format_name: decimal_2
    group_label: "UE Output"
    description: ""
  }
  measure: marketing_indirecto_lc {
    label: "Marketing indirecto Lc"
    type: sum
    value_format_name: decimal_2
    group_label: "UE Output"
    description: ""
  }
  measure: marketing_indirecto_usd {
    label: "Marketing indirecto usd"
    type: sum
    value_format_name: decimal_2
    group_label: "UE Output"
    description: ""
  }
  measure: marketing_directo_lc {
    label: "Marketing directo Lc"
    type: sum
    value_format_name: decimal_2
    group_label: "UE Output"
    description: ""
  }
  measure: marketing_directo_usd {
    label: "Marketing directo usd"
    type: sum
    value_format_name: decimal_2
    group_label: "UE Output"
    description: ""
  }
#  measure: direct_contribution_lc {
#    label: "DC Direct Contribution LC"
#    type: sum
#    value_format_name: decimal_2
#    group_label: "UE Output"
#    description: ""
#  }
#  measure: direct_contribution_usd {
#    label: "DC Direct Contribution usd"
#    type: sum
#    value_format_name: decimal_2
#    group_label: "UE Output"
#    description: ""
#  }
  measure: other_cogs_usd {
    label: "Other cogs usd"
    type: sum
    value_format_name: decimal_2
    group_label: "UE Output"
    description: ""
  }
  measure: other_cogs_lc {
    label: "Other cogs Lc"
    type: sum
    value_format_name: decimal_2
    group_label: "UE Output"
    description: ""
  }
  measure: product_cost_gross_usd {
    label: "Product cost gross usd"
    type: sum
    value_format_name: decimal_2
    group_label: "UE Output"
    description: ""
  }
  measure: product_cost_gross_lc {
    label: "Product cost gross Lc"
    type: sum
    value_format_name: decimal_2
    group_label: "UE Output"
    description: ""
  }
  measure: cx_directo_lc {
    label: "CX directo Lc"
    type: sum
    value_format_name: decimal_2
    group_label: "UE Output"
    description: ""
  }
  measure: cx_directo_usd {
    label: "CX directo usd"
    type: sum
    value_format_name: decimal_2
    group_label: "UE Output"
    description: ""
  }
  measure: cx_indirecto_lc {
    label: "CX indirecto Lc"
    type: sum
    value_format_name: decimal_2
    group_label: "UE Output"
    description: ""
  }
  measure: cx_indirecto_usd {
    label: "CX indirecto usd"
    type: sum
    value_format_name: decimal_2
    group_label: "UE Output"
    description: ""
  }
  measure: collection_fees_lc {
    label: "Collection fees Lc"
    type: sum
    value_format_name: decimal_2
    group_label: "UE Output"
    description: ""
  }
  measure: collection_fees_usd {
    label: "Collection fees usd"
    type: sum
    value_format_name: decimal_2
    group_label: "UE Output"
    description: ""
  }
  measure: chagebks_bd_lc {
    label: "Chagebks bd Lc"
    type: sum
    value_format_name: decimal_2
    group_label: "UE Output"
    description: ""
  }
  measure: chagebks_bd_usd {
    label: "Chagebks bd usd"
    type: sum
    value_format_name: decimal_2
    group_label: "UE Output"
    description: ""
  }
  measure: bpp_lc {
    label: "BPP Lc"
    type: sum
    value_format_name: decimal_2
    group_label: "UE Output"
    description: ""
  }
  measure: bpp_usd {
    label: "BPP usd"
    type: sum
    value_format_name: decimal_2
    group_label: "UE Output"
    description: ""
  }
  measure: contracogs_usd {
    label: "Contracogs usd"
    type: sum
    value_format_name: decimal_2
    group_label: "UE Output"
    description: ""
  }
  measure: contracogs_lc {
    label: "Contracogs Lc"
    type: sum
    value_format_name: decimal_2
    group_label: "UE Output"
    description: ""
  }
  measure: ppm_rodagem_lc {
    label: "PPM rodagem Lc"
    type: sum
    value_format_name: decimal_2
    group_label: "UE Output"
    description: ""
  }
  measure: ppm_rodagem_usd {
    label: "PPM rodagem usd"
    type: sum
    value_format_name: decimal_2
    group_label: "UE Output"
    description: ""
  }
  measure: ppm_rodagem_porcent {
    label: "PPM rodagem %"
    type: number
    value_format_name: percent_2
    group_label: "UE Output"
    description: ""
    sql: safe_diVide(${ppm_rodagem_lc},${revenues_lc}) ;;
  }
  measure: ppm_governance_lc_porcent {
    label: "PPM full gross%"
    type: number
    value_format_name: percent_2
    group_label: "UE Output"
    description: ""
    sql: safe_diVide(${ppm_governance_lc},${revenues_lc}) ;;
  }
  measure: direct_contribution_porc {
    label: "DC Direct Contribution %"
    type: number
    value_format_name: percent_2
    group_label: "UE Output"
    description: ""
    sql: safe_diVide(${direct_contribution_lc},${revenues_lc}) ;;
  }
  measure: ppm_governance_lc {
    label: "PPM full gross Lc"
    type: sum
    value_format_name: decimal_2
    group_label: "UE Output"
    description: ""
  }
  measure: ppm_governance_usd {
    label: "PPM full gross usd"
    type: sum
    value_format_name: decimal_2
    group_label: "UE Output"
    description: ""
  }
  measure: alloc_exp_lc {
    label: "Alloc exp Lc"
    type: sum
    value_format_name: decimal_2
    group_label: "UE Output"
    description: ""
  }
  measure: alloc_exp_usd {
    label: "Alloc exp usd"
    type: sum
    value_format_name: decimal_2
    group_label: "UE Output"
    description: ""
  }
  measure: ebit_lc {
    label: "EBIT Lc"
    type: sum
    value_format_name: decimal_2
    group_label: "UE Output"
    description: ""
  }
  measure: ebit_usd {
    label: "EBIT usd"
    type: sum
    value_format_name: decimal_2
    group_label: "UE Output"
    description: ""
  }
  measure: usgaap_amf_lc {
    label: "USGAAP amf Lc"
    type: sum
    value_format_name: decimal_2
    group_label: "UE Output"
    description: ""
  }
  measure: usgaap_amf_usd {
    label: "USGAAP amf usd"
    type: sum
    value_format_name: decimal_2
    group_label: "UE Output"
    description: ""
  }
  measure: usgaap_vnr_lc {
    label: "USGAAP VNr Lc"
    type: sum
    value_format_name: decimal_2
    group_label: "UE Output"
    description: ""
  }
  measure: usgaap_vnr_usd {
    label: "USGAAP VNr usd"
    type: sum
    value_format_name: decimal_2
    group_label: "UE Output"
    description: ""
  }
  measure: usgaap_obsolesencia_usd {
    label: "USGAAP obsolesencia usd"
    type: sum
    value_format_name: decimal_2
    group_label: "UE Output"
    description: ""
  }
  measure: usgaap_obsolesencia_lc {
    label: "USGAAP obsolesencia Lc"
    type: sum
    value_format_name: decimal_2
    group_label: "UE Output"
    description: ""
  }
  measure: write_offs_usd {
    label: "Write offs usd"
    type: sum
    value_format_name: decimal_2
    group_label: "UE Output"
    description: ""
  }
  measure: write_offs_lc {
    label: "Write offs Lc"
    type: sum
    value_format_name: decimal_2
    group_label: "UE Output"
    description: ""
  }
  measure: usgaap_prov_dev_futuras_usd {
    label: "USGAAP prov devolution futuras usd"
    type: sum
    value_format_name: decimal_2
    group_label: "UE Output"
    description: ""
  }
  measure: usgaap_prov_dev_futuras_lc {
    label: "USGAAP prov devolution futuras Lc"
    type: sum
    value_format_name: decimal_2
    group_label: "UE Output"
    description: ""
  }
  measure: triage_usd {
    label: "Triage usd"
    type: sum
    value_format_name: decimal_2
    group_label: "UE Output"
    description: ""
  }
  measure: triage_lc {
    label: "Triage Lc"
    type: sum
    value_format_name: decimal_2
    group_label: "UE Output"
    description: ""
  }


  measure: bpp_nc_lc {
    label: "BPP NC Lc"
    type: sum
    value_format_name: decimal_2
    group_label: "UE Output"
    description: ""
  }
  measure: bpp_nc_usd {
    label: "BPP NC usd"
    type: sum
    value_format_name: decimal_2
    group_label: "UE Output"
    description: ""
  }
  measure: ppm_ajuste_lc {
    label: "PPM Ajuste Lc"
    type: sum
    value_format_name: decimal_2
    group_label: "UE Mascara"
    description: ""
  }
  measure: ppm_ajuste_usd {
    label: "PPM Ajuste usd"
    type: sum
    value_format_name: decimal_2
    group_label: "UE Mascara"
    description: ""
  }
  measure: forex_lc {
    label: "Forex Lc"
    type: sum
    value_format_name: decimal_2
    group_label: "UE Output"
    description: ""
  }
  measure: forex_usd {
    label: "Forex usd"
    type: sum
    value_format_name: decimal_2
    group_label: "UE Output"
    description: ""
  }
  measure: dc_ajuste_lc {
    label: "DC Ajuste lc"
    type: sum
    value_format_name: decimal_2
    group_label: "UE Mascara"
    description: ""
  }
  measure: dc_ajuste_usd {
    label: "DC Ajuste usd"
    type: sum
    value_format_name: decimal_2
    group_label: "UE Mascara"
    description: ""
  }
  measure: ebit_ajuste_lc {
    label: "EBIT Ajuste lc"
    type: sum
    value_format_name: decimal_2
    group_label: "UE Mascara"
    description: ""
  }
  measure: ebit_ajuste_usd {
    label: "EBIT Ajuste usd"
    type: sum
    value_format_name: decimal_2
    group_label: "UE Mascara"
    description: ""
  }
  measure: shipping_cost_lc {
    label: "Shipping Cost lc"
    type: sum
    group_label: "UE Output"
    description: ""
  }
  measure: shipping_cost_usd {
    label: "Shipping Cost usd"
    type: sum
    group_label: "UE Output"
    description: ""
  }

  measure: ppm_cierre_lc {
    label: "PPM Cierre lc"
    type: sum
    group_label: "UE Output"
    description: ""
  }
  measure: ppm_cierre_usd {
    label: "PPM Cierre usd"
    type: sum
    group_label: "UE Output"
    description: ""
  }

# --------------------------------
# UE OUTPUT over TGMV
# --------------------------------


  measure: other_revenues_over_tgmv_lc {
    label: "Other Revenues over TGMV"
    type: number
    value_format_name: percent_2
    group_label: "UE Output over TGMV LC"
    description: ""
    sql:  safe_divide(${other_revenues_lc},${tgmv_1p_lc}) ;;
  }
  measure: bu_local_exp_over_tgmv_lc {
    label: "Bu local exp over TGMV"
    type: number
    value_format_name: percent_2
    group_label: "UE Output over TGMV LC"
    description: ""
    sql:  safe_divide(${bu_local_exp_lc},${tgmv_1p_lc}) ;;
  }
  measure: tax_recovery_over_tgmv_lc {
    label: "Tax recovery over TGMV"
    type: number
    value_format_name: percent_2
    group_label: "UE Output over TGMV LC"
    description: ""
    sql:  safe_divide(${tax_recovery_lc},${tgmv_1p_lc}) ;;
  }
  measure: shipping_revenues_over_tgmv_lc {
    label: "Shipping revenues over TGMV"
    type: number
    value_format_name: percent_2
    group_label: "UE Output over TGMV LC"
    description: ""
    sql:  safe_divide(${shipping_revenues_lc},${tgmv_1p_lc}) ;;
  }
  measure: shipping_cost_fijo_over_tgmv_lc {
    label: "Shipping cost fijo over TGMV"
    type: number
    value_format_name: percent_2
    group_label: "UE Output over TGMV LC"
    description: ""
    sql:  safe_divide(${shipping_cost_fijo_lc},${tgmv_1p_lc}) ;;
  }
  measure: shipping_cost_variable_over_tgmv_lc {
    label: "Shipping cost Variable over TGMV"
    type: number
    value_format_name: percent_2
    group_label: "UE Output over TGMV LC"
    description: ""
    sql:  safe_divide(${shipping_cost_variable_lc},${tgmv_1p_lc}) ;;
  }
  measure: ship_ops_cost_over_tgmv_lc {
    label: "Ship ops cost over TGMV"
    type: number
    value_format_name: percent_2
    group_label: "UE Output over TGMV LC"
    description: ""
    sql:  safe_divide(${ship_ops_cost_lc} ,${tgmv_1p_lc}) ;;
  }
  measure: sales_taxes_over_tgmv_lc {
    label: "Sales taxes over TGMV"
    type: number
    value_format_name: percent_2
    group_label: "UE Output over TGMV LC"
    description: ""
    sql:  safe_divide(${sales_taxes_lc} ,${tgmv_1p_lc}) ;;
  }
  measure: payments_revenue_over_tgmv_lc {
    label: "Payments revenue lc"
    type: number
    value_format_name: percent_2
    group_label: "UE Output over TGMV LC"
    description: ""
    sql:  safe_divide(${payments_revenue_lc} ,${tgmv_1p_lc}) ;;
  }
  measure: payments_cost_over_tgmv_lc {
    label: "Payments cost over TGMV"
    type: number
    value_format_name: percent_2
    group_label: "UE Output over TGMV LC"
    description: ""
    sql:  safe_divide(${payments_cost_lc} ,${tgmv_1p_lc}) ;;
  }
  measure: marketing_indirecto_over_tgmv_lc {
    label: "Marketing indirecto over TGMV"
    type: number
    value_format_name: percent_2
    group_label: "UE Output over TGMV LC"
    description: ""
    sql:  safe_divide(${marketing_indirecto_lc} ,${tgmv_1p_lc}) ;;
  }
  measure: marketing_directo_over_tgmv_lc {
    label: "Marketing directo over TGMV"
    type: number
    value_format_name: percent_2
    group_label: "UE Output over TGMV LC"
    description: ""
    sql:  safe_divide(${marketing_directo_lc} ,${tgmv_1p_lc}) ;;
  }
  measure: other_cogs_over_tgmv_lc {
    label: "Other Cogs over TGMV"
    type: number
    value_format_name: percent_2
    group_label: "UE Output over TGMV LC"
    description: ""
    sql:  safe_divide(${other_cogs_lc} ,${tgmv_1p_lc}) ;;
  }
  measure: product_cost_gross_over_tgmv_lc {
    label: "Product Cost gross over TGMV"
    type: number
    value_format_name: percent_2
    group_label: "UE Output over TGMV LC"
    description: ""
    sql:  safe_divide(${product_cost_gross_lc} ,${tgmv_1p_lc}) ;;
  }
  measure: cx_directo_over_tgmv_lc {
    label: "CX directo over TGMV"
    type: number
    value_format_name: percent_2
    group_label: "UE Output over TGMV LC"
    description: ""
    sql:  safe_divide(${cx_directo_lc} ,${tgmv_1p_lc}) ;;
  }
  measure: cx_indirecto_over_tgmv_lc {
    label: "CX indirecto over TGMV"
    type: number
    value_format_name: percent_2
    group_label: "UE Output over TGMV LC"
    description: ""
    sql:  safe_divide(${cx_indirecto_lc} ,${tgmv_1p_lc}) ;;
  }
  measure: collection_fees_over_tgmv_lc {
    label: "Collection fees over TGMV"
    type: number
    value_format_name: percent_2
    group_label: "UE Output over TGMV LC"
    description: ""
    sql:  safe_divide(${collection_fees_lc} ,${tgmv_1p_lc}) ;;
  }
  measure: chagebks_bd_over_tgmv_lc {
    label: "Chagebks bd over TGMV"
    type: number
    value_format_name: percent_2
    group_label: "UE Output over TGMV LC"
    description: ""
    sql:  safe_divide(${chagebks_bd_lc} ,${tgmv_1p_lc}) ;;
  }
  measure: bpp_over_tgmv_lc {
    label: "BPP over TGMV"
    type: number
    value_format_name: percent_2
    group_label: "UE Output over TGMV LC"
    description: ""
    sql:  safe_divide(${bpp_lc} ,${tgmv_1p_lc}) ;;
  }
  measure: contracogs_over_tgmv_lc {
    label: "Contracogs over TGMV"
    type: number
    value_format_name: percent_2
    group_label: "UE Output over TGMV LC"
    description: ""
    sql:  safe_divide(${contracogs_lc} ,${tgmv_1p_lc}) ;;
  }
  measure: usgaap_amf_over_tgmv_lc {
    label: "USGAAP amf over TGMV"
    type: number
    value_format_name: percent_2
    group_label: "UE Output over TGMV LC"
    description: ""
    sql:  safe_divide(${usgaap_amf_lc} ,${tgmv_1p_lc}) ;;
  }
  measure: usgaap_vnr_over_tgmv_lc {
    label: "USGAAP VNr over TGMV"
    type: number
    value_format_name: percent_2
    group_label: "UE Output over TGMV LC"
    description: ""
    sql:  safe_divide(${usgaap_vnr_lc} ,${tgmv_1p_lc}) ;;
  }
  measure: usgaap_obsolesencia_over_tgmv_lc {
    label: "USGAAP obsolesencia over TGMV"
    type: number
    value_format_name: percent_2
    group_label: "UE Output over TGMV LC"
    description: ""
    sql:  safe_divide(${usgaap_obsolesencia_lc} ,${tgmv_1p_lc}) ;;
  }
  measure: write_offs_over_tgmv_lc {
    label: "Write offs over TGMV"
    type: number
    value_format_name: percent_2
    group_label: "UE Output over TGMV LC"
    description: ""
    sql:  safe_divide(${write_offs_lc} ,${tgmv_1p_lc}) ;;
  }
  measure: usgaap_prov_dev_futuras_over_tgmv_lc {
    label: "USGAAP prov devolution futuras over TGMVlc"
    type: number
    value_format_name: percent_2
    group_label: "UE Output over TGMV LC"
    description: ""
    sql:  safe_divide(${usgaap_prov_dev_futuras_lc} ,${tgmv_1p_lc}) ;;
  }
  measure: triage_over_tgmv_lc {
    label: "Triage over TGMVlc"
    type: number
    value_format_name: percent_2
    group_label: "UE Output over TGMV LC"
    description: ""
    sql:  safe_divide(${triage_lc} ,${tgmv_1p_lc}) ;;
  }
  measure: advertising_revenues_over_tgmv_lc {
    label: "Adv Revenues over TGMV"
    type: number
    value_format_name: percent_2
    group_label: "UE Output over TGMV LC"
    description: ""
    sql:  safe_divide(${advertising_revenues_lc} ,${tgmv_1p_lc}) ;;
  }
  measure: direct_contribution_over_tgmv_lc {
    label: "DC Direct Contribution over TGMV"
    type: number
    value_format_name: percent_2
    group_label: "UE Output over TGMV LC"
    description: ""
    sql:  safe_divide(${direct_contribution_lc} ,${tgmv_1p_lc}) ;;
  }
  measure: m_ebit_over_tgmv_lc {
    label: "Ebit Mask over TGMV"
    type: number
    value_format_name: percent_2
    group_label: "UE Output over TGMV LC"
    description: ""
    sql:  safe_divide(${m_ebit_lc} ,${tgmv_1p_lc}) ;;
  }
  measure: ppm_adjusted_over_tgmv_lc {
    label: "PPM Gross over TGMV"
    type: number
    value_format_name: percent_2
    group_label: "UE Output over TGMV LC"
    description: ""
    sql:  safe_divide(${ppm_adjusted_lc} ,${tgmv_1p_lc}) ;;
  }

# --------------------------------
# MEASURES - UE MANAGERIAL
# --------------------------------

  measure: ue_con_tgmv_amt_lc {
    label: "Tgmv MNG LC"
    group_label: "UE Managerial"
    value_format_name: decimal_2
    type: sum
    description: ""
  }
  measure: ue_con_tsi_amt_lc {
    label: "Tsi"
    group_label: "UE Managerial"
    type: sum
    value_format_name: decimal_2
    description: ""
  }
  measure: ue_mng_revenue_gross_amt_lc {
    label: "Revenues Gross LC"
    group_label: "UE Managerial"
    type: sum
    value_format_name: decimal_2
    description: ""
  }
  measure: ue_mng_coupon_without_iva_amt_lc {
    label: "Coupons LC"
    group_label: "UE Managerial"
    type: sum
    value_format_name: decimal_2
    description: ""
  }
  measure: ue_mng_net_var_fees_amt_lc {
    label: "Net Variable Fees LC"
    group_label: "UE Managerial"
    type: sum
    value_format_name: decimal_2
    description: ""
  }
  measure: ue_mng_net_fix_fees_amt_lc {
    label: "Net Fix Fees LC"
    group_label: "UE Managerial"
    type: sum
    value_format_name: decimal_2
    description: ""
  }
  measure: ue_mng_promotions_amt_lc {
    label: "Promotions LC"
    group_label: "UE Managerial"
    type: sum
    value_format_name: decimal_2
    description: ""
  }
  measure: ue_mng_vendor_margin_amt_lc {
    label: "Core Product Margin LC"
    group_label: "UE Managerial"
    type: sum
    value_format_name: decimal_2
    description: ""
  }
  measure: ue_mng_retail_revenues_amt_lc {
    label: "Product Revenue LC"
    group_label: "UE Managerial"
    type: sum
    value_format_name: decimal_2
    description: ""
  }
  measure: ue_con_cmv_amt_lc {
    label: "Product Cost LC"
    group_label: "UE Managerial"
    type: sum
    value_format_name: decimal_2
    description: ""
  }
  measure: ue_con_contracogs_amt_lc {
    label: "Contracogs LC"
    group_label: "UE Managerial"
    type: sum
    value_format_name: decimal_2
    description: ""
  }
  measure: ue_mng_other_product_margin_amt_lc {
    label: "Other Product Margin LC"
    group_label: "UE Managerial"
    type: sum
    value_format_name: decimal_2
    description: ""
  }
  measure: ue_mng_product_net_monetization_amt_lc {
    label: "Product Net Monetization LC"
    group_label: "UE Managerial"
    type: sum
    value_format_name: decimal_2
    description: ""
  }
  measure: ue_mng_payments_net_amt_lc {
    label: "Financing Net LC"
    group_label: "UE Managerial"
    type: sum
    value_format_name: decimal_2
    description: ""
  }
  measure: ue_mng_payments_revenues_gross_amt_lc {
    label: "Payments Revenues LC"
    group_label: "UE Managerial"
    type: sum
    value_format_name: decimal_2
    description: ""
  }
  measure: ue_mng_financing_cost_amt_lc {
    label: "Financing Costs LC"
    group_label: "UE Managerial"
    type: sum
    value_format_name: decimal_2
    description: ""
  }
#  measure: ue_mng_financing_adj_amt_lc {
#    label: "Financing Adjustment LC"
#    group_label: "UE Managerial"
#    type: sum
#    value_format_name: decimal_2
#    description: ""
#  }
  measure: ue_mng_shipping_net_amt_lc {
    label: "Shipping Net LC"
    group_label: "UE Managerial"
    type: sum
    value_format_name: decimal_2
    description: ""
  }
  measure: ue_mng_shipping_revenues_amt_lc {
    label: "Shipping Revenues LC"
    group_label: "UE Managerial"
    type: sum
    value_format_name: decimal_2
    description: ""
  }
  measure: ue_mng_shipping_cost_amt_lc {
    label: "Shipping Distribution Cost LC"
    group_label: "UE Managerial"
    type: sum
    value_format_name: decimal_2
    description: ""
  }
  measure: ue_mng_ads_amt_lc {
    label: "ADS LC"
    group_label: "UE Managerial"
    type: sum
    value_format_name: decimal_2
    description: ""
  }
  measure: ue_mng_ads_display_amt_lc {
    label: "Display LC"
    group_label: "UE Managerial"
    type: sum
    value_format_name: decimal_2
    description: ""
  }
  measure: ue_mng_ads_pads_amt_lc {
    label: "PADs LC"
    group_label: "UE Managerial"
    type: sum
    value_format_name: decimal_2
    description: ""
  }
  measure: ue_con_advertising_revenues_nc_amt_lc {
    label: "Ads Revenues LC"
    group_label: "UE Managerial"
    type: sum
    value_format_name: decimal_2
    description: "ue_con_advertising_revenues_nc_amt"
  }
  measure: ue_mng_other_revenues_amt_lc {
    label: "Other Revenues LC"
    group_label: "UE Managerial"
    type: sum
    value_format_name: decimal_2
    description: ""
  }
  measure: ue_mng_sales_tax_amt_lc {
    label: "Sales Taxes LC"
    group_label: "UE Managerial"
    type: sum
    value_format_name: decimal_2
    description: ""
  }
  measure: ue_mng_total_net_monetization_amt_lc {
    label: "Net Monetization LC"
    group_label: "UE Managerial"
    type: sum
    value_format_name: decimal_2
    description: ""
  }
  measure: ue_con_net_revenues_amt_lc {
    label: "Net Revenues LC"
    group_label: "UE Managerial"
    type: sum
    value_format_name: decimal_2
    description: ""
  }
  measure: ue_mng_shipping_ops_cost_var_total_amt_lc {
    label: "Shipping Ops Variable LC"
    group_label: "UE Managerial"
    type: sum
    value_format_name: decimal_2
    description: "ue_mng_shipping_ops_cost_var_total_amt_lc"
  }
  measure: ue_mng_collection_fees_amt_lc {
    label: "Collection Fees LC"
    group_label: "UE Managerial"
    type: sum
    value_format_name: decimal_2
    description: ""
  }
  measure: ue_mng_chargebacks_amt_lc {
    label: "Chargebacks LC"
    group_label: "UE Managerial"
    type: sum
    value_format_name: decimal_2
    description: ""
  }
  measure: ue_mng_bad_dev_amt_lc {
    label: "Bad Debt LC"
    group_label: "UE Managerial"
    type: sum
    value_format_name: decimal_2
    description: ""
  }
  measure: ue_mng_bpp_amt_lc {
    label: "Bpp LC"
    group_label: "UE Managerial"
    type: sum
    value_format_name: decimal_2
    description: ""
  }
  measure: ue_mng_marketing_performance_amt_lc {
    label: "Marketing Performance LC"
    group_label: "UE Managerial"
    type: sum
    value_format_name: decimal_2
    description: ""
  }
  measure: ue_mng_cx_var_amt_lc {
    label: "CX Variable LC"
    group_label: "UE Managerial"
    type: sum
    value_format_name: decimal_2
    description: ""
  }
  measure: ue_mng_hosting_var_amt_lc {
    label: "Hosting Variable LC"
    group_label: "UE Managerial"
    type: sum
    value_format_name: decimal_2
    description: ""
  }
  measure: ue_mng_variable_contribution_amt_lc {
    label: "Variable Contribution LC"
    group_label: "UE Managerial"
    type: sum
    value_format_name: decimal_2
    description: ""
  }
  measure: ue_mng_ops_cost_fix_total_amt_lc {
    label: "Shipping Ops Fix LC"
    group_label: "UE Managerial"
    type: sum
    value_format_name: decimal_2
    description: ""
  }
  measure: ue_mng_shp_distrib_fix_amt_lc {
    label: "Shipping Distribution Fix LC"
    group_label: "UE Managerial"
    type: sum
    value_format_name: decimal_2
    description: ""
  }
  measure: ue_mng_marketing_indirecto_amt_lc {
    label: "Marketing Fix Excl Branding LC"
    group_label: "UE Managerial"
    type: sum
    value_format_name: decimal_2
    description: "ue_mng_marketing_indirecto_amt_lc"
  }
  measure: ue_mng_lyl_content_total_amt_lc {
    label: "Loyalty Contenc LC"
    group_label: "UE Managerial"
    type: sum
    value_format_name: decimal_2
    description: ""
  }
  measure: ue_mng_cx_fix_amt_lc {
    label: "CX Fix LC"
    group_label: "UE Managerial"
    type: sum
    value_format_name: decimal_2
    description: ""
  }
  measure: ue_mng_hosting_fix_amt_lc {
    label: "Hosting Fix LC"
    group_label: "UE Managerial"
    type: sum
    value_format_name: decimal_2
    description: ""
  }
  measure: ue_mng_fraud_prevention_amt_lc {
    label: "Fraud Prevention LC"
    group_label: "UE Managerial"
    type: sum
    value_format_name: decimal_2
    description: ""
  }
  measure: ue_mng_sm_local_amt_lc {
    label: "Sales & Marketing Local LC"
    group_label: "UE Managerial"
    type: sum
    value_format_name: decimal_2
    description: ""
  }
  measure: ue_mng_other_costs_amt_lc {
    label: "Other Costs LC"
    group_label: "UE Managerial"
    type: sum
    value_format_name: decimal_2
    description: ""
  }
  measure: ue_mng_direct_contribution_amt_lc {
    label: "DC Direct Contribution LC"
    group_label: "UE Managerial"
    type: sum
    value_format_name: decimal_2
    description: ""
  }
  measure: ue_mng_direct_contribuition_adjustment_amt_lc {
    label: "DC Adjustment LC"
    group_label: "UE Managerial"
    type: sum
    value_format_name: decimal_2
    description: ""
  }
  measure: ue_mng_mkt_branding_amt_lc {
    label: "Marketing Branding LC"
    group_label: "UE Managerial"
    type: sum
    value_format_name: decimal_2
    description: ""
  }
  measure: ue_mng_product_development_amt_lc {
    label: "Product Development LC"
    group_label: "UE Managerial"
    type: sum
    value_format_name: decimal_2
    description: ""
  }
  measure: ue_mng_ga_bu_amt_lc {
    label: "G&A BU Local LC"
    group_label: "UE Managerial"
    type: sum
    value_format_name: decimal_2
    description: ""
  }
  measure: ue_mng_sm_bu_amt_lc {
    label: "Sales & Marketing BU LC"
    group_label: "UE Managerial"
    type: sum
    value_format_name: decimal_2
    description: ""
  }
  measure: ue_mng_business_contribution_amt_lc {
    label: "Business Contribution LC"
    group_label: "UE Managerial"
    type: sum
    value_format_name: decimal_2
    description: ""
  }
  measure: ue_mng_other_business_margin_adjustment_amt_lc {
    label: "Business Margin Adjustment LC"
    group_label: "UE Managerial"
    type: sum
    value_format_name: decimal_2
    description: ""
  }
  measure: ue_mng_ga_corporate_amt_lc {
    label: "G&A Corporate LC"
    group_label: "UE Managerial"
    type: sum
    value_format_name: decimal_2
    description: ""
  }
  measure: ue_mng_sm_corporate_amt_lc {
    label: "Sales & Marketing Corporate LC"
    group_label: "UE Managerial"
    type: sum
    value_format_name: decimal_2
    description: ""
  }
  measure: ue_mng_business_margin_amt_lc {
    label: "Business Margin LC"
    group_label: "UE Managerial"
    type: sum
    value_format_name: decimal_2
    description: ""
  }
  measure: ue_mng_interco_adjustment_amt_lc {
    label: "Interco Adjustments LC"
    group_label: "UE Managerial"
    type: sum
    value_format_name: decimal_2
    description: ""
  }
  measure: ue_mng_financing_expenses_below_ebit_amt_lc {
    label: "Financing Below EBIT LC"
    group_label: "UE Managerial"
    type: sum
    value_format_name: decimal_2
    description: ""
  }
  measure: ue_mng_foreign_exchange_adjusment_amt_lc {
    label: "Forex LC"
    group_label: "UE Managerial"
    type: sum
    value_format_name: decimal_2
    description: ""
  }
  measure: ue_mng_other_ebit_adjustment_amt_lc {
    label: "Other EBIT Adjustments LC"
    group_label: "UE Managerial"
    type: sum
    value_format_name: decimal_2
    description: ""
  }
  measure: ue_mng_ebit_amt_lc {
    label: "Ebit LC"
    group_label: "UE Managerial"
    type: sum
    value_format_name: decimal_2
    description: ""
  }
  measure: ue_mng_non_bank_coupons_discount_amt_lc {
    label: "Non - Bank Coupons LC"
    type: sum
    value_format_name: decimal_2
    group_label: "UE Managerial"
    description: "Descuentos para el buyer Non Bank Coupons Discount"
  }
  measure: ue_mng_bank_coupons_discount_amt_lc {
    label: "Bank Coupons LC"
    type: sum
    value_format_name: decimal_2
    group_label: "UE Managerial"
    description: "Descuentos de banco para el buyer  Bank Coupons Discount"
  }
  measure: ue_mng_return_amt_lc {
    label: "Return LC"
    type: sum
    value_format_name: decimal_2
    group_label: "UE Managerial"
    description: "Revenues descuentos por retorno de productos"
  }
  measure: ue_mng_vendor_cofounded_coupons_amt_lc {
    label: "Vendor Co-Founded LC"
    type: sum
    value_format_name: decimal_2
    group_label: "UE Managerial"
    description: "Participacion de los vendors en descuentos para el buyer Vendor Cofounded Coupons"
  }
  measure: ue_ccogs_sellout_amt_lc {
    label: "Sell-Out LC"
    type: sum
    value_format_name: decimal_2
    group_label: "UE Managerial"
    description: "Monto de Contra COGS de Buying Portal para acuerdos Sellout  Ccogs Sellout"
  }
  measure: ue_ccogs_lumpsum_amt_lc {
    label: "Lumpsum LC"
    type: sum
    value_format_name: decimal_2
    group_label: "UE Managerial"
    description: "Monto de Contra COGS de Buying Portal para acuerdos Lumpsum Ccogs Lumpsum"
  }
  measure: ue_mng_other_vendor_ccogs_amt_lc {
    label: "Other Vendor Ccogs LC"
    type: sum
    value_format_name: decimal_2
    group_label: "UE Managerial"
    description: "Monto de CCOGS que no fueran clasificados o manuales (ajustes de contabilidad) Other Vendor Ccogs"
  }
  measure: ue_mng_other_product_revenues_amt_lc {
    label: "Other Net Revenues LC"
    type: sum
    value_format_name: decimal_2
    group_label: "UE Managerial"
    description: "Monto en moneda local de otros ingresos por ventas no habituales y fondeo de cupones de terceros Other Product Revenues"
  }
  measure: ue_mng_venta_liquidadores_amt_lc {
    label: "Venta Liquidadores LC"
    type: sum
    value_format_name: decimal_2
    group_label: "UE Managerial"
    description: "Revenues por venta de lotes de producto a liquidadores"
  }
  measure: ue_mng_cmv_venta_liquidadores_amt_lc {
    label: "CMV Venta Liquidadores LC"
    type: sum
    value_format_name: decimal_2
    group_label: "UE Managerial"
    description: "Costo del producto vendido"
  }
  measure: ue_mng_write_off_amt_lc {
    label: "Write Off & Recovery LC"
    type: sum
    value_format_name: decimal_2
    group_label: "UE Managerial"
    description: "Diferencia entre ajuste de Scrap del mes de contabilización y el mes anterior Write Off"
  }
  measure: ue_mng_scrap_amt_lc {
    label: "Scrap LC"
    type: sum
    value_format_name: decimal_2
    group_label: "UE Managerial"
    description: "Diferencia entre ajuste de Scrap del mes de contabilización y el mes anterior"
  }
  measure: ue_mng_triage_recovery_amt_lc {
    label: "Triage Recovery LC"
    type: sum
    value_format_name: decimal_2
    group_label: "UE Managerial"
    description: "Productos re stockeados"
  }
  measure: ue_mng_return_to_vendor_amt_lc {
    label: "Return to Vendor LC"
    type: sum
    value_format_name: decimal_2
    group_label: "UE Managerial"
    description: "Productos que son devueltos al vendor (pueden o no estar dañados)"
  }
  measure: ue_mng_other_product_cogs_amt_lc {
    label: "Other Product Cogs LC"
    type: sum
    value_format_name: decimal_2
    group_label: "UE Managerial"
    description: "Monto en moneda local de otros COGS como AMF, Foreign Exchange, VNR, Obsolescencia  y Otros"
  }
  measure: ue_mng_foreign_exchange_amt_lc {
    label: "Foreign Exchange LC"
    type: sum
    value_format_name: decimal_2
    group_label: "UE Managerial"
    description: "Monto en moneda local por ajustes de tipo de cambio de divisas en la deuda con proveedores"
  }
  measure: ue_mng_financing_cost_adjustment_amt_lc {
    label: "Financing Cost Adjustment LC"
    type: sum
    value_format_name: decimal_2
    group_label: "UE Managerial"
    description: "Ajuste producto de la diferencia entre el costo financiero teorico y el holding period vs el financing cost contable (above y below EBIT).  Permite reconciliar la linea de Financing Costs entre el monto reportado en UE y la contabilidad"
  }
  measure: ue_mng_business_margin_adj_amt_lc {
    label: "Business Margin TOTAL LC"
    type: sum
    value_format_name: decimal_2
    group_label: "UE Managerial"
    description: "Business Margin TOTAL ue_mng_business_margin_adj_amt_lc"
  }
  measure: ue_mng_net_monetization_adjustment_amt_lc {
    label: "Net Monetization Ajuste LC"
    type: sum
    value_format_name: decimal_2
    group_label: "UE Managerial"
    description: "Net Monetization_ajuste campo UE_MNG_NET_MONETIZATION_ADJUSTMENT_AMT_LC"
  }
  measure: ue_mng_sales_exp_amt_lc {
    label: "Sales Expenses LC"
    type: sum
    value_format_name: decimal_2
    group_label: "UE Managerial"
    description: " Sales_Expenses campo UE_MNG_SALES_EXP_AMT_LC"
  }
  measure: ue_mng_amf_amt_lc {
    label: "AMF LC"
    type: sum
    value_format_name: decimal_2
    group_label: "UE Managerial"
    description: "Sin valores (TBD)"
  }

  measure: ue_mng_other_product_cost_amt_lc {
    label: "Other Product Cost LC"
    value_format_name: decimal_2
    group_label: "UE Managerial"
    type: sum }
  measure: ue_mng_coupons_recov_amt_lc {
    label: "Coupons Recovery LC"
    value_format_name: decimal_2
    group_label: "UE Managerial"
    type: sum }
  measure: ue_mng_bank_cofounded_coupons_amt_lc {
    label: "Bank Co founded Coupons LC"
    value_format_name: decimal_2
    group_label: "UE Managerial"
    type: sum }
  measure: ue_mng_credits_cofounded_coupons_amt_lc {
    label: "Credits Cofounded Coupons LC"
    value_format_name: decimal_2
    group_label: "UE Managerial"
    type: sum }
  measure: ue_mng_returns_liquidations_amt_lc {
    label: "Cost_Returns_Liquidations LC"
    value_format_name: decimal_2
    group_label: "UE Managerial"
    type: sum }
  measure: ue_mng_total_returns_amt_lc {
    label: "Total_Returns LC"
    value_format_name: decimal_2
    group_label: "UE Managerial"
    type: sum  }
  measure: ue_mng_bpp_bonif_returns_amt_lc {
    label: "BPP Cashout LC"
    value_format_name: decimal_2
    group_label: "UE Managerial"
    type: sum   }
  measure: ue_mng_triage_no_saleable_amt_lc {
    label: "Triage_No_Saleable LC"
    value_format_name: decimal_2
    group_label: "UE Managerial"
    type: sum  }
  measure: ue_mng_refurbished_amt_lc {
    label: "Refurbished LC"
    value_format_name: decimal_2
    group_label: "UE Managerial"
    type: sum  }
  measure: ue_mng_returns_mgmt_amt_lc {
    label: "Returns_Mgmt LC"
    value_format_name: decimal_2
    group_label: "UE Managerial"
    type: sum  }
  measure: ue_mng_cmv_refurbished_amt_lc {
    label: "CMV Refurbished LC"
    value_format_name: decimal_2
    group_label: "UE Managerial"
    type: sum }
  measure: ue_mng_inventory_reg_amt_lc {
    label: "Inventory_Regularization"
    value_format_name: decimal_2
    group_label: "UE Managerial"
    type: sum }
  measure: ue_mng_vnr_amt_lc {
    label: "VNR LC"
    value_format_name: decimal_2
    group_label: "UE Managerial"
    type: sum  }
  measure: ue_mng_obsolescence_amt_lc {
    label: "Obsolescence LC"
    value_format_name: decimal_2
    group_label: "UE Managerial"
    type: sum  }

  measure: ue_mng_cmv_gross_amt_lc {
    label: "CMV Gross LC"
    type: sum
    value_format_name: decimal_2
    group_label: "UE Managerial"
    description: "Costo del producto"  }
  measure: ue_mng_product_net_monetization_adj_amt_lc {
    label: "Product Monetization Adj LC"
    type: sum
    value_format_name: decimal_2
    group_label: "UE Managerial"
    description: "" }
  measure: ue_mng_payments_revenues_amt_lc {
    label: "Financing Gross LC"
    type: sum
    value_format_name: decimal_2
    group_label: "UE Managerial"
    description: ""  }
  measure: ue_mng_ratably_amt_lc {
    label: "Ratably LC"
    type: sum
    value_format_name: decimal_2
    group_label: "UE Managerial"
    description: "Ajuste producto del diferimiento de revenues financieros por el no adelanto de los cupones. Se calcula como la variación del stock de revenues entre el mes contable y el anterior" }
  measure: ue_mng_ebit_adj_amt_lc {
    label: "Ebit Adjusted LC"
    type: sum
    value_format_name: decimal_2
    group_label: "UE Managerial"
    description: "" }

## CAMPOS EN USD ##

  measure: ue_con_tgmv_amt {
    label: "Tgmv MNG"
    group_label: "UE Managerial"
    type: sum
    value_format_name: decimal_2
    description: ""
  }
  measure: ue_mng_revenue_gross_amt {
    label: "Revenues Gross"
    group_label: "UE Managerial"
    type: sum
    value_format_name: decimal_2
    description: ""
  }
  measure: ue_mng_coupon_without_iva_amt {
    label: "Coupons"
    group_label: "UE Managerial"
    type: sum
    value_format_name: decimal_2
    description: ""
  }
  measure: ue_mng_net_var_fees_amt {
    label: "Net Variable Fees"
    group_label: "UE Managerial"
    type: sum
    value_format_name: decimal_2
    description: ""
  }
  measure: ue_mng_net_fix_fees_amt {
    label: "Net Fix Fees"
    group_label: "UE Managerial"
    type: sum
    value_format_name: decimal_2
    description: ""
  }
  measure: ue_mng_promotions_amt {
    label: "Promotions"
    group_label: "UE Managerial"
    type: sum
    value_format_name: decimal_2
    description: ""
  }
  measure: ue_mng_vendor_margin_amt {
    label: "Core Product Margin"
    group_label: "UE Managerial"
    type: sum
    value_format_name: decimal_2
    description: ""
  }
  measure: ue_mng_retail_revenues_amt {
    label: "Product Revenue"
    group_label: "UE Managerial"
    type: sum
    value_format_name: decimal_2
    description: ""
  }
  measure: ue_con_cmv_amt {
    label: "Product Cost"
    group_label: "UE Managerial"
    type: sum
    value_format_name: decimal_2
    description: ""
  }
  measure: ue_con_contracogs_amt {
    label: "Contracogs"
    group_label: "UE Managerial"
    type: sum
    value_format_name: decimal_2
    description: ""
  }
  measure: ue_mng_other_product_margin_amt {
    label: "Other Product Margin"
    group_label: "UE Managerial"
    type: sum
    value_format_name: decimal_2
    description: ""
  }
  measure: ue_mng_product_net_monetization_amt {
    label: "Product Net Monetization"
    group_label: "UE Managerial"
    type: sum
    value_format_name: decimal_2
    description: ""
  }
  measure: ue_mng_payments_net_amt {
    label: "Financing Net"
    group_label: "UE Managerial"
    type: sum
    value_format_name: decimal_2
    description: ""
  }
  measure: ue_mng_payments_revenues_gross_amt {
    label: "Payments Revenues"
    group_label: "UE Managerial"
    type: sum
    value_format_name: decimal_2
    description: ""
  }
  measure: ue_mng_financing_cost_amt {
    label: "Financing Costs"
    group_label: "UE Managerial"
    type: sum
    value_format_name: decimal_2
    description: ""
  }
  measure: ue_mng_financing_adj_amt {
    label: "Financing Adjustment"
    group_label: "UE Managerial"
    type: sum
    value_format_name: decimal_2
    description: ""
  }
  measure: ue_mng_shipping_net_amt {
    label: "Shipping Net"
    group_label: "UE Managerial"
    type: sum
    value_format_name: decimal_2
    description: ""
  }
  measure: ue_mng_shipping_revenues_amt {
    label: "Shipping Revenues"
    group_label: "UE Managerial"
    type: sum
    value_format_name: decimal_2
    description: ""
  }
  measure: ue_mng_shipping_cost_amt {
    label: "Shipping Distribution Cost"
    group_label: "UE Managerial"
    type: sum
    value_format_name: decimal_2
    description: ""
  }
  measure: ue_mng_ads_amt {
    label: "ADS"
    group_label: "UE Managerial"
    type: sum
    value_format_name: decimal_2
    description: ""
  }
  measure: ue_mng_ads_display_amt {
    label: "Display"
    group_label: "UE Managerial"
    type: sum
    value_format_name: decimal_2
    description: ""
  }
  measure: ue_mng_ads_pads_amt {
    label: "Pads"
    group_label: "UE Managerial"
    type: sum
    value_format_name: decimal_2
    description: ""
  }
  measure: ue_con_advertising_revenues_nc_amt {
    label: "Ads Revenues"
    group_label: "UE Managerial"
    type: sum
    value_format_name: decimal_2
    description: "ue_con_advertising_revenues_nc_amt"
  }
  measure: ue_mng_other_revenues_amt {
    label: "Other Revenues"
    group_label: "UE Managerial"
    type: sum
    value_format_name: decimal_2
    description: ""
  }
  measure: ue_mng_sales_tax_amt {
    label: "Sales Taxes"
    group_label: "UE Managerial"
    type: sum
    value_format_name: decimal_2
    description: ""
  }
  measure: ue_mng_total_net_monetization_amt {
    label: "Net Monetization"
    group_label: "UE Managerial"
    type: sum
    value_format_name: decimal_2
    description: ""
  }
  measure: ue_con_net_revenues_amt {
    label: "Net Revenues"
    group_label: "UE Managerial"
    type: sum
    value_format_name: decimal_2
    description: ""
  }
  measure: ue_mng_shipping_ops_cost_var_total_amt {
    label: "Shipping Ops Variable"
    group_label: "UE Managerial"
    type: sum
    value_format_name: decimal_2
    description: "ue_mng_shipping_ops_cost_var_total_amt_lc"
  }
  measure: ue_mng_collection_fees_amt {
    label: "Collection Fees"
    group_label: "UE Managerial"
    type: sum
    value_format_name: decimal_2
    description: ""
  }
  measure: ue_mng_chargebacks_amt {
    label: "Chargebacks"
    group_label: "UE Managerial"
    type: sum
    value_format_name: decimal_2
    description: ""
  }
  measure: ue_mng_bad_dev_amt {
    label: "Bad Debt"
    group_label: "UE Managerial"
    type: sum
    value_format_name: decimal_2
    description: ""
  }
  measure: ue_mng_bpp_amt {
    label: "Bpp"
    group_label: "UE Managerial"
    type: sum
    value_format_name: decimal_2
    description: ""
  }
  measure: ue_mng_marketing_performance_amt {
    label: "Marketing Performance"
    group_label: "UE Managerial"
    type: sum
    value_format_name: decimal_2
    description: ""
  }
  measure: ue_mng_cx_var_amt {
    label: "Cx Variable"
    group_label: "UE Managerial"
    type: sum
    value_format_name: decimal_2
    description: ""
  }
  measure: ue_mng_hosting_var_amt {
    label: "Hosting Variable"
    group_label: "UE Managerial"
    type: sum
    value_format_name: decimal_2
    description: ""
  }
  measure: ue_mng_variable_contribution_amt {
    label: "Variable Contribution"
    group_label: "UE Managerial"
    type: sum
    value_format_name: decimal_2
    description: ""
  }
  measure: ue_mng_ops_cost_fix_total_amt {
    label: "Shipping Ops Fix"
    group_label: "UE Managerial"
    type: sum
    value_format_name: decimal_2
    description: ""
  }
  measure: ue_mng_shp_distrib_fix_amt {
    label: "Shipping Distribution Fix"
    group_label: "UE Managerial"
    type: sum
    value_format_name: decimal_2
    description: ""
  }
  measure: ue_mng_marketing_indirecto_amt {
    label: "Marketing Fix Excl Branding"
    group_label: "UE Managerial"
    type: sum
    value_format_name: decimal_2
    description: "ue_mng_marketing_indirecto_amt"
  }
  measure: ue_mng_lyl_content_total_amt {
    label: "Loyalty Contenc"
    group_label: "UE Managerial"
    type: sum
    value_format_name: decimal_2
    description: ""
  }
  measure: ue_mng_cx_fix_amt {
    label: "Cx Fix"
    group_label: "UE Managerial"
    type: sum
    value_format_name: decimal_2
    description: ""
  }
  measure: ue_mng_hosting_fix_amt {
    label: "Hosting Fix"
    group_label: "UE Managerial"
    type: sum
    value_format_name: decimal_2
    description: ""
  }
  measure: ue_mng_fraud_prevention_amt {
    label: "Fraud Prevention"
    group_label: "UE Managerial"
    type: sum
    value_format_name: decimal_2
    description: ""
  }
  measure: ue_mng_sm_local_amt {
    label: "Sales & Marketing Local"
    group_label: "UE Managerial"
    type: sum
    value_format_name: decimal_2
    description: ""
  }
  measure: ue_mng_other_costs_amt {
    label: "Other Costs"
    group_label: "UE Managerial"
    type: sum
    value_format_name: decimal_2
    description: ""
  }
  measure: ue_mng_direct_contribution_amt {
    label: "Dc Direct Contribution"
    group_label: "UE Managerial"
    type: sum
    value_format_name: decimal_2
    description: ""
  }
  measure: ue_mng_direct_contribuition_adjustment_amt {
    label: "Dc Adjustment"
    group_label: "UE Managerial"
    type: sum
    value_format_name: decimal_2
    description: ""
  }
  measure: ue_mng_mkt_branding_amt {
    label: "Marketing Branding"
    group_label: "UE Managerial"
    type: sum
    value_format_name: decimal_2
    description: ""
  }
  measure: ue_mng_product_development_amt {
    label: "Product Development"
    group_label: "UE Managerial"
    type: sum
    value_format_name: decimal_2
    description: ""
  }
  measure: ue_mng_ga_bu_amt {
    label: "G&A Bu Local"
    group_label: "UE Managerial"
    type: sum
    value_format_name: decimal_2
    description: ""
  }
  measure: ue_mng_sm_bu_amt {
    label: "Sales & Marketing Bu"
    group_label: "UE Managerial"
    type: sum
    value_format_name: decimal_2
    description: ""
  }
  measure: ue_mng_business_contribution_amt {
    label: "Business Contribution"
    group_label: "UE Managerial"
    type: sum
    value_format_name: decimal_2
    description: ""
  }
  measure: ue_mng_other_business_margin_adjustment_amt {
    label: "Business Margin Adjustment"
    group_label: "UE Managerial"
    type: sum
    value_format_name: decimal_2
    description: ""
  }
  measure: ue_mng_ga_corporate_amt {
    label: "G&A Corporate"
    group_label: "UE Managerial"
    type: sum
    value_format_name: decimal_2
    description: ""
  }
  measure: ue_mng_sm_corporate_amt {
    label: "Sales & Marketing Corporate"
    group_label: "UE Managerial"
    type: sum
    value_format_name: decimal_2
    description: ""
  }
  measure: ue_mng_business_margin_amt {
    label: "Business Margin"
    group_label: "UE Managerial"
    type: sum
    value_format_name: decimal_2
    description: ""
  }
  measure: ue_mng_interco_adjustment_amt {
    label: "Interco Adjustments"
    group_label: "UE Managerial"
    type: sum
    value_format_name: decimal_2
    description: ""
  }
  measure: ue_mng_financing_expenses_below_ebit_amt {
    label: "Financing Below Ebit"
    group_label: "UE Managerial"
    type: sum
    value_format_name: decimal_2
    description: ""
  }
  measure: ue_mng_foreign_exchange_adjusment_amt {
    label: "Forex"
    group_label: "UE Managerial"
    type: sum
    value_format_name: decimal_2
    description: ""
  }
  measure: ue_mng_other_ebit_adjustment_amt {
    label: "Other Ebit Adjustments"
    group_label: "UE Managerial"
    type: sum
    value_format_name: decimal_2
    description: ""
  }
  measure: ue_mng_ebit_amt {
    label: "Ebit"
    group_label: "UE Managerial"
    type: sum
    value_format_name: decimal_2
    description: ""
  }
  measure: ue_mng_non_bank_coupons_discount_amt {
    label: "Non - Bank Coupons"
    type: sum
    value_format_name: decimal_2
    group_label: "UE Managerial"
    description: "Descuentos para el buyer Non Bank Coupons Discount"
  }
  measure: ue_mng_bank_coupons_discount_amt {
    label: "Bank Coupons"
    type: sum
    value_format_name: decimal_2
    group_label: "UE Managerial"
    description: "Descuentos de banco para el buyer  Bank Coupons Discount"
  }
  measure: ue_mng_return_amt {
    label: "Return"
    type: sum
    value_format_name: decimal_2
    group_label: "UE Managerial"
    description: "Revenues descuentos por retorno de productos"
  }
  measure: ue_mng_vendor_cofounded_coupons_amt {
    label: "Vendor Co-Founded"
    type: sum
    value_format_name: decimal_2
    group_label: "UE Managerial"
    description: "Participacion de los vendors en descuentos para el buyer Vendor Cofounded Coupons"
  }
  measure: ue_ccogs_sellout_amt {
    label: "Sell-Out"
    type: sum
    value_format_name: decimal_2
    group_label: "UE Managerial"
    description: "Monto de Contra COGS de Buying Portal para acuerdos Sellout  Ccogs Sellout"
  }
  measure: ue_ccogs_lumpsum_amt {
    label: "Lumpsum"
    type: sum
    value_format_name: decimal_2
    group_label: "UE Managerial"
    description: "Monto de Contra COGS de Buying Portal para acuerdos Lumpsum Ccogs Lumpsum"
  }
  measure: ue_mng_other_vendor_ccogs_amt {
    label: "Other Vendor Ccogs"
    type: sum
    value_format_name: decimal_2
    group_label: "UE Managerial"
    description: "Monto de CCOGS que no fueran clasificados o manuales (ajustes de contabilidad) Other Vendor Ccogs"
  }
  measure: ue_mng_other_product_revenues_amt {
    label: "Other Net Revenues"
    type: sum
    value_format_name: decimal_2
    group_label: "UE Managerial"
    description: "Monto en moneda local de otros ingresos por ventas no habituales y fondeo de cupones de terceros Other Product Revenues"
  }
  measure: ue_mng_venta_liquidadores_amt {
    label: "Venta Liquidadores"
    type: sum
    value_format_name: decimal_2
    group_label: "UE Managerial"
    description: "Revenues por venta de lotes de producto a liquidadores"
  }
  measure: ue_mng_cmv_venta_liquidadores_amt {
    label: "CMV Venta Liquidadores"
    type: sum
    value_format_name: decimal_2
    group_label: "UE Managerial"
    description: "Costo del producto vendido"
  }
  measure: ue_mng_write_off_amt {
    label: "Write Off & Recovery"
    type: sum
    value_format_name: decimal_2
    group_label: "UE Managerial"
    description: "Diferencia entre ajuste de Scrap del mes de contabilización y el mes anterior Write Off"
  }
  measure: ue_mng_scrap_amt {
    label: "Scrap"
    type: sum
    value_format_name: decimal_2
    group_label: "UE Managerial"
    description: "Diferencia entre ajuste de Scrap del mes de contabilización y el mes anterior"
  }
  measure: ue_mng_triage_recovery_amt {
    label: "Triage Recovery"
    type: sum
    value_format_name: decimal_2
    group_label: "UE Managerial"
    description: "Productos re stockeados"
  }
  measure: ue_mng_return_to_vendor_amt {
    label: "Return to Vendor"
    type: sum
    value_format_name: decimal_2
    group_label: "UE Managerial"
    description: "Productos que son devueltos al vendor (pueden o no estar dañados)"
  }
  measure: ue_mng_other_product_cogs_amt {
    label: "Other Product Cogs"
    type: sum
    value_format_name: decimal_2
    group_label: "UE Managerial"
    description: "Monto en moneda local de otros COGS como AMF, Foreign Exchange, VNR, Obsolescencia  y Otros"
  }
  measure: ue_mng_foreign_exchange_amt {
    label: "Foreign Exchange"
    type: sum
    value_format_name: decimal_2
    group_label: "UE Managerial"
    description: "Monto en moneda local por ajustes de tipo de cambio de divisas en la deuda con proveedores"
  }
  measure: ue_mng_financing_cost_adjustment_amt {
    label: "Financing Cost Adjustment"
    type: sum
    value_format_name: decimal_2
    group_label: "UE Managerial"
    description: "Ajuste producto de la diferencia entre el costo financiero teorico y el holding period vs el financing cost contable (above y below EBIT).  Permite reconciliar la linea de Financing Costs entre el monto reportado en UE y la contabilidad"
  }
  measure: ue_mng_business_margin_adj_amt {
    label: "Business Margin TOTAL"
    type: sum
    value_format_name: decimal_2
    group_label: "UE Managerial"
    description: "Business Margin TOTAL ue_mng_business_margin_adj_amt"
  }
  measure: ue_mng_net_monetization_adjustment_amt {
    label: "Net Monetization Ajuste"
    type: sum
    value_format_name: decimal_2
    group_label: "UE Managerial"
    description: "Net Monetization_ajuste campo UE_MNG_NET_MONETIZATION_ADJUSTMENT_AMT"
  }
  measure: ue_mng_sales_exp_amt {
    label: " Sales Expenses"
    type: sum
    value_format_name: decimal_2
    group_label: "UE Managerial"
    description: " Sales_Expenses campo UE_MNG_SALES_EXP_AMT"
  }
  measure: ue_mng_amf_amt {
    label: "AMF"
    type: sum
    value_format_name: decimal_2
    group_label: "UE Managerial"
    description: "Sin valores (TBD)"
  }

  measure: ue_mng_other_product_cost_amt {
    label: "Other Product Cost"
    value_format_name: decimal_2
    group_label: "UE Managerial"
    type: sum  }
  measure: ue_mng_coupons_recov_amt {
    label: "Coupons Recovery"
    value_format_name: decimal_2
    group_label: "UE Managerial"
    type: sum   }
  measure: ue_mng_bank_cofounded_coupons_amt {
    label: "Bank Co founded Coupons"
    value_format_name: decimal_2
    group_label: "UE Managerial"
    type: sum  }
  measure: ue_mng_credits_cofounded_coupons_amt {
    label: "Credits Cofounded Coupons"
    value_format_name: decimal_2
    group_label: "UE Managerial"
    type: sum  }
  measure: ue_mng_returns_liquidations_amt {
    label: "Cost_Returns_Liquidations"
    value_format_name: decimal_2
    group_label: "UE Managerial"
    type: sum   }
  measure: ue_mng_total_returns_amt {
    label: "Total_Returns"
    value_format_name: decimal_2
    group_label: "UE Managerial"
    type: sum  }
  measure: ue_mng_bpp_bonif_returns_amt {
    label: "BPP Cashout"
    value_format_name: decimal_2
    group_label: "UE Managerial"
    type: sum   }
  measure: ue_mng_triage_no_saleable_amt {
    label: "Triage_No_Saleable"
    value_format_name: decimal_2
    group_label: "UE Managerial"
    type: sum }
  measure: ue_mng_refurbished_amt {
    label: "Refurbished"
    value_format_name: decimal_2
    group_label: "UE Managerial"
    type: sum }
  measure: ue_mng_returns_mgmt_amt {
    label: "Returns_Mgmt"
    value_format_name: decimal_2
    group_label: "UE Managerial"
    type: sum }
  measure: ue_mng_cmv_refurbished_amt {
    label: "CMV Refurbished"
    value_format_name: decimal_2
    group_label: "UE Managerial"
    type: sum }
  measure: ue_mng_inventory_reg_amt {
    label: "Inventory_Regularization"
    value_format_name: decimal_2
    group_label: "UE Managerial"
    type: sum }
  measure: ue_mng_vnr_amt {
    label: "VNR"
    value_format_name: decimal_2
    group_label: "UE Managerial"
    type: sum }
  measure: ue_mng_obsolescence_amt {
    label: "Obsolescence"
    value_format_name: decimal_2
    group_label: "UE Managerial"
    type: sum }

  measure: ue_mng_cmv_gross_amt {
    label: "CMV Gross"
    type: sum
    value_format_name: decimal_2
    group_label: "UE Managerial"
    description: "Costo del producto"  }
  measure: ue_mng_product_net_monetization_adj_amt {
    label: "Product Monetization Adj"
    type: sum
    value_format_name: decimal_2
    group_label: "UE Managerial"
    description: ""  }
  measure: ue_mng_payments_revenues_amt {
    label: "Financing Gross"
    type: sum
    value_format_name: decimal_2
    group_label: "UE Managerial"
    description: "" }
  measure: ue_mng_ratably_amt {
    label: "Ratably"
    type: sum
    value_format_name: decimal_2
    group_label: "UE Managerial"
    description: "Ajuste producto del diferimiento de revenues financieros por el no adeltanto de los cupones. Se calcula como la variación del stock de revenues entre el mes contable y el anterior" }
  measure: ue_mng_ebit_adj_amt {
    label: "Ebit Adjusted"
    type: sum
    value_format_name: decimal_2
    group_label: "UE Managerial"
    description: "" }



# --------------------------------
# MEASURES - UE Managerial over TGMV
# --------------------------------

  measure: ue_mng_shipping_ops_cost_var_total_amt_lc_perc_tgmv {
    label: "Shipping Ops Variable over TGMV"
    type: number
    value_format_name: percent_2
    group_label: "UE Managerial over TGMV LC"
    description: ""
    sql: SAFE_DIVIDE(${ue_mng_shipping_ops_cost_var_total_amt_lc},${ue_con_tgmv_amt_lc});;
  }
  measure: ue_mng_other_business_margin_adjustment_amt_lc_perc_tgmv {
    label:"Business Margin Adjustment over TGMV"
    type: number
    value_format_name: percent_2
    group_label: "UE Managerial over TGMV LC"
    description: ""
    sql: SAFE_DIVIDE(${ue_mng_other_business_margin_adjustment_amt_lc},${ue_con_tgmv_amt_lc});;
  }
  measure: ue_mng_direct_contribuition_adjustment_amt_lc_perc_tgmv {
    label: "DC Adjustment over TGMV"
    type: number
    value_format_name: percent_2
    group_label: "UE Managerial over TGMV LC"
    description: "Costo de contribuicion directa Ajustada"
    sql: SAFE_DIVIDE(${ue_mng_direct_contribuition_adjustment_amt_lc},${ue_con_tgmv_amt_lc});;
  }
  measure: ue_mng_sm_corporate_amt_lc_perc_tgmv {
    label: "Sales & Marketing Corporate over TGMV"
    type: number
    value_format_name: percent_2
    group_label: "UE Managerial over TGMV LC"
    description: "Gastos de S&M corporativos cross BU"
    sql: SAFE_DIVIDE(${ue_mng_sm_corporate_amt_lc},${ue_con_tgmv_amt_lc});;
  }
  measure: ue_con_advertising_revenues_nc_amt_lc_perc_tgmv {
    label: "Ads Revenues over TGMV"
    type: number
    value_format_name: percent_2
    group_label: "UE Managerial over TGMV LC"
    description: "Es la ganancia (revenues) obtenidos por publicidad(advertising) en el caso de esta métrica se le es para las publicidades dentro de Mercado libre (Intercompany). Esta métrica contempla tanto PADS como Display."
    sql: SAFE_DIVIDE(${ue_con_advertising_revenues_nc_amt_lc},${ue_con_tgmv_amt_lc});;
  }
  measure: ue_con_cmv_amt_lc_perc_tgmv {
    label: "Product Cost over TGMV"
    type: number
    value_format_name: percent_2
    group_label: "UE Managerial over TGMV LC"
    description: "Es cuanto le costó a Meli los productos que se vendieron. El costo que pagamos al fabricante (1P) o costo de fabricación (PL)."
    sql: SAFE_DIVIDE(${ue_con_cmv_amt_lc},${ue_con_tgmv_amt_lc});;
  }
  measure: ue_con_contracogs_amt_lc_perc_tgmv {
    label: "Contracogs over TGMV"
    type: number
    value_format_name: percent_2
    group_label: "UE Managerial over TGMV LC"
    description: "Monto total de Contra COGS (suma UE_PRX_CONTRACOGS_AMT_LC y UE_PRX_CONTRACOGS_MANUAL_AMT_LC)"
    sql: SAFE_DIVIDE(${ue_con_contracogs_amt_lc},${ue_con_tgmv_amt_lc});;
  }
  measure: ue_con_net_revenues_amt_lc_perc_tgmv {
    label: "Net Revenues over TGMV"
    type: number
    value_format_name: percent_2
    group_label: "UE Managerial over TGMV LC"
    description: "Revenues de venta de producto o fee a los sellers por venta de producto, revenues de financing y revenues de shipping neteados de sus costos directos"
    sql: SAFE_DIVIDE(${ue_con_net_revenues_amt_lc},${ue_con_tgmv_amt_lc});;
  }
  measure: ue_mng_ads_amt_lc_perc_tgmv {
    label: "ADS over TGMV"
    type: number
    value_format_name: percent_2
    group_label: "UE Managerial over TGMV LC"
    description: "REVS POR ADS Display + Pads"
    sql: SAFE_DIVIDE(${ue_mng_ads_amt_lc},${ue_con_tgmv_amt_lc});;
  }
  measure: ue_mng_ads_display_amt_lc_perc_tgmv {
    label: "Display over TGMV"
    type: number
    value_format_name: percent_2
    group_label: "UE Managerial over TGMV LC"
    description: "Es la ganancia (revenues) obtenidos por publicidad(advertising) en esta métrica en particular se refiere a Display o Banners de publicidad que existen dentro del Market Place y  generan la ganancia que brinda este servicio."
    sql: SAFE_DIVIDE(${ue_mng_ads_display_amt_lc},${ue_con_tgmv_amt_lc});;
  }
  measure: ue_mng_ads_pads_amt_lc_perc_tgmv {
    label: "Pads over TGMV"
    type: number
    value_format_name: percent_2
    group_label: "UE Managerial over TGMV LC"
    description: "Monto en LC de ganancia obtenida por negociaciones de Advertising por los Product Ads."
    sql: SAFE_DIVIDE(${ue_mng_ads_pads_amt_lc},${ue_con_tgmv_amt_lc});;
  }
  measure: ue_mng_bad_dev_amt_lc_perc_tgmv {
    label: "Bad Debt over TGMV"
    type: number
    value_format_name: percent_2
    group_label: "UE Managerial over TGMV LC"
    description: "Valor total mensual contable de Bad Debt"
    sql: SAFE_DIVIDE(${ue_mng_bad_dev_amt_lc},${ue_con_tgmv_amt_lc});;
  }
  measure: ue_mng_bpp_amt_lc_perc_tgmv {
    label: "BPP over TGMV"
    type: number
    value_format_name: percent_2
    group_label: "UE Managerial over TGMV LC"
    description: "Campo mascara que suma las metricas de BPP"
    sql: SAFE_DIVIDE(${ue_mng_bpp_amt_lc},${ue_con_tgmv_amt_lc});;
  }
  measure: ue_mng_business_contribution_amt_lc_perc_tgmv {
    label: "Business Contribution over TGMV"
    type: number
    value_format_name: percent_2
    group_label: "UE Managerial over TGMV LC"
    description: "Contribución del Negocio"
    sql: SAFE_DIVIDE(${ue_mng_business_contribution_amt_lc},${ue_con_tgmv_amt_lc});;
  }
  measure: ue_mng_business_margin_amt_lc_perc_tgmv {
    label: "Business Margin over TGMV"
    type: number
    value_format_name: percent_2
    group_label: "UE Managerial over TGMV LC"
    description: "Resultado del negocio"
    sql: SAFE_DIVIDE(${ue_mng_business_margin_amt_lc},${ue_con_tgmv_amt_lc});;
  }
  measure: ue_mng_chargebacks_amt_lc_perc_tgmv {
    label: "Chargebacks over TGMV"
    type: number
    value_format_name: percent_2
    group_label: "UE Managerial over TGMV LC"
    description: "campos mascara Devoluciones y cancelaciones"
    sql: SAFE_DIVIDE(${ue_mng_chargebacks_amt_lc},${ue_con_tgmv_amt_lc});;
  }
  measure: ue_mng_collection_fees_amt_lc_perc_tgmv {
    label: "Collection Fees over TGMV"
    type: number
    value_format_name: percent_2
    group_label: "UE Managerial over TGMV LC"
    description: "Campo máscara de Costos de procesamiento de las transacciones por parte de los adquirentes, banderas y bancos. Se calcula como un % del TPV de cada transacción"
    sql: SAFE_DIVIDE(${ue_mng_collection_fees_amt_lc},${ue_con_tgmv_amt_lc});;
  }
  measure: ue_mng_coupon_without_iva_amt_lc_perc_tgmv {
    label: "Coupons over TGMV"
    type: number
    value_format_name: percent_2
    group_label: "UE Managerial over TGMV LC"
    description: "Descuento a el buyer especifico por push notification"
    sql: SAFE_DIVIDE(${ue_mng_coupon_without_iva_amt_lc},${ue_con_tgmv_amt_lc});;
  }
  measure: ue_mng_cx_fix_amt_lc_perc_tgmv {
    label: "CX Fix over TGMV"
    type: number
    value_format_name: percent_2
    group_label: "UE Managerial over TGMV LC"
    description: "Despesas de CX relacionados a Staff"
    sql: SAFE_DIVIDE(${ue_mng_cx_fix_amt_lc},${ue_con_tgmv_amt_lc});;
  }
  measure: ue_mng_cx_var_amt_lc_perc_tgmv {
    label: "CX Variable over TGMV"
    type: number
    value_format_name: percent_2
    group_label: "UE Managerial over TGMV LC"
    description: "Costos CX relacionados a contactos"
    sql: SAFE_DIVIDE(${ue_mng_cx_var_amt_lc},${ue_con_tgmv_amt_lc});;
  }
  measure: ue_mng_direct_contribution_amt_lc_perc_tgmv {
    label: "DC Direct Contribution over TGMV"
    type: number
    value_format_name: percent_2
    group_label: "UE Managerial over TGMV LC"
    description: "Costo de contribuicion directa"
    sql: SAFE_DIVIDE(${ue_mng_direct_contribution_amt_lc},${ue_con_tgmv_amt_lc});;
  }
  measure: ue_mng_ebit_amt_lc_perc_tgmv {
    label: "EBIT over TGMV"
    type: number
    value_format_name: percent_2
    group_label: "UE Managerial over TGMV LC"
    description: "Earning Before Interest y Taxes = son las ganancias totales antes de intereses e impuestos"
    sql: SAFE_DIVIDE(${ue_mng_ebit_amt_lc},${ue_con_tgmv_amt_lc});;
  }
#  measure: ue_mng_financing_adj_amt_lc_perc_tgmv {
#    label: "Financing Adjustment over TGMV"
#    type: number
#    value_format_name: percent_2
#    group_label: "UE Managerial over TGMV LC"
#    description: "Monto total de ajustes provenientes de la lineas de financing. Consolida la línea de Ratably y Financing Adjustments."
#    sql: SAFE_DIVIDE(${ue_mng_financing_adj_amt_lc},${ue_con_tgmv_amt_lc});;
#  }
  measure: ue_mng_financing_cost_amt_lc_perc_tgmv {
    label: "Financing Cost over TGMV"
    type: number
    value_format_name: percent_2
    group_label: "UE Managerial over TGMV LC"
    description: "Salida de Costos de modulo con la diferencia de costos alocados"
    sql: SAFE_DIVIDE(${ue_mng_financing_cost_amt_lc},${ue_con_tgmv_amt_lc});;
  }
  measure: ue_mng_financing_expenses_below_ebit_amt_lc_perc_tgmv {
    label: "Financing Below EBIT over TGMV"
    type: number
    value_format_name: percent_2
    group_label: "UE Managerial over TGMV LC"
    description: "Re Ajuste de financing costs beloe EBIT correspondientes a fondeos de corto plazo para el financiamiento alternativo al descuento de cupones (incluído en la línea de Financing adjustments en Paymentd Net)"
    sql: SAFE_DIVIDE(${ue_mng_financing_expenses_below_ebit_amt_lc},${ue_con_tgmv_amt_lc});;
  }
  measure: ue_mng_foreign_exchange_adjusment_amt_lc_perc_tgmv {
    label: "Forex over TGMV"
    type: number
    value_format_name: percent_2
    group_label: "UE Managerial over TGMV LC"
    description: "Re ajuste del saldo impactado en la línea de Foreign Exchange"
    sql: SAFE_DIVIDE(${ue_mng_foreign_exchange_adjusment_amt_lc},${ue_con_tgmv_amt_lc});;
  }
  measure: ue_mng_fraud_prevention_amt_lc_perc_tgmv {
    label: "Fraud Prevention over TGMV"
    type: number
    value_format_name: percent_2
    group_label: "UE Managerial over TGMV LC"
    description: "La mayoria de los Head-count de Fraud Prevention (interco no esta incluído)"
    sql: SAFE_DIVIDE(${ue_mng_fraud_prevention_amt_lc},${ue_con_tgmv_amt_lc});;
  }
  measure: ue_mng_ga_bu_amt_lc_perc_tgmv {
    label: "G&A BU Local over TGMV"
    type: number
    value_format_name: percent_2
    group_label: "UE Managerial over TGMV LC"
    description: "Gastos consolidados de G&A"
    sql: SAFE_DIVIDE(${ue_mng_ga_bu_amt_lc},${ue_con_tgmv_amt_lc});;
  }
  measure: ue_mng_ga_corporate_amt_lc_perc_tgmv {
    label: "G&A Corporate over TGMV"
    type: number
    value_format_name: percent_2
    group_label: "UE Managerial over TGMV LC"
    description: "Gastos de G&A corporativos cross BU"
    sql: SAFE_DIVIDE(${ue_mng_ga_corporate_amt_lc},${ue_con_tgmv_amt_lc});;
  }
  measure: ue_mng_hosting_fix_amt_lc_perc_tgmv {
    label: "Hosting Fix over TGMV"
    type: number
    value_format_name: percent_2
    group_label: "UE Managerial over TGMV LC"
    description: "Despesas de Hosting Fix"
    sql: SAFE_DIVIDE(${ue_mng_hosting_fix_amt_lc},${ue_con_tgmv_amt_lc});;
  }
  measure: ue_mng_hosting_var_amt_lc_perc_tgmv {
    label: "Hosting Variable over TGMV"
    type: number
    value_format_name: percent_2
    group_label: "UE Managerial over TGMV LC"
    description: "Valor de provision alocado por order para hosting variable"
    sql: SAFE_DIVIDE(${ue_mng_hosting_var_amt_lc},${ue_con_tgmv_amt_lc});;
  }
  measure: ue_mng_interco_adjustment_amt_lc_perc_tgmv {
    label: "Interco Adjustments over TGMV"
    type: number
    value_format_name: percent_2
    group_label: "UE Managerial over TGMV LC"
    description: "Consolidado de ajustes intercompany producto de impo  y expo de servicios entre sites"
    sql: SAFE_DIVIDE(${ue_mng_interco_adjustment_amt_lc},${ue_con_tgmv_amt_lc});;
  }
  measure: ue_mng_lyl_content_total_amt_lc_perc_tgmv {
    label: "Loyalty Contenc over TGMV"
    type: number
    value_format_name: percent_2
    group_label: "UE Managerial over TGMV LC"
    description: "Es el neto de servicio ofrecido por lealtad (Loyalty)"
    sql: SAFE_DIVIDE(${ue_mng_lyl_content_total_amt_lc},${ue_con_tgmv_amt_lc});;
  }
  measure: ue_mng_marketing_indirecto_amt_lc_perc_tgmv {
    label: "Marketing Fix Excl Branding over TGMV"
    type: number
    value_format_name: percent_2
    group_label: "UE Managerial over TGMV LC"
    description: "ue_mng_marketing_indirecto_amt_lc_perc_tgmv"
    sql: SAFE_DIVIDE(${ue_mng_marketing_indirecto_amt_lc},${ue_con_tgmv_amt_lc});;
  }
  measure: ue_mng_marketing_performance_amt_lc_perc_tgmv {
    label: "Marketing Performance over TGMV"
    type: number
    value_format_name: percent_2
    group_label: "UE Managerial over TGMV LC"
    description: "campos mascara del marketing directo"
    sql: SAFE_DIVIDE(${ue_mng_marketing_performance_amt_lc},${ue_con_tgmv_amt_lc});;
  }
  measure: ue_mng_mkt_branding_amt_lc_perc_tgmv {
    label: "Marketing Branding over TGMV"
    type: number
    value_format_name: percent_2
    group_label: "UE Managerial over TGMV LC"
    description: "Apertura de branding para marketing indirecto"
    sql: SAFE_DIVIDE(${ue_mng_mkt_branding_amt_lc},${ue_con_tgmv_amt_lc});;
  }
  measure: ue_mng_net_fix_fees_amt_lc_perc_tgmv {
    label: "Net Fix Fees over TGMV"
    type: number
    value_format_name: percent_2
    group_label: "UE Managerial over TGMV LC"
    description: "Suma de los fees fijos y los descuentos cobrados a los sellers"
    sql: SAFE_DIVIDE(${ue_mng_net_fix_fees_amt_lc},${ue_con_tgmv_amt_lc});;
  }
  measure: ue_mng_net_var_fees_amt_lc_perc_tgmv {
    label: "Net Variable Fees over TGMV"
    type: number
    value_format_name: percent_2
    group_label: "UE Managerial over TGMV LC"
    description: "Suma de los fees variables cobrado a los sellers"
    sql: SAFE_DIVIDE(${ue_mng_net_var_fees_amt_lc},${ue_con_tgmv_amt_lc});;
  }
  measure: ue_mng_ops_cost_fix_total_amt_lc_perc_tgmv {
    label: "Shipping Ops Fix over TGMV"
    type: number
    value_format_name: percent_2
    group_label: "UE Managerial over TGMV LC"
    description: "Sumatoria de todos los costos de operaciones fijos"
    sql: SAFE_DIVIDE(${ue_mng_ops_cost_fix_total_amt_lc},${ue_con_tgmv_amt_lc});;
  }
  measure: ue_mng_other_costs_amt_lc_perc_tgmv {
    label: "Other Costs over TGMV"
    type: number
    value_format_name: percent_2
    group_label: "UE Managerial over TGMV LC"
    description: "Valor mascara para los otros cogs ya alocados"
    sql: SAFE_DIVIDE(${ue_mng_other_costs_amt_lc},${ue_con_tgmv_amt_lc});;
  }
  measure: ue_mng_other_ebit_adjustment_amt_lc_perc_tgmv {
    label: "Other EBIT Adjustments over TGMV"
    type: number
    value_format_name: percent_2
    group_label: "UE Managerial over TGMV LC"
    description: "Ajustes one off antes de EBIT"
    sql: SAFE_DIVIDE(${ue_mng_other_ebit_adjustment_amt_lc},${ue_con_tgmv_amt_lc});;
  }
  measure: ue_mng_other_product_margin_amt_lc_perc_tgmv {
    label: "Other Product Margin over TGMV"
    type: number
    value_format_name: percent_2
    group_label: "UE Managerial over TGMV LC"
    description: "Monto en moneda local de otras margens de productos que surgen a partir de revenues originados por fondeo de cupones de terceros, venta de lotes, refubrished, etc con sus CMV respectivos"
    sql: SAFE_DIVIDE(${ue_mng_other_product_margin_amt_lc},${ue_con_tgmv_amt_lc});;
  }
  measure: ue_mng_other_revenues_amt_lc_perc_tgmv {
    label: "Other Revenues over TGMV"
    type: number
    value_format_name: percent_2
    group_label: "UE Managerial over TGMV LC"
    description: "Consolidado de otros revenues"
    sql: SAFE_DIVIDE(${ue_mng_other_revenues_amt_lc},${ue_con_tgmv_amt_lc});;
  }
  measure: ue_mng_payments_net_amt_lc_perc_tgmv {
    label: "Financing Net over TGMV"
    type: number
    value_format_name: percent_2
    group_label: "UE Managerial over TGMV LC"
    description: "campo mascara de UE_CON_PAYMENTS_REVENUES_AMT_LC + UE_CON_PAYMENTS_COST_AMT_LC"
    sql: SAFE_DIVIDE(${ue_mng_payments_net_amt_lc},${ue_con_tgmv_amt_lc});;
  }
  measure: ue_mng_payments_revenues_gross_amt_lc_perc_tgmv {
    label: "Payments Revenues over TGMV"
    type: number
    value_format_name: percent_2
    group_label: "UE Managerial over TGMV LC"
    description: "Monto bruto de ingresos generados por los cargos aplicados al otorgamiento de cuotas."
    sql: SAFE_DIVIDE(${ue_mng_payments_revenues_gross_amt_lc},${ue_con_tgmv_amt_lc});;
  }
  measure: ue_mng_product_development_amt_lc_perc_tgmv {
    label: "Product Development over TGMV"
    type: number
    value_format_name: percent_2
    group_label: "UE Managerial over TGMV LC"
    description: "Total de costos relacionados a PD"
    sql: SAFE_DIVIDE(${ue_mng_product_development_amt_lc},${ue_con_tgmv_amt_lc});;
  }
  measure: ue_mng_product_net_monetization_amt_lc_perc_tgmv {
    label: "Product Net Monetization over TGMV"
    type: number
    value_format_name: percent_2
    group_label: "UE Managerial over TGMV LC"
    description: "Margen de Monetizacion Neta de producto"
    sql: SAFE_DIVIDE(${ue_mng_product_net_monetization_amt_lc},${ue_con_tgmv_amt_lc});;
  }
  measure: ue_mng_promotions_amt_lc_perc_tgmv {
    label: "Promotions over TGMV"
    type: number
    value_format_name: percent_2
    group_label: "UE Managerial over TGMV LC"
    description: "Suma de los descuentos, rebates, cupones y MELI Coins"
    sql: SAFE_DIVIDE(${ue_mng_promotions_amt_lc},${ue_con_tgmv_amt_lc});;
  }
  measure: ue_mng_retail_revenues_amt_lc_perc_tgmv {
    label: "Product Revenue over TGMV"
    type: number
    value_format_name: percent_2
    group_label: "UE Managerial over TGMV LC"
    description: "Suma de los revenues de 1P con coupones"
    sql: SAFE_DIVIDE(${ue_mng_retail_revenues_amt_lc},${ue_con_tgmv_amt_lc});;
  }
  measure: ue_mng_revenue_gross_amt_lc_perc_tgmv {
    label: "Revenues Gross over TGMV"
    type: number
    value_format_name: percent_2
    group_label: "UE Managerial over TGMV LC"
    description: "Precio full para el buyer"
    sql: SAFE_DIVIDE(${ue_mng_revenue_gross_amt_lc},${ue_con_tgmv_amt_lc});;
  }
  measure: ue_mng_sales_tax_amt_lc_perc_tgmv {
    label: "Sales Taxes over TGMV"
    type: number
    value_format_name: percent_2
    group_label: "UE Managerial over TGMV LC"
    description: "Suma de los impuestos con tax recovery"
    sql: SAFE_DIVIDE(${ue_mng_sales_tax_amt_lc},${ue_con_tgmv_amt_lc});;
  }
  measure: ue_mng_shipping_cost_amt_lc_perc_tgmv {
    label: "Shipping Distribution Cost over TGMV"
    type: number
    value_format_name: percent_2
    group_label: "UE Managerial over TGMV LC"
    description: "Metrica del consolidado vinculado al costo de distribución del envio"
    sql: SAFE_DIVIDE(${ue_mng_shipping_cost_amt_lc},${ue_con_tgmv_amt_lc});;
  }
  measure: ue_mng_shipping_net_amt_lc_perc_tgmv {
    label: "Shipping Net over TGMV"
    type: number
    value_format_name: percent_2
    group_label: "UE Managerial over TGMV LC"
    description: "Metrica generada en el consolidado que muestra la diferencia entre la ganancia (revenue) y los costos (Operación y Distribución)"
    sql: SAFE_DIVIDE(${ue_mng_shipping_net_amt_lc},${ue_con_tgmv_amt_lc});;
  }
  measure: ue_mng_shipping_revenues_amt_lc_perc_tgmv {
    label: "Shipping Revenues over TGMV"
    type: number
    value_format_name: percent_2
    group_label: "UE Managerial over TGMV LC"
    description: "Metrica del consolidado vinculado al revenue del envio"
    sql: SAFE_DIVIDE(${ue_mng_shipping_revenues_amt_lc},${ue_con_tgmv_amt_lc});;
  }
  measure: ue_mng_shp_distrib_fix_amt_lc_perc_tgmv {
    label: "Shipping Distribution Fix over TGMV"
    type: number
    value_format_name: percent_2
    group_label: "UE Managerial over TGMV LC"
    description: "Costo del centro de servicios de fix"
    sql: SAFE_DIVIDE(${ue_mng_shp_distrib_fix_amt_lc},${ue_con_tgmv_amt_lc});;
  }
  measure: ue_mng_sm_bu_amt_lc_perc_tgmv {
    label: "Sales & Marketing BU over TGMV"
    type: number
    value_format_name: percent_2
    group_label: "UE Managerial over TGMV LC"
    description: "Gastos consolidados de S&M"
    sql: SAFE_DIVIDE(${ue_mng_sm_bu_amt_lc},${ue_con_tgmv_amt_lc});;
  }
  measure: ue_mng_sm_local_amt_lc_perc_tgmv {
    label: "Sales & Marketing Local over TGMV"
    type: number
    value_format_name: percent_2
    group_label: "UE Managerial over TGMV LC"
    description: "Valor mascara para los costos directamente asociados a las BUs de commerce para Sales y Marketing."
    sql: SAFE_DIVIDE(${ue_mng_sm_local_amt_lc},${ue_con_tgmv_amt_lc});;
  }
  measure: ue_mng_total_net_monetization_amt_lc_perc_tgmv {
    label: "Net Monetization over TGMV"
    type: number
    value_format_name: percent_2
    group_label: "UE Managerial over TGMV LC"
    description: "Suma total de la monetizacion"
    sql: SAFE_DIVIDE(${ue_mng_total_net_monetization_amt_lc},${ue_con_tgmv_amt_lc});;
  }
  measure: ue_mng_variable_contribution_amt_lc_perc_tgmv {
    label: "Variable Contribution over TGMV"
    type: number
    value_format_name: percent_2
    group_label: "UE Managerial over TGMV LC"
    description: "Suma de toda contribuicion variable"
    sql: SAFE_DIVIDE(${ue_mng_variable_contribution_amt_lc},${ue_con_tgmv_amt_lc});;
  }
  measure: ue_mng_vendor_margin_amt_lc_perc_tgmv {
    label: "Core Product Margin over TGMV"
    type: number
    value_format_name: percent_2
    group_label: "UE Managerial over TGMV LC"
    description: "Monto en LC del margen del vendor"
    sql: SAFE_DIVIDE(${ue_mng_vendor_margin_amt_lc},${ue_con_tgmv_amt_lc});;
  }
  measure: ue_mng_non_bank_coupons_discount_amt_lc_perc_tgmv {
    label: "Non - Bank Coupons over TGMV"
    type: number
    value_format_name: percent_2
    group_label: "UE Managerial over TGMV LC"
    description: "Descuentos para el buyer Non Bank Coupons Discount %TGMV"
    sql: SAFE_DIVIDE(${ue_mng_non_bank_coupons_discount_amt_lc},${ue_con_tgmv_amt_lc});;
  }
  measure: ue_mng_bank_coupons_discount_amt_lc_perc_tgmv {
    label: "Bank Coupons over TGMV"
    type: number
    value_format_name: percent_2
    group_label: "UE Managerial over TGMV LC"
    description: "Descuentos de banco para el buyer  Bank Coupons Discount %TGMV"
    sql: SAFE_DIVIDE(${ue_mng_bank_coupons_discount_amt_lc},${ue_con_tgmv_amt_lc});;
  }
  measure: ue_mng_return_amt_lc_perc_tgmv {
    label: "Return over TGMV"
    type: number
    value_format_name: percent_2
    group_label: "UE Managerial over TGMV LC"
    description: "Revenues descuentos por retorno de productos"
    sql: SAFE_DIVIDE(${ue_mng_return_amt_lc},${ue_con_tgmv_amt_lc});;
  }
  measure: ue_mng_vendor_cofounded_coupons_amt_lc_perc_tgmv {
    label: "Vendor Co-Founded over TGMV"
    type: number
    value_format_name: percent_2
    group_label: "UE Managerial over TGMV LC"
    description: "Participacion de los vendors en descuentos para el buyer Vendor Cofounded Coupons %TGMV"
    sql: SAFE_DIVIDE(${ue_mng_vendor_cofounded_coupons_amt_lc},${ue_con_tgmv_amt_lc});;
  }
  measure: ue_ccogs_sellout_amt_lc_perc_tgmv {
    label: "Sell-Out over TGMV"
    type: number
    value_format_name: percent_2
    group_label: "UE Managerial over TGMV LC"
    description: "Monto de Contra COGS de Buying Portal para acuerdos Sellout  Ccogs Sellout %TGMV"
    sql: SAFE_DIVIDE(${ue_ccogs_sellout_amt_lc},${ue_con_tgmv_amt_lc});;
  }
  measure: ue_ccogs_lumpsum_amt_lc_perc_tgmv {
    label: "Lumpsum over TGMV"
    type: number
    value_format_name: percent_2
    group_label: "UE Managerial over TGMV LC"
    description: "Monto de Contra COGS de Buying Portal para acuerdos Lumpsum Ccogs Lumpsum %TGMV"
    sql: SAFE_DIVIDE(${ue_ccogs_lumpsum_amt_lc},${ue_con_tgmv_amt_lc});;
  }
  measure: ue_mng_other_vendor_ccogs_amt_lc_perc_tgmv {
    label: "Other Vendor Ccogs over TGMV"
    type: number
    value_format_name: percent_2
    group_label: "UE Managerial over TGMV LC"
    description: "Monto de CCOGS que no fueran clasificados o manuales (ajustes de contabilidad) Other Vendor Ccogs %TGMV"
    sql: SAFE_DIVIDE(${ue_mng_other_vendor_ccogs_amt_lc},${ue_con_tgmv_amt_lc});;
  }
  measure: ue_mng_other_product_revenues_amt_lc_perc_tgmv {
    label: "Other Net Revenues over TGMV"
    type: number
    value_format_name: percent_2
    group_label: "UE Managerial over TGMV LC"
    description: "Monto en moneda local de otros ingresos por ventas no habituales y fondeo de cupones de terceros Other Product Revenues %TGMV"
    sql: SAFE_DIVIDE(${ue_mng_other_product_revenues_amt_lc},${ue_con_tgmv_amt_lc});;
  }
  measure: ue_mng_venta_liquidadores_amt_lc_perc_tgmv {
    label: "Venta Liquidadores over TGMV"
    type: number
    value_format_name: percent_2
    group_label: "UE Managerial over TGMV LC"
    description: "Revenues por venta de lotes de producto a liquidadores"
    sql: SAFE_DIVIDE(${ue_mng_venta_liquidadores_amt_lc},${ue_con_tgmv_amt_lc});;
  }
  measure: ue_mng_cmv_venta_liquidadores_amt_lc_perc_tgmv {
    label: "CMV Venta Liquidadores over TGMV"
    type: number
    value_format_name: percent_2
    group_label: "UE Managerial over TGMV LC"
    description: "Costo del producto vendido"
    sql: SAFE_DIVIDE(${ue_mng_cmv_venta_liquidadores_amt_lc},${ue_con_tgmv_amt_lc});;
  }
  measure: ue_mng_write_off_amt_lc_perc_tgmv {
    label: "Write Off & Recovery over TGMV"
    type: number
    value_format_name: percent_2
    group_label: "UE Managerial over TGMV LC"
    description: "Diferencia entre ajuste de Scrap del mes de contabilización y el mes anterior Write Off"
    sql: SAFE_DIVIDE(${ue_mng_write_off_amt_lc},${ue_con_tgmv_amt_lc});;
  }
  measure: ue_mng_scrap_amt_lc_perc_tgmv {
    label: "Scrap over TGMV"
    type: number
    value_format_name: percent_2
    group_label: "UE Managerial over TGMV LC"
    description: "Diferencia entre ajuste de Scrap del mes de contabilización y el mes anterior"
    sql: SAFE_DIVIDE(${ue_mng_scrap_amt_lc},${ue_con_tgmv_amt_lc});;
  }
  measure: ue_mng_triage_recovery_amt_lc_perc_tgmv {
    label: "Triage Recovery over TGMV"
    type: number
    value_format_name: percent_2
    group_label: "UE Managerial over TGMV LC"
    description: "Productos re stockeados"
    sql: SAFE_DIVIDE(${ue_mng_triage_recovery_amt_lc},${ue_con_tgmv_amt_lc});;
  }
  measure: ue_mng_return_to_vendor_amt_lc_perc_tgmv {
    label: "Return to Vendor over TGMV"
    type: number
    value_format_name: percent_2
    group_label: "UE Managerial over TGMV LC"
    description: "Productos que son devueltos al vendor (pueden o no estar dañados)"
    sql: SAFE_DIVIDE(${ue_mng_return_to_vendor_amt_lc},${ue_con_tgmv_amt_lc});;
  }
  measure: ue_mng_other_product_cogs_amt_lc_perc_tgmv {
    label: "Other Product Cogs over TGMV"
    type: number
    value_format_name: percent_2
    group_label: "UE Managerial over TGMV LC"
    description: "Monto en moneda local de otros COGS como AMF, Foreign Exchange, VNR, Obsolescencia  y Otros"
    sql: SAFE_DIVIDE(${ue_mng_other_product_cogs_amt_lc},${ue_con_tgmv_amt_lc});;
  }
  measure: ue_mng_foreign_exchange_amt_lc_perc_tgmv {
    label: "Foreign Exchange over TGMV"
    type: number
    value_format_name: percent_2
    group_label: "UE Managerial over TGMV LC"
    description: "Monto en moneda local por ajustes de tipo de cambio de divisas en la deuda con proveedores"
    sql: SAFE_DIVIDE(${ue_mng_foreign_exchange_amt_lc},${ue_con_tgmv_amt_lc});;
  }
  measure: ue_mng_financing_cost_adjustment_amt_lc_perc_tgmv {
    label: "Financing Cost Adjustment over TGMV"
    type: number
    value_format_name: percent_2
    group_label: "UE Managerial over TGMV LC"
    description: "Ajuste producto de la diferencia entre el costo financiero teorico y el holding period vs el financing cost contable (above y below EBIT).  Permite reconciliar la linea de Financing Costs entre el monto reportado en UE y la contabilidad"
    sql: SAFE_DIVIDE(${ue_mng_financing_cost_adjustment_amt_lc},${ue_con_tgmv_amt_lc});;
  }
  measure: ue_mng_business_margin_adj_amt_lc_perc_tgmv {
    label: "Business Margin TOTAL over TGMV"
    type: number
    value_format_name: percent_2
    group_label: "UE Managerial over TGMV LC"
    description: "Business Margin TOTAL ue_mng_business_margin_adj_amt_lc"
    sql: SAFE_DIVIDE(${ue_mng_business_margin_adj_amt_lc},${ue_con_tgmv_amt_lc});;
  }
  measure: ue_mng_net_monetization_adjustment_amt_lc_perc_tgmv {
    label: "Net Monetization Ajuste over TGMV"
    type: number
    value_format_name: percent_2
    group_label: "UE Managerial over TGMV LC"
    description: "Net Monetization_ajuste campo UE_MNG_NET_MONETIZATION_ADJUSTMENT_AMT_LC"
    sql: SAFE_DIVIDE(${ue_mng_net_monetization_adjustment_amt_lc},${ue_con_tgmv_amt_lc});;
  }
  measure: ue_mng_sales_exp_amt_lc_perc_tgmv {
    label: "Sales Expenses over TGMV"
    type: number
    value_format_name: percent_2
    group_label: "UE Managerial over TGMV LC"
    description: " Sales_Expenses campo UE_MNG_SALES_EXP_AMT_LC"
    sql: SAFE_DIVIDE(${ue_mng_sales_exp_amt_lc},${ue_con_tgmv_amt_lc});;
  }
  measure: ue_mng_amf_amt_lc_perc_tgmv {
    label: "AMF over TGMV"
    type: number
    value_format_name: percent_2
    group_label: "UE Managerial over TGMV LC"
    description: "Sin valores (TBD)"
    sql: SAFE_DIVIDE(${ue_mng_amf_amt_lc},${ue_con_tgmv_amt_lc});;
  }

  measure: ue_mng_other_product_cost_amt_lc_perc_tgmv {
    label: "Other Product Cost over TGMV"
    value_format_name: decimal_2
    group_label: "UE Managerial over TGMV LC"
    sql: SAFE_DIVIDE(${ue_mng_other_product_cost_amt_lc},${ue_con_tgmv_amt_lc});;
    type: number }
  measure: ue_mng_coupons_recov_amt_lc_perc_tgmv {
    label: "Coupons Recovery over TGMV"
    value_format_name: decimal_2
    group_label: "UE Managerial over TGMV LC"
    sql: SAFE_DIVIDE(${ue_mng_coupons_recov_amt_lc},${ue_con_tgmv_amt_lc});;
    type: number }
  measure: ue_mng_bank_cofounded_coupons_amt_lc_perc_tgmv {
    label: "Bank Co founded Coupons over TGMV"
    value_format_name: decimal_2
    group_label: "UE Managerial over TGMV LC"
    sql: SAFE_DIVIDE(${ue_mng_bank_cofounded_coupons_amt_lc},${ue_con_tgmv_amt_lc});;
    type: number }
  measure: ue_mng_credits_cofounded_coupons_amt_lc_perc_tgmv {
    label: "Credits Cofounded Coupons over TGMV"
    value_format_name: decimal_2
    group_label: "UE Managerial over TGMV LC"
    sql: SAFE_DIVIDE(${ue_mng_credits_cofounded_coupons_amt_lc},${ue_con_tgmv_amt_lc});;
    type: number }
  measure: ue_mng_returns_liquidations_amt_lc_perc_tgmv {
    label: "Cost_Returns_Liquidations over TGMV"
    value_format_name: decimal_2
    group_label: "UE Managerial over TGMV LC"
    sql: SAFE_DIVIDE(${ue_mng_returns_liquidations_amt_lc},${ue_con_tgmv_amt_lc});;
    type: number }
  measure: ue_mng_total_returns_amt_lc_perc_tgmv {
    label: "Total_Returns over TGMV"
    value_format_name: decimal_2
    group_label: "UE Managerial over TGMV LC"
    sql: SAFE_DIVIDE(${ue_mng_total_returns_amt_lc},${ue_con_tgmv_amt_lc});;
    type: number  }
  measure: ue_mng_bpp_bonif_returns_amt_lc_perc_tgmv {
    label: "BPP Cashout over TGMV"
    value_format_name: decimal_2
    group_label: "UE Managerial over TGMV LC"
    sql: SAFE_DIVIDE(${ue_mng_bpp_bonif_returns_amt_lc},${ue_con_tgmv_amt_lc});;
    type: number   }
  measure: ue_mng_triage_no_saleable_amt_lc_perc_tgmv {
    label: "Triage_No_Saleable over TGMV"
    value_format_name: decimal_2
    group_label: "UE Managerial over TGMV LC"
    sql: SAFE_DIVIDE(${ue_mng_triage_no_saleable_amt_lc},${ue_con_tgmv_amt_lc});;
    type: number  }
  measure: ue_mng_refurbished_amt_lc_perc_tgmv {
    label: "Refurbished over TGMV"
    value_format_name: decimal_2
    group_label: "UE Managerial over TGMV LC"
    sql: SAFE_DIVIDE(${ue_mng_refurbished_amt_lc},${ue_con_tgmv_amt_lc});;
    type: number  }
  measure: ue_mng_returns_mgmt_amt_lc_perc_tgmv {
    label: "Returns_Mgmt over TGMV"
    value_format_name: decimal_2
    group_label: "UE Managerial over TGMV LC"
    sql: SAFE_DIVIDE(${ue_mng_returns_mgmt_amt_lc},${ue_con_tgmv_amt_lc});;
    type: number  }
  measure: ue_mng_cmv_refurbished_amt_lc_perc_tgmv {
    label: "CMV Refurbished over TGMV"
    value_format_name: decimal_2
    group_label: "UE Managerial over TGMV LC"
    sql: SAFE_DIVIDE(${ue_mng_cmv_refurbished_amt_lc},${ue_con_tgmv_amt_lc});;
    type: number }
  measure: ue_mng_inventory_reg_amt_lc_perc_tgmv {
    label: "Inventory_Regularization"
    value_format_name: decimal_2
    group_label: "UE Managerial over TGMV LC"
    sql: SAFE_DIVIDE(${ue_mng_inventory_reg_amt_lc},${ue_con_tgmv_amt_lc});;
    type: number }
  measure: ue_mng_vnr_amt_lc_perc_tgmv {
    label: "VNR over TGMV"
    value_format_name: decimal_2
    group_label: "UE Managerial over TGMV LC"
    sql: SAFE_DIVIDE(${ue_mng_vnr_amt_lc},${ue_con_tgmv_amt_lc});;
    type: number  }
  measure: ue_mng_obsolescence_amt_lc_perc_tgmv {
    label: "Obsolescence over TGMV"
    value_format_name: decimal_2
    group_label: "UE Managerial over TGMV LC"
    sql: SAFE_DIVIDE(${ue_mng_obsolescence_amt_lc},${ue_con_tgmv_amt_lc});;
    type: number  }


  measure: ue_mng_cmv_gross_amt_lc_perc_tgmv {
    label: "CMV Gross over TGMV"
    type: number
    value_format_name: decimal_2
    group_label: "UE Managerial over TGMV LC"
    description: "Costo del producto"
    sql: SAFE_DIVIDE(${ue_mng_cmv_gross_amt_lc},${ue_con_tgmv_amt_lc});; }
  measure: ue_mng_product_net_monetization_adj_amt_lc_perc_tgmv {
    label: "Product Monetization Adj over TGMV"
    type: number
    value_format_name: decimal_2
    group_label: "UE Managerial over TGMV LC"
    description: ""
    sql: SAFE_DIVIDE(${ue_mng_product_net_monetization_adj_amt_lc},${ue_con_tgmv_amt_lc});; }
  measure: ue_mng_payments_revenues_amt_lc_perc_tgmv {
    label: "Financing Gross over TGMV"
    type: number
    value_format_name: decimal_2
    group_label: "UE Managerial over TGMV LC"
    description: ""
    sql: SAFE_DIVIDE(${ue_mng_payments_revenues_amt_lc},${ue_con_tgmv_amt_lc});; }
  measure: ue_mng_ratably_amt_lc_perc_tgmv {
    label: "Ratably over TGMV"
    type: number
    value_format_name: decimal_2
    group_label: "UE Managerial over TGMV LC"
    description: "Ajuste producto del diferimiento de revenues financieros por el no adelanto de los cupones. Se calcula como la variación del stock de revenues entre el mes contable y el anterior"
    sql: SAFE_DIVIDE(${ue_mng_ratably_amt_lc},${ue_con_tgmv_amt_lc});; }
  measure: ue_mng_ebit_adj_amt_lc_perc_tgmv {
    label: "Ebit Adjusted over TGMV"
    type: number
    value_format_name: decimal_2
    group_label: "UE Managerial over TGMV LC"
    description: ""
    sql: SAFE_DIVIDE(${ue_mng_ebit_adj_amt_lc},${ue_con_tgmv_amt_lc});; }






# --------------------------------
# MEASURES - UE CALLERI Mascara
# --------------------------------

         measure: direct_contribution_lc {
           label: "DC Mask Lc"
           type: sum
           value_format_name: decimal_2
           group_label: "UE Mascara"
           description: ""
         }
       #  measure: direct_contribution_usd {
       #    label: "DC Mask usd"
       #    type: sum
       #    value_format_name: decimal_2
       #    group_label: "UE Mascara"
       #    description: ""
       #  }
         measure: m_ebit_lc {
           label: "Ebit Mask Lc"
           type: sum
           value_format_name: decimal_2
           group_label: "UE Mascara"
           description: ""
         }
       #  measure: m_ebit_usd {
       #    label: "Ebit Mask usd"
       #    type: sum
       #    value_format_name: decimal_2
       #    group_label: "UE Mascara"
       #    description: ""
       #  }
         measure: ppm_adjusted_lc {
           label: "PPM Gross Lc"
           type: sum
           value_format_name: decimal_2
           group_label: "UE Mascara"
           description: ""
         }
       #  measure: ppm_adjusted_usd {
       #    label: "PPM Gross usd"
       #    type: sum
       #    value_format_name: decimal_2
       #    group_label: "UE Mascara"
       #    description: ""
       #  }

# --------------------------------
# PLANS
# --------------------------------

  measure: plan_tgmv {
    label: "Plan TGMV"
    type: sum
    value_format_name: decimal_0
    group_label: "PLAN"
    description: "Plan de TGMV"
  }
  measure: plan_tgmv_lc {
    label: "Plan TGMV LC"
    type: sum
    value_format_name: decimal_0
    group_label: "PLAN"
    description: "Plan de TGMV LC"
  }
  measure: plan_tsi {
    label: "Plan TSI"
    type: sum
    value_format_name: decimal_0
    group_label: "PLAN"
    description: "Plan de TSI"
  }
  measure: plan_revenues_gross {
    label: "Plan Revenues usd"
    type: sum
    value_format_name: decimal_0
    group_label: "PLAN"
    description: "Plan de REVENUES en usd"
  }
  measure: plan_revenues_gross_lc {
    label: "Plan Revenues lc"
    type: sum
    value_format_name: decimal_0
    group_label: "PLAN"
    description: "Plan de REVENUES en LC"
  }
  measure: plan_ads_revenues {
    label: "Plan Ads Revenues usd"
    type: sum
    value_format_name: decimal_0
    group_label: "PLAN"
    description: "Plan de ADS REVENUES en usd"
    hidden: yes
  }
  measure: plan_ads_revenues_lc {
    label: "Plan Ads Revenues LC"
    type: sum
    value_format_name: decimal_0
    group_label: "PLAN"
    description: "Plan de ADS REVENUES en LC"
    hidden: yes
  }
  measure: plan_payment_revenues {
    label: "Plan Payment REVENUES usd"
    type: sum
    value_format_name: decimal_0
    group_label: "PLAN"
    description: "Plan de Payment REVENUES en usd"
    hidden: yes
  }
  measure: plan_payment_revenues_lc {
    label: "Plan Payment Revenues lc"
    type: sum
    value_format_name: decimal_0
    group_label: "PLAN"
    description: "Plan de PAYMENT REVENUES en LC"
    hidden: yes
  }
  measure: plan_payment_cost {
    label: "Plan Payment cost usd"
    type: sum
    value_format_name: decimal_0
    group_label: "PLAN"
    description: "Plan de PAYMENT COST en usd"
    hidden: yes
  }
  measure: plan_payment_cost_lc {
    label: "Plan Payment cost lc"
    type: sum
    value_format_name: decimal_0
    group_label: "PLAN"
    description: "Plan de PAYMENT COST en LC"
    hidden: yes
  }
  measure: plan_shipment_revenues {
    label: "Plan Shipment revenues usd"
    type: sum
    value_format_name: decimal_0
    group_label: "PLAN"
    description: "Plan de SHIPMENT REVENUES en usd"
    hidden: yes
  }
  measure: plan_shipment_revenues_lc {
    label: "Plan Shipment revenues lc"
    type: sum
    value_format_name: decimal_0
    group_label: "PLAN"
    description: "Plan de SHIPMENT REVENUES en LC"
    hidden: yes
  }
  measure:  plan_bpp_recfast_triage_write_off {
    label: "Plan BPP Triage write off usd"
    type: sum
    value_format_name: decimal_0
    group_label: "PLAN"
    description: "Plan BPP Triage write off en usd"
    hidden: yes
  }
  measure:  plan_bpp_recfast_triage_write_off_lc {
    label: "Plan BPP Triage write off lc"
    type: sum
    value_format_name: decimal_0
    group_label: "PLAN"
    description: "Plan BPP TRIAGE WRITE OFF en LC"
    hidden: yes
  }
  measure:  plan_tax_recovery {
    label: "Plan Tax recovery usd"
    type: sum
    value_format_name: decimal_0
    group_label: "PLAN"
    description: "Plan Tax recovery en usd"
    hidden: yes
  }
  measure:  plan_tax_recovery_lc {
    label: "Plan Tax recovery LC"
    type: sum
    value_format_name: decimal_0
    group_label: "PLAN"
    description: "Plan TAX RECOVERY en LC"
    hidden: yes
  }
  measure:  plan_contracogs {
    label: "Plan Contracogs usd"
    type: sum
    value_format_name: decimal_0
    group_label: "PLAN"
    description: "Plan CONTRACOGS en usd"
    hidden: yes
  }
  measure:  plan_contracogs_lc {
    label: "Plan Contracogs LC"
    type: sum
    value_format_name: decimal_0
    group_label: "PLAN"
    description: "Plan CONTRACOGS en LC"
    hidden: yes
  }
  measure:  plan_shipping_cost {
    label: "Plan Shipping cost usd"
    type: sum
    value_format_name: decimal_0
    group_label: "PLAN"
    description: "Plan SHIPPING COST en usd"
    hidden: yes
  }
  measure:  plan_shipping_cost_lc {
    label: "Plan Shipping cost LC"
    type: sum
    value_format_name: decimal_0
    group_label: "PLAN"
    description: "Plan SHIPPING COST en LC"
    hidden: yes
  }
  measure:  plan_shipping_ops_cost_variable {
    label: "Plan Shipping ops cost variable usd"
    type: sum
    value_format_name: decimal_0
    group_label: "PLAN"
    description: "Plan SHIPPING OPS COST VARIABLE en usd"
    hidden: yes
  }
  measure:  plan_shipping_ops_cost_variable_lc {
    label: "Plan Shipping ops cost variable LC"
    type: sum
    value_format_name: decimal_0
    group_label: "PLAN"
    description: "Plan SHIPPING OPS COST VARIABLE en LC"
    hidden: yes
  }
  measure:  plan_shipping_ops_cost_fijo {
    label: "Plan Shipping ops cost fijo usd"
    type: sum
    value_format_name: decimal_0
    group_label: "PLAN"
    description: "Plan SHIPPING OPS COST FIJO en usd"
    hidden: yes
  }
  measure:  plan_shipping_ops_cost_fijo_lc {
    label: "Plan Shipping ops cost fijo LC"
    type: sum
    value_format_name: decimal_0
    group_label: "PLAN"
    description: "Plan SHIPPING OPS COST FIJO en LC"
    hidden: yes
  }
  measure:  plan_shipping_ops_cost_total {
    label: "Plan Shipping Ops cost total usd"
    type: sum
    value_format_name: decimal_0
    group_label: "PLAN"
    description: "Plan SHIPPING OPS COST FIJO en usd"
    hidden: yes
  }
  measure:  plan_shipping_ops_cost_total_lc {
    label: "Plan Shipping Ops cost total lc"
    type: sum
    value_format_name: decimal_0
    group_label: "PLAN"
    description: "Plan SHIPPING OPS COST FIJO en LC"
    hidden: yes
  }
  measure:  plan_cx {
    label: "Plan CX usd"
    type: sum
    value_format_name: decimal_0
    group_label: "PLAN"
    description: "Plan CX en usd"
    hidden: yes
  }
  measure:  plan_cx_lc {
    label: "Plan CX lc"
    type: sum
    value_format_name: decimal_0
    group_label: "PLAN"
    description: "Plan CX en LC"
    hidden: yes
  }
  measure:  plan_collection_fees {
    label: "Plan collection fees usd"
    type: sum
    value_format_name: decimal_0
    group_label: "PLAN"
    description: "Plan COLLECTION FEES en usd"
    hidden: yes
  }
  measure:  plan_collection_fees_lc {
    label: "Plan collection fees lc"
    type: sum
    value_format_name: decimal_0
    group_label: "PLAN"
    description: "Plan COLLECTION FEES en LC"
    hidden: yes
  }
  measure:  plan_chargebacks {
    label: "Plan chargebacks usd"
    type: sum
    value_format_name: decimal_0
    group_label: "PLAN"
    description: "Plan CHARGEBACKS USD en usd"
    hidden: yes
  }
  measure:  plan_chargebacks_lc {
    label: "Plan chargebacks lc"
    type: sum
    value_format_name: decimal_0
    group_label: "PLAN"
    description: "Plan CHARGEBACKS en LC"
    hidden: yes
  }
  measure:  plan_sales_taxes {
    label: "Plan sales taxes usd"
    type: sum
    value_format_name: decimal_0
    group_label: "PLAN"
    description: "Plan SALES TAXES en usd"
    hidden: yes
  }
  measure:  plan_sales_taxes_lc {
    label: "Plan sales taxes lc"
    type: sum
    value_format_name: decimal_0
    group_label: "PLAN"
    description: "Plan SALES TAXES en LC"
    hidden: yes
  }
  measure:  plan_bpp {
    label: "Plan BPP usd"
    type: sum
    value_format_name: decimal_0
    group_label: "PLAN"
    description: "Plan BPP en usd"
    hidden: yes
  }
  measure:  plan_bpp_lc {
    label: "Plan BPP LC"
    type: sum
    value_format_name: decimal_0
    group_label: "PLAN"
    description: "Plan BPP en LC"
    hidden: yes
  }
  measure:  plan_bpp_recovery {
    label: "Plan BPP recovery usd"
    type: sum
    value_format_name: decimal_0
    group_label: "PLAN"
    description: "Plan BPP RECOVERY en usd"
    hidden: yes
  }
  measure:  plan_bpp_recovery_lc {
    label: "Plan BPP recovery lc"
    type: sum
    value_format_name: decimal_0
    group_label: "PLAN"
    description: "Plan BPP RECOVERY en LC"
    hidden: yes
  }
  measure:  plan_marketing_indirecto {
    label: "Plan marketing indirecto usd"
    type: sum
    value_format_name: decimal_0
    group_label: "PLAN"
    description: "Plan MARKETING INDIRECTO en usd"
    hidden: yes
  }
  measure:  plan_marketing_indirecto_lc {
    label: "Plan marketing indirecto lc"
    type: sum
    value_format_name: decimal_0
    group_label: "PLAN"
    description: "Plan MARKETING INDIRECTO en LC"
    hidden: yes
  }
  measure:  plan_marketing_directo {
    label: "Plan marketing directo usd"
    type: sum
    value_format_name: decimal_0
    group_label: "PLAN"
    description: "Plan MARKETING DIRECTO en usd"
    hidden: yes
  }
  measure:  plan_marketing_directo_lc {
    label: "Plan marketing directo LC"
    type: sum
    value_format_name: decimal_0
    group_label: "PLAN"
    description: "Plan MARKETING DIRECTO en LC"
    hidden: yes
  }
  measure:  plan_bu_local_exp {
    label: "Plan bu local exp usd"
    type: sum
    value_format_name: decimal_0
    group_label: "PLAN"
    description: "Plan BU LOCAL EXP en usd"
    hidden: yes
  }
  measure:  plan_bu_local_exp_lc {
    label: "Plan bu local exp lc"
    type: sum
    value_format_name: decimal_0
    group_label: "PLAN"
    description: "Plan BU LOCAL EXP en LC"
    hidden: yes
  }
  measure:  plan_write_off {
    label: "Plan write off usd"
    type: sum
    value_format_name: decimal_0
    group_label: "PLAN"
    description: "Plan WRITE OFF en usd"
    hidden: yes
  }
  measure:  plan_write_off_lc {
    label: "Plan write off lc"
    type: sum
    value_format_name: decimal_0
    group_label: "PLAN"
    description: "Plan WRITE OFF en LC"
    hidden: yes
  }
  measure:  plan_all_exp {
    label: "Plan all exp usd"
    type: sum
    value_format_name: decimal_0
    group_label: "PLAN"
    description: "Plan ALL EXP en usd"
    hidden: yes
  }
  measure:  plan_all_exp_lc {
    label: "Plan all exp lc"
    type: sum
    value_format_name: decimal_0
    group_label: "PLAN"
    description: "Plan ALL EXP en LC"
    hidden: yes
  }
  measure:  plan_dc {
    label: "Plan DC usd"
    type: sum
    value_format_name: decimal_0
    group_label: "PLAN"
    description: "Plan DC en usd"
    hidden: yes
  }
  measure:  plan_dc_lc {
    label: "Plan DC lc"
    type: sum
    value_format_name: decimal_0
    group_label: "PLAN"
    description: "Plan DC en LC"
    hidden: yes
  }
  measure:  plan_ebit {
    label: "Plan EBIT usd"
    type: sum
    value_format_name: decimal_0
    group_label: "PLAN"
    description: "Plan EBIT en usd"
    hidden: yes
  }
  measure:  plan_ebit_lc {
    label: "Plan EBIT lc"
    type: sum
    value_format_name: decimal_0
    group_label: "PLAN"
    description: "Plan EBIT en LC"
    hidden: yes
  }
  measure:  plan_product_cost {
    label: "Plan product cost usd"
    type: sum
    value_format_name: decimal_0
    group_label: "PLAN"
    description: "Plan PRODUCTO COST en usd"
    hidden: yes
  }
  measure:  plan_product_cost_lc {
    label: "Plan product cost lc"
    type: sum
    value_format_name: decimal_0
    group_label: "PLAN"
    description: "Plan PRODUCTO COST en LC"
    hidden: yes
  }
  measure:  plan_ppm_full {
    label: "Plan PPM full usd"
    type: sum
    value_format_name: decimal_0
    group_label: "PLAN"
    description: "Plan PPM full en usd"
  }
  measure:  plan_ppm_full_lc {
    label: "Plan PPM full lc"
    type: sum
    value_format_name: decimal_0
    group_label: "PLAN"
    description: "Plan PPM FULL en LC"
  }
  measure: plan_doh {
    label: "Plan DOH"
    type: median
    value_format_name:  decimal_0
    group_label: "PLAN"
    description: "DOH Plan en USD"
    hidden: no
  }
  measure: plan_doi {
    label: "Plan DOI"
    type: median
    value_format_name:  decimal_0
    group_label: "PLAN"
    description: "DOI Plan en USD"
    hidden: no
  }
  measure: plan_aging {
    label: "Plan Aging"
    type: average
    value_format_name:  percent_2
    group_label: "PLAN"
    description: "Aging Plan en USD"
    hidden: no
  }
  measure: plan_deadwood {
    label: "Plan Deadwood"
    type: average
    value_format_name:  percent_2
    group_label: "PLAN"
    description: "Deadwood Plan en USD"
    hidden: no
  }
# --------------------------------
# fbm_stock_aging_1p
# --------------------------------

  measure: available_quantity  {
    type: sum
    label: "Available qty"
    description: "Quantity available in stock"
    group_label: "AVAILABILITY"
  }

  measure: ag_0_45_available_qty {
    type: sum
    label: "Aging 0-45 Available qty"
    description: "Quantity available in stock with aging between 0 and 45 days"
    group_label: "AVAILABILITY (Available qty)"
  }
  measure:  ag_46_60_available_qty {
    type: sum
    label: "Aging 46-60 Available qty"
    description: "Quantity available in stock with aging between 46 and 60 days"
    group_label: "AVAILABILITY (Available qty)"
  }
  measure:  ag_61_90_available_qty {
    type: sum
    label: "Aging 61-90 Available qty"
    description: "Quantity available in stock with aging between 61 and 90 days"
    group_label: "AVAILABILITY (Available qty)"
  }
  measure:  ag_91_120_available_qty {
    type: sum
    label: "Aging 91-120 Available qty"
    description: "Quantity available in stock with aging between 91 and 12o days"
    group_label: "AVAILABILITY (Available qty)"
  }
  measure:  ag_121_180_available_qty {
    type: sum
    label: "Aging 121-180 Available qty"
    description: "Quantity available in stock with aging between 121 and 180 days"
    group_label: "AVAILABILITY (Available qty)"
  }
  measure:  ag_greater_180_available_qty {
    type: sum
    label: "Aging >180 Available qty"
    description: "Quantity available in stock with aging greater than 180 days"
    group_label: "AVAILABILITY (Available qty)"
  }
  measure: ag_greater_60_available_qty {
    type: sum
    label: "Aging >60 Available qty"
    description: "Quantity available in stock with aging greater than 60 days"
    group_label: "AVAILABILITY (Available qty)"
  }
  measure: ag_greater_60_available_p {
    type: number
    value_format_name: percent_1
    label: "Aging >60 Available qty %"
    description: "Quantity available in stock with aging greater than 60 days over Available qty"
    group_label: "AVAILABILITY (Available qty)"
    sql: safe_divide( ${ag_greater_60_available_qty},${available_quantity}) ;;
  }


  measure:  awg_0_45_s_saleable_qty {
    type: sum
    label: "AWA 0-45 Stock Saleable qty"
    description: "Quantity available in stock with aging between 0 and 45 days"
    group_label: "AVAILABILITY (Ag Weighted Avg qty)"
  }
  measure:  awg_46_60_s_saleable_qty {
    type: sum
    label: "AWA 46-60 Stock Saleable qty"
    description: "Aging weighted average - lvl SKU with aging between 46 and 60 days"
    group_label: "AVAILABILITY (Ag Weighted Avg qty)"
  }
  measure:  awg_61_90_s_saleable_qty {
    type: sum
    label: "AWA 61-90 Stock Saleable qty"
    description: "Aging weighted average - lvl SKU with aging between 61 and 90 days"
    group_label: "AVAILABILITY (Ag Weighted Avg qty)"
  }
  measure:  awg_91_120_s_saleable_qty {
    type: sum
    label: "AWA 91-120 Stock Saleable qty"
    description: "Aging weighted average - lvl SKU with aging between 91 and 120 days"
    group_label: "AVAILABILITY (Ag Weighted Avg qty)"
  }
  measure:  awg_121_180_s_saleable_qty {
    type: sum
    label: "AWA 121-180 Stock Saleable qty"
    description: "Aging weighted average - lvl SKU with aging between 121 and 180 days"
    group_label: "AVAILABILITY (Ag Weighted Avg qty)"
  }
  measure:  awg_greater_180_s_saleable_qty {
    type: sum
    label: "AWA >180 Stock Saleable qty"
    description: "Aging weighted average - lvl SKU with aging greater than 180 days"
    group_label: "AVAILABILITY (Ag Weighted Avg)"
  }
  measure:  awg_greater_60_s_saleable_qty {
    type: sum
    label: "AWA >60 Stock Saleable qty"
    description: "Aging weighted average - lvl SKU with aging greater than 60 days"
    group_label: "AVAILABILITY (Ag Weighted Avg qty)"
  }
  measure:  awg_greater_60_s_saleable_p {
    type: number
    value_format_name: percent_1
    label: "AWA >60 Stock Saleable qty %"
    description: "Aging weighted average - lvl SKU with aging greater than 60 days over Stock Saleable"
    group_label: "AVAILABILITY (Ag Weighted Avg qty)"
    sql: SAFE_DIVIDE (${awg_greater_60_s_saleable_qty},${stock_saleable}) ;;
  }


  measure:  awg_0_45_s_saleable_valued_est {
    type: sum
    label: "AWA 0-45 Stock Saleable Valued Estimated"
    description: "Unidades disponibles a la venta Valorizado Estimado usd - aging between 0 and 45 days"
    group_label: "AVAILABILITY (Ag Weighted Avg usd)"
  }
  measure:  awg_46_60_s_saleable_valued_est {
    type: sum
    label: "AWA 46-60 Stock Saleable Valued Estimated"
    description: "Unidades disponibles a la venta Valorizado Estimado usd - aging between 46 and 60 days"
    group_label: "AVAILABILITY (Ag Weighted Avg usd)"
  }
  measure:  awg_61_90_s_saleable_valued_est {
    type: sum
    label: "AWA 61-90 Stock Saleable Valued Estimated"
    description: "Unidades disponibles a la venta Valorizado Estimado usd - aging between 61 and 90 days"
    group_label: "AVAILABILITY (Ag Weighted Avg usd)"
  }
  measure:  awg_91_120_s_saleable_valued_est {
    type: sum
    label: "AWA 91-120 Stock Saleable Valued Estimated"
    description: "Unidades disponibles a la venta Valorizado Estimado usd - aging between 91 and 120 days"
    group_label: "AVAILABILITY (Ag Weighted Avg usd)"
  }
  measure:  awg_121_180_s_saleable_valued_est {
    type: sum
    label: "AWA 121-180 Stock Saleable Valued Estimated"
    description: "Unidades disponibles a la venta Valorizado Estimado usd - aging between 121 and 180 days"
    group_label: "AVAILABILITY (Ag Weighted Avg usd)"
  }
  measure:  awg_greater_180_s_saleable_valued_est {
    type: sum
    label: "AWA >180 Stock Saleable Valued Estimated"
    description: "Unidades disponibles a la venta Valorizado Estimado usd - with aging greater than 180 days"
    group_label: "AVAILABILITY (Ag Weighted Avg usd)"
  }
  measure:  awg_greater_60_s_saleable_valued_est {
    type: sum
    label: "AWA >60 Stock Saleable Valued Estimated"
    description: "Unidades disponibles a la venta Valorizado Estimado usd - aging greater than 60 days"
    group_label: "AVAILABILITY (Ag Weighted Avg usd)"
  }
  measure:  awg_greater_60_s_saleable_valued_est_p {
    type: number
    value_format_name: percent_1
    label: "AWA >60 Stock Valued usd %"
    description: "Unidades disponibles a la venta Valorizado Estimado usd - aging greater than 60 days over Stock Saleable"
    group_label: "AVAILABILITY (Ag Weighted Avg usd)"
    sql: SAFE_DIVIDE (${awg_greater_60_s_saleable_valued_est},${stock_value}) ;;
  }

  measure:  awg_0_45_s_saleable_valued_est_lc {
    type: sum
    label: "AWA 0-45 Stock Saleable Valued Estimated LC"
    description: "Unidades disponibles a la venta Valorizado Estimado usd - aging between 0 and 45 days"
    group_label: "AVAILABILITY (Ag Weighted Avg lc)"
  }
  measure:  awg_46_60_s_saleable_valued_est_lc {
    type: sum
    label: "AWA 46-60 Stock Saleable Valued Estimated LC"
    description: "Unidades disponibles a la venta Valorizado Estimado usd - aging between 46 and 60 days"
    group_label: "AVAILABILITY (Ag Weighted Avg lc)"
  }
  measure:  awg_61_90_s_saleable_valued_est_lc {
    type: sum
    label: "AWA 61-90 Stock Saleable Valued Estimated LC"
    description: "Unidades disponibles a la venta Valorizado Estimado usd - aging between 61 and 90 days"
    group_label: "AVAILABILITY (Ag Weighted Avg lc)"
  }
  measure:  awg_91_120_s_saleable_valued_est_lc {
    type: sum
    label: "AWA 91-120 Stock Saleable Valued Estimated LC"
    description: "Unidades disponibles a la venta Valorizado Estimado usd - aging between 91 and 120 days"
    group_label: "AVAILABILITY (Ag Weighted Avg lc)"
  }
  measure:  awg_121_180_s_saleable_valued_est_lc {
    type: sum
    label: "AWA 121-180 Stock Saleable Valued Estimated LC"
    description: "Unidades disponibles a la venta Valorizado Estimado usd - aging between 121 and 180 days"
    group_label: "AVAILABILITY (Ag Weighted Avg lc)"
  }
  measure:  awg_greater_180_s_saleable_valued_est_lc {
    type: sum
    label: "AWA >180 Stock Saleable Valued Estimated LC"
    description: "Unidades disponibles a la venta Valorizado Estimado usd - with aging greater than 180 days"
    group_label: "AVAILABILITY (Ag Weighted Avg lc)"
  }
  measure:  awg_greater_60_s_saleable_valued_est_lc {
    type: sum
    label: "AWA >60 Stock Saleable Valued Estimated LC"
    description: "Unidades disponibles a la venta Valorizado Estimado usd - aging greater than 60 days"
    group_label: "AVAILABILITY (Ag Weighted Avg lc)"
  }
  measure:  awg_greater_60_s_saleable_valued_est_lc_p {
    type: number
    value_format_name: percent_1
    label: "AWA >60 Stock Valued lc %"
    description: "Unidades disponibles a la venta Valorizado Estimado lc - aging greater than 60 days over Stock Saleable"
    group_label: "AVAILABILITY (Ag Weighted Avg lc)"
    sql: SAFE_DIVIDE (${awg_greater_60_s_saleable_valued_est_lc},${stock_value_lc}) ;;
  }


  measure: si_30 {
    type: sum
    label: "SI 30d"
    description: "Succesful item para 30 días"
    group_label: "Sales Tracker"
    hidden: yes
  }
  measure: si_valued_estimated_30 {
    type: sum
    label: "SI Valued Estimated 30d"
    description: "Succesful item Valorizado Estimado en USD para 30 días"
    group_label: "Sales Tracker"
    hidden: yes
  }
  measure: stock_days_30 {
    type: sum
    label: "Stock Days 30d"
    description: "La cantidad de ite_item _inventory_id sin venta, ni stock por 30 dias"
    group_label: "Sales Tracker"
    hidden: yes
  }

#  measure: stock_available_valued_estimated {
#    type: sum
#    label: "Stock Available Valued Estimated"
#    description: "Agregación 2 del Dominio al que pertenece el Item"
#    group_label: "STOCK AVAILABLE VALUED ESTIMATED"
#    hidden: yes
#  }
#  measure: stock_saleable_valued_estimated_usd {
#    type: sum
#    label: "Stock Saleable Valued usd"
#    description: "Unidades disponibles a la venta Valorizado Estimado usd (El origen del costo puede ser desde SAP o desde la PO)"
#    group_label: "AVAILABILITY"
#  }
#  measure: stock_saleable_valued_estimated_lc {
#    type: sum
#    label: "Stock Saleable Valued lc"
#    description: "Unidades disponibles a la venta Valorizado Estimado lc (El origen del costo puede ser desde SAP o desde la PO)"
#    group_label: "AVAILABILITY"
#  }



  measure: stock_saleable_valued_deadwood {
    type: sum
    hidden: yes
    label: "Stock Saleable Valued - Deadwood"
    group_label: "AVAILABILITY"
    description: "Stock Saleable Valued sin Ventas Deadwood para Deadwood %"

  }

  measure: doh {
    type: number
    label: "DOH"
    group_label: "AVAILABILITY"
    description: "Inventory days on hand (DOH) measures how long it takes to sell the inventory"
    value_format_name: decimal_1
    sql: CASE WHEN ${stock_saleable} < 1 THEN 0
             WHEN ${si_30} = 0 THEN 999999
             ELSE SAFE_DIVIDE(
                         ${stock_saleable} ,(SAFE_DIVIDE (${si_30},30))
                        )
             END ;;
  }

  measure: doi {
    type: number
    label: "DOI"
    group_label: "AVAILABILITY"
    description: "DOI: Stock_Available_Valued_Estimated / (SI_Valued_Estimated_30} / 30)"
    value_format_name: decimal_1
    sql: SAFE_DIVIDE(
                     ${stock_available_valued_estimated},(SAFE_DIVIDE( ${si_valued_estimated_30} ,30))
                    ) ;;
  }

  measure: deadwood_p {
    type: number
    label: "Deadwood %"
    group_label: "AVAILABILITY"
    description: "DOI: Stock Saleable Valued Sin ventas-Deadwood / (Stock_Saleable_Valued_Estimated / 30)"
    value_format_name: percent_1
    sql: SAFE_DIVIDE(
                     ${stock_saleable_valued_deadwood},${stock_value}
                    ) ;;
  }



