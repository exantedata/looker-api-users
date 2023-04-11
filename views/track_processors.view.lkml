view: track_processors {
  sql_table_name: ticker_farm.track_processors ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: env {
    type: string
    sql: ${TABLE}.env ;;
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

  dimension: last_user {
    type: string
    sql: ${TABLE}.last_user ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: scheduler_blacklisted {
    type: yesno
    sql: ${TABLE}.scheduler_blacklisted ;;
  }

  measure: count {
    type: count
    drill_fields: [id, name]
  }
}
