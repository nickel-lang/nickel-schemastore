# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.avroArray" =
        {
            aliases
              | Array (
                std.contract.Sequence [ refs."definitions.name", String ]
              )
              | optional,
            "doc" | String | optional,
            items | refs."definitions.types",
            name | refs."definitions.name" | String | optional,
            namespace | refs."definitions.namespace" | String | optional,
            type | std.enum.TagOrString | [| 'array |],
            ..
          },
      "definitions.avroEnum" =
        {
            aliases
              | Array (
                std.contract.Sequence [ refs."definitions.name", String ]
              )
              | optional,
            "doc" | String | optional,
            name | refs."definitions.name" | String,
            namespace | refs."definitions.namespace" | String | optional,
            symbols
              | Array (
                std.contract.Sequence [ refs."definitions.name", String ]
              ),
            type | std.enum.TagOrString | [| 'enum |],
            ..
          },
      "definitions.avroField" =
        {
            aliases
              | Array (
                std.contract.Sequence [ refs."definitions.name", String ]
              )
              | optional,
            "default" | js2n.Always | optional,
            "doc" | String | optional,
            name | refs."definitions.name" | String,
            order
              | std.enum.TagOrString
              | [| 'ignore, 'descending, 'ascending |]
              | optional,
            type | refs."definitions.types",
            ..
          },
      "definitions.avroFixed" =
        {
            aliases
              | Array (
                std.contract.Sequence [ refs."definitions.name", String ]
              )
              | optional,
            "doc" | String | optional,
            name | refs."definitions.name" | String,
            namespace | refs."definitions.namespace" | String | optional,
            size | Number,
            type | std.enum.TagOrString | [| 'fixed |],
            ..
          },
      "definitions.avroMap" =
        {
            aliases
              | Array (
                std.contract.Sequence [ refs."definitions.name", String ]
              )
              | optional,
            "doc" | String | optional,
            name | refs."definitions.name" | String | optional,
            namespace | refs."definitions.namespace" | String | optional,
            type | std.enum.TagOrString | [| 'map |],
            values | refs."definitions.types",
            ..
          },
      "definitions.avroRecord" =
        {
            aliases
              | Array (
                std.contract.Sequence [ refs."definitions.name", String ]
              )
              | optional,
            "doc" | String | optional,
            fields
              | Array (
                std.contract.Sequence
                  [ refs."definitions.avroField", { _ | Dyn } ]
              ),
            name | refs."definitions.name" | String,
            namespace | refs."definitions.namespace" | String | optional,
            type | std.enum.TagOrString | [| 'record |],
            ..
          },
      "definitions.avroSchema" = refs."definitions.types",
      "definitions.avroUnion" =
        std.contract.Sequence
            [ js2n.array.MinItems 1, Array refs."definitions.avroSchema" ],
      "definitions.customTypeReference" =
        std.contract.Sequence
            [
              js2n.string.Matches
                "^[A-Za-z_][A-Za-z0-9_]*(\\.[A-Za-z_][A-Za-z0-9_]*)*$",
              std.contract.not
                (std.contract.Sequence
                  [ refs."definitions.primitiveType", String ])
            ],
      "definitions.name" = js2n.string.Matches "^[A-Za-z_][A-Za-z0-9_]*$",
      "definitions.namespace" =
        js2n.string.Matches
            "^([A-Za-z_][A-Za-z0-9_]*(\\.[A-Za-z_][A-Za-z0-9_]*)*)*$",
      "definitions.primitiveType" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [|
                'string,
                'bytes,
                'double,
                'float,
                'long,
                'int,
                'boolean,
                '"null"
              |]
            ],
      "definitions.primitiveTypeWithMetadata" =
        { type | refs."definitions.primitiveType" | String, .. },
      "definitions.types" =
        js2n.OneOf
            [
              std.contract.Sequence
                [ refs."definitions.primitiveType", String ],
              std.contract.Sequence
                [ refs."definitions.primitiveTypeWithMetadata", { _ | Dyn } ],
              std.contract.Sequence
                [ refs."definitions.customTypeReference", String ],
              std.contract.Sequence
                [ refs."definitions.avroRecord", { _ | Dyn } ],
              std.contract.Sequence
                [ refs."definitions.avroEnum", { _ | Dyn } ],
              std.contract.Sequence
                [ refs."definitions.avroArray", { _ | Dyn } ],
              std.contract.Sequence [ refs."definitions.avroMap", { _ | Dyn } ],
              std.contract.Sequence
                [ refs."definitions.avroFixed", { _ | Dyn } ],
              std.contract.Sequence [ refs."definitions.avroUnion", Array Dyn ]
            ],
    }
    in
  refs."definitions.avroSchema"