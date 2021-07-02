view: commodity_dim_mv {
  sql_table_name: `starschema.commodity_dim_mv`
    ;;

  dimension: commodity {
    type: string
    sql: ${TABLE}.commodity ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
