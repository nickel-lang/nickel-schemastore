# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.ActivitiesObject" =
        {
            deploy | refs."definitions.ActivityObject" | { _ | Dyn } | optional,
            destroy
              | refs."definitions.ActivityObject"
              | { _ | Dyn }
              | optional,
          },
      "definitions.ActivityObject" =
        {
            commands
              | Array (
                std.contract.any_of
                  [
                    std.contract.Sequence
                      [ refs."definitions.CommandObject", { _ | Dyn } ],
                    String
                  ]
              )
              | optional,
          },
      "definitions.AnsibleOnDestroy" =
        {
            command-arguments | String | optional,
            inputs
              | Array (
                std.contract.Sequence
                  [ refs."definitions.GrainInput", { _ | Dyn } ]
              )
              | optional,
            inventory-file | { _ | {  .. } } | optional,
            scripts | refs."definitions.GrainScripts" | { _ | Dyn } | optional,
            source
              | refs."definitions.GrainSpecSourceObject"
              | { _ | Dyn }
              | optional,
          },
      "definitions.Backend" =
        {
            base-address | String | optional,
            bucket | String | optional,
            container-name | String | optional,
            key-prefix | String | optional,
            region | String | optional,
            storage-account-name | String | optional,
            type | String | optional,
            ..
          },
      "definitions.BlueprintEnvReferenceObject" =
        { labels-selector | String | optional, },
      "definitions.BlueprintInputObject" =
        {
            allowed-formats | Array Dyn | optional,
            allowed-values
              | Array (std.contract.any_of [ Bool, std.number.Integer, String ])
              | optional,
            "default"
              | std.contract.any_of [ Bool, std.number.Integer, String ]
              | optional,
            depends-on | js2n.string.Matches "^((.+)(,\\s*)?)+[^,]$" | optional,
            description
              | String
              | doc "In the relevant UI field, enter a description to be displayed to the user."
              | optional,
            max-files | std.number.Integer | optional,
            max-size-MB | Number | optional,
            overrides
              | Array
                {
                  blob_name | String | optional,
                  bucket_name | String | optional,
                  container_name | String | optional,
                  display_json_path | String | optional,
                  filter | String | optional,
                  json_path | String | optional,
                  object_key | String | optional,
                  path | String | optional,
                  path_prefix | String | optional,
                  query | String | optional,
                  storage_account_name | String | optional,
                }
              | optional,
            parameter-name | String | optional,
            pattern | String | optional,
            sensitive | Bool | optional,
            source-name | String | optional,
            style | std.enum.TagOrString | [| 'text, 'radio |] | optional,
            type
              | std.enum.TagOrString
              | [|
                'file,
                'input-source,
                'env,
                'parameter,
                'credentials,
                'agent,
                'execution-host,
                'string
              |]
              | optional,
            validation-description | String | optional,
          },
      "definitions.BlueprintOutputObject" =
        {
            kind | std.enum.TagOrString | [| 'link, 'regular |] | optional,
            quick | Bool | optional,
            value | String,
          },
      "definitions.BlueprintResourceRequirementObject" =
        { selector | refs."definitions.ResourceSelectorObject" | { _ | Dyn }, },
      "definitions.CommandObject" =
        {
            command | String | optional,
            name | String | optional,
            outputs | Array Dyn | optional,
          },
      "definitions.EnvironementVariable" =
        std.contract.Sequence
            [
              { _ | std.contract.any_of [ Bool, Number, String ] },
              js2n.record.FieldsMatch "^[A-Za-z0-9_]+"
            ],
      "definitions.EnvironmentLabel" =
        std.contract.Sequence
            [
              { _ | std.contract.any_of [ js2n.Null, Bool, Number, String ] },
              js2n.record.FieldsMatch "^{?[a-zA-Z0-9-_.@#\\s]+}?$"
            ],
      "definitions.GrainCommand" = String,
      "definitions.GrainEnvReference" =
        std.contract.Sequence
            [ { _ | String }, js2n.record.FieldsMatch "^[\\w\\-\\.]+$" ],
      "definitions.GrainInput" =
        std.contract.Sequence
            [
              { _ | std.contract.any_of [ Bool, Number, String ] },
              js2n.record.FieldsMatch "^[\\w\\-\\.]+$"
            ],
      "definitions.GrainLabels" =
        {
            on-failure
              | Array (
                std.contract.any_of
                  [
                    std.contract.Sequence
                      [ refs."definitions.EnvironmentLabel", { _ | Dyn } ],
                    js2n.string.Matches "^{?[a-zA-Z0-9-_.@#\\s]+}?$"
                  ]
              )
              | optional,
            on-success
              | Array (
                std.contract.any_of
                  [
                    std.contract.Sequence
                      [ refs."definitions.EnvironmentLabel", { _ | Dyn } ],
                    js2n.string.Matches "^{?[a-zA-Z0-9-_.@#\\s]+}?$"
                  ]
              )
              | optional,
          },
      "definitions.GrainObject" =
        {
            depends-on | js2n.string.Matches "^((.+)(,\\s*)?)+[^,]$" | optional,
            env-labels
              | refs."definitions.GrainLabels"
              | { _ | Dyn }
              | optional,
            kind
              | std.enum.TagOrString
              | [|
                'aws-cdk,
                'terragrunt,
                'opentofu,
                'argocd,
                'cloudshell,
                'shell,
                'kubernetes,
                'cloudformation,
                'arm,
                'blueprint,
                'ansible,
                'helm,
                'terraform
              |],
            spec | refs."definitions.GrainSpecObject" | { _ | Dyn },
            tf-version | String | optional,
          },
      "definitions.GrainOutput" = String,
      "definitions.GrainScripts" =
        {
            post-aws-cdk-deploy
              | refs."definitions.ScriptObject"
              | { _ | Dyn }
              | optional,
            post-helm-install
              | refs."definitions.ScriptOutputsObject"
              | { _ | Dyn }
              | optional,
            post-kubernetes-install
              | refs."definitions.ScriptOutputsObject"
              | { _ | Dyn }
              | optional,
            post-tf-plan
              | refs."definitions.ScriptObject"
              | { _ | Dyn }
              | optional,
            pre-ansible-run
              | refs."definitions.ScriptOutputsObject"
              | { _ | Dyn }
              | optional,
            pre-aws-cdk-deploy
              | refs."definitions.ScriptObject"
              | { _ | Dyn }
              | optional,
            pre-tf-destroy
              | refs."definitions.ScriptObject"
              | { _ | Dyn }
              | optional,
            pre-tf-init
              | refs."definitions.ScriptObject"
              | { _ | Dyn }
              | optional,
          },
      "definitions.GrainSpecHostObject" =
        {
            image | String | optional,
            isolated | Bool | optional,
            kubernetes
              | refs."definitions.KubernetesObject"
              | { _ | Dyn }
              | optional,
            name | String | optional,
            region | String | optional,
            runner-namespace | String | optional,
            service-account | String | optional,
            storage-size | std.number.Integer | optional,
            use-storage | Bool | optional,
          },
      "definitions.GrainSpecObject" =
        {
            activities
              | refs."definitions.ActivitiesObject"
              | { _ | Dyn }
              | optional,
            agent
              | refs."definitions.GrainSpecHostObject"
              | { _ | Dyn }
              | optional,
            application | String | optional,
            application-namespace | String | optional,
            authentication | Array String | optional,
            auto-approve | Bool | optional,
            auto-retry | Bool | optional,
            backend | refs."definitions.Backend" | { _ | Dyn } | optional,
            binary | String | optional,
            built-in | Bool | optional,
            command-arguments | String | optional,
            commands
              | Array (
                std.contract.Sequence
                  [ refs."definitions.GrainCommand", String ]
              )
              | optional,
            deployment-engine | String | optional,
            env-vars
              | Array (
                std.contract.Sequence
                  [ refs."definitions.EnvironementVariable", { _ | Dyn } ]
              )
              | optional,
            env_references
              | Array (
                std.contract.Sequence
                  [ refs."definitions.GrainEnvReference", { _ | Dyn } ]
              )
              | optional,
            files | refs."definitions.ShellGrainFiles" | Array Dyn | optional,
            host
              | refs."definitions.GrainSpecHostObject"
              | { _ | Dyn }
              | optional,
            inputs
              | Array (
                std.contract.Sequence
                  [ refs."definitions.GrainInput", { _ | Dyn } ]
              )
              | optional,
            inventory-file | { _ | {  .. } } | optional,
            mode | std.enum.TagOrString | [| 'data |] | optional,
            namespace | String | optional,
            on-destroy
              | refs."definitions.AnsibleOnDestroy"
              | { _ | Dyn }
              | optional,
            outputs
              | Array (
                std.contract.Sequence [ refs."definitions.GrainOutput", String ]
              )
              | optional,
            provider-overrides | Array {  .. } | optional,
            region | String | optional,
            release | String | optional,
            scripts | refs."definitions.GrainScripts" | { _ | Dyn } | optional,
            source
              | refs."definitions.GrainSpecSourceObject"
              | { _ | Dyn }
              | optional,
            sources
              | refs."definitions.GrainSpecSources"
              | Array Dyn
              | optional,
            tags | refs."definitions.GrainTag" | { _ | Dyn } | optional,
            target-namespace | String | optional,
            template-storage
              | refs."definitions.TemplateStorage"
              | { _ | Dyn }
              | optional,
            tfvars-files
              | Array
                {
                  source
                    | refs."definitions.TfVarsFileSourceObject"
                    | { _ | Dyn }
                    | optional,
                  ..
                }
              | optional,
            values-files
              | Array
                {
                  source
                    | refs."definitions.ScriptSource"
                    | { _ | Dyn }
                    | optional,
                  ..
                }
              | optional,
            version | String | optional,
            workspace-directories
              | Array
                {
                  source
                    | refs."definitions.ScriptSource"
                    | { _ | Dyn }
                    | optional,
                  ..
                }
              | optional,
          },
      "definitions.GrainSpecSourceObject" =
        {
            branch | String | optional,
            commit | String | optional,
            path | String,
            resource-type | String | optional,
            store | String | optional,
            tag | String | optional,
          },
      "definitions.GrainSpecSources" =
        Array (
            std.contract.Sequence
              [ refs."definitions.GrainSpecSourceObject", { _ | Dyn } ]
          ),
      "definitions.GrainTag" =
        {
            auto-tag | Bool | optional,
            disable-tags-for | Array String | optional,
            ..
          },
      "definitions.InstructionsSourceObject" =
        { path | String, store | String, },
      "definitions.KubernetesObject" =
        {
            node-selector
              | Array (
                std.contract.Sequence
                  [ refs."definitions.NodeSelector", { _ | Dyn } ]
              )
              | optional,
            permissions
              | {
                destination-context-name | String | optional,
                secret-name | String | optional,
                secret-namespace | String | optional,
              }
              | optional,
            pod-annotations
              | Array (
                std.contract.Sequence
                  [ refs."definitions.PodAnnotations", { _ | Dyn } ]
              )
              | optional,
            pod-labels
              | Array (
                std.contract.Sequence
                  [ refs."definitions.PodLabels", { _ | Dyn } ]
              )
              | optional,
          },
      "definitions.LayoutSourceObject" = { path | String, store | String, },
      "definitions.NodeSelector" = {  .. },
      "definitions.PodAnnotations" = {  .. },
      "definitions.PodLabels" = {  .. },
      "definitions.ResourceSelectorObject" =
        {
            quantity
              | std.contract.any_of [ std.number.Integer, String ]
              | optional,
            type | String,
          },
      "definitions.ScriptObject" =
        {
            arguments | String | optional,
            source | refs."definitions.ScriptSource" | { _ | Dyn } | optional,
            ..
          },
      "definitions.ScriptOutputsObject" =
        {
            arguments | String | optional,
            outputs | Array String | optional,
            source | refs."definitions.ScriptSource" | { _ | Dyn } | optional,
            ..
          },
      "definitions.ScriptSource" =
        { path | String | optional, store | String | optional, .. },
      "definitions.ShellGrainFiles" =
        Array
            {
              branch | String | optional,
              commit | String | optional,
              name | String | optional,
              path | String | optional,
              source | String | optional,
            },
      "definitions.TemplateStorage" =
        {
            bucket-name | String,
            key-prefix | String | optional,
            region | String,
            ..
          },
      "definitions.TfVarsFileSourceObject" =
        {
            branch | String | optional,
            commit | String | optional,
            path | String,
            store | String | optional,
            tag | String | optional,
          },
      "definitions.Torque-Blueprint-Spec2" =
        {
            description | String | optional,
            env_references
              | js2n.record.Record
                {
                  additional = 'Some Dyn,
                  patterns =
                    {
                        "^[a-zA-Z0-9-_ ().]{3,45}$" =
                          js2n.Nullable
                              (std.contract.Sequence
                                [
                                  refs."definitions.BlueprintEnvReferenceObject",
                                  { _ | Dyn }
                                ]),
                      },
                  properties = {},
                  required = {},
                }
              | optional,
            grains
              | js2n.record.Record
                {
                  additional = 'Some Dyn,
                  patterns =
                    {
                        "^[a-zA-Z0-9-_ ]{3,45}$" =
                          js2n.Nullable
                              (std.contract.Sequence
                                [
                                  refs."definitions.GrainObject",
                                  { _ | Dyn }
                                ]),
                      },
                  properties = {},
                  required = {},
                }
              | optional,
            inputs
              | js2n.record.Record
                {
                  additional = 'Some Dyn,
                  patterns =
                    {
                        "^[a-zA-Z0-9-_ ().]{3,45}$" =
                          js2n.Nullable
                              (std.contract.Sequence
                                [
                                  refs."definitions.BlueprintInputObject",
                                  { _ | Dyn }
                                ]),
                      },
                  properties = {},
                  required = {},
                }
              | optional,
            instructions
              | js2n.OneOf
                [
                  std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      js2n.record.Required [ "text" ],
                      Array Dyn
                    ],
                  std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      js2n.record.Required [ "source" ],
                      Array Dyn
                    ]
                ]
              | {
                source
                  | refs."definitions.InstructionsSourceObject"
                  | { _ | Dyn }
                  | optional,
                text | String | optional,
              }
              | optional,
            labels
              | Array (
                std.contract.any_of
                  [
                    std.contract.Sequence
                      [ refs."definitions.EnvironmentLabel", { _ | Dyn } ],
                    js2n.string.Matches "^{?[a-zA-Z0-9-_.@#\\s]+}?$"
                  ]
              )
              | optional,
            layout
              | {
                exclude-from-layout | Array String | optional,
                source | refs."definitions.LayoutSourceObject" | { _ | Dyn },
              }
              | optional,
            outputs
              | js2n.record.Record
                {
                  additional = 'Some Dyn,
                  patterns =
                    {
                        "^[a-zA-Z0-9-_ ().]{3,45}$" =
                          js2n.Nullable
                              (std.contract.Sequence
                                [
                                  refs."definitions.BlueprintOutputObject",
                                  { _ | Dyn }
                                ]),
                      },
                  properties = {},
                  required = {},
                }
              | optional,
            resources
              | js2n.record.Record
                {
                  additional = 'Some Dyn,
                  patterns =
                    {
                        "^[a-zA-Z0-9-_ ().]{3,45}$" =
                          std.contract.Sequence
                              [
                                refs."definitions.BlueprintResourceRequirementObject",
                                { _ | Dyn }
                              ],
                      },
                  properties = {},
                  required = {},
                }
              | optional,
            spec_version | std.number.Integer | js2n.Enum [ 2 ],
            workflow
              | {
                label-selector | String | optional,
                labels-selector | String | optional,
                resource-types | String | optional,
                scope | String | optional,
                triggers
                  | Array (
                    std.contract.Sequence
                      [ refs."definitions.WorkflowTrigger", { _ | Dyn } ]
                  )
                  | optional,
              }
              | optional,
          },
      "definitions.WorkflowTrigger" =
        {
            cron | String | optional,
            event
              | js2n.array.UniqueItems
              | js2n.array.Contains String
              | Array (
                std.contract.Sequence
                  [
                    std.enum.TagOrString,
                    [|
                      '"parameters modified",
                      '"environment idle",
                      '"collaborator added",
                      '"environment extended",
                      '"environment force ended",
                      '"environment ending failed",
                      '"environment active with error",
                      '"environment launched",
                      '"environment ended",
                      '"approval request cancelled",
                      '"approval request denied",
                      '"approval request approved",
                      '"updates detected",
                      '"drift detected",
                      '"Parameters Modified",
                      '"Environment Idle",
                      '"Collaborator Added",
                      '"Environment Extended",
                      '"Environment Force Ended",
                      '"Environment Ending Failed",
                      '"Environment Active With Error",
                      '"Environment Launched",
                      '"Environment Ended",
                      '"Approval Request Cancelled",
                      '"Approval Request Denied",
                      '"Approval Request Approved",
                      '"Updates Detected",
                      '"Drift Detected"
                    |]
                  ]
              )
              | optional,
            groups | js2n.array.UniqueItems | Array String | optional,
            overridable | Bool | optional,
            type
              | std.enum.TagOrString
              | [| 'cron, 'event, 'manual |]
              | optional,
          },
    }
    in
  refs."definitions.Torque-Blueprint-Spec2"