# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      cloudformation-stacks
        | Array String
        | doc m%"
          Cloudformation stack names. Any output values from the stacks can be interpolated. Eg. DB_NAME: "{{.myDbName}}"
          myDbName is the output of one of the cloudformation stacks
        "%
        | optional,
      config
        | {
          defaults
            | { _ | Dyn }
            | doc "parameter name and value. Output is /<stage>/<service>/<param name>"
            | optional,
          shared
            | { _ | Dyn }
            | doc "Params that are to be shared between multiple services. The parameter name won't be prefixed by service name. Output is /<stage>/shared/<param name>"
            | optional,
          ..
        }
        | doc "Parameters to deploy as non secret. You can also specify stage specific key value pairs. Same key in the defaults will be ignored and stage specific value will be used."
        | optional,
      generate
        | Array
          {
            path
              | String
              | doc "Full path with filename for writing the output",
            type
              | std.enum.TagOrString
              | [| 'types-node, 'dotenv, 'yaml, 'json |]
              | doc "Type of file to generate",
            ..
          }
        | doc "Generate different files based on the parameter name and values"
        | optional,
      prefix
        | String
        | doc "Prefix to apply to all parameters. Does not apply for shared"
        | optional,
      provider
        | std.enum.TagOrString
        | [| 'secrets-manager, 'ssm |]
        | doc "Deploy parameters to the given provider. Eg. ssm, secrets-manager",
      region
        | std.contract.any_of
          [
            std.contract.Sequence
              [
                std.enum.TagOrString,
                [|
                  'us-gov-west-1,
                  'us-gov-east-1,
                  'sa-east-1,
                  'me-central-1,
                  'me-south-1,
                  'eu-central-2,
                  'eu-north-1,
                  'eu-south-2,
                  'eu-west-3,
                  'eu-south-1,
                  'eu-west-2,
                  'eu-west-1,
                  'eu-central-1,
                  'ca-central-1,
                  'ap-southeast-2,
                  'ap-southeast-1,
                  'ap-northeast-1,
                  'ap-northeast-2,
                  'ap-northeast-3,
                  'ap-south-1,
                  'ap-southeast-4,
                  'ap-southeast-3,
                  'ap-south-2,
                  'ap-east-1,
                  'af-south-1,
                  'us-west-2,
                  'us-west-1,
                  'us-east-1,
                  'us-east-2
                |]
              ],
            String
          ]
        | doc "Region to deploy the parameters to. Eg. us-east-1"
        | optional,
      secret
        | {
          defaults
            | { _ | Dyn }
            | doc "parameter name and value. Output is /<stage>/<service>/<param name>"
            | optional,
          shared
            | { _ | Dyn }
            | doc "Params that are to be shared between multiple services. The parameter name won't be prefixed by service name. Output is /<stage>/shared/<param name>"
            | optional,
          ..
        }
        | doc "Parameters to deploy as secret. You cannot specify stage specific key value pairs. Value is the description. You will need to run safebox deploy in prompt mode to provide the actual value."
        | optional,
      service
        | String
        | doc "Name of the service. parameters will be prefixed by the value provided",
    }