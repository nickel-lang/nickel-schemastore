# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.AppModel" =
        {
            description | String | optional,
            envs | refs."definitions.EnvModel" | Array Dyn | optional,
            status_report_name
              | refs."definitions.StatusReportNameModel"
              | String
              | optional,
            summary | String | optional,
            title | String | optional,
          },
      "definitions.AptGetDepModel" =
        { bin_name | String | optional, name | String | optional, },
      "definitions.BashStepToolkitModel" = { entry_file | String | optional, },
      "definitions.BitriseDataModel" =
        std.contract.Sequence
            [
              std.contract.any_of
                [
                  js2n.record.Required [ "format_version" ],
                  js2n.record.Required [ "include" ]
                ],
              {
                app | refs."definitions.AppModel" | { _ | Dyn } | optional,
                containers
                  | js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns =
                        {
                            ".*" =
                              std.contract.Sequence
                                  [
                                    refs."definitions.ContainerModel",
                                    { _ | Dyn }
                                  ],
                          },
                      properties = {},
                      required = {},
                    }
                  | optional,
                default_step_lib_source | String | optional,
                description | String | optional,
                format_version | String | optional,
                include
                  | Array (
                    std.contract.Sequence
                      [ refs."definitions.IncludeItemModel", { _ | Dyn } ]
                  )
                  | optional,
                meta
                  | js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns =
                        {
                            ".*" =
                              std.contract.any_of
                                  [
                                    js2n.Null,
                                    Bool,
                                    Number,
                                    String,
                                    {  .. },
                                    Array Dyn
                                  ],
                          },
                      properties = {},
                      required = {},
                    }
                  | optional,
                pipelines
                  | js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns =
                        {
                            ".*" =
                              std.contract.Sequence
                                  [
                                    refs."definitions.PipelineModel",
                                    { _ | Dyn }
                                  ],
                          },
                      properties = {},
                      required = {},
                    }
                  | optional,
                project_type | String | optional,
                services
                  | js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns =
                        {
                            ".*" =
                              std.contract.Sequence
                                  [
                                    refs."definitions.ContainerModel",
                                    { _ | Dyn }
                                  ],
                          },
                      properties = {},
                      required = {},
                    }
                  | optional,
                stages
                  | js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns =
                        {
                            ".*" =
                              std.contract.Sequence
                                  [
                                    refs."definitions.StageModel",
                                    { _ | Dyn }
                                  ],
                          },
                      properties = {},
                      required = {},
                    }
                  | optional,
                step_bundles
                  | js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns =
                        {
                            ".*" =
                              std.contract.Sequence
                                  [
                                    refs."definitions.StepBundleModel",
                                    { _ | Dyn }
                                  ],
                          },
                      properties = {},
                      required = {},
                    }
                  | optional,
                summary | String | optional,
                title | String | optional,
                trigger_map
                  | Array (
                    std.contract.Sequence
                      [ refs."definitions.TriggerMapItemModel", { _ | Dyn } ]
                  )
                  | optional,
                workflows
                  | js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns =
                        {
                            ".*" =
                              std.contract.Sequence
                                  [
                                    refs."definitions.WorkflowModel",
                                    { _ | Dyn }
                                  ],
                          },
                      properties = {},
                      required = {},
                    }
                  | optional,
              }
            ],
      "definitions.BrewDepModel" =
        { bin_name | String | optional, name | String | optional, },
      "definitions.CheckOnlyDepModel" = { name | String | optional, },
      "definitions.ContainerModel" =
        {
            credentials
              | refs."definitions.DockerCredentialModel"
              | { _ | Dyn }
              | optional,
            envs | refs."definitions.EnvModel" | Array Dyn | optional,
            image | String,
            options | String | optional,
            ports | Array String | optional,
          },
      "definitions.DepsModel" =
        {
            apt_get
              | Array (
                std.contract.Sequence
                  [ refs."definitions.AptGetDepModel", { _ | Dyn } ]
              )
              | optional,
            brew
              | Array (
                std.contract.Sequence
                  [ refs."definitions.BrewDepModel", { _ | Dyn } ]
              )
              | optional,
            check_only
              | Array (
                std.contract.Sequence
                  [ refs."definitions.CheckOnlyDepModel", { _ | Dyn } ]
              )
              | optional,
          },
      "definitions.DockerCredentialModel" =
        { password | String, server | String | optional, username | String, },
      "definitions.EnvModel" =
        Array (
            js2n.record.Record
              {
                additional = 'Some Dyn,
                patterns =
                  {
                      ".*" =
                        std.contract.any_of
                            [
                              js2n.Null,
                              Bool,
                              Number,
                              String,
                              {  .. },
                              Array Dyn
                            ],
                    },
                properties = {},
                required = {},
              }
          ),
      "definitions.GoStepToolkitModel" = { package_name | String, },
      "definitions.GraphPipelineWorkflowModel" =
        {
            abort_on_fail | Bool | optional,
            depends_on | Array String | optional,
            inputs | refs."definitions.EnvModel" | Array Dyn | optional,
            parallel
              | std.contract.any_of [ std.number.Integer, String ]
              | optional,
            run_if
              | refs."definitions.GraphPipelineWorkflowRunIfModel"
              | { _ | Dyn }
              | optional,
            should_always_run
              | std.enum.TagOrString
              | [| 'workflow, 'off |]
              | optional,
            uses | String | optional,
          },
      "definitions.GraphPipelineWorkflowRunIfModel" = { expression | String, },
      "definitions.IncludeItemModel" =
        {
            branch | String | optional,
            commit | String | optional,
            path | js2n.string.MinLength 1,
            repository | String | optional,
            tag | String | optional,
          },
      "definitions.PipelineModel" =
        {
            description | String | optional,
            "priority" | refs."definitions.PriorityModel" | Number | optional,
            stages
              | Array (
                js2n.record.Record
                  {
                    additional = 'Some Dyn,
                    patterns =
                      {
                          ".*" =
                            std.contract.Sequence
                                [ refs."definitions.StageModel", { _ | Dyn } ],
                        },
                    properties = {},
                    required = {},
                  }
              )
              | optional,
            status_report_name
              | refs."definitions.StatusReportNameModel"
              | String
              | optional,
            summary | String | optional,
            title | String | optional,
            triggers
              | refs."definitions.TriggersModel"
              | { _ | Dyn }
              | optional,
            workflows
              | js2n.record.Record
                {
                  additional = 'Some Dyn,
                  patterns =
                    {
                        ".*" =
                          std.contract.Sequence
                              [
                                refs."definitions.GraphPipelineWorkflowModel",
                                { _ | Dyn }
                              ],
                      },
                  properties = {},
                  required = {},
                }
              | optional,
          },
      "definitions.PriorityModel" =
        std.contract.Sequence
            [
              std.number.Integer,
              js2n.number.Maximum 100,
              js2n.number.Minimum (-100)
            ],
      "definitions.PullrequestTriggerModel" =
        {
            changed_files
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [
                      refs."definitions.TriggerMapItemModelRegexCondition",
                      { _ | Dyn }
                    ],
                  String
                ]
              | optional,
            comment
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [
                      refs."definitions.TriggerMapItemModelRegexCondition",
                      { _ | Dyn }
                    ],
                  String
                ]
              | optional,
            commit_message
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [
                      refs."definitions.TriggerMapItemModelRegexCondition",
                      { _ | Dyn }
                    ],
                  String
                ]
              | optional,
            draft_enabled | Bool | optional,
            enabled | Bool | optional,
            label
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [
                      refs."definitions.TriggerMapItemModelRegexCondition",
                      { _ | Dyn }
                    ],
                  String
                ]
              | optional,
            "priority" | refs."definitions.PriorityModel" | Number | optional,
            source_branch
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [
                      refs."definitions.TriggerMapItemModelRegexCondition",
                      { _ | Dyn }
                    ],
                  String
                ]
              | optional,
            target_branch
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [
                      refs."definitions.TriggerMapItemModelRegexCondition",
                      { _ | Dyn }
                    ],
                  String
                ]
              | optional,
          },
      "definitions.PushTriggerMapItemModelCommitsCondition" =
        std.contract.Sequence
            [
              js2n.OneOf
                [
                  std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      js2n.record.Record
                        {
                          additional = 'Some Dyn,
                          patterns = {},
                          properties =
                            { last_commit = Bool, pattern = String, },
                          required = { pattern = true, },
                        },
                      Array Dyn
                    ],
                  std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      js2n.record.Record
                        {
                          additional = 'Some Dyn,
                          patterns = {},
                          properties = { last_commit = Bool, regex = String, },
                          required = { regex = true, },
                        },
                      Array Dyn
                    ]
                ],
              {}
            ],
      "definitions.PushTriggerModel" =
        {
            branch
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [
                      refs."definitions.TriggerMapItemModelRegexCondition",
                      { _ | Dyn }
                    ],
                  String
                ]
              | optional,
            changed_files
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [
                      refs."definitions.PushTriggerMapItemModelCommitsCondition",
                      { _ | Dyn }
                    ],
                  String
                ]
              | optional,
            commit_message
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [
                      refs."definitions.PushTriggerMapItemModelCommitsCondition",
                      { _ | Dyn }
                    ],
                  String
                ]
              | optional,
            enabled | Bool | optional,
            "priority" | refs."definitions.PriorityModel" | Number | optional,
          },
      "definitions.StageModel" =
        {
            abort_on_fail | Bool | optional,
            description | String | optional,
            should_always_run | Bool | optional,
            summary | String | optional,
            title | String | optional,
            workflows
              | Array (
                js2n.record.Record
                  {
                    additional = 'Some Dyn,
                    patterns =
                      {
                          ".*" =
                            std.contract.Sequence
                                [
                                  refs."definitions.WorkflowStageConfigModel",
                                  { _ | Dyn }
                                ],
                        },
                    properties = {},
                    required = {},
                  }
              )
              | optional,
          },
      "definitions.StatusReportNameModel" =
        std.contract.Sequence
            [
              js2n.string.MaxLength 100,
              js2n.string.MinLength 1,
              js2n.string.Matches "^[a-zA-Z0-9,./():\\-_ <>\\[\\]\\|]*$"
            ],
      "definitions.StepBundleModel" =
        {
            description | String | optional,
            envs | refs."definitions.EnvModel" | Array Dyn | optional,
            inputs | refs."definitions.EnvModel" | Array Dyn | optional,
            steps
              | Array (
                js2n.record.Record
                  {
                    additional = 'None,
                    patterns =
                      {
                          "^(?!bundle::)(?!with$).*" =
                            std.contract.Sequence
                                [ refs."definitions.StepModel", { _ | Dyn } ],
                          "^bundle::.+" =
                            std.contract.Sequence
                                [
                                  refs."definitions.StepBundleOverrideModel",
                                  { _ | Dyn }
                                ],
                        },
                    properties = {},
                    required = {},
                  }
              )
              | optional,
            summary | String | optional,
            title | String | optional,
          },
      "definitions.StepBundleOverrideModel" =
        {
            description | String | optional,
            envs | refs."definitions.EnvModel" | Array Dyn | optional,
            inputs | refs."definitions.EnvModel" | Array Dyn | optional,
            summary | String | optional,
            title | String | optional,
          },
      "definitions.StepModel" =
        {
            asset_urls
              | js2n.record.Record
                {
                  additional = 'Some Dyn,
                  patterns = { ".*" = String, },
                  properties = {},
                  required = {},
                }
              | optional,
            deps | refs."definitions.DepsModel" | { _ | Dyn } | optional,
            description | String | optional,
            host_os_tags | Array String | optional,
            inputs | refs."definitions.EnvModel" | Array Dyn | optional,
            is_always_run | Bool | optional,
            is_requires_admin_user | Bool | optional,
            is_skippable | Bool | optional,
            meta
              | js2n.record.Record
                {
                  additional = 'Some Dyn,
                  patterns =
                    {
                        ".*" =
                          std.contract.any_of
                              [
                                js2n.Null,
                                Bool,
                                Number,
                                String,
                                {  .. },
                                Array Dyn
                              ],
                      },
                  properties = {},
                  required = {},
                }
              | optional,
            no_output_timeout | std.number.Integer | optional,
            outputs | refs."definitions.EnvModel" | Array Dyn | optional,
            project_type_tags | Array String | optional,
            published_at | String | optional,
            run_if | String | optional,
            source
              | refs."definitions.StepSourceModel"
              | { _ | Dyn }
              | optional,
            source_code_url | String | optional,
            summary | String | optional,
            support_url | String | optional,
            timeout | std.number.Integer | optional,
            title | String | optional,
            toolkit
              | refs."definitions.StepToolkitModel"
              | { _ | Dyn }
              | optional,
            type_tags | Array String | optional,
            website | String | optional,
          },
      "definitions.StepSourceModel" =
        { commit | String | optional, git | String | optional, },
      "definitions.StepToolkitModel" =
        {
            bash
              | refs."definitions.BashStepToolkitModel"
              | { _ | Dyn }
              | optional,
            go | refs."definitions.GoStepToolkitModel" | { _ | Dyn } | optional,
          },
      "definitions.TagTriggerModel" =
        {
            enabled | Bool | optional,
            name
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [
                      refs."definitions.TriggerMapItemModelRegexCondition",
                      { _ | Dyn }
                    ],
                  String
                ]
              | optional,
            "priority" | refs."definitions.PriorityModel" | Number | optional,
          },
      "definitions.TriggerMapItemModel" =
        {
            changed_files
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [
                      refs."definitions.TriggerMapItemModelRegexCondition",
                      { _ | Dyn }
                    ],
                  String
                ]
              | optional,
            commit_message
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [
                      refs."definitions.TriggerMapItemModelRegexCondition",
                      { _ | Dyn }
                    ],
                  String
                ]
              | optional,
            draft_pull_request_enabled | Bool | optional,
            enabled | Bool | optional,
            is_pull_request_allowed | Bool | optional,
            pattern | String | optional,
            pipeline | String | optional,
            pull_request_comment
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [
                      refs."definitions.TriggerMapItemModelRegexCondition",
                      { _ | Dyn }
                    ],
                  String
                ]
              | optional,
            pull_request_label
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [
                      refs."definitions.TriggerMapItemModelRegexCondition",
                      { _ | Dyn }
                    ],
                  String
                ]
              | optional,
            pull_request_source_branch
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [
                      refs."definitions.TriggerMapItemModelRegexCondition",
                      { _ | Dyn }
                    ],
                  String
                ]
              | optional,
            pull_request_target_branch
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [
                      refs."definitions.TriggerMapItemModelRegexCondition",
                      { _ | Dyn }
                    ],
                  String
                ]
              | optional,
            push_branch
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [
                      refs."definitions.TriggerMapItemModelRegexCondition",
                      { _ | Dyn }
                    ],
                  String
                ]
              | optional,
            tag
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [
                      refs."definitions.TriggerMapItemModelRegexCondition",
                      { _ | Dyn }
                    ],
                  String
                ]
              | optional,
            type
              | std.enum.TagOrString
              | [| 'tag, 'pull_request, 'push |]
              | optional,
            workflow | String | optional,
          },
      "definitions.TriggerMapItemModelRegexCondition" =
        { regex | String | optional, },
      "definitions.TriggersModel" =
        {
            enabled | Bool | optional,
            pull_request
              | Array (
                std.contract.Sequence
                  [ refs."definitions.PullrequestTriggerModel", { _ | Dyn } ]
              )
              | optional,
            push
              | Array (
                std.contract.Sequence
                  [ refs."definitions.PushTriggerModel", { _ | Dyn } ]
              )
              | optional,
            tag
              | Array (
                std.contract.Sequence
                  [ refs."definitions.TagTriggerModel", { _ | Dyn } ]
              )
              | optional,
          },
      "definitions.WithModel" =
        {
            container | String | optional,
            services | Array String | optional,
            steps
              | Array (
                std.contract.Sequence
                  [
                    {
                      _ | std.contract.Sequence
                        [ refs."definitions.StepModel", { _ | Dyn } ]
                    },
                    js2n.record.FieldsMatch "^(?!bundle::)(?!with$).*"
                  ]
              ),
          },
      "definitions.WorkflowModel" =
        {
            after_run | Array String | optional,
            before_run | Array String | optional,
            description | String | optional,
            envs | refs."definitions.EnvModel" | Array Dyn | optional,
            meta
              | js2n.record.Record
                {
                  additional = 'Some Dyn,
                  patterns =
                    {
                        ".*" =
                          std.contract.any_of
                              [
                                js2n.Null,
                                Bool,
                                Number,
                                String,
                                {  .. },
                                Array Dyn
                              ],
                      },
                  properties = {},
                  required = {},
                }
              | optional,
            "priority" | refs."definitions.PriorityModel" | Number | optional,
            status_report_name
              | refs."definitions.StatusReportNameModel"
              | String
              | optional,
            steps
              | Array (
                js2n.record.Record
                  {
                    additional = 'None,
                    patterns =
                      {
                          "^(?!bundle::)(?!with$).*" =
                            std.contract.Sequence
                                [ refs."definitions.StepModel", { _ | Dyn } ],
                          "^bundle::.+" =
                            std.contract.Sequence
                                [
                                  refs."definitions.StepBundleOverrideModel",
                                  { _ | Dyn }
                                ],
                          "^with$" =
                            std.contract.Sequence
                                [ refs."definitions.WithModel", { _ | Dyn } ],
                        },
                    properties = {},
                    required = {},
                  }
              )
              | optional,
            summary | String | optional,
            title | String | optional,
            triggers
              | refs."definitions.TriggersModel"
              | { _ | Dyn }
              | optional,
          },
      "definitions.WorkflowStageConfigModel" = { run_if | String | optional, },
    }
    in
  std.contract.Sequence [ refs."definitions.BitriseDataModel", { _ | Dyn } ]