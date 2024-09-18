# Connection
connection: "commerce-1p"

# Include explores

include: "/commerce_first_party/*/explores/*.explore"
include: "/enhanced_tables/extended_views/*.view"


# Configuración de primer día de la semana

week_start_day: sunday



# Creacion de datagroups

datagroup: datagroup_24_ue_managerial {
  sql_trigger: SELECT FLOOR(((TIMESTAMP_DIFF(CURRENT_TIMESTAMP(),'1970-01-01 00:00:00',SECOND)) - 60*60*10.5)/(60*60*24)) ;;
  label: "ETL Data Group"
  description: "Se dispara todos los días a las UTC('-03') 07:00hrs Arg"
}

datagroup: datagroup_24_view_final {
  sql_trigger: SELECT FLOOR(((TIMESTAMP_DIFF(CURRENT_TIMESTAMP(),'1970-01-01 00:00:00',SECOND)) - 60*60*10.5)/(60*60*24)) ;;
  label: "ETL Data Group"
  description: "Se dispara todos los días a las UTC('-03') 08:00hrs Arg"
}

datagroup: datagroup_24_stock_aging {
  sql_trigger: SELECT FLOOR(((TIMESTAMP_DIFF(CURRENT_TIMESTAMP(),'1970-01-01 00:00:00',SECOND)) - 60*60*10.5)/(60*60*24)) ;;
  label: "ETL Data Group"
  description: "Se dispara todos los días a las UTC('-03') 08:00hrs Arg"
}

datagroup: datagroup_24_jerarquias_comerciales {
  sql_trigger: SELECT FLOOR(((TIMESTAMP_DIFF(CURRENT_TIMESTAMP(),'1970-01-01 00:00:00',SECOND)) - 60*60*10.5)/(60*60*24)) ;;
  label: "ETL Data Group"
  description: "Se dispara todos los días a las UTC('-03') 08:00hrs Arg"
}

datagroup: datagroup_24_selection_funnel {
  sql_trigger: SELECT FLOOR(((TIMESTAMP_DIFF(CURRENT_TIMESTAMP(),'1970-01-01 00:00:00',SECOND)) - 60*60*10.5)/(60*60*24)) ;;
  label: "ETL Data Group"
  description: "Se dispara todos los días a las UTC('-03') 08:00hrs Arg"
}

datagroup: datagroup_24_pricing_coverage {
  sql_trigger: SELECT FLOOR(((TIMESTAMP_DIFF(CURRENT_TIMESTAMP(),'1970-01-01 00:00:00',SECOND)) - 60*60*10.5)/(60*60*24)) ;;
  label: "ETL Data Group"
  description: "Se dispara todos los días a las UTC('-03') 08:00hrs Arg"
}

datagroup: datagroup_24_pricing_price_index {
  sql_trigger: SELECT FLOOR(((TIMESTAMP_DIFF(CURRENT_TIMESTAMP(),'1970-01-01 00:00:00',SECOND)) - 60*60*10.5)/(60*60*24)) ;;
  label: "ETL Data Group"
  description: "Se dispara todos los días a las UTC('-03') 08:00hrs Arg"
}

datagroup: datagroup_24_pricing_nrt {
  sql_trigger: SELECT FLOOR(((TIMESTAMP_DIFF(CURRENT_TIMESTAMP(),'1970-01-01 00:00:00',SECOND)) - 60*60*10.5)/(60*60*24)) ;;
  label: "ETL Data Group"
  description: "Se dispara todos los días a las UTC('-03') 08:00hrs Arg"
}

datagroup: datagroup_24_fp_visits {
  sql_trigger: SELECT FLOOR(((TIMESTAMP_DIFF(CURRENT_TIMESTAMP(),'1970-01-01 00:00:00',SECOND)) - 60*60*10.5)/(60*60*24)) ;;
  label: "ETL Data Group"
  description: "Se dispara todos los días a las UTC('-03') 08:00hrs Arg"
}

datagroup: datagroup_24_orders {
  sql_trigger: SELECT FLOOR(((TIMESTAMP_DIFF(CURRENT_TIMESTAMP(),'1970-01-01 00:00:00',SECOND)) - 60*60*10.5)/(60*60*24)) ;;
  label: "ETL Data Group"
  description: "Se dispara todos los días a las UTC('-03') 08:00hrs Arg"
}

datagroup: datagroup_24_inventory_metrics {
  sql_trigger: SELECT FLOOR(((TIMESTAMP_DIFF(CURRENT_TIMESTAMP(),'1970-01-01 00:00:00',SECOND)) - 60*60*10.4)/(60*60*24)) ;;
  label: "ETL Data Group"
  description: "Se dispara todos los días a las UTC('-03') 08:00hrs Arg"
}

datagroup: datagroup_24_cohorts {
  sql_trigger: SELECT FLOOR(((TIMESTAMP_DIFF(CURRENT_TIMESTAMP(),'1970-01-01 00:00:00',SECOND)) - 60*60*10.5)/(60*60*24)) ;;
  label: "ETL Data Group"
  description: "Se dispara todos los días a las UTC('-03') 08:00hrs Arg"
}

datagroup: datagroup_24_output {
  sql_trigger: SELECT FLOOR(((TIMESTAMP_DIFF(CURRENT_TIMESTAMP(),'1970-01-01 00:00:00',SECOND)) - 60*60*10.5)/(60*60*24)) ;;
  label: "ETL Data Group"
  description: "Se dispara todos los días a las UTC('-03') 08:00hrs Arg"
}

datagroup: datagroup_24_oos_historico {
  sql_trigger: SELECT FLOOR(((TIMESTAMP_DIFF(CURRENT_TIMESTAMP(),'1970-01-01 00:00:00',SECOND)) - 60*60*10.5)/(60*60*24)) ;;
  label: "ETL Data Group"
  description: "Se dispara todos los días a las UTC('-03') 08:00hrs Arg"
}

datagroup: datagroup_24_normalized_fields {
  sql_trigger: SELECT FLOOR(((TIMESTAMP_DIFF(CURRENT_TIMESTAMP(),'1970-01-01 00:00:00',SECOND)) - 60*60*10.5)/(60*60*24)) ;;
  label: "ETL Data Group"
  description: "Se dispara todos los días a las UTC('-03') 08:00hrs Arg"
}

datagroup: datagroup_24_calleri {
  sql_trigger: SELECT FLOOR(((TIMESTAMP_DIFF(CURRENT_TIMESTAMP(),'1970-01-01 00:00:00',SECOND)) - 60*60*20)/(60*60*24)) ;;
  label: "ETL Data Group"
  description: "Se dispara todos los días a las UTC('-03') 08:00hrs Arg"
}

datagroup: datagroup_24_plan{
  sql_trigger: SELECT FLOOR(((TIMESTAMP_DIFF(CURRENT_TIMESTAMP(),'1970-01-01 00:00:00',SECOND)) - 60*60*20)/(60*60*24)) ;;
  label: "ETL Data Group"
  description: "Se dispara todos los días a las UTC('-03') 08:00hrs Arg"
}


datagroup: datagroup_24_purchase_order_detail {
  sql_trigger: SELECT FLOOR(((TIMESTAMP_DIFF(CURRENT_TIMESTAMP(),'1970-01-01 00:00:00',SECOND)) - 60*60*22)/(60*60*24)) ;;
  label: "ETL Data Group"
  description: "Se dispara todos los días a las UTC('-03') 08:00hrs Arg"
}
