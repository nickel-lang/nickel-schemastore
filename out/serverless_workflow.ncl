# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      do
        | std.contract.any_of
          [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
        | doc "Defines the task(s) the workflow must perform.",
      document
        | {
          dsl
            | js2n.string.Matches
              "^(0|[1-9]\\d*)\\.(0|[1-9]\\d*)\\.(0|[1-9]\\d*)(?:-((?:0|[1-9]\\d*|\\d*[a-zA-Z-][0-9a-zA-Z-]*)(?:\\.(?:0|[1-9]\\d*|\\d*[a-zA-Z-][0-9a-zA-Z-]*))*))?(?:\\+([0-9a-zA-Z-]+(?:\\.[0-9a-zA-Z-]+)*))?$"
            | doc "The version of the DSL used by the workflow.",
          metadata
            | {  .. }
            | doc "Holds additional information about the workflow."
            | optional,
          name
            | js2n.string.Matches
              "^[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?$"
            | doc "The workflow's name.",
          namespace
            | js2n.string.Matches
              "^[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?$"
            | doc "The workflow's namespace.",
          summary | String | doc "The workflow's Markdown summary." | optional,
          tags
            | {  .. }
            | doc "A key/value mapping of the workflow's tags, if any."
            | optional,
          title | String | doc "The workflow's title." | optional,
          version
            | js2n.string.Matches
              "^(0|[1-9]\\d*)\\.(0|[1-9]\\d*)\\.(0|[1-9]\\d*)(?:-((?:0|[1-9]\\d*|\\d*[a-zA-Z-][0-9a-zA-Z-]*)(?:\\.(?:0|[1-9]\\d*|\\d*[a-zA-Z-][0-9a-zA-Z-]*))*))?(?:\\+([0-9a-zA-Z-]+(?:\\.[0-9a-zA-Z-]+)*))?$"
            | doc "The workflow's semantic version.",
          ..
        }
        | doc "Documents the workflow.",
      input
        | std.contract.any_of
          [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
        | doc "Configures the workflow's input."
        | optional,
      output
        | std.contract.any_of
          [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
        | doc "Configures the workflow's output."
        | optional,
      schedule
        | {
          after
            | std.contract.any_of
              [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
            | doc "Specifies a delay duration that the workflow must wait before starting again after it completes."
            | optional,
          cron
            | String
            | doc "Specifies the schedule using a cron expression, e.g., '0 0 * * *' for daily at midnight."
            | optional,
          every
            | std.contract.any_of
              [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
            | doc "Specifies the duration of the interval at which the workflow should be executed."
            | optional,
          on
            | std.contract.any_of
              [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
            | doc "Specifies the events that trigger the workflow execution."
            | optional,
          ..
        }
        | doc "Schedules the workflow."
        | optional,
      timeout
        | js2n.OneOf
          [
            std.contract.any_of
              [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ],
            String
          ]
        | optional,
      use
        | {
          authentications
            | {
              _ | std.contract.any_of
                [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
            }
            | doc "The workflow's reusable authentication policies."
            | optional,
          catalogs
            | {
              _ | std.contract.any_of
                [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
            }
            | doc "The workflow's reusable catalogs."
            | optional,
          errors
            | {
              _ | std.contract.any_of
                [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
            }
            | doc "The workflow's reusable errors."
            | optional,
          extensions
            | Array (
              std.contract.Sequence
                [
                  js2n.record.MaxProperties 1,
                  js2n.record.MinProperties 1,
                  {
                    _ | std.contract.any_of
                      [
                        js2n.Null,
                        Bool,
                        { _ | Dyn },
                        Array Dyn,
                        Number,
                        String
                      ]
                  }
                ]
            )
            | doc "The workflow's extensions."
            | optional,
          functions
            | {
              _ | std.contract.any_of
                [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
            }
            | doc "The workflow's reusable functions."
            | optional,
          retries
            | {
              _ | std.contract.any_of
                [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
            }
            | doc "The workflow's reusable retry policies."
            | optional,
          secrets
            | Array String
            | doc "The workflow's reusable secrets."
            | optional,
          timeouts
            | {
              _ | std.contract.any_of
                [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
            }
            | doc "The workflow's reusable timeouts."
            | optional,
          ..
        }
        | doc "Defines the workflow's reusable components."
        | optional,
      ..
    }