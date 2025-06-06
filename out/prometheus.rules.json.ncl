# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.alerting_rule" =
        {
            alert
              | String
              | doc "The name of the alert. Must be a valid metric name.",
            annotations
              | refs."definitions.annotations"
              | js2n.Nullable ({ _ | Dyn })
              | doc "Annotations to add to each alert."
              | optional,
            expr
              | std.contract.any_of [ String, std.number.Integer ]
              | doc "The PromQL expression to evaluate. Every evaluation cycle this is evaluated at the current time, and all resultant time series become pending/firing alerts.",
            for
              | refs."definitions.duration"
              | js2n.Nullable String
              | doc "Alerts are considered firing once they have been returned for this long. Alerts which have not yet fired for long enough are considered pending."
              | optional,
            keep_firing_for
              | refs."definitions.duration"
              | js2n.Nullable String
              | doc "How long an alert will continue firing after the condition that triggered it has cleared."
              | optional,
            labels
              | refs."definitions.labels"
              | js2n.Nullable ({ _ | Dyn })
              | doc "Labels to add or overwrite for each alert."
              | optional,
          },
      "definitions.annotations" =
        js2n.Nullable
            (std.contract.Sequence
              [
                {
                  _ | std.contract.Sequence
                    [ refs."definitions.tmpl_string", String ]
                },
                js2n.record.FieldsMatch "^[a-zA-Z_][a-zA-Z0-9_]*$"
              ]),
      "definitions.duration" =
        js2n.Nullable
            (std.contract.Sequence
              [
                js2n.string.MinLength 1,
                js2n.string.Matches
                  "^((([0-9]+)y)?(([0-9]+)w)?(([0-9]+)d)?(([0-9]+)h)?(([0-9]+)m)?(([0-9]+)s)?(([0-9]+)ms)?|0)$"
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
      "definitions.recording_rule" =
        {
            expr
              | std.contract.any_of [ String, std.number.Integer ]
              | doc "The PromQL expression to evaluate. Every evaluation cycle this is evaluated at the current time, and the result recorded as a new set of time series with the metric name as given by 'record'.",
            labels
              | refs."definitions.labels"
              | js2n.Nullable ({ _ | Dyn })
              | doc "Labels to add or overwrite before storing the result."
              | optional,
            record
              | String
              | doc "The name of the time series to output to. Must be a valid metric name.",
          },
      "definitions.tmpl_string" = String,
    }
    in
  js2n.Nullable
      {
        groups
          | js2n.Nullable
            (Array
              {
                interval
                  | refs."definitions.duration"
                  | doc "How often rules in the group are evaluated."
                  | optional,
                labels
                  | refs."definitions.labels"
                  | doc "Labels to add or overwrite before storing the result for its rules. Labels defined in <rule> will override the key if it has a collision."
                  | optional,
                limit
                  | js2n.Nullable std.number.Integer
                  | doc "Limit the number of alerts an alerting rule and series a recording rule can produce. 0 is no limit."
                  | optional,
                name
                  | String
                  | doc "The name of the group. Must be unique within a file.",
                rules
                  | js2n.Nullable
                    (Array (
                      js2n.OneOf
                        [
                          refs."definitions.recording_rule",
                          refs."definitions.alerting_rule"
                        ]
                    ))
                  | optional,
              })
          | optional,
      }