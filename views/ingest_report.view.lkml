view: ingest_report {
  sql_table_name: ticker_farm.ingest_report ;;

  dimension: instantiator {
    type: string
    sql: ${TABLE}.instantiator ;;
  }

  dimension_group: last_write {
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
    sql: ${TABLE}.last_write ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: tickers {
    type: number
    sql: ${TABLE}.tickers ;;
  }

  dimension_group: timestamp {
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
    sql: ${TABLE}.timestamp ;;
  }

  measure: count {
    type: count
    drill_fields: [name]
  }
}
