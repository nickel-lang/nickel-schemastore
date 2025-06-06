# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.placeholder" =
        {
            content
              | String
              | doc "Value to insert. It can contain a variable $1",
            example
              | String
              | doc "(optional) example of this placeholder"
              | optional,
          },
      "definitions.placeholders" =
        std.contract.Sequence
            [
              {
                _ | std.contract.Sequence
                  [ refs."definitions.placeholder", { _ | Dyn } ]
              },
              js2n.record.FieldsMatch "^(?!@@)[@a-zA-Z0-9_-]+$"
            ],
      "definitions.translationEntry" =
        {
            description
              | String
              | doc "(optional): Description of this string for the translator team"
              | optional,
            message | String | doc "Translation string",
            placeholders
              | refs."definitions.placeholders"
              | { _ | Dyn }
              | optional,
          },
    }
    in
  std.contract.Sequence
      [
        { _ | refs."definitions.translationEntry" },
        js2n.record.FieldsMatch "^(?!@@)[@a-zA-Z0-9_-]+$"
      ]