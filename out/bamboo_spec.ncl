# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.deployment" =
        { name | String | optional, source-plan | String | optional, .. },
      "definitions.docker" =
        std.contract.any_of
            [
              String,
              {
                docker-run-arguments | Array String | optional,
                image | String,
                use-default-volumes | Bool | optional,
                volumes | { _ | Dyn } | optional,
                ..
              }
            ],
      "definitions.events" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [|
                'job-queued-without-capable-agents,
                'job-queue-timeout,
                'job-hung,
                'job-first-failed,
                'job-error,
                'job-failed,
                'job-status-changed,
                'job-completed,
                'plan-responsibility-changed,
                'plan-comment-added,
                'plan-status-changed,
                'plan-completed,
                'plan-failed
              |]
            ],
      "definitions.job" =
        {
            docker
              | refs."definitions.docker"
              | std.contract.any_of [ { _ | Dyn }, String ]
              | optional,
            final-tasks | Array Dyn | optional,
            key | String | optional,
            other | { clean-working-dir | Bool | optional, .. } | optional,
            requirements
              | Array (
                std.contract.any_of
                  [
                    String,
                    js2n.record.Record
                      {
                        additional = 'Some Dyn,
                        patterns = { "." = String, },
                        properties = {},
                        required = {},
                      }
                  ]
              )
              | optional,
            tasks
              | Array (
                std.contract.any_of
                  [
                    std.contract.Sequence
                      [ refs."definitions.predefinedTask", String ],
                    std.contract.Sequence
                      [
                        refs."definitions.script",
                        std.contract.any_of [ { _ | Dyn }, String ]
                      ],
                    std.contract.Sequence
                      [ refs."definitions.job.definitions.task", { _ | Dyn } ]
                  ]
              )
              | optional,
            ..
          },
      "definitions.job.definitions.task" =
        {
            checkout
              | {
                force-clean-build | String | optional,
                path | String | optional,
                repository | String | optional,
                ..
              }
              | optional,
            clean | { _ | Dyn } | optional,
            inject-variables
              | std.contract.any_of
                [
                  String,
                  {
                    file | String | optional,
                    namespace | String | optional,
                    scope | String | optional,
                  }
                ]
              | optional,
            interpreter | String | optional,
            scripts
              | js2n.array.MinItems 1
              | Array (
                std.contract.Sequence
                  [
                    refs."definitions.script",
                    std.contract.any_of [ { _ | Dyn }, String ]
                  ]
              )
              | optional,
            test-parser
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [ refs."definitions.testParser", String ],
                  {
                    ignore-time | Bool | optional,
                    test-results | Array String | optional,
                    type | refs."definitions.testParser" | String,
                    ..
                  }
                ]
              | doc "The Test Results Parser task in Bamboo parses test data"
              | optional,
            ..
          },
      "definitions.keyValue" =
        js2n.record.Record
            {
              additional = 'Some Dyn,
              patterns =
                {
                    "[a-zA-Z0-9_]" =
                      std.contract.any_of
                          [ String, std.number.Integer, Bool, Number ],
                  },
              properties = {},
              required = {},
            },
      "definitions.permission" =
        {
            groups | std.contract.any_of [ String, Array String ] | optional,
            permissions
              | std.contract.any_of
                [
                  Array (
                    std.contract.Sequence
                      [
                        refs."definitions.permission.definitions.permission",
                        String
                      ]
                  ),
                  std.contract.Sequence
                    [
                      refs."definitions.permission.definitions.permission",
                      String
                    ]
                ]
              | optional,
            roles | Array String | optional,
            users | Array String | optional,
            ..
          },
      "definitions.permission.definitions.permission" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [| 'deploy, 'clone, 'admin, 'build, 'edit, 'view |]
            ],
      "definitions.plan" =
        {
            key | String | optional,
            name | String | optional,
            project-key | String | optional,
            ..
          },
      "definitions.predefinedTask" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [| 'artifact-download, 'checkout, 'clean, 'inject-variables |]
            ],
      "definitions.releaseNaming" =
        {
            applies-to-branches | Bool | optional,
            auto-increment | Bool | optional,
            auto-increment-variables
              | std.contract.any_of [ String, Array String ]
              | optional,
            next-version-name | String | optional,
            ..
          },
      "definitions.script" =
        std.contract.any_of [ String, { script | String | optional, .. } ],
      "definitions.stage" =
        {
            final
              | Bool
              | doc "Will be executed regardless of other stages state (pass or fail)"
              | optional,
            jobs | Array String | optional,
            manual | Bool | doc "Will await for execution by user" | optional,
          },
      "definitions.testParser" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [| 'testng, 'mocha, 'nunit, 'mstest, 'junit |]
            ],
      "definitions.triggers" =
        Array (
            std.contract.any_of
              [
                std.contract.Sequence
                  [
                    refs."definitions.triggers.definitions.polling",
                    { _ | Dyn }
                  ],
                std.contract.Sequence
                  [ refs."definitions.triggers.definitions.cron", { _ | Dyn } ],
                std.contract.Sequence
                  [
                    refs."definitions.triggers.definitions.remote",
                    { _ | Dyn }
                  ],
                String
              ]
          ),
      "definitions.triggers.definitions.cron" =
        {
            cron
              | std.contract.any_of
                [ String, { expression | String | optional, .. } ]
              | optional,
          },
      "definitions.triggers.definitions.polling" =
        {
            polling
              | std.contract.any_of
                [
                  std.number.Integer,
                  {
                    conditions
                      | Array (
                        js2n.record.Record
                          {
                            additional = 'Some Dyn,
                            patterns = { "[a-zA-Z0-9\\s+_-]" = { _ | Bool }, },
                            properties = {},
                            required = {},
                          }
                      )
                      | optional,
                    period | std.number.Integer | optional,
                  }
                ]
              | optional,
          },
      "definitions.triggers.definitions.remote" =
        {
            remote
              | std.contract.any_of [ String, { ip | String | optional, .. } ]
              | optional,
          },
    }
    in
  js2n.record.Record
      {
        additional = 'Some refs."definitions.job",
        patterns = {},
        properties =
          {
              branch-overrides =
                Array (
                    js2n.record.Record
                      {
                        additional = 'Some Dyn,
                        patterns =
                          {
                              "[a-zA-Z0-9\\s+_-]" =
                                std.contract.any_of
                                    [
                                      js2n.Null,
                                      Bool,
                                      { _ | Dyn },
                                      Array Dyn,
                                      Number,
                                      String
                                    ],
                            },
                        properties = {},
                        required = {},
                      }
                  ),
              default-environment-permissions =
                Array refs."definitions.permission",
              deployment =
                std.contract.any_of [ String, refs."definitions.deployment" ],
              deployment-permissions = Array refs."definitions.permission",
              docker = refs."definitions.docker",
              environment-permissions =
                Array (
                    js2n.record.Record
                      {
                        additional = 'Some Dyn,
                        patterns =
                          {
                              "[a-zA-Z0-9\\s+_-]" =
                                Array refs."definitions.permission",
                            },
                        properties = {},
                        required = {},
                      }
                  ),
              environments = Array String,
              labels = Array String,
              notifications =
                Array
                    {
                      events
                        | Array (
                          std.contract.any_of
                            [ refs."definitions.events", { _ | Dyn } ]
                        )
                        | optional,
                      recipients
                        | Array (
                          std.contract.any_of
                            [
                              String,
                              {
                                emails | Array String | optional,
                                users | Array String | optional,
                                ..
                              }
                            ]
                        )
                        | optional,
                      ..
                    },
              other = { _ | Dyn },
              plan = refs."definitions.plan",
              plan-permissions = Array refs."definitions.permission",
              release-naming =
                std.contract.any_of
                    [ refs."definitions.releaseNaming", String ],
              repositories =
                Array (
                    std.contract.any_of
                      [
                        String,
                        js2n.record.Record
                          {
                            additional = 'Some Dyn,
                            patterns =
                              {
                                  "[a-zA-Z0-9_]" =
                                    {
                                        branch | String | optional,
                                        change-detection
                                          | {
                                            exclude-changeset-pattern
                                              | String
                                              | optional,
                                            file-filter-pattern
                                              | String
                                              | optional,
                                            file-filter-type
                                              | String
                                              | optional,
                                            quiet-period
                                              | {
                                                max-retries
                                                  | std.number.Integer
                                                  | optional,
                                                quiet-period-seconds
                                                  | std.number.Integer
                                                  | optional,
                                                ..
                                              }
                                              | optional,
                                            ..
                                          }
                                          | optional,
                                        lfs | Bool | optional,
                                        password | String | optional,
                                        scope
                                          | std.enum.TagOrString
                                          | [| 'global, 'project |]
                                          | optional,
                                        shared-credentials | String | optional,
                                        slug | String | optional,
                                        ssh-key | String | optional,
                                        ssh-key-passphrase | String | optional,
                                        submodules | Bool | optional,
                                        type | String | optional,
                                        url | String | optional,
                                        use-shallow-clones | Bool | optional,
                                        username | String | optional,
                                        viewer | String | optional,
                                        ..
                                      },
                                },
                            properties = {},
                            required = {},
                          }
                      ]
                  ),
              stages =
                Array (
                    js2n.record.Record
                      {
                        additional = 'Some Dyn,
                        patterns =
                          {
                              "[a-zA-Z0-9\\s+_-]" =
                                std.contract.any_of
                                    [ Array String, refs."definitions.stage" ],
                            },
                        properties = {},
                        required = {},
                      }
                  ),
              triggers = refs."definitions.triggers",
              variables = refs."definitions.keyValue",
              version = std.number.Integer,
            },
        required = {},
      }