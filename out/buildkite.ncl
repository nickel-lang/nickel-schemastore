# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.agents" =
        std.contract.any_of
            [
              std.contract.Sequence
                [ refs."definitions.agentsObject", { _ | Dyn } ],
              std.contract.Sequence [ refs."definitions.agentsList", Array Dyn ]
            ],
      "definitions.agentsList" = Array String,
      "definitions.agentsObject" = { _ | Dyn },
      "definitions.allowDependencyFailure" =
        js2n.Enum [ true, false, "true", "false" ],
      "definitions.automaticRetry" =
        {
            exit_status
              | std.contract.any_of
                [
                  std.contract.Sequence [ std.enum.TagOrString, [| '"*" |] ],
                  std.number.Integer,
                  Array std.number.Integer
                ]
              | doc "The exit status number that will cause this job to retry"
              | optional,
            limit
              | std.number.Integer
              | js2n.number.Maximum 10
              | js2n.number.Minimum 0
              | doc "The number of times this job can be retried"
              | optional,
            signal
              | String
              | doc "The exit signal, if any, that may be retried"
              | optional,
            signal_reason
              | std.enum.TagOrString
              | [|
                'signature_rejected,
                'process_run_error,
                'cancel,
                'agent_stop,
                'agent_refused,
                'none,
                '"*"
              |]
              | doc "The exit signal reason, if any, that may be retried"
              | optional,
          },
      "definitions.blockStep" =
        {
            allow_dependency_failure
              | refs."definitions.allowDependencyFailure"
              | std.contract.any_of [ Bool, String ]
              | optional,
            block | String | doc "The label of the block step" | optional,
            blocked_state
              | std.enum.TagOrString
              | [| 'running, 'failed, 'passed |]
              | doc "The state that the build is set to when the build is blocked by this block step"
              | optional,
            branches
              | refs."definitions.branches"
              | std.contract.any_of [ Array Dyn, String ]
              | optional,
            depends_on
              | refs."definitions.dependsOn"
              | std.contract.any_of [ js2n.Null, Array Dyn, String ]
              | optional,
            fields | refs."definitions.fields" | Array Dyn | optional,
            id | refs."definitions.key" | String | optional,
            identifier | refs."definitions.key" | String | optional,
            "if" | refs."definitions.if" | String | optional,
            key | refs."definitions.key" | String | optional,
            label
              | refs."definitions.blockStep.properties.block"
              | String
              | optional,
            name
              | refs."definitions.blockStep.properties.block"
              | String
              | optional,
            prompt | refs."definitions.prompt" | String | optional,
            type | std.enum.TagOrString | [| 'block |] | optional,
          },
      "definitions.blockStep.properties.block" = String,
      "definitions.branches" = std.contract.any_of [ String, Array String ],
      "definitions.buildNotify" =
        Array (
            js2n.OneOf
              [
                std.contract.Sequence
                  [
                    std.enum.TagOrString,
                    [| 'github_commit_status, 'github_check |]
                  ],
                js2n.record.Record
                  {
                    additional = 'None,
                    patterns = {},
                    properties =
                      {
                          email = String,
                          "if" =
                            std.contract.Sequence
                                [ refs."definitions.if", String ],
                        },
                    required = {},
                  },
                js2n.record.Record
                  {
                    additional = 'None,
                    patterns = {},
                    properties =
                      {
                          basecamp_campfire = String,
                          "if" =
                            std.contract.Sequence
                                [ refs."definitions.if", String ],
                        },
                    required = {},
                  },
                js2n.record.Record
                  {
                    additional = 'None,
                    patterns = {},
                    properties =
                      {
                          "if" =
                            std.contract.Sequence
                                [ refs."definitions.if", String ],
                          slack =
                            std.contract.any_of
                                [
                                  String,
                                  js2n.record.Record
                                    {
                                      additional = 'Some Dyn,
                                      patterns = {},
                                      properties =
                                        {
                                            channels =
                                              js2n.array.ArrayOf String,
                                            message = String,
                                          },
                                      required = {},
                                    }
                                ],
                        },
                    required = {},
                  },
                js2n.record.Record
                  {
                    additional = 'None,
                    patterns = {},
                    properties =
                      {
                          "if" =
                            std.contract.Sequence
                                [ refs."definitions.if", String ],
                          webhook = String,
                        },
                    required = {},
                  },
                js2n.record.Record
                  {
                    additional = 'None,
                    patterns = {},
                    properties =
                      {
                          "if" =
                            std.contract.Sequence
                                [ refs."definitions.if", String ],
                          pagerduty_change_event = String,
                        },
                    required = {},
                  },
                js2n.record.Record
                  {
                    additional = 'None,
                    patterns = {},
                    properties =
                      {
                          github_commit_status =
                            js2n.record.Record
                                {
                                  additional = 'None,
                                  patterns = {},
                                  properties = { context = String, },
                                  required = {},
                                },
                          "if" =
                            std.contract.Sequence
                                [ refs."definitions.if", String ],
                        },
                    required = {},
                  },
                js2n.record.Record
                  {
                    additional = 'None,
                    patterns = {},
                    properties = { github_check = { _ | Dyn }, },
                    required = {},
                  }
              ]
          ),
      "definitions.cache" =
        std.contract.any_of
            [
              String,
              Array String,
              {
                name | String | optional,
                paths | Array String,
                size | js2n.string.Matches "^\\d+g$" | optional,
                ..
              }
            ],
      "definitions.cancelOnBuildFailing" =
        js2n.Enum [ true, false, "true", "false" ],
      "definitions.commandStep" =
        {
            agents | refs."definitions.agents" | optional,
            allow_dependency_failure
              | refs."definitions.allowDependencyFailure"
              | std.contract.any_of [ Bool, String ]
              | optional,
            artifact_paths
              | std.contract.any_of [ String, Array String ]
              | doc "The glob path/s of artifacts to upload once this step has finished running"
              | optional,
            branches
              | refs."definitions.branches"
              | std.contract.any_of [ Array Dyn, String ]
              | optional,
            cache
              | refs."definitions.cache"
              | std.contract.any_of [ { _ | Dyn }, Array Dyn, String ]
              | optional,
            cancel_on_build_failing
              | refs."definitions.cancelOnBuildFailing"
              | std.contract.any_of [ Bool, String ]
              | optional,
            command
              | std.contract.any_of [ Array String, String ]
              | doc "The commands to run on the agent"
              | optional,
            commands
              | refs."definitions.commandStep.properties.command"
              | std.contract.any_of [ Array Dyn, String ]
              | doc "The commands to run on the agent"
              | optional,
            concurrency
              | std.number.Integer
              | doc "The maximum number of jobs created from this step that are allowed to run at the same time. If you use this attribute, you must also define concurrency_group."
              | optional,
            concurrency_group
              | String
              | doc "A unique name for the concurrency group that you are creating with the concurrency attribute"
              | optional,
            concurrency_method
              | std.enum.TagOrString
              | [| 'eager, 'ordered |]
              | doc "Control command order, allowed values are 'ordered' (default) and 'eager'.  If you use this attribute, you must also define concurrency_group and concurrency."
              | optional,
            depends_on
              | refs."definitions.dependsOn"
              | std.contract.any_of [ js2n.Null, Array Dyn, String ]
              | optional,
            env | refs."definitions.env" | { _ | Dyn } | optional,
            id | refs."definitions.key" | String | optional,
            identifier | refs."definitions.key" | String | optional,
            "if" | refs."definitions.if" | String | optional,
            key | refs."definitions.key" | String | optional,
            label | refs."definitions.label" | String | optional,
            matrix
              | std.contract.any_of
                [
                  Array refs."definitions.matrixElement",
                  {
                    adjustments
                      | Array
                        {
                          skip
                            | refs."definitions.skip"
                            | std.contract.any_of [ Bool, String ]
                            | optional,
                          soft_fail | refs."definitions.softFail" | optional,
                          with
                            | std.contract.any_of
                              [
                                Array refs."definitions.matrixElement",
                                std.contract.Sequence
                                  [
                                    js2n.record.PropertyNames String,
                                    { _ | String }
                                  ]
                              ],
                          ..
                        }
                      | doc "List of Build Matrix adjustments"
                      | optional,
                    setup
                      | std.contract.any_of
                        [
                          Array refs."definitions.matrixElement",
                          std.contract.Sequence
                            [
                              js2n.record.PropertyNames
                                (js2n.string.Matches "^[a-zA-Z0-9_]+$"),
                              { _ | Array refs."definitions.matrixElement" }
                            ]
                        ],
                    ..
                  }
                ]
              | optional,
            name | refs."definitions.label" | String | optional,
            notify
              | Array (
                js2n.OneOf
                  [
                    std.contract.Sequence
                      [
                        std.enum.TagOrString,
                        [| 'github_commit_status, 'github_check |]
                      ],
                    js2n.record.Record
                      {
                        additional = 'None,
                        patterns = {},
                        properties =
                          {
                              basecamp_campfire = String,
                              "if" =
                                std.contract.Sequence
                                    [ refs."definitions.if", String ],
                            },
                        required = {},
                      },
                    js2n.record.Record
                      {
                        additional = 'None,
                        patterns = {},
                        properties =
                          {
                              "if" =
                                std.contract.Sequence
                                    [ refs."definitions.if", String ],
                              slack =
                                std.contract.any_of
                                    [
                                      String,
                                      js2n.record.Record
                                        {
                                          additional = 'None,
                                          patterns = {},
                                          properties =
                                            {
                                                channels =
                                                  js2n.array.ArrayOf String,
                                                message = String,
                                              },
                                          required = {},
                                        }
                                    ],
                            },
                        required = {},
                      },
                    js2n.record.Record
                      {
                        additional = 'None,
                        patterns = {},
                        properties =
                          {
                              github_commit_status =
                                js2n.record.Record
                                    {
                                      additional = 'None,
                                      patterns = {},
                                      properties = { context = String, },
                                      required = {},
                                    },
                              "if" =
                                std.contract.Sequence
                                    [ refs."definitions.if", String ],
                            },
                        required = {},
                      },
                    js2n.record.Record
                      {
                        additional = 'None,
                        patterns = {},
                        properties = { github_check = { _ | Dyn }, },
                        required = {},
                      }
                  ]
              )
              | doc "Array of notification options for this step"
              | optional,
            parallelism
              | std.number.Integer
              | doc "The number of parallel jobs that will be created based on this step"
              | optional,
            plugins
              | std.contract.any_of
                [
                  Array (
                    std.contract.any_of [ String, js2n.record.MaxProperties 1 ]
                  ),
                  { _ | Dyn }
                ]
              | optional,
            "priority"
              | std.number.Integer
              | doc "Priority of the job, higher priorities are assigned to agents"
              | optional,
            retry
              | {
                automatic
                  | std.contract.any_of
                    [
                      js2n.Enum [ true, false, "true", "false" ],
                      std.contract.Sequence
                        [ refs."definitions.automaticRetry", { _ | Dyn } ],
                      js2n.array.ArrayOf
                        (std.contract.Sequence
                          [ refs."definitions.automaticRetry", { _ | Dyn } ])
                    ]
                  | doc "Whether to allow a job to retry automatically. If set to true, the retry conditions are set to the default value."
                  | optional,
                manual
                  | std.contract.any_of
                    [
                      js2n.Enum [ true, false, "true", "false" ],
                      js2n.record.Record
                        {
                          additional = 'None,
                          patterns = {},
                          properties =
                            {
                                allowed =
                                  js2n.Enum [ true, false, "true", "false" ],
                                permit_on_passed =
                                  js2n.Enum [ true, false, "true", "false" ],
                                reason = String,
                              },
                          required = {},
                        }
                    ]
                  | doc "Whether to allow a job to be retried manually"
                  | optional,
              }
              | doc "The conditions for retrying this step."
              | optional,
            signature
              | {
                algorithm
                  | String
                  | doc "The algorithm used to generate the signature"
                  | optional,
                signed_fields
                  | Array String
                  | doc "The fields that were signed to form the signature value"
                  | optional,
                value
                  | String
                  | doc "The signature value, a JWS compact signature with a detached body"
                  | optional,
                ..
              }
              | doc "The signature of the command step, generally injected by agents at pipeline upload"
              | optional,
            skip
              | refs."definitions.skip"
              | std.contract.any_of [ Bool, String ]
              | optional,
            soft_fail | refs."definitions.softFail" | optional,
            timeout_in_minutes
              | std.number.Integer
              | js2n.number.Minimum 1
              | doc "The number of minutes to time out a job"
              | optional,
            type
              | std.enum.TagOrString
              | [| 'commands, 'command, 'script |]
              | optional,
          },
      "definitions.commandStep.properties.command" =
        std.contract.any_of [ Array String, String ],
      "definitions.dependsOn" =
        std.contract.any_of
            [
              js2n.Null,
              String,
              Array (
                std.contract.any_of
                  [
                    String,
                    {
                      allow_failure
                        | js2n.Enum [ true, false, "true", "false" ]
                        | optional,
                      step | String | optional,
                    }
                  ]
              )
            ],
      "definitions.env" = { _ | Dyn },
      "definitions.fields" =
        Array (
            js2n.OneOf
              [
                js2n.record.Record
                  {
                    additional = 'None,
                    patterns = {},
                    properties =
                      {
                          "default" = String,
                          format = String,
                          hint = String,
                          key = js2n.string.Matches "^[a-zA-Z0-9-_]+$",
                          required = js2n.Enum [ true, false, "true", "false" ],
                          text = String,
                        },
                    required = { key = true, },
                  },
                js2n.record.Record
                  {
                    additional = 'None,
                    patterns = {},
                    properties =
                      {
                          "default" =
                            std.contract.any_of
                                [ String, js2n.array.ArrayOf String ],
                          hint = String,
                          key = js2n.string.Matches "^[a-zA-Z0-9-_]+$",
                          multiple = js2n.Enum [ true, false, "true", "false" ],
                          options =
                            std.contract.Sequence
                                [
                                  js2n.array.MinItems 1,
                                  js2n.array.ArrayOf
                                    (js2n.record.Record
                                      {
                                        additional = 'None,
                                        patterns = {},
                                        properties =
                                          {
                                              hint = String,
                                              label = String,
                                              required =
                                                js2n.Enum
                                                    [
                                                      true,
                                                      false,
                                                      "true",
                                                      "false"
                                                    ],
                                              value = String,
                                            },
                                        required =
                                          { label = true, value = true, },
                                      })
                                ],
                          required = js2n.Enum [ true, false, "true", "false" ],
                          select = String,
                        },
                    required = { key = true, options = true, },
                  }
              ]
          ),
      "definitions.groupStep" =
        {
            allow_dependency_failure
              | refs."definitions.allowDependencyFailure"
              | std.contract.any_of [ Bool, String ]
              | optional,
            depends_on
              | refs."definitions.dependsOn"
              | std.contract.any_of [ js2n.Null, Array Dyn, String ]
              | optional,
            group
              | js2n.Nullable String
              | doc "The name to give to this group of steps",
            id | refs."definitions.key" | String | optional,
            identifier | refs."definitions.key" | String | optional,
            "if" | refs."definitions.if" | String | optional,
            key | refs."definitions.key" | String | optional,
            label
              | refs."definitions.groupStep.properties.group"
              | js2n.Nullable String
              | optional,
            name
              | refs."definitions.groupStep.properties.group"
              | js2n.Nullable String
              | optional,
            notify | refs."definitions.buildNotify" | Array Dyn | optional,
            skip
              | refs."definitions.skip"
              | std.contract.any_of [ Bool, String ]
              | optional,
            steps
              | js2n.array.MinItems 1
              | Array (
                std.contract.any_of
                  [
                    std.contract.Sequence
                      [ refs."definitions.blockStep", { _ | Dyn } ],
                    std.contract.Sequence
                      [ refs."definitions.nestedBlockStep", { _ | Dyn } ],
                    std.contract.Sequence
                      [ refs."definitions.stringBlockStep", String ],
                    std.contract.Sequence
                      [ refs."definitions.inputStep", { _ | Dyn } ],
                    std.contract.Sequence
                      [ refs."definitions.nestedInputStep", { _ | Dyn } ],
                    std.contract.Sequence
                      [ refs."definitions.stringInputStep", String ],
                    std.contract.Sequence
                      [ refs."definitions.commandStep", { _ | Dyn } ],
                    std.contract.Sequence
                      [ refs."definitions.nestedCommandStep", { _ | Dyn } ],
                    std.contract.Sequence
                      [ refs."definitions.waitStep", { _ | Dyn } ],
                    std.contract.Sequence
                      [ refs."definitions.nestedWaitStep", { _ | Dyn } ],
                    std.contract.Sequence
                      [ refs."definitions.stringWaitStep", String ],
                    std.contract.Sequence
                      [ refs."definitions.triggerStep", { _ | Dyn } ],
                    std.contract.Sequence
                      [ refs."definitions.nestedTriggerStep", { _ | Dyn } ]
                  ]
              )
              | doc "A list of steps",
          },
      "definitions.groupStep.properties.group" = js2n.Nullable String,
      "definitions.if" = String,
      "definitions.inputStep" =
        {
            allow_dependency_failure
              | refs."definitions.allowDependencyFailure"
              | std.contract.any_of [ Bool, String ]
              | optional,
            branches
              | refs."definitions.branches"
              | std.contract.any_of [ Array Dyn, String ]
              | optional,
            depends_on
              | refs."definitions.dependsOn"
              | std.contract.any_of [ js2n.Null, Array Dyn, String ]
              | optional,
            fields | refs."definitions.fields" | Array Dyn | optional,
            id | refs."definitions.key" | String | optional,
            identifier | refs."definitions.key" | String | optional,
            "if" | refs."definitions.if" | String | optional,
            input | String | doc "The label of the input step" | optional,
            key | refs."definitions.key" | String | optional,
            label
              | refs."definitions.inputStep.properties.input"
              | String
              | optional,
            name
              | refs."definitions.inputStep.properties.input"
              | String
              | optional,
            prompt | refs."definitions.prompt" | String | optional,
            type | std.enum.TagOrString | [| 'input |] | optional,
          },
      "definitions.inputStep.properties.input" = String,
      "definitions.key" =
        std.contract.Sequence
            [
              std.contract.not
                (std.contract.any_of
                  [
                    js2n.Null,
                    Bool,
                    Number,
                    js2n.string.Matches
                      "^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$",
                    { _ | Dyn },
                    Array Dyn
                  ]),
              String
            ],
      "definitions.label" = String,
      "definitions.matrixElement" =
        std.contract.any_of [ String, std.number.Integer, Bool ],
      "definitions.nestedBlockStep" =
        { block | refs."definitions.blockStep" | { _ | Dyn } | optional, },
      "definitions.nestedCommandStep" =
        {
            command | refs."definitions.commandStep" | { _ | Dyn } | optional,
            commands | refs."definitions.commandStep" | { _ | Dyn } | optional,
            script | refs."definitions.commandStep" | { _ | Dyn } | optional,
          },
      "definitions.nestedInputStep" =
        { input | refs."definitions.inputStep" | { _ | Dyn } | optional, },
      "definitions.nestedTriggerStep" =
        { trigger | refs."definitions.triggerStep" | { _ | Dyn } | optional, },
      "definitions.nestedWaitStep" =
        {
            wait
              | refs."definitions.waitStep"
              | { _ | Dyn }
              | doc "Waits for previous steps to pass before continuing"
              | optional,
            waiter | refs."definitions.waitStep" | { _ | Dyn } | optional,
          },
      "definitions.prompt" = String,
      "definitions.skip" = std.contract.any_of [ Bool, String ],
      "definitions.softFail" =
        std.contract.any_of
            [
              js2n.Enum [ true, false, "true", "false" ],
              js2n.array.ArrayOf
                (js2n.record.Record
                  {
                    additional = 'Some Dyn,
                    patterns = {},
                    properties =
                      {
                          exit_status =
                            std.contract.any_of
                                [
                                  std.contract.Sequence
                                    [ std.enum.TagOrString, [| '"*" |] ],
                                  std.number.Integer
                                ],
                        },
                    required = {},
                  })
            ],
      "definitions.stringBlockStep" =
        std.contract.Sequence [ std.enum.TagOrString, [| 'block |] ],
      "definitions.stringInputStep" =
        std.contract.Sequence [ std.enum.TagOrString, [| 'input |] ],
      "definitions.stringWaitStep" =
        std.contract.Sequence [ std.enum.TagOrString, [| 'waiter, 'wait |] ],
      "definitions.triggerStep" =
        {
            allow_dependency_failure
              | refs."definitions.allowDependencyFailure"
              | std.contract.any_of [ Bool, String ]
              | optional,
            async
              | js2n.Enum [ true, false, "true", "false" ]
              | doc "Whether to continue the build without waiting for the triggered step to complete"
              | optional,
            branches
              | refs."definitions.branches"
              | std.contract.any_of [ Array Dyn, String ]
              | optional,
            build
              | {
                branch | String | doc "The branch for the build" | optional,
                commit
                  | String
                  | doc "The commit hash for the build"
                  | optional,
                env | refs."definitions.env" | { _ | Dyn } | optional,
                message
                  | String
                  | doc "The message for the build (supports emoji)"
                  | optional,
                meta_data
                  | { _ | Dyn }
                  | doc "Meta-data for the build"
                  | optional,
              }
              | doc "Properties of the build that will be created when the step is triggered"
              | optional,
            depends_on
              | refs."definitions.dependsOn"
              | std.contract.any_of [ js2n.Null, Array Dyn, String ]
              | optional,
            id | refs."definitions.key" | String | optional,
            identifier | refs."definitions.key" | String | optional,
            "if" | refs."definitions.if" | String | optional,
            key | refs."definitions.key" | String | optional,
            label | refs."definitions.label" | String | optional,
            name | refs."definitions.label" | String | optional,
            skip
              | refs."definitions.skip"
              | std.contract.any_of [ Bool, String ]
              | optional,
            soft_fail | refs."definitions.softFail" | optional,
            trigger | String | doc "The slug of the pipeline to create a build",
            type | std.enum.TagOrString | [| 'trigger |] | optional,
          },
      "definitions.waitStep" =
        {
            allow_dependency_failure
              | refs."definitions.allowDependencyFailure"
              | std.contract.any_of [ Bool, String ]
              | optional,
            branches
              | refs."definitions.branches"
              | std.contract.any_of [ Array Dyn, String ]
              | optional,
            continue_on_failure
              | js2n.Enum [ true, false, "true", "false" ]
              | doc "Continue to the next steps, even if the previous group of steps fail"
              | optional,
            depends_on
              | refs."definitions.dependsOn"
              | std.contract.any_of [ js2n.Null, Array Dyn, String ]
              | optional,
            id | refs."definitions.key" | String | optional,
            identifier | refs."definitions.key" | String | optional,
            "if" | refs."definitions.if" | String | optional,
            key | refs."definitions.key" | String | optional,
            label
              | refs."definitions.waitStep.properties.wait"
              | js2n.Nullable String
              | optional,
            name
              | refs."definitions.waitStep.properties.wait"
              | js2n.Nullable String
              | optional,
            type | std.enum.TagOrString | [| 'waiter, 'wait |] | optional,
            wait
              | js2n.Nullable String
              | doc "Waits for previous steps to pass before continuing"
              | optional,
          },
      "definitions.waitStep.properties.wait" = js2n.Nullable String,
    }
    in
  {
      agents | refs."definitions.agents" | optional,
      env | refs."definitions.env" | optional,
      notify | refs."definitions.buildNotify" | optional,
      steps
        | Array (
          std.contract.any_of
            [
              refs."definitions.blockStep",
              refs."definitions.nestedBlockStep",
              refs."definitions.stringBlockStep",
              refs."definitions.inputStep",
              refs."definitions.nestedInputStep",
              refs."definitions.stringInputStep",
              refs."definitions.commandStep",
              refs."definitions.nestedCommandStep",
              refs."definitions.waitStep",
              refs."definitions.nestedWaitStep",
              refs."definitions.stringWaitStep",
              refs."definitions.triggerStep",
              refs."definitions.nestedTriggerStep",
              refs."definitions.groupStep"
            ]
        )
        | doc "A list of steps",
      ..
    }