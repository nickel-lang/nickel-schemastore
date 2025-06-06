# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      _comment | String | doc "A comment to ignore" | optional,
      author | String | doc "The egg's author" | optional,
      config | { _ | Dyn } | doc "Object to store configuration" | optional,
      description | String | doc "The egg's description" | optional,
      docker_images
        | { _ | Dyn }
        | doc "Object containing key-value pairs of a pretty Docker image name and its URL"
        | optional,
      exported_at | String | optional,
      features | Array String | doc "A list of features to use" | optional,
      file_denylist | Array String | optional,
      meta | { _ | Dyn } | optional,
      name | String | doc "The egg's name" | optional,
      scripts
        | js2n.record.Record
          {
            additional = 'Some Dyn,
            patterns =
              {
                  "^[_a-zA-Z][a-zA-Z0-9_-]*$" =
                    {
                        container
                          | String
                          | doc "Container to run script in"
                          | optional,
                        entrypoint
                          | String
                          | doc "Entrypoint of script"
                          | optional,
                        ..
                      },
                },
            properties = {},
            required = {},
          }
        | doc "A list of possible scripts to execute"
        | optional,
      startup | String | doc "Command to run on startup" | optional,
      variables
        | Array
          {
            default_value
              | String
              | doc "Default value of the variable."
              | optional,
            description
              | String
              | doc "Description of the variable."
              | optional,
            env_variable
              | String
              | doc "The environment variable that corresponds to this variable. This can be referenced in the startup command."
              | optional,
            field_type | String | optional,
            name | String | doc "Name of the variable." | optional,
            rules
              | String
              | doc "Rules to validate the variable against."
              | optional,
            user_editable
              | Bool
              | doc "Set to true if the variable is editable by the user"
              | optional,
            user_viewable
              | Bool
              | doc "Setting to true allows a user to view the field on the front-end, as well as the assigned value of that variable. They will be able to see it replaced in their startup command."
              | optional,
          }
        | doc "Object of variables that can be used to change the startup command"
        | optional,
    }