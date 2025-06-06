# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      assetFiles
        | Array
          {
            pathOnDisk
              | js2n.string.MinLength 1
              | doc "A path to the file to include in the package. Can be relative to the current json file's directory.",
            targetPath
              | String
              | doc "The path to embed the file in the package. This can be referenced from your overview file via an image link, for example",
            ..
          }
        | doc "A list of assets to include in the package sent to the marketplace."
        | optional,
      categories
        | js2n.array.MaxItems 3
        | js2n.array.MinItems 1
        | js2n.array.UniqueItems
        | Array (
          std.contract.any_of
            [
              js2n.string.MinLength 1,
              std.contract.Sequence
                [
                  std.enum.TagOrString,
                  [|
                    'xna,
                    '"wpf controls",
                    '"wpf templates",
                    'workflow,
                    '"windows forms controls",
                    '"windows forms templates",
                    'web,
                    'wcf,
                    '"visual studio extensions",
                    'testing,
                    '"team development",
                    '"start pages",
                    '"source control",
                    '"silverlight controls",
                    '"sharepoint templates",
                    '"sharepoint controls",
                    'sharepoint,
                    '"setup and deployment",
                    'services,
                    'security,
                    'scaffolding,
                    'reporting,
                    '"programming languages",
                    '"process templates",
                    'performance,
                    '"other templates",
                    'other,
                    'office,
                    'modelling,
                    '"lightswitch templates",
                    '"lightswitch controls",
                    'lightswitch,
                    '"framework and libraries",
                    '"extension sdk",
                    'documentation,
                    'database,
                    'data,
                    '"connected services",
                    'coding,
                    'build,
                    'ajax
                  |]
                ]
            ]
        )
        | doc "A list of categories that the extension applies to.",
      identity
        | {
          description
            | js2n.string.MaxLength 280
            | js2n.string.MinLength 1
            | doc "A description for the extension. Required if the extension is not a VSIX."
            | optional,
          displayName
            | js2n.string.MaxLength 80
            | js2n.string.MinLength 1
            | doc "A display name for the extension. Required if the extension is not a VSIX."
            | optional,
          icon
            | js2n.string.MinLength 1
            | doc "An icon for the extension. Required if the extension is not a VSIX. Can be relative to the current json file's directory."
            | optional,
          installTargets
            | js2n.array.MinItems 1
            | js2n.array.UniqueItems
            | Array
              {
                sku
                  | std.enum.TagOrString
                  | [|
                    '"Microsoft.VisualStudio.VWDExpress",
                    '"Microsoft.VisualStudio.VSWinDesktopExpress",
                    '"Microsoft.VisualStudio.VSWinExpress",
                    '"Microsoft.VisualStudio.VSLS",
                    '"Microsoft.VisualStudio.VPDExpress",
                    '"Microsoft.VisualStudio.VCSExpress",
                    '"Microsoft.VisualStudio.VCExpress",
                    '"Microsoft.VisualStudio.VBExpress",
                    '"Microsoft.VisualStudio.Premium",
                    '"Microsoft.VisualStudio.Ultimate",
                    '"Microsoft.VisualStudio.TestProfessional",
                    '"Microsoft.VisualStudio.Pro",
                    '"Microsoft.VisualStudio.IntegratedShell",
                    '"Microsoft.VisualStudio.Express_All",
                    '"Microsoft.VisualStudio.Enterprise",
                    '"Microsoft.VisualStudio.Community"
                  |]
                  | doc "The SKU name of the installation target.",
                version
                  | js2n.string.Matches "^[0-9\\[\\(,. \\)\\]]+$"
                  | doc "The version range of the install target that the extension can be installed to.",
                ..
              }
            | doc "A list of install targets for the extension. At least one is required if the extension is not a VSIX."
            | optional,
          internalName
            | js2n.string.MaxLength 63
            | js2n.string.MinLength 1
            | js2n.string.Matches "^[^\\s-]+$"
            | doc "The internal name of the extension. A marketplace extension is identified as 'publisherName'.'internalName'. Cannot contain spaces.",
          language
            | std.contract.any_of
              [
                Number,
                js2n.string.Matches
                  "^(\\d{4})$|^([a-zA-Z]{2}(-[A-Za-z]{2})?)$|^neutral$"
              ]
            | doc "The default language the extension applies to. Must be a CLR locale code or an lcid code."
            | optional,
          tags
            | Array (
              std.contract.Sequence
                [ js2n.string.MaxLength 50, js2n.string.MinLength 1 ]
            )
            | doc "A list of tags for the extension."
            | optional,
          version
            | js2n.string.Matches "^([0-9]+\\.){1,3}([0-9]+)$"
            | doc "The version of the extension. Required if the extension is not a VSIX."
            | optional,
          vsixId
            | js2n.string.MinLength 1
            | doc "The vsix identifier of the extension."
            | optional,
          ..
        },
      overview
        | js2n.string.MinLength 1
        | doc "A path to a markdown file that will be displayed on the extension's page in the marketplace. The path can be relative to the current json file's path.",
      priceCategory
        | std.enum.TagOrString
        | [| 'paid, 'trial, 'free |]
        | doc "The pricing model for the extension."
        | optional,
      private
        | Bool
        | doc "If true, the extension will be uploaded as a private extension."
        | optional,
      publisher
        | js2n.string.MinLength 1
        | doc "The publisher of the extension. Must not be a display name of the publisher.",
      qna
        | Bool
        | doc "If true, the extension will have a Q&A page on the marketplace."
        | optional,
      repo
        | String
        | doc "A URL that points to the GitHub repo for the extension."
        | optional,
      ..
    }