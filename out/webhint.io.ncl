# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.browserslist" =
        std.contract.any_of
            [
              std.contract.Sequence [ js2n.array.UniqueItems, Array String ],
              String
            ],
      "definitions.connector" =
        std.contract.any_of
            [
              {
                name | String | doc "The name of the connector to use",
                options
                  | { _ | Dyn }
                  | doc "The options to pass to the connector"
                  | optional,
                ..
              },
              String
            ],
      "definitions.errorlevelnumber" = js2n.Enum [ 0, 1, 2, 3, 4, 5 ],
      "definitions.errorlevelstring" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [| '"default", 'error, 'warning, 'information, 'hint, 'off |]
            ],
      "definitions.extends" =
        std.contract.Sequence
            [
              js2n.array.UniqueItems,
              Array (js2n.string.Matches "^(?!all$).*$")
            ],
      "definitions.formatters" =
        std.contract.Sequence [ js2n.array.UniqueItems, Array String ],
      "definitions.hintconfig" =
        std.contract.Sequence
            [
              js2n.array.MaxItems 2,
              js2n.array.MinItems 1,
              js2n.array.UniqueItems,
              js2n.array.Items
                [
                  std.contract.any_of
                    [
                      std.contract.Sequence
                        [ refs."definitions.errorlevelstring", String ],
                      std.contract.Sequence
                        [ refs."definitions.errorlevelnumber", Number ]
                    ],
                  std.contract.any_of [ { _ | Dyn }, Array Dyn ]
                ] js2n.Always
            ],
      "definitions.hintobject" =
        js2n.record.Record
            {
              additional = 'Some Dyn,
              patterns =
                {
                    "^.+$" =
                      std.contract.any_of
                          [
                            std.contract.Sequence
                              [ refs."definitions.errorlevelstring", String ],
                            std.contract.Sequence
                              [ refs."definitions.errorlevelnumber", Number ],
                            std.contract.Sequence
                              [ refs."definitions.hintconfig", Array Dyn ]
                          ],
                  },
              properties = {},
              required = {},
            },
      "definitions.hints" =
        std.contract.Sequence
            [
              std.contract.any_of
                [
                  { _ | Dyn },
                  std.contract.Sequence
                    [ js2n.array.MinItems 1, js2n.array.UniqueItems ]
                ],
              std.contract.any_of
                [
                  std.contract.Sequence
                    [ refs."definitions.hintobject", { _ | Dyn } ],
                  std.contract.Sequence
                    [
                      js2n.array.MinItems 1,
                      Array (
                        std.contract.any_of
                          [
                            String,
                            std.contract.Sequence
                              [
                                js2n.array.MaxItems 2,
                                js2n.array.MinItems 2,
                                js2n.array.Items [ String, { _ | Dyn } ]
                                  js2n.Always
                              ]
                          ]
                      )
                    ]
                ]
            ],
      "definitions.hintsTimeout" = Number,
      "definitions.ignoredUrls" =
        std.contract.Sequence
            [
              js2n.array.UniqueItems,
              Array
                {
                  domain | String | doc "Regex for the domain to ignore",
                  hints | js2n.array.UniqueItems | Array String,
                  ..
                }
            ],
      "definitions.language" = String,
      "definitions.parsers" =
        std.contract.Sequence [ js2n.array.UniqueItems, Array String ],
    }
    in
  std.contract.Sequence
      [
        std.contract.any_of
          [
            js2n.record.Required [ "connector", "hints" ],
            js2n.record.Required [ "extends" ]
          ],
        {
          browserslist | refs."definitions.browserslist" | optional,
          connector | refs."definitions.connector" | optional,
          extends | refs."definitions.extends" | Array Dyn | optional,
          formatters | refs."definitions.formatters" | Array Dyn | optional,
          hints
            | refs."definitions.hints"
            | std.contract.any_of [ { _ | Dyn }, Array Dyn ]
            | optional,
          hintsTimeout | refs."definitions.hintsTimeout" | optional,
          ignoredUrls | refs."definitions.ignoredUrls" | Array Dyn | optional,
          language | refs."definitions.language" | optional,
          parsers | refs."definitions.parsers" | Array Dyn | optional,
          severityThreshold | refs."definitions.errorlevelstring" | optional,
        }
      ]