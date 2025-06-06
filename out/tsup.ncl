# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.options" =
        {
            banner
              | { css | String | optional, js | String | optional, .. }
              | optional,
            bundle | Bool | doc "Disable bundling, default to true" | optional,
            clean
              | std.contract.any_of [ Bool, Array String ]
              | doc "Clean output directory before each buil"
              | optional,
            config | std.contract.any_of [ Bool, String ] | optional,
            define | { _ | Dyn } | optional,
            dts
              | std.contract.any_of
                [
                  Bool,
                  String,
                  {
                    entry
                      | std.contract.any_of
                        [ String, { _ | Dyn }, Array String ]
                      | optional,
                    ..
                  }
                ]
              | optional,
            entry
              | std.contract.any_of [ Array String, { _ | Dyn } ]
              | optional,
            env | { _ | Dyn } | optional,
            external
              | Array String
              | doc "Don't bundle these modules"
              | optional,
            footer
              | { css | String | optional, js | String | optional, .. }
              | optional,
            format
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [ std.enum.TagOrString, [| 'esm, 'iife, 'cjs |] ],
                  std.contract.Sequence
                    [
                      js2n.array.UniqueItems,
                      Array (
                        std.contract.Sequence
                          [ std.enum.TagOrString, [| 'esm, 'iife, 'cjs |] ]
                      )
                    ]
                ]
              | optional,
            globalName | String | optional,
            ignoreWatch
              | std.contract.any_of [ String, Array String ]
              | optional,
            inject | Array String | optional,
            injectStyle
              | Bool
              | doc "Inject CSS as style tags to document head"
              | optional,
            jsxFactory | String | optional,
            jsxFragment | String | optional,
            keepNames | Bool | optional,
            legacyOutput
              | Bool
              | doc "Output different formats to different folder instead of using different extension"
              | optional,
            metafile | Bool | optional,
            minify
              | std.contract.any_of
                [
                  Bool,
                  std.contract.Sequence [ std.enum.TagOrString, [| 'terser |] ]
                ]
              | doc "When enabled, the generated code will be minified instead of pretty-printed."
              | optional,
            minifyIdentifiers | Bool | optional,
            minifySyntax | Bool | optional,
            minifyWhitespace | Bool | optional,
            name
              | String
              | doc "Optional config name to show in CLI output"
              | optional,
            noExternal
              | Array String
              | doc "Always bundle modules matching given patterns"
              | optional,
            onSuccess | String | optional,
            outDir | String | optional,
            platform
              | std.enum.TagOrString
              | [| 'neutral, 'browser, 'node |]
              | doc "Target platform"
              | optional,
            pure | std.contract.any_of [ Bool, Array String ] | optional,
            replaceNodeEnv | Bool | optional,
            shims | Bool | doc "Inject cjs and esm shims if needed" | optional,
            silent
              | Bool
              | doc "Suppress non-error logs (excluding \"onSuccess\" process output)"
              | optional,
            skipNodeModulesBundle
              | Bool
              | doc "Skip node_modules bundling"
              | optional,
            sourcemap
              | std.contract.any_of
                [
                  Bool,
                  std.contract.Sequence [ std.enum.TagOrString, [| 'inline |] ]
                ]
              | optional,
            splitting | Bool | optional,
            swc | { _ | Dyn } | optional,
            target | std.contract.any_of [ String, Array String ] | optional,
            treeshake
              | std.contract.any_of
                [
                  Bool,
                  std.contract.Sequence
                    [
                      std.enum.TagOrString,
                      [| 'recommended, 'safest, 'smallest |]
                    ]
                ]
              | optional,
            tsconfig | String | doc " Use a custom tsconfig" | optional,
            watch
              | std.contract.any_of
                [ Bool, String, Array (std.contract.any_of [ Bool, String ]) ]
              | optional,
            ..
          },
    }
    in
  std.contract.any_of
      [
        js2n.record.Record
          {
            additional = 'Some js2n.Always,
            patterns = {},
            properties =
              {
                  tsup =
                    std.contract.any_of
                        [
                          std.contract.Sequence
                            [ refs."definitions.options", {} ],
                          js2n.array.ArrayOf
                            (std.contract.Sequence
                              [ refs."definitions.options", {} ])
                        ],
                },
            required = { tsup = true, },
          },
        refs."definitions.options",
        js2n.array.ArrayOf refs."definitions.options"
      ]