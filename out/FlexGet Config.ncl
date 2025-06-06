# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      irc
        | std.contract.any_of
          [
            {
              _ | std.contract.Sequence
                [
                  std.contract.any_of
                    [
                      js2n.record.Required [ "channels", "server" ],
                      js2n.record.Required [ "tracker_file" ]
                    ],
                  std.contract.any_of
                    [
                      js2n.record.Required [ "task" ],
                      js2n.record.Required [ "task_re" ]
                    ],
                  js2n.record.Record
                    {
                      additional = 'Some String,
                      patterns = {},
                      properties =
                        {
                            channels =
                              std.contract.any_of
                                  [
                                    std.contract.Sequence
                                      [
                                        js2n.array.MinItems 1,
                                        Array (
                                          js2n.string.Matches
                                            "^([#&][^\\x07\\x2C\\s]{0,200})"
                                        )
                                      ],
                                    js2n.string.Matches
                                      "^([#&][^\\x07\\x2C\\s]{0,200})"
                                  ],
                            invite_message = String,
                            invite_nickname = String,
                            nickname = String,
                            nickserv_password = String,
                            password = String,
                            port = std.number.Integer,
                            queue_size = std.number.Integer,
                            server = String,
                            task =
                              std.contract.any_of
                                  [
                                    std.contract.Sequence
                                      [ js2n.array.MinItems 1, Array String ],
                                    String
                                  ],
                            task_delay = std.number.Integer,
                            task_re =
                              Array
                                  {
                                    patterns
                                      | Array
                                        { field | String, regexp | String, },
                                    task | String,
                                  },
                            tracker_file = String,
                            use_ssl = Bool,
                          },
                      required = { port = true, },
                    }
                ]
            },
            js2n.Enum [ false ]
          ]
        | optional,
      log_filter
        | js2n.array.MinItems 1
        | Array (
          std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              std.contract.Sequence
                [
                  js2n.record.MinProperties 1,
                  {
                    level
                      | std.enum.TagOrString
                      | [|
                        'critical,
                        'error,
                        'warning,
                        'success,
                        'info,
                        'verbose,
                        'debug,
                        'trace
                      |]
                      | optional,
                    message | String | optional,
                    plugin | String | optional,
                    task | String | optional,
                    ..
                  }
                ],
              Array Dyn
            ]
        )
        | optional,
      schedules
        | std.contract.any_of
          [
            Array (
              std.contract.Sequence
                [
                  js2n.record.MaxProperties 2,
                  js2n.record.MinProperties 2,
                  {
                    interval
                      | std.contract.any_of
                        [
                          js2n.record.Required [ "minutes" ],
                          js2n.record.Required [ "hours" ],
                          js2n.record.Required [ "days" ],
                          js2n.record.Required [ "weeks" ]
                        ]
                      | {
                        days | Number | optional,
                        hours | Number | optional,
                        jitter | std.number.Integer | optional,
                        minutes | Number | optional,
                        weeks | Number | optional,
                      }
                      | optional,
                    schedule
                      | {
                        day
                          | std.contract.any_of [ std.number.Integer, String ]
                          | optional,
                        day_of_week
                          | std.contract.any_of [ std.number.Integer, String ]
                          | optional,
                        hour
                          | std.contract.any_of [ std.number.Integer, String ]
                          | optional,
                        jitter | std.number.Integer | optional,
                        minute
                          | std.contract.any_of [ std.number.Integer, String ]
                          | optional,
                        month
                          | std.contract.any_of [ std.number.Integer, String ]
                          | optional,
                        week
                          | std.contract.any_of [ std.number.Integer, String ]
                          | optional,
                        year
                          | std.contract.any_of [ std.number.Integer, String ]
                          | optional,
                      }
                      | optional,
                    tasks
                      | std.contract.any_of
                        [
                          std.contract.Sequence
                            [ js2n.array.MinItems 1, Array String ],
                          String
                        ],
                  }
                ]
            ),
            Bool
          ]
        | doc "Runs tasks periodically (when FlexGet is run as a daemon)"
        | optional,
      tasks
        | {
          _ | std.contract.any_of
            [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
        }
        | doc "All tasks which can be run by FlexGet are defined in this section",
      templates
        | {
          _ | std.contract.any_of
            [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
        }
        | optional,
      variables | std.contract.any_of [ Bool, String, { _ | Dyn } ] | optional,
      web_server
        | std.contract.any_of
          [
            Bool,
            std.contract.Sequence
              [
                std.number.Integer,
                js2n.number.Maximum 65536,
                js2n.number.Minimum 0
              ],
            {
              base_url | String | optional,
              bind | String | optional,
              port
                | std.number.Integer
                | js2n.number.Maximum 65536
                | js2n.number.Minimum 0
                | optional,
              run_v1 | Bool | optional,
              run_v2 | Bool | optional,
              ssl_certificate | String | optional,
              ssl_private_key | String | optional,
              web_ui | Bool | optional,
            }
          ]
        | optional,
    }