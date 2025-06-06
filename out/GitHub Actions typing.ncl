# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.enum_property" =
        {
            allowed-values
              | js2n.array.MinItems 1
              | Array (js2n.string.MinLength 1)
              | doc m%"
                The allowed values for the enum property
                https://github.com/typesafegithub/github-actions-typing/blob/main/README.md#enum
              "%,
            name
              | js2n.string.MinLength 1
              | doc m%"
                A hint for code generators what name can be used as class name.
                https://github.com/typesafegithub/github-actions-typing/blob/main/README.md#enum
              "%
              | optional,
            type
              | std.contract.Equal "enum"
              | doc m%"
                The type of the input, output, or list item.
                https://github.com/typesafegithub/github-actions-typing/blob/main/README.md#available-types
              "%,
          },
      "definitions.integer_with_named_values_property" =
        {
            name
              | js2n.string.MinLength 1
              | doc m%"
                A hint for code generators what name can be used as class name.
                https://github.com/typesafegithub/github-actions-typing/blob/main/README.md#integer
              "%
              | optional,
            named-values
              | js2n.record.MinProperties 1
              | { _ | std.number.Integer }
              | js2n.record.FieldsMatch "^[_a-zA-Z][a-zA-Z0-9_-]*$"
              | doc m%"
                A map of special names and their value like "Infinity" or "Never"
                https://github.com/typesafegithub/github-actions-typing/blob/main/README.md#integer
              "%,
            type
              | std.contract.Equal "integer"
              | doc m%"
                The type of the input, output, or list item.
                https://github.com/typesafegithub/github-actions-typing/blob/main/README.md#available-types
              "%,
          },
      "definitions.list_item_type" =
        {
            type
              | std.enum.TagOrString
              | [| 'enum, 'float, 'integer, 'boolean, 'string |]
              | doc m%"
                The type of the list item.
                https://github.com/typesafegithub/github-actions-typing/blob/main/README.md#list
              "%,
            ..
          },
      "definitions.list_property" =
        {
            list-item
              | refs."definitions.list_item_type"
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [
                      refs."definitions.simple_primitive_property",
                      { _ | Dyn }
                    ],
                  std.contract.Sequence
                    [
                      refs."definitions.integer_with_named_values_property",
                      { _ | Dyn }
                    ],
                  std.contract.Sequence
                    [ refs."definitions.enum_property", { _ | Dyn } ]
                ]
              | doc m%"
                The specification how list item elements have to look like.
                https://github.com/typesafegithub/github-actions-typing/blob/main/README.md#list
              "%,
            separator
              | js2n.string.MinLength 1
              | doc m%"
                The separator that is added between the elements when building the string, for example a comma or newline character.
                https://github.com/typesafegithub/github-actions-typing/blob/main/README.md#list
              "%,
            type
              | std.contract.Equal "list"
              | doc m%"
                The type of the input, output, or list item.
                https://github.com/typesafegithub/github-actions-typing/blob/main/README.md#available-types
              "%,
          },
      "definitions.properties" =
        std.contract.Sequence
            [
              {
                _ | std.contract.Sequence
                  [ refs."definitions.property", { _ | Dyn } ]
              },
              js2n.record.FieldsMatch "^[_a-zA-Z][a-zA-Z0-9_-]*$"
            ],
      "definitions.properties_or_null" =
        js2n.Nullable
            (std.contract.Sequence
              [ refs."definitions.properties", { _ | Dyn } ]),
      "definitions.property" =
        std.contract.Sequence
            [
              refs."definitions.property_type",
              std.contract.any_of
                [
                  std.contract.Sequence
                    [
                      refs."definitions.simple_primitive_property",
                      { _ | Dyn }
                    ],
                  std.contract.Sequence
                    [
                      refs."definitions.integer_with_named_values_property",
                      { _ | Dyn }
                    ],
                  std.contract.Sequence
                    [ refs."definitions.enum_property", { _ | Dyn } ],
                  std.contract.Sequence
                    [ refs."definitions.list_property", { _ | Dyn } ]
                ]
            ],
      "definitions.property_type" =
        {
            type
              | std.enum.TagOrString
              | [| 'list, 'enum, 'float, 'integer, 'boolean, 'string |]
              | doc m%"
                The type of the input or output.
                https://github.com/typesafegithub/github-actions-typing/blob/main/README.md#available-types
              "%,
            ..
          },
      "definitions.simple_primitive_property" =
        {
            type
              | std.enum.TagOrString
              | [| 'float, 'integer, 'boolean, 'string |]
              | doc m%"
                The type of the input, output, or list item.
                https://github.com/typesafegithub/github-actions-typing/blob/main/README.md#available-types
              "%,
          },
      "definitions.top_level_or_null" =
        js2n.Nullable
            {
              inputs
                | refs."definitions.properties_or_null"
                | doc m%"
                  The inputs of the action.
                  https://github.com/typesafegithub/github-actions-typing/blob/main/README.md
                "%
                | optional,
              outputs
                | refs."definitions.properties_or_null"
                | doc m%"
                  The outputs of the action.
                  https://github.com/typesafegithub/github-actions-typing/blob/main/README.md
                "%
                | optional,
            },
    }
    in
  refs."definitions.top_level_or_null"