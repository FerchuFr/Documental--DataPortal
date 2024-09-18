WITH fpet_sku_im_normalized_fields_dos AS (SELECT
    (TIMESTAMP(DATE_TRUNC(refactoring_1p_inventory_metrics.ORD_CLOSED_DT , YEAR))) AS ord_closed_dt,
    refactoring_1p_inventory_metrics.SIT_SITE_ID  AS sit_site_id,
    refactoring_1p_inventory_metrics.ITE_ITEM_SAP_SKU AS ite_item_sap_sku,
    max ( concat( cast(( (refactoring_1p_inventory_metrics.STOCK_SALEABLE+refactoring_1p_inventory_metrics.SI) ) as string),"," , refactoring_1p_inventory_metrics.ITE_ITEM_DOM_DOMAIN_ID )) AS max_dom_domain,
    max ( concat( cast(( (refactoring_1p_inventory_metrics.STOCK_SALEABLE+refactoring_1p_inventory_metrics.SI) ) as string),"," , refactoring_1p_inventory_metrics.ITE_ITEM_BULKY_FLG )) AS max_bulky_flag,
    max ( concat( cast(( (refactoring_1p_inventory_metrics.STOCK_SALEABLE+refactoring_1p_inventory_metrics.SI) ) as string),"," , refactoring_1p_inventory_metrics.ITE_ITEM_SUPERMARKET_FLG )) AS max_supermarket_flag
FROM `meli-bi-data.WHOWNER.DM_MKP_PL1P_INVENTORY_METRICS`  AS refactoring_1p_inventory_metrics
WHERE (refactoring_1p_inventory_metrics.PARTY_TYPE_ID ) = '1P'
GROUP BY
    1,
    2,
    3)
SELECT
    (refactoring_lk_pl1p_purchase_order_detail.PL1P_PO_SAP_CREATED_DATE ) AS refactoring_lk_pl1p_purchase_order_detail_pl1p_po_sap_created_date_date,
    refactoring_lk_pl1p_purchase_order_detail.SAP_SKU AS refactoring_lk_pl1p_purchase_order_detail_sap_sku,
    split(fpet_sku_im_normalized_fields_dos.max_dom_domain, ',') [offset(1)] AS fpet_sku_im_normalized_fields_dos_normalized_dom_domain_id,
    split(fpet_sku_im_normalized_fields_dos.max_bulky_flag, ',') [offset(1)] AS fpet_sku_im_normalized_fields_dos_normalized_max_bulky_flag,
    split(fpet_sku_im_normalized_fields_dos.max_supermarket_flag, ',') [offset(1)] AS fpet_sku_im_normalized_fields_dos_normalized_max_supermarket_flag,
    COALESCE(SUM(CAST( refactoring_lk_pl1p_purchase_order_detail.PL1P_PO_QUANTITY  AS NUMERIC)), 0) AS sum_of_pl1p_po_quantity
FROM `meli-bi-data.WHOWNER.LK_PL1P_PURCHASE_ORDER_DETAIL`  AS refactoring_lk_pl1p_purchase_order_detail
LEFT JOIN fpet_sku_im_normalized_fields_dos ON refactoring_lk_pl1p_purchase_order_detail.SIT_SITE_ID =fpet_sku_im_normalized_fields_dos.sit_site_id
      and (EXTRACT(YEAR FROM refactoring_lk_pl1p_purchase_order_detail.PL1P_PO_SAP_CREATED_DATE )) = (DATE(fpet_sku_im_normalized_fields_dos.ord_closed_dt))
      and refactoring_lk_pl1p_purchase_order_detail.SAP_SKU = fpet_sku_im_normalized_fields_dos.ite_item_sap_sku

WHERE (refactoring_lk_pl1p_purchase_order_detail.SAP_SKU) = '000000000000094685'
GROUP BY
    1,
    2,
    3,
    4,
    5
ORDER BY
    1 DESC
LIMIT 500