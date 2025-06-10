# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.sectionMap" =
        std.contract.any_of
            [
              js2n.record.Record
                {
                  additional = 'Some Dyn,
                  patterns = {},
                  properties = { url = String, },
                  required = {},
                },
              js2n.record.Record
                {
                  additional = 'Some Dyn,
                  patterns = {},
                  properties = { map = js2n.Always, },
                  required = {},
                }
            ],
    }
    in
  js2n.record.Record
      {
        additional = 'Some Dyn,
        patterns = { "^x_" = {  .. }, },
        properties =
          {
              file = String,
              mappings = String,
              names = Array String,
              sections =
                std.contract.Sequence
                    [
                      js2n.array.MinItems 1,
                      js2n.array.UniqueItems,
                      Array (
                        std.contract.Sequence
                          [
                            refs."definitions.sectionMap",
                            {
                              offset
                                | {
                                  column | std.number.Integer | optional,
                                  line | std.number.Integer | optional,
                                  ..
                                }
                                | optional,
                              ..
                            }
                          ]
                      )
                    ],
              sourceRoot = String,
              sources = Array String,
              sourcesContent = Array (js2n.Nullable String),
              version = std.number.Integer,
            },
        required = { version = true, },
      }