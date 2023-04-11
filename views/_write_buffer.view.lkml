view: _write_buffer {
  sql_table_name: ticker_farm._write_buffer ;;

  dimension: date {
    type: string
    sql: ${TABLE}.date ;;
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

  dimension: track_ref_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.track_ref_id ;;
  }

  measure: count {
    type: count
    drill_fields: [track_ref.id]
  }
}
