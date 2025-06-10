# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.hostDefinition" =
        std.contract.Sequence
            [
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
                        properties = { app = js2n.Const "PS", },
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
                      app | js2n.Always | optional,
                      data
                        | js2n.record.MinProperties 1
                        | {
                          apiVersion
                            | std.number.Integer
                            | js2n.OneOf [ js2n.Const 1, js2n.Const 2 ]
                            | doc m%"
                              Specifies the execution model for plug-in actions that modify the document state
                              https://developer.adobe.com/photoshop/uxp/2022/guides/uxp_guide/uxp-misc/manifest-v4/photoshop-manifest/#apiversion
                            "%
                            | optional,
                          enableMenuRecording
                            | Bool
                            | doc m%"
                              Determines whether panel menu items may be recorded into an action by the user
                              https://developer.adobe.com/photoshop/uxp/2022/guides/uxp_guide/uxp-misc/manifest-v4/photoshop-manifest/#enablemenurecording
                            "%
                            | optional,
                          loadEvent
                            | js2n.OneOf
                              [ js2n.Const "use", js2n.Const "startup" ]
                            | String
                            | doc m%"
                              Specifies at which point the plug-in is initialized
                              https://developer.adobe.com/photoshop/uxp/2022/guides/uxp_guide/uxp-misc/manifest-v4/photoshop-manifest/#loadevent
                            "%
                            | optional,
                        }
                        | doc m%"
                          Photoshop-specific configuration for executing this plug-in
                          https://developer.adobe.com/photoshop/uxp/2022/guides/uxp_guide/uxp-misc/manifest-v4/photoshop-manifest/
                        "%
                        | optional,
                      maxVersion | js2n.Always | optional,
                      minVersion | js2n.Always | optional,
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
                      app | js2n.Always | optional,
                      maxVersion | js2n.Always | optional,
                      minVersion | js2n.Always | optional,
                    },
                    Array Dyn
                  ]),
              {
                app
                  | js2n.OneOf
                    [ js2n.Const "PS", js2n.Const "ID", js2n.Const "XD" ]
                  | String
                  | doc "The host program",
                maxVersion
                  | js2n.string.Matches "^\\d{1,2}\\.\\d{1,2}(\\.\\d{1,2})?$"
                  | doc "The maximum host version supported by this plug-in. At least two segments (\"x.y\") must be specified"
                  | optional,
                minVersion
                  | js2n.string.Matches "^\\d{1,2}\\.\\d{1,2}(\\.\\d{1,2})?$"
                  | doc "The minimum host version required to run this plug-in. At least two segments must be specified",
                ..
              }
            ],
      "definitions.iconDefinition" =
        {
            height
              | std.number.Integer
              | js2n.number.Minimum 1
              | doc "The icon's height in logical pixels",
            path
              | String
              | doc "Relative base path of the icon files, excluding the \"@1x\" scale descriptor. For example, use \"icons/icons.png\" for the true file names \"icons/icons@1x.png\" and \"icons/icons@2x.png\"",
            scale
              | js2n.array.MinItems 1
              | js2n.array.UniqueItems
              | Array Number
              | doc "A list of image scales provided. The image file names must suffix the base name with \"@(scale)x\"; for example, \"icons/icon@1x.png\" and \"icons/icon@2x.png\" for scales [1, 2]"
              | optional,
            species
              | js2n.OneOf
                [
                  js2n.Const [ "generic" ],
                  js2n.Const [ "toolbar" ],
                  js2n.Const [ "pluginList" ]
                ]
              | Array Dyn
              | doc "Specifies the contexts in which this icon should be displayed"
              | optional,
            theme
              | js2n.OneOf
                [
                  std.contract.Sequence
                    [
                      js2n.array.MinItems 1,
                      js2n.array.UniqueItems,
                      js2n.array.ArrayOf
                        (std.contract.Sequence
                          [
                            std.enum.TagOrString,
                            [| 'darkest, 'dark, 'light, 'lightest |]
                          ])
                    ],
                  js2n.Const [ "all" ]
                ]
              | doc "A list of user interface themes that contrast well enough with this icon"
              | optional,
            width
              | std.number.Integer
              | js2n.number.Minimum 1
              | doc "The icon width in logical pixels",
          },
      "definitions.localizedString" =
        js2n.record.Record
            {
              additional = 'Some String,
              patterns = {},
              properties = { "default" = String, },
              required = { "default" = true, },
            },
      "definitions.sizeSpecifier" =
        {
            height
              | std.number.Integer
              | js2n.number.Minimum 1
              | doc "The height dimension in pixels",
            width
              | std.number.Integer
              | js2n.number.Minimum 1
              | doc "The width dimension in pixels",
          },
    }
    in
  {
      entrypoints
        | Array (
          std.contract.Sequence
            [
              js2n.OneOf
                [
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
                            properties = { type = js2n.Const "command", },
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
                        js2n.record.Record
                          {
                            additional = 'None,
                            patterns = {},
                            properties =
                              {
                                  id = js2n.Always,
                                  label = js2n.Always,
                                  shortcut =
                                    js2n.record.Record
                                        {
                                          additional = 'Some Dyn,
                                          patterns = {},
                                          properties =
                                            {
                                                mac =
                                                  std.contract.Sequence
                                                      [
                                                        js2n.string.Matches
                                                          "^((Cmd|Ctrl|Opt|Alt|Shift)\\+)+[a-zA-Z0-9]$",
                                                        js2n.string.Matches
                                                          "Cmd|Ctrl"
                                                      ],
                                                win =
                                                  std.contract.Sequence
                                                      [
                                                        js2n.string.Matches
                                                          "^((Ctrl|Alt|Shift)\\+)+[a-zA-Z0-9]$",
                                                        js2n.string.Matches
                                                          "Ctrl"
                                                      ],
                                              },
                                          required = {},
                                        },
                                  type = js2n.Always,
                                },
                            required = {},
                          },
                        Array Dyn
                      ]) js2n.Never,
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
                            properties = { type = js2n.Const "panel", },
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
                        js2n.record.Record
                          {
                            additional = 'None,
                            patterns = {},
                            properties =
                              {
                                  icons =
                                    js2n.array.ArrayOf
                                        (std.contract.Sequence
                                          [
                                            refs."definitions.iconDefinition",
                                            js2n.record.Record
                                              {
                                                additional = 'Some Dyn,
                                                patterns = {},
                                                properties =
                                                  {
                                                      species =
                                                        js2n.Const
                                                            [ "toolbar" ],
                                                    },
                                                required = {},
                                              }
                                          ]),
                                  id = js2n.Always,
                                  label = js2n.Always,
                                  maximumSize =
                                    refs."definitions.sizeSpecifier",
                                  minimumSize =
                                    refs."definitions.sizeSpecifier",
                                  preferredDockedSize =
                                    refs."definitions.sizeSpecifier",
                                  preferredFloatingSize =
                                    refs."definitions.sizeSpecifier",
                                  shortcut = js2n.Never,
                                  type = js2n.Always,
                                },
                            required = {},
                          },
                        Array Dyn
                      ]) js2n.Never,
                  std.contract.any_of
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
                                type =
                                  std.contract.not
                                      (std.contract.Sequence
                                        [
                                          std.enum.TagOrString,
                                          [| 'panel, 'command |]
                                        ]),
                              },
                          required = {},
                        },
                      Array Dyn
                    ]
                ],
              {
                id
                  | String
                  | doc "A unique identifier associated with this entry point",
                label
                  | std.contract.any_of
                    [ String, refs."definitions.localizedString" ]
                  | doc "A textual label associated with this entry point that will be displayed to the user",
                type | std.enum.TagOrString | [| 'panel, 'command |],
                ..
              }
            ]
        )
        | doc "A list of commands and panels that this plug-in provides",
      featureFlags
        | {
          enableFillAsCustomAttribute
            | Bool
            | doc "Enables the usage of CSS variables (custom attributes) for the \"fill\" attribute in SVG elements"
            | optional,
          enableSWCSupport
            | Bool
            | doc m%"
              Enables the usage of Spectrum Web Components as custom HTML elements
              https://developer.adobe.com/photoshop/uxp/2022/uxp-api/reference-spectrum/swc/
            "%
            | optional,
          ..
        }
        | doc m%"
          Enables specific experimental features for this plug-in
          https://developer.adobe.com/indesign/uxp/plugins/concepts/manifest/#featureflags
        "%
        | optional,
      host
        | std.contract.any_of
          [
            std.contract.Sequence
              [ refs."definitions.hostDefinition", { _ | Dyn } ],
            Array (
              std.contract.Sequence
                [ refs."definitions.hostDefinition", { _ | Dyn } ]
            )
          ]
        | doc "The host program(s) this plug-in is intended to run on. An array may only be provided during development; a single host must be specified when submitting to the plug-in marketplace"
        | optional,
      icons
        | Array (
          std.contract.Sequence
            [
              refs."definitions.iconDefinition",
              { species | std.contract.Equal [ "pluginList" ] | optional, .. }
            ]
        )
        | doc "An icon representing the plug-in as a whole, adapted to different themes. Must be of the \"pluginList\" species and 24x24 in size"
        | optional,
      id
        | String
        | doc m%"
          A unique identifier for this plug-in. A globally unique ID may be obtained from Adobe's Developer Distribution portal
          https://developer.adobe.com/distribute/home
        "%,
      main
        | String
        | doc "Relative path to the plug-in initialization file, which must be either a JavaScript program or an HTML document"
        | optional,
      manifestVersion
        | std.number.Integer
        | std.contract.Equal 5
        | doc "The version of this UXP manifest file (5)",
      name
        | String
        | doc "The name of this plug-in. It should match the project name from Adobe's Developer Distribution portal",
      requiredPermissions
        | {
          allowCodeGenerationFromStrings
            | Bool
            | doc "Allows the plug-in to evaluate code from strings, including JavaScript eval() and HTML inline event handlers"
            | optional,
          clipboard
            | js2n.OneOf [ js2n.Const "read", js2n.Const "readAndWrite" ]
            | String
            | doc "Allows the plug-in to access the clipboard"
            | optional,
          enableUserInfo
            | Bool
            | doc m%"
              This feature is only available from UXP 7.3. Allows the plug-in to identify the current user's Creative Cloud account
              https://developer.adobe.com/photoshop/uxp/2022/guides/uxp_guide/uxp-misc/manifest-v5/#guid
            "%
            | optional,
          ipc
            | {
              enablePluginCommunication | Bool | doc "Enables this permission",
            }
            | doc "Allows the plug-in to communicate with other plug-ins"
            | optional,
          launchProcess
            | {
              extensions
                | Array String
                | doc "A list of allowed file extensions that the plug-in may launch when using the \"file://\" schema",
              schemes
                | Array String
                | doc "A list of URI schemes that the plug-in may launch",
            }
            | doc "Allows the plug-in to launch external processes through associated schemes and file extensions"
            | optional,
          localFileSystem
            | js2n.OneOf
              [
                js2n.Const "plugin",
                js2n.Const "request",
                js2n.Const "fullAccess"
              ]
            | String
            | doc "Allows the plug-in to access the local file system"
            | optional,
          network
            | {
              domains
                | std.contract.any_of [ Array String, std.contract.Equal "all" ]
                | doc "A list of host names that the plug-in may send requests to, or \"all\"",
            }
            | doc "Allows the plug-in to access the network"
            | optional,
          webview
            | {
              allow | std.contract.Equal "yes" | doc "Enables this permission",
              domains
                | Array String
                | doc "A list of host names that the plug-in may request within WebViews",
            }
            | doc m%"
              This feature is only available from UXP 6.0. Allows the plug-in to use WebViews
              https://developer.adobe.com/photoshop/uxp/2022/guides/uxp_guide/uxp-misc/manifest-v5/#webviews
            "%
            | optional,
        }
        | optional,
      strings
        | { _ | refs."definitions.localizedString" }
        | doc m%"
          Specifies a set of localized strings that may be reused in other parts of the manifest file by specifying the string name as a value (for example "'label': 'my-string'"), such as panel menus and command names
          https://developer.adobe.com/indesign/uxp/plugins/concepts/manifest/#stringsdefinition
        "%
        | optional,
      version
        | js2n.string.Matches "^\\d{1,2}(\\.\\d{1,2})?(\\.\\d{1,2})?$"
        | doc "The current version number of this plug-in, in the format \"major.minor.patch\", where \"minor\" and \"patch\" are optional",
    }