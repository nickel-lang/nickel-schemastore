# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions._testConfigurationInner" =
        std.contract.Sequence
            [
              refs."definitions.testConfiguration",
              {
                on_os
                  | {
                    _ | std.contract.Sequence
                      [ refs."definitions.testConfiguration", { _ | Dyn } ]
                  }
                  | doc "Applies test options when a specific operating system is used"
                  | optional,
                presets
                  | {
                    _ | std.contract.Sequence
                      [ refs."definitions.testConfiguration", { _ | Dyn } ]
                  }
                  | doc "A preset used in a test configuration can contain test configuration."
                  | optional,
                ..
              }
            ],
      "definitions.browserAndNodeSettings" =
        {
            arguments
              | String
              | doc "The arguments are parsed in the same way as the POSIX shell"
              | optional,
            executable
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [ refs."definitions.executable", String ],
                  {
                    linux | refs."definitions.executable" | String | optional,
                    mac_os | refs."definitions.executable" | String | optional,
                    windows | refs."definitions.executable" | String | optional,
                  }
                ]
              | optional,
            headless | Bool | optional,
          },
      "definitions.executable" = String,
      "definitions.foldStackFrameOptions" =
        js2n.OneOf
            [
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties = { except = js2n.array.ArrayOf String, },
                  required = {},
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties = { only = js2n.array.ArrayOf String, },
                  required = {},
                }
            ],
      "definitions.runnerConfiguration" =
        std.contract.Sequence
            [
              refs."definitions.testConfiguration",
              {
                add_presets
                  | Array String
                  | doc "Commonly used in a preset, it can be used to enable present inheritance by adding the configuration from another preset."
                  | optional,
                concurrency
                  | std.number.Integer
                  | doc "The default number of test suites to run in parallel. This defaults to approximately half the number of processors on the current machine. Setting it to 1 will disable concurrency"
                  | optional,
                custom_html_template_path
                  | String
                  | doc "This field specifies the path of the HTML template to be used for tests run in an HTML environment."
                  | optional,
                define_platforms
                  | {
                    _ | {
                      extends | String | optional,
                      name | String | optional,
                      settings
                        | refs."definitions.browserAndNodeSettings"
                        | { _ | Dyn }
                        | optional,
                      ..
                    }
                  }
                  | optional,
                exclude_tags
                  | String
                  | doc "This field causes the runner to only run tests whose tags match the given boolean selector. This takes precedence over include_tags"
                  | optional,
                file_reporters
                  | { _ | String }
                  | doc "Specifies additional reporters that will write their output to a file rather than stdout"
                  | optional,
                filename
                  | String
                  | doc "Filename pattern that the test runner uses to find test files in directories."
                  | optional,
                fold_stack_frames
                  | refs."definitions.foldStackFrameOptions"
                  | optional,
                include | String | optional,
                include_tags
                  | String
                  | doc "This field causes the runner to only run tests whose tags match the given boolean selector."
                  | optional,
                names
                  | Array String
                  | doc "Only run tests whose names match the given regular expressions A test's name must match all regular expressions in names in order to be run."
                  | optional,
                on_os
                  | { _ | std.contract.Sequence [ js2n.Always, { _ | Dyn } ] }
                  | doc "Applies test or runner options when a specific operating system is used"
                  | optional,
                override_platforms
                  | {
                    _ | {
                      settings
                        | refs."definitions.browserAndNodeSettings"
                        | { _ | Dyn }
                        | optional,
                      ..
                    }
                  }
                  | optional,
                paths | Array String | optional,
                pause_after_load
                  | Bool
                  | doc "Indicates that the test runner should pause for debugging after each test suite is loaded but before its tests are executed. This disables concurrency and timeouts."
                  | optional,
                plain_names
                  | Array String
                  | doc "This field causes the runner to only run tests whose names contain the given strings. A test's name must contain all strings in order to be run."
                  | optional,
                platforms
                  | Array String
                  | doc "The platforms on which tests should be run."
                  | optional,
                presets
                  | { _ | std.contract.Sequence [ js2n.Always, { _ | Dyn } ] }
                  | optional,
                reporter
                  | String
                  | doc "This field indicates the default reporter to use."
                  | optional,
                run_skipped
                  | Bool
                  | doc "Run tests even if they're marked as skipped."
                  | optional,
                ..
              }
            ],
      "definitions.skip" = std.contract.any_of [ Bool, String ],
      "definitions.testConfiguration" =
        {
            add_tags
              | Array String
              | doc "Adds additional tags. This is usually used in a tag definition to enable tag inheritance."
              | optional,
            chain_stack_traces
              | Bool
              | doc "Disabling stack trace chaining will improve performance for heavily async code at the cost of debuggability."
              | optional,
            js_trace
              | Bool
              | doc "Whether or not stack traces caused by errors while running Dart compiled to JS are converted back to Dart style."
              | optional,
            on_platform
              | {
                _ | std.contract.Sequence
                  [ refs."definitions._testConfigurationInner", { _ | Dyn } ]
              }
              | optional,
            retry
              | Number
              | doc "This field controls how many times a test is retried upon failure."
              | optional,
            skip | refs."definitions.skip" | optional,
            tags
              | {
                _ | std.contract.Sequence
                  [ refs."definitions._testConfigurationInner", { _ | Dyn } ]
              }
              | optional,
            test_on | String | optional,
            timeout | refs."definitions.timeout" | optional,
            verbose_trace
              | Bool
              | doc "This field controls whether or not traces caused by errors are trimmed to remove internal stack frames. This includes frames from the Dart core libraries, the stack_trace package, and the test package itself."
              | optional,
            ..
          },
      "definitions.timeout" =
        js2n.OneOf
            [
              std.contract.Sequence [ std.enum.TagOrString, [| 'none |] ],
              js2n.string.Matches
                "^(?:[^a-df-zA-DF-Z\\s]+(?:[umUM][sS]|[dhmsDHMS])\\s?)+$",
              js2n.string.Matches "^[^a-df-zA-DF-Z\\s]+[xX]$"
            ],
    }
    in
  std.contract.Sequence [ refs."definitions.runnerConfiguration", { _ | Dyn } ]