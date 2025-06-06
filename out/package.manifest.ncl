# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.contentApp" =
        {
            alias
              | js2n.string.MinLength 1
              | doc "A unique alias of the content app.",
            icon
              | String
              | doc "A CSS class for the icon to be used for the content app, e.g. `icon-calculator`.",
            name
              | js2n.string.MinLength 1
              | doc "The friendly name of the content app that appears under the icon.",
            show
              | js2n.array.UniqueItems
              | Array String
              | doc "A list of rules to show or hide the content app based on content, media and member types."
              | optional,
            view
              | String
              | doc "This is the full path to the HTML view for your content app.",
            weight
              | std.number.Integer
              | doc "The weight (sort order) of the content app. Default is 0, use values between -99 and +99 to appear between the existing Content (-100) and Info (100) apps."
              | optional,
          },
      "definitions.dashboard" =
        {
            access
              | js2n.array.MinItems 1
              | js2n.array.UniqueItems
              | Array (
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
                            js2n.record.Required [ "deny" ],
                            Array Dyn
                          ],
                        std.contract.any_of
                          [
                            js2n.Null,
                            Bool,
                            Number,
                            String,
                            js2n.record.Required [ "grant" ],
                            Array Dyn
                          ]
                      ],
                    {
                      deny
                        | String
                        | doc "A user group alias who is denied access."
                        | optional,
                      grant
                        | String
                        | doc "A user group alias who is granted access."
                        | optional,
                      ..
                    }
                  ]
              )
              | doc "A list of what user groups aliases are granted or denied permission to see the dashboard. All users will have access if not specified."
              | optional,
            alias
              | js2n.string.MinLength 1
              | doc "The alias of the dashboard which can be queried via the Dashboard Service API.",
            sections
              | js2n.array.MinItems 1
              | js2n.array.UniqueItems
              | Array (js2n.string.MinLength 1)
              | doc "A list of section/application aliases that the dashboard should be visible in.",
            view
              | js2n.string.MinLength 1
              | doc "This is the full path to the HTML view for your dashboard.",
            weight
              | std.number.Integer
              | doc "The weight (sort order) of the dashboard. Defaults to 100 if not specified."
              | optional,
          },
      "definitions.editor" =
        {
            hideLabel
              | Bool
              | doc "If set to true, this hides the label for the property editor when used on a document type."
              | optional,
            isReadOnly
              | Bool
              | doc "If set to true, this makes the property editor read-only."
              | optional,
            supportsReadOnly
              | Bool
              | doc "If set to true, this will disable the default read-only overlay and requires the editor to implement support for this instead."
              | optional,
            validation
              | { _ | Dyn }
              | doc "Object describing required validators on the editor."
              | optional,
            valueType
              | std.enum.TagOrString
              | [| 'INT, 'TEXT, 'DATETIME, 'JSON, 'STRING |]
              | doc "This is the type of data you want your property editor to save to the database."
              | optional,
            view
              | String
              | doc "This is the full path to the HTML view for your property editor."
              | optional,
          },
      "definitions.editors" =
        {
            alias
              | String
              | doc "This must be a unique alias to your property editor.",
            defaultConfig
              | js2n.record.MinProperties 1
              | doc "Provides a collection of default configuration values, in cases the property editor is not configured or is used a parameter editor, which doesn't allow configuration. The object is a key/value collection and must match the prevalue fields keys."
              | optional,
            editor | refs."definitions.editor" | { _ | Dyn },
            group
              | String
              | doc "The group to place this editor in within the 'Select Editor' dialog. Use a new group name or alternatively use an existing one such as `Pickers`."
              | optional,
            icon
              | String
              | doc "A CSS class for the icon to be used in the 'Select Editor' dialog, e.g. `icon-autofill`."
              | optional,
            isParameterEditor
              | Bool
              | doc "Enables the property editor as a macro parameter editor."
              | optional,
            name
              | String
              | doc "The friendly name of the property editor, shown in the backoffice.",
            ..
          },
      "definitions.fields" =
        std.contract.Sequence
            [
              js2n.array.MinItems 1,
              Array (
                std.contract.Sequence
                  [
                    js2n.record.MinProperties 1,
                    {
                      description
                        | String
                        | doc "A more detailed description for the user."
                        | optional,
                      key
                        | js2n.string.MinLength 1
                        | doc "A unique key for the prevalue field."
                        | optional,
                      label
                        | String
                        | doc "The user friendly label for the prevalue."
                        | optional,
                      validation
                        | Array { type | String | optional, .. }
                        | optional,
                      view
                        | String
                        | doc "The type of editor to use for this prevalue field."
                        | optional,
                      ..
                    }
                  ]
              )
            ],
      "definitions.gridEditor" =
        {
            alias
              | String
              | doc "This must be a unique alias to your grid editor.",
            config
              | js2n.record.MinProperties 1
              | {
                markup
                  | String
                  | doc "If used with the textstring view, this allows wrapping the value in custom markup, e.g. `<h2>#value#</h2>`."
                  | optional,
                size
                  | {
                    height
                      | std.number.Integer
                      | doc "Height of image in pixels."
                      | optional,
                    width
                      | std.number.Integer
                      | doc "Width of image in pixels."
                      | optional,
                    ..
                  }
                  | doc "If used with the media view, this accepts height and width key/value pairs for cropping."
                  | optional,
                style
                  | String
                  | doc "If used with the textstring view, this accepts inline CSS to style the textstring box, e.g. `font-size: 30px; line-height: 40px; font-weight: bold;`."
                  | optional,
                ..
              }
              | doc "Configuration for the grid editor. Can be used with textstring and media views or for custom configuration properties."
              | optional,
            icon
              | String
              | doc "A CSS class for the icon to be used in the 'Select Editor' dialog, e.g. `icon-autofill`."
              | optional,
            name
              | String
              | doc "The friendly name of the grid editor, shown in the backoffice.",
            render
              | String
              | doc "This is front end Razor view for your grid editor. Accepts full path to a custom view, e.g. `~/App_Plugins/FolderName/editor.cshtml`."
              | optional,
            view
              | String
              | doc "This is backoffice HTML view for your grid editor. Either refers to one of the built-in view (textstring, rte, embed, macro, media) or the full path to a custom view, e.g. `~/App_Plugins/FolderName/editor.html`.",
            ..
          },
      "definitions.preValues" =
        {
            prevalues
              | {
                fields | refs."definitions.fields" | Array Dyn | optional,
                ..
              }
              | doc "This is an object that stores an array of prevalue fields or options to configure your property editor."
              | optional,
            ..
          },
      "definitions.section" =
        {
            alias
              | js2n.string.MinLength 1
              | doc "The alias of the section/application which can be queried via the Section Service API.",
            name
              | js2n.string.MinLength 1
              | doc "The friendly name of the section/application, shown in the backoffice.",
          },
    }
    in
  {
      allowPackageTelemetry
        | Bool
        | doc "Allows you to opt-out of including your package in telemetry reports if set to false, defaults to true."
        | optional,
      bundleOptions
        | std.enum.TagOrString
        | [| 'Independent, 'None, 'Default |]
        | doc "Default: The assets will be bundled with the typical packages bundle. None: The assets in the package will not be processed at all and will all be requested as individual assets in debug and production. Independent: The packages assets will be processed as it's own separate bundle (in debug, files will not be processed)."
        | optional,
      contentApps
        | js2n.array.MinItems 1
        | js2n.array.UniqueItems
        | Array refs."definitions.contentApp"
        | doc "Returns an array of Content Apps to add to the backoffice."
        | optional,
      css
        | js2n.array.UniqueItems
        | Array String
        | doc "A list of CSS files with full path to load in the backoffice."
        | optional,
      dashboards
        | js2n.array.MinItems 1
        | js2n.array.UniqueItems
        | Array refs."definitions.dashboard"
        | doc "Returns an array of dashboards, each object specified a dashboard to make available in the backoffice."
        | optional,
      gridEditors
        | js2n.array.MinItems 1
        | Array refs."definitions.gridEditor"
        | doc "Returns an array of grid editor objects, each object specifies a grid editor to make available in the Grid Layout property editor."
        | optional,
      id
        | String
        | doc "The (NuGet) package ID, shown in the backoffice and included in package telemetry as unique identifier (supported in v12+). Also used to retrieve the assembly informational version if no explicit `version` and `versionAssemlbyName` is set."
        | optional,
      javascript
        | js2n.array.UniqueItems
        | Array String
        | doc "A list of JavaScript files with full path to load in the backoffice."
        | optional,
      name
        | String
        | doc "The (friendly) package name, shown in the backoffice and included in package telemetry. If not specified, uses the directory name instead."
        | optional,
      packageView
        | js2n.string.MinLength 1
        | doc "The full path to an HTML view for your package to help users maintain configuration data when viewing installed packages in the backoffice."
        | optional,
      parameterEditors
        | js2n.array.MinItems 1
        | Array refs."definitions.editors"
        | doc "Returns an array of editor objects, each object specifies an editor to make available to macro parameters as an editor component. These editors work solely as parameter editors, and will not show up on the property editors list."
        | optional,
      propertyEditors
        | js2n.array.MinItems 1
        | Array (
          std.contract.Sequence
            [ refs."definitions.editors", refs."definitions.preValues" ]
        )
        | doc "Returns an array of editor objects, each object specifies an editor to make available to data types as an editor component. These editors are primarily property editors for content, media and members, but can also be made available as a macro parameter editor."
        | optional,
      sections
        | js2n.array.MinItems 1
        | js2n.array.UniqueItems
        | Array refs."definitions.section"
        | doc "Returns an array of sections/applications to add to the backoffice."
        | optional,
      version
        | String
        | doc "The package version, shown in the backoffice and included in package telemetry. If not specified, uses the `versionAssemblyName` or `id` to retrieve the assembly informational version."
        | optional,
      versionAssemblyName
        | String
        | doc "The assembly name to retrieve the informational version, if no explicit `version` is set. If not specified, uses the `id` instead (supported in v12+)."
        | optional,
      ..
    }