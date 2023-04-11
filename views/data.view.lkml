view: data {
  sql_table_name: ticker_farm.data ;;

  dimension: corrected {
    type: yesno
    sql: ${TABLE}.corrected ;;
  }

  dimension: date {
    type: string
    sql: ${TABLE}.date ;;
  }

  dimension: original {
    type: number
    sql: ${TABLE}.original ;;
  }

  dimension: ticker {
    type: string
    sql: ${TABLE}.ticker ;;
  }

  dimension: ticker_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.ticker_id ;;
  }

  dimension: value {
    type: number
    sql: ${TABLE}.value ;;
  }

  measure: count {
    type: count
    drill_fields: [tickers.id]
  }
}
