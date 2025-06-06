# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.rule" =
        std.contract.Sequence
            [
              js2n.array.MaxItems 3,
              js2n.array.MinItems 2,
              js2n.array.Items
                [
                  js2n.Enum [ 0, 1, 2 ],
                  std.contract.Sequence
                    [ std.enum.TagOrString, [| 'never, 'always |] ],
                  std.contract.any_of
                    [ js2n.Null, Bool, Number, String, { _ | Dyn }, Array Dyn ]
                ] js2n.Never
            ],
    }
    in
  std.contract.any_of
      [
        js2n.Null,
        Bool,
        Number,
        String,
        {
          defaultIgnores
            | Bool
            | doc "Whether commitlint uses the default ignore rules"
            | optional,
          extends
            | std.contract.any_of [ Array String, String ]
            | doc "Resolvable ids to commitlint configurations to extend"
            | optional,
          formatter
            | String
            | doc "Resolvable id to package, from node_modules, which formats the output"
            | optional,
          helpUrl | String | doc "Custom URL to show upon failure" | optional,
          ignores
            | Array js2n.Always
            | doc "Additional commits to ignore, defined by ignore matchers"
            | optional,
          parserPreset
            | std.contract.any_of
              [
                String,
                {
                  name | String | optional,
                  parserOpts | js2n.Always | optional,
                  path | String | optional,
                }
              ]
            | doc "Resolvable id to conventional-changelog parser preset to import and use"
            | optional,
          plugins
            | Array String
            | doc "Resolvable ids of commitlint plugins from node_modules"
            | optional,
          rules
            | js2n.record.PropertyNames String
            | {
              _ | std.contract.Sequence [ refs."definitions.rule", Array Dyn ]
            }
            | doc "Rules to check against"
            | optional,
          ..
        },
        Array Dyn
      ]