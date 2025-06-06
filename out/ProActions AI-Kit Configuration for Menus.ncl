# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      _ | {
        items
          | Array (
            js2n.OneOf
              [
                js2n.record.Record
                  {
                    additional = 'Some Dyn,
                    patterns = {},
                    properties =
                      {
                          flowRef = String,
                          forContentItem =
                            std.contract.any_of
                                [ String, js2n.array.ArrayOf String ],
                          forElement =
                            std.contract.any_of
                                [ String, js2n.array.ArrayOf String ],
                          forTag =
                            std.contract.any_of
                                [ String, js2n.array.ArrayOf String ],
                          icon = String,
                          iconHtml = String,
                          title = String,
                          type = js2n.Const "button",
                        },
                    required = { flowRef = true, title = true, type = true, },
                  },
                js2n.record.Record
                  {
                    additional = 'Some Dyn,
                    patterns = {},
                    properties =
                      {
                          forContentItem =
                            std.contract.any_of
                                [ String, js2n.array.ArrayOf String ],
                          forElement =
                            std.contract.any_of
                                [ String, js2n.array.ArrayOf String ],
                          forTag =
                            std.contract.any_of
                                [ String, js2n.array.ArrayOf String ],
                          type = js2n.Const "separator",
                        },
                    required = { type = true, },
                  }
              ]
          )
          | doc "Menu items to display"
          | optional,
        ..
      }
    }