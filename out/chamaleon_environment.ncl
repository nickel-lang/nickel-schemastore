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
        js2n.array.MinItems 1,
        js2n.array.UniqueItems,
        Array
          {
            platformType
              | std.enum.TagOrString
              | [| 'native, 'jvm, 'js, 'wasm, 'android |],
            properties
              | js2n.array.MinItems 1
              | js2n.array.UniqueItems
              | Array
                {
                  name | js2n.string.MinLength 1,
                  value
                    | std.contract.any_of
                      [ js2n.Null, Bool, js2n.string.MinLength 1 ],
                  ..
                },
            ..
          }
      ]