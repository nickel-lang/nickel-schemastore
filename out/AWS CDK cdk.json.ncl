# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      app | js2n.string.MinLength 1 | optional,
      build | String | optional,
      context | { _ | Dyn } | optional,
      versionReporting | Bool | optional,
      watch
        | {
          exclude | Array String | optional,
          include | Array String | optional,
          ..
        }
        | optional,
      ..
    }