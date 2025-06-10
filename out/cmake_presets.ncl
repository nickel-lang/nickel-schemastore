# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.$comment" =
        std.contract.any_of
            [
              String,
              std.contract.Sequence [ js2n.array.MinItems 1, Array String ]
            ],
      "definitions.$schema" = String,
      "definitions.buildPresetsItemsV10" =
        Array
            {
              "$comment"
                | refs."definitions.$comment"
                | std.contract.any_of [ Array Dyn, String ]
                | optional,
              ..
            },
      "definitions.buildPresetsItemsV2" =
        Array
            {
              cleanFirst
                | Bool
                | doc "An optional boolean. If true, equivalent to passing --clean-first on the command line."
                | optional,
              configuration
                | String
                | doc "An optional string. Equivalent to passing --config on the command line."
                | optional,
              configurePreset
                | js2n.string.MinLength 1
                | doc "An optional string specifying the name of a configure preset to associate with this build preset. If configurePreset is not specified, it must be inherited from the inherits preset (unless this preset is hidden). The build tree directory is inferred from the configure preset."
                | optional,
              description
                | String
                | doc "An optional string with a human-friendly description of the preset."
                | optional,
              displayName
                | String
                | doc "An optional string with a human-friendly name of the preset."
                | optional,
              environment
                | js2n.record.PropertyNames
                  (std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      js2n.string.Matches "^.+$",
                      { _ | Dyn },
                      Array Dyn
                    ])
                | { _ | js2n.Nullable String }
                | doc "An optional map of environment variables. The key is the variable name (which must not be an empty string). Each variable is set regardless of whether or not a value was given to it by the process's environment. This field supports macro expansion, and environment variables in this map may reference each other, and may be listed in any order, as long as such references do not cause a cycle (for example,if ENV_1 is $env{ENV_2}, ENV_2 may not be $env{ENV_1}.) Environment variables are inherited through the inherits field, and the preset's environment will be the union of its own environment and the environment from all its parents. If multiple presets in this union define the same variable, the standard rules of inherits are applied. Setting a variable to null causes it to not be set, even if a value was inherited from another preset."
                | optional,
              hidden
                | Bool
                | doc "An optional boolean specifying whether or not a preset should be hidden. If a preset is hidden, it cannot be used in the --preset argument and does not have to have a valid configurePreset, even from inheritance. Hidden presets are intended to be used as a base for other presets to inherit via the inherits field."
                | optional,
              inheritConfigureEnvironment
                | Bool
                | doc "An optional boolean that defaults to true. If true, the environment variables from the associated configure preset are inherited after all inherited build preset environments, but before environment variables explicitly specified in this build preset."
                | optional,
              inherits
                | std.contract.any_of
                  [ js2n.string.MinLength 1, Array (js2n.string.MinLength 1) ]
                | optional,
              jobs
                | std.number.Integer
                | doc "An optional integer. Equivalent to passing --parallel or -j on the command line."
                | optional,
              name
                | js2n.string.MinLength 1
                | doc "A required string representing the machine-friendly name of the preset. This identifier is used in the --preset argument. There must not be two presets (configure, build, test, package, or workflow) in the union of CMakePresets.json and CMakeUserPresets.json in the same directory with the same name."
                | optional,
              nativeToolOptions
                | Array String
                | doc "An optional array of strings. Equivalent to passing options after -- on the command line."
                | optional,
              targets | std.contract.any_of [ String, Array String ] | optional,
              vendor
                | { _ | Dyn }
                | doc "An optional map containing vendor-specific information. CMake does not interpret the contents of this field except to verify that it is a map if it does exist. However, it should follow the same conventions as the root-level vendor field. If vendors use their own per-preset vendor field, they should implement inheritance in a sensible manner when appropriate."
                | optional,
              verbose
                | Bool
                | doc "An optional boolean. If true, equivalent to passing --verbose on the command line."
                | optional,
              ..
            },
      "definitions.buildPresetsItemsV3" = Array Dyn,
      "definitions.buildPresetsItemsV4" =
        Array
            {
              resolvePackageReferences
                | std.enum.TagOrString
                | [| 'only, 'off, 'on |]
                | doc "An optional string specifying the package resolve behavior. Valid values are \"on\" (packages are resolved prior to the build), \"off\" (packages are not resolved prior to the build), and \"only\" (packages are resolved, but no build will be performed)."
                | optional,
              ..
            },
      "definitions.buildPresetsV10" =
        std.contract.Sequence
            [
              Array
                {
                  "$comment" | js2n.Always | optional,
                  cleanFirst | js2n.Always | optional,
                  condition | refs."definitions.topConditionV10" | optional,
                  configuration | js2n.Always | optional,
                  configurePreset | js2n.Always | optional,
                  description | js2n.Always | optional,
                  displayName | js2n.Always | optional,
                  environment | js2n.Always | optional,
                  hidden | js2n.Always | optional,
                  inheritConfigureEnvironment | js2n.Always | optional,
                  inherits | js2n.Always | optional,
                  jobs | js2n.Always | optional,
                  name | js2n.Always,
                  nativeToolOptions | js2n.Always | optional,
                  resolvePackageReferences | js2n.Always | optional,
                  targets | js2n.Always | optional,
                  vendor | js2n.Always | optional,
                  verbose | js2n.Always | optional,
                },
              refs."definitions.buildPresetsItemsV10",
              refs."definitions.buildPresetsItemsV4",
              refs."definitions.buildPresetsItemsV3",
              refs."definitions.buildPresetsItemsV2"
            ],
      "definitions.buildPresetsV2" =
        std.contract.Sequence
            [
              Array
                {
                  cleanFirst | js2n.Always | optional,
                  configuration | js2n.Always | optional,
                  configurePreset | js2n.Always | optional,
                  description | js2n.Always | optional,
                  displayName | js2n.Always | optional,
                  environment | js2n.Always | optional,
                  hidden | js2n.Always | optional,
                  inheritConfigureEnvironment | js2n.Always | optional,
                  inherits | js2n.Always | optional,
                  jobs | js2n.Always | optional,
                  name | js2n.Always,
                  nativeToolOptions | js2n.Always | optional,
                  targets | js2n.Always | optional,
                  vendor | js2n.Always | optional,
                  verbose | js2n.Always | optional,
                },
              refs."definitions.buildPresetsItemsV2"
            ],
      "definitions.buildPresetsV3" =
        std.contract.Sequence
            [
              Array
                {
                  cleanFirst | js2n.Always | optional,
                  condition | refs."definitions.topConditionV3" | optional,
                  configuration | js2n.Always | optional,
                  configurePreset | js2n.Always | optional,
                  description | js2n.Always | optional,
                  displayName | js2n.Always | optional,
                  environment | js2n.Always | optional,
                  hidden | js2n.Always | optional,
                  inheritConfigureEnvironment | js2n.Always | optional,
                  inherits | js2n.Always | optional,
                  jobs | js2n.Always | optional,
                  name | js2n.Always,
                  nativeToolOptions | js2n.Always | optional,
                  targets | js2n.Always | optional,
                  vendor | js2n.Always | optional,
                  verbose | js2n.Always | optional,
                },
              refs."definitions.buildPresetsItemsV3",
              refs."definitions.buildPresetsItemsV2"
            ],
      "definitions.buildPresetsV4" =
        std.contract.Sequence
            [
              Array
                {
                  cleanFirst | js2n.Always | optional,
                  condition | refs."definitions.topConditionV3" | optional,
                  configuration | js2n.Always | optional,
                  configurePreset | js2n.Always | optional,
                  description | js2n.Always | optional,
                  displayName | js2n.Always | optional,
                  environment | js2n.Always | optional,
                  hidden | js2n.Always | optional,
                  inheritConfigureEnvironment | js2n.Always | optional,
                  inherits | js2n.Always | optional,
                  jobs | js2n.Always | optional,
                  name | js2n.Always,
                  nativeToolOptions | js2n.Always | optional,
                  resolvePackageReferences | js2n.Always | optional,
                  targets | js2n.Always | optional,
                  vendor | js2n.Always | optional,
                  verbose | js2n.Always | optional,
                },
              refs."definitions.buildPresetsItemsV4",
              refs."definitions.buildPresetsItemsV3",
              refs."definitions.buildPresetsItemsV2"
            ],
      "definitions.cmakeMinimumRequiredPropertiesV1" =
        {
            major
              | std.number.Integer
              | doc "An optional integer representing the major version."
              | optional,
            minor
              | std.number.Integer
              | doc "An optional integer representing the minor version."
              | optional,
            patch
              | std.number.Integer
              | doc "An optional integer representing the patch version."
              | optional,
            ..
          },
      "definitions.cmakeMinimumRequiredPropertiesV10" =
        {
            "$comment"
              | refs."definitions.$comment"
              | std.contract.any_of [ Array Dyn, String ]
              | optional,
            ..
          },
      "definitions.cmakeMinimumRequiredV1" =
        std.contract.Sequence
            [
              refs."definitions.cmakeMinimumRequiredPropertiesV1",
              {
                major | js2n.Always | optional,
                minor | js2n.Always | optional,
                patch | js2n.Always | optional,
              }
            ],
      "definitions.cmakeMinimumRequiredV10" =
        std.contract.Sequence
            [
              refs."definitions.cmakeMinimumRequiredPropertiesV10",
              refs."definitions.cmakeMinimumRequiredPropertiesV1",
              {
                "$comment" | js2n.Always | optional,
                major | js2n.Always | optional,
                minor | js2n.Always | optional,
                patch | js2n.Always | optional,
              }
            ],
      "definitions.conditionAsBooleanV3" = Bool,
      "definitions.conditionAsObjectAggregationV10" =
        {
            "$comment"
              | refs."definitions.$comment"
              | std.contract.any_of [ Array Dyn, String ]
              | optional,
            ..
          },
      "definitions.conditionAsObjectAggregationV3" =
        {
            conditions
              | Array Dyn
              | doc "A required array of condition objects. These conditions use short-circuit evaluation."
              | optional,
            type
              | std.enum.TagOrString
              | [| 'allOf, 'anyOf |]
              | doc "A required string specifying the type of the condition."
              | optional,
            ..
          },
      "definitions.conditionAsObjectConstV10" =
        {
            "$comment"
              | refs."definitions.$comment"
              | std.contract.any_of [ Array Dyn, String ]
              | optional,
            ..
          },
      "definitions.conditionAsObjectConstV3" =
        {
            type
              | std.contract.Equal "const"
              | doc "A required string specifying the type of the condition."
              | optional,
            value
              | Bool
              | doc "A required boolean which provides a constant value for the condition's evaluation."
              | optional,
            ..
          },
      "definitions.conditionAsObjectEqualsV10" =
        {
            "$comment"
              | refs."definitions.$comment"
              | std.contract.any_of [ Array Dyn, String ]
              | optional,
            ..
          },
      "definitions.conditionAsObjectEqualsV3" =
        {
            lhs
              | String
              | doc "First string to compare. This field supports macro expansion."
              | optional,
            rhs
              | String
              | doc "Second string to compare. This field supports macro expansion."
              | optional,
            type
              | std.enum.TagOrString
              | [| 'notEquals, 'equals |]
              | doc "A required string specifying the type of the condition."
              | optional,
            ..
          },
      "definitions.conditionAsObjectInListV10" =
        {
            "$comment"
              | refs."definitions.$comment"
              | std.contract.any_of [ Array Dyn, String ]
              | optional,
            ..
          },
      "definitions.conditionAsObjectInListV3" =
        {
            list
              | Array String
              | doc "A required list of strings to search. This field supports macro expansion, and uses short-circuit evaluation."
              | optional,
            string
              | String
              | doc "A required string to search for. This field supports macro expansion."
              | optional,
            type
              | std.enum.TagOrString
              | [| 'notInList, 'inList |]
              | doc "A required string specifying the type of the condition."
              | optional,
            ..
          },
      "definitions.conditionAsObjectMatchesV10" =
        {
            "$comment"
              | refs."definitions.$comment"
              | std.contract.any_of [ Array Dyn, String ]
              | optional,
            ..
          },
      "definitions.conditionAsObjectMatchesV3" =
        {
            regex
              | String
              | doc "A required regular expression to search for. This field supports macro expansion."
              | optional,
            string
              | String
              | doc "A required string to search. This field supports macro expansion."
              | optional,
            type
              | std.enum.TagOrString
              | [| 'notMatches, 'matches |]
              | doc "A required string specifying the type of the condition."
              | optional,
            ..
          },
      "definitions.conditionAsObjectNotV10" =
        {
            "$comment"
              | refs."definitions.$comment"
              | std.contract.any_of [ Array Dyn, String ]
              | optional,
            ..
          },
      "definitions.conditionAsObjectNotV3" =
        {
            type
              | std.contract.Equal "not"
              | doc "A required string specifying the type of the condition."
              | optional,
            ..
          },
      "definitions.conditionV10" =
        std.contract.any_of
            [
              std.contract.Sequence
                [ refs."definitions.conditionAsBooleanV3", Bool ],
              std.contract.Sequence
                [
                  refs."definitions.conditionAsObjectConstV10",
                  refs."definitions.conditionAsObjectConstV3",
                  js2n.record.Record
                    {
                      additional = 'None,
                      patterns = {},
                      properties =
                        {
                            "$comment" = js2n.Always,
                            type = js2n.Always,
                            value = js2n.Always,
                          },
                      required = { type = true, value = true, },
                    }
                ],
              std.contract.Sequence
                [
                  refs."definitions.conditionAsObjectEqualsV10",
                  refs."definitions.conditionAsObjectEqualsV3",
                  js2n.record.Record
                    {
                      additional = 'None,
                      patterns = {},
                      properties =
                        {
                            "$comment" = js2n.Always,
                            lhs = js2n.Always,
                            rhs = js2n.Always,
                            type = js2n.Always,
                          },
                      required = { lhs = true, rhs = true, type = true, },
                    }
                ],
              std.contract.Sequence
                [
                  refs."definitions.conditionAsObjectInListV10",
                  refs."definitions.conditionAsObjectInListV3",
                  js2n.record.Record
                    {
                      additional = 'None,
                      patterns = {},
                      properties =
                        {
                            "$comment" = js2n.Always,
                            list = js2n.Always,
                            string = js2n.Always,
                            type = js2n.Always,
                          },
                      required = { list = true, string = true, type = true, },
                    }
                ],
              std.contract.Sequence
                [
                  refs."definitions.conditionAsObjectMatchesV10",
                  refs."definitions.conditionAsObjectMatchesV3",
                  js2n.record.Record
                    {
                      additional = 'None,
                      patterns = {},
                      properties =
                        {
                            "$comment" = js2n.Always,
                            regex = js2n.Always,
                            string = js2n.Always,
                            type = js2n.Always,
                          },
                      required = { regex = true, string = true, type = true, },
                    }
                ],
              std.contract.Sequence
                [
                  refs."definitions.conditionAsObjectAggregationV10",
                  refs."definitions.conditionAsObjectAggregationV3",
                  js2n.record.Record
                    {
                      additional = 'None,
                      patterns = {},
                      properties =
                        {
                            "$comment" = js2n.Always,
                            conditions = js2n.array.ArrayOf js2n.Always,
                            type = js2n.Always,
                          },
                      required = { conditions = true, type = true, },
                    }
                ],
              std.contract.Sequence
                [
                  refs."definitions.conditionAsObjectNotV10",
                  refs."definitions.conditionAsObjectNotV3",
                  js2n.record.Record
                    {
                      additional = 'None,
                      patterns = {},
                      properties =
                        {
                            "$comment" = js2n.Always,
                            condition = js2n.Always,
                            type = js2n.Always,
                          },
                      required = { condition = true, type = true, },
                    }
                ]
            ],
      "definitions.conditionV3" =
        std.contract.any_of
            [
              std.contract.Sequence
                [ refs."definitions.conditionAsBooleanV3", Bool ],
              std.contract.Sequence
                [
                  refs."definitions.conditionAsObjectConstV3",
                  js2n.record.Record
                    {
                      additional = 'None,
                      patterns = {},
                      properties = { type = js2n.Always, value = js2n.Always, },
                      required = { type = true, value = true, },
                    }
                ],
              std.contract.Sequence
                [
                  refs."definitions.conditionAsObjectEqualsV3",
                  js2n.record.Record
                    {
                      additional = 'None,
                      patterns = {},
                      properties =
                        {
                            lhs = js2n.Always,
                            rhs = js2n.Always,
                            type = js2n.Always,
                          },
                      required = { lhs = true, rhs = true, type = true, },
                    }
                ],
              std.contract.Sequence
                [
                  refs."definitions.conditionAsObjectInListV3",
                  js2n.record.Record
                    {
                      additional = 'None,
                      patterns = {},
                      properties =
                        {
                            list = js2n.Always,
                            string = js2n.Always,
                            type = js2n.Always,
                          },
                      required = { list = true, string = true, type = true, },
                    }
                ],
              std.contract.Sequence
                [
                  refs."definitions.conditionAsObjectMatchesV3",
                  js2n.record.Record
                    {
                      additional = 'None,
                      patterns = {},
                      properties =
                        {
                            regex = js2n.Always,
                            string = js2n.Always,
                            type = js2n.Always,
                          },
                      required = { regex = true, string = true, type = true, },
                    }
                ],
              std.contract.Sequence
                [
                  refs."definitions.conditionAsObjectAggregationV3",
                  js2n.record.Record
                    {
                      additional = 'None,
                      patterns = {},
                      properties =
                        {
                            conditions = js2n.array.ArrayOf js2n.Always,
                            type = js2n.Always,
                          },
                      required = { conditions = true, type = true, },
                    }
                ],
              std.contract.Sequence
                [
                  refs."definitions.conditionAsObjectNotV3",
                  js2n.record.Record
                    {
                      additional = 'None,
                      patterns = {},
                      properties =
                        { condition = js2n.Always, type = js2n.Always, },
                      required = { condition = true, type = true, },
                    }
                ]
            ],
      "definitions.configurePresetsArchitectureAsObjectV1" =
        {
            strategy
              | std.enum.TagOrString
              | [| 'external, 'set |]
              | doc "An optional string telling CMake how to handle the field. Valid values are: \"set\" Set the respective value. This will result in an error for generators that do not support the respective field. \"external\" Do not set the value, even if the generator supports it. This is useful if, for example, a preset uses the Ninja generator, and an IDE knows how to set up the Visual C++ environment from the architecture and toolset fields. In that case, CMake will ignore the field, but the IDE can use them to set up the environment before invoking CMake."
              | optional,
            value
              | String
              | doc "An optional string representing the value."
              | optional,
            ..
          },
      "definitions.configurePresetsArchitectureAsObjectV10" =
        {
            "$comment"
              | refs."definitions.$comment"
              | std.contract.any_of [ Array Dyn, String ]
              | optional,
            ..
          },
      "definitions.configurePresetsArchitectureAsStringV1" = String,
      "definitions.configurePresetsArchitectureV1" =
        std.contract.any_of
            [
              std.contract.Sequence
                [
                  refs."definitions.configurePresetsArchitectureAsStringV1",
                  String
                ],
              std.contract.Sequence
                [
                  refs."definitions.configurePresetsArchitectureAsObjectV1",
                  {
                    strategy | js2n.Always | optional,
                    value | js2n.Always | optional,
                  }
                ]
            ],
      "definitions.configurePresetsArchitectureV10" =
        std.contract.any_of
            [
              std.contract.Sequence
                [
                  refs."definitions.configurePresetsArchitectureAsStringV1",
                  String
                ],
              std.contract.Sequence
                [
                  refs."definitions.configurePresetsArchitectureAsObjectV10",
                  refs."definitions.configurePresetsArchitectureAsObjectV1",
                  {
                    "$comment" | js2n.Always | optional,
                    strategy | js2n.Always | optional,
                    value | js2n.Always | optional,
                  }
                ]
            ],
      "definitions.configurePresetsCacheVariablesAdditionalPropertiesAsBooleanV1" =
        Bool,
      "definitions.configurePresetsCacheVariablesAdditionalPropertiesAsNullV1" =
        js2n.Null,
      "definitions.configurePresetsCacheVariablesAdditionalPropertiesAsObjectV1" =
        {
            type
              | String
              | doc "An optional string representing the type of the variable. It should be BOOL, FILEPATH, PATH, STRING, or INTERNAL."
              | optional,
            value | std.contract.any_of [ Bool, String ] | optional,
            ..
          },
      "definitions.configurePresetsCacheVariablesAdditionalPropertiesAsObjectV10" =
        {
            "$comment"
              | refs."definitions.$comment"
              | std.contract.any_of [ Array Dyn, String ]
              | optional,
            ..
          },
      "definitions.configurePresetsCacheVariablesAdditionalPropertiesAsStringV1" =
        String,
      "definitions.configurePresetsCacheVariablesAdditionalPropertiesV1" =
        std.contract.any_of
            [
              std.contract.Sequence
                [
                  refs."definitions.configurePresetsCacheVariablesAdditionalPropertiesAsNullV1",
                  js2n.Null
                ],
              std.contract.Sequence
                [
                  refs."definitions.configurePresetsCacheVariablesAdditionalPropertiesAsBooleanV1",
                  Bool
                ],
              std.contract.Sequence
                [
                  refs."definitions.configurePresetsCacheVariablesAdditionalPropertiesAsStringV1",
                  String
                ],
              std.contract.Sequence
                [
                  refs."definitions.configurePresetsCacheVariablesAdditionalPropertiesAsObjectV1",
                  { type | js2n.Always | optional, value | js2n.Always, }
                ]
            ],
      "definitions.configurePresetsCacheVariablesAdditionalPropertiesV10" =
        std.contract.any_of
            [
              std.contract.Sequence
                [
                  refs."definitions.configurePresetsCacheVariablesAdditionalPropertiesAsNullV1",
                  js2n.Null
                ],
              std.contract.Sequence
                [
                  refs."definitions.configurePresetsCacheVariablesAdditionalPropertiesAsBooleanV1",
                  Bool
                ],
              std.contract.Sequence
                [
                  refs."definitions.configurePresetsCacheVariablesAdditionalPropertiesAsStringV1",
                  String
                ],
              std.contract.Sequence
                [
                  refs."definitions.configurePresetsCacheVariablesAdditionalPropertiesAsObjectV10",
                  refs."definitions.configurePresetsCacheVariablesAdditionalPropertiesAsObjectV1",
                  {
                    "$comment" | js2n.Always | optional,
                    type | js2n.Always | optional,
                    value | js2n.Always,
                  }
                ]
            ],
      "definitions.configurePresetsItemsV1" =
        Array
            {
              binaryDir
                | String
                | doc "An optional string representing the path to the output binary directory. This field supports macro expansion. If a relative path is specified, it is calculated relative to the source directory. If binaryDir is not specified, it must be inherited from the inherits preset (unless this preset is hidden)."
                | optional,
              cacheVariables
                | js2n.record.PropertyNames
                  (std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      js2n.string.Matches "^.+$",
                      { _ | Dyn },
                      Array Dyn
                    ])
                | doc "An optional map of cache variables. The key is the variable name (which must not be an empty string). Cache variables are inherited through the inherits field, and the preset's variables will be the union of its own cacheVariables and the cacheVariables from all its parents. If multiple presets in this union define the same variable, the standard rules of inherits are applied."
                | optional,
              cmakeExecutable
                | String
                | doc "An optional string representing the path to the CMake executable to use for this preset. This is reserved for use by IDEs, and is not used by CMake itself. IDEs that use this field should expand any macros in it."
                | optional,
              debug
                | {
                  find
                    | Bool
                    | doc "An optional boolean. Setting this to true is equivalent to passing --debug-find on the command line."
                    | optional,
                  output
                    | Bool
                    | doc "An optional boolean. Setting this to true is equivalent to passing --debug-output on the command line."
                    | optional,
                  tryCompile
                    | Bool
                    | doc "An optional boolean. Setting this to true is equivalent to passing --debug-trycompile on the command line."
                    | optional,
                  ..
                }
                | doc "An optional object specifying debug options."
                | optional,
              description
                | String
                | doc "An optional string with a human-friendly description of the preset."
                | optional,
              displayName
                | String
                | doc "An optional string with a human-friendly name of the preset."
                | optional,
              environment
                | js2n.record.PropertyNames
                  (std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      js2n.string.Matches "^.+$",
                      { _ | Dyn },
                      Array Dyn
                    ])
                | { _ | js2n.Nullable String }
                | doc "An optional map of environment variables. The key is the variable name (which must not be an empty string). Each variable is set regardless of whether or not a value was given to it by the process's environment. This field supports macro expansion, and environment variables in this map may reference each other, and may be listed in any order, as long as such references do not cause a cycle (for example,if ENV_1 is $env{ENV_2}, ENV_2 may not be $env{ENV_1}.) Environment variables are inherited through the inherits field, and the preset's environment will be the union of its own environment and the environment from all its parents. If multiple presets in this union define the same variable, the standard rules of inherits are applied. Setting a variable to null causes it to not be set, even if a value was inherited from another preset."
                | optional,
              errors
                | {
                  deprecated
                    | Bool
                    | doc "An optional boolean. Equivalent to passing -Werror=deprecated or -Wno-error=deprecated on the command line. This may not be set to true if warnings.deprecated is set to false."
                    | optional,
                  dev
                    | Bool
                    | doc "An optional boolean. Equivalent to passing -Werror=dev or -Wno-error=dev on the command line. This may not be set to true if warnings.dev is set to false."
                    | optional,
                  ..
                }
                | doc "An optional object specifying errors."
                | optional,
              generator
                | String
                | doc "An optional string representing the generator to use for the preset. If generator is not specified, it must be inherited from the inherits preset (unless this preset is hidden). Note that for Visual Studio generators, unlike in the command line -G argument, you cannot include the platform name in the generator name. Use the architecture field instead."
                | optional,
              hidden
                | Bool
                | doc "An optional boolean specifying whether or not a preset should be hidden. If a preset is hidden, it cannot be used in the --preset= argument, will not show up in the CMake GUI, and does not have to have a valid generator or binaryDir, even from inheritance. Hidden presets are intended to be used as a base for other presets to inherit via the inherits field."
                | optional,
              inherits
                | std.contract.any_of
                  [ js2n.string.MinLength 1, Array (js2n.string.MinLength 1) ]
                | optional,
              name
                | js2n.string.MinLength 1
                | doc "A required string representing the machine-friendly name of the preset. This identifier is used in the --preset argument. There must not be two presets in the union of CMakePresets.json and CMakeUserPresets.json in the same directory with the same name."
                | optional,
              vendor
                | { _ | Dyn }
                | doc "An optional map containing vendor-specific information. CMake does not interpret the contents of this field except to verify that it is a map if it does exist. However, it should follow the same conventions as the root-level vendor field. If vendors use their own per-preset vendor field, they should implement inheritance in a sensible manner when appropriate."
                | optional,
              warnings
                | {
                  deprecated
                    | Bool
                    | doc "An optional boolean. Equivalent to passing -Wdeprecated or -Wno-deprecated on the command line. This may not be set to false if errors.deprecated is set to true."
                    | optional,
                  dev
                    | Bool
                    | doc "An optional boolean. Equivalent to passing -Wdev or -Wno-dev on the command line. This may not be set to false if errors.dev is set to true."
                    | optional,
                  systemVars
                    | Bool
                    | doc "An optional boolean. Setting this to true is equivalent to passing --check-system-vars on the command line."
                    | optional,
                  uninitialized
                    | Bool
                    | doc "An optional boolean. Setting this to true is equivalent to passing --warn-uninitialized on the command line."
                    | optional,
                  unusedCli
                    | Bool
                    | doc "An optional boolean. Setting this to false is equivalent to passing --no-warn-unused-cli on the command line."
                    | optional,
                  ..
                }
                | doc "An optional object specifying warnings."
                | optional,
              ..
            },
      "definitions.configurePresetsItemsV10" =
        Array
            {
              "$comment"
                | refs."definitions.$comment"
                | std.contract.any_of [ Array Dyn, String ]
                | optional,
              debug
                | std.contract.any_of
                  [
                    js2n.Null,
                    Bool,
                    Number,
                    String,
                    {
                      "$comment"
                        | refs."definitions.$comment"
                        | std.contract.any_of [ Array Dyn, String ]
                        | optional,
                      ..
                    },
                    Array Dyn
                  ]
                | optional,
              errors
                | std.contract.any_of
                  [
                    js2n.Null,
                    Bool,
                    Number,
                    String,
                    {
                      "$comment"
                        | refs."definitions.$comment"
                        | std.contract.any_of [ Array Dyn, String ]
                        | optional,
                      ..
                    },
                    Array Dyn
                  ]
                | optional,
              graphviz
                | String
                | doc "An optional string specifying the path to graphviz dot file. Available in version 10 and higher."
                | optional,
              trace
                | std.contract.any_of
                  [
                    js2n.Null,
                    Bool,
                    Number,
                    String,
                    {
                      "$comment"
                        | refs."definitions.$comment"
                        | std.contract.any_of [ Array Dyn, String ]
                        | optional,
                      ..
                    },
                    Array Dyn
                  ]
                | optional,
              warnings
                | std.contract.any_of
                  [
                    js2n.Null,
                    Bool,
                    Number,
                    String,
                    {
                      "$comment"
                        | refs."definitions.$comment"
                        | std.contract.any_of [ Array Dyn, String ]
                        | optional,
                      ..
                    },
                    Array Dyn
                  ]
                | optional,
              ..
            },
      "definitions.configurePresetsItemsV3" =
        Array
            {
              binaryDir
                | String
                | doc "An optional string representing the path to the output binary directory. This field supports macro expansion. If a relative path is specified, it is calculated relative to the source directory. If binaryDir is not specified, the path is calculated using regular methods."
                | optional,
              generator
                | String
                | doc "An optional string representing the generator to use for the preset. If generator is not specified, the normal generator discovery procedure is used. Note that for Visual Studio generators, unlike in the command line -G argument, you cannot include the platform name in the generator name. Use the architecture field instead."
                | optional,
              installDir
                | String
                | doc "An optional string representing the path to the installation directory. This field supports macro expansion. If a relative path is specified, it is calculated relative to the source directory."
                | optional,
              toolchainFile
                | String
                | doc "An optional string representing the path to the toolchain file. This field supports macro expansion. If a relative path is specified, it is calculated relative to the build directory, and if not found, relative to the source directory."
                | optional,
              ..
            },
      "definitions.configurePresetsItemsV7" =
        Array
            {
              trace
                | {
                  format
                    | std.enum.TagOrString
                    | [| 'json-v1, 'human |]
                    | doc "An optional string that specifies the trace output format."
                    | optional,
                  mode
                    | std.enum.TagOrString
                    | [| 'expand, 'off, 'on |]
                    | doc "An optional string that specifies the trace mode."
                    | optional,
                  redirect
                    | String
                    | doc "An optional string specifying a path to a trace output file."
                    | optional,
                  source
                    | std.contract.any_of
                      [
                        js2n.string.MinLength 1,
                        Array (js2n.string.MinLength 1)
                      ]
                    | optional,
                  ..
                }
                | doc "An optional object specifying trace options."
                | optional,
              ..
            },
      "definitions.configurePresetsToolsetAsObjectV1" =
        {
            strategy
              | std.enum.TagOrString
              | [| 'external, 'set |]
              | doc "An optional string telling CMake how to handle the field. Valid values are: \"set\" Set the respective value. This will result in an error for generators that do not support the respective field. \"external\" Do not set the value, even if the generator supports it. This is useful if, for example, a preset uses the Ninja generator, and an IDE knows how to set up the Visual C++ environment from the architecture and toolset fields. In that case, CMake will ignore the field, but the IDE can use them to set up the environment before invoking CMake."
              | optional,
            value
              | String
              | doc "An optional string representing the value."
              | optional,
            ..
          },
      "definitions.configurePresetsToolsetAsObjectV10" =
        {
            "$comment"
              | refs."definitions.$comment"
              | std.contract.any_of [ Array Dyn, String ]
              | optional,
            ..
          },
      "definitions.configurePresetsToolsetAsStringV1" = String,
      "definitions.configurePresetsToolsetV1" =
        std.contract.any_of
            [
              std.contract.Sequence
                [
                  refs."definitions.configurePresetsToolsetAsStringV1",
                  String
                ],
              std.contract.Sequence
                [
                  refs."definitions.configurePresetsToolsetAsObjectV1",
                  {
                    strategy | js2n.Always | optional,
                    value | js2n.Always | optional,
                  }
                ]
            ],
      "definitions.configurePresetsToolsetV10" =
        std.contract.any_of
            [
              std.contract.Sequence
                [
                  refs."definitions.configurePresetsToolsetAsStringV1",
                  String
                ],
              std.contract.Sequence
                [
                  refs."definitions.configurePresetsToolsetAsObjectV10",
                  refs."definitions.configurePresetsToolsetAsObjectV1",
                  {
                    "$comment" | js2n.Always | optional,
                    strategy | js2n.Always | optional,
                    value | js2n.Always | optional,
                  }
                ]
            ],
      "definitions.configurePresetsV1" =
        std.contract.Sequence
            [
              Array (
                std.contract.any_of
                  [
                    js2n.Null,
                    Bool,
                    Number,
                    String,
                    {
                      architecture
                        | refs."definitions.configurePresetsArchitectureV1"
                        | optional,
                      binaryDir | js2n.Always | optional,
                      cacheVariables
                        | std.contract.any_of
                          [
                            js2n.Null,
                            Bool,
                            Number,
                            String,
                            {
                              _ | refs."definitions.configurePresetsCacheVariablesAdditionalPropertiesV1"
                            },
                            Array Dyn
                          ]
                        | optional,
                      cmakeExecutable | js2n.Always | optional,
                      debug
                        | std.contract.any_of
                          [
                            js2n.Null,
                            Bool,
                            Number,
                            String,
                            {
                              find | js2n.Always | optional,
                              output | js2n.Always | optional,
                              tryCompile | js2n.Always | optional,
                            },
                            Array Dyn
                          ]
                        | optional,
                      description | js2n.Always | optional,
                      displayName | js2n.Always | optional,
                      environment | js2n.Always | optional,
                      errors
                        | std.contract.any_of
                          [
                            js2n.Null,
                            Bool,
                            Number,
                            String,
                            {
                              deprecated | js2n.Always | optional,
                              dev | js2n.Always | optional,
                            },
                            Array Dyn
                          ]
                        | optional,
                      generator | js2n.Always | optional,
                      hidden | js2n.Always | optional,
                      inherits | js2n.Always | optional,
                      name | js2n.Always,
                      toolset
                        | refs."definitions.configurePresetsToolsetV1"
                        | optional,
                      vendor | js2n.Always | optional,
                      warnings
                        | std.contract.any_of
                          [
                            js2n.Null,
                            Bool,
                            Number,
                            String,
                            {
                              deprecated | js2n.Always | optional,
                              dev | js2n.Always | optional,
                              systemVars | js2n.Always | optional,
                              uninitialized | js2n.Always | optional,
                              unusedCli | js2n.Always | optional,
                            },
                            Array Dyn
                          ]
                        | optional,
                    },
                    Array Dyn
                  ]
              ),
              refs."definitions.configurePresetsItemsV1"
            ],
      "definitions.configurePresetsV10" =
        std.contract.Sequence
            [
              Array (
                std.contract.any_of
                  [
                    js2n.Null,
                    Bool,
                    Number,
                    String,
                    {
                      "$comment" | js2n.Always | optional,
                      architecture
                        | refs."definitions.configurePresetsArchitectureV10"
                        | optional,
                      binaryDir | js2n.Always | optional,
                      cacheVariables
                        | std.contract.any_of
                          [
                            js2n.Null,
                            Bool,
                            Number,
                            String,
                            {
                              _ | refs."definitions.configurePresetsCacheVariablesAdditionalPropertiesV10"
                            },
                            Array Dyn
                          ]
                        | optional,
                      cmakeExecutable | js2n.Always | optional,
                      condition | refs."definitions.topConditionV10" | optional,
                      debug
                        | std.contract.any_of
                          [
                            js2n.Null,
                            Bool,
                            Number,
                            String,
                            {
                              "$comment" | js2n.Always | optional,
                              find | js2n.Always | optional,
                              output | js2n.Always | optional,
                              tryCompile | js2n.Always | optional,
                            },
                            Array Dyn
                          ]
                        | optional,
                      description | js2n.Always | optional,
                      displayName | js2n.Always | optional,
                      environment | js2n.Always | optional,
                      errors
                        | std.contract.any_of
                          [
                            js2n.Null,
                            Bool,
                            Number,
                            String,
                            {
                              "$comment" | js2n.Always | optional,
                              deprecated | js2n.Always | optional,
                              dev | js2n.Always | optional,
                            },
                            Array Dyn
                          ]
                        | optional,
                      generator | js2n.Always | optional,
                      graphviz | js2n.Always | optional,
                      hidden | js2n.Always | optional,
                      inherits | js2n.Always | optional,
                      installDir | js2n.Always | optional,
                      name | js2n.Always,
                      toolchainFile | js2n.Always | optional,
                      toolset
                        | refs."definitions.configurePresetsToolsetV10"
                        | optional,
                      trace
                        | std.contract.any_of
                          [
                            js2n.Null,
                            Bool,
                            Number,
                            String,
                            {
                              "$comment" | js2n.Always | optional,
                              format | js2n.Always | optional,
                              mode | js2n.Always | optional,
                              redirect | js2n.Always | optional,
                              source | js2n.Always | optional,
                            },
                            Array Dyn
                          ]
                        | optional,
                      vendor | js2n.Always | optional,
                      warnings
                        | std.contract.any_of
                          [
                            js2n.Null,
                            Bool,
                            Number,
                            String,
                            {
                              "$comment" | js2n.Always | optional,
                              deprecated | js2n.Always | optional,
                              dev | js2n.Always | optional,
                              systemVars | js2n.Always | optional,
                              uninitialized | js2n.Always | optional,
                              unusedCli | js2n.Always | optional,
                            },
                            Array Dyn
                          ]
                        | optional,
                    },
                    Array Dyn
                  ]
              ),
              refs."definitions.configurePresetsItemsV10",
              refs."definitions.configurePresetsItemsV7",
              refs."definitions.configurePresetsItemsV3",
              refs."definitions.configurePresetsItemsV1"
            ],
      "definitions.configurePresetsV3" =
        std.contract.Sequence
            [
              Array (
                std.contract.any_of
                  [
                    js2n.Null,
                    Bool,
                    Number,
                    String,
                    {
                      architecture
                        | refs."definitions.configurePresetsArchitectureV1"
                        | optional,
                      binaryDir | js2n.Always | optional,
                      cacheVariables
                        | std.contract.any_of
                          [
                            js2n.Null,
                            Bool,
                            Number,
                            String,
                            {
                              _ | refs."definitions.configurePresetsCacheVariablesAdditionalPropertiesV1"
                            },
                            Array Dyn
                          ]
                        | optional,
                      cmakeExecutable | js2n.Always | optional,
                      condition | refs."definitions.topConditionV3" | optional,
                      debug
                        | std.contract.any_of
                          [
                            js2n.Null,
                            Bool,
                            Number,
                            String,
                            {
                              find | js2n.Always | optional,
                              output | js2n.Always | optional,
                              tryCompile | js2n.Always | optional,
                            },
                            Array Dyn
                          ]
                        | optional,
                      description | js2n.Always | optional,
                      displayName | js2n.Always | optional,
                      environment | js2n.Always | optional,
                      errors
                        | std.contract.any_of
                          [
                            js2n.Null,
                            Bool,
                            Number,
                            String,
                            {
                              deprecated | js2n.Always | optional,
                              dev | js2n.Always | optional,
                            },
                            Array Dyn
                          ]
                        | optional,
                      generator | js2n.Always | optional,
                      hidden | js2n.Always | optional,
                      inherits | js2n.Always | optional,
                      installDir | js2n.Always | optional,
                      name | js2n.Always,
                      toolchainFile | js2n.Always | optional,
                      toolset
                        | refs."definitions.configurePresetsToolsetV1"
                        | optional,
                      vendor | js2n.Always | optional,
                      warnings
                        | std.contract.any_of
                          [
                            js2n.Null,
                            Bool,
                            Number,
                            String,
                            {
                              deprecated | js2n.Always | optional,
                              dev | js2n.Always | optional,
                              systemVars | js2n.Always | optional,
                              uninitialized | js2n.Always | optional,
                              unusedCli | js2n.Always | optional,
                            },
                            Array Dyn
                          ]
                        | optional,
                    },
                    Array Dyn
                  ]
              ),
              refs."definitions.configurePresetsItemsV3",
              refs."definitions.configurePresetsItemsV1"
            ],
      "definitions.configurePresetsV7" =
        std.contract.Sequence
            [
              Array (
                std.contract.any_of
                  [
                    js2n.Null,
                    Bool,
                    Number,
                    String,
                    {
                      architecture
                        | refs."definitions.configurePresetsArchitectureV1"
                        | optional,
                      binaryDir | js2n.Always | optional,
                      cacheVariables
                        | std.contract.any_of
                          [
                            js2n.Null,
                            Bool,
                            Number,
                            String,
                            {
                              _ | refs."definitions.configurePresetsCacheVariablesAdditionalPropertiesV1"
                            },
                            Array Dyn
                          ]
                        | optional,
                      cmakeExecutable | js2n.Always | optional,
                      condition | refs."definitions.topConditionV3" | optional,
                      debug
                        | std.contract.any_of
                          [
                            js2n.Null,
                            Bool,
                            Number,
                            String,
                            {
                              find | js2n.Always | optional,
                              output | js2n.Always | optional,
                              tryCompile | js2n.Always | optional,
                            },
                            Array Dyn
                          ]
                        | optional,
                      description | js2n.Always | optional,
                      displayName | js2n.Always | optional,
                      environment | js2n.Always | optional,
                      errors
                        | std.contract.any_of
                          [
                            js2n.Null,
                            Bool,
                            Number,
                            String,
                            {
                              deprecated | js2n.Always | optional,
                              dev | js2n.Always | optional,
                            },
                            Array Dyn
                          ]
                        | optional,
                      generator | js2n.Always | optional,
                      hidden | js2n.Always | optional,
                      inherits | js2n.Always | optional,
                      installDir | js2n.Always | optional,
                      name | js2n.Always,
                      toolchainFile | js2n.Always | optional,
                      toolset
                        | refs."definitions.configurePresetsToolsetV1"
                        | optional,
                      trace
                        | std.contract.any_of
                          [
                            js2n.Null,
                            Bool,
                            Number,
                            String,
                            {
                              format | js2n.Always | optional,
                              mode | js2n.Always | optional,
                              redirect | js2n.Always | optional,
                              source | js2n.Always | optional,
                            },
                            Array Dyn
                          ]
                        | optional,
                      vendor | js2n.Always | optional,
                      warnings
                        | std.contract.any_of
                          [
                            js2n.Null,
                            Bool,
                            Number,
                            String,
                            {
                              deprecated | js2n.Always | optional,
                              dev | js2n.Always | optional,
                              systemVars | js2n.Always | optional,
                              uninitialized | js2n.Always | optional,
                              unusedCli | js2n.Always | optional,
                            },
                            Array Dyn
                          ]
                        | optional,
                    },
                    Array Dyn
                  ]
              ),
              refs."definitions.configurePresetsItemsV7",
              refs."definitions.configurePresetsItemsV3",
              refs."definitions.configurePresetsItemsV1"
            ],
      "definitions.include" = Array String,
      "definitions.packagePresetsItemsV10" =
        Array
            {
              "$comment"
                | refs."definitions.$comment"
                | std.contract.any_of [ Array Dyn, String ]
                | optional,
              output
                | {
                  "$comment"
                    | refs."definitions.$comment"
                    | std.contract.any_of [ Array Dyn, String ]
                    | optional,
                  ..
                }
                | optional,
              ..
            },
      "definitions.packagePresetsItemsV6" =
        Array
            {
              configFile
                | String
                | doc "An optional string representing the config file for CPack to use."
                | optional,
              configurations
                | Array String
                | doc "An optional list of strings representing build configurations for CPack to package."
                | optional,
              configurePreset
                | js2n.string.MinLength 1
                | doc "An optional string specifying the name of a configure preset to associate with this package preset. If configurePreset is not specified, it must be inherited from the inherits preset (unless this preset is hidden). The build tree directory is inferred from the configure preset."
                | optional,
              description
                | String
                | doc "An optional string with a human-friendly description of the preset."
                | optional,
              displayName
                | String
                | doc "An optional string with a human-friendly name of the preset."
                | optional,
              environment
                | js2n.record.PropertyNames
                  (std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      js2n.string.Matches "^.+$",
                      { _ | Dyn },
                      Array Dyn
                    ])
                | { _ | js2n.Nullable String }
                | doc "An optional map of environment variables. The key is the variable name (which must not be an empty string). Each variable is set regardless of whether or not a value was given to it by the process's environment. This field supports macro expansion, and environment variables in this map may reference each other, and may be listed in any order, as long as such references do not cause a cycle (for example,if ENV_1 is $env{ENV_2}, ENV_2 may not be $env{ENV_1}.) Environment variables are inherited through the inherits field, and the preset's environment will be the union of its own environment and the environment from all its parents. If multiple presets in this union define the same variable, the standard rules of inherits are applied. Setting a variable to null causes it to not be set, even if a value was inherited from another preset."
                | optional,
              generators
                | Array String
                | doc "An optional list of strings representing generators for CPack to use."
                | optional,
              hidden
                | Bool
                | doc "An optional boolean specifying whether or not a preset should be hidden. If a preset is hidden, it cannot be used in the --preset argument and does not have to have a valid configurePreset, even from inheritance. Hidden presets are intended to be used as a base for other presets to inherit via the inherits field."
                | optional,
              inheritConfigureEnvironment
                | Bool
                | doc "An optional boolean that defaults to true. If true, the environment variables from the associated configure preset are inherited after all inherited package preset environments, but before environment variables explicitly specified in this package preset."
                | optional,
              inherits
                | std.contract.any_of
                  [ js2n.string.MinLength 1, Array (js2n.string.MinLength 1) ]
                | optional,
              name
                | js2n.string.MinLength 1
                | doc "A required string representing the machine-friendly name of the preset. This identifier is used in the --preset argument. There must not be two presets (configure, build, test, package, or workflow) in the union of CMakePresets.json and CMakeUserPresets.json in the same directory with the same name."
                | optional,
              output
                | {
                  debug
                    | Bool
                    | doc "An optional boolean specifying whether or not to print debug information. A value of true is equivalent to passing --debug on the command line."
                    | optional,
                  verbose
                    | Bool
                    | doc "An optional boolean specifying whether or not to print verbosely. A value of true is equivalent to passing --verbose on the command line."
                    | optional,
                  ..
                }
                | doc "An optional object specifying output options."
                | optional,
              packageDirectory
                | String
                | doc "An optional string representing the directory in which to place the package."
                | optional,
              packageName
                | String
                | doc "An optional string representing the package name."
                | optional,
              packageVersion
                | String
                | doc "An optional string representing the package version."
                | optional,
              variables
                | { _ | Dyn }
                | doc "An optional map of variables to pass to CPack, equivalent to -D arguments. Each key is the name of a variable, and the value is the string to assign to that variable."
                | optional,
              vendor
                | { _ | Dyn }
                | doc "An optional map containing vendor-specific information. CMake does not interpret the contents of this field except to verify that it is a map if it does exist. However, it should follow the same conventions as the root-level vendor field. If vendors use their own per-preset vendor field, they should implement inheritance in a sensible manner when appropriate."
                | optional,
              vendorName
                | String
                | doc "An optional string representing the vendor name."
                | optional,
              ..
            },
      "definitions.packagePresetsV10" =
        std.contract.Sequence
            [
              Array
                {
                  "$comment" | js2n.Always | optional,
                  condition | refs."definitions.topConditionV10" | optional,
                  configFile | js2n.Always | optional,
                  configurations | js2n.Always | optional,
                  configurePreset | js2n.Always | optional,
                  description | js2n.Always | optional,
                  displayName | js2n.Always | optional,
                  environment | js2n.Always | optional,
                  generators | js2n.Always | optional,
                  hidden | js2n.Always | optional,
                  inheritConfigureEnvironment | js2n.Always | optional,
                  inherits | js2n.Always | optional,
                  name | js2n.Always,
                  output
                    | {
                      "$comment" | js2n.Always | optional,
                      debug | js2n.Always | optional,
                      verbose | js2n.Always | optional,
                    }
                    | optional,
                  packageDirectory | js2n.Always | optional,
                  packageName | js2n.Always | optional,
                  packageVersion | js2n.Always | optional,
                  variables | js2n.Always | optional,
                  vendor | js2n.Always | optional,
                  vendorName | js2n.Always | optional,
                },
              refs."definitions.packagePresetsItemsV10",
              refs."definitions.packagePresetsItemsV6"
            ],
      "definitions.packagePresetsV6" =
        std.contract.Sequence
            [
              Array
                {
                  condition | refs."definitions.topConditionV3" | optional,
                  configFile | js2n.Always | optional,
                  configurations | js2n.Always | optional,
                  configurePreset | js2n.Always | optional,
                  description | js2n.Always | optional,
                  displayName | js2n.Always | optional,
                  environment | js2n.Always | optional,
                  generators | js2n.Always | optional,
                  hidden | js2n.Always | optional,
                  inheritConfigureEnvironment | js2n.Always | optional,
                  inherits | js2n.Always | optional,
                  name | js2n.Always,
                  output
                    | {
                      debug | js2n.Always | optional,
                      verbose | js2n.Always | optional,
                    }
                    | optional,
                  packageDirectory | js2n.Always | optional,
                  packageName | js2n.Always | optional,
                  packageVersion | js2n.Always | optional,
                  variables | js2n.Always | optional,
                  vendor | js2n.Always | optional,
                  vendorName | js2n.Always | optional,
                },
              refs."definitions.packagePresetsItemsV6"
            ],
      "definitions.testPresetsFilterIncludeIndexAsObjectV10" =
        {
            "$comment"
              | refs."definitions.$comment"
              | std.contract.any_of [ Array Dyn, String ]
              | optional,
            ..
          },
      "definitions.testPresetsFilterIncludeIndexAsObjectV2" =
        {
            end
              | std.number.Integer
              | doc "An optional integer specifying a test index to stop testing at."
              | optional,
            specificTests
              | Array std.number.Integer
              | doc "An optional array of integers specifying specific test indices to run."
              | optional,
            start
              | std.number.Integer
              | doc "An optional integer specifying a test index to start testing at."
              | optional,
            stride
              | std.number.Integer
              | doc "An optional integer specifying the increment."
              | optional,
            ..
          },
      "definitions.testPresetsFilterIncludeIndexAsStringV2" = String,
      "definitions.testPresetsFilterIncludeIndexV10" =
        std.contract.any_of
            [
              std.contract.Sequence
                [
                  refs."definitions.testPresetsFilterIncludeIndexAsStringV2",
                  String
                ],
              std.contract.Sequence
                [
                  refs."definitions.testPresetsFilterIncludeIndexAsObjectV10",
                  refs."definitions.testPresetsFilterIncludeIndexAsObjectV2",
                  {
                    "$comment" | js2n.Always | optional,
                    end | js2n.Always | optional,
                    specificTests | js2n.Always | optional,
                    start | js2n.Always | optional,
                    stride | js2n.Always | optional,
                  }
                ]
            ],
      "definitions.testPresetsFilterIncludeIndexV2" =
        std.contract.any_of
            [
              std.contract.Sequence
                [
                  refs."definitions.testPresetsFilterIncludeIndexAsStringV2",
                  String
                ],
              std.contract.Sequence
                [
                  refs."definitions.testPresetsFilterIncludeIndexAsObjectV2",
                  {
                    end | js2n.Always | optional,
                    specificTests | js2n.Always | optional,
                    start | js2n.Always | optional,
                    stride | js2n.Always | optional,
                  }
                ]
            ],
      "definitions.testPresetsItemsV10" =
        Array
            {
              "$comment"
                | refs."definitions.$comment"
                | std.contract.any_of [ Array Dyn, String ]
                | optional,
              execution
                | {
                  "$comment"
                    | refs."definitions.$comment"
                    | std.contract.any_of [ Array Dyn, String ]
                    | optional,
                  repeat
                    | {
                      "$comment"
                        | refs."definitions.$comment"
                        | std.contract.any_of [ Array Dyn, String ]
                        | optional,
                      ..
                    }
                    | optional,
                  ..
                }
                | optional,
              filter
                | {
                  "$comment"
                    | refs."definitions.$comment"
                    | std.contract.any_of [ Array Dyn, String ]
                    | optional,
                  exclude
                    | {
                      "$comment"
                        | refs."definitions.$comment"
                        | std.contract.any_of [ Array Dyn, String ]
                        | optional,
                      fixtures
                        | {
                          "$comment"
                            | refs."definitions.$comment"
                            | std.contract.any_of [ Array Dyn, String ]
                            | optional,
                          ..
                        }
                        | optional,
                      ..
                    }
                    | optional,
                  include
                    | {
                      "$comment"
                        | refs."definitions.$comment"
                        | std.contract.any_of [ Array Dyn, String ]
                        | optional,
                      ..
                    }
                    | optional,
                  ..
                }
                | optional,
              ..
            },
      "definitions.testPresetsItemsV2" =
        Array
            {
              configuration
                | String
                | doc "An optional string. Equivalent to passing --build-config on the command line."
                | optional,
              configurePreset
                | js2n.string.MinLength 1
                | doc "An optional string specifying the name of a configure preset to associate with this test preset. If configurePreset is not specified, it must be inherited from the inherits preset (unless this preset is hidden). The build tree directory is inferred from the configure preset."
                | optional,
              description
                | String
                | doc "An optional string with a human-friendly description of the preset."
                | optional,
              displayName
                | String
                | doc "An optional string with a human-friendly name of the preset."
                | optional,
              environment
                | js2n.record.PropertyNames
                  (std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      js2n.string.Matches "^.+$",
                      { _ | Dyn },
                      Array Dyn
                    ])
                | { _ | js2n.Nullable String }
                | doc "An optional map of environment variables. The key is the variable name (which must not be an empty string). Each variable is set regardless of whether or not a value was given to it by the process's environment. This field supports macro expansion, and environment variables in this map may reference each other, and may be listed in any order, as long as such references do not cause a cycle (for example,if ENV_1 is $env{ENV_2}, ENV_2 may not be $env{ENV_1}.) Environment variables are inherited through the inherits field, and the preset's environment will be the union of its own environment and the environment from all its parents. If multiple presets in this union define the same variable, the standard rules of inherits are applied. Setting a variable to null causes it to not be set, even if a value was inherited from another preset."
                | optional,
              execution
                | {
                  enableFailover
                    | Bool
                    | doc "An optional boolean. If true, equivalent to passing -F on the command line."
                    | optional,
                  interactiveDebugging
                    | Bool
                    | doc "An optional boolean. If true, equivalent to passing --interactive-debug-mode 1 on the command line. If false, equivalent to passing --interactive-debug-mode 0 on the command line."
                    | optional,
                  jobs
                    | std.number.Integer
                    | doc "An optional integer. Equivalent to passing --parallel on the command line."
                    | optional,
                  noTestsAction
                    | std.enum.TagOrString
                    | [| 'ignore, 'error, '"default" |]
                    | doc "An optional string specifying the behavior if no tests are found. Must be one of the following values: \"default\" (equivalent to not passing any value on the command line), \"error\" (equivalent to passing --no-tests=error on the command line), or \"ignore\" (equivalent to passing --no-tests-ignore on the command line)."
                    | optional,
                  repeat
                    | {
                      count
                        | std.number.Integer
                        | doc "A required integer."
                        | optional,
                      mode
                        | std.enum.TagOrString
                        | [| 'after-timeout, 'until-pass, 'until-fail |]
                        | doc "A required string. Must be one of the following values: \"until-fail\", \"until-pass\", or \"after-timeout\"."
                        | optional,
                      ..
                    }
                    | doc "An optional object specifying how to repeat tests. Equivalent to passing --repeat on the command line."
                    | optional,
                  resourceSpecFile
                    | String
                    | doc "An optional string. Equivalent to passing --resource-spec-file on the command line."
                    | optional,
                  scheduleRandom
                    | Bool
                    | doc "An optional boolean. If true, equivalent to passing --schedule-random on the command line."
                    | optional,
                  showOnly
                    | std.enum.TagOrString
                    | [| 'json-v1, 'human |]
                    | doc "An optional string. Equivalent to passing --show-only on the command line. Value must be \"human\" or \"json-v1\"."
                    | optional,
                  stopOnFailure
                    | Bool
                    | doc "An optional boolean. If true, equivalent to passing --stop-on-failure on the command line."
                    | optional,
                  testLoad
                    | std.number.Integer
                    | doc "An optional integer. Equivalent to passing --test-load on the command line."
                    | optional,
                  timeout
                    | std.number.Integer
                    | doc "An optional integer. Equivalent to passing --timeout on the command line."
                    | optional,
                  ..
                }
                | doc "An optional object specifying options for test execution."
                | optional,
              filter
                | {
                  exclude
                    | {
                      fixtures
                        | {
                          any
                            | String
                            | doc "An optional string specifying a regex for text fixtures to exclude from adding any tests. Equivalent to --fixture-exclude-any on the command line."
                            | optional,
                          cleanup
                            | String
                            | doc "An optional string specifying a regex for text fixtures to exclude from adding cleanup tests. Equivalent to --fixture-exclude-cleanup on the command line."
                            | optional,
                          setup
                            | String
                            | doc "An optional string specifying a regex for text fixtures to exclude from adding setup tests. Equivalent to --fixture-exclude-setup on the command line."
                            | optional,
                          ..
                        }
                        | doc "An optional object specifying which fixtures to exclude from adding tests."
                        | optional,
                      label
                        | String
                        | doc "An optional string specifying a regex for test labels. Equivalent to passing --label-exclude on the command line."
                        | optional,
                      name
                        | String
                        | doc "An optional string specifying a regex for test names. Equivalent to passing --exclude-regex on the command line."
                        | optional,
                      ..
                    }
                    | doc "An optional object specifying which tests to exclude."
                    | optional,
                  include
                    | {
                      label
                        | String
                        | doc "An optional string specifying a regex for test labels. Equivalent to passing --label-regex on the command line."
                        | optional,
                      name
                        | String
                        | doc "An optional string specifying a regex for test names. Equivalent to passing --tests-regex on the command line."
                        | optional,
                      useUnion
                        | Bool
                        | doc "An optional boolean. Equivalent to passing --union on the command line."
                        | optional,
                      ..
                    }
                    | doc "An optional object specifying which tests to include."
                    | optional,
                  ..
                }
                | doc "An optional object specifying how to filter the tests to run."
                | optional,
              hidden
                | Bool
                | doc "An optional boolean specifying whether or not a preset should be hidden. If a preset is hidden, it cannot be used in the --preset argument and does not have to have a valid configurePreset, even from inheritance. Hidden presets are intended to be used as a base for other presets to inherit via the inherits field."
                | optional,
              inheritConfigureEnvironment
                | Bool
                | doc "An optional boolean that defaults to true. If true, the environment variables from the associated configure preset are inherited after all inherited test preset environments, but before environment variables explicitly specified in this test preset."
                | optional,
              inherits
                | std.contract.any_of
                  [ js2n.string.MinLength 1, Array (js2n.string.MinLength 1) ]
                | optional,
              name
                | js2n.string.MinLength 1
                | doc "A required string representing the machine-friendly name of the preset. This identifier is used in the --preset argument. There must not be two presets (configure, build, test, package, or workflow) in the union of CMakePresets.json and CMakeUserPresets.json in the same directory with the same name."
                | optional,
              output
                | {
                  debug
                    | Bool
                    | doc "An optional boolean. If true, equivalent to passing --debug on the command line."
                    | optional,
                  labelSummary
                    | Bool
                    | doc "An optional boolean. If false, equivalent to passing --no-label-summary on the command line."
                    | optional,
                  maxFailedTestOutputSize
                    | std.number.Integer
                    | doc "An optional integer specifying the maximum output for failed tests in bytes. Equivalent to passing --test-output-size-failed on the command line."
                    | optional,
                  maxPassedTestOutputSize
                    | std.number.Integer
                    | doc "An optional integer specifying the maximum output for passed tests in bytes. Equivalent to passing --test-output-size-passed on the command line."
                    | optional,
                  maxTestNameWidth
                    | std.number.Integer
                    | doc "An optional integer specifying the maximum width of a test name to output. Equivalent to passing --max-width on the command line."
                    | optional,
                  outputLogFile
                    | String
                    | doc "An optional string specifying a path to a log file. Equivalent to passing --output-log on the command line."
                    | optional,
                  outputOnFailure
                    | Bool
                    | doc "An optional boolean. If true, equivalent to passing --output-on-failure on the command line."
                    | optional,
                  quiet
                    | Bool
                    | doc "An optional boolean. If true, equivalent to passing --quiet on the command line."
                    | optional,
                  shortProgress
                    | Bool
                    | doc "An optional boolean. If true, equivalent to passing --progress on the command line."
                    | optional,
                  subprojectSummary
                    | Bool
                    | doc "An optional boolean. If false, equivalent to passing --no-subproject-summary on the command line."
                    | optional,
                  verbosity
                    | std.enum.TagOrString
                    | [| 'extra, 'verbose, '"default" |]
                    | doc "An optional string specifying verbosity level. Valid values are \"default\" (equivalent to passing no verbosity flags on the command line), \"verbose\" (equivalent to passing --verbose on the command line), and \"extra\" (equivalent to passing --extra-verbose on the command line)."
                    | optional,
                  ..
                }
                | doc "An optional object specifying output options."
                | optional,
              overwriteConfigurationFile
                | Array String
                | doc "An optional array of configuration options to overwrite options specified in the CTest configuration file. Equivalent to passing ``--overwrite`` for each value in the array."
                | optional,
              vendor
                | { _ | Dyn }
                | doc "An optional map containing vendor-specific information. CMake does not interpret the contents of this field except to verify that it is a map if it does exist. However, it should follow the same conventions as the root-level vendor field. If vendors use their own per-preset vendor field, they should implement inheritance in a sensible manner when appropriate."
                | optional,
              ..
            },
      "definitions.testPresetsItemsV3" = Array Dyn,
      "definitions.testPresetsItemsV5" =
        Array
            {
              output
                | {
                  testOutputTruncation
                    | std.enum.TagOrString
                    | [| 'head, 'middle, 'tail |]
                    | doc "An optional string specifying the test output truncation mode. Equivalent to passing --test-output-truncation on the command line. Must be one of the following values: \"tail\", \"middle\", or \"head\"."
                    | optional,
                  ..
                }
                | doc "An optional object specifying output options."
                | optional,
              ..
            },
      "definitions.testPresetsItemsV6" =
        Array
            {
              output
                | {
                  outputJUnitFile
                    | String
                    | doc "An optional string specifying a path to a JUnit file. Equivalent to passing --output-junit on the command line."
                    | optional,
                  ..
                }
                | doc "An optional object specifying output options."
                | optional,
              ..
            },
      "definitions.testPresetsV10" =
        std.contract.Sequence
            [
              Array
                {
                  "$comment" | js2n.Always | optional,
                  condition | refs."definitions.topConditionV10" | optional,
                  configuration | js2n.Always | optional,
                  configurePreset | js2n.Always | optional,
                  description | js2n.Always | optional,
                  displayName | js2n.Always | optional,
                  environment | js2n.Always | optional,
                  execution
                    | {
                      "$comment" | js2n.Always | optional,
                      enableFailover | js2n.Always | optional,
                      interactiveDebugging | js2n.Always | optional,
                      jobs | js2n.Always | optional,
                      noTestsAction | js2n.Always | optional,
                      repeat
                        | {
                          "$comment" | js2n.Always | optional,
                          count | js2n.Always,
                          mode | js2n.Always,
                        }
                        | optional,
                      resourceSpecFile | js2n.Always | optional,
                      scheduleRandom | js2n.Always | optional,
                      showOnly | js2n.Always | optional,
                      stopOnFailure | js2n.Always | optional,
                      testLoad | js2n.Always | optional,
                      timeout | js2n.Always | optional,
                    }
                    | optional,
                  filter
                    | {
                      "$comment" | js2n.Always | optional,
                      exclude
                        | {
                          "$comment" | js2n.Always | optional,
                          fixtures
                            | {
                              "$comment" | js2n.Always | optional,
                              any | js2n.Always | optional,
                              cleanup | js2n.Always | optional,
                              setup | js2n.Always | optional,
                            }
                            | optional,
                          label | js2n.Always | optional,
                          name | js2n.Always | optional,
                        }
                        | optional,
                      include
                        | {
                          "$comment" | js2n.Always | optional,
                          index
                            | refs."definitions.testPresetsFilterIncludeIndexV10"
                            | optional,
                          label | js2n.Always | optional,
                          name | js2n.Always | optional,
                          useUnion | js2n.Always | optional,
                        }
                        | optional,
                    }
                    | optional,
                  hidden | js2n.Always | optional,
                  inheritConfigureEnvironment | js2n.Always | optional,
                  inherits | js2n.Always | optional,
                  name | js2n.Always,
                  output
                    | {
                      debug | js2n.Always | optional,
                      labelSummary | js2n.Always | optional,
                      maxFailedTestOutputSize | js2n.Always | optional,
                      maxPassedTestOutputSize | js2n.Always | optional,
                      maxTestNameWidth | js2n.Always | optional,
                      outputJUnitFile | js2n.Always | optional,
                      outputLogFile | js2n.Always | optional,
                      outputOnFailure | js2n.Always | optional,
                      quiet | js2n.Always | optional,
                      shortProgress | js2n.Always | optional,
                      subprojectSummary | js2n.Always | optional,
                      testOutputTruncation | js2n.Always | optional,
                      verbosity | js2n.Always | optional,
                    }
                    | optional,
                  overwriteConfigurationFile | js2n.Always | optional,
                  vendor | js2n.Always | optional,
                },
              refs."definitions.testPresetsItemsV10",
              refs."definitions.testPresetsItemsV6",
              refs."definitions.testPresetsItemsV5",
              refs."definitions.testPresetsItemsV3",
              refs."definitions.testPresetsItemsV2"
            ],
      "definitions.testPresetsV2" =
        std.contract.Sequence
            [
              Array
                {
                  configuration | js2n.Always | optional,
                  configurePreset | js2n.Always | optional,
                  description | js2n.Always | optional,
                  displayName | js2n.Always | optional,
                  environment | js2n.Always | optional,
                  execution
                    | {
                      enableFailover | js2n.Always | optional,
                      interactiveDebugging | js2n.Always | optional,
                      jobs | js2n.Always | optional,
                      noTestsAction | js2n.Always | optional,
                      repeat
                        | { count | js2n.Always, mode | js2n.Always, }
                        | optional,
                      resourceSpecFile | js2n.Always | optional,
                      scheduleRandom | js2n.Always | optional,
                      showOnly | js2n.Always | optional,
                      stopOnFailure | js2n.Always | optional,
                      testLoad | js2n.Always | optional,
                      timeout | js2n.Always | optional,
                    }
                    | optional,
                  filter
                    | {
                      exclude
                        | {
                          fixtures
                            | {
                              any | js2n.Always | optional,
                              cleanup | js2n.Always | optional,
                              setup | js2n.Always | optional,
                            }
                            | optional,
                          label | js2n.Always | optional,
                          name | js2n.Always | optional,
                        }
                        | optional,
                      include
                        | {
                          index
                            | refs."definitions.testPresetsFilterIncludeIndexV2"
                            | optional,
                          label | js2n.Always | optional,
                          name | js2n.Always | optional,
                          useUnion | js2n.Always | optional,
                        }
                        | optional,
                    }
                    | optional,
                  hidden | js2n.Always | optional,
                  inheritConfigureEnvironment | js2n.Always | optional,
                  inherits | js2n.Always | optional,
                  name | js2n.Always,
                  output
                    | {
                      debug | js2n.Always | optional,
                      labelSummary | js2n.Always | optional,
                      maxFailedTestOutputSize | js2n.Always | optional,
                      maxPassedTestOutputSize | js2n.Always | optional,
                      maxTestNameWidth | js2n.Always | optional,
                      outputLogFile | js2n.Always | optional,
                      outputOnFailure | js2n.Always | optional,
                      quiet | js2n.Always | optional,
                      shortProgress | js2n.Always | optional,
                      subprojectSummary | js2n.Always | optional,
                      verbosity | js2n.Always | optional,
                    }
                    | optional,
                  overwriteConfigurationFile | js2n.Always | optional,
                  vendor | js2n.Always | optional,
                },
              refs."definitions.testPresetsItemsV2"
            ],
      "definitions.testPresetsV3" =
        std.contract.Sequence
            [
              Array
                {
                  condition | refs."definitions.topConditionV3" | optional,
                  configuration | js2n.Always | optional,
                  configurePreset | js2n.Always | optional,
                  description | js2n.Always | optional,
                  displayName | js2n.Always | optional,
                  environment | js2n.Always | optional,
                  execution
                    | {
                      enableFailover | js2n.Always | optional,
                      interactiveDebugging | js2n.Always | optional,
                      jobs | js2n.Always | optional,
                      noTestsAction | js2n.Always | optional,
                      repeat
                        | { count | js2n.Always, mode | js2n.Always, }
                        | optional,
                      resourceSpecFile | js2n.Always | optional,
                      scheduleRandom | js2n.Always | optional,
                      showOnly | js2n.Always | optional,
                      stopOnFailure | js2n.Always | optional,
                      testLoad | js2n.Always | optional,
                      timeout | js2n.Always | optional,
                    }
                    | optional,
                  filter
                    | {
                      exclude
                        | {
                          fixtures
                            | {
                              any | js2n.Always | optional,
                              cleanup | js2n.Always | optional,
                              setup | js2n.Always | optional,
                            }
                            | optional,
                          label | js2n.Always | optional,
                          name | js2n.Always | optional,
                        }
                        | optional,
                      include
                        | {
                          index
                            | refs."definitions.testPresetsFilterIncludeIndexV2"
                            | optional,
                          label | js2n.Always | optional,
                          name | js2n.Always | optional,
                          useUnion | js2n.Always | optional,
                        }
                        | optional,
                    }
                    | optional,
                  hidden | js2n.Always | optional,
                  inheritConfigureEnvironment | js2n.Always | optional,
                  inherits | js2n.Always | optional,
                  name | js2n.Always,
                  output
                    | {
                      debug | js2n.Always | optional,
                      labelSummary | js2n.Always | optional,
                      maxFailedTestOutputSize | js2n.Always | optional,
                      maxPassedTestOutputSize | js2n.Always | optional,
                      maxTestNameWidth | js2n.Always | optional,
                      outputLogFile | js2n.Always | optional,
                      outputOnFailure | js2n.Always | optional,
                      quiet | js2n.Always | optional,
                      shortProgress | js2n.Always | optional,
                      subprojectSummary | js2n.Always | optional,
                      verbosity | js2n.Always | optional,
                    }
                    | optional,
                  overwriteConfigurationFile | js2n.Always | optional,
                  vendor | js2n.Always | optional,
                },
              refs."definitions.testPresetsItemsV3",
              refs."definitions.testPresetsItemsV2"
            ],
      "definitions.testPresetsV5" =
        std.contract.Sequence
            [
              Array
                {
                  condition | refs."definitions.topConditionV3" | optional,
                  configuration | js2n.Always | optional,
                  configurePreset | js2n.Always | optional,
                  description | js2n.Always | optional,
                  displayName | js2n.Always | optional,
                  environment | js2n.Always | optional,
                  execution
                    | {
                      enableFailover | js2n.Always | optional,
                      interactiveDebugging | js2n.Always | optional,
                      jobs | js2n.Always | optional,
                      noTestsAction | js2n.Always | optional,
                      repeat
                        | { count | js2n.Always, mode | js2n.Always, }
                        | optional,
                      resourceSpecFile | js2n.Always | optional,
                      scheduleRandom | js2n.Always | optional,
                      showOnly | js2n.Always | optional,
                      stopOnFailure | js2n.Always | optional,
                      testLoad | js2n.Always | optional,
                      timeout | js2n.Always | optional,
                    }
                    | optional,
                  filter
                    | {
                      exclude
                        | {
                          fixtures
                            | {
                              any | js2n.Always | optional,
                              cleanup | js2n.Always | optional,
                              setup | js2n.Always | optional,
                            }
                            | optional,
                          label | js2n.Always | optional,
                          name | js2n.Always | optional,
                        }
                        | optional,
                      include
                        | {
                          index
                            | refs."definitions.testPresetsFilterIncludeIndexV2"
                            | optional,
                          label | js2n.Always | optional,
                          name | js2n.Always | optional,
                          useUnion | js2n.Always | optional,
                        }
                        | optional,
                    }
                    | optional,
                  hidden | js2n.Always | optional,
                  inheritConfigureEnvironment | js2n.Always | optional,
                  inherits | js2n.Always | optional,
                  name | js2n.Always,
                  output
                    | {
                      debug | js2n.Always | optional,
                      labelSummary | js2n.Always | optional,
                      maxFailedTestOutputSize | js2n.Always | optional,
                      maxPassedTestOutputSize | js2n.Always | optional,
                      maxTestNameWidth | js2n.Always | optional,
                      outputLogFile | js2n.Always | optional,
                      outputOnFailure | js2n.Always | optional,
                      quiet | js2n.Always | optional,
                      shortProgress | js2n.Always | optional,
                      subprojectSummary | js2n.Always | optional,
                      testOutputTruncation | js2n.Always | optional,
                      verbosity | js2n.Always | optional,
                    }
                    | optional,
                  overwriteConfigurationFile | js2n.Always | optional,
                  vendor | js2n.Always | optional,
                },
              refs."definitions.testPresetsItemsV5",
              refs."definitions.testPresetsItemsV3",
              refs."definitions.testPresetsItemsV2"
            ],
      "definitions.testPresetsV6" =
        std.contract.Sequence
            [
              Array
                {
                  condition | refs."definitions.topConditionV3" | optional,
                  configuration | js2n.Always | optional,
                  configurePreset | js2n.Always | optional,
                  description | js2n.Always | optional,
                  displayName | js2n.Always | optional,
                  environment | js2n.Always | optional,
                  execution
                    | {
                      enableFailover | js2n.Always | optional,
                      interactiveDebugging | js2n.Always | optional,
                      jobs | js2n.Always | optional,
                      noTestsAction | js2n.Always | optional,
                      repeat
                        | { count | js2n.Always, mode | js2n.Always, }
                        | optional,
                      resourceSpecFile | js2n.Always | optional,
                      scheduleRandom | js2n.Always | optional,
                      showOnly | js2n.Always | optional,
                      stopOnFailure | js2n.Always | optional,
                      testLoad | js2n.Always | optional,
                      timeout | js2n.Always | optional,
                    }
                    | optional,
                  filter
                    | {
                      exclude
                        | {
                          fixtures
                            | {
                              any | js2n.Always | optional,
                              cleanup | js2n.Always | optional,
                              setup | js2n.Always | optional,
                            }
                            | optional,
                          label | js2n.Always | optional,
                          name | js2n.Always | optional,
                        }
                        | optional,
                      include
                        | {
                          index
                            | refs."definitions.testPresetsFilterIncludeIndexV2"
                            | optional,
                          label | js2n.Always | optional,
                          name | js2n.Always | optional,
                          useUnion | js2n.Always | optional,
                        }
                        | optional,
                    }
                    | optional,
                  hidden | js2n.Always | optional,
                  inheritConfigureEnvironment | js2n.Always | optional,
                  inherits | js2n.Always | optional,
                  name | js2n.Always,
                  output
                    | {
                      debug | js2n.Always | optional,
                      labelSummary | js2n.Always | optional,
                      maxFailedTestOutputSize | js2n.Always | optional,
                      maxPassedTestOutputSize | js2n.Always | optional,
                      maxTestNameWidth | js2n.Always | optional,
                      outputJUnitFile | js2n.Always | optional,
                      outputLogFile | js2n.Always | optional,
                      outputOnFailure | js2n.Always | optional,
                      quiet | js2n.Always | optional,
                      shortProgress | js2n.Always | optional,
                      subprojectSummary | js2n.Always | optional,
                      testOutputTruncation | js2n.Always | optional,
                      verbosity | js2n.Always | optional,
                    }
                    | optional,
                  overwriteConfigurationFile | js2n.Always | optional,
                  vendor | js2n.Always | optional,
                },
              refs."definitions.testPresetsItemsV6",
              refs."definitions.testPresetsItemsV5",
              refs."definitions.testPresetsItemsV3",
              refs."definitions.testPresetsItemsV2"
            ],
      "definitions.topConditionAsNullV3" = js2n.Null,
      "definitions.topConditionV10" =
        std.contract.any_of
            [
              refs."definitions.conditionV10",
              std.contract.Sequence
                [ refs."definitions.topConditionAsNullV3", js2n.Null ]
            ],
      "definitions.topConditionV3" =
        std.contract.any_of
            [
              refs."definitions.conditionV3",
              std.contract.Sequence
                [ refs."definitions.topConditionAsNullV3", js2n.Null ]
            ],
      "definitions.vendor" = { _ | Dyn },
      "definitions.workflowPresetsItemsV10" =
        Array
            {
              "$comment"
                | refs."definitions.$comment"
                | std.contract.any_of [ Array Dyn, String ]
                | optional,
              steps
                | Array
                  {
                    "$comment"
                      | refs."definitions.$comment"
                      | std.contract.any_of [ Array Dyn, String ]
                      | optional,
                    ..
                  }
                | optional,
              ..
            },
      "definitions.workflowPresetsItemsV6" =
        Array
            {
              description
                | String
                | doc "An optional string with a human-friendly description of the preset."
                | optional,
              displayName
                | String
                | doc "An optional string with a human-friendly name of the preset."
                | optional,
              name
                | js2n.string.MinLength 1
                | doc "A required string representing the machine-friendly name of the preset. This identifier is used in the --preset argument. There must not be two presets (configure, build, test, package, or workflow) in the union of CMakePresets.json and CMakeUserPresets.json in the same directory with the same name."
                | optional,
              steps
                | Array
                  {
                    name
                      | js2n.string.MinLength 1
                      | doc "A required string representing the name of the configure, build, test, or package preset to run as this workflow step."
                      | optional,
                    type
                      | std.enum.TagOrString
                      | [| 'package, 'test, 'build, 'configure |]
                      | doc "A required string. The first step must be configure. Subsequent steps must be either build, test, or package."
                      | optional,
                    ..
                  }
                | doc "A required array of objects describing the steps of the workflow. The first step must be a configure preset, and all subsequent steps must be non-configure presets whose configurePreset field matches the starting configure preset."
                | optional,
              vendor
                | { _ | Dyn }
                | doc "An optional map containing vendor-specific information. CMake does not interpret the contents of this field except to verify that it is a map if it does exist. However, it should follow the same conventions as the root-level vendor field."
                | optional,
              ..
            },
      "definitions.workflowPresetsV10" =
        std.contract.Sequence
            [
              Array
                {
                  "$comment" | js2n.Always | optional,
                  description | js2n.Always | optional,
                  displayName | js2n.Always | optional,
                  name | js2n.Always,
                  steps
                    | Array
                      {
                        "$comment" | js2n.Always | optional,
                        name | js2n.Always,
                        type | js2n.Always,
                      },
                  vendor | js2n.Always | optional,
                },
              refs."definitions.workflowPresetsItemsV10",
              refs."definitions.workflowPresetsItemsV6"
            ],
      "definitions.workflowPresetsV6" =
        std.contract.Sequence
            [
              Array
                {
                  description | js2n.Always | optional,
                  displayName | js2n.Always | optional,
                  name | js2n.Always,
                  steps | Array { name | js2n.Always, type | js2n.Always, },
                  vendor | js2n.Always | optional,
                },
              refs."definitions.workflowPresetsItemsV6"
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
                js2n.record.Record
                  {
                    additional = 'None,
                    patterns = {},
                    properties =
                      {
                          cmakeMinimumRequired =
                            std.contract.Sequence
                                [
                                  refs."definitions.cmakeMinimumRequiredV1",
                                  { _ | Dyn }
                                ],
                          configurePresets =
                            std.contract.Sequence
                                [
                                  refs."definitions.configurePresetsV1",
                                  Array Dyn
                                ],
                          vendor = refs."definitions.vendor",
                          version = js2n.Const 1,
                        },
                    required = {},
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
                    additional = 'None,
                    patterns = {},
                    properties =
                      {
                          buildPresets =
                            std.contract.Sequence
                                [
                                  refs."definitions.buildPresetsV2",
                                  Array Dyn
                                ],
                          cmakeMinimumRequired =
                            std.contract.Sequence
                                [
                                  refs."definitions.cmakeMinimumRequiredV1",
                                  { _ | Dyn }
                                ],
                          configurePresets =
                            std.contract.Sequence
                                [
                                  refs."definitions.configurePresetsV1",
                                  Array Dyn
                                ],
                          testPresets =
                            std.contract.Sequence
                                [ refs."definitions.testPresetsV2", Array Dyn ],
                          vendor = refs."definitions.vendor",
                          version = js2n.Const 2,
                        },
                    required = {},
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
                    additional = 'None,
                    patterns = {},
                    properties =
                      {
                          buildPresets =
                            std.contract.Sequence
                                [
                                  refs."definitions.buildPresetsV3",
                                  Array Dyn
                                ],
                          cmakeMinimumRequired =
                            std.contract.Sequence
                                [
                                  refs."definitions.cmakeMinimumRequiredV1",
                                  { _ | Dyn }
                                ],
                          configurePresets =
                            std.contract.Sequence
                                [
                                  refs."definitions.configurePresetsV3",
                                  Array Dyn
                                ],
                          testPresets =
                            std.contract.Sequence
                                [ refs."definitions.testPresetsV3", Array Dyn ],
                          vendor = refs."definitions.vendor",
                          version = js2n.Const 3,
                        },
                    required = {},
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
                    additional = 'None,
                    patterns = {},
                    properties =
                      {
                          buildPresets =
                            std.contract.Sequence
                                [
                                  refs."definitions.buildPresetsV4",
                                  Array Dyn
                                ],
                          cmakeMinimumRequired =
                            std.contract.Sequence
                                [
                                  refs."definitions.cmakeMinimumRequiredV1",
                                  { _ | Dyn }
                                ],
                          configurePresets =
                            std.contract.Sequence
                                [
                                  refs."definitions.configurePresetsV3",
                                  Array Dyn
                                ],
                          include = refs."definitions.include",
                          testPresets =
                            std.contract.Sequence
                                [ refs."definitions.testPresetsV3", Array Dyn ],
                          vendor = refs."definitions.vendor",
                          version = js2n.Const 4,
                        },
                    required = {},
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
                    additional = 'None,
                    patterns = {},
                    properties =
                      {
                          buildPresets =
                            std.contract.Sequence
                                [
                                  refs."definitions.buildPresetsV4",
                                  Array Dyn
                                ],
                          cmakeMinimumRequired =
                            std.contract.Sequence
                                [
                                  refs."definitions.cmakeMinimumRequiredV1",
                                  { _ | Dyn }
                                ],
                          configurePresets =
                            std.contract.Sequence
                                [
                                  refs."definitions.configurePresetsV3",
                                  Array Dyn
                                ],
                          include = refs."definitions.include",
                          testPresets =
                            std.contract.Sequence
                                [ refs."definitions.testPresetsV5", Array Dyn ],
                          vendor = refs."definitions.vendor",
                          version = js2n.Const 5,
                        },
                    required = {},
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
                    additional = 'None,
                    patterns = {},
                    properties =
                      {
                          buildPresets =
                            std.contract.Sequence
                                [
                                  refs."definitions.buildPresetsV4",
                                  Array Dyn
                                ],
                          cmakeMinimumRequired =
                            std.contract.Sequence
                                [
                                  refs."definitions.cmakeMinimumRequiredV1",
                                  { _ | Dyn }
                                ],
                          configurePresets =
                            std.contract.Sequence
                                [
                                  refs."definitions.configurePresetsV3",
                                  Array Dyn
                                ],
                          include = refs."definitions.include",
                          packagePresets =
                            std.contract.Sequence
                                [
                                  refs."definitions.packagePresetsV6",
                                  Array Dyn
                                ],
                          testPresets =
                            std.contract.Sequence
                                [ refs."definitions.testPresetsV6", Array Dyn ],
                          vendor = refs."definitions.vendor",
                          version = js2n.Const 6,
                          workflowPresets =
                            std.contract.Sequence
                                [
                                  refs."definitions.workflowPresetsV6",
                                  Array Dyn
                                ],
                        },
                    required = {},
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
                    additional = 'None,
                    patterns = {},
                    properties =
                      {
                          buildPresets =
                            std.contract.Sequence
                                [
                                  refs."definitions.buildPresetsV4",
                                  Array Dyn
                                ],
                          cmakeMinimumRequired =
                            std.contract.Sequence
                                [
                                  refs."definitions.cmakeMinimumRequiredV1",
                                  { _ | Dyn }
                                ],
                          configurePresets =
                            std.contract.Sequence
                                [
                                  refs."definitions.configurePresetsV7",
                                  Array Dyn
                                ],
                          include = refs."definitions.include",
                          packagePresets =
                            std.contract.Sequence
                                [
                                  refs."definitions.packagePresetsV6",
                                  Array Dyn
                                ],
                          testPresets =
                            std.contract.Sequence
                                [ refs."definitions.testPresetsV6", Array Dyn ],
                          vendor = refs."definitions.vendor",
                          version = js2n.Const 7,
                          workflowPresets =
                            std.contract.Sequence
                                [
                                  refs."definitions.workflowPresetsV6",
                                  Array Dyn
                                ],
                        },
                    required = {},
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
                    additional = 'None,
                    patterns = {},
                    properties =
                      {
                          "$schema" = refs."definitions.$schema",
                          buildPresets =
                            std.contract.Sequence
                                [
                                  refs."definitions.buildPresetsV4",
                                  Array Dyn
                                ],
                          cmakeMinimumRequired =
                            std.contract.Sequence
                                [
                                  refs."definitions.cmakeMinimumRequiredV1",
                                  { _ | Dyn }
                                ],
                          configurePresets =
                            std.contract.Sequence
                                [
                                  refs."definitions.configurePresetsV7",
                                  Array Dyn
                                ],
                          include = refs."definitions.include",
                          packagePresets =
                            std.contract.Sequence
                                [
                                  refs."definitions.packagePresetsV6",
                                  Array Dyn
                                ],
                          testPresets =
                            std.contract.Sequence
                                [ refs."definitions.testPresetsV6", Array Dyn ],
                          vendor = refs."definitions.vendor",
                          version = js2n.Const 8,
                          workflowPresets =
                            std.contract.Sequence
                                [
                                  refs."definitions.workflowPresetsV6",
                                  Array Dyn
                                ],
                        },
                    required = {},
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
                    additional = 'None,
                    patterns = {},
                    properties =
                      {
                          "$schema" = refs."definitions.$schema",
                          buildPresets =
                            std.contract.Sequence
                                [
                                  refs."definitions.buildPresetsV4",
                                  Array Dyn
                                ],
                          cmakeMinimumRequired =
                            std.contract.Sequence
                                [
                                  refs."definitions.cmakeMinimumRequiredV1",
                                  { _ | Dyn }
                                ],
                          configurePresets =
                            std.contract.Sequence
                                [
                                  refs."definitions.configurePresetsV7",
                                  Array Dyn
                                ],
                          include = refs."definitions.include",
                          packagePresets =
                            std.contract.Sequence
                                [
                                  refs."definitions.packagePresetsV6",
                                  Array Dyn
                                ],
                          testPresets =
                            std.contract.Sequence
                                [ refs."definitions.testPresetsV6", Array Dyn ],
                          vendor = refs."definitions.vendor",
                          version = js2n.Const 9,
                          workflowPresets =
                            std.contract.Sequence
                                [
                                  refs."definitions.workflowPresetsV6",
                                  Array Dyn
                                ],
                        },
                    required = {},
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
                    additional = 'None,
                    patterns = {},
                    properties =
                      {
                          "$comment" = refs."definitions.$comment",
                          "$schema" = refs."definitions.$schema",
                          buildPresets =
                            std.contract.Sequence
                                [
                                  refs."definitions.buildPresetsV10",
                                  Array Dyn
                                ],
                          cmakeMinimumRequired =
                            std.contract.Sequence
                                [
                                  refs."definitions.cmakeMinimumRequiredV10",
                                  { _ | Dyn }
                                ],
                          configurePresets =
                            std.contract.Sequence
                                [
                                  refs."definitions.configurePresetsV10",
                                  Array Dyn
                                ],
                          include = refs."definitions.include",
                          packagePresets =
                            std.contract.Sequence
                                [
                                  refs."definitions.packagePresetsV10",
                                  Array Dyn
                                ],
                          testPresets =
                            std.contract.Sequence
                                [
                                  refs."definitions.testPresetsV10",
                                  Array Dyn
                                ],
                          vendor = refs."definitions.vendor",
                          version = js2n.Const 10,
                          workflowPresets =
                            std.contract.Sequence
                                [
                                  refs."definitions.workflowPresetsV10",
                                  Array Dyn
                                ],
                        },
                    required = {},
                  },
                Array Dyn
              ]
          ],
        js2n.record.Required [ "version" ]
      ]