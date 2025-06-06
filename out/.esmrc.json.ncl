# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  std.contract.any_of
      [
        js2n.Null,
        Bool,
        Number,
        String,
        {
          await
            | Bool
            | doc "A boolean for top-level await in modules without ESM exports. (Node 10+)"
            | optional,
          cache
            | Bool
            | doc "[dev] A boolean for toggling cache creation or a cache directory path"
            | optional,
          cjs
            | std.contract.any_of
              [
                Bool,
                {
                  cache
                    | Bool
                    | doc "A boolean for storing ES modules in require.cache"
                    | optional,
                  dedefault
                    | Bool
                    | doc "A boolean for requiring ES modules without the dangling require().default"
                    | optional,
                  esModule
                    | Bool
                    | doc "A boolean for __esModule interoperability"
                    | optional,
                  extensions
                    | Bool
                    | doc "A boolean for respecting require.extensions in ESM"
                    | optional,
                  mutableNamespace
                    | Bool
                    | doc "A boolean for importing named exports of CJS modules"
                    | optional,
                  namedExports
                    | Bool
                    | doc "A boolean for importing named exports of CJS modules"
                    | optional,
                  paths
                    | Bool
                    | doc "A boolean for following CJS path rules in ESM"
                    | optional,
                  topLevelReturn
                    | Bool
                    | doc "A boolean for top-level return support"
                    | optional,
                  vars
                    | Bool
                    | doc "A boolean for __dirname, __filename, and require in ESM"
                    | optional,
                  ..
                }
              ]
            | doc "A boolean or object for toggling CJS features in ESM"
            | optional,
          "force"
            | Bool
            | doc "A boolean to apply these options to all module loads"
            | optional,
          mainFields
            | js2n.array.UniqueItems
            | Array String
            | doc "An array of fields checked when importing a package"
            | optional,
          mode
            | js2n.OneOf
              [ js2n.Const "auto", js2n.Const "all", js2n.Const "strict" ]
            | String
            | doc "A string describing the mode in which to detect ESM module files"
            | optional,
          sourceMap
            | Bool
            | doc "[dev] A boolean for including inline source maps"
            | optional,
          wasm
            | Bool
            | doc "A boolean for WebAssembly module support. (Node 8+)"
            | optional,
        },
        Array Dyn
      ]