view: actual {
  sql_table_name: `starschema.actual`
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: actualhours {
    type: number
    sql: ${TABLE}.actualhours ;;
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

  dimension_group: date {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.date ;;
  }



  measure: count {
    type: count
    drill_fields: [id]
  }
  measure: Sum_Actual {
    sql: ${actualhours} ;;
    type: sum
  }
}
