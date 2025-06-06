# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "then.else.then.definitions.metadata" =
        { copyright | String | optional, name | String, },
      "then.else.then.definitions.metadata-3.0" =
        {
            copyright | String | optional,
            name
              | js2n.string.MaxLength 80
              | js2n.string.MinLength 3
              | js2n.string.Matches "^(?:@[0-9a-z-_.]+\\/)?[a-z][0-9a-z-_.]*$"
              | doc "Unique identifier for the extension, for example: ui5-task-fearless-rock",
          },
      "then.else.then.else.else.else.then.definitions.shims" =
        {
            collections
              | {
                _ | {
                  modules
                    | { _ | String }
                    | js2n.record.FieldsMatch ".+"
                    | optional,
                }
              }
              | js2n.record.FieldsMatch ".+"
              | optional,
            configurations
              | { _ | { _ | Dyn } }
              | js2n.record.FieldsMatch ".+"
              | optional,
            dependencies
              | { _ | Array String }
              | js2n.record.FieldsMatch ".+"
              | optional,
          },
      "then.else.then.else.else.then.definitions.middleware" =
        { path | String | optional, },
      "then.else.then.else.then.definitions.task" =
        { path | String | optional, },
      "then.then.definitions.builder-bundles" =
        Array
            {
              bundleDefinition
                | refs."then.then.definitions.builder-bundles-bundleDefinition"
                | { _ | Dyn }
                | optional,
              bundleOptions
                | refs."then.then.definitions.builder-bundles-bundleOptions"
                | { _ | Dyn }
                | optional,
            },
      "then.then.definitions.builder-bundles-2.4" =
        Array
            {
              bundleDefinition
                | refs."then.then.definitions.builder-bundles-bundleDefinition-2.4"
                | { _ | Dyn }
                | optional,
              bundleOptions
                | refs."then.then.definitions.builder-bundles-bundleOptions"
                | { _ | Dyn }
                | optional,
            },
      "then.then.definitions.builder-bundles-3.0" =
        Array
            {
              bundleDefinition
                | refs."then.then.definitions.builder-bundles-bundleDefinition-2.4"
                | { _ | Dyn }
                | optional,
              bundleOptions
                | refs."then.then.definitions.builder-bundles-bundleOptions-3.0"
                | { _ | Dyn }
                | optional,
            },
      "then.then.definitions.builder-bundles-3.2" =
        Array
            {
              bundleDefinition
                | refs."then.then.definitions.builder-bundles-bundleDefinition-3.2"
                | { _ | Dyn }
                | optional,
              bundleOptions
                | refs."then.then.definitions.builder-bundles-bundleOptions-3.0"
                | { _ | Dyn }
                | optional,
            },
      "then.then.definitions.builder-bundles-4.0" =
        Array
            {
              bundleDefinition
                | refs."then.then.definitions.builder-bundles-bundleDefinition-4.0"
                | { _ | Dyn }
                | optional,
              bundleOptions
                | refs."then.then.definitions.builder-bundles-bundleOptions-4.0"
                | { _ | Dyn }
                | optional,
            },
      "then.then.definitions.builder-bundles-bundleDefinition" =
        {
            defaultFileTypes | Array String | optional,
            name | String,
            sections
              | Array
                {
                  declareRawModules | Bool | optional,
                  filters | Array String,
                  mode
                    | std.enum.TagOrString
                    | [| 'provided, 'require, 'preload, 'raw |],
                  name | String | optional,
                  renderer | Bool | optional,
                  resolve | Bool | optional,
                  resolveConditional | Bool | optional,
                  sort | Bool | optional,
                }
              | optional,
          },
      "then.then.definitions.builder-bundles-bundleDefinition-2.4" =
        {
            defaultFileTypes | Array String | optional,
            name | String,
            sections
              | Array
                {
                  declareRawModules | Bool | optional,
                  filters | Array String,
                  mode
                    | std.enum.TagOrString
                    | [| 'bundleInfo, 'provided, 'require, 'preload, 'raw |],
                  name | String | optional,
                  renderer | Bool | optional,
                  resolve | Bool | optional,
                  resolveConditional | Bool | optional,
                  sort | Bool | optional,
                }
              | optional,
          },
      "then.then.definitions.builder-bundles-bundleDefinition-3.2" =
        {
            defaultFileTypes | Array String | optional,
            name | String,
            sections
              | Array
                {
                  declareRawModules | Bool | optional,
                  filters | Array String,
                  mode
                    | std.enum.TagOrString
                    | [|
                      'depCache,
                      'bundleInfo,
                      'provided,
                      'require,
                      'preload,
                      'raw
                    |],
                  name | String | optional,
                  renderer | Bool | optional,
                  resolve | Bool | optional,
                  resolveConditional | Bool | optional,
                  sort | Bool | optional,
                }
              | optional,
          },
      "then.then.definitions.builder-bundles-bundleDefinition-4.0" =
        {
            defaultFileTypes | Array String | optional,
            name | String,
            sections
              | Array (
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
                          properties = { mode = js2n.Const "require", },
                          required = {},
                        },
                      Array Dyn
                    ])
                  {
                    async | Bool | optional,
                    declareRawModules | Bool | optional,
                    filters | Array String,
                    mode | std.enum.TagOrString | [| 'require |],
                    name | String | optional,
                    renderer | Bool | optional,
                    resolve | Bool | optional,
                    resolveConditional | Bool | optional,
                    sort | Bool | optional,
                  }
                  {
                    declareRawModules | Bool | optional,
                    filters | Array String,
                    mode
                      | std.enum.TagOrString
                      | [|
                        'depCache,
                        'bundleInfo,
                        'provided,
                        'require,
                        'preload,
                        'raw
                      |],
                    name | String | optional,
                    renderer | Bool | optional,
                    resolve | Bool | optional,
                    resolveConditional | Bool | optional,
                    sort | Bool | optional,
                  }
              )
              | optional,
          },
      "then.then.definitions.builder-bundles-bundleOptions" =
        {
            addTryCatchRestartWrapper | Bool | optional,
            decorateBootstrapModule | Bool | optional,
            numberOfParts | Number | optional,
            optimize | Bool | optional,
            usePredefineCalls | Bool | optional,
          },
      "then.then.definitions.builder-bundles-bundleOptions-3.0" =
        {
            addTryCatchRestartWrapper | Bool | optional,
            decorateBootstrapModule | Bool | optional,
            numberOfParts | Number | optional,
            optimize | Bool | optional,
            sourceMap | Bool | optional,
            usePredefineCalls | Bool | optional,
          },
      "then.then.definitions.builder-bundles-bundleOptions-4.0" =
        {
            addTryCatchRestartWrapper | Bool | optional,
            decorateBootstrapModule | Bool | optional,
            numberOfParts | Number | optional,
            optimize | Bool | optional,
            sourceMap | Bool | optional,
          },
      "then.then.definitions.builder-componentPreload" =
        {
            namespaces | Array String | optional,
            paths | Array String | optional,
          },
      "then.then.definitions.builder-componentPreload-specVersion-2.3" =
        {
            excludes | Array String | optional,
            namespaces | Array String | optional,
            paths | Array String | optional,
          },
      "then.then.definitions.builder-libraryPreload" =
        { excludes | Array String | optional, },
      "then.then.definitions.builder-minification" =
        { excludes | Array String | optional, },
      "then.then.definitions.builder-resources" =
        { excludes | Array String | optional, },
      "then.then.definitions.builder-settings" =
        {
            includeDependency | Array String | optional,
            includeDependencyRegExp | Array String | optional,
            includeDependencyTree | Array String | optional,
          },
      "then.then.definitions.customTasks" =
        Array (
            js2n.OneOf
              [
                js2n.record.Record
                  {
                    additional = 'None,
                    patterns = {},
                    properties =
                      {
                          beforeTask = String,
                          configuration = js2n.Always,
                          name = String,
                        },
                    required = { beforeTask = true, name = true, },
                  },
                js2n.record.Record
                  {
                    additional = 'None,
                    patterns = {},
                    properties =
                      {
                          afterTask = String,
                          configuration = js2n.Always,
                          name = String,
                        },
                    required = { afterTask = true, name = true, },
                  }
              ]
          ),
      "then.then.definitions.framework" =
        {
            libraries
              | Array (
                std.contract.Sequence
                  [
                    js2n.IfThenElse
                      (std.contract.not
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
                                properties =
                                  { "optional" = js2n.Enum [ false, null ], },
                                required = {},
                              },
                            Array Dyn,
                            js2n.Null,
                            Bool,
                            Number,
                            String,
                            js2n.record.Record
                              {
                                additional = 'Some Dyn,
                                patterns = {},
                                properties =
                                  { development = js2n.Enum [ false, null ], },
                                required = {},
                              },
                            Array Dyn,
                            std.contract.not
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
                                      properties = { "optional" = Bool, },
                                      required = {},
                                    },
                                  Array Dyn
                                ]),
                            std.contract.not
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
                                      properties = { development = Bool, },
                                      required = {},
                                    },
                                  Array Dyn
                                ])
                          ]))
                      (std.contract.any_of
                        [
                          js2n.Null,
                          Bool,
                          Number,
                          String,
                          { name | String | optional, },
                          Array Dyn
                        ]) js2n.Always,
                    {
                      development | Bool | optional,
                      name | String,
                      "optional" | Bool | optional,
                    }
                  ]
              )
              | optional,
            name | std.enum.TagOrString | [| 'SAPUI5, 'OpenUI5 |],
            version
              | js2n.string.Matches
                "^(0|[1-9]\\d*)\\.(0|[1-9]\\d*)\\.(0|[1-9]\\d*)(?:-((?:0|[1-9]\\d*|\\d*[a-zA-Z-][0-9a-zA-Z-]*)(?:\\.(?:0|[1-9]\\d*|\\d*[a-zA-Z-][0-9a-zA-Z-]*))*))?(?:\\+([0-9a-zA-Z-]+(?:\\.[0-9a-zA-Z-]+)*))?$"
              | doc "Framework version to use in this project"
              | optional,
          },
      "then.then.definitions.metadata" =
        {
            allowSapInternal | Bool | optional,
            copyright | String | optional,
            deprecated | Bool | optional,
            name | String,
            sapInternal | Bool | optional,
          },
      "then.then.definitions.metadata-3.0" =
        {
            allowSapInternal | Bool | optional,
            copyright | String | optional,
            deprecated | Bool | optional,
            name
              | js2n.string.MaxLength 80
              | js2n.string.MinLength 3
              | js2n.string.Matches "^(?:@[0-9a-z-_.]+\\/)?[a-z][0-9a-z-_.]*$"
              | doc "Unique identifier for the project, for example: organization.product.project",
            sapInternal | Bool | optional,
          },
      "then.then.definitions.resources-configuration-propertiesFileSourceEncoding" =
        std.contract.Sequence
            [ std.enum.TagOrString, [| 'ISO-8859-1, 'UTF-8 |] ],
      "then.then.definitions.server" =
        {
            customMiddleware
              | Array (
                js2n.OneOf
                  [
                    js2n.record.Record
                      {
                        additional = 'None,
                        patterns = {},
                        properties =
                          {
                              beforeMiddleware = String,
                              configuration = js2n.Always,
                              mountPath = String,
                              name = String,
                            },
                        required = { beforeMiddleware = true, name = true, },
                      },
                    js2n.record.Record
                      {
                        additional = 'None,
                        patterns = {},
                        properties =
                          {
                              afterMiddleware = String,
                              configuration = js2n.Always,
                              mountPath = String,
                              name = String,
                            },
                        required = { afterMiddleware = true, name = true, },
                      }
                  ]
              )
              | optional,
            settings
              | { httpPort | Number | optional, httpsPort | Number | optional, }
              | optional,
          },
      "then.then.else.else.else.else.then.definitions.builder-specVersion-2.5" =
        {
            settings
              | refs."then.then.definitions.builder-settings"
              | { _ | Dyn }
              | optional,
          },
      "then.then.else.else.else.else.then.definitions.builder-specVersion-3.1" =
        {
            resources
              | refs."then.then.definitions.builder-resources"
              | { _ | Dyn }
              | optional,
            settings
              | refs."then.then.definitions.builder-settings"
              | { _ | Dyn }
              | optional,
          },
      "then.then.else.else.else.else.then.definitions.resources" =
        {
            configuration
              | {
                paths
                  | { _ | String }
                  | js2n.record.FieldsMatch ".+"
                  | optional,
              }
              | optional,
          },
      "then.then.else.else.else.then.definitions.builder" =
        {
            customTasks
              | refs."then.then.definitions.customTasks"
              | Array Dyn
              | optional,
            resources
              | refs."then.then.definitions.builder-resources"
              | { _ | Dyn }
              | optional,
          },
      "then.then.else.else.else.then.definitions.builder-specVersion-2.5" =
        {
            customTasks
              | refs."then.then.definitions.customTasks"
              | Array Dyn
              | optional,
            resources
              | refs."then.then.definitions.builder-resources"
              | { _ | Dyn }
              | optional,
            settings
              | refs."then.then.definitions.builder-settings"
              | { _ | Dyn }
              | optional,
          },
      "then.then.else.else.then.definitions.builder" =
        {
            bundles
              | refs."then.then.definitions.builder-bundles"
              | Array Dyn
              | optional,
            componentPreload
              | refs."then.then.definitions.builder-componentPreload"
              | { _ | Dyn }
              | optional,
            customTasks
              | refs."then.then.definitions.customTasks"
              | Array Dyn
              | optional,
            jsdoc
              | refs."then.then.else.else.then.definitions.builder-jsdoc"
              | { _ | Dyn }
              | optional,
            resources
              | refs."then.then.definitions.builder-resources"
              | { _ | Dyn }
              | optional,
          },
      "then.then.else.else.then.definitions.builder-jsdoc" =
        { excludes | Array String | optional, },
      "then.then.else.else.then.definitions.builder-specVersion-2.3" =
        {
            bundles
              | refs."then.then.definitions.builder-bundles"
              | Array Dyn
              | optional,
            componentPreload
              | refs."then.then.definitions.builder-componentPreload-specVersion-2.3"
              | { _ | Dyn }
              | optional,
            customTasks
              | refs."then.then.definitions.customTasks"
              | Array Dyn
              | optional,
            jsdoc
              | refs."then.then.else.else.then.definitions.builder-jsdoc"
              | { _ | Dyn }
              | optional,
            libraryPreload
              | refs."then.then.definitions.builder-libraryPreload"
              | { _ | Dyn }
              | optional,
            resources
              | refs."then.then.definitions.builder-resources"
              | { _ | Dyn }
              | optional,
          },
      "then.then.else.else.then.definitions.builder-specVersion-2.4" =
        {
            bundles
              | refs."then.then.definitions.builder-bundles-2.4"
              | Array Dyn
              | optional,
            componentPreload
              | refs."then.then.definitions.builder-componentPreload-specVersion-2.3"
              | { _ | Dyn }
              | optional,
            customTasks
              | refs."then.then.definitions.customTasks"
              | Array Dyn
              | optional,
            jsdoc
              | refs."then.then.else.else.then.definitions.builder-jsdoc"
              | { _ | Dyn }
              | optional,
            libraryPreload
              | refs."then.then.definitions.builder-libraryPreload"
              | { _ | Dyn }
              | optional,
            resources
              | refs."then.then.definitions.builder-resources"
              | { _ | Dyn }
              | optional,
          },
      "then.then.else.else.then.definitions.builder-specVersion-2.5" =
        {
            bundles
              | refs."then.then.definitions.builder-bundles-2.4"
              | Array Dyn
              | optional,
            componentPreload
              | refs."then.then.definitions.builder-componentPreload-specVersion-2.3"
              | { _ | Dyn }
              | optional,
            customTasks
              | refs."then.then.definitions.customTasks"
              | Array Dyn
              | optional,
            jsdoc
              | refs."then.then.else.else.then.definitions.builder-jsdoc"
              | { _ | Dyn }
              | optional,
            libraryPreload
              | refs."then.then.definitions.builder-libraryPreload"
              | { _ | Dyn }
              | optional,
            resources
              | refs."then.then.definitions.builder-resources"
              | { _ | Dyn }
              | optional,
            settings
              | refs."then.then.definitions.builder-settings"
              | { _ | Dyn }
              | optional,
          },
      "then.then.else.else.then.definitions.builder-specVersion-2.6" =
        {
            bundles
              | refs."then.then.definitions.builder-bundles-2.4"
              | Array Dyn
              | optional,
            componentPreload
              | refs."then.then.definitions.builder-componentPreload-specVersion-2.3"
              | { _ | Dyn }
              | optional,
            customTasks
              | refs."then.then.definitions.customTasks"
              | Array Dyn
              | optional,
            jsdoc
              | refs."then.then.else.else.then.definitions.builder-jsdoc"
              | { _ | Dyn }
              | optional,
            libraryPreload
              | refs."then.then.definitions.builder-libraryPreload"
              | { _ | Dyn }
              | optional,
            minification
              | refs."then.then.definitions.builder-minification"
              | { _ | Dyn }
              | optional,
            resources
              | refs."then.then.definitions.builder-resources"
              | { _ | Dyn }
              | optional,
            settings
              | refs."then.then.definitions.builder-settings"
              | { _ | Dyn }
              | optional,
          },
      "then.then.else.else.then.definitions.builder-specVersion-3.0" =
        {
            bundles
              | refs."then.then.definitions.builder-bundles-3.0"
              | Array Dyn
              | optional,
            componentPreload
              | refs."then.then.definitions.builder-componentPreload-specVersion-2.3"
              | { _ | Dyn }
              | optional,
            customTasks
              | refs."then.then.definitions.customTasks"
              | Array Dyn
              | optional,
            jsdoc
              | refs."then.then.else.else.then.definitions.builder-jsdoc"
              | { _ | Dyn }
              | optional,
            libraryPreload
              | refs."then.then.definitions.builder-libraryPreload"
              | { _ | Dyn }
              | optional,
            minification
              | refs."then.then.definitions.builder-minification"
              | { _ | Dyn }
              | optional,
            resources
              | refs."then.then.definitions.builder-resources"
              | { _ | Dyn }
              | optional,
            settings
              | refs."then.then.definitions.builder-settings"
              | { _ | Dyn }
              | optional,
          },
      "then.then.else.else.then.definitions.builder-specVersion-3.2" =
        {
            bundles
              | refs."then.then.definitions.builder-bundles-3.2"
              | Array Dyn
              | optional,
            componentPreload
              | refs."then.then.definitions.builder-componentPreload-specVersion-2.3"
              | { _ | Dyn }
              | optional,
            customTasks
              | refs."then.then.definitions.customTasks"
              | Array Dyn
              | optional,
            jsdoc
              | refs."then.then.else.else.then.definitions.builder-jsdoc"
              | { _ | Dyn }
              | optional,
            libraryPreload
              | refs."then.then.definitions.builder-libraryPreload"
              | { _ | Dyn }
              | optional,
            minification
              | refs."then.then.definitions.builder-minification"
              | { _ | Dyn }
              | optional,
            resources
              | refs."then.then.definitions.builder-resources"
              | { _ | Dyn }
              | optional,
            settings
              | refs."then.then.definitions.builder-settings"
              | { _ | Dyn }
              | optional,
          },
      "then.then.else.else.then.definitions.builder-specVersion-4.0" =
        {
            bundles
              | refs."then.then.definitions.builder-bundles-4.0"
              | Array Dyn
              | optional,
            componentPreload
              | refs."then.then.definitions.builder-componentPreload-specVersion-2.3"
              | { _ | Dyn }
              | optional,
            customTasks
              | refs."then.then.definitions.customTasks"
              | Array Dyn
              | optional,
            jsdoc
              | refs."then.then.else.else.then.definitions.builder-jsdoc"
              | { _ | Dyn }
              | optional,
            libraryPreload
              | refs."then.then.definitions.builder-libraryPreload"
              | { _ | Dyn }
              | optional,
            minification
              | refs."then.then.definitions.builder-minification"
              | { _ | Dyn }
              | optional,
            resources
              | refs."then.then.definitions.builder-resources"
              | { _ | Dyn }
              | optional,
            settings
              | refs."then.then.definitions.builder-settings"
              | { _ | Dyn }
              | optional,
          },
      "then.then.else.else.then.definitions.resources" =
        {
            configuration
              | {
                paths
                  | { src | String | optional, test | String | optional, }
                  | optional,
                propertiesFileSourceEncoding
                  | refs."then.then.definitions.resources-configuration-propertiesFileSourceEncoding"
                  | String
                  | optional,
              }
              | optional,
          },
      "then.then.else.then.definitions.builder" =
        {
            bundles
              | refs."then.then.definitions.builder-bundles"
              | Array Dyn
              | optional,
            cachebuster
              | {
                signatureType
                  | std.enum.TagOrString
                  | [| 'hash, 'time |]
                  | optional,
              }
              | optional,
            componentPreload
              | refs."then.then.definitions.builder-componentPreload"
              | { _ | Dyn }
              | optional,
            customTasks
              | refs."then.then.definitions.customTasks"
              | Array Dyn
              | optional,
            resources
              | refs."then.then.definitions.builder-resources"
              | { _ | Dyn }
              | optional,
          },
      "then.then.else.then.definitions.builder-specVersion-2.3" =
        {
            bundles
              | refs."then.then.definitions.builder-bundles"
              | Array Dyn
              | optional,
            cachebuster
              | {
                signatureType
                  | std.enum.TagOrString
                  | [| 'hash, 'time |]
                  | optional,
              }
              | optional,
            componentPreload
              | refs."then.then.definitions.builder-componentPreload-specVersion-2.3"
              | { _ | Dyn }
              | optional,
            customTasks
              | refs."then.then.definitions.customTasks"
              | Array Dyn
              | optional,
            resources
              | refs."then.then.definitions.builder-resources"
              | { _ | Dyn }
              | optional,
          },
      "then.then.else.then.definitions.builder-specVersion-2.4" =
        {
            bundles
              | refs."then.then.definitions.builder-bundles-2.4"
              | Array Dyn
              | optional,
            cachebuster
              | {
                signatureType
                  | std.enum.TagOrString
                  | [| 'hash, 'time |]
                  | optional,
              }
              | optional,
            componentPreload
              | refs."then.then.definitions.builder-componentPreload-specVersion-2.3"
              | { _ | Dyn }
              | optional,
            customTasks
              | refs."then.then.definitions.customTasks"
              | Array Dyn
              | optional,
            resources
              | refs."then.then.definitions.builder-resources"
              | { _ | Dyn }
              | optional,
          },
      "then.then.else.then.definitions.builder-specVersion-2.5" =
        {
            bundles
              | refs."then.then.definitions.builder-bundles-2.4"
              | Array Dyn
              | optional,
            cachebuster
              | {
                signatureType
                  | std.enum.TagOrString
                  | [| 'hash, 'time |]
                  | optional,
              }
              | optional,
            componentPreload
              | refs."then.then.definitions.builder-componentPreload-specVersion-2.3"
              | { _ | Dyn }
              | optional,
            customTasks
              | refs."then.then.definitions.customTasks"
              | Array Dyn
              | optional,
            resources
              | refs."then.then.definitions.builder-resources"
              | { _ | Dyn }
              | optional,
            settings
              | refs."then.then.definitions.builder-settings"
              | { _ | Dyn }
              | optional,
          },
      "then.then.else.then.definitions.builder-specVersion-2.6" =
        {
            bundles
              | refs."then.then.definitions.builder-bundles-2.4"
              | Array Dyn
              | optional,
            cachebuster
              | {
                signatureType
                  | std.enum.TagOrString
                  | [| 'hash, 'time |]
                  | optional,
              }
              | optional,
            componentPreload
              | refs."then.then.definitions.builder-componentPreload-specVersion-2.3"
              | { _ | Dyn }
              | optional,
            customTasks
              | refs."then.then.definitions.customTasks"
              | Array Dyn
              | optional,
            minification
              | refs."then.then.definitions.builder-minification"
              | { _ | Dyn }
              | optional,
            resources
              | refs."then.then.definitions.builder-resources"
              | { _ | Dyn }
              | optional,
            settings
              | refs."then.then.definitions.builder-settings"
              | { _ | Dyn }
              | optional,
          },
      "then.then.else.then.definitions.builder-specVersion-3.0" =
        {
            bundles
              | refs."then.then.definitions.builder-bundles-3.0"
              | Array Dyn
              | optional,
            cachebuster
              | {
                signatureType
                  | std.enum.TagOrString
                  | [| 'hash, 'time |]
                  | optional,
              }
              | optional,
            componentPreload
              | refs."then.then.definitions.builder-componentPreload-specVersion-2.3"
              | { _ | Dyn }
              | optional,
            customTasks
              | refs."then.then.definitions.customTasks"
              | Array Dyn
              | optional,
            minification
              | refs."then.then.definitions.builder-minification"
              | { _ | Dyn }
              | optional,
            resources
              | refs."then.then.definitions.builder-resources"
              | { _ | Dyn }
              | optional,
            settings
              | refs."then.then.definitions.builder-settings"
              | { _ | Dyn }
              | optional,
          },
      "then.then.else.then.definitions.builder-specVersion-3.2" =
        {
            bundles
              | refs."then.then.definitions.builder-bundles-3.2"
              | Array Dyn
              | optional,
            cachebuster
              | {
                signatureType
                  | std.enum.TagOrString
                  | [| 'hash, 'time |]
                  | optional,
              }
              | optional,
            componentPreload
              | refs."then.then.definitions.builder-componentPreload-specVersion-2.3"
              | { _ | Dyn }
              | optional,
            customTasks
              | refs."then.then.definitions.customTasks"
              | Array Dyn
              | optional,
            minification
              | refs."then.then.definitions.builder-minification"
              | { _ | Dyn }
              | optional,
            resources
              | refs."then.then.definitions.builder-resources"
              | { _ | Dyn }
              | optional,
            settings
              | refs."then.then.definitions.builder-settings"
              | { _ | Dyn }
              | optional,
          },
      "then.then.else.then.definitions.builder-specVersion-4.0" =
        {
            bundles
              | refs."then.then.definitions.builder-bundles-4.0"
              | Array Dyn
              | optional,
            cachebuster
              | {
                signatureType
                  | std.enum.TagOrString
                  | [| 'hash, 'time |]
                  | optional,
              }
              | optional,
            componentPreload
              | refs."then.then.definitions.builder-componentPreload-specVersion-2.3"
              | { _ | Dyn }
              | optional,
            customTasks
              | refs."then.then.definitions.customTasks"
              | Array Dyn
              | optional,
            minification
              | refs."then.then.definitions.builder-minification"
              | { _ | Dyn }
              | optional,
            resources
              | refs."then.then.definitions.builder-resources"
              | { _ | Dyn }
              | optional,
            settings
              | refs."then.then.definitions.builder-settings"
              | { _ | Dyn }
              | optional,
          },
      "then.then.else.then.definitions.resources" =
        {
            configuration
              | {
                paths | { webapp | String | optional, } | optional,
                propertiesFileSourceEncoding
                  | refs."then.then.definitions.resources-configuration-propertiesFileSourceEncoding"
                  | String
                  | optional,
              }
              | optional,
          },
    }
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
                  properties =
                    {
                        specVersion =
                          std.contract.Sequence
                              [
                                std.enum.TagOrString,
                                [|
                                  '"2.0",
                                  '"2.1",
                                  '"2.2",
                                  '"2.3",
                                  '"2.4",
                                  '"2.5",
                                  '"2.6",
                                  '"3.0",
                                  '"3.1",
                                  '"3.2",
                                  '"4.0"
                                |]
                              ],
                      },
                  required = {},
                },
              Array Dyn
            ])
          (std.contract.Sequence
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
                        properties = { kind = js2n.Enum [ "project", null ], },
                        required = {},
                      },
                    Array Dyn
                  ])
                (std.contract.Sequence
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
                              properties = { type = js2n.Const null, },
                              required = {},
                            },
                          Array Dyn
                        ]) js2n.Always
                      (js2n.IfThenElse
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
                                properties =
                                  { type = js2n.Const "application", },
                                required = {},
                              },
                            Array Dyn
                          ])
                        (std.contract.Sequence
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
                                      properties =
                                        {
                                            specVersion =
                                              std.contract.Sequence
                                                  [
                                                    std.enum.TagOrString,
                                                    [| '"4.0" |]
                                                  ],
                                          },
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
                                    builder
                                      | refs."then.then.else.then.definitions.builder-specVersion-4.0"
                                      | optional,
                                    customConfiguration | {  .. } | optional,
                                    framework
                                      | refs."then.then.definitions.framework"
                                      | optional,
                                    kind
                                      | js2n.Enum [ "project", null ]
                                      | optional,
                                    metadata
                                      | refs."then.then.definitions.metadata-3.0"
                                      | optional,
                                    resources
                                      | refs."then.then.else.then.definitions.resources"
                                      | optional,
                                    server
                                      | refs."then.then.definitions.server"
                                      | optional,
                                    specVersion
                                      | std.enum.TagOrString
                                      | [| '"4.0" |]
                                      | optional,
                                    type
                                      | std.enum.TagOrString
                                      | [| 'application |]
                                      | optional,
                                  },
                                  Array Dyn
                                ])
                              (js2n.IfThenElse
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
                                        properties =
                                          {
                                              specVersion =
                                                std.contract.Sequence
                                                    [
                                                      std.enum.TagOrString,
                                                      [| '"3.2" |]
                                                    ],
                                            },
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
                                      builder
                                        | refs."then.then.else.then.definitions.builder-specVersion-3.2"
                                        | optional,
                                      customConfiguration | {  .. } | optional,
                                      framework
                                        | refs."then.then.definitions.framework"
                                        | optional,
                                      kind
                                        | js2n.Enum [ "project", null ]
                                        | optional,
                                      metadata
                                        | refs."then.then.definitions.metadata-3.0"
                                        | optional,
                                      resources
                                        | refs."then.then.else.then.definitions.resources"
                                        | optional,
                                      server
                                        | refs."then.then.definitions.server"
                                        | optional,
                                      specVersion
                                        | std.enum.TagOrString
                                        | [| '"3.2" |]
                                        | optional,
                                      type
                                        | std.enum.TagOrString
                                        | [| 'application |]
                                        | optional,
                                    },
                                    Array Dyn
                                  ])
                                (js2n.IfThenElse
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
                                          properties =
                                            {
                                                specVersion =
                                                  std.contract.Sequence
                                                      [
                                                        std.enum.TagOrString,
                                                        [| '"3.1", '"3.0" |]
                                                      ],
                                              },
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
                                        builder
                                          | refs."then.then.else.then.definitions.builder-specVersion-3.0"
                                          | optional,
                                        customConfiguration
                                          | {  .. }
                                          | optional,
                                        framework
                                          | refs."then.then.definitions.framework"
                                          | optional,
                                        kind
                                          | js2n.Enum [ "project", null ]
                                          | optional,
                                        metadata
                                          | refs."then.then.definitions.metadata-3.0"
                                          | optional,
                                        resources
                                          | refs."then.then.else.then.definitions.resources"
                                          | optional,
                                        server
                                          | refs."then.then.definitions.server"
                                          | optional,
                                        specVersion
                                          | std.enum.TagOrString
                                          | [| '"3.1", '"3.0" |]
                                          | optional,
                                        type
                                          | std.enum.TagOrString
                                          | [| 'application |]
                                          | optional,
                                      },
                                      Array Dyn
                                    ])
                                  (js2n.IfThenElse
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
                                            properties =
                                              {
                                                  specVersion =
                                                    std.contract.Sequence
                                                        [
                                                          std.enum.TagOrString,
                                                          [| '"2.6" |]
                                                        ],
                                                },
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
                                          builder
                                            | refs."then.then.else.then.definitions.builder-specVersion-2.6"
                                            | optional,
                                          customConfiguration
                                            | {  .. }
                                            | optional,
                                          framework
                                            | refs."then.then.definitions.framework"
                                            | optional,
                                          kind
                                            | js2n.Enum [ "project", null ]
                                            | optional,
                                          metadata
                                            | refs."then.then.definitions.metadata"
                                            | optional,
                                          resources
                                            | refs."then.then.else.then.definitions.resources"
                                            | optional,
                                          server
                                            | refs."then.then.definitions.server"
                                            | optional,
                                          specVersion
                                            | std.enum.TagOrString
                                            | [| '"2.6" |]
                                            | optional,
                                          type
                                            | std.enum.TagOrString
                                            | [| 'application |]
                                            | optional,
                                        },
                                        Array Dyn
                                      ])
                                    (js2n.IfThenElse
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
                                              properties =
                                                {
                                                    specVersion =
                                                      std.contract.Sequence
                                                          [
                                                            std.enum.TagOrString,
                                                            [| '"2.5" |]
                                                          ],
                                                  },
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
                                            builder
                                              | refs."then.then.else.then.definitions.builder-specVersion-2.5"
                                              | optional,
                                            customConfiguration
                                              | {  .. }
                                              | optional,
                                            framework
                                              | refs."then.then.definitions.framework"
                                              | optional,
                                            kind
                                              | js2n.Enum [ "project", null ]
                                              | optional,
                                            metadata
                                              | refs."then.then.definitions.metadata"
                                              | optional,
                                            resources
                                              | refs."then.then.else.then.definitions.resources"
                                              | optional,
                                            server
                                              | refs."then.then.definitions.server"
                                              | optional,
                                            specVersion
                                              | std.enum.TagOrString
                                              | [| '"2.5" |]
                                              | optional,
                                            type
                                              | std.enum.TagOrString
                                              | [| 'application |]
                                              | optional,
                                          },
                                          Array Dyn
                                        ])
                                      (js2n.IfThenElse
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
                                                properties =
                                                  {
                                                      specVersion =
                                                        std.contract.Sequence
                                                            [
                                                              std.enum.TagOrString,
                                                              [| '"2.4" |]
                                                            ],
                                                    },
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
                                              builder
                                                | refs."then.then.else.then.definitions.builder-specVersion-2.4"
                                                | optional,
                                              customConfiguration
                                                | {  .. }
                                                | optional,
                                              framework
                                                | refs."then.then.definitions.framework"
                                                | optional,
                                              kind
                                                | js2n.Enum [ "project", null ]
                                                | optional,
                                              metadata
                                                | refs."then.then.definitions.metadata"
                                                | optional,
                                              resources
                                                | refs."then.then.else.then.definitions.resources"
                                                | optional,
                                              server
                                                | refs."then.then.definitions.server"
                                                | optional,
                                              specVersion
                                                | std.enum.TagOrString
                                                | [| '"2.4" |]
                                                | optional,
                                              type
                                                | std.enum.TagOrString
                                                | [| 'application |]
                                                | optional,
                                            },
                                            Array Dyn
                                          ])
                                        (js2n.IfThenElse
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
                                                  properties =
                                                    {
                                                        specVersion =
                                                          std.contract.Sequence
                                                              [
                                                                std.enum.TagOrString,
                                                                [| '"2.3" |]
                                                              ],
                                                      },
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
                                                builder
                                                  | refs."then.then.else.then.definitions.builder-specVersion-2.3"
                                                  | optional,
                                                customConfiguration
                                                  | {  .. }
                                                  | optional,
                                                framework
                                                  | refs."then.then.definitions.framework"
                                                  | optional,
                                                kind
                                                  | js2n.Enum
                                                    [ "project", null ]
                                                  | optional,
                                                metadata
                                                  | refs."then.then.definitions.metadata"
                                                  | optional,
                                                resources
                                                  | refs."then.then.else.then.definitions.resources"
                                                  | optional,
                                                server
                                                  | refs."then.then.definitions.server"
                                                  | optional,
                                                specVersion
                                                  | std.enum.TagOrString
                                                  | [| '"2.3" |]
                                                  | optional,
                                                type
                                                  | std.enum.TagOrString
                                                  | [| 'application |]
                                                  | optional,
                                              },
                                              Array Dyn
                                            ])
                                          (js2n.IfThenElse
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
                                                    properties =
                                                      {
                                                          specVersion =
                                                            std.contract.Sequence
                                                                [
                                                                  std.enum.TagOrString,
                                                                  [|
                                                                    '"2.2",
                                                                    '"2.1"
                                                                  |]
                                                                ],
                                                        },
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
                                                  builder
                                                    | refs."then.then.else.then.definitions.builder"
                                                    | optional,
                                                  customConfiguration
                                                    | {  .. }
                                                    | optional,
                                                  framework
                                                    | refs."then.then.definitions.framework"
                                                    | optional,
                                                  kind
                                                    | js2n.Enum
                                                      [ "project", null ]
                                                    | optional,
                                                  metadata
                                                    | refs."then.then.definitions.metadata"
                                                    | optional,
                                                  resources
                                                    | refs."then.then.else.then.definitions.resources"
                                                    | optional,
                                                  server
                                                    | refs."then.then.definitions.server"
                                                    | optional,
                                                  specVersion
                                                    | std.enum.TagOrString
                                                    | [| '"2.2", '"2.1" |]
                                                    | optional,
                                                  type
                                                    | std.enum.TagOrString
                                                    | [| 'application |]
                                                    | optional,
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
                                                  builder
                                                    | refs."then.then.else.then.definitions.builder"
                                                    | optional,
                                                  framework
                                                    | refs."then.then.definitions.framework"
                                                    | optional,
                                                  kind
                                                    | js2n.Enum
                                                      [ "project", null ]
                                                    | optional,
                                                  metadata
                                                    | refs."then.then.definitions.metadata"
                                                    | optional,
                                                  resources
                                                    | refs."then.then.else.then.definitions.resources"
                                                    | optional,
                                                  server
                                                    | refs."then.then.definitions.server"
                                                    | optional,
                                                  specVersion
                                                    | std.enum.TagOrString
                                                    | [| '"2.0" |]
                                                    | optional,
                                                  type
                                                    | std.enum.TagOrString
                                                    | [| 'application |]
                                                    | optional,
                                                },
                                                Array Dyn
                                              ])))))))),
                            js2n.record.Required
                              [ "metadata", "specVersion", "type" ]
                          ])
                        (js2n.IfThenElse
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
                                  properties = { type = js2n.Const "library", },
                                  required = {},
                                },
                              Array Dyn
                            ])
                          (std.contract.Sequence
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
                                        properties =
                                          {
                                              specVersion =
                                                std.contract.Sequence
                                                    [
                                                      std.enum.TagOrString,
                                                      [| '"4.0" |]
                                                    ],
                                            },
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
                                      builder
                                        | refs."then.then.else.else.then.definitions.builder-specVersion-4.0"
                                        | optional,
                                      customConfiguration | {  .. } | optional,
                                      framework
                                        | refs."then.then.definitions.framework"
                                        | optional,
                                      kind
                                        | js2n.Enum [ "project", null ]
                                        | optional,
                                      metadata
                                        | refs."then.then.definitions.metadata-3.0"
                                        | optional,
                                      resources
                                        | refs."then.then.else.else.then.definitions.resources"
                                        | optional,
                                      server
                                        | refs."then.then.definitions.server"
                                        | optional,
                                      specVersion
                                        | std.enum.TagOrString
                                        | [| '"4.0" |]
                                        | optional,
                                      type
                                        | std.enum.TagOrString
                                        | [| 'library |]
                                        | optional,
                                    },
                                    Array Dyn
                                  ])
                                (js2n.IfThenElse
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
                                          properties =
                                            {
                                                specVersion =
                                                  std.contract.Sequence
                                                      [
                                                        std.enum.TagOrString,
                                                        [| '"3.2" |]
                                                      ],
                                              },
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
                                        builder
                                          | refs."then.then.else.else.then.definitions.builder-specVersion-3.2"
                                          | optional,
                                        customConfiguration
                                          | {  .. }
                                          | optional,
                                        framework
                                          | refs."then.then.definitions.framework"
                                          | optional,
                                        kind
                                          | js2n.Enum [ "project", null ]
                                          | optional,
                                        metadata
                                          | refs."then.then.definitions.metadata-3.0"
                                          | optional,
                                        resources
                                          | refs."then.then.else.else.then.definitions.resources"
                                          | optional,
                                        server
                                          | refs."then.then.definitions.server"
                                          | optional,
                                        specVersion
                                          | std.enum.TagOrString
                                          | [| '"3.2" |]
                                          | optional,
                                        type
                                          | std.enum.TagOrString
                                          | [| 'library |]
                                          | optional,
                                      },
                                      Array Dyn
                                    ])
                                  (js2n.IfThenElse
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
                                            properties =
                                              {
                                                  specVersion =
                                                    std.contract.Sequence
                                                        [
                                                          std.enum.TagOrString,
                                                          [| '"3.1", '"3.0" |]
                                                        ],
                                                },
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
                                          builder
                                            | refs."then.then.else.else.then.definitions.builder-specVersion-3.0"
                                            | optional,
                                          customConfiguration
                                            | {  .. }
                                            | optional,
                                          framework
                                            | refs."then.then.definitions.framework"
                                            | optional,
                                          kind
                                            | js2n.Enum [ "project", null ]
                                            | optional,
                                          metadata
                                            | refs."then.then.definitions.metadata-3.0"
                                            | optional,
                                          resources
                                            | refs."then.then.else.else.then.definitions.resources"
                                            | optional,
                                          server
                                            | refs."then.then.definitions.server"
                                            | optional,
                                          specVersion
                                            | std.enum.TagOrString
                                            | [| '"3.1", '"3.0" |]
                                            | optional,
                                          type
                                            | std.enum.TagOrString
                                            | [| 'library |]
                                            | optional,
                                        },
                                        Array Dyn
                                      ])
                                    (js2n.IfThenElse
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
                                              properties =
                                                {
                                                    specVersion =
                                                      std.contract.Sequence
                                                          [
                                                            std.enum.TagOrString,
                                                            [| '"2.6" |]
                                                          ],
                                                  },
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
                                            builder
                                              | refs."then.then.else.else.then.definitions.builder-specVersion-2.6"
                                              | optional,
                                            customConfiguration
                                              | {  .. }
                                              | optional,
                                            framework
                                              | refs."then.then.definitions.framework"
                                              | optional,
                                            kind
                                              | js2n.Enum [ "project", null ]
                                              | optional,
                                            metadata
                                              | refs."then.then.definitions.metadata"
                                              | optional,
                                            resources
                                              | refs."then.then.else.else.then.definitions.resources"
                                              | optional,
                                            server
                                              | refs."then.then.definitions.server"
                                              | optional,
                                            specVersion
                                              | std.enum.TagOrString
                                              | [| '"2.6" |]
                                              | optional,
                                            type
                                              | std.enum.TagOrString
                                              | [| 'library |]
                                              | optional,
                                          },
                                          Array Dyn
                                        ])
                                      (js2n.IfThenElse
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
                                                properties =
                                                  {
                                                      specVersion =
                                                        std.contract.Sequence
                                                            [
                                                              std.enum.TagOrString,
                                                              [| '"2.5" |]
                                                            ],
                                                    },
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
                                              builder
                                                | refs."then.then.else.else.then.definitions.builder-specVersion-2.5"
                                                | optional,
                                              customConfiguration
                                                | {  .. }
                                                | optional,
                                              framework
                                                | refs."then.then.definitions.framework"
                                                | optional,
                                              kind
                                                | js2n.Enum [ "project", null ]
                                                | optional,
                                              metadata
                                                | refs."then.then.definitions.metadata"
                                                | optional,
                                              resources
                                                | refs."then.then.else.else.then.definitions.resources"
                                                | optional,
                                              server
                                                | refs."then.then.definitions.server"
                                                | optional,
                                              specVersion
                                                | std.enum.TagOrString
                                                | [| '"2.5" |]
                                                | optional,
                                              type
                                                | std.enum.TagOrString
                                                | [| 'library |]
                                                | optional,
                                            },
                                            Array Dyn
                                          ])
                                        (js2n.IfThenElse
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
                                                  properties =
                                                    {
                                                        specVersion =
                                                          std.contract.Sequence
                                                              [
                                                                std.enum.TagOrString,
                                                                [| '"2.4" |]
                                                              ],
                                                      },
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
                                                builder
                                                  | refs."then.then.else.else.then.definitions.builder-specVersion-2.4"
                                                  | optional,
                                                customConfiguration
                                                  | {  .. }
                                                  | optional,
                                                framework
                                                  | refs."then.then.definitions.framework"
                                                  | optional,
                                                kind
                                                  | js2n.Enum
                                                    [ "project", null ]
                                                  | optional,
                                                metadata
                                                  | refs."then.then.definitions.metadata"
                                                  | optional,
                                                resources
                                                  | refs."then.then.else.else.then.definitions.resources"
                                                  | optional,
                                                server
                                                  | refs."then.then.definitions.server"
                                                  | optional,
                                                specVersion
                                                  | std.enum.TagOrString
                                                  | [| '"2.4" |]
                                                  | optional,
                                                type
                                                  | std.enum.TagOrString
                                                  | [| 'library |]
                                                  | optional,
                                              },
                                              Array Dyn
                                            ])
                                          (js2n.IfThenElse
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
                                                    properties =
                                                      {
                                                          specVersion =
                                                            std.contract.Sequence
                                                                [
                                                                  std.enum.TagOrString,
                                                                  [| '"2.3" |]
                                                                ],
                                                        },
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
                                                  builder
                                                    | refs."then.then.else.else.then.definitions.builder-specVersion-2.3"
                                                    | optional,
                                                  customConfiguration
                                                    | {  .. }
                                                    | optional,
                                                  framework
                                                    | refs."then.then.definitions.framework"
                                                    | optional,
                                                  kind
                                                    | js2n.Enum
                                                      [ "project", null ]
                                                    | optional,
                                                  metadata
                                                    | refs."then.then.definitions.metadata"
                                                    | optional,
                                                  resources
                                                    | refs."then.then.else.else.then.definitions.resources"
                                                    | optional,
                                                  server
                                                    | refs."then.then.definitions.server"
                                                    | optional,
                                                  specVersion
                                                    | std.enum.TagOrString
                                                    | [| '"2.3" |]
                                                    | optional,
                                                  type
                                                    | std.enum.TagOrString
                                                    | [| 'library |]
                                                    | optional,
                                                },
                                                Array Dyn
                                              ])
                                            (js2n.IfThenElse
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
                                                      properties =
                                                        {
                                                            specVersion =
                                                              std.contract.Sequence
                                                                  [
                                                                    std.enum.TagOrString,
                                                                    [|
                                                                      '"2.2",
                                                                      '"2.1"
                                                                    |]
                                                                  ],
                                                          },
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
                                                    builder
                                                      | refs."then.then.else.else.then.definitions.builder"
                                                      | optional,
                                                    customConfiguration
                                                      | {  .. }
                                                      | optional,
                                                    framework
                                                      | refs."then.then.definitions.framework"
                                                      | optional,
                                                    kind
                                                      | js2n.Enum
                                                        [ "project", null ]
                                                      | optional,
                                                    metadata
                                                      | refs."then.then.definitions.metadata"
                                                      | optional,
                                                    resources
                                                      | refs."then.then.else.else.then.definitions.resources"
                                                      | optional,
                                                    server
                                                      | refs."then.then.definitions.server"
                                                      | optional,
                                                    specVersion
                                                      | std.enum.TagOrString
                                                      | [| '"2.2", '"2.1" |]
                                                      | optional,
                                                    type
                                                      | std.enum.TagOrString
                                                      | [| 'library |]
                                                      | optional,
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
                                                    builder
                                                      | refs."then.then.else.else.then.definitions.builder"
                                                      | optional,
                                                    framework
                                                      | refs."then.then.definitions.framework"
                                                      | optional,
                                                    kind
                                                      | js2n.Enum
                                                        [ "project", null ]
                                                      | optional,
                                                    metadata
                                                      | refs."then.then.definitions.metadata"
                                                      | optional,
                                                    resources
                                                      | refs."then.then.else.else.then.definitions.resources"
                                                      | optional,
                                                    server
                                                      | refs."then.then.definitions.server"
                                                      | optional,
                                                    specVersion
                                                      | std.enum.TagOrString
                                                      | [| '"2.0" |]
                                                      | optional,
                                                    type
                                                      | std.enum.TagOrString
                                                      | [| 'library |]
                                                      | optional,
                                                  },
                                                  Array Dyn
                                                ])))))))),
                              js2n.record.Required
                                [ "metadata", "specVersion", "type" ]
                            ])
                          (js2n.IfThenElse
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
                                    properties =
                                      { type = js2n.Const "theme-library", },
                                    required = {},
                                  },
                                Array Dyn
                              ])
                            (std.contract.Sequence
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
                                          properties =
                                            {
                                                specVersion =
                                                  std.contract.Sequence
                                                      [
                                                        std.enum.TagOrString,
                                                        [|
                                                          '"4.0",
                                                          '"3.2",
                                                          '"3.1",
                                                          '"3.0"
                                                        |]
                                                      ],
                                              },
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
                                        builder
                                          | refs."then.then.else.else.else.then.definitions.builder-specVersion-2.5"
                                          | optional,
                                        customConfiguration
                                          | {  .. }
                                          | optional,
                                        framework
                                          | refs."then.then.definitions.framework"
                                          | optional,
                                        kind
                                          | js2n.Enum [ "project", null ]
                                          | optional,
                                        metadata
                                          | refs."then.then.definitions.metadata-3.0"
                                          | optional,
                                        resources
                                          | refs."then.then.else.else.then.definitions.resources"
                                          | optional,
                                        server
                                          | refs."then.then.definitions.server"
                                          | optional,
                                        specVersion
                                          | std.enum.TagOrString
                                          | [| '"4.0", '"3.2", '"3.1", '"3.0" |]
                                          | optional,
                                        type
                                          | std.enum.TagOrString
                                          | [| 'theme-library |]
                                          | optional,
                                      },
                                      Array Dyn
                                    ])
                                  (js2n.IfThenElse
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
                                            properties =
                                              {
                                                  specVersion =
                                                    std.contract.Sequence
                                                        [
                                                          std.enum.TagOrString,
                                                          [| '"2.6", '"2.5" |]
                                                        ],
                                                },
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
                                          builder
                                            | refs."then.then.else.else.else.then.definitions.builder-specVersion-2.5"
                                            | optional,
                                          customConfiguration
                                            | {  .. }
                                            | optional,
                                          framework
                                            | refs."then.then.definitions.framework"
                                            | optional,
                                          kind
                                            | js2n.Enum [ "project", null ]
                                            | optional,
                                          metadata
                                            | refs."then.then.definitions.metadata"
                                            | optional,
                                          resources
                                            | refs."then.then.else.else.then.definitions.resources"
                                            | optional,
                                          server
                                            | refs."then.then.definitions.server"
                                            | optional,
                                          specVersion
                                            | std.enum.TagOrString
                                            | [| '"2.6", '"2.5" |]
                                            | optional,
                                          type
                                            | std.enum.TagOrString
                                            | [| 'theme-library |]
                                            | optional,
                                        },
                                        Array Dyn
                                      ])
                                    (js2n.IfThenElse
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
                                              properties =
                                                {
                                                    specVersion =
                                                      std.contract.Sequence
                                                          [
                                                            std.enum.TagOrString,
                                                            [|
                                                              '"2.4",
                                                              '"2.3",
                                                              '"2.2",
                                                              '"2.1"
                                                            |]
                                                          ],
                                                  },
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
                                            builder
                                              | refs."then.then.else.else.else.then.definitions.builder"
                                              | optional,
                                            customConfiguration
                                              | {  .. }
                                              | optional,
                                            framework
                                              | refs."then.then.definitions.framework"
                                              | optional,
                                            kind
                                              | js2n.Enum [ "project", null ]
                                              | optional,
                                            metadata
                                              | refs."then.then.definitions.metadata"
                                              | optional,
                                            resources
                                              | refs."then.then.else.else.then.definitions.resources"
                                              | optional,
                                            server
                                              | refs."then.then.definitions.server"
                                              | optional,
                                            specVersion
                                              | std.enum.TagOrString
                                              | [|
                                                '"2.4",
                                                '"2.3",
                                                '"2.2",
                                                '"2.1"
                                              |]
                                              | optional,
                                            type
                                              | std.enum.TagOrString
                                              | [| 'theme-library |]
                                              | optional,
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
                                            builder
                                              | refs."then.then.else.else.else.then.definitions.builder"
                                              | optional,
                                            framework
                                              | refs."then.then.definitions.framework"
                                              | optional,
                                            kind
                                              | js2n.Enum [ "project", null ]
                                              | optional,
                                            metadata
                                              | refs."then.then.definitions.metadata"
                                              | optional,
                                            resources
                                              | refs."then.then.else.else.then.definitions.resources"
                                              | optional,
                                            server
                                              | refs."then.then.definitions.server"
                                              | optional,
                                            specVersion
                                              | std.enum.TagOrString
                                              | [| '"2.0" |]
                                              | optional,
                                            type
                                              | std.enum.TagOrString
                                              | [| 'theme-library |]
                                              | optional,
                                          },
                                          Array Dyn
                                        ]))),
                                js2n.record.Required
                                  [ "metadata", "specVersion", "type" ]
                              ])
                            (js2n.IfThenElse
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
                                      properties =
                                        { type = js2n.Const "module", },
                                      required = {},
                                    },
                                  Array Dyn
                                ])
                              (std.contract.Sequence
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
                                            properties =
                                              {
                                                  specVersion =
                                                    std.contract.Sequence
                                                        [
                                                          std.enum.TagOrString,
                                                          [|
                                                            '"4.0",
                                                            '"3.2",
                                                            '"3.1"
                                                          |]
                                                        ],
                                                },
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
                                          builder
                                            | refs."then.then.else.else.else.else.then.definitions.builder-specVersion-3.1"
                                            | optional,
                                          customConfiguration
                                            | {  .. }
                                            | optional,
                                          kind
                                            | js2n.Enum [ "project", null ]
                                            | optional,
                                          metadata
                                            | refs."then.then.definitions.metadata-3.0"
                                            | optional,
                                          resources
                                            | refs."then.then.else.else.else.else.then.definitions.resources"
                                            | optional,
                                          server
                                            | refs."then.then.definitions.server"
                                            | optional,
                                          specVersion
                                            | std.enum.TagOrString
                                            | [| '"4.0", '"3.2", '"3.1" |]
                                            | optional,
                                          type
                                            | std.enum.TagOrString
                                            | [| 'module |]
                                            | optional,
                                        },
                                        Array Dyn
                                      ])
                                    (js2n.IfThenElse
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
                                              properties =
                                                {
                                                    specVersion =
                                                      std.contract.Sequence
                                                          [
                                                            std.enum.TagOrString,
                                                            [| '"3.0" |]
                                                          ],
                                                  },
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
                                            builder
                                              | refs."then.then.else.else.else.else.then.definitions.builder-specVersion-2.5"
                                              | optional,
                                            customConfiguration
                                              | {  .. }
                                              | optional,
                                            kind
                                              | js2n.Enum [ "project", null ]
                                              | optional,
                                            metadata
                                              | refs."then.then.definitions.metadata-3.0"
                                              | optional,
                                            resources
                                              | refs."then.then.else.else.else.else.then.definitions.resources"
                                              | optional,
                                            server
                                              | refs."then.then.definitions.server"
                                              | optional,
                                            specVersion
                                              | std.enum.TagOrString
                                              | [| '"3.0" |]
                                              | optional,
                                            type
                                              | std.enum.TagOrString
                                              | [| 'module |]
                                              | optional,
                                          },
                                          Array Dyn
                                        ])
                                      (js2n.IfThenElse
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
                                                properties =
                                                  {
                                                      specVersion =
                                                        std.contract.Sequence
                                                            [
                                                              std.enum.TagOrString,
                                                              [|
                                                                '"2.6",
                                                                '"2.5"
                                                              |]
                                                            ],
                                                    },
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
                                              builder
                                                | refs."then.then.else.else.else.else.then.definitions.builder-specVersion-2.5"
                                                | optional,
                                              customConfiguration
                                                | {  .. }
                                                | optional,
                                              kind
                                                | js2n.Enum [ "project", null ]
                                                | optional,
                                              metadata
                                                | refs."then.then.definitions.metadata"
                                                | optional,
                                              resources
                                                | refs."then.then.else.else.else.else.then.definitions.resources"
                                                | optional,
                                              server
                                                | refs."then.then.definitions.server"
                                                | optional,
                                              specVersion
                                                | std.enum.TagOrString
                                                | [| '"2.6", '"2.5" |]
                                                | optional,
                                              type
                                                | std.enum.TagOrString
                                                | [| 'module |]
                                                | optional,
                                            },
                                            Array Dyn
                                          ])
                                        (js2n.IfThenElse
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
                                                  properties =
                                                    {
                                                        specVersion =
                                                          std.contract.Sequence
                                                              [
                                                                std.enum.TagOrString,
                                                                [|
                                                                  '"2.4",
                                                                  '"2.3",
                                                                  '"2.2",
                                                                  '"2.1"
                                                                |]
                                                              ],
                                                      },
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
                                                customConfiguration
                                                  | {  .. }
                                                  | optional,
                                                kind
                                                  | js2n.Enum
                                                    [ "project", null ]
                                                  | optional,
                                                metadata
                                                  | refs."then.then.definitions.metadata"
                                                  | optional,
                                                resources
                                                  | refs."then.then.else.else.else.else.then.definitions.resources"
                                                  | optional,
                                                specVersion
                                                  | std.enum.TagOrString
                                                  | [|
                                                    '"2.4",
                                                    '"2.3",
                                                    '"2.2",
                                                    '"2.1"
                                                  |]
                                                  | optional,
                                                type
                                                  | std.enum.TagOrString
                                                  | [| 'module |]
                                                  | optional,
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
                                                kind
                                                  | js2n.Enum
                                                    [ "project", null ]
                                                  | optional,
                                                metadata
                                                  | refs."then.then.definitions.metadata"
                                                  | optional,
                                                resources
                                                  | refs."then.then.else.else.else.else.then.definitions.resources"
                                                  | optional,
                                                specVersion
                                                  | std.enum.TagOrString
                                                  | [| '"2.0" |]
                                                  | optional,
                                                type
                                                  | std.enum.TagOrString
                                                  | [| 'module |]
                                                  | optional,
                                              },
                                              Array Dyn
                                            ])))),
                                  js2n.record.Required
                                    [ "metadata", "specVersion", "type" ]
                                ]) js2n.Always)))),
                    {
                      kind | js2n.Enum [ "project", null ] | optional,
                      specVersion
                        | std.enum.TagOrString
                        | [|
                          '"2.0",
                          '"2.1",
                          '"2.2",
                          '"2.3",
                          '"2.4",
                          '"2.5",
                          '"2.6",
                          '"3.0",
                          '"3.1",
                          '"3.2",
                          '"4.0"
                        |],
                      type
                        | std.enum.TagOrString
                        | [| 'module, 'theme-library, 'library, 'application |],
                      ..
                    }
                  ])
                (js2n.IfThenElse
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
                          properties =
                            {
                                kind =
                                  std.contract.Sequence
                                      [
                                        std.enum.TagOrString,
                                        [| 'extension |]
                                      ],
                              },
                          required = {},
                        },
                      Array Dyn
                    ])
                  (std.contract.Sequence
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
                                properties = { type = js2n.Const null, },
                                required = {},
                              },
                            Array Dyn
                          ]) js2n.Always
                        (js2n.IfThenElse
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
                                  properties = { type = js2n.Const "task", },
                                  required = {},
                                },
                              Array Dyn
                            ])
                          (std.contract.Sequence
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
                                        properties =
                                          {
                                              specVersion =
                                                std.contract.Sequence
                                                    [
                                                      std.enum.TagOrString,
                                                      [|
                                                        '"4.0",
                                                        '"3.2",
                                                        '"3.1",
                                                        '"3.0"
                                                      |]
                                                    ],
                                            },
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
                                      customConfiguration | {  .. } | optional,
                                      kind
                                        | std.enum.TagOrString
                                        | [| 'extension |]
                                        | optional,
                                      metadata
                                        | refs."then.else.then.definitions.metadata-3.0"
                                        | optional,
                                      specVersion
                                        | std.enum.TagOrString
                                        | [| '"4.0", '"3.2", '"3.1", '"3.0" |]
                                        | optional,
                                      task
                                        | refs."then.else.then.else.then.definitions.task"
                                        | optional,
                                      type
                                        | std.enum.TagOrString
                                        | [| 'task |]
                                        | optional,
                                    },
                                    Array Dyn
                                  ])
                                (js2n.IfThenElse
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
                                          properties =
                                            {
                                                specVersion =
                                                  std.contract.Sequence
                                                      [
                                                        std.enum.TagOrString,
                                                        [|
                                                          '"2.6",
                                                          '"2.5",
                                                          '"2.4",
                                                          '"2.3",
                                                          '"2.2",
                                                          '"2.1"
                                                        |]
                                                      ],
                                              },
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
                                        customConfiguration
                                          | {  .. }
                                          | optional,
                                        kind
                                          | std.enum.TagOrString
                                          | [| 'extension |]
                                          | optional,
                                        metadata
                                          | refs."then.else.then.definitions.metadata"
                                          | optional,
                                        specVersion
                                          | std.enum.TagOrString
                                          | [|
                                            '"2.6",
                                            '"2.5",
                                            '"2.4",
                                            '"2.3",
                                            '"2.2",
                                            '"2.1"
                                          |]
                                          | optional,
                                        task
                                          | refs."then.else.then.else.then.definitions.task"
                                          | optional,
                                        type
                                          | std.enum.TagOrString
                                          | [| 'task |]
                                          | optional,
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
                                        kind
                                          | std.enum.TagOrString
                                          | [| 'extension |]
                                          | optional,
                                        metadata
                                          | refs."then.else.then.definitions.metadata"
                                          | optional,
                                        specVersion
                                          | std.enum.TagOrString
                                          | [| '"2.0" |]
                                          | optional,
                                        task
                                          | refs."then.else.then.else.then.definitions.task"
                                          | optional,
                                        type
                                          | std.enum.TagOrString
                                          | [| 'task |]
                                          | optional,
                                      },
                                      Array Dyn
                                    ])),
                              js2n.record.Required
                                [
                                  "kind",
                                  "metadata",
                                  "specVersion",
                                  "task",
                                  "type"
                                ]
                            ])
                          (js2n.IfThenElse
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
                                    properties =
                                      {
                                          type = js2n.Const "server-middleware",
                                        },
                                    required = {},
                                  },
                                Array Dyn
                              ])
                            (std.contract.Sequence
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
                                          properties =
                                            {
                                                specVersion =
                                                  std.contract.Sequence
                                                      [
                                                        std.enum.TagOrString,
                                                        [|
                                                          '"4.0",
                                                          '"3.2",
                                                          '"3.1",
                                                          '"3.0"
                                                        |]
                                                      ],
                                              },
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
                                        customConfiguration
                                          | {  .. }
                                          | optional,
                                        kind
                                          | std.enum.TagOrString
                                          | [| 'extension |]
                                          | optional,
                                        metadata
                                          | refs."then.else.then.definitions.metadata-3.0"
                                          | optional,
                                        middleware
                                          | refs."then.else.then.else.else.then.definitions.middleware"
                                          | optional,
                                        specVersion
                                          | std.enum.TagOrString
                                          | [| '"4.0", '"3.2", '"3.1", '"3.0" |]
                                          | optional,
                                        type
                                          | std.enum.TagOrString
                                          | [| 'server-middleware |]
                                          | optional,
                                      },
                                      Array Dyn
                                    ])
                                  (js2n.IfThenElse
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
                                            properties =
                                              {
                                                  specVersion =
                                                    std.contract.Sequence
                                                        [
                                                          std.enum.TagOrString,
                                                          [|
                                                            '"2.6",
                                                            '"2.5",
                                                            '"2.4",
                                                            '"2.3",
                                                            '"2.2",
                                                            '"2.1"
                                                          |]
                                                        ],
                                                },
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
                                          customConfiguration
                                            | {  .. }
                                            | optional,
                                          kind
                                            | std.enum.TagOrString
                                            | [| 'extension |]
                                            | optional,
                                          metadata
                                            | refs."then.else.then.definitions.metadata"
                                            | optional,
                                          middleware
                                            | refs."then.else.then.else.else.then.definitions.middleware"
                                            | optional,
                                          specVersion
                                            | std.enum.TagOrString
                                            | [|
                                              '"2.6",
                                              '"2.5",
                                              '"2.4",
                                              '"2.3",
                                              '"2.2",
                                              '"2.1"
                                            |]
                                            | optional,
                                          type
                                            | std.enum.TagOrString
                                            | [| 'server-middleware |]
                                            | optional,
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
                                          kind
                                            | std.enum.TagOrString
                                            | [| 'extension |]
                                            | optional,
                                          metadata
                                            | refs."then.else.then.definitions.metadata"
                                            | optional,
                                          middleware
                                            | refs."then.else.then.else.else.then.definitions.middleware"
                                            | optional,
                                          specVersion
                                            | std.enum.TagOrString
                                            | [| '"2.0" |]
                                            | optional,
                                          type
                                            | std.enum.TagOrString
                                            | [| 'server-middleware |]
                                            | optional,
                                        },
                                        Array Dyn
                                      ])),
                                js2n.record.Required
                                  [
                                    "kind",
                                    "metadata",
                                    "middleware",
                                    "specVersion",
                                    "type"
                                  ]
                              ])
                            (js2n.IfThenElse
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
                                      properties =
                                        { type = js2n.Const "project-shim", },
                                      required = {},
                                    },
                                  Array Dyn
                                ])
                              (std.contract.Sequence
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
                                            properties =
                                              {
                                                  specVersion =
                                                    std.contract.Sequence
                                                        [
                                                          std.enum.TagOrString,
                                                          [|
                                                            '"4.0",
                                                            '"3.2",
                                                            '"3.1",
                                                            '"3.0"
                                                          |]
                                                        ],
                                                },
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
                                          customConfiguration
                                            | {  .. }
                                            | optional,
                                          kind
                                            | std.enum.TagOrString
                                            | [| 'extension |]
                                            | optional,
                                          metadata
                                            | refs."then.else.then.definitions.metadata-3.0"
                                            | optional,
                                          shims
                                            | refs."then.else.then.else.else.else.then.definitions.shims"
                                            | optional,
                                          specVersion
                                            | std.enum.TagOrString
                                            | [|
                                              '"4.0",
                                              '"3.2",
                                              '"3.1",
                                              '"3.0"
                                            |]
                                            | optional,
                                          type
                                            | std.enum.TagOrString
                                            | [| 'project-shim |]
                                            | optional,
                                        },
                                        Array Dyn
                                      ])
                                    (js2n.IfThenElse
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
                                              properties =
                                                {
                                                    specVersion =
                                                      std.contract.Sequence
                                                          [
                                                            std.enum.TagOrString,
                                                            [|
                                                              '"2.6",
                                                              '"2.5",
                                                              '"2.4",
                                                              '"2.3",
                                                              '"2.2",
                                                              '"2.1"
                                                            |]
                                                          ],
                                                  },
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
                                            customConfiguration
                                              | {  .. }
                                              | optional,
                                            kind
                                              | std.enum.TagOrString
                                              | [| 'extension |]
                                              | optional,
                                            metadata
                                              | refs."then.else.then.definitions.metadata"
                                              | optional,
                                            shims
                                              | refs."then.else.then.else.else.else.then.definitions.shims"
                                              | optional,
                                            specVersion
                                              | std.enum.TagOrString
                                              | [|
                                                '"2.6",
                                                '"2.5",
                                                '"2.4",
                                                '"2.3",
                                                '"2.2",
                                                '"2.1"
                                              |]
                                              | optional,
                                            type
                                              | std.enum.TagOrString
                                              | [| 'project-shim |]
                                              | optional,
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
                                            kind
                                              | std.enum.TagOrString
                                              | [| 'extension |]
                                              | optional,
                                            metadata
                                              | refs."then.else.then.definitions.metadata"
                                              | optional,
                                            shims
                                              | refs."then.else.then.else.else.else.then.definitions.shims"
                                              | optional,
                                            specVersion
                                              | std.enum.TagOrString
                                              | [| '"2.0" |]
                                              | optional,
                                            type
                                              | std.enum.TagOrString
                                              | [| 'project-shim |]
                                              | optional,
                                          },
                                          Array Dyn
                                        ])),
                                  js2n.record.Required
                                    [
                                      "kind",
                                      "metadata",
                                      "shims",
                                      "specVersion",
                                      "type"
                                    ]
                                ]) js2n.Always))),
                      {
                        kind | std.enum.TagOrString | [| 'extension |],
                        metadata | refs."then.else.then.definitions.metadata",
                        specVersion
                          | std.enum.TagOrString
                          | [|
                            '"2.0",
                            '"2.1",
                            '"2.2",
                            '"2.3",
                            '"2.4",
                            '"2.5",
                            '"2.6",
                            '"3.0",
                            '"3.1",
                            '"3.2",
                            '"4.0"
                          |],
                        type
                          | std.enum.TagOrString
                          | [| 'project-shim, 'server-middleware, 'task |],
                        ..
                      }
                    ]) js2n.Always),
              {
                kind | js2n.Enum [ "project", "extension", null ] | optional,
                specVersion
                  | std.enum.TagOrString
                  | [|
                    '"2.0",
                    '"2.1",
                    '"2.2",
                    '"2.3",
                    '"2.4",
                    '"2.5",
                    '"2.6",
                    '"3.0",
                    '"3.1",
                    '"3.2",
                    '"4.0"
                  |],
                ..
              }
            ])
          (js2n.IfThenElse
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
                    properties =
                      {
                          specVersion =
                            std.contract.Sequence
                                [
                                  std.enum.TagOrString,
                                  [| '"0.1", '"1.0", '"1.1" |]
                                ],
                        },
                    required = {},
                  },
                Array Dyn
              ])
            (std.contract.any_of
              [ js2n.Null, Bool, Number, String, {  .. }, Array Dyn ])
            js2n.Always),
        {
          specVersion
            | std.enum.TagOrString
            | [|
              '"0.1",
              '"1.0",
              '"1.1",
              '"2.0",
              '"2.1",
              '"2.2",
              '"2.3",
              '"2.4",
              '"2.5",
              '"2.6",
              '"3.0",
              '"3.1",
              '"3.2",
              '"4.0"
            |],
          ..
        }
      ]