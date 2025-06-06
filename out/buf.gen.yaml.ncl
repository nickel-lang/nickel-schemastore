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
              std.contract.Sequence
                [
                  {
                    managed
                      | {
                        cc_enable_arenas
                          | Bool
                          | doc "Optional. If unset, this option is left as specified in your .proto files. As of Protocol Buffers release v3.14.0, changing this value no longer has any effect."
                          | optional,
                        csharp_namespace
                          | {
                            except
                              | Array String
                              | doc "Optional. Removes the specified modules from the default csharp_namespace option behavior. The except keys must be valid module names."
                              | optional,
                            override
                              | { _ | String }
                              | doc "Optional. Overrides the csharp_namespace value used for specific modules. The override keys must be valid module names."
                              | optional,
                          }
                          | doc "Optional. Controls the default C# namespace for classes generated from all of the .proto files contained within the input. Managed mode generates C# files with a top-level namespace based on each .proto file’s package, with each part transformed to PascalCase."
                          | optional,
                        enabled
                          | Bool
                          | doc "Required if any other managed keys are set. Setting enabled equal to true with no other keys set enables managed mode according to default behavior. See https://buf.build/docs/generate/managed-mode#default-behavior."
                          | optional,
                        go_package_prefix
                          | {
                            "default"
                              | String
                              | doc "Required if the go_package_prefix key is set. The default value is used as a prefix for the go_package value set in each of the files. It must be a relative file path that must not jump context from the current directory—that is, it must be subdirectories relative to the current working directory.",
                            except
                              | Array String
                              | doc "Optional. Removes certain modules from the go_package option behavior. The except values must be valid module names. There are situations where you may want to enable managed mode for the go_package option in most of your Protobuf files, but not necessarily for all of your Protobuf files. This is particularly relevant for the buf.build/googleapis/googleapis module, which points its go_package value to an external repository. Popular libraries such as grpc-go depend on these go_package values, so it's important that managed mode does not overwrite them."
                              | optional,
                            override
                              | { _ | String }
                              | doc "Optional. Overrides the go_package file option value used for specific modules. The override keys must be valid module names. Additionally, the corresponding override values must be a valid Go import path and must not jump context from the current directory. As an example, ../external is invalid. This setting is used for workspace environments, where you have a module that imports from another module in the same workspace, and you need to generate the Go code for each module in different directories. This is particularly relevant for repositories that decouple their private API definitions from their public API definitions."
                              | optional,
                          }
                          | doc "Optional. Controls what the go_package value is set to for all of the .proto files contained within the input. If unset, this option is left as specified in your .proto files."
                          | optional,
                        java_multiple_files
                          | Bool
                          | doc "Optional. Controls what the java_multiple_files value is set to for all of the .proto files contained within the input. The only accepted values are false and true. Managed mode defaults to true (Protobuf's default is false). See https://buf.build/docs/configuration/v1/buf-gen-yaml#java_multiple_files."
                          | optional,
                        java_package_prefix
                          | std.contract.any_of
                            [
                              String,
                              {
                                "default"
                                  | String
                                  | doc "Required if the java_package_prefix key is set. The default value is used as a prefix for the java_package value set in each of the files.",
                                except
                                  | Array String
                                  | doc "Optional. Removes the specified modules from the java_package option behavior. The except keys must be valid module names."
                                  | optional,
                                override
                                  | { _ | String }
                                  | doc "Optional. Overrides the java_package option value used for specific modules. The override keys must be valid module names."
                                  | optional,
                              }
                            ]
                          | doc "Optional. Controls what is prepended to the java_package value is set to for all of the .proto files contained within the input. If this is unset, managed mode's default value is `com`."
                          | optional,
                        java_string_check_utf8
                          | Bool
                          | doc "Optional. Controls what the java_string_check_utf8 value is set to for all of the .proto files contained within the input. The only accepted values are false and true. If unset, this option is left as specified in your .proto files. Protobuf's default is false."
                          | optional,
                        objc_class_prefix
                          | {
                            "default"
                              | String
                              | doc "Optional. Overrides managed mode's default value for the class prefix.",
                            except
                              | Array String
                              | doc "Optional. Removes the specified modules from the objc_class_prefix option behavior. The except keys must be valid module names."
                              | optional,
                            override
                              | { _ | String }
                              | doc "Optional. Overrides any default objc_class_prefix option value for specific modules. The override keys must be valid module names."
                              | optional,
                          }
                          | doc "Optional. When managed mode is enabled, this defaults to an abbreviation of the package name as described in the default behavior section. The value is prepended to all generated classes. See https://buf.build/docs/generate/managed-mode#default-behavior."
                          | optional,
                        optimize_for
                          | std.enum.TagOrString
                          | [| 'LITE_RUNTIME, 'CODE_SIZE, 'SPEED |]
                          | doc "Optional. Controls what the optimize_for value is set to for all of the .proto files contained within the input. The only accepted values are SPEED, CODE_SIZE and LITE_RUNTIME. Managed mode will not modify this option if unset."
                          | optional,
                        override
                          | {
                            CSHARP_NAMESPACE | { _ | String } | optional,
                            GO_PACKAGE | { _ | String } | optional,
                            JAVA_MULTIPLE_FILES | { _ | String } | optional,
                            JAVA_OUTER_CLASSNAME | { _ | String } | optional,
                            JAVA_PACKAGE | { _ | String } | optional,
                            JAVA_STRING_CHECK_UTF8 | { _ | String } | optional,
                            OBJC_CLASS_PREFIX | { _ | String } | optional,
                            OPTIMIZE_FOR | { _ | String } | optional,
                            PHP_METADATA_NAMESPACE | { _ | String } | optional,
                            PHP_NAMESPACE | { _ | String } | optional,
                            RUBY_PACKAGE | { _ | String } | optional,
                            ..
                          }
                          | doc "Optional. This is a list of per-file overrides for each modifier. See https://buf.build/docs/configuration/v1/buf-gen-yaml#per-file-override."
                          | optional,
                        ruby_package
                          | {
                            except
                              | Array String
                              | doc "Optional. Removes the specified modules from the ruby_package file option override behavior. The except keys must be valid module names."
                              | optional,
                            override
                              | { _ | String }
                              | doc "Optional. Overrides the ruby_package file option value used for specific modules. The override keys must be valid module names."
                              | optional,
                          }
                          | doc "Optional. Controls what the ruby_package value is set to for all of the .proto files contained within the input. Managed mode's default value is the package name with each package sub-name capitalized, with :: substituted for ."
                          | optional,
                        ..
                      }
                      | doc "The managed key is used to configure managed mode, an advanced feature for Protobuf options. See https://buf.build/docs/generate/managed-mode."
                      | optional,
                    plugins
                      | Array
                        {
                          exclude_types
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
                          name | String | optional,
                          opt
                            | std.contract.any_of [ String, Array String ]
                            | doc "Optional. Specifies one or more plugin options for each plugin independently. You can provide options as either a single string or a list of strings."
                            | optional,
                          out
                            | String
                            | doc "Required. Controls where the generated files are deposited for a given plugin. Although absolute paths are supported, this configuration is typically a relative output directory to where buf generate is run.",
                          path
                            | std.contract.any_of [ String, Array String ]
                            | doc "Optional. Only works with local plugins. Overrides the default location and explicitly specifies where to locate the plugin."
                            | optional,
                          plugin
                            | String
                            | doc "Required. The name of the plugin to use—can be local or remote. See https://buf.build/docs/configuration/v1/buf-gen-yaml#plugin."
                            | optional,
                          protoc_path
                            | std.contract.any_of [ String, Array String ]
                            | doc "Optional. Only applies to the code generators that are built in to protoc. Normally, a plugin is a separate executable with a binary name like protoc-gen-<name>. But for a handful of plugins, the executable used is protoc itself. See https://buf.build/docs/configuration/v1/buf-gen-yaml#protoc_path."
                            | optional,
                          remote | String | optional,
                          revision
                            | std.number.Integer
                            | js2n.number.Minimum 0
                            | doc "Optional. May be used along with the plugin field to pin an exact version of a remote plugin. In most cases, we recommend omitting revision, in which case the latest revision of that version of the plugin will be used (automatically pulling in the latest bug fixes)."
                            | optional,
                          strategy
                            | std.enum.TagOrString
                            | [| 'all, 'directory |]
                            | doc "Optional. Specifies the invocation strategy to use. See https://buf.build/docs/configuration/v1/buf-gen-yaml#strategy."
                            | optional,
                          types
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
                        }
                      | doc "Required. Each entry in the plugins key is a protoc plugin configuration. Plugins are invoked in parallel and their outputs are written in the order you specify here.",
                    ..
                  },
                  js2n.record.Required [ "version" ]
                ],
              Array Dyn
            ])
          (std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                clean
                  | Bool
                  | doc "Optional. When set to true, buf generate deletes all directories, zip files, and/or jar files specified by the out field for each plugin before running code generation."
                  | optional,
                inputs
                  | Array (
                    std.contract.any_of
                      [
                        std.contract.Sequence
                          [
                            js2n.record.MinProperties 1,
                            js2n.record.Record
                              {
                                additional = 'None,
                                patterns = {},
                                properties =
                                  {
                                      directory = String,
                                      exclude_paths =
                                        std.contract.any_of
                                            [
                                              js2n.Null,
                                              Bool,
                                              { _ | Dyn },
                                              Array Dyn,
                                              Number,
                                              String
                                            ],
                                      exclude_types =
                                        std.contract.any_of
                                            [
                                              js2n.Null,
                                              Bool,
                                              { _ | Dyn },
                                              Array Dyn,
                                              Number,
                                              String
                                            ],
                                      paths =
                                        std.contract.any_of
                                            [
                                              js2n.Null,
                                              Bool,
                                              { _ | Dyn },
                                              Array Dyn,
                                              Number,
                                              String
                                            ],
                                      types =
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
                                required = {},
                              }
                          ],
                        std.contract.Sequence
                          [
                            js2n.record.MinProperties 1,
                            js2n.record.Record
                              {
                                additional = 'None,
                                patterns = {},
                                properties =
                                  {
                                      exclude_paths =
                                        std.contract.any_of
                                            [
                                              js2n.Null,
                                              Bool,
                                              { _ | Dyn },
                                              Array Dyn,
                                              Number,
                                              String
                                            ],
                                      exclude_types =
                                        std.contract.any_of
                                            [
                                              js2n.Null,
                                              Bool,
                                              { _ | Dyn },
                                              Array Dyn,
                                              Number,
                                              String
                                            ],
                                      module = String,
                                      paths =
                                        std.contract.any_of
                                            [
                                              js2n.Null,
                                              Bool,
                                              { _ | Dyn },
                                              Array Dyn,
                                              Number,
                                              String
                                            ],
                                      types =
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
                                required = {},
                              }
                          ],
                        std.contract.Sequence
                          [
                            js2n.record.MinProperties 1,
                            js2n.record.Record
                              {
                                additional = 'None,
                                patterns = {},
                                properties =
                                  {
                                      branch = String,
                                      depth =
                                        std.contract.Sequence
                                            [
                                              std.number.Integer,
                                              js2n.number.Minimum 1
                                            ],
                                      exclude_paths =
                                        std.contract.any_of
                                            [
                                              js2n.Null,
                                              Bool,
                                              { _ | Dyn },
                                              Array Dyn,
                                              Number,
                                              String
                                            ],
                                      exclude_types =
                                        std.contract.any_of
                                            [
                                              js2n.Null,
                                              Bool,
                                              { _ | Dyn },
                                              Array Dyn,
                                              Number,
                                              String
                                            ],
                                      git_repo = String,
                                      paths =
                                        std.contract.any_of
                                            [
                                              js2n.Null,
                                              Bool,
                                              { _ | Dyn },
                                              Array Dyn,
                                              Number,
                                              String
                                            ],
                                      recurse_subdirectories = Bool,
                                      ref = String,
                                      subdir = String,
                                      tag = String,
                                      types =
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
                                required = {},
                              }
                          ],
                        std.contract.Sequence
                          [
                            js2n.record.MinProperties 1,
                            js2n.record.Record
                              {
                                additional = 'None,
                                patterns = {},
                                properties =
                                  {
                                      compression =
                                        std.contract.Sequence
                                            [
                                              std.enum.TagOrString,
                                              [| 'zstd, 'gzip |]
                                            ],
                                      exclude_paths =
                                        std.contract.any_of
                                            [
                                              js2n.Null,
                                              Bool,
                                              { _ | Dyn },
                                              Array Dyn,
                                              Number,
                                              String
                                            ],
                                      exclude_types =
                                        std.contract.any_of
                                            [
                                              js2n.Null,
                                              Bool,
                                              { _ | Dyn },
                                              Array Dyn,
                                              Number,
                                              String
                                            ],
                                      paths =
                                        std.contract.any_of
                                            [
                                              js2n.Null,
                                              Bool,
                                              { _ | Dyn },
                                              Array Dyn,
                                              Number,
                                              String
                                            ],
                                      strip_components = std.number.Integer,
                                      subdir = String,
                                      tarball = String,
                                      types =
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
                                required = {},
                              }
                          ],
                        std.contract.Sequence
                          [
                            js2n.record.MinProperties 1,
                            js2n.record.Record
                              {
                                additional = 'None,
                                patterns = {},
                                properties =
                                  {
                                      exclude_paths =
                                        std.contract.any_of
                                            [
                                              js2n.Null,
                                              Bool,
                                              { _ | Dyn },
                                              Array Dyn,
                                              Number,
                                              String
                                            ],
                                      exclude_types =
                                        std.contract.any_of
                                            [
                                              js2n.Null,
                                              Bool,
                                              { _ | Dyn },
                                              Array Dyn,
                                              Number,
                                              String
                                            ],
                                      paths =
                                        std.contract.any_of
                                            [
                                              js2n.Null,
                                              Bool,
                                              { _ | Dyn },
                                              Array Dyn,
                                              Number,
                                              String
                                            ],
                                      strip_components = std.number.Integer,
                                      subdir = String,
                                      types =
                                        std.contract.any_of
                                            [
                                              js2n.Null,
                                              Bool,
                                              { _ | Dyn },
                                              Array Dyn,
                                              Number,
                                              String
                                            ],
                                      zip_archive = String,
                                    },
                                required = {},
                              }
                          ],
                        std.contract.Sequence
                          [
                            js2n.record.MinProperties 1,
                            js2n.record.Record
                              {
                                additional = 'None,
                                patterns = {},
                                properties =
                                  {
                                      exclude_paths =
                                        std.contract.Sequence
                                            [
                                              js2n.array.MinItems 1,
                                              js2n.array.ArrayOf String
                                            ],
                                      exclude_types =
                                        std.contract.Sequence
                                            [
                                              js2n.array.MinItems 1,
                                              js2n.array.ArrayOf String
                                            ],
                                      include_package_files = Bool,
                                      paths =
                                        std.contract.Sequence
                                            [
                                              js2n.array.MinItems 1,
                                              js2n.array.ArrayOf String
                                            ],
                                      proto_file = String,
                                      types =
                                        std.contract.Sequence
                                            [
                                              js2n.array.MinItems 1,
                                              js2n.array.ArrayOf String
                                            ],
                                    },
                                required = {},
                              }
                          ],
                        std.contract.Sequence
                          [
                            js2n.record.MinProperties 1,
                            js2n.record.Record
                              {
                                additional = 'None,
                                patterns = {},
                                properties =
                                  {
                                      binary_image = String,
                                      compression =
                                        std.contract.Sequence
                                            [
                                              std.enum.TagOrString,
                                              [| 'zstd, 'gzip |]
                                            ],
                                      exclude_paths =
                                        std.contract.any_of
                                            [
                                              js2n.Null,
                                              Bool,
                                              { _ | Dyn },
                                              Array Dyn,
                                              Number,
                                              String
                                            ],
                                      exclude_types =
                                        std.contract.any_of
                                            [
                                              js2n.Null,
                                              Bool,
                                              { _ | Dyn },
                                              Array Dyn,
                                              Number,
                                              String
                                            ],
                                      paths =
                                        std.contract.any_of
                                            [
                                              js2n.Null,
                                              Bool,
                                              { _ | Dyn },
                                              Array Dyn,
                                              Number,
                                              String
                                            ],
                                      types =
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
                                required = {},
                              }
                          ],
                        std.contract.Sequence
                          [
                            js2n.record.MinProperties 1,
                            js2n.record.Record
                              {
                                additional = 'None,
                                patterns = {},
                                properties =
                                  {
                                      compression =
                                        std.contract.Sequence
                                            [
                                              std.enum.TagOrString,
                                              [| 'zstd, 'gzip |]
                                            ],
                                      exclude_paths =
                                        std.contract.any_of
                                            [
                                              js2n.Null,
                                              Bool,
                                              { _ | Dyn },
                                              Array Dyn,
                                              Number,
                                              String
                                            ],
                                      exclude_types =
                                        std.contract.any_of
                                            [
                                              js2n.Null,
                                              Bool,
                                              { _ | Dyn },
                                              Array Dyn,
                                              Number,
                                              String
                                            ],
                                      json_image = String,
                                      paths =
                                        std.contract.any_of
                                            [
                                              js2n.Null,
                                              Bool,
                                              { _ | Dyn },
                                              Array Dyn,
                                              Number,
                                              String
                                            ],
                                      types =
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
                                required = {},
                              }
                          ],
                        std.contract.Sequence
                          [
                            js2n.record.MinProperties 1,
                            js2n.record.Record
                              {
                                additional = 'None,
                                patterns = {},
                                properties =
                                  {
                                      compression =
                                        std.contract.Sequence
                                            [
                                              std.enum.TagOrString,
                                              [| 'zstd, 'gzip |]
                                            ],
                                      exclude_paths =
                                        std.contract.any_of
                                            [
                                              js2n.Null,
                                              Bool,
                                              { _ | Dyn },
                                              Array Dyn,
                                              Number,
                                              String
                                            ],
                                      exclude_types =
                                        std.contract.any_of
                                            [
                                              js2n.Null,
                                              Bool,
                                              { _ | Dyn },
                                              Array Dyn,
                                              Number,
                                              String
                                            ],
                                      paths =
                                        std.contract.any_of
                                            [
                                              js2n.Null,
                                              Bool,
                                              { _ | Dyn },
                                              Array Dyn,
                                              Number,
                                              String
                                            ],
                                      types =
                                        std.contract.any_of
                                            [
                                              js2n.Null,
                                              Bool,
                                              { _ | Dyn },
                                              Array Dyn,
                                              Number,
                                              String
                                            ],
                                      yaml_image = String,
                                    },
                                required = {},
                              }
                          ],
                        std.contract.Sequence
                          [
                            js2n.record.MinProperties 1,
                            js2n.record.Record
                              {
                                additional = 'None,
                                patterns = {},
                                properties =
                                  {
                                      compression =
                                        std.contract.Sequence
                                            [
                                              std.enum.TagOrString,
                                              [| 'zstd, 'gzip |]
                                            ],
                                      exclude_paths =
                                        std.contract.any_of
                                            [
                                              js2n.Null,
                                              Bool,
                                              { _ | Dyn },
                                              Array Dyn,
                                              Number,
                                              String
                                            ],
                                      exclude_types =
                                        std.contract.any_of
                                            [
                                              js2n.Null,
                                              Bool,
                                              { _ | Dyn },
                                              Array Dyn,
                                              Number,
                                              String
                                            ],
                                      paths =
                                        std.contract.any_of
                                            [
                                              js2n.Null,
                                              Bool,
                                              { _ | Dyn },
                                              Array Dyn,
                                              Number,
                                              String
                                            ],
                                      txt_image = String,
                                      types =
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
                                required = {},
                              }
                          ]
                      ]
                  )
                  | doc "Optional. A list of inputs to generate code for."
                  | optional,
                managed
                  | js2n.record.MinProperties 1
                  | {
                    disable
                      | Array (
                        std.contract.Sequence
                          [
                            js2n.record.MinProperties 1,
                            {
                              field | String | optional,
                              field_option | String | optional,
                              file_option | String | optional,
                              module | String | optional,
                              path | String | optional,
                            }
                          ]
                      )
                      | doc "Optional. Allows you to granularly disable managed mode for either file options or field options by specifying a list of rules. There are two types of rules: file option or field option. For both types of disable rules, you can set any combination of keys and the union is used to determine the combination of file and field options that managed mode doesn't modify. A disable rule must have at least one key set."
                      | optional,
                    enabled
                      | Bool
                      | doc "Required if any other managed keys are set. Default is false. If a file or field option has no default, then managed mode doesn't modify that option and will only modify it if an override rule is specified."
                      | optional,
                    override
                      | Array (
                        std.contract.Sequence
                          [
                            js2n.record.MinProperties 1,
                            {
                              field | String | optional,
                              field_option | String | optional,
                              file_option | String | optional,
                              module | String | optional,
                              path | String | optional,
                              value | String | optional,
                            }
                          ]
                      )
                      | doc "Optional. Allows you to granularly override the file and field options that managed mode handles. Similar to disable rules, there are two types of override rules: field option or file option. For each override rule, you must provide an option and a valid value based on the option. You can then choose to set a path and/or module to filter the files that the override rule applies to. The rules will be applied instead of managed mode's default behavior, unless an option or file has an applicable disable rule."
                      | optional,
                  }
                  | doc "The managed key is used to enable managed mode, an advanced feature that allows you to specify Protobuf file and field options without defining them in the Protobuf files. See Managed mode for details about default behavior and accepted values for each available option key."
                  | optional,
                plugins
                  | Array (
                    std.contract.Sequence
                      [
                        js2n.record.MinProperties 1,
                        {
                          exclude_types
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
                          include_imports
                            | Bool
                            | doc "Optional. Generates all imports except for Well-Known Types. This setting works the same as the --include-imports flag on buf generate—if they conflict with each other, the flag gets precedence."
                            | optional,
                          include_wkt
                            | Bool
                            | doc "Optional. Generates Well-Known Types. Can't be set without --include-imports. This setting works the same as the --include-wkt flag on buf generate—if they conflict with each other, the flag gets precedence."
                            | optional,
                          local
                            | std.contract.any_of
                              [
                                String,
                                std.contract.Sequence
                                  [ js2n.array.MinItems 1, Array String ]
                              ]
                            | doc "A string or list of strings that point to the names of plugin binaries on your ${PATH}, or to its relative or absolute location on disk. If you specify a list of strings, the first is the local name, and the subsequent strings are considered arguments passed to the binary."
                            | optional,
                          opt
                            | std.contract.any_of
                              [
                                String,
                                std.contract.Sequence
                                  [ js2n.array.MinItems 1, Array String ]
                              ]
                            | doc "Optional. Specifies one or more plugin options for a plugin. You can provide options as either a single string or a list of strings."
                            | optional,
                          out
                            | String
                            | doc "Required. Controls where the generated files are deposited for a given plugin. Although absolute paths are supported, this configuration is typically a relative output directory to where buf generate is run.",
                          protoc_builtin
                            | String
                            | doc "Only applies to the code generators that are built into protoc. The following values for this field result in invoking protoc instead of a dedicated plugin binary. If you specify this type of plugin, you must also provide the protoc_path value as a string."
                            | optional,
                          protoc_path
                            | std.contract.any_of [ String, Array String ]
                            | optional,
                          remote
                            | String
                            | doc "Indicates a remote plugin hosted on either the public BSR or a private BSR. Its value must be in the form of <REMOTE>/<ORGANIZATION>/<PLUGIN>."
                            | optional,
                          revision
                            | std.number.Integer
                            | js2n.number.Minimum 1
                            | doc "The revision of the remote plugin. Only valid when specified with the `remote` key."
                            | optional,
                          strategy
                            | std.enum.TagOrString
                            | [| 'all, 'directory |]
                            | doc "Optional. Specifies the invocation strategy to use."
                            | optional,
                          types
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
                        }
                      ]
                  )
                  | doc "Required. Each entry in the plugins key is a protoc plugin configuration. Plugins are invoked in parallel and their outputs are written in the order you specify here."
                  | optional,
                ..
              },
              Array Dyn
            ]),
        {
          version
            | std.enum.TagOrString
            | [| 'v1beta1, 'v1, 'v2 |]
            | doc "Required. Defines the current configuration version. Accepted values are `v2`, `v1`, or `v1beta1`."
            | optional,
          ..
        }
      ]