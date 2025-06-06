# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      aceProviders | js2n.array.UniqueItems | Array String | optional,
      aliases
        | js2n.record.Record
          {
            additional = 'Some Dyn,
            patterns = { "^.*$" = String, },
            properties = {},
            required = {},
          }
        | optional,
      assetsDriver
        | std.enum.TagOrString
        | [| 'fake, 'vite, 'encore |]
        | doc "The driver to use for assets bundling"
        | optional,
      commands | Array String | optional,
      commandsAliases
        | js2n.record.Record
          {
            additional = 'Some Dyn,
            patterns = { "^.*$" = String, },
            properties = {},
            required = {},
          }
        | optional,
      directories
        | js2n.record.Record
          {
            additional = 'Some String,
            patterns = {},
            properties =
              {
                  config = String,
                  contracts = String,
                  database = String,
                  migrations = String,
                  providers = String,
                  public = String,
                  resources = String,
                  seeds = String,
                  start = String,
                  tests = String,
                  tmp = String,
                  views = String,
                },
            required = {},
          }
        | optional,
      exceptionHandlerNamespace
        | String
        | doc "Http server exception handler namespace"
        | optional,
      metaFiles
        | Array (
          std.contract.any_of
            [ String, { pattern | String, reloadServer | Bool | optional, .. } ]
        )
        | optional,
      namespaces
        | js2n.record.Record
          {
            additional = 'Some String,
            patterns = {},
            properties =
              {
                  eventListeners = String,
                  exceptions = String,
                  httpControllers = String,
                  middleware = String,
                  models = String,
                  redisListeners = String,
                  validators = String,
                },
            required = {},
          }
        | optional,
      preloads
        | js2n.array.UniqueItems
        | Array (
          std.contract.any_of
            [
              String,
              {
                environment
                  | Array (
                    std.contract.Sequence
                      [
                        std.enum.TagOrString,
                        [| 'repl, 'test, 'console, 'web |]
                      ]
                  )
                  | optional,
                file | String,
                "optional" | Bool | optional,
              }
            ]
        )
        | optional,
      providers | js2n.array.UniqueItems | Array String,
      testProviders | js2n.array.UniqueItems | Array String | optional,
      tests
        | {
          forceExit | Bool | optional,
          suites
            | Array
              {
                files | std.contract.any_of [ String, Array String ],
                name | String,
                timeout | Number | optional,
                ..
              },
          timeout | Number | optional,
          ..
        }
        | optional,
      typescript | Bool | doc "Is project written in Typescript or not",
      ..
    }