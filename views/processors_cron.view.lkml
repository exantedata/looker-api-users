view: processors_cron {
  sql_table_name: ticker_farm.processors_cron ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: cron_expression {
    type: string
    sql: ${TABLE}.cron_expression ;;
  }

  dimension: cron_tz {
    type: string
    sql: ${TABLE}.cron_tz ;;
  }

  dimension: enabled {
    type: yesno
    sql: ${TABLE}.enabled ;;
  }

  dimension_group: last_run {
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
    sql: ${TABLE}.last_run ;;
  }

  dimension_group: next_run {
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
    sql: ${TABLE}.next_run ;;
  }

  dimension: notes {
    type: string
    sql: ${TABLE}.notes ;;
  }

  dimension: task_definition {
    type: string
    sql: ${TABLE}.task_definition ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
