# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      "$schema" | String | optional,
      functions
        | String
        | doc m%"
          Path to the directory containing Convex functions. You can customize this to use a different location than the default 'convex/' directory.
          
          https://docs.convex.dev/production/project-configuration#changing-the-convex-folder-name-or-location
        "%
        | optional,
      generateCommonJSApi
        | Bool
        | doc m%"
          When true, generates CommonJS-compatible API files for projects not using ES modules. Enable this if your project uses require() syntax instead of ES modules.
          
          https://docs.convex.dev/client/javascript/node#javascript-with-commonjs-require-syntax
        "%
        | optional,
      node
        | {
          externalPackages
            | Array String
            | js2n.OneOf
              [
                std.contract.any_of
                  [
                    js2n.Null,
                    Bool,
                    Number,
                    String,
                    { _ | Dyn },
                    std.contract.Sequence
                      [
                        js2n.array.MaxItems 1,
                        js2n.array.Contains (js2n.Const "*")
                      ]
                  ],
                std.contract.not
                  (std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      { _ | Dyn },
                      js2n.array.Contains (js2n.Const "*")
                    ])
              ]
            | doc m%"
              List of packages that should be installed on the server instead of being bundled by the CLI. Use this for packages that can't be bundled or need to be installed directly on the server.
              
              If you want to mark all dependencies as external, you can use the string '*' instead of an array.
              
              https://docs.convex.dev/functions/bundling#external-packages
            "%
            | optional,
          ..
        }
        | doc "Configuration for the Convex Node.js runtime, where your actions run that have 'use node' at the top of the file."
        | optional,
    }