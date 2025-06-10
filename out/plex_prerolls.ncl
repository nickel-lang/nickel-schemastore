# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.cron" =
        js2n.string.Matches
            "^([0-5]?\\d) ([01]?\\d|2[0-3]) ([1-9]|[12]\\d|3[01]) ([1-9]|1[012]) ([0-6])$",
      "definitions.date" = String,
      "definitions.disableAlways" = Bool,
      "definitions.enabled" = Bool,
      "definitions.endDate" =
        std.contract.Sequence [ refs."definitions.date", String ],
      "definitions.globPattern" = String,
      "definitions.hostWithIpAndOptionalPort" =
        js2n.string.Matches "^(https?://)?[a-zA-Z0-9.-]+(:[0-9]{1,5})?$",
      "definitions.monthNumber" =
        std.contract.Sequence
            [
              std.number.Integer,
              js2n.number.Maximum 12,
              js2n.number.Minimum 1
            ],
      "definitions.pathGlobbing" =
        {
            enabled | refs."definitions.enabled" | Bool | optional,
            pairs
              | Array
                {
                  patterns
                    | Array (
                      std.contract.Sequence
                        [ refs."definitions.globPattern", String ]
                    )
                    | doc "The glob patterns to match",
                  plex_path | String | doc "The remote Plex path to replace",
                  root_path | String | doc "The local root path to match",
                  ..
                }
              | doc "The pairs of paths to match and replace"
              | optional,
            ..
          },
      "definitions.paths" =
        Array (
            std.contract.Sequence [ refs."definitions.videoFilePath", String ]
          ),
      "definitions.plexToken" = String,
      "definitions.positiveInteger" =
        std.contract.Sequence [ std.number.Integer, js2n.number.Minimum 1 ],
      "definitions.startDate" =
        std.contract.Sequence [ refs."definitions.date", String ],
      "definitions.videoFilePath" =
        js2n.string.Matches "^.+\\.(mp4|mkv|avi|mov|wmv|flv|webm)$",
      "definitions.weekNumber" =
        std.contract.Sequence
            [
              std.number.Integer,
              js2n.number.Maximum 53,
              js2n.number.Minimum 1
            ],
      "definitions.weight" =
        std.contract.Sequence [ refs."definitions.positiveInteger", Number ],
    }
    in
  {
      advanced
        | {
          auto_generation
            | {
              plex_path
                | String
                | doc "The path for the Plex Media Server to use to access auto-generated prerolls",
              recently_added
                | {
                  count
                    | refs."definitions.positiveInteger"
                    | Number
                    | doc "The number of recently added media to include as prerolls",
                  enabled
                    | refs."definitions.enabled"
                    | doc "Whether auto generation from recently added media is enabled",
                  trailer_cutoff_year
                    | refs."definitions.positiveInteger"
                    | Number
                    | doc "The year to use as a cutoff for trailers. Default is 1980"
                    | optional,
                  ..
                }
                | doc "Settings for auto-generating prerolls from recently added media",
              ..
            }
            | doc "Settings for auto-generating prerolls"
            | optional,
          ..
        }
        | doc "Advanced configuration options",
      always
        | {
          count
            | refs."definitions.positiveInteger"
            | Number
            | doc "The number of prerolls to include"
            | optional,
          enabled
            | refs."definitions.enabled"
            | doc "Whether the always preroll is enabled",
          path_globbing | refs."definitions.pathGlobbing" | optional,
          paths
            | refs."definitions.paths"
            | doc "Paths to media files to always include as prerolls"
            | optional,
          weight | refs."definitions.weight" | Number | optional,
          ..
        }
        | doc "Configuration for always-included prerolls"
        | optional,
      date_range
        | {
          enabled
            | refs."definitions.enabled"
            | doc "Whether the date range preroll is enabled",
          ranges
            | Array
              {
                disable_always | refs."definitions.disableAlways" | optional,
                end_date | refs."definitions.endDate" | String,
                name | String | doc "The name of the date range" | optional,
                path_globbing
                  | refs."definitions.pathGlobbing"
                  | doc "Settings for path globbing"
                  | optional,
                paths
                  | refs."definitions.paths"
                  | doc "Paths to media files to include as prerolls for this range"
                  | optional,
                start_date | refs."definitions.startDate" | String,
                weight | refs."definitions.weight" | Number | optional,
                ..
              }
            | doc "Date ranges for which to include prerolls",
          ..
        }
        | doc "Configuration for date range-based prerolls"
        | optional,
      monthly
        | {
          enabled
            | refs."definitions.enabled"
            | doc "Whether the monthly preroll is enabled",
          months
            | Array
              {
                disable_always | refs."definitions.disableAlways" | optional,
                number | refs."definitions.monthNumber" | Number,
                path_globbing
                  | refs."definitions.pathGlobbing"
                  | doc "Settings for path globbing"
                  | optional,
                paths
                  | refs."definitions.paths"
                  | doc "Paths to media files to include as prerolls for this month"
                  | optional,
                weight | refs."definitions.weight" | Number | optional,
                ..
              }
            | doc "Configuration for monthly-based prerolls",
          ..
        }
        | doc "Configuration for monthly-based prerolls"
        | optional,
      plex
        | {
          token
            | refs."definitions.plexToken"
            | doc "The token for the Plex server",
          url
            | refs."definitions.hostWithIpAndOptionalPort"
            | doc "The URL of the Plex server",
          ..
        }
        | doc "Settings for the Plex server",
      run
        | {
          dry_run
            | Bool
            | doc "Whether to run in dry run mode (don't actually make changes to Plex)"
            | optional,
          schedule
            | refs."definitions.cron"
            | doc "The cron schedule for running the application"
            | optional,
          ..
        }
        | doc "Settings for running the application"
        | optional,
      weekly
        | {
          enabled
            | refs."definitions.enabled"
            | doc "Whether the weekly preroll is enabled",
          weeks
            | Array
              {
                disable_always | refs."definitions.disableAlways" | optional,
                number | refs."definitions.weekNumber" | Number,
                path_globbing
                  | refs."definitions.pathGlobbing"
                  | doc "Settings for path globbing"
                  | optional,
                paths
                  | refs."definitions.paths"
                  | doc "Paths to media files to include as prerolls for this week"
                  | optional,
                weight | refs."definitions.weight" | Number | optional,
                ..
              }
            | doc "Configuration for weekly-based prerolls",
          ..
        }
        | doc "Configuration for weekly-based prerolls"
        | optional,
      ..
    }