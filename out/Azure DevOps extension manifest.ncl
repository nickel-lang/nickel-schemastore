# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.Badge" =
        {
            description
              | String
              | doc "Description of the badge, to be displayed on hover."
              | optional,
            href
              | String
              | doc "Link the user navigates to when selecting the badge."
              | optional,
            uri
              | String
              | doc "The absolute URL of the badge image to be displayed.",
            ..
          },
      "definitions.Content" =
        { path | String | doc "The path to the file in the extension.", .. },
      "definitions.Contribution" =
        {
            constraints
              | Array (
                std.contract.Sequence
                  [ refs."definitions.ContributionConstraint", { _ | Dyn } ]
              )
              | doc "List of constraints (filters) that should be applied to the availability of this contribution"
              | optional,
            description
              | String
              | doc "Description of the contribution/type"
              | optional,
            id
              | String
              | doc "Fully qualified identifier of the contribution/type",
            includes
              | Array String
              | doc "Includes is a set of contributions that should have this contribution included in their targets list."
              | optional,
            properties
              | std.contract.any_of
                [ js2n.Null, Bool, Number, String, { _ | Dyn }, Array Dyn ]
              | doc "Properties/attributes of this contribution"
              | optional,
            restrictedTo
              | Array String
              | doc "List of demanded claims in order for the user to see this contribution (like anonymous, public, member...)."
              | optional,
            targets
              | Array String
              | doc "The ids of the contribution(s) that this contribution targets. (parent contributions)",
            type | String | doc "Id of the Contribution Type",
            visibleTo
              | Array String
              | doc "VisibleTo can be used to restrict whom can reference a given contribution/type. This value should be a list of publishers or extensions access is restricted too.  Examples: \"ms\" - Means only the \"ms\" publisher can reference this. \"ms.vss-web\" - Means only the \"vss-web\" extension from the \"ms\" publisher can reference this."
              | optional,
            ..
          },
      "definitions.ContributionConstraint" =
        {
            group
              | Number
              | doc "An optional property that can be specified to group constraints together. All constraints within a group are AND'd together (all must be evaluate to True in order for the contribution to be included). Different groups of constraints are OR'd (only one group needs to evaluate to True for the contribution to be included)."
              | optional,
            id
              | String
              | doc "Fully qualified identifier of a shared constraint"
              | optional,
            inverse
              | Bool
              | doc "If true, negate the result of the filter (include the contribution if the applied filter returns false instead of true)"
              | optional,
            name
              | String
              | doc "Name of the IContributionFilter plugin"
              | optional,
            properties
              | std.contract.any_of
                [ js2n.Null, Bool, Number, String, { _ | Dyn }, Array Dyn ]
              | doc "Properties that are fed to the contribution filter class"
              | optional,
            relationships
              | Array String
              | doc "Constraints can be optionally be applied to one or more of the relationships defined in the contribution. If no relationships are defined then all relationships are associated with the constraint. This means the default behaviour will eliminate the contribution from the tree completely if the constraint is applied."
              | optional,
            ..
          },
      "definitions.ContributionLicensingBehaviorType" = js2n.Enum [ 0, 1, 2 ],
      "definitions.ContributionPropertyDescription" =
        {
            description | String | doc "Description of the property" | optional,
            name | String | doc "Name of the property" | optional,
            required
              | Bool
              | doc "True if this property is required"
              | optional,
            type
              | refs."definitions.ContributionPropertyType"
              | Number
              | doc "The type of value used for this property"
              | optional,
            ..
          },
      "definitions.ContributionPropertyType" =
        js2n.Enum [ 0, 1, 128, 16, 2, 256, 32, 4, 512, 64, 8 ],
      "definitions.ContributionType" =
        {
            description
              | String
              | doc "Description of the contribution/type"
              | optional,
            id
              | String
              | doc "Fully qualified identifier of the contribution/type"
              | optional,
            indexed
              | Bool
              | doc "Controls whether or not contributions of this type have the type indexed for queries. This allows clients to find all extensions that have a contribution of this type.  NOTE: Only TrustedPartners are allowed to specify indexed contribution types."
              | optional,
            name
              | String
              | doc "Friendly name of the contribution/type"
              | optional,
            properties
              | {
                _ | std.contract.Sequence
                  [
                    refs."definitions.ContributionPropertyDescription",
                    { _ | Dyn }
                  ]
              }
              | doc "Describes the allowed properties for this contribution type"
              | optional,
            visibleTo
              | Array String
              | doc "VisibleTo can be used to restrict whom can reference a given contribution/type. This value should be a list of publishers or extensions access is restricted too.  Examples: \"ms\" - Means only the \"ms\" publisher can reference this. \"ms.vss-web\" - Means only the \"vss-web\" extension from the \"ms\" publisher can reference this."
              | optional,
            ..
          },
      "definitions.ExtensionEventCallback" =
        {
            uri
              | String
              | doc "The uri of the endpoint that is hit when an event occurs"
              | optional,
            ..
          },
      "definitions.ExtensionEventCallbackCollection" =
        {
            postDisable
              | refs."definitions.ExtensionEventCallback"
              | { _ | Dyn }
              | doc "Optional.  Defines an endpoint that gets called via a POST request to notify that an extension disable has occurred."
              | optional,
            postEnable
              | refs."definitions.ExtensionEventCallback"
              | { _ | Dyn }
              | doc "Optional.  Defines an endpoint that gets called via a POST request to notify that an extension enable has occurred."
              | optional,
            postInstall
              | refs."definitions.ExtensionEventCallback"
              | { _ | Dyn }
              | doc "Optional.  Defines an endpoint that gets called via a POST request to notify that an extension install has completed."
              | optional,
            postUninstall
              | refs."definitions.ExtensionEventCallback"
              | { _ | Dyn }
              | doc "Optional.  Defines an endpoint that gets called via a POST request to notify that an extension uninstall has occurred."
              | optional,
            postUpdate
              | refs."definitions.ExtensionEventCallback"
              | { _ | Dyn }
              | doc "Optional.  Defines an endpoint that gets called via a POST request to notify that an extension update has occurred."
              | optional,
            preInstall
              | refs."definitions.ExtensionEventCallback"
              | { _ | Dyn }
              | doc "Optional.  Defines an endpoint that gets called via a POST request to notify that an extension install is about to occur.  Response indicates whether to proceed or abort."
              | optional,
            versionCheck
              | refs."definitions.ExtensionEventCallback"
              | { _ | Dyn }
              | doc "For multi-version extensions, defines an endpoint that gets called via an OPTIONS request to determine the particular version of the extension to be used"
              | optional,
            ..
          },
      "definitions.ExtensionLicensing" =
        {
            overrides
              | Array (
                std.contract.Sequence
                  [ refs."definitions.LicensingOverride", { _ | Dyn } ]
              )
              | doc "A list of contributions which deviate from the default licensing behavior"
              | optional,
            ..
          },
      "definitions.File" =
        {
            addressable
              | Bool
              | doc "(optional) Set to true if you want your file to be URL-addressable. Defaults to false."
              | optional,
            assetType
              | String
              | doc "(optional) Specify the value of the Type attribute of the asset entry in the VSIX manifest. Can also be an array of strings, in which case multiple asset entries get added for this file. Defaults to the packagePath."
              | optional,
            contentType
              | String
              | doc "(optional) MIME type of the file. Defaults to a best guess based on the file extension and OS settings."
              | optional,
            lang
              | String
              | doc "(optional) Language of this asset. Localized files are served based on the Accept-Language header. Leave blank to signify this file is in the default (or fallback) language. Localized versions of the same file should have the same assetType."
              | optional,
            packagePath
              | String
              | doc "(optional) Path to the resource within the package. Defaults to the relative path on disk from your root directory."
              | optional,
            path
              | String
              | doc "Path to resource on disk, which can be relative to your root directory.",
            ..
          },
      "definitions.LicensingOverride" =
        {
            behavior
              | refs."definitions.ContributionLicensingBehaviorType"
              | Number
              | doc "How the inclusion of this contribution should change based on licensing"
              | optional,
            id
              | String
              | doc "Fully qualified contribution id which we want to define licensing behavior for"
              | optional,
            ..
          },
      "definitions.Link" =
        { uri | String | doc "The absolute URL of the link." | optional, .. },
      "definitions.Target" =
        {
            id
              | std.enum.TagOrString
              | [|
                '"Microsoft.TeamFoundation.Server.Integration",
                '"Microsoft.VisualStudio.Services.Integration",
                '"Microsoft.TeamFoundation.Server",
                '"Microsoft.VisualStudio.Services"
              |],
            ..
          },
    }
    in
  {
      badges
        | Array refs."definitions.Badge"
        | doc "Array of links to external metadata badges like TravisCI, Appveyor, and so on, from the approved badges sites."
        | optional,
      baseUri
        | String
        | doc "Uri used as base for other relative uri's defined in extension"
        | optional,
      branding
        | {
          color
            | String
            | doc "Primary color of the extension or publisher; can be a hex (#ff00ff), RGB (rgb(100,200,50)), or supported HTML color names (blue)."
            | optional,
          theme
            | std.enum.TagOrString
            | [| 'light, 'dark |]
            | doc "Complements the color; use dark for dark branding colors, or light for lighter branding colors."
            | optional,
          ..
        }
        | doc "Dictionary of brand-related properties."
        | optional,
      categories
        | js2n.array.MinItems 1
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
        | doc "Array of strings representing the categories your extension belongs to. At least one category must be provided and there's no limit to how many categories you may include. Valid values: Azure Repos, Azure Boards, Azure Pipelines, Azure Test Plans, and Azure Artifacts."
        | optional,
      constraints
        | Array refs."definitions.ContributionConstraint"
        | doc "List of shared constraints defined by this extension"
        | optional,
      content
        | js2n.record.Record
          {
            additional = 'Some refs."definitions.Content",
            patterns = {},
            properties = { details = refs."definitions.Content", },
            required = {},
          }
        | doc "Dictionary of content files that describe your extension to users."
        | optional,
      contributionTypes
        | Array refs."definitions.ContributionType"
        | doc "List of contribution types defined by this extension"
        | optional,
      contributions
        | Array refs."definitions.Contribution"
        | doc "List of contributions made by this extension"
        | optional,
      demands
        | Array String
        | doc "List of explicit demands required by this extension"
        | optional,
      description
        | js2n.string.MaxLength 200
        | doc "A few sentences describing the extensions. Limited to 200 characters."
        | optional,
      eventCallbacks
        | refs."definitions.ExtensionEventCallbackCollection"
        | doc "Collection of endpoints that get called when particular extension events occur"
        | optional,
      fallbackBaseUri
        | String
        | doc "Secondary location that can be used as base for other relative uri's defined in extension"
        | optional,
      files
        | Array refs."definitions.File"
        | doc "The files section is where you reference any files you wish to include in your extension."
        | optional,
      icons
        | js2n.record.Record
          {
            additional = 'Some String,
            patterns = {},
            properties = { "default" = String, },
            required = {},
          }
        | doc "Dictionary of icons representing the extension."
        | optional,
      id | String | doc "The extension's identifier." | optional,
      language
        | String
        | doc "Language Culture Name set by the Gallery"
        | optional,
      licensing
        | refs."definitions.ExtensionLicensing"
        | doc "How this extension behaves with respect to licensing"
        | optional,
      links
        | js2n.record.Record
          {
            additional = 'Some refs."definitions.Link",
            patterns = {},
            properties =
              {
                  getstarted = refs."definitions.Link",
                  learn = refs."definitions.Link",
                  license = refs."definitions.Link",
                  privacypolicy = refs."definitions.Link",
                  support = refs."definitions.Link",
                },
            required = {},
          }
        | doc "Dictionary of links that help users learn more about your extension, get support, and move."
        | optional,
      manifestVersion
        | Number
        | doc "Version of the extension manifest format/content. Should be 1."
        | optional,
      name
        | js2n.string.MaxLength 200
        | doc "A short, human-readable name of the extension. Limited to 200 characters."
        | optional,
      publisher
        | String
        | doc "The identifier of the publisher. This identifier must match the identifier the extension is published under."
        | optional,
      repository
        | {
          type | String | doc "Type of repository. Example: git." | optional,
          uri | String | doc "Absolute URL of the repository." | optional,
          ..
        }
        | doc "Dictionary of properties describing the source code repository for the extension."
        | optional,
      restrictedTo
        | Array String
        | doc "Default user claims applied to all contributions (except the ones which have been specified restrictedTo explicitly) to control the visibility of a contribution."
        | optional,
      scopes
        | Array String
        | doc "List of all oauth scopes required by this extension"
        | optional,
      screenshots
        | Array refs."definitions.Content"
        | doc "Array of images that couldn't be included in your content."
        | optional,
      serviceInstanceType
        | String
        | doc "The ServiceInstanceType(Guid) of the VSTS service that must be available to an account in order for the extension to be installed"
        | optional,
      tags
        | Array String
        | doc "Array of string tags to help users find your extension."
        | optional,
      targets
        | js2n.array.MinItems 1
        | Array refs."definitions.Target"
        | doc "The products and services supported by your integration or extension."
        | optional,
      version
        | String
        | doc "A string specifying the version of an extension. Should be in the format major.minor.patch."
        | optional,
      ..
    }