explore:fpet_test  {}

view: fpet_test {
  
    derived_table: {
  
    sql: 
    
    select

          ORD_CLOSED_DT,
          SIT_SITE_ID,
          ITE_ITEM_SAP_SKU,
          ITE_ITEM_ID,
          ITE_ITEM_DOM_DOMAIN_ID,
          ITE_ITEM_SUPERMARKET_FLG,

    CASE WHEN COUNT(ITE_ITEM_ID) OVER (PARTITION BY  SIT_SITE_ID, ITE_ITEM_SAP_SKU ) = 1  THEN cast(ITE_ITEM_ID as string) ELSE "All" end as ITEM,

    CASE WHEN ROW_NUMBER() OVER (PARTITION BY DATE_TRUNC(ORD_CLOSED_DT, year), SIT_SITE_ID, ITE_ITEM_SAP_SKU order by  SUM(SI) DESC ) = 1  THEN ITE_ITEM_DOM_DOMAIN_ID ELSE NULL end as DOMAIN_ID,

    CASE WHEN ROW_NUMBER() OVER (PARTITION BY  DATE_TRUNC(ORD_CLOSED_DT, year), SIT_SITE_ID, ITE_ITEM_SAP_SKU order by SUM(SI) DESC ) = 1 then ITE_ITEM_SUPERMARKET_FLG ELSE  CAST( NULL AS BOOL) end as SUPERFLAG,

    --MAX (ITE_ITEM_BULKY_FLG) bulky,


from `meli-bi-data.WHOWNER.DM_MKP_PL1P_INVENTORY_METRICS`

where DATE_TRUNC(ORD_CLOSED_DT, YEAR) >= DATE_SUB(DATE_TRUNC(CURRENT_DATE(), year), INTERVAL 2 YEAR)
and PARTY_TYPE_ID = "1P"
and SIT_SITE_ID IN ("MLB","MLA","MCO","MLC","MLM")
group by 1,2,3,4,5,6;;

  }
  
  dimension_group: ord_closed_dt {
    type: time
    timeframes: [  year   ]
    label: "ord closed date"
    description: "Fecha de la creacion de la orden (Order)"
    convert_tz: no
  }
  dimension: sit_site_id {
    type: string
    label: "Site"
    description: "ID del sitio-pais del registro"
  }
  dimension: ite_item_sap_sku {
    type: string
    label: "SAP SKU"
    description: "Stock Keeping Unit. ID de los ítems que existen en inventario"
  }
  
  dimension: ite_item_id {
    type: string
    label: "Item Id"
    description: "ID del Item"
    sql: ${TABLE}.item ;;
  }
  
  dimension: ite_dom_domain_id{
    type: string
    description: "ID unico que identifica al dominio"
    label: "Domain ID"
    sql: ${TABLE}.domain_id ;;
  }
  
  dimension: ite_item_supermarket_flg {
    type: string
    description: "Flag que define al Item si pertenece a Supermercado"
    label: "Supermarket flg"
    sql: ${TABLE}.Superflag ;;
  }
  
  
  measure: campo_validador {
    
    type: sum
    label: "Campo Validador"
    description: "Campo Validador para PK"
    sql: 1 ;;
  }
  
 }
