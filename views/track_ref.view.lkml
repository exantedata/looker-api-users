view: track_ref {
  sql_table_name: ticker_farm.track_ref ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: info {
    type: string
    sql: ${TABLE}.info ;;
  }

  dimension: ingestion_id {
    type: number
    sql: ${TABLE}.ingestion_id ;;
  }

  dimension: processor_id {
    type: number
    sql: ${TABLE}.processor_id ;;
  }

  dimension: ticker {
    type: string
    sql: ${TABLE}.ticker ;;
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
    drill_fields: [id, _write_buffer.count, track_data.count, track_tickers.count]
  }
}
