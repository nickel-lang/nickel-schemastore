# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = { "definitions.path" = js2n.string.Matches "^#?(|(/([^/~]|~[01])*)*)$", }
    in
  Array (
      js2n.OneOf
        [
          std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        op =
                          std.contract.Sequence
                              [
                                std.enum.TagOrString,
                                [| 'test, 'replace, 'add |]
                              ],
                        path = refs."definitions.path",
                        value =
                          std.contract.any_of
                              [
                                js2n.Null,
                                Bool,
                                Number,
                                String,
                                { _ | Dyn },
                                Array Dyn
                              ],
                      },
                  required = { op = true, path = true, value = true, },
                },
              Array Dyn
            ],
          std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        op =
                          std.contract.Sequence
                              [ std.enum.TagOrString, [| 'remove |] ],
                        path = refs."definitions.path",
                      },
                  required = { op = true, path = true, },
                },
              Array Dyn
            ],
          std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        from =
                          std.contract.Sequence
                              [
                                js2n.string.Matches "^#?(|(/([^/~]|~[01])*)*)$",
                                refs."definitions.path"
                              ],
                        op =
                          std.contract.Sequence
                              [ std.enum.TagOrString, [| 'copy, 'move |] ],
                        path = refs."definitions.path",
                      },
                  required = { from = true, op = true, path = true, },
                },
              Array Dyn
            ]
        ]
    )