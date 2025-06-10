# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.branch-object" =
        {
            channel | String | optional,
            name | String,
            prerelease | std.contract.any_of [ Bool, String ] | optional,
            range | String | optional,
          },
    }
    in
  {
      branches
        | std.contract.any_of
          [
            String,
            refs."definitions.branch-object",
            Array (
              std.contract.any_of [ String, refs."definitions.branch-object" ]
            )
          ]
        | doc "The branches on which releases should happen."
        | optional,
      ci
        | Bool
        | doc "Set to false to skip Continuous Integration environment verifications. This allows for making releases from a local machine"
        | optional,
      dryRun
        | Bool
        | doc "The objective of the dry-run mode is to get a preview of the pending release. Dry-run mode skips the following steps: prepare, publish, success and fail. In addition to this it prints the next version and release notes to the console"
        | optional,
      extends
        | std.contract.any_of [ String, Array String ]
        | doc "List of modules or file paths containing a shareable configuration. If multiple shareable configurations are set, they will be imported in the order defined with each configuration option taking precedence over the options defined in a previous shareable configuration"
        | optional,
      plugins
        | Array (std.contract.any_of [ Array Dyn, String ])
        | doc "Define the list of plugins to use. Plugins will run in series, in the order defined"
        | optional,
      repositoryUrl | String | doc "The git repository URL" | optional,
      tagFormat
        | String
        | doc "The Git tag format used by semantic-release to identify releases. The tag name is generated with Lodash template and will be compiled with the version variable."
        | optional,
      ..
    }