# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.AcceleratorOption" =
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
                            dataType = js2n.Const "string",
                            defaultValue = String,
                          },
                      required = {},
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            dataType = js2n.array.ArrayOf (js2n.Const "string"),
                            defaultValue = js2n.array.ArrayOf String,
                          },
                      required = {},
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            dataType = js2n.Const "number",
                            defaultValue = Number,
                          },
                      required = {},
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            dataType = js2n.array.ArrayOf (js2n.Const "number"),
                            defaultValue = js2n.array.ArrayOf Number,
                          },
                      required = {},
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            dataType = js2n.Const "boolean",
                            defaultValue = Bool,
                          },
                      required = {},
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            dataType =
                              js2n.array.ArrayOf (js2n.Const "boolean"),
                            defaultValue = js2n.array.ArrayOf Bool,
                          },
                      required = {},
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            dataType =
                              js2n.string.Matches "^$|^[A-Z][a-z0-9A-Z]*$",
                            defaultValue = { _ | Dyn },
                          },
                      required = {},
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            dataType =
                              js2n.array.ArrayOf
                                  (js2n.string.Matches
                                    "^$|^[A-Z][a-z0-9A-Z]*$"),
                            defaultValue = js2n.array.ArrayOf ({ _ | Dyn }),
                          },
                      required = {},
                    }
                ],
              {
                choices
                  | Array
                    {
                      text | String | doc "The displayed text" | optional,
                      value
                        | std.contract.any_of
                          [
                            js2n.Null,
                            Bool,
                            Number,
                            String,
                            { _ | Dyn },
                            Array Dyn
                          ]
                        | doc "The value that the form returns for this choice"
                        | optional,
                      ..
                    }
                  | doc "A list of predefined choices"
                  | optional,
                dataType
                  | std.contract.any_of
                    [
                      js2n.Const "string",
                      js2n.Const "number",
                      js2n.Const "boolean",
                      js2n.string.Matches "^$|^[A-Z][a-z0-9A-Z]*$",
                      std.contract.Sequence
                        [
                          js2n.array.MaxItems 1,
                          js2n.array.MinItems 1,
                          js2n.array.ArrayOf (js2n.Const "string")
                        ],
                      std.contract.Sequence
                        [
                          js2n.array.MaxItems 1,
                          js2n.array.MinItems 1,
                          js2n.array.ArrayOf (js2n.Const "number")
                        ],
                      std.contract.Sequence
                        [
                          js2n.array.MaxItems 1,
                          js2n.array.MinItems 1,
                          js2n.array.ArrayOf (js2n.Const "boolean")
                        ],
                      std.contract.Sequence
                        [
                          js2n.array.MaxItems 1,
                          js2n.array.MinItems 1,
                          js2n.array.ArrayOf
                            (js2n.string.Matches "^$|^[A-Z][a-z0-9A-Z]*$")
                        ],
                      js2n.Null
                    ]
                  | doc "The option data type"
                  | optional,
                defaultValue
                  | std.contract.any_of
                    [ js2n.Null, Bool, Number, String, { _ | Dyn }, Array Dyn ]
                  | doc "The value used to pre-populate the option"
                  | optional,
                dependsOn
                  | refs."definitions.DependsOn"
                  | { _ | Dyn }
                  | optional,
                description
                  | String
                  | doc "A tooltip to accompany the input"
                  | optional,
                inputType
                  | std.enum.TagOrString
                  | [| 'radio, 'select, 'checkbox, 'textarea, 'text |]
                  | doc "The HTML input type used to display the option"
                  | optional,
                label
                  | String
                  | doc "A human-readable version of the name identifying the option"
                  | optional,
                name
                  | js2n.string.MinLength 1
                  | js2n.string.Matches "^$|^[a-z][a-z0-9A-Z]*$"
                  | doc "A unique, camelCase name"
                  | optional,
                required
                  | Bool
                  | doc "Whether the user is required to enter a value in the UI"
                  | optional,
                validationRegex
                  | refs."definitions.Pattern"
                  | String
                  | optional,
                ..
              }
            ],
      "definitions.Chain-1" =
        {
            applyTo
              | js2n.array.MinItems 1
              | Array (
                std.contract.Sequence
                  [ js2n.string.MinLength 1, js2n.string.Matches "^$|^[^/].*$" ]
              )
              | doc "The path patterns used to filter which files to apply the Transforms to"
              | optional,
            condition | refs."definitions.Expression" | String | optional,
            name | String | doc "The transform name" | optional,
            transformations
              | Array (
                std.contract.any_of
                  [
                    std.contract.Sequence
                      [ refs."definitions.Loop-2", { _ | Dyn } ],
                    std.contract.Sequence
                      [ refs."definitions.Chain-2", { _ | Dyn } ],
                    std.contract.Sequence
                      [ refs."definitions.Provenance-2", { _ | Dyn } ],
                    std.contract.Sequence
                      [ refs."definitions.Exclude-2", { _ | Dyn } ],
                    std.contract.Sequence
                      [ refs."definitions.Include-2", { _ | Dyn } ],
                    std.contract.Sequence
                      [ refs."definitions.Combo-2", { _ | Dyn } ],
                    std.contract.Sequence
                      [ refs."definitions.ReplaceText-2", { _ | Dyn } ],
                    std.contract.Sequence
                      [ refs."definitions.InvokeFragment-2", { _ | Dyn } ],
                    std.contract.Sequence
                      [ refs."definitions.Merge-2", { _ | Dyn } ],
                    std.contract.Sequence
                      [ refs."definitions.OpenRewriteRecipe-2", { _ | Dyn } ],
                    std.contract.Sequence
                      [ refs."definitions.RewritePath-2", { _ | Dyn } ],
                    std.contract.Sequence
                      [ refs."definitions.UniquePath-2", { _ | Dyn } ],
                    std.contract.Sequence
                      [ refs."definitions.YTT-2", { _ | Dyn } ],
                    std.contract.Sequence
                      [ refs."definitions.Let-2", { _ | Dyn } ],
                    std.contract.Sequence
                      [ refs."definitions.UseEncoding-2", { _ | Dyn } ],
                    std.contract.Sequence
                      [ refs."definitions.InvokeFragment-2", { _ | Dyn } ]
                  ]
              )
              | doc "A list of child Transforms to apply sequentially"
              | optional,
            ..
          },
      "definitions.Chain-2" =
        std.contract.Sequence
            [
              refs."definitions.Chain-1",
              { type | std.contract.Equal "Chain", .. }
            ],
      "definitions.Combo-1" =
        {
            applyTo
              | js2n.array.MinItems 1
              | Array (
                std.contract.Sequence
                  [ js2n.string.MinLength 1, js2n.string.Matches "^$|^[^/].*$" ]
              )
              | doc "The path patterns used to filter which files to apply the Transforms to"
              | optional,
            chain
              | Array (
                std.contract.any_of
                  [
                    std.contract.Sequence
                      [ refs."definitions.Loop-2", { _ | Dyn } ],
                    std.contract.Sequence
                      [ refs."definitions.Chain-2", { _ | Dyn } ],
                    std.contract.Sequence
                      [ refs."definitions.Provenance-2", { _ | Dyn } ],
                    std.contract.Sequence
                      [ refs."definitions.Exclude-2", { _ | Dyn } ],
                    std.contract.Sequence
                      [ refs."definitions.Include-2", { _ | Dyn } ],
                    std.contract.Sequence
                      [ refs."definitions.Combo-2", { _ | Dyn } ],
                    std.contract.Sequence
                      [ refs."definitions.ReplaceText-2", { _ | Dyn } ],
                    std.contract.Sequence
                      [ refs."definitions.InvokeFragment-2", { _ | Dyn } ],
                    std.contract.Sequence
                      [ refs."definitions.Merge-2", { _ | Dyn } ],
                    std.contract.Sequence
                      [ refs."definitions.OpenRewriteRecipe-2", { _ | Dyn } ],
                    std.contract.Sequence
                      [ refs."definitions.RewritePath-2", { _ | Dyn } ],
                    std.contract.Sequence
                      [ refs."definitions.UniquePath-2", { _ | Dyn } ],
                    std.contract.Sequence
                      [ refs."definitions.YTT-2", { _ | Dyn } ],
                    std.contract.Sequence
                      [ refs."definitions.Let-2", { _ | Dyn } ],
                    std.contract.Sequence
                      [ refs."definitions.UseEncoding-2", { _ | Dyn } ],
                    std.contract.Sequence
                      [ refs."definitions.InvokeFragment-2", { _ | Dyn } ]
                  ]
              )
              | doc "A list of child Transforms to apply sequentially"
              | optional,
            condition | refs."definitions.Expression" | String | optional,
            exclude
              | Array (
                std.contract.Sequence
                  [ js2n.string.MinLength 1, js2n.string.Matches "^$|^[^/].*$" ]
              )
              | doc "The path patterns used to filter which files to exclude"
              | optional,
            include
              | Array (
                std.contract.Sequence
                  [ js2n.string.MinLength 1, js2n.string.Matches "^$|^[^/].*$" ]
              )
              | doc "The path patterns used to filter which files to include"
              | optional,
            "let"
              | Array (
                std.contract.Sequence
                  [ refs."definitions.DerivedSymbol", { _ | Dyn } ]
              )
              | doc "A list of additional variables and their values"
              | optional,
            "merge"
              | Array (
                std.contract.any_of
                  [
                    std.contract.Sequence
                      [ refs."definitions.Loop-2", { _ | Dyn } ],
                    std.contract.Sequence
                      [ refs."definitions.Chain-2", { _ | Dyn } ],
                    std.contract.Sequence
                      [ refs."definitions.Provenance-2", { _ | Dyn } ],
                    std.contract.Sequence
                      [ refs."definitions.Exclude-2", { _ | Dyn } ],
                    std.contract.Sequence
                      [ refs."definitions.Include-2", { _ | Dyn } ],
                    std.contract.Sequence
                      [ refs."definitions.Combo-2", { _ | Dyn } ],
                    std.contract.Sequence
                      [ refs."definitions.ReplaceText-2", { _ | Dyn } ],
                    std.contract.Sequence
                      [ refs."definitions.InvokeFragment-2", { _ | Dyn } ],
                    std.contract.Sequence
                      [ refs."definitions.Merge-2", { _ | Dyn } ],
                    std.contract.Sequence
                      [ refs."definitions.OpenRewriteRecipe-2", { _ | Dyn } ],
                    std.contract.Sequence
                      [ refs."definitions.RewritePath-2", { _ | Dyn } ],
                    std.contract.Sequence
                      [ refs."definitions.UniquePath-2", { _ | Dyn } ],
                    std.contract.Sequence
                      [ refs."definitions.YTT-2", { _ | Dyn } ],
                    std.contract.Sequence
                      [ refs."definitions.Let-2", { _ | Dyn } ],
                    std.contract.Sequence
                      [ refs."definitions.UseEncoding-2", { _ | Dyn } ],
                    std.contract.Sequence
                      [ refs."definitions.InvokeFragment-2", { _ | Dyn } ]
                  ]
              )
              | doc "A list of child Transforms to be executed in parallel"
              | optional,
            name | String | doc "The transform name" | optional,
            onConflict
              | refs."definitions.ConflictResolution"
              | String
              | optional,
            ..
          },
      "definitions.Combo-2" =
        std.contract.Sequence
            [
              refs."definitions.Combo-1",
              { type | std.contract.Equal "Combo" | optional, .. }
            ],
      "definitions.ConflictResolution" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [|
                'NWayDiff,
                'FavorForeign,
                'FavorOwn,
                'Append,
                'UseLast,
                'UseFirst,
                'Fail
              |]
            ],
      "definitions.DependsOn" =
        {
            name
              | js2n.string.MinLength 1
              | js2n.string.Matches "^$|^[a-z][a-z0-9A-Z]*$"
              | doc "The options name"
              | optional,
            value
              | std.contract.any_of
                [ js2n.Null, Bool, Number, String, { _ | Dyn }, Array Dyn ]
              | doc "The desired options value to compare against"
              | optional,
            ..
          },
      "definitions.DerivedSymbol" =
        {
            expression | refs."definitions.Expression" | String | optional,
            name
              | js2n.string.MinLength 1
              | js2n.string.Matches "^$|^[a-z][a-z0-9A-Z]*$"
              | doc "The name under which the new symbol will be added"
              | optional,
            ..
          },
      "definitions.Exclude-1" =
        {
            condition | refs."definitions.Expression" | String | optional,
            name | String | doc "The transform name" | optional,
            patterns
              | Array (
                std.contract.Sequence
                  [ js2n.string.MinLength 1, js2n.string.Matches "^$|^[^/].*$" ]
              )
              | doc "The path patterns used to filter which files to exclude"
              | optional,
            ..
          },
      "definitions.Exclude-2" =
        std.contract.Sequence
            [
              refs."definitions.Exclude-1",
              { type | std.contract.Equal "Exclude", .. }
            ],
      "definitions.Expression" = String,
      "definitions.Include-1" =
        {
            condition | refs."definitions.Expression" | String | optional,
            name | String | doc "The transform name" | optional,
            patterns
              | Array (
                std.contract.Sequence
                  [ js2n.string.MinLength 1, js2n.string.Matches "^$|^[^/].*$" ]
              )
              | doc "The path patterns used to filter which files to include"
              | optional,
            ..
          },
      "definitions.Include-2" =
        std.contract.Sequence
            [
              refs."definitions.Include-1",
              { type | std.contract.Equal "Include", .. }
            ],
      "definitions.InvokeFragment-1" =
        {
            anchor | js2n.string.Matches "^$|^[^/]$|^[^/](.+)[^/]$" | optional,
            condition | refs."definitions.Expression" | String | optional,
            "let"
              | Array (
                std.contract.Sequence
                  [ refs."definitions.DerivedSymbol", { _ | Dyn } ]
              )
              | optional,
            name | String | doc "The transform name" | optional,
            reference
              | js2n.string.MinLength 1
              | js2n.string.Matches "^[a-z0-9]([a-z0-9-]*[a-z0-9])?$"
              | optional,
            ..
          },
      "definitions.InvokeFragment-2" =
        std.contract.Sequence
            [
              refs."definitions.InvokeFragment-1",
              { type | std.contract.Equal "InvokeFragment", .. }
            ],
      "definitions.Let-1" =
        {
            condition | refs."definitions.Expression" | String | optional,
            "in"
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [ refs."definitions.Loop-2", { _ | Dyn } ],
                  std.contract.Sequence
                    [ refs."definitions.Chain-2", { _ | Dyn } ],
                  std.contract.Sequence
                    [ refs."definitions.Provenance-2", { _ | Dyn } ],
                  std.contract.Sequence
                    [ refs."definitions.Exclude-2", { _ | Dyn } ],
                  std.contract.Sequence
                    [ refs."definitions.Include-2", { _ | Dyn } ],
                  std.contract.Sequence
                    [ refs."definitions.Combo-2", { _ | Dyn } ],
                  std.contract.Sequence
                    [ refs."definitions.ReplaceText-2", { _ | Dyn } ],
                  std.contract.Sequence
                    [ refs."definitions.InvokeFragment-2", { _ | Dyn } ],
                  std.contract.Sequence
                    [ refs."definitions.Merge-2", { _ | Dyn } ],
                  std.contract.Sequence
                    [ refs."definitions.OpenRewriteRecipe-2", { _ | Dyn } ],
                  std.contract.Sequence
                    [ refs."definitions.RewritePath-2", { _ | Dyn } ],
                  std.contract.Sequence
                    [ refs."definitions.UniquePath-2", { _ | Dyn } ],
                  std.contract.Sequence
                    [ refs."definitions.YTT-2", { _ | Dyn } ],
                  std.contract.Sequence
                    [ refs."definitions.Let-2", { _ | Dyn } ],
                  std.contract.Sequence
                    [ refs."definitions.UseEncoding-2", { _ | Dyn } ],
                  std.contract.Sequence
                    [ refs."definitions.InvokeFragment-2", { _ | Dyn } ]
                ]
              | optional,
            name | String | doc "The transform name" | optional,
            noShadow
              | Bool
              | doc "Whether shadowing should be turned off"
              | optional,
            symbols
              | Array (
                std.contract.Sequence
                  [ refs."definitions.DerivedSymbol", { _ | Dyn } ]
              )
              | doc "A list of additional variables and their values"
              | optional,
            ..
          },
      "definitions.Let-2" =
        std.contract.Sequence
            [
              refs."definitions.Let-1",
              { type | std.contract.Equal "Let", .. }
            ],
      "definitions.Loop-1" =
        {
            condition | refs."definitions.Expression" | String | optional,
            doAsChain
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [ refs."definitions.Loop-2", { _ | Dyn } ],
                  std.contract.Sequence
                    [ refs."definitions.Chain-2", { _ | Dyn } ],
                  std.contract.Sequence
                    [ refs."definitions.Provenance-2", { _ | Dyn } ],
                  std.contract.Sequence
                    [ refs."definitions.Exclude-2", { _ | Dyn } ],
                  std.contract.Sequence
                    [ refs."definitions.Include-2", { _ | Dyn } ],
                  std.contract.Sequence
                    [ refs."definitions.Combo-2", { _ | Dyn } ],
                  std.contract.Sequence
                    [ refs."definitions.ReplaceText-2", { _ | Dyn } ],
                  std.contract.Sequence
                    [ refs."definitions.InvokeFragment-2", { _ | Dyn } ],
                  std.contract.Sequence
                    [ refs."definitions.Merge-2", { _ | Dyn } ],
                  std.contract.Sequence
                    [ refs."definitions.OpenRewriteRecipe-2", { _ | Dyn } ],
                  std.contract.Sequence
                    [ refs."definitions.RewritePath-2", { _ | Dyn } ],
                  std.contract.Sequence
                    [ refs."definitions.UniquePath-2", { _ | Dyn } ],
                  std.contract.Sequence
                    [ refs."definitions.YTT-2", { _ | Dyn } ],
                  std.contract.Sequence
                    [ refs."definitions.Let-2", { _ | Dyn } ],
                  std.contract.Sequence
                    [ refs."definitions.UseEncoding-2", { _ | Dyn } ],
                  std.contract.Sequence
                    [ refs."definitions.InvokeFragment-2", { _ | Dyn } ]
                ]
              | optional,
            doAsMerge
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [ refs."definitions.Loop-2", { _ | Dyn } ],
                  std.contract.Sequence
                    [ refs."definitions.Chain-2", { _ | Dyn } ],
                  std.contract.Sequence
                    [ refs."definitions.Provenance-2", { _ | Dyn } ],
                  std.contract.Sequence
                    [ refs."definitions.Exclude-2", { _ | Dyn } ],
                  std.contract.Sequence
                    [ refs."definitions.Include-2", { _ | Dyn } ],
                  std.contract.Sequence
                    [ refs."definitions.Combo-2", { _ | Dyn } ],
                  std.contract.Sequence
                    [ refs."definitions.ReplaceText-2", { _ | Dyn } ],
                  std.contract.Sequence
                    [ refs."definitions.InvokeFragment-2", { _ | Dyn } ],
                  std.contract.Sequence
                    [ refs."definitions.Merge-2", { _ | Dyn } ],
                  std.contract.Sequence
                    [ refs."definitions.OpenRewriteRecipe-2", { _ | Dyn } ],
                  std.contract.Sequence
                    [ refs."definitions.RewritePath-2", { _ | Dyn } ],
                  std.contract.Sequence
                    [ refs."definitions.UniquePath-2", { _ | Dyn } ],
                  std.contract.Sequence
                    [ refs."definitions.YTT-2", { _ | Dyn } ],
                  std.contract.Sequence
                    [ refs."definitions.Let-2", { _ | Dyn } ],
                  std.contract.Sequence
                    [ refs."definitions.UseEncoding-2", { _ | Dyn } ],
                  std.contract.Sequence
                    [ refs."definitions.InvokeFragment-2", { _ | Dyn } ]
                ]
              | optional,
            index
              | js2n.string.Matches "^$|^[a-z][a-z0-9A-Z]*$"
              | doc "The variable's name to be assigned to the index of the current element on each iteration"
              | optional,
            name | String | doc "The transform name" | optional,
            on | refs."definitions.Expression" | String | optional,
            var
              | js2n.string.Matches "^$|^[a-z][a-z0-9A-Z]*$"
              | doc "The name of the variable to be assigned to the current element on each iteration"
              | optional,
            ..
          },
      "definitions.Loop-2" =
        std.contract.Sequence
            [
              refs."definitions.Loop-1",
              { type | std.contract.Equal "Loop", .. }
            ],
      "definitions.Merge-1" =
        {
            condition | refs."definitions.Expression" | String | optional,
            name | String | doc "The transform name" | optional,
            sources
              | Array (
                std.contract.any_of
                  [
                    std.contract.Sequence
                      [ refs."definitions.Loop-2", { _ | Dyn } ],
                    std.contract.Sequence
                      [ refs."definitions.Chain-2", { _ | Dyn } ],
                    std.contract.Sequence
                      [ refs."definitions.Provenance-2", { _ | Dyn } ],
                    std.contract.Sequence
                      [ refs."definitions.Exclude-2", { _ | Dyn } ],
                    std.contract.Sequence
                      [ refs."definitions.Include-2", { _ | Dyn } ],
                    std.contract.Sequence
                      [ refs."definitions.Combo-2", { _ | Dyn } ],
                    std.contract.Sequence
                      [ refs."definitions.ReplaceText-2", { _ | Dyn } ],
                    std.contract.Sequence
                      [ refs."definitions.InvokeFragment-2", { _ | Dyn } ],
                    std.contract.Sequence
                      [ refs."definitions.Merge-2", { _ | Dyn } ],
                    std.contract.Sequence
                      [ refs."definitions.OpenRewriteRecipe-2", { _ | Dyn } ],
                    std.contract.Sequence
                      [ refs."definitions.RewritePath-2", { _ | Dyn } ],
                    std.contract.Sequence
                      [ refs."definitions.UniquePath-2", { _ | Dyn } ],
                    std.contract.Sequence
                      [ refs."definitions.YTT-2", { _ | Dyn } ],
                    std.contract.Sequence
                      [ refs."definitions.Let-2", { _ | Dyn } ],
                    std.contract.Sequence
                      [ refs."definitions.UseEncoding-2", { _ | Dyn } ],
                    std.contract.Sequence
                      [ refs."definitions.InvokeFragment-2", { _ | Dyn } ]
                  ]
              )
              | doc "A list of child Transforms to be executed in parallel"
              | optional,
            ..
          },
      "definitions.Merge-2" =
        std.contract.Sequence
            [
              refs."definitions.Merge-1",
              { type | std.contract.Equal "Merge", .. }
            ],
      "definitions.OpenRewriteRecipe-1" =
        {
            condition | refs."definitions.Expression" | String | optional,
            name | String | doc "The transform name" | optional,
            options
              | { _ | Dyn }
              | doc "Keys and values that depend on the class of the recipe"
              | optional,
            parseOrFail | Bool | optional,
            recipe
              | js2n.string.Matches
                "^[a-zA-Z_$][a-zA-Z\\d_$]*(?:\\.[a-zA-Z_$][a-zA-Z\\d_$]*)*$"
              | doc "Full qualified classname of the recipe"
              | optional,
            ..
          },
      "definitions.OpenRewriteRecipe-2" =
        std.contract.Sequence
            [
              refs."definitions.OpenRewriteRecipe-1",
              { type | std.contract.Equal "OpenRewriteRecipe", .. }
            ],
      "definitions.Pattern" = String,
      "definitions.Provenance-1" =
        {
            condition | refs."definitions.Expression" | String | optional,
            name | String | doc "The transform name" | optional,
            ..
          },
      "definitions.Provenance-2" =
        std.contract.Sequence
            [
              refs."definitions.Provenance-1",
              { type | std.contract.Equal "Provenance", .. }
            ],
      "definitions.ReplaceText-1" =
        {
            condition | refs."definitions.Expression" | String | optional,
            name | String | doc "The transform name" | optional,
            regex
              | {
                pattern | refs."definitions.Pattern" | String | optional,
                with | refs."definitions.Expression" | String | optional,
                ..
              }
              | doc "The replacement rule using a single regular expression"
              | optional,
            substitutions
              | Array
                {
                  text
                    | js2n.string.MinLength 1
                    | doc "The text that will be replaced"
                    | optional,
                  with | refs."definitions.Expression" | String | optional,
                  ..
                }
              | doc "The replacement rules using literal text tokens"
              | optional,
            ..
          },
      "definitions.ReplaceText-2" =
        std.contract.Sequence
            [
              refs."definitions.ReplaceText-1",
              { type | std.contract.Equal "ReplaceText", .. }
            ],
      "definitions.RewritePath-1" =
        {
            condition | refs."definitions.Expression" | String | optional,
            matchOrFail
              | Bool
              | doc "Whether an error should occur if the regex doesn't match"
              | optional,
            name | String | doc "The transform name" | optional,
            regex | refs."definitions.Pattern" | String | optional,
            rewriteTo | refs."definitions.Expression" | String | optional,
            ..
          },
      "definitions.RewritePath-2" =
        std.contract.Sequence
            [
              refs."definitions.RewritePath-1",
              { type | std.contract.Equal "RewritePath", .. }
            ],
      "definitions.UniquePath-1" =
        {
            condition | refs."definitions.Expression" | String | optional,
            name | String | doc "The transform name" | optional,
            strategy
              | refs."definitions.ConflictResolution"
              | String
              | optional,
            ..
          },
      "definitions.UniquePath-2" =
        std.contract.Sequence
            [
              refs."definitions.UniquePath-1",
              { type | std.contract.Equal "UniquePath", .. }
            ],
      "definitions.UseEncoding-1" =
        {
            condition | refs."definitions.Expression" | String | optional,
            encoding
              | { _ | Dyn }
              | doc "The encuding to use, as recognized by the java java.nio.charset.Charset class"
              | optional,
            name | String | doc "The transform name" | optional,
            ..
          },
      "definitions.UseEncoding-2" =
        std.contract.Sequence
            [
              refs."definitions.UseEncoding-1",
              { type | std.contract.Equal "UseEncoding", .. }
            ],
      "definitions.YTT-1" =
        {
            allowList
              | Array (
                std.contract.Sequence [ refs."definitions.Pattern", String ]
              )
              | doc "A list of variable names that are allowed to be passed to YTT"
              | optional,
            condition | refs."definitions.Expression" | String | optional,
            denyList
              | Array (
                std.contract.Sequence [ refs."definitions.Pattern", String ]
              )
              | doc "A list of variable names that are denied from being passed to YTT"
              | optional,
            extraArgs
              | Array (
                std.contract.Sequence [ refs."definitions.Expression", String ]
              )
              | doc "A list of SpEL expressions whose results are additional command line arguments"
              | optional,
            name | String | doc "The transform name" | optional,
            ..
          },
      "definitions.YTT-2" =
        std.contract.Sequence
            [
              refs."definitions.YTT-1",
              { type | std.contract.Equal "YTT", .. }
            ],
    }
    in
  {
      accelerator
        | {
          description | String | doc "A more detailed description" | optional,
          displayName | String | doc "A human-readable name" | optional,
          iconUrl | String | doc "A URL pointing to an icon image" | optional,
          imports
            | Array
              {
                expose
                  | Array
                    {
                      as
                        | js2n.string.MinLength 1
                        | js2n.string.Matches "^$|^[a-z][a-z0-9A-Z]*$"
                        | doc "The alias to use as the name of the option"
                        | optional,
                      dependsOn | refs."definitions.DependsOn" | optional,
                      name
                        | js2n.string.MinLength 1
                        | js2n.string.Matches "^\\*$|^$|^[a-z][a-z0-9A-Z]*$"
                        | doc "The original name of the option"
                        | optional,
                      ..
                    }
                  | doc "The list of fragment options to make available as accelerator options"
                  | optional,
                exposeTypes
                  | Array
                    {
                      as
                        | js2n.string.MinLength 1
                        | js2n.string.Matches "^$|^[A-Z][a-z0-9A-Z]*$"
                        | doc "The alias to use as the name of the type"
                        | optional,
                      name
                        | js2n.string.MinLength 1
                        | js2n.string.Matches "^\\*$|^$|^[A-Z][a-z0-9A-Z]*$"
                        | doc "The original name of the type"
                        | optional,
                      ..
                    }
                  | doc "The list of fragment types to make available as accelerator types"
                  | optional,
                name
                  | js2n.string.MinLength 1
                  | doc "The name of the fragment to import"
                  | optional,
                ..
              }
            | doc "The list of fragment to import"
            | optional,
          options
            | Array (
              std.contract.Sequence
                [ refs."definitions.AcceleratorOption", { _ | Dyn } ]
            )
            | doc "The list of options passed to the UI to create input text boxes"
            | optional,
          tags
            | Array String
            | doc "A list of tags used to filter accelerators"
            | optional,
          types
            | Array
              {
                name
                  | js2n.string.MinLength 1
                  | js2n.string.Matches "^$|^[A-Z][a-z0-9A-Z]*$"
                  | doc "The capitalized name of this custom type"
                  | optional,
                struct
                  | js2n.array.MinItems 1
                  | Array (
                    std.contract.Sequence
                      [ refs."definitions.AcceleratorOption", { _ | Dyn } ]
                  )
                  | doc "A sequence of option definitions"
                  | optional,
                ..
              }
            | doc "The definitions of custom types"
            | optional,
          ..
        }
        | doc "The metadata (non-behavioral) part of an App Accelerator's accelerator.yaml file"
        | optional,
      engine
        | std.contract.any_of
          [
            std.contract.Sequence [ refs."definitions.Loop-2", { _ | Dyn } ],
            std.contract.Sequence [ refs."definitions.Chain-2", { _ | Dyn } ],
            std.contract.Sequence
              [ refs."definitions.Provenance-2", { _ | Dyn } ],
            std.contract.Sequence [ refs."definitions.Exclude-2", { _ | Dyn } ],
            std.contract.Sequence [ refs."definitions.Include-2", { _ | Dyn } ],
            std.contract.Sequence [ refs."definitions.Combo-2", { _ | Dyn } ],
            std.contract.Sequence
              [ refs."definitions.ReplaceText-2", { _ | Dyn } ],
            std.contract.Sequence
              [ refs."definitions.InvokeFragment-2", { _ | Dyn } ],
            std.contract.Sequence [ refs."definitions.Merge-2", { _ | Dyn } ],
            std.contract.Sequence
              [ refs."definitions.OpenRewriteRecipe-2", { _ | Dyn } ],
            std.contract.Sequence
              [ refs."definitions.RewritePath-2", { _ | Dyn } ],
            std.contract.Sequence
              [ refs."definitions.UniquePath-2", { _ | Dyn } ],
            std.contract.Sequence [ refs."definitions.YTT-2", { _ | Dyn } ],
            std.contract.Sequence [ refs."definitions.Let-2", { _ | Dyn } ],
            std.contract.Sequence
              [ refs."definitions.UseEncoding-2", { _ | Dyn } ],
            std.contract.Sequence
              [ refs."definitions.InvokeFragment-2", { _ | Dyn } ]
          ]
        | optional,
      ..
    }