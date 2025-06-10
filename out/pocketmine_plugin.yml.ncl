# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.PermissionChildren" =
        {
            _ | {
              children
                | js2n.Always
                | { _ | Dyn }
                | doc "The child permissions. Toggling the parent permission will toggle all child permissions too."
                | optional,
              "default"
                | js2n.Enum
                  [
                    "!admin",
                    "!op",
                    "!operator",
                    "admin",
                    false,
                    "false",
                    "isadmin",
                    "isop",
                    "isoperator",
                    "notadmin",
                    "notop",
                    "notoperator",
                    "op",
                    "operator",
                    true,
                    "true"
                  ]
                | doc "Indicates whether players have this permission by default."
                | optional,
              description
                | String
                | doc "Description of the permission"
                | optional,
              ..
            }
          },
    }
    in
  {
      api
        | std.contract.any_of [ Array String, String ]
        | doc "The PocketMine API version(s) supported by the plugin. The array should be minimized such that no two API versions.",
      author | String | doc "The author name" | optional,
      authors
        | Array String
        | doc "The author names, will be appended to `author` if both are present"
        | optional,
      commands
        | {
          _ | {
            aliases | Array String | doc "Aliases of the command" | optional,
            description
              | String
              | doc "Description of the command as shown in /help"
              | optional,
            permission
              | String
              | doc "Name of the permission to check for, or multiple permissions separated"
              | optional,
            permission-message
              | String
              | doc "Message to send to users if permission checks fail. Occurrences of <permission> are replaced with the `permission` property."
              | optional,
            usage | String | doc "Usage message of the command" | optional,
            ..
          }
        }
        | doc "The commands to be registered automatically. The keys are command name. Commands can also be dynamically registered with the server CommandMap."
        | optional,
      depend
        | std.contract.any_of
          [
            Array (js2n.string.Matches "^[A-Za-z0-9 _.-]+$"),
            js2n.string.Matches "^[A-Za-z0-9 _.-]+$"
          ]
        | doc "Plugin(s) in `depend` must be present and will be loaded BEFORE this plugin."
        | optional,
      description
        | String
        | doc "The detailed description of the plugin"
        | optional,
      extensions
        | std.contract.any_of
          [
            Array String,
            { _ | std.contract.any_of [ Array String, String ] },
            String
          ]
        | doc "Extension(s) required to load this plugin. Can be one extension name, a list of extension names or a mapping of extension name to version constraints."
        | optional,
      load
        | std.enum.TagOrString
        | [| 'STARTUP, 'POSTWORLD |]
        | doc "The point of loading the plugin, defaults to POSTWORLD"
        | optional,
      loadbefore
        | std.contract.any_of
          [
            Array (js2n.string.Matches "^[A-Za-z0-9 _.-]+$"),
            js2n.string.Matches "^[A-Za-z0-9 _.-]+$"
          ]
        | doc "Plugin(s) in `loadbefore` will be loaded AFTER this plugin if they are present."
        | optional,
      main
        | js2n.string.Matches "([A-Za-z_]\\w+\\\\)*([A-Za-z_]\\w+)"
        | doc "The fully-qualified name of the main class that extends PluginBase",
      mcpe-protocols
        | std.contract.any_of [ Array std.number.Integer, std.number.Integer ]
        | doc "The MCPE protocol versions supported by the plugin. If supported,"
        | optional,
      name
        | js2n.string.Matches "^[A-Za-z0-9 _.-]+$"
        | doc "Name of the plugin",
      permissions
        | refs."definitions.PermissionChildren"
        | doc "Permissions to be registered by this plugin automatically. Permissions can still be registered dynamically."
        | optional,
      prefix
        | String
        | doc "The plugin prefix used in the logger, defaults to plugin name"
        | optional,
      softdepend
        | std.contract.any_of
          [ Array (js2n.string.Matches "^[A-Za-z0-9 _.-]+$"), String ]
        | doc "Plugin(s) in `softdepend` will be loaded BEFORE this plugin if they are present, but nothing special happens if they are not present."
        | optional,
      version | String | doc "Plugin version",
      website | String | doc "The plugin's website" | optional,
      ..
    }