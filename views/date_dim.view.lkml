view: date_dim {
  sql_table_name: `starschema.date_dim`
    ;;

  dimension_group: day {
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
    sql: ${TABLE}.day ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
