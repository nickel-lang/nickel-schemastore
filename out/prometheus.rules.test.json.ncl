# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.alert" =
        {
            exp_annotations
              | refs."definitions.labels"
              | js2n.Nullable ({ _ | Dyn })
              | doc "Expanded annotations of the expected alert"
              | optional,
            exp_labels
              | refs."definitions.labels"
              | js2n.Nullable ({ _ | Dyn })
              | doc "Expanded labels and annotations of the expected alert. This also include the labels of the sample associated with the alert (same as what you see in `/alerts`, without series `__name__` and `alertname`).",
            ..
          },
      "definitions.alert_test_case" =
        {
            alertname | String | doc "Name of the alert to be tested.",
            eval_time
              | refs."definitions.duration"
              | js2n.Nullable String
              | doc "The time elapsed from time=0s when the alerts have to be checked.",
            exp_alerts
              | Array (
                std.contract.Sequence [ refs."definitions.alert", { _ | Dyn } ]
              )
              | doc "List of expected alerts firing under the given alertname at the given evaluation time"
              | optional,
          },
      "definitions.duration" =
        js2n.Nullable
            (std.contract.Sequence
              [
                js2n.string.MinLength 1,
                js2n.string.Matches
                  "^([0-9]+y)?([0-9]+w)?([0-9]+d)?([0-9]+h)?([0-9]+m)?([0-9]+s)?([0-9]+ms)?$"
              ]),
      "definitions.label_value" = String,
      "definitions.labels" =
        js2n.Nullable
            (std.contract.Sequence
              [
                {
                  _ | std.contract.Sequence
                    [ refs."definitions.label_value", String ]
                },
                js2n.record.FieldsMatch "^[a-zA-Z_][a-zA-Z0-9_]*$"
              ]),
      "definitions.promql_test_case" =
        {
            eval_time
              | refs."definitions.duration"
              | js2n.Nullable String
              | doc "The time elapsed from time=0s when the expression has to be evaluated.",
            exp_samples
              | Array (
                std.contract.Sequence [ refs."definitions.sample", { _ | Dyn } ]
              )
              | doc "Expected samples at the given evaluation time."
              | optional,
            expr
              | std.contract.any_of [ String, std.number.Integer ]
              | doc "PromQL expression to evaluate",
          },
      "definitions.sample" =
        {
            labels
              | String
              | doc "Labels of the sample in the usual series notation '<metric name>{<label name>=<label value>, ...}'",
            value | Number | doc "Expected value of the PromQL expression.",
            ..
          },
      "definitions.series" =
        {
            series
              | String
              | doc "This follows the usual series notation '<metric name>{<label name>=<label value>, ...}'.",
            values
              | String
              | doc "This uses expanded notation to project time series. There are also the special `_` and `stale` values to indicate missing or stale samples",
          },
      "definitions.test_group" =
        {
            alert_rule_test
              | Array (
                std.contract.Sequence
                  [ refs."definitions.alert_test_case", { _ | Dyn } ]
              )
              | doc "Unit tests for alerting rules. We only consider the alerting rules from the input files."
              | optional,
            external_labels
              | refs."definitions.labels"
              | js2n.Nullable ({ _ | Dyn })
              | doc "External labels accessible to the alert template."
              | optional,
            external_url
              | String
              | doc "External URL accessible to the alert template. Usually set using --web.external-url."
              | optional,
            input_series
              | Array (
                std.contract.Sequence [ refs."definitions.series", { _ | Dyn } ]
              )
              | doc "A list of time series",
            interval
              | refs."definitions.duration"
              | js2n.Nullable String
              | doc "The time elapsed from time=0s when the alerts have to be checked.",
            name | String | doc "Name of the test group" | optional,
            promql_expr_test
              | Array (
                std.contract.Sequence
                  [ refs."definitions.promql_test_case", { _ | Dyn } ]
              )
              | doc "Unit tests for PromQL expressions"
              | optional,
          },
    }
    in
  {
      evaluation_interval
        | js2n.Nullable String
        | doc "The evaluation interval for the tests. [duration] format."
        | optional,
      group_eval_order
        | js2n.Nullable (Array String)
        | doc "The order in which group names are listed below will be the order of evaluation of rule groups (at a given evaluation time)."
        | optional,
      rule_files
        | Array String
        | doc "List of rule files to consider for testing. Globs are supported."
        | optional,
      tests | Array refs."definitions.test_group" | optional,
    }