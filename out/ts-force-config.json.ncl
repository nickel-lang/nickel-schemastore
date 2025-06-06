# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.AuthConfig" =
        {
            accessToken | String | optional,
            clientId | String | optional,
            clientSecret | String | optional,
            instanceUrl | String | optional,
            oAuthHost | String | optional,
            password | String | optional,
            username
              | String
              | doc m%"
                If using `sfdx-cli` auth, this is the only property needed to authenticate.
                Otherwise, supply additional oAuth parameters
              "%
              | optional,
            version | Number | optional,
            ..
          },
      "definitions.FieldMapping" =
        {
            apiName | String | doc "The Target SObject API name",
            propName | String | doc "The generated class property name",
            ..
          },
      "definitions.SObjectConfig" =
        {
            apiName | String | doc "The Target SObject API name",
            autoConvertNames
              | Bool
              | doc "Defaulted to true.  If set to false, names will NOT be auto-converted to standard javascript conventions"
              | optional,
            className
              | String
              | doc m%"
                The generated class name.  If not set, it will be automatically
                converted to standard javascript Class convention
              "%
              | optional,
            enforcePicklistValues
              | js2n.Enum [ "ALL", "RESTRICTED", false ]
              | doc m%"
                *Overrides Global Setting*
                The path to generate files to.
                   If the destination is a folder, it will generate one file per object.
                   If the destination is a `.ts` file, a single file will be generated.
                   If not set, class output will be logged to `stdout`
              "%
              | optional,
            fieldMappings
              | Array (
                std.contract.Sequence
                  [ refs."definitions.FieldMapping", { _ | Dyn } ]
              )
              | doc "List of field mappings to override the auto-conversion"
              | optional,
            generatePicklists
              | Bool
              | doc m%"
                *Overrides Global Setting*
                Make picklist fields strongly typed to generated enums. `generatePicklists` must also be `true`
                  `ALL`: for all picklist fields, regardless of salesforce enforcement
                  `RESTRICTED`: only on fields where the values are restricted on Salesforce
              "%
              | optional,
            ..
          },
    }
    in
  {
      auth
        | refs."definitions.AuthConfig"
        | doc m%"
          Authentication Method.  Choose one of three:
          - You can either username/password oAuth configuration
          - sfdx configuration (`username` only)
          - `accessToken` & `instanceUrl`
          See readme for examples.
        "%
        | optional,
      enforcePicklistValues
        | js2n.Enum [ "ALL", "RESTRICTED", false ]
        | doc m%"
          Make picklist fields strongly typed to generated enums. `generatePicklists` must also be `true`
            `ALL`: for all picklist fields, regardless of salesforce enforcement
            `RESTRICTED`: only on fields where the values are restricted on Salesforce
        "%
        | optional,
      generatePicklists
        | Bool
        | doc "Flag to generate enums for picklist fields.  Defaulted to false"
        | optional,
      outPath
        | String
        | doc m%"
          The path to generate files to.
             If the destination is a folder, it will generate one file per object.
             If the destination is a `.ts` file, a single file will be generated.
             If not set, class output will be logged to `stdout`
        "%
        | optional,
      sObjects
        | Array (
          std.contract.any_of [ refs."definitions.SObjectConfig", String ]
        )
        | doc "The SObjects to generate classes for.  Can either be a string or an `SObjectConfig` object"
        | optional,
      ..
    }