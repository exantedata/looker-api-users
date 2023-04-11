view: ingestion_report {
  sql_table_name: ticker_farm.ingestion_report ;;

  dimension: countc_ticker {
    type: number
    sql: ${TABLE}.`COUNT(`c`.`ticker`)` ;;
  }

  dimension: instantiator {
    type: string
    sql: ${TABLE}.instantiator ;;
  }

  dimension_group: last_seen {
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
    sql: ${TABLE}.last_seen ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
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
