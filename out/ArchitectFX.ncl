# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.config" =
        js2n.OneOf
            [
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        ".field" = String,
                        ".value" =
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
                  required = { ".field" = true, ".value" = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        ".args" = Array Dyn,
                        ".method" = String,
                        ".transform" = Bool,
                        ".varargs" = Array Dyn,
                      },
                  required = { ".method" = true, },
                }
            ],
      "definitions.entity" =
        {
            ".args"
              | Array Dyn
              | doc "Arguments for the constructor"
              | optional,
            ".config"
              | Array refs."definitions.config"
              | doc "A series of generic steps to configure global state or specific objects"
              | optional,
            ".factory"
              | Array refs."definitions.config"
              | doc "Allows building this entity through the factory/builder pattern using configs"
              | optional,
            ".varargs"
              | Array Dyn
              | doc "Specifically to be used for constructors which use varargs"
              | optional,
            children
              | Array (std.contract.Sequence [ js2n.Always, { _ | Dyn } ])
              | doc "Entities may or may not contain other entities inside them"
              | optional,
            ..
          },
    }
    in
  js2n.record.Record
      {
        additional = 'Some Dyn,
        patterns = { "^[A-Za-z_][A-Za-z0-9_]*$" = refs."definitions.entity", },
        properties =
          {
              ".config" = Array refs."definitions.config",
              ".controller" = String,
              ".deps" =
                std.contract.Sequence [ js2n.array.UniqueItems, Array String ],
              ".imports" =
                std.contract.Sequence [ js2n.array.UniqueItems, Array String ],
            },
        required = {},
      }