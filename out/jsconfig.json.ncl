# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.buildOptionsDefinition" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                buildOptions
                  | std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      {
                        assumeChangesOnlyAffectDirectDependencies
                          | js2n.Nullable Bool
                          | doc "Have recompiles in projects that use `incremental` and `watch` mode assume that changes within a file will only affect files directly depending on it."
                          | optional,
                        dry | js2n.Nullable Bool | doc "~" | optional,
                        "force"
                          | js2n.Nullable Bool
                          | doc "Build all projects, including those that appear to be up to date"
                          | optional,
                        incremental
                          | js2n.Nullable Bool
                          | doc "Save .tsbuildinfo files to allow for incremental compilation of projects."
                          | optional,
                        traceResolution
                          | js2n.Nullable Bool
                          | doc "Log paths used during the `moduleResolution` process."
                          | optional,
                        verbose
                          | js2n.Nullable Bool
                          | doc "Enable verbose logging"
                          | optional,
                        ..
                      },
                      Array Dyn
                    ]
                  | optional,
                ..
              },
              Array Dyn
            ],
      "definitions.compileOnSaveDefinition" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                compileOnSave
                  | js2n.Nullable Bool
                  | doc "Enable Compile-on-Save for this project."
                  | optional,
                ..
              },
              Array Dyn
            ],
      "definitions.compilerOptionsDefinition" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                compilerOptions
                  | js2n.Nullable
                    {
                      allowArbitraryExtensions
                        | js2n.Nullable Bool
                        | doc "Enable importing files with any extension, provided a declaration file is present."
                        | optional,
                      allowImportingTsExtensions
                        | js2n.Nullable Bool
                        | doc "Allow imports to include TypeScript file extensions. Requires '--moduleResolution bundler' and either '--noEmit' or '--emitDeclarationOnly' to be set."
                        | optional,
                      allowJs
                        | js2n.Nullable Bool
                        | doc "Allow JavaScript files to be a part of your program. Use the `checkJS` option to get errors from these files."
                        | optional,
                      allowSyntheticDefaultImports
                        | js2n.Nullable Bool
                        | doc "Allow 'import x from y' when a module doesn't have a default export."
                        | optional,
                      allowUmdGlobalAccess
                        | js2n.Nullable Bool
                        | doc "Allow accessing UMD globals from modules."
                        | optional,
                      allowUnreachableCode
                        | js2n.Nullable Bool
                        | doc "Disable error reporting for unreachable code."
                        | optional,
                      allowUnusedLabels
                        | js2n.Nullable Bool
                        | doc "Disable error reporting for unused labels."
                        | optional,
                      alwaysStrict
                        | js2n.Nullable Bool
                        | doc "Ensure 'use strict' is always emitted."
                        | optional,
                      assumeChangesOnlyAffectDirectDependencies
                        | js2n.Nullable Bool
                        | doc "Have recompiles in '--incremental' and '--watch' assume that changes within a file will only affect files directly depending on it. Requires TypeScript version 3.8 or later."
                        | optional,
                      baseUrl
                        | js2n.Nullable String
                        | doc "Specify the base directory to resolve non-relative module names."
                        | optional,
                      charset
                        | js2n.Nullable String
                        | doc "No longer supported. In early versions, manually set the text encoding for reading files."
                        | optional,
                      checkJs
                        | js2n.Nullable Bool
                        | doc "Enable error reporting in type-checked JavaScript files."
                        | optional,
                      composite
                        | js2n.Nullable Bool
                        | doc "Enable constraints that allow a TypeScript project to be used with project references."
                        | optional,
                      customConditions
                        | js2n.Nullable
                          (std.contract.Sequence
                            [
                              js2n.array.UniqueItems,
                              Array (js2n.Nullable String)
                            ])
                        | doc "Conditions to set in addition to the resolver-specific defaults when resolving imports."
                        | optional,
                      declaration
                        | js2n.Nullable Bool
                        | doc "Generate .d.ts files from TypeScript and JavaScript files in your project."
                        | optional,
                      declarationDir
                        | js2n.Nullable String
                        | doc "Specify the output directory for generated declaration files."
                        | optional,
                      declarationMap
                        | js2n.Nullable Bool
                        | doc "Create sourcemaps for d.ts files."
                        | optional,
                      diagnostics
                        | js2n.Nullable Bool
                        | doc "Output compiler performance information after building."
                        | optional,
                      disableReferencedProjectLoad
                        | js2n.Nullable Bool
                        | doc "Reduce the number of projects loaded automatically by TypeScript."
                        | optional,
                      disableSizeLimit
                        | js2n.Nullable Bool
                        | doc "Remove the 20mb cap on total source code size for JavaScript files in the TypeScript language server."
                        | optional,
                      disableSolutionSearching
                        | js2n.Nullable Bool
                        | doc "Opt a project out of multi-project reference checking when editing."
                        | optional,
                      disableSourceOfProjectReferenceRedirect
                        | js2n.Nullable Bool
                        | doc "Disable preferring source files instead of declaration files when referencing composite projects"
                        | optional,
                      downlevelIteration
                        | js2n.Nullable Bool
                        | doc "Emit more compliant, but verbose and less performant JavaScript for iteration."
                        | optional,
                      emitBOM
                        | js2n.Nullable Bool
                        | doc "Emit a UTF-8 Byte Order Mark (BOM) in the beginning of output files."
                        | optional,
                      emitDeclarationOnly
                        | js2n.Nullable Bool
                        | doc "Only output d.ts files and not JavaScript files."
                        | optional,
                      emitDecoratorMetadata
                        | js2n.Nullable Bool
                        | doc "Emit design-type metadata for decorated declarations in source files."
                        | optional,
                      erasableSyntaxOnly
                        | js2n.Nullable Bool
                        | doc "Do not allow runtime constructs that are not part of ECMAScript."
                        | optional,
                      esModuleInterop
                        | js2n.Nullable Bool
                        | doc "Emit additional JavaScript to ease support for importing CommonJS modules. This enables `allowSyntheticDefaultImports` for type compatibility."
                        | optional,
                      exactOptionalPropertyTypes
                        | js2n.Nullable Bool
                        | doc "Differentiate between undefined and not present when type checking"
                        | optional,
                      experimentalDecorators
                        | js2n.Nullable Bool
                        | doc "Enable experimental support for TC39 stage 2 draft decorators."
                        | optional,
                      extendedDiagnostics
                        | js2n.Nullable Bool
                        | doc "Output more detailed compiler performance information after building."
                        | optional,
                      fallbackPolling
                        | std.enum.TagOrString
                        | [|
                          'fixedChunkSize,
                          'dynamicPriority,
                          'priorityInterval,
                          'fixedInterval,
                          'dynamicPriorityPolling,
                          'priorityPollingInterval,
                          'fixedPollingInterval
                        |]
                        | doc "Specify the polling strategy to use when the system runs out of or doesn't support native file watchers. Requires TypeScript version 3.8 or later."
                        | optional,
                      forceConsistentCasingInFileNames
                        | js2n.Nullable Bool
                        | doc "Ensure that casing is correct in imports."
                        | optional,
                      generateCpuProfile
                        | js2n.Nullable String
                        | doc "Emit a v8 CPU profile of the compiler run for debugging."
                        | optional,
                      importHelpers
                        | js2n.Nullable Bool
                        | doc "Allow importing helper functions from tslib once per project, instead of including them per-file."
                        | optional,
                      importsNotUsedAsValues
                        | std.enum.TagOrString
                        | [| 'error, 'preserve, 'remove |]
                        | doc "Specify emit/checking behavior for imports that are only used for types."
                        | optional,
                      incremental
                        | js2n.Nullable Bool
                        | doc "Enable incremental compilation. Requires TypeScript version 3.4 or later."
                        | optional,
                      inlineSourceMap
                        | js2n.Nullable Bool
                        | doc "Include sourcemap files inside the emitted JavaScript."
                        | optional,
                      inlineSources
                        | js2n.Nullable Bool
                        | doc "Include source code in the sourcemaps inside the emitted JavaScript."
                        | optional,
                      isolatedDeclarations
                        | js2n.Nullable Bool
                        | doc "Require sufficient annotation on exports so other tools can trivially generate declaration files."
                        | optional,
                      isolatedModules
                        | js2n.Nullable Bool
                        | doc "Ensure that each file can be safely transpiled without relying on other imports."
                        | optional,
                      jsx
                        | std.enum.TagOrString
                        | [|
                          'react-native,
                          'react-jsxdev,
                          'react-jsx,
                          'react,
                          'preserve
                        |]
                        | doc "Specify what JSX code is generated."
                        | optional,
                      jsxFactory
                        | js2n.Nullable String
                        | doc "Specify the JSX factory function used when targeting React JSX emit, e.g. 'React.createElement' or 'h'"
                        | optional,
                      jsxFragmentFactory
                        | js2n.Nullable String
                        | doc "Specify the JSX Fragment reference used for fragments when targeting React JSX emit e.g. 'React.Fragment' or 'Fragment'."
                        | optional,
                      jsxImportSource
                        | js2n.Nullable String
                        | doc "Specify module specifier used to import the JSX factory functions when using `jsx: react-jsx`."
                        | optional,
                      keyofStringsOnly
                        | js2n.Nullable Bool
                        | doc "Make keyof only return strings instead of string, numbers or symbols. Legacy option."
                        | optional,
                      lib
                        | js2n.Nullable
                          (std.contract.Sequence
                            [
                              js2n.array.UniqueItems,
                              Array (
                                std.contract.any_of
                                  [
                                    std.contract.Sequence
                                      [
                                        std.enum.TagOrString,
                                        [|
                                          '"ESNext.Disposable",
                                          '"ESNext.Decorators",
                                          '"ES2023.Collection",
                                          '"ES2017.Date",
                                          '"Decorators.Legacy",
                                          'Decorators,
                                          '"ES2024.String",
                                          '"ES2024.SharedMemory",
                                          '"ES2024.Regexp",
                                          '"ES2024.Promise",
                                          '"ES2024.Object",
                                          '"ES2024.Collection",
                                          '"ES2024.ArrayBuffer",
                                          'ES2024,
                                          '"ES2023.Array",
                                          'ES2023,
                                          '"ES2022.RegExp",
                                          '"ES2022.SharedMemory",
                                          '"ES2022.String",
                                          '"ES2022.Object",
                                          '"ES2022.Intl",
                                          '"ES2022.Error",
                                          '"ES2022.Array",
                                          'ES2022,
                                          '"ES2021.Intl",
                                          '"ESNext.WeakRef",
                                          '"ES2021.WeakRef",
                                          '"ES2021.String",
                                          '"ES2021.Promise",
                                          '"ES2020.Number",
                                          '"ES2020.Date",
                                          '"ES2020.Intl",
                                          '"ES2020.SharedMemory",
                                          'ES2021,
                                          'ES7,
                                          '"Webworker.Iterable",
                                          '"WebWorker.ImportScripts",
                                          '"WebWorker.AsyncIterable",
                                          'WebWorker,
                                          'ScriptHost,
                                          '"DOM.Iterable",
                                          '"DOM.AsyncIterable",
                                          'DOM,
                                          '"ESNext.Symbol",
                                          '"ESNext.String",
                                          '"ESNext.Regexp",
                                          '"ESNext.Promise",
                                          '"ESNext.Object",
                                          '"ESNext.Iterator",
                                          '"ESNext.Intl",
                                          '"ESNext.Collection",
                                          '"ESNext.BigInt",
                                          '"ESNext.AsyncIterable",
                                          '"ESNext.Array",
                                          'ESNext,
                                          '"ES2020.Symbol.WellKnown",
                                          '"ES2020.String",
                                          '"ES2020.Promise",
                                          '"ES2020.BigInt",
                                          'ES2020,
                                          '"ES2019.Symbol",
                                          '"ES2019.String",
                                          '"ES2019.Object",
                                          '"ES2019.Intl",
                                          '"ES2019.Array",
                                          'ES2019,
                                          '"ES2018.Regexp",
                                          '"ES2018.Promise",
                                          '"ES2018.Intl",
                                          '"ES2018.AsyncIterable",
                                          '"ES2018.AsyncGenerator",
                                          'ES2018,
                                          '"ES2017.ArrayBuffer",
                                          '"ES2017.TypedArrays",
                                          '"ES2017.String",
                                          '"ES2017.SharedMemory",
                                          '"ES2017.Object",
                                          '"ES2017.Intl",
                                          'ES2017,
                                          '"ES2016.Array.Include",
                                          'ES2016,
                                          '"ES2015.Symbol",
                                          '"ES2015.Symbol.WellKnown",
                                          '"ES2015.Reflect",
                                          '"ES2015.Proxy",
                                          '"ES2015.Promise",
                                          '"ES2015.Iterable",
                                          '"ES2015.Generator",
                                          '"ES2015.Core",
                                          '"ES2015.Collection",
                                          'ES2015,
                                          'ES6,
                                          'ES5
                                        |]
                                      ],
                                    js2n.Null,
                                    js2n.string.Matches
                                      "^[Ee][Ss]5|[Ee][Ss]6|[Ee][Ss]7$",
                                    js2n.Null,
                                    js2n.string.Matches
                                      "^[Ee][Ss]2015(\\.([Cc][Oo][Ll][Ll][Ee][Cc][Tt][Ii][Oo][Nn]|[Cc][Oo][Rr][Ee]|[Gg][Ee][Nn][Ee][Rr][Aa][Tt][Oo][Rr]|[Ii][Tt][Ee][Rr][Aa][Bb][Ll][Ee]|[Pp][Rr][Oo][Mm][Ii][Ss][Ee]|[Pp][Rr][Oo][Xx][Yy]|[Rr][Ee][Ff][Ll][Ee][Cc][Tt]|[Ss][Yy][Mm][Bb][Oo][Ll]\\.[Ww][Ee][Ll][Ll][Kk][Nn][Oo][Ww][Nn]|[Ss][Yy][Mm][Bb][Oo][Ll]))?$",
                                    js2n.Null,
                                    js2n.string.Matches
                                      "^[Ee][Ss]2016(\\.[Aa][Rr][Rr][Aa][Yy]\\.[Ii][Nn][Cc][Ll][Uu][Dd][Ee])?$",
                                    js2n.Null,
                                    js2n.string.Matches
                                      "^[Ee][Ss]2017(\\.([Ii][Nn][Tt][Ll]|[Oo][Bb][Jj][Ee][Cc][Tt]|[Ss][Hh][Aa][Rr][Ee][Dd][Mm][Ee][Mm][Oo][Rr][Yy]|[Ss][Tt][Rr][Ii][Nn][Gg]|[Tt][Yy][Pp][Ee][Dd][Aa][Rr][Rr][Aa][Yy][Ss]|[Dd][Aa][Tt][Ee]|[Aa][Rr][Rr][Aa][Yy][Bb][Uu][Ff][Ff][Ee][Rr]))?$",
                                    js2n.Null,
                                    js2n.string.Matches
                                      "^[Ee][Ss]2018(\\.([Aa][Ss][Yy][Nn][Cc][Gg][Ee][Nn][Ee][Rr][Aa][Tt][Oo][Rr]|[Aa][Ss][Yy][Nn][Cc][Ii][Tt][Ee][Rr][Aa][Bb][Ll][Ee]|[Ii][Nn][Tt][Ll]|[Pp][Rr][Oo][Mm][Ii][Ss][Ee]|[Rr][Ee][Gg][Ee][Xx][Pp]))?$",
                                    js2n.Null,
                                    js2n.string.Matches
                                      "^[Ee][Ss]2019(\\.([Aa][Rr][Rr][Aa][Yy]|[Ii][Nn][Tt][Ll]|[Oo][Bb][Jj][Ee][Cc][Tt]|[Ss][Tt][Rr][Ii][Nn][Gg]|[Ss][Yy][Mm][Bb][Oo][Ll]))?$",
                                    js2n.Null,
                                    js2n.string.Matches
                                      "^[Ee][Ss]2020(\\.([Bb][Ii][Gg][Ii][Nn][Tt]|[Pp][Rr][Oo][Mm][Ii][Ss][Ee]|[Ss][Tt][Rr][Ii][Nn][Gg]|[Ss][Yy][Mm][Bb][Oo][Ll]\\.[Ww][Ee][Ll][Ll][Kk][Nn][Oo][Ww][Nn]|[Ss][Hh][Aa][Rr][Ee][Dd][Mm][Ee][Mm][Oo][Rr][Yy]|[Ii][Nn][Tt][Ll]|[Dd][Aa][Tt][Ee]|[Nn][Uu][Mm][Bb][Ee][Rr]))?$",
                                    js2n.Null,
                                    js2n.string.Matches
                                      "^[Ee][Ss]2021(\\.([Ii][Nn][Tt][Ll]|[Pp][Rr][Oo][Mm][Ii][Ss][Ee]|[Ss][Tt][Rr][Ii][Nn][Gg]|[Ww][Ee][Aa][Kk][Rr][Ee][Ff]))?$",
                                    js2n.Null,
                                    js2n.string.Matches
                                      "^[Ee][Ss]2022(\\.([Aa][Rr][Rr][Aa][Yy]|[Ee][Rr][Rr][Oo][Rr]|[Ii][Nn][Tt][Ll]|[Oo][Bb][Jj][Ee][Cc][Tt]|[Ss][Tt][Rr][Ii][Nn][Gg]|[Ss][Hh][Aa][Rr][Ee][Dd][Mm][Ee][Mm][Oo][Rr][Yy]|[Rr][Ee][Gg][Ee][Xx][Pp]))?$",
                                    js2n.Null,
                                    js2n.string.Matches
                                      "^[Ee][Ss]2023(\\.([Aa][Rr][Rr][Aa][Yy]|[Cc][Oo][Ll][Ll][Ee][Cc][Tt][Ii][Oo][Nn]))?$",
                                    js2n.Null,
                                    js2n.string.Matches
                                      "^[Ee][Ss]2024(\\.([Aa][Rr][Rr][Aa][Yy][Bb][Uu][Ff][Ff][Ee][Rr]|[Cc][Oo][Ll][Ll][Ee][Cc][Tt][Ii][Oo][Nn]|[Oo][Bb][Jj][Ee][Cc][Tt]|[Pp][Rr][Oo][Mm][Ii][Ss][Ee]|[Rr][Ee][Gg][Ee][Xx][Pp]|[Ss][Hh][Aa][Rr][Ee][Dd][Mm][Ee][Mm][Oo][Rr][Yy]|[Ss][Tt][Rr][Ii][Nn][Gg]))?$",
                                    js2n.Null,
                                    js2n.string.Matches
                                      "^[Ee][Ss][Nn][Ee][Xx][Tt](\\.([Aa][Rr][Rr][Aa][Yy]|[Aa][Ss][Yy][Nn][Cc][Ii][Tt][Ee][Rr][Aa][Bb][Ll][Ee]|[Bb][Ii][Gg][Ii][Nn][Tt]|[Ii][Nn][Tt][Ll]|[Pp][Rr][Oo][Mm][Ii][Ss][Ee]|[Ss][Tt][Rr][Ii][Nn][Gg]|[Ss][Yy][Mm][Bb][Oo][Ll]|[Ww][Ee][Aa][Kk][Rr][Ee][Ff]|[Dd][Ee][Cc][Oo][Rr][Aa][Tt][Oo][Rr][Ss]|[Dd][Ii][Ss][Pp][Oo][Ss][Aa][Bb][Ll][Ee]))?$",
                                    js2n.Null,
                                    js2n.string.Matches
                                      "^[Dd][Oo][Mm](\\.([Aa][Ss][Yy][Nn][Cc])?[Ii][Tt][Ee][Rr][Aa][Bb][Ll][Ee])?$",
                                    js2n.Null,
                                    js2n.string.Matches
                                      "^[Ss][Cc][Rr][Ii][Pp][Tt][Hh][Oo][Ss][Tt]$",
                                    js2n.Null,
                                    js2n.string.Matches
                                      "^[Ww][Ee][Bb][Ww][Oo][Rr][Kk][Ee][Rr](\\.([Ii][Mm][Pp][Oo][Rr][Tt][Ss][Cc][Rr][Ii][Pp][Tt][Ss]|([Aa][Ss][Yy][Nn][Cc])?[Ii][Tt][Ee][Rr][Aa][Bb][Ll][Ee]))?$",
                                    js2n.Null,
                                    js2n.string.Matches
                                      "^[Dd][Ee][Cc][Oo][Rr][Aa][Tt][Oo][Rr][Ss](\\.([Ll][Ee][Gg][Aa][Cc][Yy]))?$"
                                  ]
                              )
                            ])
                        | doc "Specify a set of bundled library declaration files that describe the target runtime environment."
                        | optional,
                      libReplacement
                        | js2n.Nullable Bool
                        | doc "Enable lib replacement."
                        | optional,
                      listEmittedFiles
                        | js2n.Nullable Bool
                        | doc "Print the names of emitted files after a compilation."
                        | optional,
                      listFiles
                        | js2n.Nullable Bool
                        | doc "Print all of the files read during the compilation."
                        | optional,
                      listFilesOnly
                        | js2n.Nullable Bool
                        | doc "Print names of files that are part of the compilation and then stop processing."
                        | optional,
                      mapRoot
                        | js2n.Nullable String
                        | doc "Specify the location where debugger should locate map files instead of generated locations."
                        | optional,
                      maxNodeModuleJsDepth
                        | js2n.Nullable Number
                        | doc "Specify the maximum folder depth used for checking JavaScript files from `node_modules`. Only applicable with `allowJs`."
                        | optional,
                      module
                        | std.contract.any_of
                          [
                            std.contract.Sequence
                              [
                                std.enum.TagOrString,
                                [|
                                  'preserve,
                                  'nodenext,
                                  'node18,
                                  'node16,
                                  'es2022,
                                  'none,
                                  'esnext,
                                  'es2020,
                                  'es2015,
                                  'es6,
                                  'umd,
                                  'system,
                                  'amd,
                                  'commonjs
                                |]
                              ],
                            js2n.Null,
                            js2n.string.Matches
                              "^([Cc][Oo][Mm][Mm][Oo][Nn][Jj][Ss]|[AaUu][Mm][Dd]|[Ss][Yy][Ss][Tt][Ee][Mm]|[Ee][Ss]([356]|20(1[567]|2[02])|[Nn][Ee][Xx][Tt])|[Nn][Oo][dD][Ee]1[68]|[Nn][Oo][Dd][Ee][Nn][Ee][Xx][Tt]|[Nn][Oo][Nn][Ee]|[Pp][Rr][Ee][Ss][Ee][Rr][Vv][Ee])$"
                          ]
                        | doc "Specify what module code is generated."
                        | optional,
                      moduleResolution
                        | std.contract.any_of
                          [
                            std.contract.Sequence
                              [
                                std.enum.TagOrString,
                                [|
                                  'bundler,
                                  'nodenext,
                                  'node16,
                                  'node10,
                                  'node,
                                  'classic
                                |]
                              ],
                            js2n.Null,
                            js2n.string.Matches
                              "^(([Nn]ode)|([Nn]ode1[06])|([Nn]ode[Nn]ext)|([Cc]lassic)|([Bb]undler))$"
                          ]
                        | doc "Specify how TypeScript looks up a file from a given module specifier."
                        | optional,
                      newLine
                        | std.contract.any_of
                          [
                            std.contract.Sequence
                              [ std.enum.TagOrString, [| 'lf, 'crlf |] ],
                            js2n.Null,
                            js2n.string.Matches "^(CRLF|LF|crlf|lf)$"
                          ]
                        | doc "Set the newline character for emitting files."
                        | optional,
                      noCheck
                        | js2n.Nullable Bool
                        | doc "Disable full type checking (only critical parse and emit errors will be reported)"
                        | optional,
                      noEmit
                        | js2n.Nullable Bool
                        | doc "Disable emitting file from a compilation."
                        | optional,
                      noEmitHelpers
                        | js2n.Nullable Bool
                        | doc "Disable generating custom helper functions like `__extends` in compiled output."
                        | optional,
                      noEmitOnError
                        | js2n.Nullable Bool
                        | doc "Disable emitting files if any type checking errors are reported."
                        | optional,
                      noErrorTruncation
                        | js2n.Nullable Bool
                        | doc "Disable truncating types in error messages."
                        | optional,
                      noFallthroughCasesInSwitch
                        | js2n.Nullable Bool
                        | doc "Enable error reporting for fallthrough cases in switch statements."
                        | optional,
                      noImplicitAny
                        | js2n.Nullable Bool
                        | doc "Enable error reporting for expressions and declarations with an implied `any` type.."
                        | optional,
                      noImplicitOverride
                        | js2n.Nullable Bool
                        | doc "Ensure overriding members in derived classes are marked with an override modifier."
                        | optional,
                      noImplicitReturns
                        | js2n.Nullable Bool
                        | doc "Enable error reporting for codepaths that do not explicitly return in a function."
                        | optional,
                      noImplicitThis
                        | js2n.Nullable Bool
                        | doc "Enable error reporting when `this` is given the type `any`."
                        | optional,
                      noImplicitUseStrict
                        | js2n.Nullable Bool
                        | doc "Disable adding 'use strict' directives in emitted JavaScript files."
                        | optional,
                      noLib
                        | js2n.Nullable Bool
                        | doc "Disable including any library files, including the default lib.d.ts."
                        | optional,
                      noPropertyAccessFromIndexSignature
                        | js2n.Nullable Bool
                        | doc "Enforces using indexed accessors for keys declared using an indexed type"
                        | optional,
                      noResolve
                        | js2n.Nullable Bool
                        | doc "Disallow `import`s, `require`s or `<reference>`s from expanding the number of files TypeScript should add to a project."
                        | optional,
                      noStrictGenericChecks
                        | js2n.Nullable Bool
                        | doc "Disable strict checking of generic signatures in function types."
                        | optional,
                      noUncheckedIndexedAccess
                        | js2n.Nullable Bool
                        | doc "Add `undefined` to a type when accessed using an index."
                        | optional,
                      noUncheckedSideEffectImports
                        | js2n.Nullable Bool
                        | doc "Check side effect imports."
                        | optional,
                      noUnusedLocals
                        | js2n.Nullable Bool
                        | doc "Enable error reporting when a local variable isn't read."
                        | optional,
                      noUnusedParameters
                        | js2n.Nullable Bool
                        | doc "Raise an error when a function parameter isn't read"
                        | optional,
                      out
                        | js2n.Nullable String
                        | doc "DEPRECATED. Specify an output for the build. It is recommended to use `outFile` instead."
                        | optional,
                      outDir
                        | js2n.Nullable String
                        | doc "Specify an output folder for all emitted files."
                        | optional,
                      outFile
                        | js2n.Nullable String
                        | doc "Specify a file that bundles all outputs into one JavaScript file. If `declaration` is true, also designates a file that bundles all .d.ts output."
                        | optional,
                      paths
                        | js2n.Nullable
                          ({
                            _ | js2n.Nullable
                              (std.contract.Sequence
                                [
                                  js2n.array.UniqueItems,
                                  Array (js2n.Nullable String)
                                ])
                          })
                        | doc "Specify a set of entries that re-map imports to additional lookup locations."
                        | optional,
                      plugins
                        | js2n.Nullable
                          (Array (
                            js2n.Nullable
                              {
                                name
                                  | js2n.Nullable String
                                  | doc "Plugin name."
                                  | optional,
                                ..
                              }
                          ))
                        | doc "Specify a list of language service plugins to include."
                        | optional,
                      preserveConstEnums
                        | js2n.Nullable Bool
                        | doc "Disable erasing `const enum` declarations in generated code."
                        | optional,
                      preserveSymlinks
                        | js2n.Nullable Bool
                        | doc "Disable resolving symlinks to their realpath. This correlates to the same flag in node."
                        | optional,
                      preserveValueImports
                        | js2n.Nullable Bool
                        | doc "Preserve unused imported values in the JavaScript output that would otherwise be removed"
                        | optional,
                      preserveWatchOutput
                        | js2n.Nullable Bool
                        | doc "Disable wiping the console in watch mode"
                        | optional,
                      pretty
                        | js2n.Nullable Bool
                        | doc "Enable color and formatting in output to make compiler errors easier to read"
                        | optional,
                      reactNamespace
                        | js2n.Nullable String
                        | doc "Specify the object invoked for `createElement`. This only applies when targeting `react` JSX emit."
                        | optional,
                      removeComments
                        | js2n.Nullable Bool
                        | doc "Disable emitting comments."
                        | optional,
                      resolveJsonModule
                        | js2n.Nullable Bool
                        | doc "Enable importing .json files"
                        | optional,
                      resolvePackageJsonExports
                        | js2n.Nullable Bool
                        | doc "Use the package.json 'exports' field when resolving package imports."
                        | optional,
                      resolvePackageJsonImports
                        | js2n.Nullable Bool
                        | doc "Use the package.json 'imports' field when resolving imports."
                        | optional,
                      rewriteRelativeImportExtensions
                        | js2n.Nullable Bool
                        | doc "Rewrite '.ts', '.tsx', '.mts', and '.cts' file extensions in relative import paths to their JavaScript equivalent in output files."
                        | optional,
                      rootDir
                        | js2n.Nullable String
                        | doc "Specify the root folder within your source files."
                        | optional,
                      rootDirs
                        | js2n.Nullable
                          (std.contract.Sequence
                            [
                              js2n.array.UniqueItems,
                              Array (js2n.Nullable String)
                            ])
                        | doc "Allow multiple folders to be treated as one when resolving modules."
                        | optional,
                      skipDefaultLibCheck
                        | js2n.Nullable Bool
                        | doc "Skip type checking .d.ts files that are included with TypeScript."
                        | optional,
                      skipLibCheck
                        | js2n.Nullable Bool
                        | doc "Skip type checking all .d.ts files."
                        | optional,
                      sourceMap
                        | js2n.Nullable Bool
                        | doc "Create source map files for emitted JavaScript files."
                        | optional,
                      sourceRoot
                        | js2n.Nullable String
                        | doc "Specify the root path for debuggers to find the reference source code."
                        | optional,
                      strict
                        | js2n.Nullable Bool
                        | doc "Enable all strict type checking options."
                        | optional,
                      strictBindCallApply
                        | js2n.Nullable Bool
                        | doc "Check that the arguments for `bind`, `call`, and `apply` methods match the original function."
                        | optional,
                      strictBuiltinIteratorReturn
                        | js2n.Nullable Bool
                        | doc "Built-in iterators are instantiated with a 'TReturn' type of 'undefined' instead of 'any'."
                        | optional,
                      strictFunctionTypes
                        | js2n.Nullable Bool
                        | doc "When assigning functions, check to ensure parameters and the return values are subtype-compatible."
                        | optional,
                      strictNullChecks
                        | js2n.Nullable Bool
                        | doc "When type checking, take into account `null` and `undefined`."
                        | optional,
                      strictPropertyInitialization
                        | js2n.Nullable Bool
                        | doc "Check for class properties that are declared but not set in the constructor."
                        | optional,
                      stripInternal
                        | js2n.Nullable Bool
                        | doc "Disable emitting declarations that have `@internal` in their JSDoc comments."
                        | optional,
                      suppressExcessPropertyErrors
                        | js2n.Nullable Bool
                        | doc "Disable reporting of excess property errors during the creation of object literals."
                        | optional,
                      suppressImplicitAnyIndexErrors
                        | js2n.Nullable Bool
                        | doc "Suppress `noImplicitAny` errors when indexing objects that lack index signatures."
                        | optional,
                      target
                        | std.contract.any_of
                          [
                            std.contract.Sequence
                              [
                                std.enum.TagOrString,
                                [|
                                  'esnext,
                                  'es2024,
                                  'es2023,
                                  'es2022,
                                  'es2021,
                                  'es2020,
                                  'es2019,
                                  'es2018,
                                  'es2017,
                                  'es2016,
                                  'es2015,
                                  'es6,
                                  'es5,
                                  'es3
                                |]
                              ],
                            js2n.Null,
                            js2n.string.Matches
                              "^([Ee][Ss]([356]|(20(1[56789]|2[01234]))|[Nn][Ee][Xx][Tt]))$"
                          ]
                        | doc "Set the JavaScript language version for emitted JavaScript and include compatible library declarations."
                        | optional,
                      traceResolution
                        | js2n.Nullable Bool
                        | doc "Enable tracing of the name resolution process. Requires TypeScript version 2.0 or later."
                        | optional,
                      tsBuildInfoFile
                        | js2n.Nullable String
                        | doc "Specify the folder for .tsbuildinfo incremental compilation files."
                        | optional,
                      typeRoots
                        | js2n.Nullable
                          (std.contract.Sequence
                            [
                              js2n.array.UniqueItems,
                              Array (js2n.Nullable String)
                            ])
                        | doc "Specify multiple folders that act like `./node_modules/@types`."
                        | optional,
                      types
                        | js2n.Nullable
                          (std.contract.Sequence
                            [
                              js2n.array.UniqueItems,
                              Array (js2n.Nullable String)
                            ])
                        | doc "Specify type package names to be included without being referenced in a source file."
                        | optional,
                      useDefineForClassFields
                        | js2n.Nullable Bool
                        | doc "Emit ECMAScript-standard-compliant class fields."
                        | optional,
                      useUnknownInCatchVariables
                        | js2n.Nullable Bool
                        | doc "Default catch clause variables as `unknown` instead of `any`."
                        | optional,
                      verbatimModuleSyntax
                        | js2n.Nullable Bool
                        | doc "Do not transform or elide any imports or exports not marked as type-only, ensuring they are written in the output file's format based on the 'module' setting."
                        | optional,
                      watch
                        | js2n.Nullable Bool
                        | doc "Watch input files."
                        | optional,
                      watchDirectory
                        | std.enum.TagOrString
                        | [|
                          'fixedChunkSizePolling,
                          'dynamicPriorityPolling,
                          'fixedPollingInterval,
                          'useFsEvents
                        |]
                        | doc "Specify the strategy for watching directories under systems that lack recursive file-watching functionality. Requires TypeScript version 3.8 or later."
                        | optional,
                      watchFile
                        | std.enum.TagOrString
                        | [|
                          'fixedChunkSizePolling,
                          'useFsEventsOnParentDirectory,
                          'useFsEvents,
                          'dynamicPriorityPolling,
                          'priorityPollingInterval,
                          'fixedPollingInterval
                        |]
                        | doc "Specify the strategy for watching individual files. Requires TypeScript version 3.8 or later."
                        | optional,
                      ..
                    }
                  | doc "Instructs the TypeScript compiler how to compile .ts files."
                  | optional,
                ..
              },
              Array Dyn
            ],
      "definitions.excludeDefinition" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                exclude
                  | js2n.Nullable
                    (std.contract.Sequence
                      [ js2n.array.UniqueItems, Array (js2n.Nullable String) ])
                  | doc "Specifies a list of files to be excluded from compilation. The 'exclude' property only affects the files included via the 'include' property and not the 'files' property. Glob patterns require TypeScript version 2.0 or later."
                  | optional,
                ..
              },
              Array Dyn
            ],
      "definitions.extendsDefinition" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                extends
                  | std.contract.any_of [ String, Array String ]
                  | doc "Path to base configuration file to inherit from (requires TypeScript version 2.1 or later), or array of base files, with the rightmost files having the greater priority (requires TypeScript version 5.0 or later)."
                  | optional,
                ..
              },
              Array Dyn
            ],
      "definitions.filesDefinition" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                files
                  | js2n.Nullable
                    (std.contract.Sequence
                      [ js2n.array.UniqueItems, Array (js2n.Nullable String) ])
                  | doc "If no 'files' or 'include' property is present in a tsconfig.json, the compiler defaults to including all files in the containing directory and subdirectories except those specified by 'exclude'. When a 'files' property is specified, only those files and those specified by 'include' are included."
                  | optional,
                ..
              },
              Array Dyn
            ],
      "definitions.includeDefinition" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                include
                  | js2n.Nullable
                    (std.contract.Sequence
                      [ js2n.array.UniqueItems, Array (js2n.Nullable String) ])
                  | doc "Specifies a list of glob patterns that match files to be included in compilation. If no 'files' or 'include' property is present in a tsconfig.json, the compiler defaults to including all files in the containing directory and subdirectories except those specified by 'exclude'. Requires TypeScript version 2.0 or later."
                  | optional,
                ..
              },
              Array Dyn
            ],
      "definitions.referencesDefinition" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                references
                  | js2n.Nullable
                    (std.contract.Sequence
                      [
                        js2n.array.UniqueItems,
                        Array (
                          js2n.Nullable
                            {
                              path
                                | js2n.Nullable String
                                | doc "Path to referenced tsconfig or to folder containing tsconfig."
                                | optional,
                              ..
                            }
                        )
                      ])
                  | doc "Referenced projects. Requires TypeScript version 3.0 or later."
                  | optional,
                ..
              },
              Array Dyn
            ],
      "definitions.typeAcquisitionDefinition" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                typeAcquisition
                  | js2n.Nullable
                    {
                      enable
                        | js2n.Nullable Bool
                        | doc "Enable auto type acquisition"
                        | optional,
                      exclude
                        | js2n.Nullable
                          (std.contract.Sequence
                            [
                              js2n.array.UniqueItems,
                              Array (js2n.Nullable String)
                            ])
                        | doc "Specifies a list of type declarations to be excluded from auto type acquisition. Ex. [\"jquery\", \"lodash\"]"
                        | optional,
                      include
                        | js2n.Nullable
                          (std.contract.Sequence
                            [
                              js2n.array.UniqueItems,
                              Array (js2n.Nullable String)
                            ])
                        | doc "Specifies a list of type declarations to be included in auto type acquisition. Ex. [\"jquery\", \"lodash\"]"
                        | optional,
                      ..
                    }
                  | doc "Auto type (.d.ts) acquisition options for this project. Requires TypeScript version 2.1 or later."
                  | optional,
                ..
              },
              Array Dyn
            ],
      "definitions.watchOptionsDefinition" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                watchOptions
                  | js2n.Nullable
                    {
                      excludeDirectories
                        | js2n.Nullable
                          (std.contract.Sequence
                            [
                              js2n.array.UniqueItems,
                              Array (js2n.Nullable String)
                            ])
                        | doc "Remove a list of directories from the watch process."
                        | optional,
                      excludeFiles
                        | js2n.Nullable
                          (std.contract.Sequence
                            [
                              js2n.array.UniqueItems,
                              Array (js2n.Nullable String)
                            ])
                        | doc "Remove a list of files from the watch mode's processing."
                        | optional,
                      fallbackPolling
                        | js2n.Nullable String
                        | doc "Specify what approach the watcher should use if the system runs out of native file watchers."
                        | optional,
                      "force" | js2n.Nullable String | doc "~" | optional,
                      synchronousWatchDirectory
                        | js2n.Nullable Bool
                        | doc "Synchronously call callbacks and update the state of directory watchers on platforms that don`t support recursive watching natively."
                        | optional,
                      watchDirectory
                        | js2n.Nullable String
                        | doc "Specify how directories are watched on systems that lack recursive file-watching functionality."
                        | optional,
                      watchFile
                        | js2n.Nullable String
                        | doc "Specify how the TypeScript watch mode works."
                        | optional,
                      ..
                    }
                  | doc "Settings for the watch mode in TypeScript."
                  | optional,
                ..
              },
              Array Dyn
            ],
    }
    in
  std.contract.Sequence
      [
        refs."definitions.compilerOptionsDefinition",
        refs."definitions.compileOnSaveDefinition",
        refs."definitions.typeAcquisitionDefinition",
        refs."definitions.extendsDefinition",
        refs."definitions.watchOptionsDefinition",
        refs."definitions.buildOptionsDefinition",
        std.contract.any_of
          [
            refs."definitions.filesDefinition",
            refs."definitions.excludeDefinition",
            refs."definitions.includeDefinition",
            refs."definitions.referencesDefinition"
          ],
        { _ | Dyn }
      ]