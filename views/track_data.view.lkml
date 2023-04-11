view: track_data {
  sql_table_name: ticker_farm.track_data ;;

  dimension: date {
    type: string
    sql: ${TABLE}.date ;;
  }

  dimension: new_corrected {
    type: number
    sql: ${TABLE}.new_corrected ;;
  }

  dimension: new_original {
    type: number
    sql: ${TABLE}.new_original ;;
  }

  dimension: new_value {
    type: number
    sql: ${TABLE}.new_value ;;
  }

  dimension: old_corrected {
    type: number
    sql: ${TABLE}.old_corrected ;;
  }

  dimension: old_original {
    type: number
    sql: ${TABLE}.old_original ;;
  }

  dimension: old_value {
    type: number
    sql: ${TABLE}.old_value ;;
  }

  dimension: procedure {
    type: number
    sql: ${TABLE}.`procedure` ;;
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
