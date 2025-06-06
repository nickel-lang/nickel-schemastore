# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      custom-dependencies
        | Array (
          std.contract.any_of
            [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
        )
        | doc "Custom dependency and their license for project"
        | optional,
      referenced-dependencies
        | Array (
          std.contract.any_of
            [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
        )
        | doc "Reference dependency to locate from registry and include it project's dependency and license scanning."
        | optional,
      remote-dependencies
        | Array (
          std.contract.any_of
            [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
        )
        | doc "Remote dependencies to license scanning"
        | optional,
      vendored-dependencies
        | Array (
          std.contract.any_of
            [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
        )
        | doc "Local dependencies upload to server for license scanning"
        | optional,
      version | std.number.Integer | optional,
      ..
    }