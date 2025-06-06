# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.platformValues" =
        std.contract.Sequence
            [
              js2n.array.UniqueItems,
              Array (
                std.contract.Sequence
                  [
                    std.enum.TagOrString,
                    [|
                      'XboxOne,
                      'WindowsStandalone64,
                      'WindowsStandalone32,
                      'WebGL,
                      'WSA,
                      'tvOS,
                      'Switch,
                      'Stadia,
                      'PSVita,
                      'PS4,
                      'Nintendo3DS,
                      'macOSStandalone,
                      'Lumin,
                      'LinuxStandaloneUniversal,
                      'LinuxStandalone64,
                      'LinuxStandalone32,
                      'iOS,
                      'Editor,
                      'Android
                    |]
                  ]
              )
            ],
    }
    in
  std.contract.Sequence
      [
        std.contract.any_of
          [
            js2n.record.Record
              {
                additional = 'Some Dyn,
                patterns = {},
                properties =
                  {
                      excludePlatforms =
                        std.contract.any_of
                            [
                              js2n.Null,
                              Bool,
                              Number,
                              String,
                              { _ | Dyn },
                              js2n.array.MaxItems 0
                            ],
                      includePlatforms =
                        std.contract.any_of
                            [
                              js2n.Null,
                              Bool,
                              Number,
                              String,
                              { _ | Dyn },
                              js2n.array.MinItems 1
                            ],
                    },
                required = {},
              },
            js2n.record.Record
              {
                additional = 'Some Dyn,
                patterns = {},
                properties =
                  {
                      excludePlatforms =
                        std.contract.any_of
                            [
                              js2n.Null,
                              Bool,
                              Number,
                              String,
                              { _ | Dyn },
                              js2n.array.MinItems 1
                            ],
                      includePlatforms =
                        std.contract.any_of
                            [
                              js2n.Null,
                              Bool,
                              Number,
                              String,
                              { _ | Dyn },
                              js2n.array.MaxItems 0
                            ],
                    },
                required = {},
              },
            js2n.record.Record
              {
                additional = 'Some Dyn,
                patterns = {},
                properties =
                  {
                      excludePlatforms =
                        std.contract.any_of
                            [
                              js2n.Null,
                              Bool,
                              Number,
                              String,
                              { _ | Dyn },
                              js2n.array.MaxItems 0
                            ],
                      includePlatforms =
                        std.contract.any_of
                            [
                              js2n.Null,
                              Bool,
                              Number,
                              String,
                              { _ | Dyn },
                              js2n.array.MaxItems 0
                            ],
                    },
                required = {},
              }
          ],
        {
          allowUnsafeCode | Bool | doc "Allow unsafe code" | optional,
          autoReferenced
            | Bool
            | doc "When true, this assembly definition is automatically referenced by predefined assemblies (Assembly-CSharp, Assembly-CSharp-firstpass, etc.)"
            | optional,
          defineConstraints
            | js2n.array.UniqueItems
            | doc "A list of the C# compiler define symbols that must evaluate to true in order for the assembly to be compiled or referenced. Absence of a symbol can be checked with a bang symbol (!DEFINE)"
            | optional,
          excludePlatforms
            | refs."definitions.platformValues"
            | Array Dyn
            | doc "Platforms that are explicitly not targeted"
            | optional,
          includePlatforms
            | refs."definitions.platformValues"
            | Array Dyn
            | doc "Platforms to target"
            | optional,
          name
            | js2n.string.MinLength 1
            | doc "The name of the assembly being defined",
          noEngineReferences
            | Bool
            | doc "When true, no references to UnityEngine or UnityEditor will be added to this assembly project"
            | optional,
          optionalUnityReferences
            | js2n.array.UniqueItems
            | Array (
              std.contract.Sequence
                [ std.enum.TagOrString, [| 'TestAssemblies |] ]
            )
            | doc "Additional optional Unity features to reference"
            | optional,
          overrideReferences
            | Bool
            | doc "When true, any references to precompiled assembly assets are manually chosen. When false, all precompiled assembly assets are automatically referenced"
            | optional,
          precompiledReferences
            | js2n.array.UniqueItems
            | doc "A list of precompiled assembly assets that will be referenced. Only valid when overrideReferences is true"
            | optional,
          references
            | js2n.array.UniqueItems
            | Array (js2n.string.MinLength 1)
            | doc "A list of assembly names or assembly asset GUIDs to reference"
            | optional,
          rootNamespace
            | String
            | doc "The root namespace of the assembly. Requires Unity 2020.2"
            | optional,
          versionDefines
            | js2n.array.UniqueItems
            | Array
              {
                define
                  | String
                  | doc "The name of the define that is added to the project file when expression evaluates to true",
                expression
                  | String
                  | doc "The semantic version range of the chosen package or module",
                name
                  | String
                  | doc "The package or module that will provide the version to be checked in the expression",
                ..
              }
            | doc "A set of expressions that will define a symbol in the C# project if a package or module version matches the given expression"
            | optional,
          ..
        }
      ]