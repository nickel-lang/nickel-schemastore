# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.content_definition" = { path | String, .. },
      "definitions.contributionType_definition" =
        {
            description
              | String
              | doc "(Optional) A string describing in more detail what the contribution type is for."
              | optional,
            id
              | String
              | doc "A reference ID (string) for the contribution type. Each contribution type's ID must be unique within an extension.",
            name | String | doc "The friendly name of the contribution type.",
            properties
              | Array
                {
                  description
                    | String
                    | doc "(Optional) A string describing what the property is used for."
                    | optional,
                  required
                    | Bool
                    | doc "(Optional) A boolean value which if true indicates that the property is required for all contributions of this type."
                    | optional,
                  type
                    | std.enum.TagOrString
                    | [|
                      'object,
                      'array,
                      'dateTime,
                      'double,
                      'integer,
                      'boolean,
                      'guid,
                      'uri,
                      'string
                    |]
                    | doc "The type of value that the property can have.",
                  ..
                }
              | doc "(Optional) A dictionary that maps property names to property descriptions. These properties describe the required and optional properties that can be used by contributions of this type."
              | optional,
            ..
          },
      "definitions.contribution_definition" =
        {
            description
              | String
              | doc "(Optional) A string describing what the contribution is providing."
              | optional,
            id
              | String
              | doc "A reference ID (string) for the contribution. Each contribution's ID must be unique within an extension.",
            properties
              | { _ | Dyn }
              | doc "(Optional) An object that includes properties for the contribution as defined in the contribution type."
              | optional,
            restrictedTo
              | Array (
                std.contract.Sequence
                  [ std.enum.TagOrString, [| 'anonymous, 'public, 'member |] ]
              )
              | doc "Valid Values: https://docs.microsoft.com/en-us/azure/devops/extend/develop/public-project?view=azure-devops#contribution-visibility"
              | optional,
            targets
              | Array String
              | doc "An array of contribution IDs that the contribution is targeting (contributing to).",
            type
              | String
              | doc "The ID of the contributionType of this contribution.",
            ..
          },
      "definitions.demand_pattern" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              js2n.string.Matches
                "^((environment/cloud|environment/onprem)|(api-version|extension|contribution|contributionType)/.+)$",
              { _ | Dyn },
              Array Dyn
            ],
      "definitions.id_pattern" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              js2n.string.Matches "^[a-zA-Z0-9][a-zA-Z0-9-]+$",
              { _ | Dyn },
              Array Dyn
            ],
      "definitions.link_definition" = { uri | String | doc "Valid URI", .. },
    }
    in
  {
      badges
        | Array
          {
            description | String | optional,
            href
              | String
              | doc "Link the user navigates to when clicking the badge.",
            uri
              | String
              | doc "The absolute URL of the badge image to be displayed.",
            ..
          }
        | doc "Array of links to external metadata badges like TravisCI, Appveyor etc from the approved badges sites."
        | optional,
      baseUri
        | String
        | doc "(Optional) base URL for all relative URLs specified by the extension's contributions."
        | optional,
      branding
        | {
          color
            | String
            | doc "Primary color of the extension or publisher; can be a hex (#ff00ff), RGB (rgb(100,200,50)), or supported HTML color names (blue).",
          theme
            | std.enum.TagOrString
            | [| 'dark, 'light |]
            | doc "Complements the color; use dark for dark branding colors, or light for lighter branding colors."
            | optional,
          ..
        }
        | doc "Dictionary of brand-related properties."
        | optional,
      categories
        | js2n.array.UniqueItems
        | Array (
          std.contract.Sequence
            [
              std.enum.TagOrString,
              [|
                '"Azure Artifacts",
                '"Azure Test Plans",
                '"Azure Pipelines",
                '"Azure Boards",
                '"Azure Repos"
              |]
            ]
        )
        | doc "At least one category must be provided and there is no limit to how many categories you may include.",
      content
        | {
          details
            | refs."definitions.content_definition"
            | doc "GitHub Flavored Markdown file which describes the details of the Extension",
          license
            | refs."definitions.content_definition"
            | doc "GitHub Flavored Markdown file which describes the license information of the Extension"
            | optional,
          pricing
            | refs."definitions.content_definition"
            | doc "GitHub Flavored Markdown file which describes the pricing information of the Extension"
            | optional,
          ..
        }
        | optional,
      contributionTypes
        | Array refs."definitions.contributionType_definition"
        | optional,
      contributions
        | Array refs."definitions.contribution_definition"
        | optional,
      demands
        | Array (
          std.contract.Sequence [ refs."definitions.demand_pattern", String ]
        )
        | doc "An array of demands (strings) listing the capabilities required by your extension."
        | optional,
      description | js2n.string.MaxLength 200 | optional,
      files
        | Array
          {
            addressable
              | Bool
              | doc "Set to true if you want your file to be URL-addressable"
              | optional,
            packagePath
              | String
              | doc "Places your resource from disk to the specified value when packaged"
              | optional,
            path
              | String
              | doc "Path of resource, root directory is where your manifest file is located",
            ..
          }
        | optional,
      galleryFlags
        | js2n.array.MinItems 1
        | Array (
          std.contract.Sequence
            [ std.enum.TagOrString, [| 'Public, 'Preview, 'Paid |] ]
        )
        | doc "Array of string tags to classify your extension within the Visual Studio Marketplace"
        | optional,
      galleryproperties
        | { _ | Dyn }
        | doc "More information: https://docs.microsoft.com/en-us/azure/devops/extend/develop/manifest?view=azure-devops#mark-an-extension-as-paid"
        | optional,
      icons
        | {
          "default"
            | String
            | doc "The value must be the path to the icon file in the extension",
          ..
        }
        | doc "Dictionary of icons representing the extension."
        | optional,
      id
        | refs."definitions.id_pattern"
        | String
        | doc "This is a string that must be unique among extensions from the same publisher.",
      licensing
        | { _ | Dyn }
        | doc "More information: https://docs.microsoft.com/en-us/azure/devops/extend/develop/manifest?view=azure-devops#mark-an-extension-as-paid"
        | optional,
      links
        | js2n.record.MinProperties 1
        | {
          getstarted
            | refs."definitions.link_definition"
            | doc "First steps, how to setup or use."
            | optional,
          learn
            | refs."definitions.link_definition"
            | doc "Deeper content to help users better understand your extension or service."
            | optional,
          license
            | refs."definitions.link_definition"
            | doc "End user license agreement."
            | optional,
          privacypolicy
            | refs."definitions.link_definition"
            | doc "Privacy policy for an extension."
            | optional,
          support
            | refs."definitions.link_definition"
            | doc "Get help and support for an extension."
            | optional,
          ..
        }
        | optional,
      manifestVersion
        | std.number.Integer
        | js2n.Enum [ 1 ]
        | doc "This should be 1.",
      name | js2n.string.MaxLength 200,
      public
        | Bool
        | doc "Set to true to make this extension public in the Visual Studio Market Place"
        | optional,
      publisher
        | js2n.string.Matches "^[a-zA-Z0-9][a-zA-Z0-9-]+$"
        | doc "This identifier must match the identifier the extension is published under.",
      repository
        | {
          type | std.enum.TagOrString | [| 'cvs, 'svn, 'mercurial, 'git |],
          uri | String,
          ..
        }
        | optional,
      scopes
        | Array (
          std.contract.Sequence
            [
              std.enum.TagOrString,
              [|
                '"vso.work_write",
                '"vso.work_full",
                '"vso.work",
                '"vso.wiki_write",
                '"vso.wiki",
                '"vso.variablegroups_write",
                '"vso.variablegroups_read",
                '"vso.variablegroups_manage",
                '"vso.tokens",
                '"vso.tokenadministration",
                '"vso.test_write",
                '"vso.test",
                '"vso.taskgroups_write",
                '"vso.taskgroups_read",
                '"vso.taskgroups_manage",
                '"vso.symbols_write",
                '"vso.symbols_manage",
                '"vso.symbols",
                '"vso.settings_write",
                '"vso.settings",
                '"vso.serviceendpoint_query",
                '"vso.serviceendpoint_manage",
                '"vso.serviceendpoint",
                '"vso.security_manage",
                '"vso.release_manage",
                '"vso.release_logs",
                '"vso.release_execute",
                '"vso.release",
                '"vso.project_write",
                '"vso.project_manage",
                '"vso.project",
                '"vso.profile_write",
                '"vso.profile",
                '"vso.packaging_write",
                '"vso.packaging_manage",
                '"vso.packaging",
                '"vso.notification_write",
                '"vso.notification_publish",
                '"vso.notification_manage",
                '"vso.notification_diagnostics",
                '"vso.notification",
                '"vso.memberentitlementmanagement_write",
                '"vso.memberentitlementmanagement",
                '"vso.machinegroup_manage",
                '"vso.loadtest_write",
                '"vso.loadtest",
                '"vso.licensing",
                '"vso.identity_manage",
                '"vso.identity",
                '"vso.hooks_write",
                '"vso.hooks_interact",
                '"vso.hooks",
                '"vso.graph_write",
                '"vso.graph_manage",
                '"vso.graph",
                '"vso.governance_manage",
                '"vso.gallery_publish",
                '"vso.gallery_manage",
                '"vso.gallery_acquire",
                '"vso.gallery",
                '"vso.features_write",
                '"vso.features",
                '"vso.extension_manage",
                '"vso.extension.default",
                '"vso.extension.data_write",
                '"vso.extension.data",
                '"vso.extension",
                '"vso.entitlements",
                '"vso.dashboards_manage",
                '"vso.dashboards",
                '"vso.connected_server",
                '"vso.commerce.write",
                '"vso.code_write",
                '"vso.code_status",
                '"vso.code_manage",
                '"vso.code_full",
                '"vso.code",
                '"vso.build_fork",
                '"vso.build_execute",
                '"vso.build",
                '"vso.base",
                '"vso.auditlog",
                '"vso.analytics",
                '"vso.agentpools_manage",
                '"vso.agentpools_listen",
                '"vso.agentpools",
                '"vso.acquisition_write"
              |]
            ]
        )
        | doc "An array of authorization scopes (strings) listing permissions required by your extension."
        | optional,
      screenshots
        | Array
          {
            path
              | String
              | doc "The path of each item is the path to the file in the extension.",
            ..
          }
        | doc "Array of images that could not be included in your **content*."
        | optional,
      tags
        | js2n.array.MinItems 1
        | Array String
        | doc "Array of string tags to help users find your extension."
        | optional,
      targets
        | Array
          {
            id
              | std.enum.TagOrString
              | [|
                '"Microsoft.VisualStudio.Services.Cloud.Integration",
                '"Microsoft.VisualStudio.Services.Cloud",
                '"Microsoft.TeamFoundation.Server.Integration",
                '"Microsoft.VisualStudio.Services.Integration",
                '"Microsoft.TeamFoundation.Server",
                '"Microsoft.VisualStudio.Services"
              |]
              | doc "Id of the product or service which your integration/extension should support",
            version
              | js2n.string.Matches
                "^(\\[|\\()\\d{2}\\.\\d,(\\d{2}\\.\\d)?(\\)|\\])$"
              | doc "Some installation target identifiers, like and , support an optional version range. This further clarifies the supported releases the extension or integration is supported on.Microsoft.TeamFoundation.ServerMicrosoft.TeamFoundation.Server.Integration"
              | optional,
            ..
          },
      version
        | js2n.string.Matches "^\\d+\\.\\d+\\.\\d+(\\.\\d+)?$"
        | doc "Should be in the format major.minor.patch, for example 0.1.2 or 1.0.0. You can also add a fourth number for the following format: 0.1.2.3",
      ..
    }