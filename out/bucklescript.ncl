# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.bs-dependency" = String,
      "definitions.bsc-flags" =
        std.contract.any_of
            [
              Array String,
              {
                flags | Array String | optional,
                kind
                  | std.enum.TagOrString
                  | [| 'append, 'prefix, 'reset |]
                  | optional,
                ..
              }
            ],
      "definitions.build-generator" =
        { edge | Array String | optional, name | String | optional, .. },
      "definitions.dependencies" =
        Array (
            std.contract.Sequence [ refs."definitions.bs-dependency", String ]
          ),
      "definitions.editor" =
        {
            autocomplete
              | js2n.record.Record
                {
                  additional = 'Some Dyn,
                  patterns = { "^[a-zA-Z0-9_.]+$" = Array String, },
                  properties = {},
                  required = {},
                }
              | doc "A mapping to extend the autocompletion for a given type with an array of modules. E.g. `{ \"int\": [\"IntUtils\", \"IntExt\"] }` will extend the autocompletion of the `int` type with the values from `IntUtils` and `IntExt` modules."
              | optional,
          },
      "definitions.gentype-specs" = { path | String | optional, .. },
      "definitions.js-post-build" = { cmd | String | optional, .. },
      "definitions.jsx-specs" =
        {
            mode
              | std.enum.TagOrString
              | [| 'automatic, 'classic |]
              | doc "JSX transformation mode"
              | optional,
            module
              | String
              | doc "JSX module. Either \"react\" for React, or (since v11.1) any valid module name to apply a generic JSX transform."
              | optional,
            version
              | js2n.Enum [ 4 ]
              | doc "Whether to apply the specific version of JSX PPX transformation"
              | optional,
          },
      "definitions.module-format" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [| 'es6-global, 'es6, 'commonjs, 'esmodule |]
            ],
      "definitions.module-format-object" =
        {
            in-source | Bool | doc "Default: false." | optional,
            module | refs."definitions.module-format" | String,
            suffix | refs."definitions.suffix-spec" | String | optional,
            ..
          },
      "definitions.package-spec" =
        std.contract.any_of
            [
              std.contract.Sequence
                [ refs."definitions.module-format", String ],
              std.contract.Sequence
                [ refs."definitions.module-format-object", { _ | Dyn } ]
            ],
      "definitions.package-specs" =
        js2n.OneOf
            [
              js2n.array.ArrayOf refs."definitions.package-spec",
              refs."definitions.package-spec"
            ],
      "definitions.pp-specs" = String,
      "definitions.ppx-specs" =
        Array (std.contract.any_of [ String, Array String ]),
      "definitions.reanalyze" =
        {
            analysis
              | Array (
                std.contract.Sequence
                  [ std.enum.TagOrString, [| 'termination, 'exception, 'dce |] ]
              )
              | doc "The types of analysis to activate. `dce` means dead code analysis, `exception` means exception analysis, and `termination` is to check for infinite loops."
              | optional,
            suppress
              | Array String
              | doc "Paths for any folders you'd like to exclude from analysis. Useful for bindings and similar. Example: `[\"src/bindings\"]`."
              | optional,
            transitive
              | Bool
              | doc "specify whether transitively dead items should be reported (default: false)"
              | optional,
            unsuppress
              | Array String
              | doc "Any specific paths inside suppressed folders that you want to unsuppress. Example: [\"src/bindings/SomeBinding.res\"]."
              | optional,
          },
      "definitions.rule-generator" =
        { command | String | optional, name | String | optional, .. },
      "definitions.sourceItem" =
        std.contract.any_of
            [
              {
                dir | String | doc "name of the directory",
                files
                  | std.contract.any_of
                    [
                      Array String,
                      {
                        excludes
                          | Array String
                          | doc "Files to be excluded"
                          | optional,
                        slow-re
                          | String
                          | doc "Regex to glob the patterns, syntax is documented [here](http://caml.inria.fr/pub/docs/manual-ocaml/libref/Str.html), for better incremental build performance, we'd suggest listing files explicitly"
                          | optional,
                        ..
                      }
                    ]
                  | optional,
                generators
                  | Array (
                    std.contract.Sequence
                      [ refs."definitions.build-generator", { _ | Dyn } ]
                  )
                  | doc "(WIP) Files generated in dev time"
                  | optional,
                group
                  | std.contract.any_of
                    [
                      String,
                      {
                        hierachy
                          | Bool
                          | doc "When true, all subdirs are considered as a whole as dependency"
                          | optional,
                        name | String | optional,
                        ..
                      }
                    ]
                  | doc "Not implemented yet"
                  | optional,
                internal-depends | Array String | optional,
                public
                  | std.contract.any_of
                    [
                      Array String,
                      std.contract.Sequence [ std.enum.TagOrString, [| 'all |] ]
                    ]
                  | doc "Default: export all modules. It is recommended for library developers to hide some files/interfaces"
                  | optional,
                resources | Array String | optional,
                subdirs
                  | js2n.OneOf [ refs."definitions.sources", Bool ]
                  | optional,
                type | std.enum.TagOrString | [| 'dev |] | optional,
                ..
              },
              String
            ],
      "definitions.sources" =
        js2n.OneOf
            [
              js2n.array.ArrayOf refs."definitions.sourceItem",
              refs."definitions.sourceItem"
            ],
      "definitions.suffix-spec" = String,
    }
    in
  {
      bs-dependencies
        | refs."definitions.dependencies"
        | doc "ReScript dependencies of the library, like in package.json. Currently searches in `node_modules`"
        | optional,
      bs-dev-dependencies
        | refs."definitions.dependencies"
        | doc "ReScript dev dependencies of the library, like in package.json. Currently searches in `node_modules`"
        | optional,
      bs-external-includes
        | Array String
        | doc "(Not needed usually) external include directories, which will be applied `-I` to all compilation units"
        | optional,
      bsc-flags
        | refs."definitions.bsc-flags"
        | doc "Flags passed to bsc.exe"
        | optional,
      cut-generators
        | Bool
        | doc "Ignore generators, cut the dependency on generator tools"
        | optional,
      editor
        | refs."definitions.editor"
        | doc "Configure editor functionality, like modules that should be included in autocompletions for given (built-in) types."
        | optional,
      external-stdlib
        | String
        | doc "Use the external stdlib library instead of the one shipped with the compiler package"
        | optional,
      generators
        | Array refs."definitions.rule-generator"
        | doc "(WIP) Pre defined rules"
        | optional,
      gentypeconfig
        | refs."definitions.gentype-specs"
        | doc "gentype config, see cristianoc/genType for more details"
        | optional,
      ignored-dirs
        | Array String
        | doc "a list of directories that bsb will not look into"
        | optional,
      js-post-build
        | refs."definitions.js-post-build"
        | doc "(Experimental) post-processing hook. bsb will invoke `cmd ${file}` whenever a `${file}` is changed"
        | optional,
      jsx
        | refs."definitions.jsx-specs"
        | doc "Configuration for the JSX transformation."
        | optional,
      name | String | doc "Package name",
      namespace
        | std.contract.any_of [ Bool, String ]
        | doc "can be true/false or a customized name"
        | optional,
      package-specs
        | refs."definitions.package-specs"
        | doc "ReScript can currently output to [Commonjs](https://en.wikipedia.org/wiki/CommonJS), and [ES6 modules](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Statements/import)"
        | optional,
      pinned-dependencies
        | refs."definitions.dependencies"
        | doc "Those dependencies are pinned (since version 8.4)"
        | optional,
      pp-flags
        | refs."definitions.pp-specs"
        | doc "preprocessors to pass to compiler. The syntax is package_name/binary, for example: `pp/syntax.exe`. Currenly searches in `node_modules`"
        | optional,
      ppx-flags
        | refs."definitions.ppx-specs"
        | doc "PPX macros to pass to compiler. The syntax is package_name/binary, for example: `rescript-relay/ppx`. Currenly searches in `node_modules`"
        | optional,
      reanalyze
        | refs."definitions.reanalyze"
        | doc "Configure reanalyze, a static code analysis tool for ReScript."
        | optional,
      sources | refs."definitions.sources" | doc "Source code location",
      suffix | refs."definitions.suffix-spec" | optional,
      uncurried | Bool | doc "Configuration for the uncurried mode." | optional,
      version
        | String
        | doc "The semantic version of the ReScript library"
        | optional,
      warnings
        | {
          error | std.contract.any_of [ Bool, String ] | optional,
          number
            | String
            | doc "Default: \"+a-4-9-20-41-50-102\". Go [here](https://rescript-lang.org/docs/manual/latest/warning-numbers) for the meanings of the warning flags"
            | optional,
          ..
        }
        | doc "warning numbers and whether to turn it into error or not"
        | optional,
    }