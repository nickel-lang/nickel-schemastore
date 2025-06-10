# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  std.contract.Sequence
      [
        js2n.OneOf
          [
            std.contract.any_of
              [
                js2n.Null,
                Bool,
                Number,
                String,
                js2n.record.Required [ "stages" ],
                Array Dyn
              ],
            std.contract.any_of
              [
                js2n.Null,
                Bool,
                Number,
                String,
                js2n.record.Required [ "steps" ],
                Array Dyn
              ]
          ],
        {
          deployment
            | std.contract.any_of
              [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
            | doc m%"
              Provide deployment configuration.
              Reference: https://go-vela.github.io/docs/reference/yaml/deployments/
            "%
            | optional,
          environment
            | std.contract.any_of
              [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
            | doc m%"
              Provide global environment variables injected into the container environment.
              Reference: https://go-vela.github.io/docs/reference/yaml/steps/#the-environment-key
            "%
            | optional,
          git
            | std.contract.any_of
              [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
            | doc m%"
              Provide the git access specifications.
              Reference: https://go-vela.github.io/docs/reference/yaml/git/
            "%
            | optional,
          metadata
            | std.contract.any_of
              [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
            | doc m%"
              Pass extra information.
              Reference: https://go-vela.github.io/docs/reference/yaml/metadata/
            "%
            | optional,
          secrets
            | std.contract.any_of
              [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
            | doc m%"
              Provide sensitive information.
              Reference: https://go-vela.github.io/docs/reference/yaml/secrets/
            "%
            | optional,
          services
            | std.contract.any_of
              [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
            | doc m%"
              Provide detached (headless) execution instructions.
              Reference: https://go-vela.github.io/docs/reference/yaml/services/
            "%
            | optional,
          stages
            | std.contract.any_of
              [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
            | doc m%"
              Provide parallel execution instructions.
              Reference: https://go-vela.github.io/docs/reference/yaml/stages/
            "%
            | optional,
          steps
            | std.contract.any_of
              [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
            | doc m%"
              Provide sequential execution instructions.
              Reference: https://go-vela.github.io/docs/reference/yaml/steps/
            "%
            | optional,
          templates
            | std.contract.any_of
              [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
            | doc m%"
              Provide the name of templates to expand.
              Reference: https://go-vela.github.io/docs/reference/yaml/templates/
            "%
            | optional,
          version
            | js2n.string.MinLength 1
            | doc m%"
              Provide syntax version used to evaluate the pipeline.
              Reference: https://go-vela.github.io/docs/reference/yaml/version/
            "%,
          worker
            | std.contract.any_of
              [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
            | doc m%"
              Limit the pipeline to certain types of workers.
              Reference: https://go-vela.github.io/docs/reference/yaml/worker/
            "%
            | optional,
          ..
        }
      ]