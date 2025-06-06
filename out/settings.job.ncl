# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  std.contract.Sequence
      [
        js2n.record.MinProperties 1,
        {
          is_singleton
            | Bool
            | doc "Specify if the Webjob should be treated as a singleton. If true, the Webjob will not scale on multiple Azure Website instances like the web application itself."
            | optional,
          stopping_wait_time
            | std.number.Integer
            | doc "The graceful shutdown period for an Azure Webjob. The time specified in seconds."
            | optional,
          ..
        }
      ]