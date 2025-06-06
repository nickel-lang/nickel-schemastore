# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  std.contract.any_of
      [ js2n.Null, Bool, Number, String, { _ | Dyn }, Array Dyn ]