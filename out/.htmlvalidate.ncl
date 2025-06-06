# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      "$schema" | String | optional,
      elements
        | Array (std.contract.any_of [ { _ | Dyn }, String ])
        | doc "Array of modules, plugins or files to load element metadata from. Use <rootDir> to refer to the folder with the package.json file."
        | optional,
      extends
        | Array String
        | doc "Array of shareable or builtin configurations to extend."
        | optional,
      plugins
        | Array (std.contract.any_of [ { _ | Dyn }, String ])
        | doc "Array of plugins load. Use <rootDir> to refer to the folder with the package.json file."
        | optional,
      root
        | Bool
        | doc "If this is set to true no further configurations will be searched."
        | optional,
      rules
        | js2n.record.Record
          {
            additional = 'Some Dyn,
            patterns =
              {
                  ".*" =
                    std.contract.any_of
                        [
                          js2n.Enum [ 0, 1, 2, "off", "warn", "error" ],
                          std.contract.Sequence
                            [
                              js2n.array.MaxItems 1,
                              js2n.array.MinItems 1,
                              js2n.array.Items
                                [
                                  js2n.Enum [ 0, 1, 2, "off", "warn", "error" ]
                                ] js2n.Always
                            ],
                          std.contract.Sequence
                            [
                              js2n.array.MaxItems 2,
                              js2n.array.MinItems 2,
                              js2n.array.Items
                                [
                                  js2n.Enum [ 0, 1, 2, "off", "warn", "error" ],
                                  js2n.Always
                                ] js2n.Always
                            ]
                        ],
                },
            properties = {},
            required = {},
          }
        | doc "Enable/disable rules, set severity. Some rules have additional configuration like style or patterns to use."
        | optional,
      transform
        | {
          _ | std.contract.any_of
            [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
        }
        | doc "Object where key is regular expression to match filename and value is name of transformer or a function."
        | optional,
    }