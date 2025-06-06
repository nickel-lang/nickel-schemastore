# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  js2n.record.Record
      {
        additional = 'Some ({ _ | Dyn }),
        patterns = {},
        properties =
          {
              "$schema" = String,
              excludes = Array String,
              extends = std.contract.any_of [ String, Array String ],
              includes = Array String,
              incremental = Bool,
              indentWidth = Number,
              lineWidth = Number,
              newLineKind =
                std.contract.Sequence
                    [
                      js2n.OneOf
                        [
                          js2n.Const "auto",
                          js2n.Const "crlf",
                          js2n.Const "lf",
                          js2n.Const "system"
                        ],
                      String
                    ],
              plugins = Array String,
              useTabs = Bool,
            },
        required = {},
      }