view: contractor_dim_mv {
  sql_table_name: `starschema.contractor_dim_mv`
    ;;

  dimension: contractor {
    type: string
    sql: ${TABLE}.contractor ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
