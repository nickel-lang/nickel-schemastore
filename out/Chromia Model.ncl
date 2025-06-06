# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      blockchains
        | js2n.record.PropertyNames
          (std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              js2n.string.Matches "^[a-zA-Z0-9][a-zA-Z0-9_]{0,63}$",
              { _ | Dyn },
              Array Dyn
            ])
        | {
          _ | std.contract.any_of
            [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
        }
        | doc "Configuration properties for a blockchain"
        | optional,
      compile
        | {
          deprecatedError
            | Bool
            | doc "Fail build if deprecated features are used"
            | optional,
          quiet | Bool | doc "Hide intermediary compilation output" | optional,
          rellVersion
            | js2n.string.Matches
              "^(0|[1-9]\\d*)\\.(0|[1-9]\\d*)\\.(0|[1-9]\\d*)(?:-((?:0|[1-9]\\d*|\\d*[a-zA-Z-][0-9a-zA-Z-]*)(?:\\.(?:0|[1-9]\\d*|\\d*[a-zA-Z-][0-9a-zA-Z-]*))*))?(?:\\+([0-9a-zA-Z-]+(?:\\.[0-9a-zA-Z-]+)*))?$"
            | doc "Version of Rell to use. Must follow semantic versioning format: MAJOR.MINOR.PATCH."
            | optional,
          source | String | doc "Path to the source root directory" | optional,
          strictGtvConversion
            | Bool
            | doc "Use strict GTV conversion to disallow transformation of GTV types when parsing operation arguments. It is recommended to leave this set to true (default)."
            | optional,
          target
            | String
            | doc "Path to the compilation target folder"
            | optional,
        }
        | doc "Compilation options"
        | optional,
      database
        | {
          database
            | String
            | doc "Database name (default: postchain)"
            | optional,
          driver | String | doc "Database driver" | optional,
          host
            | String
            | doc "Database hostname (default: localhost)"
            | optional,
          logSqlErrors
            | Bool
            | doc "Log any SQL errors to the console"
            | optional,
          password
            | String
            | doc "Database password (default: postchain)"
            | optional,
          schema | String | doc "Database schema",
          username
            | String
            | doc "Database username (default: postchain)"
            | optional,
        }
        | doc "Database options"
        | optional,
      definitions
        | std.contract.any_of [ { _ | Dyn }, Array Dyn ]
        | doc "Any additional properties you want to reference elsewhere"
        | optional,
      deployments
        | {
          _ | std.contract.any_of
            [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
        }
        | doc "Deployment targets"
        | optional,
      docs
        | {
          additionalContent
            | Array String
            | doc "Additional Markdown documentation files to include"
            | optional,
          additionalModules
            | Array String
            | doc "Additional modules to include"
            | optional,
          customAssets
            | Array String
            | doc "Additional image assets to include"
            | optional,
          customStyleSheets
            | Array String
            | doc "Additional CSS stylesheets to include"
            | optional,
          footerMessage | String | doc "Message shown in the footer" | optional,
          sourceLink
            | {
              remoteLineSuffix
                | String
                | doc "The suffix used to append the source code line number to the URL"
                | optional,
              remoteUrl
                | String
                | doc "The URL of the source code hosting service that can be accessed by documentation readers",
            }
            | doc "Link to a web site for browsing the source code"
            | optional,
          title | String | doc "Title for the generated documentation site",
        }
        | doc "Documentation options"
        | optional,
      libs
        | {
          _ | std.contract.any_of
            [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
        }
        | doc "Library definitions"
        | optional,
      test
        | {
          failOnError
            | Bool
            | doc "Indicates whether to fail the build on the first test error"
            | optional,
          moduleArgs
            | std.contract.any_of
              [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
            | optional,
          modules
            | std.contract.any_of
              [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
            | optional,
        }
        | doc "Configuration for unit tests"
        | optional,
    }