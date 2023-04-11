view: tickers {
  sql_table_name: ticker_farm.tickers ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: api {
    type: yesno
    sql: ${TABLE}.api ;;
  }

  dimension: file_source {
    type: string
    sql: ${TABLE}.file_source ;;
  }

  dimension: meta_data {
    type: string
    sql: ${TABLE}.meta_data ;;
  }

  dimension: scheduler_blacklist_default {
    type: yesno
    sql: ${TABLE}.scheduler_blacklist_default ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}.source ;;
  }

  dimension: ticker {
    type: string
    sql: ${TABLE}.ticker ;;
  }

  dimension: ticker_tokenized {
    type: string
    sql: ${TABLE}.ticker_tokenized ;;
  }

  dimension_group: updated {
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
    sql: ${TABLE}.updated ;;
  }

  measure: count {
    type: count
    drill_fields: [id, data.count]
  }
}
