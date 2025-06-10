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
        std.contract.any_of
          [
            js2n.record.Record
              {
                additional = 'Some Dyn,
                patterns = {},
                properties =
                  {
                      imports =
                        std.contract.Sequence
                            [
                              js2n.array.MinItems 1,
                              js2n.array.UniqueItems,
                              js2n.array.ArrayOf String
                            ],
                    },
                required = { imports = true, },
              },
            js2n.record.Record
              {
                additional = 'Some Dyn,
                patterns = {},
                properties =
                  {
                      contexts =
                        std.contract.Sequence
                            [
                              js2n.array.MinItems 1,
                              js2n.array.UniqueItems,
                              js2n.array.ArrayOf
                                (js2n.record.Record
                                  {
                                    additional = 'Some Dyn,
                                    patterns = {},
                                    properties =
                                      {
                                          domainVisionStatement = String,
                                          name = String,
                                          paths =
                                            std.contract.Sequence
                                                [
                                                  js2n.array.MinItems 1,
                                                  js2n.array.UniqueItems,
                                                  js2n.array.ArrayOf String
                                                ],
                                          terms =
                                            std.contract.Sequence
                                                [
                                                  js2n.array.MinItems 1,
                                                  js2n.array.UniqueItems,
                                                  js2n.array.ArrayOf
                                                    (js2n.record.Record
                                                      {
                                                        additional = 'Some Dyn,
                                                        patterns = {},
                                                        properties =
                                                          {
                                                              aliases =
                                                                std.contract.Sequence
                                                                    [
                                                                      js2n.array.MinItems
                                                                        1,
                                                                      js2n.array.UniqueItems,
                                                                      js2n.array.ArrayOf
                                                                        String
                                                                    ],
                                                              definition =
                                                                String,
                                                              examples =
                                                                std.contract.Sequence
                                                                    [
                                                                      js2n.array.MinItems
                                                                        1,
                                                                      js2n.array.UniqueItems,
                                                                      js2n.array.ArrayOf
                                                                        String
                                                                    ],
                                                              name = String,
                                                            },
                                                        required =
                                                          { name = true, },
                                                      })
                                                ],
                                        },
                                    required = { terms = true, },
                                  })
                            ],
                    },
                required = { contexts = true, },
              }
          ],
        {  .. }
      ]