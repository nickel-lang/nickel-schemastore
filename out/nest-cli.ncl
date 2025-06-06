# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.AssetsOptions" =
        std.contract.any_of
            [
              String,
              {
                exclude
                  | String
                  | doc "Glob-like file specifications for the assets to be excluded from the include list."
                  | optional,
                include
                  | String
                  | doc "Glob-like file specifications for the assets to be distributed."
                  | optional,
                outDir
                  | String
                  | doc "A string specifying the path (relative to the root folder) where the assets should be distributed. Defaults to the same output directory configured for compiler output."
                  | optional,
                watchAssets
                  | Bool
                  | doc "If true, run in watch mode watching specified assets. Setting watchAssets in a top-level compilerOptions property overrides any watchAssets settings within the assets property."
                  | optional,
              }
            ],
      "definitions.CompilerOptions" =
        {
            assets
              | Array (
                std.contract.Sequence
                  [
                    refs."definitions.AssetsOptions",
                    std.contract.any_of [ { _ | Dyn }, String ]
                  ]
              )
              | doc "Enables automatically distributing non-TypeScript assets whenever a compilation step begins (asset distribution does not happen on incremental compiles in --watch mode). Accept glob-like string and object. See https://docs.nestjs.com/cli/monorepo#assets for details."
              | optional,
            builder
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [ std.enum.TagOrString, [| 'swc, 'webpack, 'tsc |] ],
                  {
                    options
                      | {
                        copyFiles
                          | Bool
                          | doc "Whether to copy files or not."
                          | optional,
                        extensions
                          | Array String
                          | doc "Array of file extensions to be considered."
                          | optional,
                        filenames
                          | Array String
                          | doc "Array of filenames to be included."
                          | optional,
                        includeDotfiles
                          | Bool
                          | doc "Whether to include dotfiles or not."
                          | optional,
                        outDir
                          | String
                          | doc "The directory to output files."
                          | optional,
                        quiet
                          | Bool
                          | doc "Whether to suppress logs or not."
                          | optional,
                        swcrcPath
                          | String
                          | doc "Path to SWC config file to use."
                          | optional,
                        sync
                          | Bool
                          | doc "Whether to synchronize files or not."
                          | optional,
                        watch
                          | Bool
                          | doc "Whether to watch files for changes or not."
                          | optional,
                        ..
                      }
                      | optional,
                    type
                      | std.enum.TagOrString
                      | [| 'swc, 'webpack, 'tsc |]
                      | doc "Builder to be used (tsc, webpack, swc). For details on how to configure `SWC` see https://docs.nestjs.com/recipes/swc#getting-started"
                      | optional,
                    ..
                  }
                ]
              | optional,
            deleteOutDir
              | Bool
              | doc "If true, whenever the compiler is invoked, it will first remove the compilation output directory (as configured in tsconfig.json, where the default is ./dist)."
              | optional,
            manualRestart
              | Bool
              | doc "If true, enables the shortcut `rs` to manually restart the server."
              | optional,
            plugins
              | Array (
                std.contract.Sequence
                  [
                    refs."definitions.PluginItems",
                    std.contract.any_of [ { _ | Dyn }, String ]
                  ]
              )
              | optional,
            tsConfigPath
              | String
              | doc "(monorepo only) Points at the file containing the tsconfig.json settings that will be used when nest build or nest start is called without a project option (e.g., when the default project is built or started). 'nest build' will not work as expected without this file."
              | optional,
            typeCheck
              | Bool
              | doc "If true, enable type checking (when SWC is used). See https://docs.nestjs.com/recipes/swc#type-checking for details."
              | optional,
            watchAssets
              | Bool
              | doc "If true, run in watch-mode, watching all non-TypeScript assets. Setting watchAssets in a top-level compilerOptions property overrides any watchAssets settings within the assets property."
              | optional,
            webpack
              | Bool
              | doc "If true, use webpack compiler (deprecated option, use `builder` instead). If false or not present, use tsc. In monorepo mode, the default is true (use webpack), in standard mode, the default is false (use tsc). See https://docs.nestjs.com/cli/monorepo#cli-properties for details."
              | optional,
            webpackConfigPath
              | String
              | doc "Points at a webpack options file. If not specified, Nest looks for the file webpack.config.js."
              | optional,
          },
      "definitions.GenerateBaseDirOptions" = String,
      "definitions.GenerateFlatOptions" = Bool,
      "definitions.GenerateOptions" =
        {
            baseDir
              | refs."definitions.GenerateBaseDirOptions"
              | String
              | optional,
            flat | refs."definitions.GenerateFlatOptions" | Bool | optional,
            spec
              | refs."definitions.GenerateSpecOptions"
              | std.contract.any_of [ Bool, { _ | Dyn } ]
              | optional,
          },
      "definitions.GenerateSpecOptions" =
        std.contract.any_of
            [
              Bool,
              {
                app | Bool | doc "Alias for sub-app" | optional,
                application
                  | Bool
                  | doc "Generate spec file for application schematics or not."
                  | optional,
                cl | Bool | doc "Alias for class" | optional,
                class
                  | Bool
                  | doc "Disable spec file generation for class schematics."
                  | optional,
                co | Bool | doc "Alias for controller" | optional,
                config | Bool | doc "Alias for configuration" | optional,
                configuration
                  | Bool
                  | doc "Generate spec file for configuration schematics or not."
                  | optional,
                controller
                  | Bool
                  | doc "Generate spec file for controller schematics or not."
                  | optional,
                d | Bool | doc "Alias for decorator" | optional,
                decorator
                  | Bool
                  | doc "Generate spec file for decorator schematics or not."
                  | optional,
                f | Bool | doc "Alias for filter" | optional,
                filter
                  | Bool
                  | doc "Generate spec file for filter schematics or not."
                  | optional,
                ga | Bool | doc "Alias for gateway" | optional,
                gateway
                  | Bool
                  | doc "Generate spec file for gateway schematics or not."
                  | optional,
                gu | Bool | doc "Alias for guard" | optional,
                guard
                  | Bool
                  | doc "Generate spec file for guard schematics or not."
                  | optional,
                "in" | Bool | doc "Alias for interceptor" | optional,
                interceptor
                  | Bool
                  | doc "Generate spec file for interceptor schematics or not."
                  | optional,
                interface
                  | Bool
                  | doc "Generate spec file for interface schematics or not."
                  | optional,
                lib | Bool | doc "Alias for library" | optional,
                library
                  | Bool
                  | doc "Generate spec file for library schematics or not."
                  | optional,
                mi | Bool | doc "Alias for middleware" | optional,
                middleware
                  | Bool
                  | doc "Generate spec file for middleware schematics or not."
                  | optional,
                mo | Bool | doc "Alias for module" | optional,
                module
                  | Bool
                  | doc "Generate spec file for module schematics or not."
                  | optional,
                pi | Bool | doc "Alias for pipe" | optional,
                pipe
                  | Bool
                  | doc "Generate spec file for pipe schematics or not."
                  | optional,
                pr | Bool | doc "Alias for provider" | optional,
                provider
                  | Bool
                  | doc "Generate spec file for provider schematics or not."
                  | optional,
                r | Bool | doc "Alias for resolver" | optional,
                res | Bool | doc "Alias for resource" | optional,
                resolver
                  | Bool
                  | doc "Generate spec file for resolver schematics or not."
                  | optional,
                resource
                  | Bool
                  | doc "Generate spec file for resource schematics or not."
                  | optional,
                s | Bool | doc "Alias for resolver" | optional,
                service
                  | Bool
                  | doc "Generate spec file for service schematics or not."
                  | optional,
                sub-app
                  | Bool
                  | doc "Generate spec file for sub-app schematics or not."
                  | optional,
              }
            ],
      "definitions.GraphQLPluginOptions" =
        {
            typeFileNameSuffix
              | Array Dyn
              | doc "(GraphQL Only) GraphQL types files suffix. Default value: ['.input.ts', '.args.ts', '.entity.ts', '.model.ts']. See https://docs.nestjs.com/graphql/cli-plugin#using-the-cli-plugin for details."
              | optional,
            ..
          },
      "definitions.PluginItems" =
        std.contract.any_of
            [
              String,
              {
                name
                  | String
                  | doc "The npm package name of the cli plugin, eg @nestjs/swagger."
                  | optional,
                options
                  | std.contract.any_of
                    [
                      std.contract.Sequence
                        [ refs."definitions.PluginOptions", { _ | Dyn } ],
                      std.contract.Sequence
                        [
                          refs."definitions.GraphQLPluginOptions",
                          { _ | Dyn }
                        ],
                      std.contract.Sequence
                        [ refs."definitions.SwaggerPluginOptions", { _ | Dyn } ]
                    ]
                  | optional,
                ..
              }
            ],
      "definitions.PluginOptions" =
        {
            introspectComments
              | Bool
              | doc "If set to true, plugin will generate descriptions and example values for properties based on comments."
              | optional,
            ..
          },
      "definitions.ProjectConfiguration" =
        {
            compilerOptions
              | refs."definitions.CompilerOptions"
              | { _ | Dyn }
              | optional,
            entryFile | String | optional,
            generateOptions
              | refs."definitions.GenerateOptions"
              | { _ | Dyn }
              | optional,
            root | String | optional,
            sourceRoot | String | optional,
            type | String | optional,
          },
      "definitions.SwaggerPluginOptions" =
        {
            classValidatorShim
              | Bool
              | doc "(Swagger Only) If set to true, the module will reuse class-validator validation decorators (e.g. @Max(10) will add max: 10 to schema definition). See https://docs.nestjs.com/openapi/cli-plugin#using-the-cli-plugin for details"
              | optional,
            controllerFileNameSuffix
              | String
              | doc "(Swagger Only) Controller files suffix. See https://docs.nestjs.com/openapi/cli-plugin#using-the-cli-plugin for details"
              | optional,
            controllerKeyOfComment
              | String
              | doc "(Swagger Only) The property key to set the comment text to on ApiOperation. See https://docs.nestjs.com/openapi/cli-plugin#using-the-cli-plugin for details"
              | optional,
            dtoFileNameSuffix
              | Array String
              | doc "(Swagger Only) DTO (Data Transfer Object) files suffix. Default value: ['.dto.ts', '.entity.ts']. See https://docs.nestjs.com/openapi/cli-plugin#using-the-cli-plugin for details"
              | optional,
            dtoKeyOfComment
              | String
              | doc "(Swagger Only) The property key to set the comment text to on ApiProperty. See https://docs.nestjs.com/openapi/cli-plugin#using-the-cli-plugin for details"
              | optional,
            ..
          },
    }
    in
  {
      collection
        | String
        | doc "Points at the collection of schematics used to generate components. you generally should not change this value."
        | optional,
      compilerOptions | refs."definitions.CompilerOptions" | optional,
      defaultLibraryPrefix
        | String
        | doc "Default import prefix for newly generated libraries."
        | optional,
      entryFile
        | String
        | doc "The entry file where 'nest start' work with. Default to 'main'."
        | optional,
      generateOptions | refs."definitions.GenerateOptions" | optional,
      language | String | optional,
      monorepo
        | Bool
        | doc "(monorepo only) For a monorepo mode structure, this value is always true."
        | optional,
      projects | { _ | refs."definitions.ProjectConfiguration" } | optional,
      root
        | String
        | doc "(monorepo only) Points at the project root of the default project."
        | optional,
      sourceRoot
        | String
        | doc "Points at the root of the source code for the single project in standard mode structures, or the default project in monorepo mode structures."
        | optional,
      ..
    }