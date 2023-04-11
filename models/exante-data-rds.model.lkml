connection: "exante-data-looker"

# include all the views
include: "/views/**/*.view"

datagroup: exante-data-rds_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: exante-data-rds_default_datagroup

explore: _write_buffer {
  join: track_ref {
    type: left_outer
    sql_on: ${_write_buffer.track_ref_id} = ${track_ref.id} ;;
    relationship: many_to_one
  }
}

explore: anomaly_technical {}

explore: api_users {}

explore: data {
  join: tickers {
    type: left_outer
    sql_on: ${data.ticker_id} = ${tickers.id} ;;
    relationship: many_to_one
  }
}

explore: ingest_report {}

explore: ingestion_report {}

explore: new_inputs_report {}

explore: new_inputs_summary {}

explore: processors_cron {}

explore: tickers {}

explore: track_access {}

explore: track_data {
  join: track_ref {
    type: left_outer
    sql_on: ${track_data.track_ref_id} = ${track_ref.id} ;;
    relationship: many_to_one
  }
}

explore: track_ingestions {}

explore: track_processors {}

explore: track_ref {}

explore: track_tickers {
  join: track_ref {
    type: left_outer
    sql_on: ${track_tickers.track_ref_id} = ${track_ref.id} ;;
    relationship: many_to_one
  }
}
