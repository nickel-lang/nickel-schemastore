# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.config" = { _ | Dyn },
      "definitions.enabled" = { enabled | Bool | optional, .. },
      "definitions.threshold" = js2n.Nullable std.number.Integer,
    }
    in
  {
      checks
        | {
          argument-count
            | refs."definitions.enabled"
            | {
              config
                | refs."definitions.config"
                | { threshold | refs."definitions.threshold" | optional, .. }
                | optional,
              ..
            }
            | optional,
          complex-logic
            | refs."definitions.enabled"
            | {
              config
                | refs."definitions.config"
                | { threshold | refs."definitions.threshold" | optional, .. }
                | optional,
              ..
            }
            | optional,
          file-lines
            | refs."definitions.enabled"
            | {
              config
                | refs."definitions.config"
                | { threshold | refs."definitions.threshold" | optional, .. }
                | optional,
              ..
            }
            | optional,
          identical-code
            | refs."definitions.enabled"
            | {
              config
                | refs."definitions.config"
                | { threshold | refs."definitions.threshold" | optional, .. }
                | optional,
              ..
            }
            | optional,
          method-complexity
            | refs."definitions.enabled"
            | {
              config
                | refs."definitions.config"
                | { threshold | refs."definitions.threshold" | optional, .. }
                | optional,
              ..
            }
            | optional,
          method-count
            | refs."definitions.enabled"
            | {
              config
                | refs."definitions.config"
                | { threshold | refs."definitions.threshold" | optional, .. }
                | optional,
              ..
            }
            | optional,
          method-lines
            | refs."definitions.enabled"
            | {
              config
                | refs."definitions.config"
                | { threshold | refs."definitions.threshold" | optional, .. }
                | optional,
              ..
            }
            | optional,
          nested-control-flow
            | refs."definitions.enabled"
            | {
              config
                | refs."definitions.config"
                | { threshold | refs."definitions.threshold" | optional, .. }
                | optional,
              ..
            }
            | optional,
          return-statements
            | refs."definitions.enabled"
            | {
              config
                | refs."definitions.config"
                | { threshold | refs."definitions.threshold" | optional, .. }
                | optional,
              ..
            }
            | optional,
          similar-code
            | refs."definitions.enabled"
            | {
              config
                | refs."definitions.config"
                | { threshold | refs."definitions.threshold" | optional, .. }
                | optional,
              ..
            }
            | optional,
          ..
        }
        | optional,
      exclude_patterns | Array String | optional,
      plugins
        | { _ | refs."definitions.enabled" }
        | doc "To add a plugin to your analysis. You can find the complete list of available plugins here: https://docs.codeclimate.com/docs/list-of-engines"
        | optional,
      prepare
        | Array { path | String | optional, url | String | optional, .. }
        | optional,
      version
        | String
        | doc "Required to adjust maintainability checks."
        | optional,
      ..
    }