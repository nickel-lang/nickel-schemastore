# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.cliOptions" =
        {
            analytics
              | std.contract.any_of [ Bool, String ]
              | doc "Share anonymous usage data with the Angular Team at Google."
              | optional,
            defaultCollection
              | String
              | doc "The default schematics collection to use."
              | optional,
            packageManager
              | std.enum.TagOrString
              | [| 'pnpm, 'yarn, 'cnpm, 'npm |]
              | doc "Specify which package manager tool to use."
              | optional,
            warnings
              | {
                versionMismatch
                  | Bool
                  | doc "Show a warning when the global version is newer than the local one."
                  | optional,
                ..
              }
              | doc "Control CLI specific console warnings"
              | optional,
          },
      "definitions.fileVersion" =
        std.contract.Sequence [ std.number.Integer, js2n.number.Minimum 1 ],
      "definitions.project" =
        std.contract.Sequence
            [
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
                          js2n.record.Required [ "architect" ],
                          Array Dyn
                        ],
                      std.contract.not
                        (std.contract.any_of
                          [
                            js2n.Null,
                            Bool,
                            Number,
                            String,
                            js2n.record.Required [ "targets" ],
                            Array Dyn
                          ])
                    ],
                  std.contract.Sequence
                    [
                      std.contract.any_of
                        [
                          js2n.Null,
                          Bool,
                          Number,
                          String,
                          js2n.record.Required [ "targets" ],
                          Array Dyn
                        ],
                      std.contract.not
                        (std.contract.any_of
                          [
                            js2n.Null,
                            Bool,
                            Number,
                            String,
                            js2n.record.Required [ "architect" ],
                            Array Dyn
                          ])
                    ],
                  std.contract.not
                    (std.contract.any_of
                      [
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "architect", "targets" ],
                        Array Dyn
                      ])
                ],
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = { "^[a-z]{1,3}-.*" = js2n.Always, },
                  properties =
                    {
                        architect =
                          { _ | refs."definitions.project.definitions.target" },
                        cli =
                          std.contract.Sequence
                              [ refs."definitions.cliOptions", { _ | Dyn } ],
                        i18n =
                          std.contract.Sequence
                              [
                                refs."definitions.project.definitions.i18n",
                                { _ | Dyn }
                              ],
                        prefix = String,
                        projectType =
                          std.contract.Sequence
                              [
                                std.enum.TagOrString,
                                [| 'library, 'application |]
                              ],
                        root = String,
                        schematics =
                          std.contract.Sequence
                              [
                                refs."definitions.schematicOptions",
                                { _ | Dyn }
                              ],
                        sourceRoot = String,
                        targets =
                          { _ | refs."definitions.project.definitions.target" },
                      },
                  required = { projectType = true, root = true, },
                }
            ],
      "definitions.project.definitions.i18n" =
        {
            locales
              | {
                _ | std.contract.any_of
                  [
                    String,
                    Array String,
                    {
                      baseHref
                        | String
                        | doc "HTML base HREF to use for the locale (defaults to the locale code)"
                        | optional,
                      translation
                        | std.contract.any_of [ String, Array String ]
                        | optional,
                    }
                  ]
              }
              | js2n.record.FieldsMatch
                "^[a-zA-Z]{2,3}(-[a-zA-Z]{4})?(-([a-zA-Z]{2}|[0-9]{3}))?(-[a-zA-Z]{5,8})?(-x(-[a-zA-Z0-9]{1,8})+)?$"
              | optional,
            sourceLocale
              | std.contract.any_of
                [
                  js2n.string.Matches
                    "^[a-zA-Z]{2,3}(-[a-zA-Z]{4})?(-([a-zA-Z]{2}|[0-9]{3}))?(-[a-zA-Z]{5,8})?(-x(-[a-zA-Z0-9]{1,8})+)?$",
                  {
                    baseHref
                      | String
                      | doc "HTML base HREF to use for the locale (defaults to the locale code)"
                      | optional,
                    code
                      | js2n.string.Matches
                        "^[a-zA-Z]{2,3}(-[a-zA-Z]{4})?(-([a-zA-Z]{2}|[0-9]{3}))?(-[a-zA-Z]{5,8})?(-x(-[a-zA-Z0-9]{1,8})+)?$"
                      | doc "Specifies the locale code of the source locale"
                      | optional,
                  }
                ]
              | optional,
          },
      "definitions.project.definitions.target" =
        js2n.OneOf
            [
              js2n.record.Record
                {
                  additional = 'Some Dyn,
                  patterns = {},
                  properties =
                    {
                        builder =
                          std.contract.Sequence
                              [
                                std.contract.not
                                  (std.contract.Sequence
                                    [
                                      std.enum.TagOrString,
                                      [|
                                        '"@angular-devkit/build-angular:tslint",
                                        '"@angular-devkit/build-angular:server",
                                        '"@angular-devkit/build-angular:protractor",
                                        '"@angular-devkit/build-angular:karma",
                                        '"@angular-devkit/build-angular:extract-i18n",
                                        '"@angular-devkit/build-angular:dev-server",
                                        '"@angular-devkit/build-angular:browser",
                                        '"@angular-devkit/build-angular:app-shell"
                                      |]
                                    ]),
                                String
                              ],
                        configurations =
                          js2n.record.Record
                              {
                                additional = 'Some ({ _ | Dyn }),
                                patterns = {},
                                properties = {},
                                required = {},
                              },
                        options = { _ | Dyn },
                      },
                  required = { builder = true, },
                },
              js2n.record.Record
                {
                  additional = 'Some Dyn,
                  patterns = {},
                  properties =
                    {
                        builder =
                          js2n.Const "@angular-devkit/build-angular:app-shell",
                        configurations =
                          js2n.record.Record
                              {
                                additional =
                                  'Some
                                      (std.contract.Sequence
                                        [
                                          refs."definitions.targetOptions.definitions.appShell",
                                          { _ | Dyn }
                                        ]),
                                patterns = {},
                                properties = {},
                                required = {},
                              },
                        options =
                          std.contract.Sequence
                              [
                                refs."definitions.targetOptions.definitions.appShell",
                                { _ | Dyn }
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
                        builder =
                          js2n.Const "@angular-devkit/build-angular:browser",
                        configurations =
                          js2n.record.Record
                              {
                                additional =
                                  'Some
                                      refs."definitions.targetOptions.definitions.browser",
                                patterns = {},
                                properties = {},
                                required = {},
                              },
                        options =
                          refs."definitions.targetOptions.definitions.browser",
                      },
                  required = {},
                },
              js2n.record.Record
                {
                  additional = 'Some Dyn,
                  patterns = {},
                  properties =
                    {
                        builder =
                          js2n.Const "@angular-devkit/build-angular:dev-server",
                        configurations =
                          js2n.record.Record
                              {
                                additional =
                                  'Some
                                      (std.contract.Sequence
                                        [
                                          refs."definitions.targetOptions.definitions.devServer",
                                          { _ | Dyn }
                                        ]),
                                patterns = {},
                                properties = {},
                                required = {},
                              },
                        options =
                          std.contract.Sequence
                              [
                                refs."definitions.targetOptions.definitions.devServer",
                                { _ | Dyn }
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
                        builder =
                          js2n.Const
                              "@angular-devkit/build-angular:extract-i18n",
                        configurations =
                          js2n.record.Record
                              {
                                additional =
                                  'Some
                                      (std.contract.Sequence
                                        [
                                          refs."definitions.targetOptions.definitions.extracti18n",
                                          { _ | Dyn }
                                        ]),
                                patterns = {},
                                properties = {},
                                required = {},
                              },
                        options =
                          std.contract.Sequence
                              [
                                refs."definitions.targetOptions.definitions.extracti18n",
                                { _ | Dyn }
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
                        builder =
                          js2n.Const "@angular-devkit/build-angular:karma",
                        configurations =
                          js2n.record.Record
                              {
                                additional =
                                  'Some
                                      (std.contract.Sequence
                                        [
                                          refs."definitions.targetOptions.definitions.karma",
                                          { _ | Dyn }
                                        ]),
                                patterns = {},
                                properties = {},
                                required = {},
                              },
                        options =
                          std.contract.Sequence
                              [
                                refs."definitions.targetOptions.definitions.karma",
                                { _ | Dyn }
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
                        builder =
                          js2n.Const "@angular-devkit/build-angular:protractor",
                        configurations =
                          js2n.record.Record
                              {
                                additional =
                                  'Some
                                      (std.contract.Sequence
                                        [
                                          refs."definitions.targetOptions.definitions.protractor",
                                          { _ | Dyn }
                                        ]),
                                patterns = {},
                                properties = {},
                                required = {},
                              },
                        options =
                          std.contract.Sequence
                              [
                                refs."definitions.targetOptions.definitions.protractor",
                                { _ | Dyn }
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
                        builder =
                          js2n.Const "@angular-devkit/build-angular:server",
                        configurations =
                          js2n.record.Record
                              {
                                additional =
                                  'Some
                                      refs."definitions.targetOptions.definitions.server",
                                patterns = {},
                                properties = {},
                                required = {},
                              },
                        options =
                          refs."definitions.targetOptions.definitions.server",
                      },
                  required = {},
                },
              js2n.record.Record
                {
                  additional = 'Some Dyn,
                  patterns = {},
                  properties =
                    {
                        builder =
                          js2n.Const "@angular-devkit/build-angular:tslint",
                        configurations =
                          js2n.record.Record
                              {
                                additional =
                                  'Some
                                      (std.contract.Sequence
                                        [
                                          refs."definitions.targetOptions.definitions.tslint",
                                          { _ | Dyn }
                                        ]),
                                patterns = {},
                                properties = {},
                                required = {},
                              },
                        options =
                          std.contract.Sequence
                              [
                                refs."definitions.targetOptions.definitions.tslint",
                                { _ | Dyn }
                              ],
                      },
                  required = {},
                }
            ],
      "definitions.schematicOptions" =
        js2n.record.Record
            {
              additional = 'Some ({ _ | Dyn }),
              patterns = {},
              properties =
                {
                    "@schematics/angular:class" =
                      {
                          skipTests
                            | Bool
                            | doc "When true, does not create test files."
                            | optional,
                          ..
                        },
                    "@schematics/angular:component" =
                      {
                          changeDetection
                            | std.enum.TagOrString
                            | [| 'OnPush, 'Default |]
                            | doc "Specifies the change detection strategy."
                            | optional,
                          displayBlock
                            | Bool
                            | doc "Specifies if the style will contain `:host { display: block; }`."
                            | optional,
                          entryComponent
                            | Bool
                            | doc "Specifies if the component is an entry component of declaring module."
                            | optional,
                          export
                            | Bool
                            | doc "Specifies if declaring module exports the component."
                            | optional,
                          flat
                            | Bool
                            | doc "Flag to indicate if a directory is created."
                            | optional,
                          inlineStyle
                            | Bool
                            | doc "Specifies if the style will be in the ts file."
                            | optional,
                          inlineTemplate
                            | Bool
                            | doc "Specifies if the template will be in the ts file."
                            | optional,
                          module
                            | String
                            | doc "Allows specification of the declaring module."
                            | optional,
                          prefix
                            | String
                            | doc "The prefix to apply to generated selectors."
                            | optional,
                          selector
                            | String
                            | doc "The selector to use for the component."
                            | optional,
                          skipImport
                            | Bool
                            | doc "Flag to skip the module import."
                            | optional,
                          skipTests
                            | Bool
                            | doc "When true, does not create test files."
                            | optional,
                          style
                            | std.enum.TagOrString
                            | [| 'styl, 'less, 'sass, 'scss, 'css |]
                            | doc "The file extension or preprocessor to use for style files."
                            | optional,
                          viewEncapsulation
                            | std.enum.TagOrString
                            | [| 'ShadowDom, 'None, 'Native, 'Emulated |]
                            | doc "Specifies the view encapsulation strategy."
                            | optional,
                          ..
                        },
                    "@schematics/angular:directive" =
                      {
                          export
                            | Bool
                            | doc "Specifies if declaring module exports the directive."
                            | optional,
                          flat
                            | Bool
                            | doc "Flag to indicate if a directory is created."
                            | optional,
                          module
                            | String
                            | doc "Allows specification of the declaring module."
                            | optional,
                          prefix
                            | String
                            | doc "The prefix to apply to generated selectors."
                            | optional,
                          selector
                            | String
                            | doc "The selector to use for the directive."
                            | optional,
                          skipImport
                            | Bool
                            | doc "Flag to skip the module import."
                            | optional,
                          skipTests
                            | Bool
                            | doc "When true, does not create test files."
                            | optional,
                          ..
                        },
                    "@schematics/angular:module" =
                      {
                          commonModule
                            | Bool
                            | doc "Flag to control whether the CommonModule is imported."
                            | optional,
                          flat
                            | Bool
                            | doc "Flag to indicate if a directory is created."
                            | optional,
                          module
                            | String
                            | doc "Allows specification of the declaring module."
                            | optional,
                          routing
                            | Bool
                            | doc "Generates a routing module."
                            | optional,
                          routingScope
                            | std.enum.TagOrString
                            | [| 'Root, 'Child |]
                            | doc "The scope for the generated routing."
                            | optional,
                          ..
                        },
                    "@schematics/angular:pipe" =
                      {
                          export
                            | Bool
                            | doc "Specifies if declaring module exports the pipe."
                            | optional,
                          flat
                            | Bool
                            | doc "Flag to indicate if a directory is created."
                            | optional,
                          module
                            | String
                            | doc "Allows specification of the declaring module."
                            | optional,
                          skipImport
                            | Bool
                            | doc "Allows for skipping the module import."
                            | optional,
                          skipTests
                            | Bool
                            | doc "When true, does not create test files."
                            | optional,
                          ..
                        },
                    "@schematics/angular:service" =
                      {
                          flat
                            | Bool
                            | doc "Flag to indicate if a directory is created."
                            | optional,
                          skipTests
                            | Bool
                            | doc "When true, does not create test files."
                            | optional,
                          ..
                        },
                  },
              required = {},
            },
      "definitions.targetOptions.definitions.appShell" =
        {
            appModuleBundle
              | String
              | doc "Script that exports the Server AppModule to render. This should be the main JavaScript outputted by the server target. By default we will resolve the outputPath of the serverTarget and find a bundle named 'main' in it (whether or not there's a hash tag)."
              | optional,
            browserTarget | String | doc "Target to build." | optional,
            inputIndexPath
              | String
              | doc "The input path for the index.html file. By default uses the output index.html of the browser target."
              | optional,
            outputIndexPath
              | String
              | doc "The output path of the index.html file. By default will overwrite the input file."
              | optional,
            route | String | doc "The route to render." | optional,
            serverTarget
              | String
              | doc "Server target to use for rendering the app shell."
              | optional,
          },
      "definitions.targetOptions.definitions.browser" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                allowedCommonJsDependencies
                  | Array String
                  | doc "A list of CommonJS packages that are allowed to be used without a build time warning."
                  | optional,
                aot
                  | Bool
                  | doc "Build using Ahead of Time compilation."
                  | optional,
                assets
                  | Array
                    refs."definitions.targetOptions.definitions.browser.definitions.assetPattern"
                  | doc "List of static application assets."
                  | optional,
                baseHref
                  | String
                  | doc "Base url for the application being built."
                  | optional,
                budgets
                  | Array (
                    std.contract.Sequence
                      [
                        refs."definitions.targetOptions.definitions.browser.definitions.budget",
                        { _ | Dyn }
                      ]
                  )
                  | doc "Budget thresholds to ensure parts of your application stay within boundaries which you set."
                  | optional,
                buildOptimizer
                  | Bool
                  | doc "Enables @angular-devkit/build-optimizer optimizations when using the 'aot' option."
                  | optional,
                commonChunk
                  | Bool
                  | doc "Use a separate bundle containing code used across multiple bundles."
                  | optional,
                crossOrigin
                  | std.enum.TagOrString
                  | [| 'use-credentials, 'anonymous, 'none |]
                  | doc "Define the crossorigin attribute setting of elements that provide CORS support."
                  | optional,
                deleteOutputPath
                  | Bool
                  | doc "Delete the output path before building."
                  | optional,
                deployUrl
                  | String
                  | doc "URL where files will be deployed."
                  | optional,
                experimentalRollupPass
                  | Bool
                  | doc "Concatenate modules with Rollup before bundling them with Webpack."
                  | optional,
                extractCss
                  | Bool
                  | doc "Extract css from global styles onto css files instead of js ones."
                  | optional,
                extractLicenses
                  | Bool
                  | doc "Extract all licenses in a separate file, in the case of production builds only."
                  | optional,
                fileReplacements
                  | Array
                    refs."definitions.targetOptions.definitions.browser.definitions.fileReplacement"
                  | doc "Replace compilation source files with other compilation source files in the build."
                  | optional,
                forkTypeChecker
                  | Bool
                  | doc "Run the TypeScript type checker in a forked process."
                  | optional,
                i18nFile
                  | String
                  | doc "Localization file to use for i18n."
                  | optional,
                i18nFormat
                  | String
                  | doc "Format of the localization file specified with --i18n-file."
                  | optional,
                i18nLocale | String | doc "Locale to use for i18n." | optional,
                i18nMissingTranslation | js2n.Always | optional,
                index
                  | std.contract.any_of
                    [
                      String,
                      {
                        input
                          | js2n.string.MinLength 1
                          | doc "The path of a file to use for the application's generated HTML index.",
                        output
                          | js2n.string.MinLength 1
                          | doc "The output path of the application's generated HTML index file. The full provided path will be used and will be considered relative to the application's configured output path."
                          | optional,
                        ..
                      }
                    ]
                  | doc "Configures the generation of the application's HTML index."
                  | optional,
                lazyModules
                  | Array String
                  | doc "List of additional NgModule files that will be lazy loaded. Lazy router modules with be discovered automatically."
                  | optional,
                localize | js2n.Always | optional,
                main
                  | String
                  | doc "The name of the main entry-point file."
                  | optional,
                namedChunks
                  | Bool
                  | doc "Use file name for lazy loaded chunks."
                  | optional,
                ngswConfigPath
                  | String
                  | doc "Path to ngsw-config.json."
                  | optional,
                optimization
                  | std.contract.any_of
                    [
                      {
                        scripts
                          | Bool
                          | doc "Enables optimization of the scripts output."
                          | optional,
                        styles
                          | Bool
                          | doc "Enables optimization of the styles output."
                          | optional,
                      },
                      Bool
                    ]
                  | doc "Enables optimization of the build output."
                  | optional,
                outputHashing
                  | std.enum.TagOrString
                  | [| 'bundles, 'media, 'all, 'none |]
                  | doc "Define the output filename cache-busting hashing mode."
                  | optional,
                outputPath
                  | String
                  | doc "Path where output will be placed."
                  | optional,
                poll
                  | Number
                  | doc "Enable and define the file watching poll time period in milliseconds."
                  | optional,
                polyfills
                  | String
                  | doc "The name of the polyfills file."
                  | optional,
                preserveSymlinks
                  | Bool
                  | doc "Do not use the real path when resolving modules."
                  | optional,
                progress
                  | Bool
                  | doc "Log progress to the console while building."
                  | optional,
                rebaseRootRelativeCssUrls
                  | Bool
                  | doc "Change root relative URLs in stylesheets to include base HREF and deploy URL. Use only for compatibility and transition. The behavior of this option is non-standard and will be removed in the next major release."
                  | optional,
                resourcesOutputPath
                  | String
                  | doc "The path where style resources will be placed, relative to outputPath."
                  | optional,
                scripts
                  | Array
                    refs."definitions.targetOptions.definitions.browser.definitions.extraEntryPoint"
                  | doc "Global scripts to be included in the build."
                  | optional,
                serviceWorker
                  | Bool
                  | doc "Generates a service worker config for production builds."
                  | optional,
                showCircularDependencies
                  | Bool
                  | doc "Show circular dependency warnings on builds."
                  | optional,
                sourceMap
                  | std.contract.any_of
                    [
                      {
                        hidden
                          | Bool
                          | doc "Output sourcemaps used for error reporting tools."
                          | optional,
                        scripts
                          | Bool
                          | doc "Output sourcemaps for all scripts."
                          | optional,
                        styles
                          | Bool
                          | doc "Output sourcemaps for all styles."
                          | optional,
                        vendor
                          | Bool
                          | doc "Resolve vendor packages sourcemaps."
                          | optional,
                      },
                      Bool
                    ]
                  | doc "Output sourcemaps."
                  | optional,
                statsJson
                  | Bool
                  | doc "Generates a 'stats.json' file which can be analyzed using tools such as 'webpack-bundle-analyzer'."
                  | optional,
                stylePreprocessorOptions
                  | {
                    includePaths
                      | Array String
                      | doc "Paths to include. Paths will be resolved to project root."
                      | optional,
                  }
                  | doc "Options to pass to style preprocessors."
                  | optional,
                styles
                  | Array
                    refs."definitions.targetOptions.definitions.browser.definitions.extraEntryPoint"
                  | doc "Global styles to be included in the build."
                  | optional,
                subresourceIntegrity
                  | Bool
                  | doc "Enables the use of subresource integrity validation."
                  | optional,
                tsConfig
                  | String
                  | doc "The name of the TypeScript configuration file."
                  | optional,
                vendorChunk
                  | Bool
                  | doc "Use a separate bundle containing only vendor libraries."
                  | optional,
                verbose
                  | Bool
                  | doc "Adds more details to output logging."
                  | optional,
                watch | Bool | doc "Run build when files change." | optional,
                webWorkerTsConfig
                  | String
                  | doc "TypeScript configuration for Web Worker modules."
                  | optional,
              },
              Array Dyn
            ],
      "definitions.targetOptions.definitions.browser.definitions.assetPattern" =
        std.contract.any_of
            [
              {
                glob | String | doc "The pattern to match.",
                ignore
                  | Array String
                  | doc "An array of globs to ignore."
                  | optional,
                input
                  | String
                  | doc "The input path dir in which to apply 'glob'. Defaults to the project root.",
                output | String | doc "Absolute path within the output.",
              },
              String
            ],
      "definitions.targetOptions.definitions.browser.definitions.budget" =
        {
            baseline
              | String
              | doc "The baseline size for comparison."
              | optional,
            error
              | String
              | doc "The threshold for error relative to the baseline (min & max)."
              | optional,
            maximumError
              | String
              | doc "The maximum threshold for error relative to the baseline."
              | optional,
            maximumWarning
              | String
              | doc "The maximum threshold for warning relative to the baseline."
              | optional,
            minimumError
              | String
              | doc "The minimum threshold for error relative to the baseline."
              | optional,
            minimumWarning
              | String
              | doc "The minimum threshold for warning relative to the baseline."
              | optional,
            name | String | doc "The name of the bundle." | optional,
            type
              | std.enum.TagOrString
              | [|
                'initial,
                'bundle,
                'anyComponentStyle,
                'anyScript,
                'any,
                'allScript,
                'all
              |]
              | doc "The type of budget.",
            warning
              | String
              | doc "The threshold for warning relative to the baseline (min & max)."
              | optional,
          },
      "definitions.targetOptions.definitions.browser.definitions.extraEntryPoint" =
        std.contract.any_of
            [
              {
                bundleName
                  | String
                  | doc "The bundle name for this extra entry point."
                  | optional,
                inject
                  | Bool
                  | doc "If the bundle will be referenced in the HTML file."
                  | optional,
                input | String | doc "The file to include.",
                lazy
                  | Bool
                  | doc "If the bundle will be lazy loaded."
                  | optional,
              },
              String
            ],
      "definitions.targetOptions.definitions.browser.definitions.fileReplacement" =
        js2n.OneOf
            [
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties = { replaceWith = String, src = String, },
                  required = { replaceWith = true, src = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties = { replace = String, with = String, },
                  required = { replace = true, with = true, },
                }
            ],
      "definitions.targetOptions.definitions.devServer" =
        {
            allowedHosts
              | Array String
              | doc "List of hosts that are allowed to access the dev server."
              | optional,
            aot
              | Bool
              | doc "Build using ahead-of-time compilation."
              | optional,
            baseHref
              | String
              | doc "Base url for the application being built."
              | optional,
            browserTarget | String | doc "Target to serve." | optional,
            commonChunk
              | Bool
              | doc "When true, use a separate bundle containing code used across multiple bundles."
              | optional,
            deployUrl
              | String
              | doc "URL where files will be deployed."
              | optional,
            disableHostCheck
              | Bool
              | doc "When true, don't verify that connected clients are part of allowed hosts."
              | optional,
            hmr
              | Bool
              | doc "When true, enable hot module replacement."
              | optional,
            hmrWarning
              | Bool
              | doc "When true, show a warning when the --hmr option is enabled."
              | optional,
            host | String | doc "Host to listen on." | optional,
            liveReload
              | Bool
              | doc "When true, reload the page on change using live-reload."
              | optional,
            open
              | Bool
              | doc "When true, open the live-reload URL in default browser."
              | optional,
            optimization
              | std.contract.any_of
                [
                  {
                    scripts
                      | Bool
                      | doc "When true, enable optimization of the scripts output."
                      | optional,
                    styles
                      | Bool
                      | doc "When true, enable optimization of the styles output."
                      | optional,
                  },
                  Bool
                ]
              | doc "Enable optimization of the build output."
              | optional,
            port | Number | doc "Port to listen on." | optional,
            progress
              | Bool
              | doc "When true, log progress to the console while building."
              | optional,
            proxyConfig | String | doc "Proxy configuration file." | optional,
            publicHost
              | String
              | doc "The URL that the browser client (or live-reload client, if enabled) should use to connect to the development server. Use for a complex dev server setup, such as one with reverse proxies."
              | optional,
            servePath
              | String
              | doc "The pathname where the app will be served."
              | optional,
            servePathDefaultWarning
              | Bool
              | doc "When true, show a warning when deploy-url/base-href use unsupported serve path values."
              | optional,
            sourceMap
              | std.contract.any_of
                [
                  {
                    scripts
                      | Bool
                      | doc "When true, output sourcemaps for all scripts."
                      | optional,
                    styles
                      | Bool
                      | doc "When true, output sourcemaps for all styles."
                      | optional,
                    vendor
                      | Bool
                      | doc "When true, resolve vendor packages sourcemaps."
                      | optional,
                  },
                  Bool
                ]
              | doc "When true, output sourcemaps."
              | optional,
            ssl | Bool | doc "Serve using HTTPS." | optional,
            sslCert
              | String
              | doc "SSL certificate to use for serving HTTPS."
              | optional,
            sslKey
              | String
              | doc "SSL key to use for serving HTTPS."
              | optional,
            vendorChunk
              | Bool
              | doc "When true, use a separate bundle containing only vendor libraries."
              | optional,
            verbose
              | Bool
              | doc "When true, add more details to output logging."
              | optional,
            watch | Bool | doc "When true, rebuild on change." | optional,
          },
      "definitions.targetOptions.definitions.extracti18n" =
        {
            browserTarget | String | doc "Target to extract from." | optional,
            format
              | std.enum.TagOrString
              | [| 'xliff2, 'xlf2, 'xliff, 'xlif, 'xlf, 'xmb |]
              | doc "Output format for the generated file."
              | optional,
            i18nFormat
              | std.enum.TagOrString
              | [| 'xliff2, 'xlf2, 'xliff, 'xlif, 'xlf, 'xmb |]
              | doc "Output format for the generated file."
              | optional,
            i18nLocale
              | String
              | doc "Specifies the source language of the application."
              | optional,
            ivy
              | Bool
              | doc "Use Ivy compiler to extract translations."
              | optional,
            outFile | String | doc "Name of the file to output." | optional,
            outputPath
              | String
              | doc "Path where output will be placed."
              | optional,
            progress | Bool | doc "Log progress to the console." | optional,
          },
      "definitions.targetOptions.definitions.karma" =
        {
            assets
              | Array
                refs."definitions.targetOptions.definitions.karma.definitions.assetPattern"
              | doc "List of static application assets."
              | optional,
            browsers
              | String
              | doc "Override which browsers tests are run against."
              | optional,
            codeCoverage
              | Bool
              | doc "Output a code coverage report."
              | optional,
            codeCoverageExclude
              | Array String
              | doc "Globs to exclude from code coverage."
              | optional,
            environment
              | String
              | doc "Defines the build environment."
              | optional,
            fileReplacements
              | Array (
                js2n.OneOf
                  [
                    js2n.record.Record
                      {
                        additional = 'None,
                        patterns = {},
                        properties = { replaceWith = String, src = String, },
                        required = { replaceWith = true, src = true, },
                      },
                    js2n.record.Record
                      {
                        additional = 'None,
                        patterns = {},
                        properties = { replace = String, with = String, },
                        required = { replace = true, with = true, },
                      }
                  ]
              )
              | doc "Replace compilation source files with other compilation source files in the build."
              | optional,
            karmaConfig
              | String
              | doc "The name of the Karma configuration file."
              | optional,
            main
              | String
              | doc "The name of the main entry-point file."
              | optional,
            poll
              | Number
              | doc "Enable and define the file watching poll time period in milliseconds."
              | optional,
            polyfills
              | String
              | doc "The name of the polyfills file."
              | optional,
            preserveSymlinks
              | Bool
              | doc "Do not use the real path when resolving modules."
              | optional,
            progress
              | Bool
              | doc "Log progress to the console while building."
              | optional,
            reporters
              | Array String
              | doc "Karma reporters to use. Directly passed to the karma runner."
              | optional,
            scripts
              | Array
                refs."definitions.targetOptions.definitions.karma.definitions.extraEntryPoint"
              | doc "Global scripts to be included in the build."
              | optional,
            sourceMap
              | std.contract.any_of
                [
                  {
                    scripts
                      | Bool
                      | doc "Output sourcemaps for all scripts."
                      | optional,
                    styles
                      | Bool
                      | doc "Output sourcemaps for all styles."
                      | optional,
                    vendor
                      | Bool
                      | doc "Resolve vendor packages sourcemaps."
                      | optional,
                  },
                  Bool
                ]
              | doc "Output sourcemaps."
              | optional,
            stylePreprocessorOptions
              | {
                includePaths
                  | Array String
                  | doc "Paths to include. Paths will be resolved to project root."
                  | optional,
              }
              | doc "Options to pass to style preprocessors"
              | optional,
            styles
              | Array
                refs."definitions.targetOptions.definitions.karma.definitions.extraEntryPoint"
              | doc "Global styles to be included in the build."
              | optional,
            tsConfig
              | String
              | doc "The name of the TypeScript configuration file."
              | optional,
            watch | Bool | doc "Run build when files change." | optional,
            webWorkerTsConfig
              | String
              | doc "TypeScript configuration for Web Worker modules."
              | optional,
          },
      "definitions.targetOptions.definitions.karma.definitions.assetPattern" =
        std.contract.any_of
            [
              {
                glob | String | doc "The pattern to match.",
                ignore
                  | Array String
                  | doc "An array of globs to ignore."
                  | optional,
                input
                  | String
                  | doc "The input path dir in which to apply 'glob'. Defaults to the project root.",
                output | String | doc "Absolute path within the output.",
              },
              String
            ],
      "definitions.targetOptions.definitions.karma.definitions.extraEntryPoint" =
        std.contract.any_of
            [
              {
                bundleName
                  | String
                  | doc "The bundle name for this extra entry point."
                  | optional,
                inject
                  | Bool
                  | doc "If the bundle will be referenced in the HTML file."
                  | optional,
                input | String | doc "The file to include.",
                lazy
                  | Bool
                  | doc "If the bundle will be lazy loaded."
                  | optional,
              },
              String
            ],
      "definitions.targetOptions.definitions.protractor" =
        {
            baseUrl
              | String
              | doc "Base URL for protractor to connect to."
              | optional,
            devServerTarget
              | String
              | doc "Dev server target to run tests against."
              | optional,
            grep
              | String
              | doc "Execute specs whose names match the pattern, which is internally compiled to a RegExp."
              | optional,
            host | String | doc "Host to listen on." | optional,
            invertGrep
              | Bool
              | doc "Invert the selection specified by the 'grep' option."
              | optional,
            port
              | Number
              | doc "The port to use to serve the application."
              | optional,
            protractorConfig
              | String
              | doc "The name of the Protractor configuration file."
              | optional,
            serve | Bool | doc "Compile and Serve the app." | optional,
            specs
              | Array String
              | doc "Override specs in the protractor config."
              | optional,
            suite
              | String
              | doc "Override suite in the protractor config."
              | optional,
            webdriverUpdate | Bool | doc "Try to update webdriver." | optional,
          },
      "definitions.targetOptions.definitions.server" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                bundleDependencies
                  | std.contract.any_of
                    [
                      Bool,
                      std.contract.Sequence
                        [ std.enum.TagOrString, [| 'all, 'none |] ]
                    ]
                  | doc "Available on server platform only. Which external dependencies to bundle into the module. By default, all of node_modules will be bundled."
                  | optional,
                deleteOutputPath | Bool | doc "delete-output-path" | optional,
                externalDependencies
                  | Array String
                  | doc "Exclude the listed external dependencies from being bundled into the bundle. Instead, the created bundle relies on these dependencies to be available during runtime."
                  | optional,
                extractLicenses
                  | Bool
                  | doc "Extract all licenses in a separate file, in the case of production builds only."
                  | optional,
                fileReplacements
                  | Array
                    refs."definitions.targetOptions.definitions.server.definitions.fileReplacement"
                  | doc "Replace compilation source files with other compilation source files in the build."
                  | optional,
                forkTypeChecker
                  | Bool
                  | doc "Run the TypeScript type checker in a forked process."
                  | optional,
                i18nFile
                  | String
                  | doc "Localization file to use for i18n."
                  | optional,
                i18nFormat
                  | String
                  | doc "Format of the localization file specified with --i18n-file."
                  | optional,
                i18nLocale | String | doc "Locale to use for i18n." | optional,
                i18nMissingTranslation | js2n.Always | optional,
                lazyModules
                  | Array String
                  | doc "List of additional NgModule files that will be lazy loaded. Lazy router modules with be discovered automatically."
                  | optional,
                localize | js2n.Always | optional,
                main
                  | String
                  | doc "The name of the main entry-point file."
                  | optional,
                namedChunks
                  | Bool
                  | doc "Use file name for lazy loaded chunks."
                  | optional,
                optimization
                  | std.contract.any_of
                    [
                      {
                        scripts
                          | Bool
                          | doc "Enables optimization of the scripts output."
                          | optional,
                        styles
                          | Bool
                          | doc "Enables optimization of the styles output."
                          | optional,
                      },
                      Bool
                    ]
                  | doc "Enables optimization of the build output."
                  | optional,
                outputHashing
                  | std.enum.TagOrString
                  | [| 'bundles, 'media, 'all, 'none |]
                  | doc "Define the output filename cache-busting hashing mode."
                  | optional,
                outputPath
                  | String
                  | doc "Path where output will be placed."
                  | optional,
                preserveSymlinks
                  | Bool
                  | doc "Do not use the real path when resolving modules."
                  | optional,
                progress
                  | Bool
                  | doc "Log progress to the console while building."
                  | optional,
                resourcesOutputPath
                  | String
                  | doc "The path where style resources will be placed, relative to outputPath."
                  | optional,
                showCircularDependencies
                  | Bool
                  | doc "Show circular dependency warnings on builds."
                  | optional,
                sourceMap
                  | std.contract.any_of
                    [
                      {
                        hidden
                          | Bool
                          | doc "Output sourcemaps used for error reporting tools."
                          | optional,
                        scripts
                          | Bool
                          | doc "Output sourcemaps for all scripts."
                          | optional,
                        styles
                          | Bool
                          | doc "Output sourcemaps for all styles."
                          | optional,
                        vendor
                          | Bool
                          | doc "Resolve vendor packages sourcemaps."
                          | optional,
                      },
                      Bool
                    ]
                  | doc "Output sourcemaps."
                  | optional,
                statsJson
                  | Bool
                  | doc "Generates a 'stats.json' file which can be analyzed using tools such as 'webpack-bundle-analyzer'."
                  | optional,
                stylePreprocessorOptions
                  | {
                    includePaths
                      | Array String
                      | doc "Paths to include. Paths will be resolved to project root."
                      | optional,
                  }
                  | doc "Options to pass to style preprocessors"
                  | optional,
                tsConfig
                  | String
                  | doc "The name of the TypeScript configuration file."
                  | optional,
                verbose
                  | Bool
                  | doc "Adds more details to output logging."
                  | optional,
              },
              Array Dyn
            ],
      "definitions.targetOptions.definitions.server.definitions.fileReplacement" =
        js2n.OneOf
            [
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties = { replaceWith = String, src = String, },
                  required = { replaceWith = true, src = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties = { replace = String, with = String, },
                  required = { replace = true, with = true, },
                }
            ],
      "definitions.targetOptions.definitions.tslint" =
        {
            exclude
              | Array String
              | doc "Files to exclude from linting."
              | optional,
            files
              | Array String
              | doc "Files to include in linting."
              | optional,
            fix
              | Bool
              | doc "Fixes linting errors (may overwrite linted files)."
              | optional,
            "force"
              | Bool
              | doc "Succeeds even if there was linting errors."
              | optional,
            format
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [
                      std.enum.TagOrString,
                      [|
                        'vso,
                        'verbose,
                        'tap,
                        'stylish,
                        'prose,
                        'pmd,
                        'msbuild,
                        'junit,
                        'json,
                        'filesList,
                        'codeFrame,
                        'checkstyle
                      |]
                    ],
                  js2n.string.MinLength 1
                ]
              | doc "Output format (prose, json, stylish, verbose, pmd, msbuild, checkstyle, vso, fileslist, codeFrame)."
              | optional,
            silent | Bool | doc "Show output text." | optional,
            tsConfig
              | std.contract.any_of [ String, Array String ]
              | doc "The name of the TypeScript configuration file."
              | optional,
            tslintConfig
              | String
              | doc "The name of the TSLint configuration file."
              | optional,
            typeCheck
              | Bool
              | doc "Controls the type check for linting."
              | optional,
          },
    }
    in
  {
      "$schema" | String | optional,
      cli | refs."definitions.cliOptions" | optional,
      defaultProject
        | String
        | doc "Default project name used in commands."
        | optional,
      newProjectRoot
        | String
        | doc "Path where new projects will be created."
        | optional,
      projects
        | {
          _ | std.contract.Sequence [ refs."definitions.project", { _ | Dyn } ]
        }
        | js2n.record.FieldsMatch "^(?:@[a-zA-Z0-9_-]+/)?[a-zA-Z0-9_-]+$"
        | optional,
      schematics | refs."definitions.schematicOptions" | optional,
      version | refs."definitions.fileVersion" | Number,
    }