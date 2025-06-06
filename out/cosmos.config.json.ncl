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
      detectLocalPlugins
        | Bool
        | doc "Automatically detect and load local plugins"
        | optional,
      disablePlugins | Bool | doc "Disable plugins" | optional,
      dom
        | {
          containerQuerySelector
            | js2n.Nullable (js2n.string.MinLength 1)
            | doc "Document selector for existing element to use as component parent (eg. #root). A blank container element is created from scratch if no selector is provided. [default: null]"
            | optional,
          ..
        }
        | doc "DOM-related options"
        | optional,
      exportPath
        | js2n.string.MinLength 1
        | doc "Where to generate static exports on disk. [default: \"cosmos-export\"]"
        | optional,
      exposeImports
        | std.contract.any_of [ js2n.string.MinLength 1, Bool ]
        | doc "Expose user imports and config required for the Cosmos renderer. Used with React Native and in custom integrations. When a path is specified it requires a file extension (eg. \"src/cosmos.imports.ts\"). [default: false]"
        | optional,
      fixtureFileSuffix
        | js2n.string.MinLength 1
        | doc "Suffix for fixture files (eg. example.fixture.jsx). [default: \"fixture\"]"
        | optional,
      fixturesDir
        | js2n.string.MinLength 1
        | doc "Name for directories that contain fixtures (eg. __fixtures__/example.jsx). [default: \"__fixtures__\"]"
        | optional,
      globalImports
        | js2n.array.UniqueItems
        | Array (js2n.string.MinLength 1)
        | doc "Modules to be imported before loading components. Stuff like reset.css, polyfills, etc."
        | optional,
      hostname
        | js2n.Nullable (js2n.string.MinLength 1)
        | doc "Dev server hostname. Set to null to accept connections with any hostname. [default: null]"
        | optional,
      httpProxy
        | js2n.record.Record
          {
            additional = 'Some js2n.Always,
            patterns =
              {
                  ".*" =
                    std.contract.any_of
                        [
                          String,
                          {
                            logLevel
                              | std.enum.TagOrString
                              | [| 'silent, 'warn, 'info, 'debug, 'error |]
                              | optional,
                            pathRewrite
                              | js2n.record.Record
                                {
                                  additional = 'Some Dyn,
                                  patterns = { ".*" = String, },
                                  properties = {},
                                  required = {},
                                }
                              | optional,
                            secure | Bool | optional,
                            target | String,
                            ..
                          }
                        ],
                },
            properties = {},
            required = {},
          }
        | doc "Proxy some URLs to a different HTTP server (eg. an API backend dev server). Similar to devServer.proxy in webpack config."
        | optional,
      https | Bool | doc "Server will be served over HTTPS." | optional,
      httpsOptions
        | {
          certPath | String | doc "Path of a certificate file" | optional,
          keyPath | String | doc "Path of a certificate's key file" | optional,
        }
        | doc "Additional options for HTTPS server."
        | optional,
      ignore
        | js2n.array.UniqueItems
        | Array (js2n.string.MinLength 1)
        | doc "Patterns for ignoring fixture and decorator files (eg. [\"**/dist/**\"]])."
        | optional,
      lazy
        | Bool
        | doc "Dynamically import fixture and decorator modules as they are loaded. When false all fixture and decorator modules are imported statically and bundled together. [default: false]"
        | optional,
      plugins
        | js2n.array.UniqueItems
        | Array (js2n.string.MinLength 1)
        | doc "Module IDs of Cosmos plugins (eg. \"react-cosmos-plugin-open-fixture\" or \"../path/to/my-plugin\")."
        | optional,
      port | Number | doc "Dev server port. [default: 5000]" | optional,
      portRetries
        | Number
        | doc "Max number of port retries. [default: 10]"
        | optional,
      publicUrl
        | String
        | doc "Base URL for static assets. [default: \"/\"]"
        | optional,
      rendererUrl
        | js2n.Nullable (js2n.string.MinLength 1)
        | doc "Required when renderer doesn't run on the same port (or host) as the Playground. Useful for integrations with build tools. [default: null]"
        | optional,
      rootDir
        | js2n.string.MinLength 1
        | doc "The root directory that all others paths in this config are relative to. Usually the root of your repo. If omitted, rootDir is equal to the directory containing your Cosmos config. When you don't use a Cosmos config, rootDir defaults to the current working directory."
        | optional,
      staticPath
        | js2n.string.MinLength 1
        | doc "Dir path to serve static assets from."
        | optional,
      ui
        | {
          responsivePreview
            | {
              devices
                | Array
                  {
                    height | js2n.number.Minimum 1,
                    label | js2n.string.MinLength 1,
                    width | js2n.number.Minimum 1,
                  }
                | doc "List of device viewports"
                | optional,
            }
            | optional,
          ..
        }
        | doc "UI plugin options"
        | optional,
      vite
        | {
          configPath
            | std.contract.any_of
              [ js2n.string.MinLength 1, js2n.Enum [ false ] ]
            | doc "Path to Vite config. Set to false to disable reading it from the default path. [default: \"vite.config.js\"]"
            | optional,
          indexPath
            | js2n.Nullable (js2n.string.MinLength 1)
            | doc "Path to index module (eg. \"src/my-index.tsx\"). [default: matches common index/main module paths]"
            | optional,
          port | Number | doc "Vite renderer port. [default: 5050]" | optional,
        }
        | doc "Vite-related options"
        | optional,
      watchDirs
        | js2n.array.UniqueItems
        | Array (js2n.string.MinLength 1)
        | doc "Directories where the Cosmos server watches for fixture files changes while running. [default: [\".\"]]"
        | optional,
      webpack
        | {
          configPath
            | js2n.Nullable (js2n.string.MinLength 1)
            | doc "Path to an existing webpack config, which Cosmos will reuse to build your code. Set to null to disable this behavior. [default: \"webpack.config.js\"]"
            | optional,
          hotReload
            | Bool
            | doc "Enable webpack's Hot Module Replacement. [default: true]"
            | optional,
          includeHashInOutputFilename
            | Bool
            | doc "Changes output filename from \"[name].js\" to \"[name].[contenthash].js\". [default: false]"
            | optional,
          overridePath
            | js2n.Nullable (js2n.string.MinLength 1)
            | doc "Path to a user module that customizes the webpack config used by Cosmos. Set to null to disable this behavior. [default: \"webpack.override.js\"]"
            | optional,
          reloadOnFail
            | Bool
            | doc "When using webpack's Hot Module Replacement, enable automatic location reload after webpack fails to update modules. [default: false]"
            | optional,
        }
        | doc "Webpack-related options"
        | optional,
    }