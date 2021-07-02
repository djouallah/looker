view: category_dim_mv {
  sql_table_name: `starschema.category_Dim_mv`
    ;;

  dimension: category {
    type: string
    sql: ${TABLE}.category ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
