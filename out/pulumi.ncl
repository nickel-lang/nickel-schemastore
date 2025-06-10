# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      author
        | js2n.Nullable String
        | doc "Author is an optional author that created this project."
        | optional,
      backend
        | js2n.Nullable
          {
            url
              | String
              | doc "URL is optional field to explicitly set backend url"
              | optional,
          }
        | doc "Backend of the project."
        | optional,
      config
        | js2n.Nullable
          (js2n.record.Record
            {
              additional =
                'Some
                    (js2n.OneOf
                      [
                        String,
                        std.number.Integer,
                        Bool,
                        Array Dyn,
                        std.contract.any_of
                          [
                            js2n.Null,
                            Bool,
                            { _ | Dyn },
                            Array Dyn,
                            Number,
                            String
                          ]
                      ]),
              patterns = {},
              properties = { secret = Bool, },
              required = {},
            })
        | doc "A map of configuration keys to their types. Using config directory location relative to the location of Pulumi.yaml is a deprecated use of this key. Use stackConfigDir instead."
        | optional,
      description
        | js2n.Nullable String
        | doc "Description of the project."
        | optional,
      license
        | js2n.Nullable String
        | doc "License is the optional license governing this project's usage."
        | optional,
      main
        | js2n.Nullable String
        | doc "Path to the Pulumi program. The default is the working directory."
        | optional,
      name
        | js2n.string.MinLength 1
        | doc "Name of the project containing alphanumeric characters, hyphens, underscores, and periods.",
      options
        | js2n.Nullable
          {
            refresh
              | std.contract.Equal "always"
              | doc "Set to \"always\" to refresh the state before performing a Pulumi operation."
              | optional,
          }
        | doc "Additional project options."
        | optional,
      plugins
        | {
          analyzers
            | Array (
              std.contract.any_of
                [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
            )
            | doc "Plugins for policy analyzers."
            | optional,
          languages
            | Array (
              std.contract.any_of
                [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
            )
            | doc "Plugins for languages."
            | optional,
          providers
            | Array (
              std.contract.any_of
                [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
            )
            | doc "Plugins for resource providers."
            | optional,
          ..
        }
        | doc "Override for the plugin selection. Intended for use in developing pulumi plugins."
        | optional,
      runtime
        | std.contract.any_of
          [
            js2n.string.MinLength 1,
            {
              name | js2n.string.MinLength 1 | optional,
              options | {  .. } | optional,
            }
          ],
      stackConfigDir
        | js2n.Nullable String
        | doc "Config directory location relative to the location of Pulumi.yaml."
        | optional,
      template
        | js2n.Nullable
          {
            config
              | js2n.Nullable
                ({
                  _ | {
                    "default"
                      | std.contract.any_of
                        [
                          js2n.Null,
                          Bool,
                          Number,
                          String,
                          { _ | Dyn },
                          Array Dyn
                        ]
                      | doc "Default value of the config."
                      | optional,
                    description
                      | js2n.Nullable String
                      | doc "Description of the config."
                      | optional,
                    secret
                      | js2n.Nullable Bool
                      | doc "Boolean indicating if the configuration is labeled as a secret."
                      | optional,
                    ..
                  }
                })
              | doc "Config to apply to each stack in the project."
              | optional,
            description
              | js2n.Nullable String
              | doc "Description of the template."
              | optional,
            important
              | js2n.Nullable Bool
              | doc "Important indicates the template is important and should be listed by default."
              | optional,
            quickstart
              | js2n.Nullable String
              | doc "Quickstart contains optional text to be displayed after template creation."
              | optional,
          }
        | doc "ProjectTemplate is a Pulumi project template manifest."
        | optional,
      website
        | js2n.Nullable String
        | doc "Website is an optional website for additional info about this project."
        | optional,
      ..
    }