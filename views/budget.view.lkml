view: budget {
  sql_table_name: `starschema.budget`
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: budgethours {
    type: number
    sql: ${TABLE}.budgethours ;;
  }

  dimension: category {
    type: string
    sql: ${TABLE}.category ;;
  }

  dimension: commodity {
    type: string
    sql: ${TABLE}.commodity ;;
  }

  dimension: contractor {
    type: string
    sql: ${TABLE}.contractor ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
