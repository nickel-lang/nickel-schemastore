# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.addons" =
        Array (
            std.contract.any_of
              [
                {
                  options
                    | {
                      version
                        | String
                        | doc "The version to deploy (e.g. 4.0.16-1)"
                        | optional,
                      ..
                    }
                    | doc "The only options field is version which contains the version to deploy (e.g. 4.0.16-1)."
                    | optional,
                  plan
                    | String
                    | doc m%"
                      The plan uses the format addon-name:plan-id. E.g. mongodb:mongo-starter-256 or redis:redis-sandbox.
                      
                      See https://doc.scalingo.com/addons
                    "%,
                },
                String
              ]
          ),
      "definitions.env" =
        {
            _ | js2n.OneOf
              [
                js2n.record.Record
                  {
                    additional = 'None,
                    patterns = {},
                    properties =
                      { description = String, required = js2n.Const false, },
                    required = { description = true, },
                  },
                js2n.record.Record
                  {
                    additional = 'None,
                    patterns = {},
                    properties =
                      {
                          description = String,
                          generator = js2n.Const "secret",
                          required = js2n.Enum [ "true", "false", true, false ],
                        },
                    required = { generator = true, },
                  },
                js2n.record.Record
                  {
                    additional = 'None,
                    patterns = {},
                    properties =
                      {
                          description = String,
                          generator = js2n.Const "url",
                          required = js2n.Enum [ "true", "false", true, false ],
                          template = String,
                        },
                    required = { generator = true, },
                  },
                js2n.record.Record
                  {
                    additional = 'None,
                    patterns = {},
                    properties =
                      {
                          description = String,
                          required = js2n.Enum [ "true", "false", true, false ],
                          value = String,
                        },
                    required = { value = true, },
                  },
                js2n.record.Record
                  {
                    additional = 'None,
                    patterns = {},
                    properties =
                      {
                          description = String,
                          generator = js2n.Const "template",
                          required = js2n.Enum [ "true", "false", true, false ],
                          template = String,
                        },
                    required = { generator = true, template = true, },
                  }
              ]
          },
      "definitions.formation" =
        {
            _ | {
              amount
                | Number
                | doc "Number of containers to start once the application is deployed",
              size
                | std.enum.TagOrString
                | [| '"2XL", 'XL, 'L, 'M, 'S |]
                | doc "Container size name. see https://doc.scalingo.com/platform/internals/container-sizes",
              ..
            }
          },
    }
    in
  {
      "$schema" | String | optional,
      addons | refs."definitions.addons" | optional,
      copy_parent_database_urls
        | js2n.Enum [ "true", "false", true, false ]
        | doc "Copy database credentials from parent app"
        | optional,
      description
        | String
        | doc "Description in one or two sentences of the app"
        | optional,
      env | refs."definitions.env" | optional,
      formation | refs."definitions.formation" | optional,
      logo | String | doc "URL to the logo of the project" | optional,
      name | String | doc "Complete name of the project",
      ref
        | String
        | doc "Branch name or commit ID of the code to use"
        | optional,
      repository
        | String
        | doc "Location of the GIT repository of the project"
        | optional,
      scripts
        | {
          first-deploy
            | String
            | doc "Job to run as postdeploy hook at the first deployment of a review app or one-click deployed app"
            | optional,
        }
        | doc m%"
          The scripts.postdeploy key is now deprecated in favor of postdeploy hook in the Procfile.
          
          More information on the dedicated page : https://doc.scalingo.com/platform/app/review-apps#run-a-task-after-the-first-deployment-of-a-review-app
        "%
        | optional,
      stack
        | std.enum.TagOrString
        | [| 'scalingo-14, 'scalingo-18, 'scalingo-20, 'scalingo-22 |]
        | doc "Name of the stack to use : https://doc.scalingo.com/platform/internals/stacks/stacks"
        | optional,
      website
        | String
        | doc "Official website of the application if any"
        | optional,
    }