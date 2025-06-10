# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.clone" =
        std.contract.any_of
            [
              {
                git
                  | {
                    image | refs."definitions.step_image" | String | optional,
                    settings
                      | refs."definitions.clone_settings"
                      | { _ | Dyn }
                      | optional,
                    ..
                  }
                  | optional,
              },
              Array refs."definitions.step"
            ],
      "definitions.clone_settings" =
        js2n.record.Record
            {
              additional =
                'Some
                    (std.contract.any_of
                      [ Bool, Number, String, { _ | Dyn }, Array Dyn ]),
              patterns = {},
              properties =
                {
                    depth = Number,
                    lfs = Bool,
                    partial = Bool,
                    recursive = Bool,
                    tags = Bool,
                  },
              required = {},
            },
      "definitions.commands_step" =
        std.contract.Sequence
            [
              js2n.IfThenElse
                (std.contract.any_of
                  [
                    js2n.Null,
                    Bool,
                    Number,
                    String,
                    js2n.record.Record
                      {
                        additional = 'Some Dyn,
                        patterns = {},
                        properties = { detach = js2n.Const true, },
                        required = {},
                      },
                    Array Dyn
                  ]) js2n.Always
                (std.contract.any_of
                  [
                    js2n.Null,
                    Bool,
                    Number,
                    String,
                    js2n.record.Required [ "commands" ],
                    Array Dyn,
                    js2n.Null,
                    Bool,
                    Number,
                    String,
                    js2n.record.Required [ "entrypoint" ],
                    Array Dyn
                  ]),
              {
                backend_options
                  | refs."definitions.step_backend_options"
                  | { _ | Dyn }
                  | optional,
                commands | refs."definitions.step_commands" | optional,
                depends_on
                  | refs."definitions.string_or_string_slice"
                  | doc "Execute a step after another step has finished."
                  | optional,
                detach
                  | Bool
                  | doc "Detach a step to run in background until pipeline finishes. Read more: https://woodpecker-ci.org/docs/usage/services#detachment"
                  | optional,
                directory
                  | refs."definitions.step_directory"
                  | String
                  | optional,
                dns
                  | refs."definitions.string_or_string_slice"
                  | doc "Change DNS server for step. Only allowed if 'Trusted Network' option is enabled in repo settings by an admin. Read more: https://woodpecker-ci.org/docs/usage/workflow-syntax#dns"
                  | optional,
                dns_search
                  | refs."definitions.string_or_string_slice"
                  | doc "Change DNS lookup domain for step. Only allowed if 'Trusted Network' option is enabled in repo settings by an admin. Read more: https://woodpecker-ci.org/docs/usage/workflow-syntax#dns"
                  | optional,
                entrypoint
                  | refs."definitions.string_or_string_slice"
                  | doc "Defines container entrypoint."
                  | optional,
                environment
                  | refs."definitions.step_environment"
                  | { _ | Dyn }
                  | optional,
                failure
                  | std.enum.TagOrString
                  | [| 'ignore, 'fail |]
                  | doc "How to handle the failure of this step. Read more: https://woodpecker-ci.org/docs/usage/workflow-syntax#failure"
                  | optional,
                image | refs."definitions.step_image" | String,
                name
                  | String
                  | doc "The name of the step. Can be used if using the array style steps list."
                  | optional,
                privileged
                  | refs."definitions.step_privileged"
                  | Bool
                  | optional,
                pull | refs."definitions.step_pull" | Bool | optional,
                volumes
                  | refs."definitions.step_volumes"
                  | Array Dyn
                  | optional,
                when | refs."definitions.step_when" | optional,
              }
            ],
      "definitions.constraint_list" =
        std.contract.any_of
            [
              String,
              Array String,
              {
                exclude
                  | std.contract.any_of [ String, Array String ]
                  | optional,
                include
                  | std.contract.any_of [ String, Array String ]
                  | optional,
              }
            ],
      "definitions.event_constraint_list" =
        std.contract.any_of
            [
              std.contract.Sequence [ refs."definitions.event_enum", String ],
              Array (
                std.contract.Sequence [ refs."definitions.event_enum", String ]
              )
            ],
      "definitions.event_enum" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [|
                'release,
                'manual,
                'cron,
                'deployment,
                'tag,
                'pull_request_closed,
                'pull_request,
                'push
              |]
            ],
      "definitions.labels" =
        { _ | std.contract.any_of [ Bool, Number, String ] },
      "definitions.matrix" =
        js2n.record.Record
            {
              additional =
                'Some (Array (std.contract.any_of [ Bool, Number, String ])),
              patterns = {},
              properties = { include = Array ({ _ | Dyn }), },
              required = {},
            },
      "definitions.plugin_step" =
        {
            backend_options
              | refs."definitions.step_backend_options"
              | { _ | Dyn }
              | optional,
            depends_on
              | refs."definitions.string_or_string_slice"
              | doc "Execute a step after another step has finished."
              | optional,
            detach
              | Bool
              | doc "Detach a step to run in background until pipeline finishes. Read more: https://woodpecker-ci.org/docs/usage/services#detachment"
              | optional,
            directory | refs."definitions.step_directory" | String | optional,
            failure
              | std.enum.TagOrString
              | [| 'ignore, 'fail |]
              | doc "How to handle the failure of this step. Read more: https://woodpecker-ci.org/docs/usage/workflow-syntax#failure"
              | optional,
            image | refs."definitions.step_image" | String,
            name
              | String
              | doc "The name of the step. Can be used if using the array style steps list."
              | optional,
            privileged | refs."definitions.step_privileged" | Bool | optional,
            pull | refs."definitions.step_pull" | Bool | optional,
            settings
              | refs."definitions.step_settings"
              | { _ | Dyn }
              | optional,
            volumes | refs."definitions.step_volumes" | Array Dyn | optional,
            when | refs."definitions.step_when" | optional,
          },
      "definitions.service" =
        std.contract.Sequence
            [
              js2n.record.MinProperties 1,
              {
                backend_options
                  | refs."definitions.step_backend_options"
                  | { _ | Dyn }
                  | optional,
                commands | refs."definitions.step_commands" | optional,
                directory
                  | refs."definitions.step_directory"
                  | String
                  | optional,
                environment
                  | refs."definitions.step_environment"
                  | { _ | Dyn }
                  | optional,
                image | refs."definitions.step_image" | String,
                name
                  | String
                  | doc "The name of the service. Can be used if using the array style services list"
                  | optional,
                ports
                  | Array (std.contract.any_of [ Number, String ])
                  | doc "expose ports to which other steps can connect to"
                  | optional,
                privileged
                  | refs."definitions.step_privileged"
                  | Bool
                  | optional,
                pull | refs."definitions.step_pull" | Bool | optional,
                settings
                  | refs."definitions.step_settings"
                  | { _ | Dyn }
                  | optional,
                volumes
                  | refs."definitions.step_volumes"
                  | Array Dyn
                  | optional,
                when | refs."definitions.step_when" | optional,
              }
            ],
      "definitions.services" =
        std.contract.any_of
            [
              std.contract.Sequence
                [
                  js2n.record.MinProperties 1,
                  {
                    _ | std.contract.Sequence
                      [ refs."definitions.service", { _ | Dyn } ]
                  }
                ],
              Array (
                std.contract.Sequence
                  [ refs."definitions.service", { _ | Dyn } ]
              )
            ],
      "definitions.step" =
        std.contract.any_of
            [
              std.contract.Sequence
                [ refs."definitions.commands_step", { _ | Dyn } ],
              std.contract.Sequence
                [ refs."definitions.plugin_step", { _ | Dyn } ]
            ],
      "definitions.step_backend_kubernetes" =
        {
            annotations
              | { _ | std.contract.any_of [ Bool, Number, String ] }
              | optional,
            labels
              | { _ | std.contract.any_of [ Bool, Number, String ] }
              | optional,
            runtimeClassName
              | String
              | doc "Read more: https://woodpecker-ci.org/docs/administration/configuration/backends/kubernetes#runtimeclassname"
              | optional,
            secrets
              | Array (
                std.contract.Sequence
                  [ refs."definitions.step_kubernetes_secret", { _ | Dyn } ]
              )
              | doc "The secrets section defines a list of references to the native Kubernetes secrets"
              | optional,
            securityContext
              | refs."definitions.step_backend_kubernetes_security_context"
              | { _ | Dyn }
              | optional,
            ..
          },
      "definitions.step_backend_kubernetes_secprofile" =
        { localhostProfile | String | optional, type | String | optional, .. },
      "definitions.step_backend_kubernetes_security_context" =
        {
            apparmorProfile
              | refs."definitions.step_backend_kubernetes_secprofile"
              | { _ | Dyn }
              | optional,
            fsGroup | Number | optional,
            privileged | Bool | optional,
            runAsGroup | Number | optional,
            runAsNonRoot | Bool | optional,
            runAsUser | Number | optional,
            seccompProfile
              | refs."definitions.step_backend_kubernetes_secprofile"
              | { _ | Dyn }
              | optional,
            ..
          },
      "definitions.step_backend_options" =
        {
            kubernetes
              | refs."definitions.step_backend_kubernetes"
              | { _ | Dyn }
              | optional,
            ..
          },
      "definitions.step_commands" =
        std.contract.any_of [ Array String, String ],
      "definitions.step_directory" = String,
      "definitions.step_environment" =
        {
            _ | std.contract.any_of
              [ Bool, Number, String, { _ | Dyn }, Array Dyn ]
          },
      "definitions.step_image" = String,
      "definitions.step_kubernetes_secret" =
        {
            key
              | String
              | doc "The key of the secret to select from."
              | optional,
            name
              | String
              | doc "The name of the secret. Can be used if using the array style secrets list."
              | optional,
            target
              | refs."definitions.step_kubernetes_secret_target"
              | optional,
          },
      "definitions.step_kubernetes_secret_target" =
        js2n.OneOf
            [
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties = { env = String, },
                  required = {},
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties = { file = String, },
                  required = {},
                }
            ],
      "definitions.step_list" =
        std.contract.any_of
            [
              std.contract.Sequence
                [
                  js2n.record.MinProperties 1,
                  { _ | refs."definitions.step" }
                ],
              Array refs."definitions.step"
            ],
      "definitions.step_privileged" = Bool,
      "definitions.step_pull" = Bool,
      "definitions.step_settings" =
        {
            _ | std.contract.any_of
              [ Bool, Number, String, { _ | Dyn }, Array Dyn ]
          },
      "definitions.step_volumes" = Array String,
      "definitions.step_when" =
        std.contract.any_of
            [
              Array (
                std.contract.Sequence
                  [ refs."definitions.step_when_condition", { _ | Dyn } ]
              ),
              std.contract.Sequence
                [ refs."definitions.step_when_condition", { _ | Dyn } ]
            ],
      "definitions.step_when_condition" =
        {
            branch
              | refs."definitions.constraint_list"
              | doc "Read more: https://woodpecker-ci.org/docs/usage/workflow-syntax#branch"
              | optional,
            cron
              | refs."definitions.constraint_list"
              | doc "filter cron by title. Read more: https://woodpecker-ci.org/docs/usage/workflow-syntax#cron"
              | optional,
            evaluate
              | String
              | doc "Execute a step only if the expression evaluates to true. Read more: https://woodpecker-ci.org/docs/usage/workflow-syntax#evaluate"
              | optional,
            event
              | refs."definitions.event_constraint_list"
              | doc "Read more: https://woodpecker-ci.org/docs/usage/workflow-syntax#event"
              | optional,
            instance
              | refs."definitions.constraint_list"
              | doc "Read more: https://woodpecker-ci.org/docs/usage/workflow-syntax#instance"
              | optional,
            matrix
              | { _ | std.contract.any_of [ Bool, Number, String ] }
              | doc "Read more: https://woodpecker-ci.org/docs/usage/matrix-workflows"
              | optional,
            path
              | std.contract.any_of
                [
                  String,
                  Array String,
                  {
                    exclude | Array String | optional,
                    ignore_message | String | optional,
                    include | Array String | optional,
                    on_empty | Bool | optional,
                  }
                ]
              | doc "Execute a step only on commit with certain files added/removed/modified. Read more: https://woodpecker-ci.org/docs/usage/workflow-syntax#path"
              | optional,
            platform
              | refs."definitions.constraint_list"
              | doc "Execute a step only on a specific platform. Read more: https://woodpecker-ci.org/docs/usage/workflow-syntax#platform"
              | optional,
            ref
              | String
              | doc "Read more: https://woodpecker-ci.org/docs/usage/workflow-syntax#ref"
              | optional,
            repo
              | refs."definitions.constraint_list"
              | doc "Execute a step only on a specific repository. Read more: https://woodpecker-ci.org/docs/usage/workflow-syntax#repo"
              | optional,
            status
              | std.contract.any_of
                [
                  Array (
                    std.contract.Sequence
                      [ std.enum.TagOrString, [| 'failure, 'success |] ]
                  ),
                  std.contract.Sequence
                    [ std.enum.TagOrString, [| 'failure, 'success |] ]
                ]
              | doc "Read more: https://woodpecker-ci.org/docs/usage/workflow-syntax#status"
              | optional,
          },
      "definitions.string_or_string_slice" =
        std.contract.any_of [ Array String, String ],
      "definitions.workflow_when" =
        std.contract.any_of
            [
              Array (
                std.contract.Sequence
                  [ refs."definitions.workflow_when_condition", { _ | Dyn } ]
              ),
              std.contract.Sequence
                [ refs."definitions.workflow_when_condition", { _ | Dyn } ]
            ],
      "definitions.workflow_when_condition" =
        {
            branch
              | refs."definitions.constraint_list"
              | doc "Read more: https://woodpecker-ci.org/docs/usage/workflow-syntax#branch"
              | optional,
            cron
              | refs."definitions.constraint_list"
              | doc "filter cron by title. Read more: https://woodpecker-ci.org/docs/usage/workflow-syntax#cron"
              | optional,
            evaluate
              | String
              | doc "Execute a step only if the expression evaluates to true. Read more: https://woodpecker-ci.org/docs/usage/workflow-syntax#evaluate"
              | optional,
            event
              | refs."definitions.event_constraint_list"
              | doc "Read more: https://woodpecker-ci.org/docs/usage/workflow-syntax#event"
              | optional,
            instance
              | refs."definitions.constraint_list"
              | doc "Read more: https://woodpecker-ci.org/docs/usage/workflow-syntax#instance"
              | optional,
            path
              | std.contract.any_of
                [
                  String,
                  Array String,
                  {
                    exclude | Array String | optional,
                    ignore_message | String | optional,
                    include | Array String | optional,
                    on_empty | Bool | optional,
                  }
                ]
              | doc "Execute a step only on commit with certain files added/removed/modified. Read more: https://woodpecker-ci.org/docs/usage/workflow-syntax#path"
              | optional,
            platform
              | refs."definitions.constraint_list"
              | doc "Execute a step only on a specific platform. Read more: https://woodpecker-ci.org/docs/usage/workflow-syntax#platform"
              | optional,
            ref
              | String
              | doc "Read more: https://woodpecker-ci.org/docs/usage/workflow-syntax#ref"
              | optional,
            repo
              | refs."definitions.constraint_list"
              | doc "Execute a step only on a specific repository. Read more: https://woodpecker-ci.org/docs/usage/workflow-syntax#repo"
              | optional,
          },
      "definitions.workspace" = {  .. },
    }
    in
  {
      "$schema" | String | optional,
      clone | refs."definitions.clone" | optional,
      depends_on | Array String | optional,
      labels | refs."definitions.labels" | optional,
      matrix | refs."definitions.matrix" | optional,
      runs_on | Array String | optional,
      services | refs."definitions.services" | optional,
      skip_clone | Bool | optional,
      steps | refs."definitions.step_list",
      variables
        | std.contract.any_of
          [ js2n.Null, Bool, Number, String, { _ | Dyn }, Array Dyn ]
        | doc "Use yaml aliases to define variables. Read more: https://woodpecker-ci.org/docs/usage/advanced-usage"
        | optional,
      when | refs."definitions.workflow_when" | optional,
      workspace | refs."definitions.workspace" | optional,
    }