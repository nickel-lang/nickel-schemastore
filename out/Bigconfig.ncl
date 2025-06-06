# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.ColumnMetricDeployment" =
        {
            column_name | String,
            metrics
              | Array (
                std.contract.Sequence
                  [ refs."definitions.SimpleMetricDefinition", { _ | Dyn } ]
              ),
            ..
          },
      "definitions.ColumnSelector" =
        {
            exclude | String | optional,
            name | String | optional,
            regex | String | optional,
            type | refs."definitions.SimpleFieldType" | String | optional,
            ..
          },
      "definitions.MetricParameters" =
        {
            column_name | String | optional,
            key | String | optional,
            number_value | Number | optional,
            string_value | String | optional,
            ..
          },
      "definitions.NotificationChannels" =
        {
            email | String | optional,
            slack | String | optional,
            webhook | String | optional,
            webhook_header_key | String | optional,
            webhook_header_value | String | optional,
            ..
          },
      "definitions.RowCreationTimes" =
        {
            column_selectors
              | Array (
                std.contract.Sequence
                  [ refs."definitions.ColumnSelector", { _ | Dyn } ]
              )
              | optional,
            tag_ids | Array String | optional,
            ..
          },
      "definitions.SavedMetricDefinitions" =
        {
            metrics
              | Array (
                std.contract.Sequence
                  [ refs."definitions.SimpleMetricDefinition", { _ | Dyn } ]
              ),
            ..
          },
      "definitions.SimpleCollection" =
        {
            description | String,
            name | String,
            notification_channels
              | refs."definitions.NotificationChannels"
              | { _ | Dyn }
              | optional,
            ..
          },
      "definitions.SimpleFieldType" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [|
                'STRUCT,
                'ARRAY,
                'UNKNOWN,
                'BOOLEAN,
                'ANY,
                'TIMESTAMP_LIKE,
                'DATE_LIKE,
                'NUMERIC,
                'BINARY,
                'UUID,
                'STRING,
                'UNSPECIFIED
              |]
            ],
      "definitions.SimpleMetricDefinition" =
        {
            conditions | Array String | optional,
            description | String | optional,
            group_by | Array String | optional,
            lookback
              | {
                bucket_size
                  | std.enum.TagOrString
                  | [| 'HOUR, 'DAY |]
                  | doc "Only valid for data time window metrics"
                  | optional,
                lookback_type
                  | std.enum.TagOrString
                  | [| 'CLOCK_TIME, 'METRIC_TIME, 'DATA_TIME |],
                lookback_window
                  | {
                    interval_type | std.enum.TagOrString | [| 'DAYS |],
                    interval_value | Number,
                    ..
                  },
                ..
              }
              | optional,
            metric_name | String | optional,
            metric_schedule
              | {
                named_schedule
                  | {
                    cron | String | optional,
                    id | Number | optional,
                    name | String,
                    ..
                  },
                ..
              }
              | optional,
            metric_type
              | {
                aggregation_type
                  | std.enum.TagOrString
                  | [| 'PERCENT, 'COUNT |]
                  | optional,
                predefined_metric
                  | std.enum.TagOrString
                  | [|
                    'VOLUME,
                    'FRESHNESS,
                    'PERCENT_NOT_NULL,
                    'COUNT_READ_QUERIES,
                    'HOURS_SINCE_LAST_LOAD,
                    'ROWS_INSERTED,
                    'PERCENT_EMAIL,
                    'COUNT_EMAIL,
                    'PERCENT_SSN,
                    'COUNT_SSN,
                    'STRING_LENGTH_MAX,
                    'STRING_LENGTH_MIN,
                    'STRING_LENGTH_AVERAGE,
                    'COUNT_NOT_NULL,
                    'PERCENTILE,
                    'MEDIAN,
                    'PERCENT_DATE_NOT_IN_FUTURE,
                    'COUNT_DATE_NOT_IN_FUTURE,
                    'PERCENT_NOT_IN_FUTURE,
                    'COUNT_NOT_IN_FUTURE,
                    'PERCENT_LATITUDE,
                    'COUNT_LATITUDE,
                    'PERCENT_LONGITUDE,
                    'COUNT_LONGITUDE,
                    'PERCENT_NAN,
                    'COUNT_NAN,
                    'PERCENT_PERM_ID,
                    'COUNT_PERM_ID,
                    'PERCENT_FIGI,
                    'COUNT_FIGI,
                    'PERCENT_LEI,
                    'COUNT_LEI,
                    'PERCENT_ISIN,
                    'COUNT_ISIN,
                    'PERCENT_SEDOL,
                    'COUNT_SEDOL,
                    'PERCENT_CUSIP,
                    'COUNT_CUSIP,
                    'COUNT_UUID,
                    'HARMONIC_MEAN,
                    'GEOMETRIC_MEAN,
                    'KURTOSIS,
                    'SKEW,
                    'VARIANCE,
                    'PERCENT_USA_STATE_CODE,
                    'COUNT_USA_STATE_CODE,
                    'COUNT_DUPLICATES,
                    'PERCENT_TIMESTAMP_STRING,
                    'COUNT_TIMESTAMP_STRING,
                    'PERCENT_UUID,
                    'PERCENT_USA_ZIP_CODE,
                    'COUNT_USA_ZIP_CODE,
                    'PERCENT_USA_PHONE,
                    'COUNT_USA_PHONE,
                    'PERCENT_FALSE,
                    'COUNT_FALSE,
                    'PERCENT_TRUE,
                    'COUNT_TRUE,
                    'HOURS_SINCE_MAX_TIMESTAMP,
                    'HOURS_SINCE_MAX_DATE,
                    'COUNT_DISTINCT,
                    'COUNT_ROWS,
                    'SUM,
                    'MAX,
                    'MIN,
                    'AVERAGE,
                    'PERCENT_VALUE_IN_LIST,
                    'PERCENT_UNIQUE,
                    'COUNT_EMPTY_STRING,
                    'PERCENT_EMPTY_STRING,
                    'COUNT_NULL,
                    'PERCENT_NULL
                  |],
                template_id | Number | optional,
                type
                  | std.enum.TagOrString
                  | [| 'TEMPLATE, 'PREDEFINED |]
                  | optional,
                ..
              }
              | optional,
            notification_channels
              | Array (
                std.contract.Sequence
                  [ refs."definitions.NotificationChannels", { _ | Dyn } ]
              )
              | optional,
            parameters
              | Array (
                std.contract.Sequence
                  [ refs."definitions.MetricParameters", { _ | Dyn } ]
              )
              | optional,
            saved_metric_id | String | optional,
            schedule_frequency
              | {
                interval_type | std.enum.TagOrString | [| 'MINUTES, 'HOURS |],
                interval_value | Number,
                ..
              }
              | optional,
            threshold
              | {
                lower_bound
                  | Number
                  | doc "Only valid for constant, relative, and standard deviation metrics"
                  | optional,
                lower_bound_only
                  | Bool
                  | doc "Only valid for autothreshold metrics"
                  | optional,
                reference_point
                  | {
                    interval_type | std.enum.TagOrString | [| 'DAYS |],
                    interval_value | Number,
                    ..
                  }
                  | doc "Only valid for relative and standard deviation metrics"
                  | optional,
                sensitivity
                  | std.enum.TagOrString
                  | [| 'XWIDE, 'WIDE, 'MEDIUM, 'NARROW |]
                  | doc "Only valid for autothreshold metrics"
                  | optional,
                type
                  | std.enum.TagOrString
                  | [| 'CONSTANT, 'STDDEV, 'RELATIVE, 'AUTO |],
                upper_bound
                  | Number
                  | doc "Only valid for constant, relative, and standard deviation metrics"
                  | optional,
                upper_bound_only
                  | Bool
                  | doc "Only valid for autothreshold metrics"
                  | optional,
                ..
              }
              | optional,
            ..
          },
      "definitions.TableDeployment" =
        {
            columns
              | Array (
                std.contract.Sequence
                  [ refs."definitions.ColumnMetricDeployment", { _ | Dyn } ]
              )
              | optional,
            fq_table_name | String,
            row_creation_time | String | optional,
            table_metrics
              | Array (
                std.contract.Sequence
                  [ refs."definitions.SimpleMetricDefinition", { _ | Dyn } ]
              )
              | optional,
            ..
          },
      "definitions.TableDeploymentSuite" =
        {
            collection
              | refs."definitions.SimpleMetricDefinition"
              | { _ | Dyn }
              | optional,
            deployments
              | Array (
                std.contract.Sequence
                  [ refs."definitions.TableDeployment", { _ | Dyn } ]
              ),
            ..
          },
      "definitions.TagDefinition" =
        {
            column_selectors
              | Array (
                std.contract.Sequence
                  [ refs."definitions.ColumnSelector", { _ | Dyn } ]
              ),
            tag_id | String,
            ..
          },
      "definitions.TagDeployment" =
        {
            column_selectors
              | Array (
                std.contract.Sequence
                  [ refs."definitions.ColumnSelector", { _ | Dyn } ]
              )
              | optional,
            metrics
              | Array (
                std.contract.Sequence
                  [ refs."definitions.SimpleMetricDefinition", { _ | Dyn } ]
              ),
            tag_id | String | optional,
            ..
          },
      "definitions.TagDeploymentSuite" =
        {
            collection
              | refs."definitions.SimpleCollection"
              | { _ | Dyn }
              | optional,
            deployments
              | Array (
                std.contract.Sequence
                  [ refs."definitions.TagDeployment", { _ | Dyn } ]
              )
              | optional,
            ..
          },
    }
    in
  {
      auto_apply_on_indexing | Bool | optional,
      row_creation_times | refs."definitions.RowCreationTimes" | optional,
      saved_metric_definitions
        | refs."definitions.SavedMetricDefinitions"
        | optional,
      table_deployments
        | Array refs."definitions.TableDeploymentSuite"
        | optional,
      tag_definitions | Array refs."definitions.TagDefinition" | optional,
      tag_deployments | Array refs."definitions.TagDeploymentSuite" | optional,
      type | std.contract.Equal "BIGCONFIG_FILE",
      ..
    }