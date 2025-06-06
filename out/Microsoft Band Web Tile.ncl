# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.color" = js2n.string.Matches "^[A-Fa-f0-9]{6}$",
      "definitions.condition" =
        std.contract.Sequence [ std.enum.TagOrString, [| '"true" |] ],
      "definitions.elementId" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [| '"32", '"31", '"22", '"21", '"12", '"11", '"3", '"2", '"1" |]
            ],
      "definitions.icon" = js2n.string.Matches "\\.png$",
      "definitions.iconBinding" =
        {
            conditions
              | Array
                {
                  condition | refs."definitions.condition" | String | optional,
                  icon
                    | String
                    | doc "The name of the icon as specified in the 'icons' node."
                    | optional,
                  ..
                }
              | doc "For this release, this must contain an array with a single 'condition' object whose 'condition' is true, and whose 'icon' member specifies the name of the icon to be used.",
            elementId | refs."definitions.elementId" | String,
            ..
          },
      "definitions.notification" =
        {
            body
              | String
              | doc "The text to use for the notification body. If longer than 20 characters, it will be truncated."
              | optional,
            condition
              | String
              | doc "The condition to be evaluated to determine whether to trigger the notification. The conditional expression has the syntax '<Operand1> <Operator> <Operand2>' or 'true'.",
            title
              | String
              | doc "The text to use for the notification title. If longer than 20 characters, it will be truncated.",
            ..
          },
      "definitions.page" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                condition | refs."definitions.condition" | String | optional,
                iconBindings
                  | js2n.array.MinItems 1
                  | Array (
                    std.contract.Sequence
                      [ refs."definitions.iconBinding", { _ | Dyn } ]
                  )
                  | doc "Similar to textBindings, but used to select one of the web tile icons in icons list for each icon in the page. If there are no icon elements on the page, this member may be omitted."
                  | optional,
                layout
                  | std.enum.TagOrString
                  | [|
                    'MSBand_SingleMetricWithSecondary,
                    'MSBand_MetricsWithIcons,
                    'MSBand_SingleMetricWithIcon,
                    'MSBand_SingleMetric,
                    'MSBand_NoScrollingText,
                    'MSBand_ScrollingText
                  |]
                  | doc "The name of the layout for the page. The layout name should refer to one of the predefined page layouts.",
                textBindings
                  | js2n.array.MinItems 1
                  | Array refs."definitions.textBinding"
                  | doc "An array of objects corresponding to each page element that contains string content. Each binding object provides the numeric id of the page element based on the predefined layout selected, and the string value that it should contain."
                  | optional,
                ..
              },
              Array Dyn
            ],
      "definitions.resource" =
        {
            content
              | js2n.record.MinProperties 1
              | { _ | String }
              | doc "This member specifies how to extract content from the web response.",
            style
              | js2n.string.Matches "^([sS]imple|[fF]eed)$"
              | doc "Specifies the kind of web resource being accessed. Permitted values are 'Simple' and 'Feed'.",
            url
              | String
              | doc "The URL to be referenced. For resources that require authentication, the URL must be HTTPS.",
            ..
          },
      "definitions.textBinding" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                elementId | refs."definitions.elementId" | String,
                value | String,
                ..
              },
              Array Dyn
            ],
    }
    in
  {
      author
        | js2n.string.MaxLength 50
        | doc "Specifies the author of the web tile."
        | optional,
      badgeIcon
        | { "24" | refs."definitions.icon", .. }
        | doc "Specifies the location of the small tile icon. If not provided, the badging functionality is not enabled."
        | optional,
      contactEmail
        | js2n.string.MaxLength 100
        | doc "Provides contact info of the web tile author. Used for administrative purposes and analytics by Microsoft Band team."
        | optional,
      description
        | js2n.string.MaxLength 100
        | doc "Provides description about the web tile."
        | optional,
      icons
        | js2n.record.MaxProperties 8
        | { _ | refs."definitions.icon" }
        | doc "All PNG icons used by the tile within its pages must be provided here."
        | optional,
      manifestVersion
        | js2n.Enum [ 1 ]
        | doc "Defines the contract between the web tile developer and the Microsoft Health app. It must be set to 1 for the current release.",
      name | js2n.string.MaxLength 21 | doc "Defines the name of the web tile.",
      notifications
        | Array refs."definitions.notification"
        | doc "Creates notification that gets delivered when certain conditions are detected in the new web data."
        | optional,
      organization
        | js2n.string.MaxLength 100
        | doc "Specifies the organization associated with the web tile."
        | optional,
      pages
        | Array refs."definitions.page"
        | doc "Each tile consists of one or more pages, as described by the objects in this array. Each page object specifies the layout and content of the page.",
      refreshIntervalMinutes
        | std.number.Integer
        | js2n.number.Minimum 15
        | doc "Specifies the desired data refresh interval, in minutes. Refresh intervals shorter than 15 will not be honored. If not provided, it defaults to 30."
        | optional,
      resources
        | Array refs."definitions.resource"
        | doc "Each web tile must refer to one or more web resources. Each resource object describes a web data from which content for the tile will be extracted.",
      tileIcon
        | { "46" | refs."definitions.icon", .. }
        | doc "Specifies the location of the large tile icon.",
      tileTheme
        | {
          base | refs."definitions.color" | optional,
          highcontrast | refs."definitions.color" | optional,
          highlight | refs."definitions.color" | optional,
          lowlight | refs."definitions.color" | optional,
          muted | refs."definitions.color" | optional,
          secondary | refs."definitions.color" | optional,
          ..
        }
        | doc "Specifies the custom theme colors for the web tile."
        | optional,
      version
        | Number
        | doc "Indicates the version number of the web tile which will not be shown to users."
        | optional,
      versionString
        | js2n.string.MaxLength 10
        | doc "Indicates the web tile version as shown to users. If not provided, it displays the version."
        | optional,
      ..
    }