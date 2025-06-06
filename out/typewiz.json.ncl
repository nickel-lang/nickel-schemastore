# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      applyTypes
        | {
          prefix
            | String
            | doc "A prefix that will be added in front of each type applied. You can use a javascript comment to mark the automatically added types. The prefix will be added after the colon character, just before the actual type."
            | optional,
          ..
        }
        | optional,
      common
        | {
          rootDir
            | String
            | doc "If given, all the file paths in the collected type info will be resolved relative to this directory."
            | optional,
          tsConfig
            | String
            | doc "Path to your project's tsconfig file. This is required for several other options like implicit this instrumentation and type inference using static analysis."
            | optional,
          ..
        }
        | optional,
      instrument
        | {
          instrumentCallExpressions
            | Bool
            | doc "Try to find even more types by combining static analysis with the runtime analysis. TypeWiz will try to use TypeScript's inferred types when determining the type of a function argument."
            | optional,
          instrumentImplicitThis
            | Bool
            | doc "Find type of this in non-class member functions. Requires common.tsConfig to be set"
            | optional,
          skipTwizDeclarations
            | Bool
            | doc "Don't add a declaration of $_$twiz to instrumented files."
            | optional,
          ..
        }
        | optional,
    }