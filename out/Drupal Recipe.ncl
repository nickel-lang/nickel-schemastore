# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      config
        | {
          actions
            | js2n.record.Record
              {
                additional =
                  'Some
                      {
                        cloneAs | String | optional,
                        create | { _ | Dyn } | optional,
                        createForEach | { _ | Dyn } | optional,
                        createForEachIfNotExists | { _ | Dyn } | optional,
                        createIfNotExists | { _ | Dyn } | optional,
                        set | { _ | Dyn } | optional,
                        setMultiple | Array Dyn | optional,
                        setThirdPartySetting | { _ | Dyn } | optional,
                        setThirdPartySettings | Array Dyn | optional,
                        simpleConfigUpdate | { _ | Dyn } | optional,
                        ..
                      },
                patterns =
                  {
                      "block.block.*" =
                        std.contract.any_of
                            [
                              js2n.Null,
                              Bool,
                              { _ | Dyn },
                              Array Dyn,
                              Number,
                              String
                            ],
                      "contact.form.*" =
                        std.contract.any_of
                            [
                              js2n.Null,
                              Bool,
                              { _ | Dyn },
                              Array Dyn,
                              Number,
                              String
                            ],
                      "core.entity_form_display.*.*.*" =
                        std.contract.any_of
                            [
                              js2n.Null,
                              Bool,
                              { _ | Dyn },
                              Array Dyn,
                              Number,
                              String
                            ],
                      "core.entity_view_display.*.*.*" =
                        std.contract.any_of
                            [
                              js2n.Null,
                              Bool,
                              { _ | Dyn },
                              Array Dyn,
                              Number,
                              String
                            ],
                      "editor.editor.*" =
                        std.contract.any_of
                            [
                              js2n.Null,
                              Bool,
                              { _ | Dyn },
                              Array Dyn,
                              Number,
                              String
                            ],
                      "field.field.*.*.*" =
                        std.contract.any_of
                            [
                              js2n.Null,
                              Bool,
                              { _ | Dyn },
                              Array Dyn,
                              Number,
                              String
                            ],
                      "field.storage.*.*" =
                        std.contract.any_of
                            [
                              js2n.Null,
                              Bool,
                              { _ | Dyn },
                              Array Dyn,
                              Number,
                              String
                            ],
                      "user.role.*" =
                        std.contract.any_of
                            [
                              js2n.Null,
                              Bool,
                              { _ | Dyn },
                              Array Dyn,
                              Number,
                              String
                            ],
                      "workflows.workflow.*" =
                        std.contract.any_of
                            [
                              js2n.Null,
                              Bool,
                              { _ | Dyn },
                              Array Dyn,
                              Number,
                              String
                            ],
                    },
                properties = {},
                required = {},
              }
            | doc "The key is the configuration object targeted and the value is the action to be performed. For each action additional properties can be provided."
            | optional,
          "import"
            | { _ | std.contract.any_of [ String, Array String ] }
            | doc "The key is the configuration provider and the value is the list of configuration names."
            | optional,
          ..
        }
        | optional,
      content
        | js2n.array.Items [ String ] js2n.Always
        | doc "The contents are stored in a directory relative to the recipe file."
        | optional,
      description | String,
      install | Array String | optional,
      name | String,
      recipes | Array String | optional,
      type | String,
      ..
    }