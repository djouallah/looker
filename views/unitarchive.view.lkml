view: unitarchive {
  sql_table_name: `test-187010.ReportingDataset.UNITARCHIVE`
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
    sql: ${TABLE}.DAY ;;
  }

  dimension: duid {
    type: string
    sql: ${TABLE}.DUID ;;
  }

  dimension: fuel_source_descriptor {
    type: string
    sql: ${TABLE}.FuelSourceDescriptor ;;
  }

  dimension: hour {
    type: number
    sql: ${TABLE}.Hour ;;
  }

  dimension: initialmw {
    type: number
    sql: ${TABLE}.INITIALMW ;;
  }

  dimension: latitude {
    type: number
    sql: ${TABLE}.latitude ;;
  }

  dimension: longitude {
    type: number
    sql: ${TABLE}.longitude ;;
  }

  dimension_group: month {
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
    sql: ${TABLE}.MONTH ;;
  }

  dimension: mwh {
    type: number
    sql: ${TABLE}.Mwh ;;
  }

  dimension: region {
    type: string
    sql: ${TABLE}.Region ;;
  }

  dimension: rrp {
    type: number
    sql: ${TABLE}.RRP ;;
  }

  dimension_group: settlementdate {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.SETTLEMENTDATE ;;
  }

  dimension: station_name {
    type: string
    sql: ${TABLE}.StationName ;;
  }

  dimension: tech {
    type: string
    sql: ${TABLE}.Tech ;;
  }

  dimension: technology {
    type: string
    sql: ${TABLE}.Technology ;;
  }

  dimension_group: time {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.time ;;
  }

  dimension: unit {
    type: string
    sql: ${TABLE}.UNIT ;;
  }

  dimension_group: year {
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
    sql: ${TABLE}.YEAR ;;
  }

  measure: count {
    type: count
    drill_fields: [station_name]
  }
}
