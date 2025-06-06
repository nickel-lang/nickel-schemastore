# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.AnyValue" = js2n.Always,
      "definitions.ImportCfg" =
        {
            rev | js2n.Nullable String | optional,
            subfolder | js2n.Nullable String | optional,
            uri | String,
            ..
          },
      "definitions.LabelValueCfg" =
        {
            label | String | doc "display of the value (in select)",
            value | refs."definitions.AnyValue" | doc "the value",
            ..
          },
      "definitions.ScriptCfg" =
        {
            cmd | js2n.Nullable String | doc "command to execute" | optional,
            default_confirm_answer
              | js2n.Nullable String
              | doc "default answer for confirmation of execution"
              | optional,
            message
              | js2n.Nullable String
              | doc "message to display"
              | optional,
            ..
          },
      "definitions.VariableCfg" =
        {
            ask
              | js2n.Nullable String
              | doc "sentence to ask the value (default to the name on variable)"
              | optional,
            default_value
              | js2n.Nullable refs."definitions.AnyValue"
              | doc "optionnal default value"
              | optional,
            hidden
              | js2n.Nullable String
              | doc "is the variable hidden to the user (could be usefull to cache shared variable/data)"
              | optional,
            name | String | doc "name of variable used in the template",
            select_in_values
              | js2n.Nullable
                (std.contract.Sequence
                  [
                    refs."definitions.VariableValuesCfg",
                    std.contract.any_of [ Array Dyn, String ]
                  ])
              | doc "if non-empty then the value should selected into the list of value"
              | optional,
            ..
          },
      "definitions.VariableValuesCfg" =
        std.contract.any_of
            [
              js2n.array.ArrayOf
                (std.contract.Sequence
                  [ refs."definitions.LabelValueCfg", { _ | Dyn } ]),
              js2n.array.ArrayOf refs."definitions.AnyValue",
              String
            ],
    }
    in
  {
      ignores
        | Array String
        | doc "list of path from the current template to ignore"
        | optional,
      imports
        | Array refs."definitions.ImportCfg"
        | doc "list of template to import and to apply as part of this template"
        | optional,
      scripts
        | Array refs."definitions.ScriptCfg"
        | doc "list of the scripts to apply at end of generation"
        | optional,
      use_template_dir
        | Bool
        | doc "set to true if the template content is under a `template` folder (not mixed with metadata)"
        | optional,
      variables
        | Array refs."definitions.VariableCfg"
        | doc "list of variables/parameters of the template"
        | optional,
    }