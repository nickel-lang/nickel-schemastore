# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      propertyDefinitions
        | js2n.array.MinItems 1
        | js2n.array.UniqueItems
        | Array
          {
            name | js2n.string.MinLength 1,
            nullable | Bool | optional,
            propertyType | std.enum.TagOrString | [| 'Boolean, '"String" |],
            supportedPlatforms
              | js2n.array.UniqueItems
              | Array (
                std.contract.Sequence
                  [
                    std.enum.TagOrString,
                    [| 'native, 'jvm, 'js, 'wasm, 'android |]
                  ]
              )
              | optional,
            ..
          },
      supportedPlatforms
        | js2n.array.MinItems 1
        | js2n.array.UniqueItems
        | Array (
          std.contract.Sequence
            [ std.enum.TagOrString, [| 'native, 'jvm, 'js, 'wasm, 'android |] ]
        ),
      ..
    }