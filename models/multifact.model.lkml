connection: "bigquery"

# include all the views
include: "/views/**/*.view"

datagroup: multifact_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: multifact_default_datagroup

explore: actual {
  join: category_dim_mv {
    type: left_outer
    relationship: many_to_one
    sql_on:  ${actual.category}=${category_dim_mv.category}  ;;
  }
  join: commodity_dim_mv {
    type: left_outer
    relationship: many_to_one
    sql_on: ${actual.commodity} = ${commodity_dim_mv.commodity}  ;;
  }
}
