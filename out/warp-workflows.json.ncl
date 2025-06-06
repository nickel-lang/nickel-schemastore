# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.nullable-string" = js2n.Nullable (js2n.string.MinLength 1),
      "definitions.url" =
        js2n.Nullable
            (std.contract.Sequence
              [ js2n.string.MinLength 1, js2n.string.Matches "^https?://.+" ]),
    }
    in
  {
      arguments
        | js2n.array.UniqueItems
        | Array
          {
            default_value
              | std.contract.any_of [ js2n.Null, Bool, Number, String ]
              | doc m%"
                A default value of the current argument
                https://github.com/warpdotdev/warp-workflows/blob/main/FORMAT.md#argumentsdefault_value
              "%
              | optional,
            description
              | refs."definitions.nullable-string"
              | doc m%"
                A description of the current argument
                https://github.com/warpdotdev/warp-workflows/blob/main/FORMAT.md#argumentsdescription
              "%
              | optional,
            name
              | js2n.string.MinLength 1
              | doc m%"
                A name of the current argument
                https://github.com/warpdotdev/warp-workflows/blob/main/FORMAT.md#argumentsname
              "%,
          }
        | doc m%"
          Arguments of the current workflow
          https://github.com/warpdotdev/warp-workflows/blob/main/FORMAT.md#arguments
        "%
        | optional,
      author
        | refs."definitions.nullable-string"
        | doc m%"
          An author of the current workflow
          https://github.com/warpdotdev/warp-workflows/blob/main/FORMAT.md#author
        "%
        | optional,
      author_url
        | refs."definitions.url"
        | doc m%"
          An author url of the current workflow
          https://github.com/warpdotdev/warp-workflows/blob/main/FORMAT.md#author_url
        "%
        | optional,
      command
        | js2n.string.MinLength 1
        | doc m%"
          A command of the current workflow
          https://github.com/warpdotdev/warp-workflows/blob/main/FORMAT.md#command
        "%,
      description
        | refs."definitions.nullable-string"
        | doc m%"
          A description of the current workflow
          https://github.com/warpdotdev/warp-workflows/blob/main/FORMAT.md#description
        "%
        | optional,
      name
        | js2n.string.MinLength 1
        | doc m%"
          A name of the current workflow
          https://github.com/warpdotdev/warp-workflows/blob/main/FORMAT.md#name
        "%,
      shells
        | js2n.array.UniqueItems
        | Array (
          std.contract.Sequence
            [
              std.enum.TagOrString,
              [| 'fish, 'Fish, 'bash, 'Bash, 'zsh, 'Zsh |]
            ]
        )
        | doc m%"
          Shells where the current workflow is valid
          https://github.com/warpdotdev/warp-workflows/blob/main/FORMAT.md#shells
        "%
        | optional,
      source_url
        | refs."definitions.url"
        | doc m%"
          A source url of the current workflow
          https://github.com/warpdotdev/warp-workflows/blob/main/FORMAT.md#source_url
        "%
        | optional,
      tags
        | js2n.array.UniqueItems
        | Array (js2n.string.MinLength 1)
        | doc m%"
          Tags of the current workflow
          https://github.com/warpdotdev/warp-workflows/blob/main/FORMAT.md#tags
        "%
        | optional,
    }