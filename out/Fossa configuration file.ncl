# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      apiKey
        | js2n.string.MinLength 1
        | doc "Sets the https://docs.fossa.com/docs/api-reference#api-tokens that is required for accessing the FOSSA API and uploading data (e.g. `fossa analyze`) or retrieving information (e.g. `fossa test`) about a project."
        | optional,
      customLicenseSearch
        | Array (
          std.contract.any_of
            [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
        )
        | optional,
      experimentalKeywordSearch
        | Array (
          std.contract.any_of
            [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
        )
        | optional,
      ignoreOrgWideCustomLicenseScanConfigs
        | Bool
        | doc "Ignore custom-license scan configurations for your organization. These configurations are defined in the Integrations section of the Admin settings in the FOSSA web app."
        | optional,
      maven
        | js2n.OneOf
          [
            std.contract.any_of
              [
                js2n.Null,
                Bool,
                Number,
                String,
                js2n.record.Required [ "scope-only" ],
                Array Dyn
              ],
            std.contract.any_of
              [
                js2n.Null,
                Bool,
                Number,
                String,
                js2n.record.Required [ "scope-exclude" ],
                Array Dyn
              ]
          ]
        | {
          scope-exclude
            | Array String
            | doc "The list of scopes to exclude from scanning in your maven project."
            | optional,
          scope-only
            | Array String
            | doc "The list of scopes to only allow scanning in your maven project."
            | optional,
          ..
        }
        | optional,
      paths
        | {
          exclude
            | Array String
            | doc "The list of paths to exclude from scanning in your directory."
            | optional,
          only
            | Array String
            | doc "The list of paths to only allow scanning within."
            | optional,
          ..
        }
        | doc "The paths filtering section allows you to specify which paths should be scanned and which should not. The paths should be listed as their location from the root of your project."
        | optional,
      project
        | std.contract.any_of
          [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
        | optional,
      reachability
        | {
          jvmOutputs
            | { _ | Array String }
            | doc "Manually specify the list of JAR files output by each discovered Maven or Gradle project"
            | optional,
          ..
        }
        | doc "Controls the Reachability computation functionality"
        | optional,
      releaseGroup
        | std.contract.any_of
          [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
        | optional,
      revision | { _ | Dyn } | optional,
      server
        | js2n.string.MinLength 1
        | doc m%"
          Sets the endpoint that the CLI will send requests to. This field should only be modified if your FOSSA account lives on a different server than app.fossa.com.
          
          This is most commonly needed with on-premise instances of FOSSA.
        "%
        | optional,
      targets
        | {
          exclude
            | Array (
              std.contract.any_of
                [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
            )
            | doc m%"
              The list of `exclude` targets which should be excluded from scanning. The targets listed in the exclude section will override the targets listed in the only sections.
              
              This feature is used most effectively to remove specific targets from a directory.
            "%
            | optional,
          only
            | Array (
              std.contract.any_of
                [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
            )
            | doc "The list of `only` targets that should be scanned."
            | optional,
          ..
        }
        | doc "The targets filtering allows you to specify the exact targets which be should be scanned."
        | optional,
      telemetry
        | std.contract.any_of
          [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
        | optional,
      vendoredDependencies
        | std.contract.any_of
          [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
        | optional,
      version
        | std.number.Integer
        | std.contract.Equal 3
        | doc m%"
          Specifies the version of configuration file. Versions 1 and 2 were used by CLI versions up until CLI 2.0.0 and are no longer supported.
          
          CLI 2.x and greater only supports version 3.
        "%,
      ..
    }