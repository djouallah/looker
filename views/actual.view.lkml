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
    hidden: yes
    type: number
    sql: ${TABLE}.actualhours ;;
  }

  dimension: category {
    hidden: yes
    type: string
    sql: ${TABLE}.category ;;
  }

  dimension: commodity {
    hidden: yes
    type: string
    sql: ${TABLE}.commodity ;;
  }

  dimension: contractor {
    hidden: yes
    type: string
    sql: ${TABLE}.contractor ;;
  }

  dimension_group: date {
    hidden: yes
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
    sql:COALESCE( ${actualhours},0) ;;
    type: sum
  }
}
