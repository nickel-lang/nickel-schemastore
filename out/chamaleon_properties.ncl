# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  { selectedEnvironmentName | js2n.Nullable (js2n.string.MinLength 1), .. }