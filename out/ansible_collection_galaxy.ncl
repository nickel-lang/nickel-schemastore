# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      authors | Array String,
      build_ignore | Array String | optional,
      dependencies
        | {
          _ | std.contract.any_of
            [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
        }
        | optional,
      description | String,
      documentation | String | optional,
      homepage | String | optional,
      issues | String | optional,
      license
        | Array (
          std.contract.any_of
            [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
        )
        | optional,
      license_file | String | optional,
      manifest
        | {
          directives | Array String | optional,
          omit_default_directives | Bool | optional,
        }
        | optional,
      name | js2n.string.MinLength 2 | js2n.string.Matches "^[a-z][a-z0-9_]+$",
      namespace
        | js2n.string.MinLength 2
        | js2n.string.Matches "^[a-z][a-z0-9_]+$",
      readme | String,
      repository | String,
      tags | Array String | optional,
      version
        | js2n.string.MinLength 5
        | js2n.string.Matches
          "^(0|[1-9]\\d*)\\.(0|[1-9]\\d*)\\.(0|[1-9]\\d*)(?:-((?:0|[1-9]\\d*|\\d*[a-zA-Z-][0-9a-zA-Z-]*)(?:\\.(?:0|[1-9]\\d*|\\d*[a-zA-Z-][0-9a-zA-Z-]*))*))?(?:\\+([0-9a-zA-Z-]+(?:\\.[0-9a-zA-Z-]+)*))?$",
    }