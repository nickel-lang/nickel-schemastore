# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.command" =
        {
            aliases
              | std.contract.any_of [ String, Array Dyn ]
              | doc "Alternate command names a user may use instead."
              | optional,
            description
              | String
              | doc "A user-friendly description for a command."
              | optional,
            permission
              | String
              | doc "The permission required to use the command."
              | optional,
            permission-message
              | String
              | doc "A no-permission message."
              | optional,
            usage
              | String
              | doc "A short description of how to use this command."
              | optional,
            ..
          },
      "definitions.default-permission" =
        js2n.Enum [ true, false, "op", "not op" ],
      "definitions.permission" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                children
                  | std.contract.any_of
                    [
                      {
                        _ | std.contract.Sequence
                          [
                            js2n.Always,
                            std.contract.any_of [ Bool, { _ | Dyn } ]
                          ]
                      },
                      Array String
                    ]
                  | doc "Allows other permissions to be set as a relation to the parent permission."
                  | optional,
                "default"
                  | refs."definitions.default-permission"
                  | std.contract.any_of [ Bool, String ]
                  | doc "The default state for the permission."
                  | optional,
                description
                  | String
                  | doc "A short description of what this permission allows."
                  | optional,
                ..
              },
              Array Dyn
            ],
      "definitions.plugin-name" = js2n.string.Matches "^[A-Za-z0-9_\\.-]+$",
    }
    in
  {
      api-version
        | std.contract.any_of [ Number, String ]
        | doc "Gives the API version which this plugin is designed to support."
        | optional,
      author | String | doc "The plugin author." | optional,
      authors | Array String | doc "The plugin contributors." | optional,
      awareness
        | Array (js2n.string.Matches "^!@.+$")
        | doc "The concepts that the plugin acknowledges."
        | optional,
      commands
        | { _ | refs."definitions.command" }
        | doc "The commands the plugin will register"
        | optional,
      database
        | Bool
        | doc "Set to true if this plugin uses a database."
        | optional,
      default-permission
        | refs."definitions.default-permission"
        | doc "Gives the default default state of permissions registered for the plugin."
        | optional,
      depend
        | Array refs."definitions.plugin-name"
        | doc "Other required plugins."
        | optional,
      description | String | doc "Human readable plugin summary." | optional,
      libraries
        | Array (
          js2n.string.Matches
            "([^: ]+):([^: ]+)(:([^: ]*)(:([^: ]+))?)?:([^: ]+)"
        )
        | doc "A list of libraries the server should download and supply to the plugin when loading it."
        | optional,
      load
        | std.enum.TagOrString
        | [| 'POSTWORLD, 'STARTUP |]
        | doc "The phase of server-startup this plugin will load during."
        | optional,
      loadbefore
        | Array refs."definitions.plugin-name"
        | doc "A list of plugins should be loaded after this plugin."
        | optional,
      main
        | js2n.string.Matches
          "^(?!org\\.bukkit\\.)([a-zA-Z_$][a-zA-Z\\d_$]*\\.)*[a-zA-Z_$][a-zA-Z\\d_$]*$"
        | doc "The plugin's initial class file.",
      name | refs."definitions.plugin-name" | doc "The unique name of plugin.",
      permissions
        | {
          _ | std.contract.Sequence
            [ refs."definitions.permission", { _ | Dyn } ]
        }
        | doc "The permissions the plugin will register"
        | optional,
      prefix
        | String
        | doc "The token to prefix plugin log entries."
        | optional,
      softdepend
        | Array refs."definitions.plugin-name"
        | doc "Other plugins that add functionality."
        | optional,
      version
        | std.contract.any_of [ Number, String ]
        | doc "A plugin revision identifier.",
      website | String | doc "The URL to the plugin's site" | optional,
      ..
    }