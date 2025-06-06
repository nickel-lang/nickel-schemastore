# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      description
        | js2n.string.MinLength 1
        | doc "A short description of the extension pack."
        | optional,
      extensions
        | Array (
          std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                name
                  | js2n.string.MinLength 1
                  | doc "The name of the extension."
                  | optional,
                vsixId
                  | js2n.string.MinLength 1
                  | doc "The unique ID of the extension.",
                ..
              },
              Array Dyn
            ]
        )
        | doc "A list of extension objects."
        | optional,
      id
        | js2n.string.MinLength 1
        | doc "A unique identifier for the extension pack. This is to uniquely identify the extension pack and will not be shown to the user."
        | optional,
      name
        | js2n.string.MinLength 1
        | doc "The name of the extension pack."
        | optional,
      version
        | js2n.string.Matches "^(\\d+\\.)?(\\d+\\.)?(\\d+\\.)?(\\d+)$"
        | doc "The version of the extension pack.",
      ..
    }