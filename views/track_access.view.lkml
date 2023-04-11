view: track_access {
  sql_table_name: ticker_farm.track_access ;;

  dimension_group: last_read {
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
    sql: ${TABLE}.last_read ;;
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

  dimension: processor_id {
    type: number
    sql: ${TABLE}.processor_id ;;
  }

  dimension: scheduler_blacklisted {
    type: yesno
    sql: ${TABLE}.scheduler_blacklisted ;;
  }

  dimension: ticker {
    type: string
    sql: ${TABLE}.ticker ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
