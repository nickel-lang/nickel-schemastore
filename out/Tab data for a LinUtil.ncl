# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.string-property" =
        std.contract.Sequence
            [ js2n.string.MinLength 1, js2n.string.Matches "[^ ]" ],
    }
    in
  {
      data
        | js2n.array.MinItems 1
        | js2n.array.UniqueItems
        | Array
          {
            description
              | refs."definitions.string-property"
              | String
              | doc "Description of the tab entry"
              | optional,
            entries
              | js2n.array.MinItems 1
              | js2n.array.UniqueItems
              | Array
                {
                  description
                    | refs."definitions.string-property"
                    | String
                    | doc "Description of the tab entry"
                    | optional,
                  matches
                    | Bool
                    | doc "Whether to require the condition to match or not for an entry"
                    | optional,
                  name
                    | refs."definitions.string-property"
                    | String
                    | doc "The name of a tab entry"
                    | optional,
                  script
                    | refs."definitions.string-property"
                    | String
                    | doc "The script run of a tab entry"
                    | optional,
                  task_list
                    | refs."definitions.string-property"
                    | String
                    | doc "The task list of a tab entry"
                    | optional,
                }
              | doc "The entries of a tab entry"
              | optional,
            name
              | refs."definitions.string-property"
              | String
              | doc "The name of a tab entry"
              | optional,
            preconditions
              | js2n.array.MinItems 1
              | js2n.array.UniqueItems
              | Array
                {
                  data
                    | {
                      command_exists
                        | js2n.Null
                        | doc "The command pre-condition of a data"
                        | optional,
                      environment
                        | refs."definitions.string-property"
                        | String
                        | doc "The environment variable of a data"
                        | optional,
                      file
                        | refs."definitions.string-property"
                        | String
                        | doc "The file pre-condition of a data"
                        | optional,
                    }
                    | doc "The data of a tab precondition entry"
                    | optional,
                  matches
                    | Bool
                    | doc "Whether to require the condition to match or not for a precondition entry"
                    | optional,
                  values
                    | js2n.array.MinItems 1
                    | js2n.array.UniqueItems
                    | Array String
                    | doc "The values of a tab precondition entry"
                    | optional,
                }
              | doc "Preconditions of a tab entry"
              | optional,
            script
              | refs."definitions.string-property"
              | String
              | doc "The script run of a tab entry"
              | optional,
            task_list
              | refs."definitions.string-property"
              | String
              | doc "The task list of a tab entry"
              | optional,
          }
        | doc "The data of a tab",
      multi_selectable
        | Bool
        | doc "Whether the tab entries should be able to multi select"
        | optional,
      name
        | refs."definitions.string-property"
        | String
        | doc "The name of a tab",
    }