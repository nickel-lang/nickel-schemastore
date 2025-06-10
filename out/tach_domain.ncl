# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      interfaces
        | Array
          {
            data_types
              | String
              | doc "The data types allowed to cross the interface"
              | optional,
            exclusive
              | Bool
              | doc "Whether this interface is exclusive"
              | optional,
            expose
              | Array String
              | doc "List of regex patterns that match paths to expose in this interface"
              | optional,
            from
              | Array String
              | doc "List of regex patterns that match modules which adopt this interface"
              | optional,
            visibility
              | Array String
              | doc "List of visibility patterns"
              | optional,
          }
        | doc "List of interface configurations"
        | optional,
      modules
        | Array (
          std.contract.Sequence
            [
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
                                cannot_depend_on = js2n.array.ArrayOf String,
                                cannot_depend_on_external =
                                  js2n.array.ArrayOf String,
                                depends_on =
                                  js2n.array.ArrayOf
                                      (std.contract.any_of
                                        [
                                          String,
                                          js2n.record.Record
                                            {
                                              additional = 'None,
                                              patterns = {},
                                              properties =
                                                {
                                                    deprecated = Bool,
                                                    path = String,
                                                  },
                                              required = { path = true, },
                                            }
                                        ]),
                                depends_on_external = js2n.array.ArrayOf String,
                                layer = String,
                                path = String,
                                strict = Bool,
                                unchecked = Bool,
                                utility = Bool,
                                visibility = js2n.array.ArrayOf String,
                              },
                          required = { path = true, },
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
                                cannot_depend_on = js2n.array.ArrayOf String,
                                cannot_depend_on_external =
                                  js2n.array.ArrayOf String,
                                depends_on =
                                  js2n.array.ArrayOf
                                      (std.contract.any_of
                                        [
                                          String,
                                          js2n.record.Record
                                            {
                                              additional = 'None,
                                              patterns = {},
                                              properties =
                                                {
                                                    deprecated = Bool,
                                                    path = String,
                                                  },
                                              required = { path = true, },
                                            }
                                        ]),
                                depends_on_external = js2n.array.ArrayOf String,
                                layer = String,
                                paths = js2n.array.ArrayOf String,
                                strict = Bool,
                                unchecked = Bool,
                                utility = Bool,
                                visibility = js2n.array.ArrayOf String,
                              },
                          required = { paths = true, },
                        },
                      Array Dyn
                    ]
                ],
              { _ | Dyn }
            ]
        )
        | doc "List of module configurations"
        | optional,
      root
        | {
          cannot_depend_on
            | Array String
            | doc "List of forbidden dependencies for the module"
            | optional,
          depends_on
            | Array (
              std.contract.any_of
                [
                  String,
                  {
                    deprecated
                      | Bool
                      | doc "Flag usages of this dependency without failing tach check"
                      | optional,
                    path | String | doc "Path to the dependency",
                    ..
                  }
                ]
            )
            | doc "List of dependencies for the module"
            | optional,
          layer
            | String
            | doc "The architectural layer this module belongs to"
            | optional,
          strict | Bool | doc "DEPRECATED: Use 'interfaces' instead" | optional,
          unchecked
            | Bool
            | doc "Flag to skip checks for this module"
            | optional,
          utility
            | Bool
            | doc "Whether this module is a utility module"
            | optional,
          visibility
            | Array String
            | doc "List of visibility patterns"
            | optional,
        }
        | doc "Configuration for the root module of the domain"
        | optional,
    }