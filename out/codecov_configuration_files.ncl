# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.default" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                base | String | optional,
                branches | Array Dyn | optional,
                flag_coverage_not_uploaded_behavior
                  | std.enum.TagOrString
                  | [| 'pass, 'exclude, 'include |]
                  | optional,
                flags | Array Dyn | optional,
                if_ci_failed
                  | std.enum.TagOrString
                  | [| 'success, 'error |]
                  | optional,
                if_not_found
                  | std.enum.TagOrString
                  | [| 'success, 'failure |]
                  | optional,
                informational | Bool | optional,
                only_pulls | Bool | optional,
                paths | std.contract.any_of [ String, Array Dyn ] | optional,
                target
                  | std.contract.any_of
                    [
                      Number,
                      js2n.string.Matches
                        "^(([0-9]+\\.?[0-9]*|\\.[0-9]+)%?|auto)$"
                    ]
                  | optional,
                threshold
                  | js2n.string.Matches "^([0-9]+\\.?[0-9]*|\\.[0-9]+)%?$"
                  | optional,
                ..
              },
              Array Dyn
            ],
      "definitions.flag" =
        {
            assume | std.contract.any_of [ Bool, Array String ] | optional,
            ignore | Array String | optional,
            joined | Bool | optional,
            paths | Array String | optional,
            required | Bool | optional,
            ..
          },
    }
    in
  {
      codecov
        | {
          allow_pseudo_compare | Bool | optional,
          archive | { uploads | Bool | optional, .. } | optional,
          assume_all_flags | Bool | optional,
          bot
            | String
            | doc "Team bot. See https://docs.codecov.io/docs/team-bot for details"
            | optional,
          branch | String | optional,
          ci
            | Array String
            | doc "Detecting CI services. See https://docs.codecov.io/docs/detecting-ci-services for details."
            | optional,
          disable_default_path_fixes | Bool | optional,
          max_report_age
            | std.contract.any_of [ Bool, std.number.Integer, String ]
            | optional,
          notify
            | {
              after_n_builds | std.number.Integer | optional,
              countdown | std.number.Integer | optional,
              delay | std.number.Integer | optional,
              wait_for_ci | Bool | optional,
              ..
            }
            | optional,
          require_ci_to_pass | Bool | optional,
          slug | String | optional,
          strict_yaml_branch | String | optional,
          ui
            | {
              hide_complexity
                | std.contract.any_of [ Bool, Array String ]
                | optional,
              hide_contextual | Bool | optional,
              hide_density
                | std.contract.any_of [ Bool, Array String ]
                | optional,
              hide_search | Bool | optional,
              hide_sunburst | Bool | optional,
              ..
            }
            | optional,
          url | String | optional,
          ..
        }
        | doc "See https://docs.codecov.io/docs/codecov-yaml for details"
        | optional,
      comment
        | std.contract.any_of
          [
            {
              behavior
                | std.enum.TagOrString
                | [| 'spammy, 'new, 'once, '"default" |]
                | optional,
              branches | Array String | optional,
              flags | Array refs."definitions.flag" | optional,
              layout
                | std.contract.any_of
                  [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
                | optional,
              paths | Array String | optional,
              require_base | Bool | optional,
              require_changes | Bool | optional,
              require_head | Bool | optional,
              ..
            },
            std.contract.Equal false
          ]
        | doc "Pull request comments. See https://docs.codecov.io/docs/pull-request-comments for details."
        | optional,
      coverage
        | {
          notify
            | {
              email
                | {
                  "+to" | Array String | optional,
                  base
                    | std.enum.TagOrString
                    | [| 'auto, 'pr, 'parent |]
                    | optional,
                  branches | String | optional,
                  flags | String | optional,
                  layout
                    | std.contract.any_of
                      [
                        js2n.Null,
                        Bool,
                        { _ | Dyn },
                        Array Dyn,
                        Number,
                        String
                      ]
                    | optional,
                  message | String | optional,
                  only_pulls | Bool | optional,
                  paths | Array String | optional,
                  threshold | String | optional,
                  url | String | optional,
                  ..
                }
                | optional,
              gitter
                | {
                  base
                    | std.enum.TagOrString
                    | [| 'auto, 'pr, 'parent |]
                    | optional,
                  branches | String | optional,
                  flags | String | optional,
                  message | String | optional,
                  only_pulls | Bool | optional,
                  paths | Array String | optional,
                  threshold | String | optional,
                  url | String | optional,
                  ..
                }
                | doc "Gitter. See https://docs.codecov.io/docs/notifications#section-gitter for details."
                | optional,
              hipchat
                | {
                  base
                    | std.enum.TagOrString
                    | [| 'auto, 'pr, 'parent |]
                    | optional,
                  branches | String | optional,
                  card | Bool | optional,
                  flags | String | optional,
                  message | String | optional,
                  notify | Bool | optional,
                  only_pulls | Bool | optional,
                  paths | Array String | optional,
                  threshold | String | optional,
                  url | String | optional,
                  ..
                }
                | doc "Hipchat. See https://docs.codecov.io/docs/notifications#section-hipchat for details."
                | optional,
              irc
                | {
                  base
                    | std.enum.TagOrString
                    | [| 'auto, 'pr, 'parent |]
                    | optional,
                  branches | String | optional,
                  channel | String | optional,
                  flags | String | optional,
                  message | String | optional,
                  nickserv_password | String | optional,
                  notice | Bool | optional,
                  only_pulls | Bool | optional,
                  password | String | optional,
                  paths | Array String | optional,
                  threshold | String | optional,
                  url | String | optional,
                  ..
                }
                | optional,
              slack
                | {
                  attachments
                    | std.contract.any_of
                      [
                        js2n.Null,
                        Bool,
                        { _ | Dyn },
                        Array Dyn,
                        Number,
                        String
                      ]
                    | optional,
                  base
                    | std.enum.TagOrString
                    | [| 'auto, 'pr, 'parent |]
                    | optional,
                  branches | String | optional,
                  flags | String | optional,
                  message | String | optional,
                  only_pulls | Bool | optional,
                  paths | Array String | optional,
                  threshold | String | optional,
                  url | String | optional,
                  ..
                }
                | doc "Slack. See https://docs.codecov.io/docs/notifications#section-slack for details."
                | optional,
              webhook
                | {
                  base
                    | std.enum.TagOrString
                    | [| 'auto, 'pr, 'parent |]
                    | optional,
                  branches | String | optional,
                  flags | String | optional,
                  message | String | optional,
                  only_pulls | Bool | optional,
                  paths | Array String | optional,
                  threshold | String | optional,
                  url | String | optional,
                  ..
                }
                | optional,
              ..
            }
            | doc "Notifications. See https://docs.codecov.io/docs/notifications for details."
            | optional,
          precision
            | std.number.Integer
            | js2n.number.Maximum 5
            | js2n.number.Minimum 0
            | optional,
          range | String | optional,
          round | std.enum.TagOrString | [| 'nearest, 'up, 'down |] | optional,
          status
            | std.contract.any_of
              [
                Bool,
                {
                  changes
                    | refs."definitions.default"
                    | std.contract.any_of [ Bool, { _ | Dyn } ]
                    | optional,
                  default_rules | { _ | Dyn } | optional,
                  patch
                    | std.contract.any_of
                      [
                        std.contract.Sequence
                          [ refs."definitions.default", { _ | Dyn } ],
                        std.contract.Sequence
                          [ std.enum.TagOrString, [| 'off |] ],
                        Bool
                      ]
                    | optional,
                  project
                    | std.contract.any_of
                      [
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Record
                          {
                            additional =
                              'Some
                                  (std.contract.Sequence
                                    [
                                      refs."definitions.default",
                                      std.contract.any_of [ Bool, { _ | Dyn } ]
                                    ]),
                            patterns = {},
                            properties =
                              {
                                  "default" =
                                    std.contract.Sequence
                                        [
                                          refs."definitions.default",
                                          std.contract.any_of
                                            [ Bool, { _ | Dyn } ]
                                        ],
                                },
                            required = {},
                          },
                        Array Dyn
                      ]
                    | optional,
                }
              ]
            | doc "Commit status. See https://docs.codecov.io/docs/commit-status for details."
            | optional,
          ..
        }
        | doc "Coverage configuration. See https://docs.codecov.io/docs/coverage-configuration for details."
        | optional,
      fixes
        | Array String
        | doc "Fixing paths. See https://docs.codecov.io/docs/fixing-paths for details."
        | optional,
      flags
        | std.contract.any_of
          [ Array refs."definitions.flag", { _ | refs."definitions.flag" } ]
        | doc "Flags. See https://docs.codecov.io/docs/flags for details."
        | optional,
      github_checks
        | std.contract.any_of
          [
            { annotations | Bool | optional, .. },
            Bool,
            std.contract.Sequence [ std.enum.TagOrString, [| 'off |] ]
          ]
        | doc "GitHub Checks. See https://docs.codecov.com/docs/github-checks for details."
        | optional,
      ignore
        | Array String
        | doc "Ignoring paths. see https://docs.codecov.io/docs/ignoring-paths for details."
        | optional,
      ..
    }