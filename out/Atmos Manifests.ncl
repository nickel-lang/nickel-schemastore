# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.atlantis" =
        std.contract.any_of
            [
              js2n.string.Matches "^!include",
              {
                config_template
                  | std.contract.any_of
                    [ js2n.string.Matches "^!include", {  .. } ]
                  | optional,
                config_template_name | String | optional,
                project_template
                  | std.contract.any_of
                    [ js2n.string.Matches "^!include", {  .. } ]
                  | optional,
                project_template_name | String | optional,
                workflow_templates
                  | std.contract.any_of
                    [ js2n.string.Matches "^!include", {  .. } ]
                  | optional,
              }
            ],
      "definitions.backend" = refs."definitions.backend_manifest",
      "definitions.backend_manifest" =
        std.contract.any_of
            [
              js2n.string.Matches "^!include",
              {
                azurerm
                  | std.contract.any_of
                    [ js2n.string.Matches "^!include", {  .. } ]
                  | optional,
                cloud
                  | std.contract.any_of
                    [ js2n.string.Matches "^!include", {  .. } ]
                  | optional,
                gcs
                  | std.contract.any_of
                    [ js2n.string.Matches "^!include", {  .. } ]
                  | optional,
                local
                  | std.contract.any_of
                    [ js2n.string.Matches "^!include", {  .. } ]
                  | optional,
                remote
                  | std.contract.any_of
                    [ js2n.string.Matches "^!include", {  .. } ]
                  | optional,
                s3
                  | std.contract.any_of
                    [ js2n.string.Matches "^!include", {  .. } ]
                  | optional,
                static
                  | std.contract.any_of
                    [ js2n.string.Matches "^!include", {  .. } ]
                  | optional,
                vault
                  | std.contract.any_of
                    [ js2n.string.Matches "^!include", {  .. } ]
                  | optional,
              }
            ],
      "definitions.backend_type" =
        js2n.OneOf
            [
              js2n.string.Matches "^!include",
              std.contract.Sequence
                [
                  std.enum.TagOrString,
                  [|
                    'cloud,
                    'gcs,
                    'azurerm,
                    'static,
                    'vault,
                    'remote,
                    's3,
                    'local
                  |]
                ]
            ],
      "definitions.command" = String,
      "definitions.component" = String,
      "definitions.components" =
        std.contract.any_of
            [
              js2n.string.Matches "^!include",
              {
                helmfile | refs."definitions.helmfile_components" | optional,
                terraform | refs."definitions.terraform_components" | optional,
              }
            ],
      "definitions.depends_on" =
        std.contract.any_of
            [
              js2n.string.Matches "^!include",
              std.contract.Sequence
                [
                  { _ | refs."definitions.depends_on_manifest" },
                  js2n.record.FieldsMatch "^[/a-zA-Z0-9-_{}. ]+$"
                ]
            ],
      "definitions.depends_on_manifest" =
        std.contract.any_of
            [
              js2n.string.Matches "^!include",
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
                          js2n.record.Required [ "component" ],
                          Array Dyn
                        ],
                      std.contract.any_of
                        [
                          js2n.Null,
                          Bool,
                          Number,
                          String,
                          js2n.record.Required [ "file" ],
                          Array Dyn
                        ],
                      std.contract.any_of
                        [
                          js2n.Null,
                          Bool,
                          Number,
                          String,
                          js2n.record.Required [ "folder" ],
                          Array Dyn
                        ]
                    ],
                  {
                    component | String | optional,
                    environment | String | optional,
                    file | String | optional,
                    folder | String | optional,
                    namespace | String | optional,
                    stage | String | optional,
                    tenant | String | optional,
                  }
                ]
            ],
      "definitions.env" =
        std.contract.any_of [ js2n.string.Matches "^!include", {  .. } ],
      "definitions.helmfile" =
        std.contract.any_of
            [
              js2n.string.Matches "^!include",
              {
                command | refs."definitions.command" | String | optional,
                env | refs."definitions.env" | optional,
                overrides | refs."definitions.overrides" | optional,
                settings | refs."definitions.settings" | optional,
                vars | refs."definitions.vars" | optional,
              }
            ],
      "definitions.helmfile_component_manifest" =
        std.contract.any_of
            [
              js2n.string.Matches "^!include",
              {
                command | refs."definitions.command" | String | optional,
                component | refs."definitions.component" | String | optional,
                env | refs."definitions.env" | optional,
                metadata | refs."definitions.metadata" | optional,
                settings | refs."definitions.settings" | optional,
                vars | refs."definitions.vars" | optional,
              }
            ],
      "definitions.helmfile_components" =
        std.contract.any_of
            [
              js2n.string.Matches "^!include",
              std.contract.Sequence
                [
                  { _ | refs."definitions.helmfile_component_manifest" },
                  js2n.record.FieldsMatch "^[/a-zA-Z0-9-_{}. ]+$"
                ]
            ],
      "definitions.hooks" =
        std.contract.any_of [ js2n.string.Matches "^!include", {  .. } ],
      "definitions.import" =
        std.contract.any_of
            [
              js2n.string.Matches "^!include",
              Array (
                std.contract.any_of
                  [
                    String,
                    {
                      context | {  .. } | optional,
                      ignore_missing_template_values | Bool | optional,
                      path | String,
                      skip_if_missing | Bool | optional,
                      skip_templates_processing | Bool | optional,
                    }
                  ]
              )
            ],
      "definitions.metadata" =
        std.contract.any_of
            [
              js2n.string.Matches "^!include",
              {
                component
                  | String
                  | doc "Terraform/OpenTofu/Helmfile component"
                  | optional,
                custom
                  | std.contract.any_of
                    [ js2n.string.Matches "^!include", {  .. } ]
                  | optional,
                enabled
                  | Bool
                  | doc "Flag to enable or disable the component"
                  | optional,
                inherits
                  | std.contract.any_of
                    [
                      js2n.string.Matches "^!include",
                      std.contract.Sequence
                        [ js2n.array.UniqueItems, Array String ]
                    ]
                  | optional,
                locked
                  | Bool
                  | doc "Flag to lock the component and prevent modifications while allowing read operations"
                  | optional,
                terraform_workspace
                  | String
                  | doc "Terraform workspace"
                  | optional,
                terraform_workspace_pattern
                  | String
                  | doc "Terraform workspace pattern"
                  | optional,
                type | std.enum.TagOrString | [| 'real, 'abstract |] | optional,
              }
            ],
      "definitions.overrides" =
        std.contract.any_of
            [
              js2n.string.Matches "^!include",
              {
                command | refs."definitions.command" | String | optional,
                env | refs."definitions.env" | optional,
                providers | refs."definitions.providers" | optional,
                settings | refs."definitions.settings" | optional,
                vars | refs."definitions.vars" | optional,
              }
            ],
      "definitions.providers" =
        std.contract.any_of [ js2n.string.Matches "^!include", {  .. } ],
      "definitions.remote_state_backend" = refs."definitions.backend_manifest",
      "definitions.remote_state_backend_type" =
        js2n.OneOf
            [
              js2n.string.Matches "^!include",
              std.contract.Sequence
                [
                  std.enum.TagOrString,
                  [|
                    'cloud,
                    'gcs,
                    'azurerm,
                    'static,
                    'vault,
                    'remote,
                    's3,
                    'local
                  |]
                ]
            ],
      "definitions.settings" =
        std.contract.any_of
            [
              js2n.string.Matches "^!include",
              {
                atlantis | refs."definitions.atlantis" | optional,
                depends_on | refs."definitions.depends_on" | optional,
                spacelift | refs."definitions.spacelift" | optional,
                templates | refs."definitions.templates" | optional,
                validation | refs."definitions.validation" | optional,
                ..
              }
            ],
      "definitions.spacelift" =
        std.contract.any_of
            [
              js2n.string.Matches "^!include",
              {
                autodeploy | Bool | optional,
                protect_from_deletion | Bool | optional,
                stack_destructor_enabled | Bool | optional,
                terraform_version
                  | std.contract.any_of [ Number, String ]
                  | optional,
                workspace_enabled | Bool | optional,
                ..
              }
            ],
      "definitions.templates" =
        std.contract.any_of [ js2n.string.Matches "^!include", {  .. } ],
      "definitions.terraform" =
        std.contract.any_of
            [
              js2n.string.Matches "^!include",
              {
                backend | refs."definitions.backend" | optional,
                backend_type | refs."definitions.backend_type" | optional,
                command | refs."definitions.command" | String | optional,
                env | refs."definitions.env" | optional,
                hooks | refs."definitions.hooks" | optional,
                overrides | refs."definitions.overrides" | optional,
                providers | refs."definitions.providers" | optional,
                remote_state_backend
                  | refs."definitions.remote_state_backend"
                  | optional,
                remote_state_backend_type
                  | refs."definitions.remote_state_backend_type"
                  | optional,
                settings | refs."definitions.settings" | optional,
                vars | refs."definitions.vars" | optional,
              }
            ],
      "definitions.terraform_component_manifest" =
        std.contract.any_of
            [
              js2n.string.Matches "^!include",
              {
                backend | refs."definitions.backend" | optional,
                backend_type | refs."definitions.backend_type" | optional,
                command | refs."definitions.command" | String | optional,
                component | refs."definitions.component" | String | optional,
                env | refs."definitions.env" | optional,
                hooks | refs."definitions.hooks" | optional,
                metadata | refs."definitions.metadata" | optional,
                providers | refs."definitions.providers" | optional,
                remote_state_backend
                  | refs."definitions.remote_state_backend"
                  | optional,
                remote_state_backend_type
                  | refs."definitions.remote_state_backend_type"
                  | optional,
                settings | refs."definitions.settings" | optional,
                vars | refs."definitions.vars" | optional,
              }
            ],
      "definitions.terraform_components" =
        std.contract.any_of
            [
              js2n.string.Matches "^!include",
              std.contract.Sequence
                [
                  { _ | refs."definitions.terraform_component_manifest" },
                  js2n.record.FieldsMatch "^[/a-zA-Z0-9-_{}. ]+$"
                ]
            ],
      "definitions.validation" =
        std.contract.any_of
            [
              js2n.string.Matches "^!include",
              std.contract.Sequence
                [
                  { _ | refs."definitions.validation_manifest" },
                  js2n.record.FieldsMatch "^[/a-zA-Z0-9-_{}. ]+$"
                ]
            ],
      "definitions.validation_manifest" =
        std.contract.any_of
            [
              js2n.string.Matches "^!include",
              {
                description | String | optional,
                disabled | Bool | optional,
                module_paths
                  | js2n.array.UniqueItems
                  | Array String
                  | doc "List of paths to validation modules"
                  | optional,
                schema_path | String,
                schema_type | std.enum.TagOrString | [| 'opa, 'jsonschema |],
                timeout | std.number.Integer | js2n.number.Minimum 0 | optional,
              }
            ],
      "definitions.vars" =
        std.contract.any_of [ js2n.string.Matches "^!include", {  .. } ],
      "definitions.workflow_manifest" =
        std.contract.any_of
            [
              js2n.string.Matches "^!include",
              {
                description | String | optional,
                stack | String | optional,
                steps
                  | std.contract.any_of
                    [
                      js2n.string.Matches "^!include",
                      Array
                        {
                          command | String,
                          name | String | optional,
                          stack | String | optional,
                          type | String | optional,
                        }
                    ],
              }
            ],
      "definitions.workflows" =
        std.contract.any_of
            [
              js2n.string.Matches "^!include",
              js2n.record.Record
                {
                  additional = 'None,
                  patterns =
                    {
                        "^[/a-zA-Z0-9-_{}. ]+$" =
                          refs."definitions.workflow_manifest",
                      },
                  properties = { description = String, name = String, },
                  required = {},
                }
            ],
    }
    in
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
                js2n.record.Required [ "workflows" ],
                Array Dyn
              ],
            std.contract.any_of
              [
                std.contract.Sequence
                  [
                    std.contract.any_of
                      [
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        { _ | js2n.Always },
                        Array Dyn
                      ],
                    std.contract.not
                      (std.contract.any_of
                        [
                          js2n.Null,
                          Bool,
                          Number,
                          String,
                          js2n.record.Required [ "workflows" ],
                          Array Dyn
                        ])
                  ],
                js2n.Null,
                Bool,
                Number,
                String,
                js2n.record.Required [ "import" ],
                Array Dyn,
                js2n.Null,
                Bool,
                Number,
                String,
                js2n.record.Required [ "terraform" ],
                Array Dyn,
                js2n.Null,
                Bool,
                Number,
                String,
                js2n.record.Required [ "helmfile" ],
                Array Dyn,
                js2n.Null,
                Bool,
                Number,
                String,
                js2n.record.Required [ "vars" ],
                Array Dyn,
                js2n.Null,
                Bool,
                Number,
                String,
                js2n.record.Required [ "hooks" ],
                Array Dyn,
                js2n.Null,
                Bool,
                Number,
                String,
                js2n.record.Required [ "env" ],
                Array Dyn,
                js2n.Null,
                Bool,
                Number,
                String,
                js2n.record.Required [ "settings" ],
                Array Dyn,
                js2n.Null,
                Bool,
                Number,
                String,
                js2n.record.Required [ "components" ],
                Array Dyn,
                js2n.Null,
                Bool,
                Number,
                String,
                js2n.record.Required [ "overrides" ],
                Array Dyn
              ]
          ],
        {
          components | refs."definitions.components" | optional,
          env | refs."definitions.env" | optional,
          helmfile | refs."definitions.helmfile" | optional,
          hooks | refs."definitions.hooks" | optional,
          "import" | refs."definitions.import" | optional,
          overrides | refs."definitions.overrides" | optional,
          settings | refs."definitions.settings" | optional,
          terraform | refs."definitions.terraform" | optional,
          vars | refs."definitions.vars" | optional,
          workflows | refs."definitions.workflows" | optional,
          ..
        }
      ]