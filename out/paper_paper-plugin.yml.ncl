# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.dependency" =
        {
            join-classpath
              | Bool
              | doc "Whether this dependency's classpath should be joined by the plugin. Defaults to true"
              | optional,
            load
              | std.enum.TagOrString
              | [| 'OMIT, 'BEFORE, 'AFTER |]
              | doc "Where to load this dependency in relation to the plugin. Defaults to OMIT"
              | optional,
            required
              | Bool
              | doc "Whether this dependency is required for the plugin to load. Defaults to true"
              | optional,
          },
      "definitions.dependency-group" =
        {
            _ | std.contract.Sequence
              [ refs."definitions.dependency", { _ | Dyn } ]
          },
      "definitions.perm-default" =
        std.contract.Sequence
            [ std.enum.TagOrString, [| '"not op", 'op, '"false", '"true" |] ],
      "definitions.permission" =
        {
            children
              | std.contract.any_of
                [
                  Array String,
                  {
                    _ | std.contract.any_of
                      [
                        Bool,
                        std.contract.Sequence [ js2n.Always, { _ | Dyn } ]
                      ]
                  }
                ]
              | optional,
            "default"
              | refs."definitions.perm-default"
              | String
              | doc "Default for this permission"
              | optional,
            description | String | optional,
          },
      "definitions.plugin-class" =
        js2n.string.Matches
            "^(?!io\\.papermc\\.)([a-zA-Z_$][a-zA-Z\\d_$]*\\.)*[a-zA-Z_$][a-zA-Z\\d_$]*$",
      "definitions.plugin-name" = js2n.string.Matches "^[A-Za-z0-9_\\.-]+$",
    }
    in
  {
      api-version
        | js2n.string.Matches "^1\\.\\d{2}(\\.\\d{1,2})?$"
        | doc "The API version of the plugin",
      authors | Array String | doc "Main authors of the plugin" | optional,
      bootstrapper
        | refs."definitions.plugin-class"
        | doc "The main class of the custom bootstrapper for the plugin"
        | optional,
      contributors
        | Array String
        | doc "Other contributors to the plugin"
        | optional,
      default-perm
        | refs."definitions.perm-default"
        | doc "Default value for permissions. Defaults to 'op'"
        | optional,
      dependencies
        | {
          bootstrap
            | refs."definitions.dependency-group"
            | doc "Dependencies for the plugin bootstrapper"
            | optional,
          server
            | refs."definitions.dependency-group"
            | doc "Dependencies for the server"
            | optional,
        }
        | doc "Plugin dependencies."
        | optional,
      description | String | doc "The description of the plugin" | optional,
      has-open-classloader
        | Bool
        | doc "Whether the plugin should have its classloader public to other paper plugins"
        | optional,
      load
        | std.enum.TagOrString
        | [| 'POSTWORLD, 'STARTUP |]
        | doc "When to load this plugin. Defaults to POSTWORLD."
        | optional,
      loader
        | refs."definitions.plugin-class"
        | doc "The main class of the custom plugin loader for the plugin"
        | optional,
      main
        | refs."definitions.plugin-class"
        | doc "The main class of the plugin",
      name | refs."definitions.plugin-name" | doc "The name of the plugin",
      permissions
        | std.contract.any_of
          [
            js2n.Null,
            Bool,
            Number,
            String,
            { _ | refs."definitions.permission" },
            Array Dyn
          ]
        | doc "Permissions for this plugin"
        | optional,
      prefix
        | String
        | doc "Log prefix for this plugin. Defaults to the plugin name"
        | optional,
      provides
        | js2n.array.UniqueItems
        | Array refs."definitions.plugin-name"
        | doc "Satisfies dependency requirements as this plugin. When resolving dependencies, if a plugin requires a plugin in this list, this plugin will satisfy it."
        | optional,
      version | String | doc "The version of the plugin",
      website | String | doc "Plugin website" | optional,
      ..
    }