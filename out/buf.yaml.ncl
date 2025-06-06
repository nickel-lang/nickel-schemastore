# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
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
                  properties = { version = js2n.Const "v1", },
                  required = {},
                },
              Array Dyn
            ])
          (std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                breaking
                  | {
                    except
                      | Array (
                        std.contract.any_of
                          [
                            js2n.Null,
                            Bool,
                            { _ | Dyn },
                            Array Dyn,
                            Number,
                            String
                          ]
                      )
                      | doc "The except key is optional, and removes IDs or categories from the use list. We do not recommend using this option in general."
                      | optional,
                    ignore
                      | Array String
                      | doc "The ignore key is optional, and allows directories or files to be excluded from all breaking rules when running buf breaking. If a directory is ignored, then all files and subfolders of the directory will also be ignored. The specified directory or file paths must be relative to the buf.yaml. This option can be useful for ignoring packages that are in active development but not deployed in production, especially alpha or beta packages, and we expect ignore to be commonly used for this case."
                      | optional,
                    ignore_only
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
                    ignore_unstable_packages
                      | Bool
                      | doc "The ignore_unstable_packages key is optional, and ignores packages with a last component that is one of the unstable forms recognized by PACKAGE_VERSION_SUFFIX."
                      | optional,
                    use
                      | Array (
                        std.contract.any_of
                          [
                            js2n.Null,
                            Bool,
                            { _ | Dyn },
                            Array Dyn,
                            Number,
                            String
                          ]
                      )
                      | doc "The use key is optional, and lists the IDs or categories to use for breaking change detection. The default value is the single item FILE, which is what we recommend."
                      | optional,
                    ..
                  }
                  | doc "The breaking key is optional, and specifies the breaking change detection rules enforced on the files contained within the module."
                  | optional,
                build
                  | {
                    excludes
                      | Array String
                      | doc "The excludes key is optional, and lists directories to ignore from .proto file discovery. Any directories added to this list are completely skipped and excluded in the module. We do not recommend using this option in general, however in some situations it is unavoidable."
                      | optional,
                    includes
                      | Array String
                      | doc "Optional. Lists directories within this directory to include in Protobuf file discovery. Only directories added to this list are included in Buf operations."
                      | optional,
                    ..
                  }
                  | doc "The build key is optional, and is used to control how buf builds modules."
                  | optional,
                deps
                  | Array String
                  | doc "The deps key is optional, and declares one or more modules that your module depends on. Each deps entry must be a module reference, and, is directly associated with a repository, as well as a reference, which is either a tag or commit."
                  | optional,
                lint
                  | {
                    allow_comment_ignores
                      | Bool
                      | doc "The allow_comment_ignores key is optional, and turns on comment-driven ignores. We do not recommend using this option in general, however in some situations it is unavoidable. See https://buf.build/docs/configuration/v1/buf-yaml#allow_comment_ignores."
                      | optional,
                    enum_zero_value_suffix
                      | String
                      | doc "The enum_zero_value_suffix key is optional, and controls the behavior of the ENUM_ZERO_VALUE_SUFFIX lint rule. See https://buf.build/docs/configuration/v1/buf-yaml#enum_zero_value_suffix."
                      | optional,
                    except
                      | Array (
                        std.contract.any_of
                          [
                            js2n.Null,
                            Bool,
                            { _ | Dyn },
                            Array Dyn,
                            Number,
                            String
                          ]
                      )
                      | doc "The except key is optional, and removes IDs or categories from the use list."
                      | optional,
                    ignore
                      | Array String
                      | doc "The ignore key is optional, and allows directories or files to be excluded from all lint rules when running buf lint. If a directory is ignored, then all files and subfolders of the directory will also be ignored. The specified directory or file paths must be relative to the buf.yaml."
                      | optional,
                    ignore_only
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
                    rpc_allow_google_protobuf_empty_requests
                      | Bool
                      | doc "The rpc_allow_google_protobuf_empty_requests key is optional, and allows RPC requests to be google.protobuf.Empty messages. This can be set if you want to allow messages to be void forever, that is, to never take any parameters. We do not recommend using this option in general."
                      | optional,
                    rpc_allow_google_protobuf_empty_responses
                      | Bool
                      | doc "The rpc_allow_google_protobuf_empty_responses key is optional, and allows RPC responses to be google.protobuf.Empty messages. This can be set if you want to allow messages to never return any parameters. We do not recommend using this option in general."
                      | optional,
                    rpc_allow_same_request_response
                      | Bool
                      | doc "The rpc_allow_same_request_response key is optional, and allows the same message type to be used for a single RPC's request and response type. We do not recommend using this option in general."
                      | optional,
                    service_suffix
                      | String
                      | doc "The service_suffix key is optional, and controls the behavior of the SERVICE_SUFFIX lint rule. See https://buf.build/docs/configuration/v1/buf-yaml#service_suffix."
                      | optional,
                    use
                      | Array (
                        std.contract.any_of
                          [
                            js2n.Null,
                            Bool,
                            { _ | Dyn },
                            Array Dyn,
                            Number,
                            String
                          ]
                      )
                      | doc "The use key is optional, and lists the IDs or categories to use for linting."
                      | optional,
                    ..
                  }
                  | doc "The lint key is optional, and specifies the lint rules enforced on the files in the module. See https://buf.build/docs/lint/rules."
                  | optional,
                name
                  | String
                  | doc "The name is optional, and uniquely identifies your module. The name must be a valid module name and is directly associated with the repository that owns it."
                  | optional,
                ..
              },
              Array Dyn
            ])
          (std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                breaking
                  | std.contract.any_of
                    [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
                  | optional,
                deps
                  | Array String
                  | doc "Optional. Declares one or more modules that your workspace depends on. Each deps entry must be a module name, which is directly associated with a BSR repository, and can also include a specific reference, which is either a commit ID or a label. Dependencies are shared between all modules in the set. Buf tooling already accounts for dependencies between the modules that are part of the set, so they shouldn't be declared here."
                  | optional,
                lint
                  | std.contract.any_of
                    [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
                  | optional,
                modules
                  | Array
                    {
                      breaking
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
                      excludes
                        | Array String
                        | doc "Optional. Lists directories within this directory to exclude from Protobuf file discovery. Any directories added to this list are completely skipped and excluded from Buf operations. We don't recommend using this option, but in some situations it's unavoidable."
                        | optional,
                      includes
                        | Array String
                        | doc "Optional. Lists directories within this directory to include in Protobuf file discovery. Only directories added to this list are included in Buf operations."
                        | optional,
                      lint
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
                      name
                        | String
                        | doc "Optional. A Buf Schema Registry (BSR) path that uniquely identifies this directory. The name must be a valid module name and it defines the BSR repository that contains the commit and label history and generated artifacts for the Protobuf files in the directory."
                        | optional,
                      path
                        | String
                        | doc "Required. The path to a directory containing Protobuf files, which must be defined relative to the workspace root (the directory that contains the buf.yaml file). All path values must point to directories within the workspace."
                        | optional,
                    }
                  | doc "Required. Defines the list of modules that will be built together in this workspace. Any dependencies that the files have on each other are automatically taken into account when building and shouldn't be declared in the deps section."
                  | optional,
                ..
              },
              Array Dyn
            ]),
        {
          version
            | std.enum.TagOrString
            | [| 'v1beta1, 'v1, 'v2 |]
            | doc "The version key is required, and defines the current configuration version. The accepted values are `v2`, `v1`, and `v1beta1`.",
          ..
        }
      ]