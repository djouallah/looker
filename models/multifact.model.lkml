connection: "bigquery"

# include all the views
include: "/views/**/*.view"

datagroup: multifact_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: multifact_default_datagroup

explore: actual {}





explore: budget {}



explore: category_dim_mv {}



explore: commodity_dim_mv {}



explore: contractor_dim_mv {}



explore: date_dim {}
