# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      beans | { defaultExternal | Bool | optional, } | optional,
      imports | { defaultExternal | Bool | optional, } | optional,
      logLevel | String | optional,
      mode | String | optional,
      typeSystem | String | optional,
      unsafeTSVersion | Bool | optional,
    }