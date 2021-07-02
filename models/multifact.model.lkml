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
  join: date_dim {
    type: left_outer
    relationship: many_to_one
    sql_on:  ${actual.date_date}=${date_dim.day_date}  ;;
  }
}
explore: budget {
  join: category_dim_mv {
    type: left_outer
    relationship: many_to_one
    sql_on:  ${budget.category} =${category_dim_mv.category}  ;;
  }
  join: commodity_dim_mv {
    type: left_outer
    relationship: many_to_one
    sql_on: ${budget.commodity} = ${commodity_dim_mv.commodity}  ;;
  }}
  explore: actual_2 {
    from: actual
    join: category_dim_mv {
      type: left_outer
      relationship: many_to_one
      sql_on:  ${actual_2.category}=${category_dim_mv.category}  ;;
    }
    join: commodity_dim_mv {
      type: full_outer
      relationship: many_to_one
      sql_on: ${actual_2.commodity}.commodity} = ${commodity_dim_mv.commodity}  ;;
    }
    join: date_dim {
      type: left_outer
      relationship: many_to_one
      sql_on:  ${actual_2.date_date}.date_date}=${date_dim.day_date}  ;;
    }
    join: budget {
      type: full_outer
      relationship: many_to_many
      sql_on:  ${actual_2.commodity}=${budget.commodity}  ;;
    }

}
