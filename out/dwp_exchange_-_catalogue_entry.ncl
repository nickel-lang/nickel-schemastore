# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "properties.filters.definitions.active-lifecycle" =
        js2n.IfThenElse
            (std.contract.any_of
              [
                js2n.Null,
                Bool,
                Number,
                String,
                js2n.record.Record
                  {
                    additional = 'Some Dyn,
                    patterns = {},
                    properties =
                      {
                          lifecycle =
                            std.contract.Sequence
                                [
                                  std.enum.TagOrString,
                                  [| 'Prod, 'Pre-Prod, '"In Development" |]
                                ],
                        },
                    required = {},
                  },
                Array Dyn
              ])
            (std.contract.any_of
              [
                js2n.Null,
                Bool,
                Number,
                String,
                {
                  access
                    | std.enum.TagOrString
                    | [| 'Closed, 'Open |]
                    | optional,
                  profile
                    | std.enum.TagOrString
                    | [| 'Transitional, 'Strategic |]
                    | optional,
                  ..
                },
                Array Dyn
              ]) js2n.Always,
      "properties.filters.definitions.deprecated-lifecycle" =
        js2n.IfThenElse
            (std.contract.any_of
              [
                js2n.Null,
                Bool,
                Number,
                String,
                js2n.record.Record
                  {
                    additional = 'Some Dyn,
                    patterns = {},
                    properties =
                      {
                          lifecycle =
                            std.contract.Sequence
                                [
                                  std.enum.TagOrString,
                                  [| 'Removed, 'Deprecated |]
                                ],
                        },
                    required = {},
                  },
                Array Dyn
              ])
            (std.contract.any_of
              [
                js2n.Null,
                Bool,
                Number,
                String,
                {
                  access | std.contract.Equal "Closed" | optional,
                  profile | std.contract.Equal "Legacy" | optional,
                  ..
                },
                Array Dyn
              ]) js2n.Always,
    }
    in
  {
      description | js2n.string.MaxLength 200 | js2n.string.MinLength 10,
      filters
        | refs."properties.filters.definitions.active-lifecycle"
        | refs."properties.filters.definitions.deprecated-lifecycle"
        | {
          access
            | std.enum.TagOrString
            | [| 'Closed, 'Open |]
            | doc "The availability of the API",
          asset_type
            | std.enum.TagOrString
            | [| 'Datasets, 'Event, '"SOAP API", '"REST API" |],
          categories
            | Array (
              std.contract.Sequence
                [
                  std.enum.TagOrString,
                  [|
                    'Other,
                    'SMS,
                    'GUID,
                    'Financial,
                    '"Document Services",
                    'Data,
                    'Citizen,
                    'Awards,
                    'Address
                  |]
                ]
            ),
          lifecycle
            | std.enum.TagOrString
            | [| 'Removed, 'Deprecated, 'Prod, 'Pre-Prod, '"In Development" |],
          owner
            | std.enum.TagOrString
            | [|
              'Other,
              '"Common Capabilities",
              '"Retirement, Bereavement & Care",
              '"Reference Data Service",
              '"Personal Independence Payment",
              '"Notifications Platform",
              '"Legacy Bridge",
              'Integration,
              '"Document Repository Services",
              '"Citizen Information",
              '"Citizen Income",
              '"AME Payments"
            |],
          profile
            | std.enum.TagOrString
            | [| 'Legacy, 'Transitional, 'Strategic |],
          visibility
            | std.enum.TagOrString
            | [| 'Public, 'Internal |]
            | doc "The scope of visibility for the API, either Public (visible to all) or Internal (visible to dwp only)",
        }
        | doc "A list of filtering options to improve searchability on the portal. Please check the README file to check the valid combinations of `lifecycle`, `profile`, and `access`.",
      primaryContact
        | {
          emailAddress
            | js2n.string.Matches "^.*@.*gov\\.uk$"
            | doc "must end with `gov.uk`",
          name | js2n.string.MaxLength 60 | js2n.string.MinLength 2 | optional,
          role | js2n.string.MinLength 2 | optional,
        }
        | doc "Contact details for the owner of the asset, i.e. the Product Owner.These details will be used when customers make enquiries or request access to the asset through the portal.",
      relatedAssets
        | Array String
        | doc "A list of other assets that are related to the asset being published. Must match the Asset ID on the related asset's business documentation page on the portal at https://gitlab.com/dwp/integration/api-exchange/exchange-content/-/tree/main/output/dwp/portal/workspaces/primary/content/_catalogueEntries."
        | optional,
      searchTags
        | js2n.string.Matches "^([^,]+(,|$)){3,}$"
        | doc "Tags to label the asset in order to increase discoverability. Minimum of 3 in CSV format.",
      technical_documentation
        | {
          oas_path
            | js2n.string.Matches "((?:[^/]*/)*)(?=\\.(yaml|yml))"
            | doc "Path to the technical documentation, relative to the current working directory.",
        }
        | doc "Allows you to provide paths to technical documentation to be published to the portal."
        | optional,
    }