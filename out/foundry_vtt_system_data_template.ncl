# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.entity" =
        js2n.record.Record
            {
              additional =
                'Some
                    (js2n.record.Record
                      {
                        additional =
                          'Some
                              (std.contract.any_of
                                [
                                  js2n.Null,
                                  Bool,
                                  Number,
                                  String,
                                  { _ | Dyn },
                                  Array Dyn
                                ]),
                        patterns = {},
                        properties = { templates = Array String, },
                        required = {},
                      }),
              patterns = {},
              properties =
                {
                    templates =
                      {
                          _ | {
                            _ | std.contract.any_of
                              [
                                js2n.Null,
                                Bool,
                                Number,
                                String,
                                { _ | Dyn },
                                Array Dyn
                              ]
                          }
                        },
                    types = Array String,
                  },
              required = {},
            },
    }
    in
  {
      Actor
        | refs."definitions.entity"
        | doc "The top level data schema for Actor types."
        | optional,
      Item
        | refs."definitions.entity"
        | doc "The top level data schema for Item types."
        | optional,
    }