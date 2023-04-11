view: anomaly_technical {
  sql_table_name: ticker_farm.anomaly_technical ;;

  dimension: ignore {
    type: yesno
    sql: ${TABLE}.`ignore` ;;
  }

  dimension: info {
    type: string
    sql: ${TABLE}.info ;;
  }

  dimension: insertion_mean {
    type: number
    sql: ${TABLE}.insertion_mean ;;
  }

  dimension: insertion_stddev {
    type: number
    sql: ${TABLE}.insertion_stddev ;;
  }

  dimension: priority {
    type: yesno
    sql: ${TABLE}.priority ;;
  }

  dimension: revision_mean {
    type: number
    sql: ${TABLE}.revision_mean ;;
  }

  dimension: revision_stddev {
    type: number
    sql: ${TABLE}.revision_stddev ;;
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
