view: track_tickers {
  sql_table_name: ticker_farm.track_tickers ;;

  dimension: new_metadata {
    type: string
    sql: ${TABLE}.new_metadata ;;
  }

  dimension: new_processor {
    type: string
    sql: ${TABLE}.new_processor ;;
  }

  dimension_group: new_updated {
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
    sql: ${TABLE}.new_updated ;;
  }

  dimension: old_metadata {
    type: string
    sql: ${TABLE}.old_metadata ;;
  }

  dimension: old_processor {
    type: string
    sql: ${TABLE}.old_processor ;;
  }

  dimension_group: old_updated {
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
    sql: ${TABLE}.old_updated ;;
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
