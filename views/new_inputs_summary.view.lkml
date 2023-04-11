view: new_inputs_summary {
  sql_table_name: ticker_farm.new_inputs_summary ;;
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

  dimension: fresh_inputs {
    type: number
    sql: ${TABLE}.fresh_inputs ;;
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

  dimension_group: newest_input_timestamp {
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
    sql: ${TABLE}.newest_input_timestamp ;;
  }

  dimension: percentage_fresh {
    type: number
    sql: ${TABLE}.percentage_fresh ;;
  }

  dimension: total_inputs {
    type: number
    sql: ${TABLE}.total_inputs ;;
  }

  measure: count {
    type: count
    drill_fields: [id, name]
  }
}
