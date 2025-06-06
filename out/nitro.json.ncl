# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      android
        | {
          androidCxxLibName
            | js2n.string.MinLength 1
            | doc "Represents the name of the Android C++ library (aka name in CMakeLists.txt `add_library(..)`). This will be loaded via `System.loadLibrary(...)`.",
          androidNamespace
            | js2n.array.MinItems 1
            | Array String
            | doc "Represents the Android namespace ('package') of the module that will be generated. This can have multiple sub-namespaces, and is always relative to `com.margelo.nitro`.",
          ..
        }
        | doc "Required: Android configuration",
      autolinking
        | js2n.record.Record
          {
            additional = 'Some Dyn,
            patterns =
              {
                  "^.*$" =
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
                                      properties = { cpp = String, },
                                      required = { cpp = true, },
                                    },
                                  Array Dyn
                                ],
                              std.contract.any_of
                                [
                                  js2n.Null,
                                  Bool,
                                  Number,
                                  String,
                                  std.contract.Sequence
                                    [
                                      js2n.record.MinProperties 1,
                                      js2n.record.Record
                                        {
                                          additional = 'None,
                                          patterns = {},
                                          properties =
                                            {
                                                kotlin = String,
                                                swift = String,
                                              },
                                          required = {},
                                        }
                                    ],
                                  Array Dyn
                                ]
                            ],
                          { _ | Dyn }
                        ],
                },
            properties = {},
            required = {},
          }
        | doc "Configures the code that gets generated for autolinking (registering) Hybrid Object constructors.",
      cxxNamespace
        | js2n.array.MinItems 1
        | Array String
        | doc "Represents the C++ namespace of the module that will be generated. This can have multiple sub-namespaces, and is always relative to `margelo::nitro`.",
      gitAttributesGeneratedFlag
        | Bool
        | doc "Configures whether all nitro-generated files should be marked as `linguist-generated` for GitHub. This excludes generated files from diffing and language statistics."
        | optional,
      ignorePaths
        | Array String
        | doc "A list of paths relative to the project directory that should be ignored by nitrogen. Nitrogen will not look for `.nitro.ts` files in these directories."
        | optional,
      ios
        | {
          iosModuleName
            | js2n.string.MinLength 1
            | doc "Represents the iOS module name of the module that will be generated This will be used to generate Swift bridges, as those are always namespaced within the clang module. If you are using CocoaPods, this should be the Pod name defined in the `.podspec`.",
          ..
        }
        | doc "Required: iOS configuration",
      ..
    }