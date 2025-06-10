# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      Actions
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
                      js2n.record.Record
                        {
                          additional = 'Some Dyn,
                          patterns = {},
                          properties = { Icon = String, },
                          required = { Icon = true, },
                        },
                      Array Dyn
                    ],
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
                            { VisibleInActionsList = js2n.Const false, },
                          required = { VisibleInActionsList = true, },
                        },
                      Array Dyn
                    ]
                ],
              {
                Controllers
                  | Array (
                    std.contract.Sequence
                      [ std.enum.TagOrString, [| 'Encoder, 'Keypad |] ]
                  )
                  | doc "Specifies an array of controllers."
                  | optional,
                DisableAutomaticStates
                  | Bool
                  | doc "Determines whether the state of the action should automatically toggle when the user presses the action; only applies to actions that have two states defined."
                  | optional,
                DisableCaching
                  | Bool
                  | doc "Boolean to disable image caching."
                  | optional,
                Encoder
                  | {
                    Icon
                      | String
                      | doc "The default icon found in the property inspector, dial stack image, and the layout. If no icon is set Stream Deck will use the action list icon."
                      | optional,
                    StackColor
                      | String
                      | doc "The color that will be used in the dial stack as background color."
                      | optional,
                    TriggerDescription
                      | {
                        LongTouch
                          | String
                          | doc "Describe the long touch."
                          | optional,
                        Push
                          | String
                          | doc "Describe the encoder push."
                          | optional,
                        Rotate
                          | String
                          | doc "Describe the rotation."
                          | optional,
                        Touch | String | doc "Describe the touch." | optional,
                        ..
                      }
                      | doc "Used to describe encoder actions in the property inspector."
                      | optional,
                    background
                      | String
                      | doc "The default background image for the encoders touch display slot."
                      | optional,
                    layout
                      | String
                      | doc "A string containing the name of a built-in layout or the partial path to a JSON file with a custom layout definition. You can dynamically change the layout with with setFeedbackLayout event. The default layout is the Icon Layout ($X1)."
                      | optional,
                    ..
                  }
                  | doc "Used to describe and configure the dial and display segment on Stream Deck +."
                  | optional,
                Icon
                  | String
                  | doc "The relative path to a PNG image without the .png extension. This image is displayed in the actions list. The PNG image should be a 20pt x 20pt image. You should provide @1x and @2x versions of the image. The Stream Deck application takes care of loading the appropriate version of the image. This icon is not required for actions not visible in the actions list (`VisibleInActionsList` set to false)."
                  | optional,
                Name
                  | String
                  | doc "The name of the action. This string is visible to the user in the actions list.",
                PropertyInspectorPath
                  | String
                  | doc "This can override PropertyInspectorPath member from the plugin if you wish to have a different PropertyInspectorPath based on the action. The relative path to the Property Inspector HTML file if your plugin wants to display some custom settings in the Property Inspector."
                  | optional,
                States
                  | Array
                    {
                      FontFamily
                        | std.enum.TagOrString
                        | [|
                          'Wingdings,
                          'Webdings,
                          'Verdana,
                          '"Trebuchet MS",
                          '"Times New Roman",
                          'Tahoma,
                          'Symbol,
                          '"Microsoft Sans Serif",
                          'Impact,
                          'Georgia,
                          '"Courier New",
                          'Courier,
                          '"Comic Sans MS",
                          '"Arial Black",
                          'Arial
                        |]
                        | doc "Default font family for the title."
                        | optional,
                      FontSize
                        | String
                        | doc "Default font size for the title."
                        | optional,
                      FontStyle
                        | std.enum.TagOrString
                        | [| '"Bold Italic", 'Italic, 'Bold, 'Regular |]
                        | doc "Default font style for the title. Note that some fonts might not support all values."
                        | optional,
                      FontUnderline
                        | Bool
                        | doc "Boolean to have an underline under the title."
                        | optional,
                      Image
                        | String
                        | doc "The default image for the state. When a user sets a custom image on the primary state, Stream Deck will automatically set the secondary state to a darker version of the same icon.",
                      MultiActionImage
                        | String
                        | doc "This can be used if you want to provide a different image for the state when the action is displayed in a Multi-Action."
                        | optional,
                      Name
                        | String
                        | doc "Displayed in the dropdown menu in the Multi-action. For example, the Game Capture Record action has Start and Stop. If the name is not provided, the state will not appear in the Multi-Action."
                        | optional,
                      ShowTitle
                        | String
                        | doc "Boolean to show or hide the title"
                        | optional,
                      Title | String | doc "Default title." | optional,
                      TitleAlignment
                        | std.enum.TagOrString
                        | [| 'middle, 'bottom, 'top |]
                        | doc "Default title vertical alignment."
                        | optional,
                      TitleColor
                        | String
                        | doc "Default title color."
                        | optional,
                      ..
                    },
                SupportedInMultiActions
                  | Bool
                  | doc "Boolean to prevent the action from being used in a Multi Action."
                  | optional,
                Tooltip
                  | String
                  | doc "The string is displayed as a tooltip when the user leaves the mouse over your action in the actions list."
                  | optional,
                UUID
                  | js2n.string.Matches "^[a-z0-9\\-.]"
                  | doc "The unique identifier of the action. It must be a uniform type identifier (UTI) that contains only lowercase alphanumeric characters (a-z, 0-9), hyphen (-), and period (.). The string must be in reverse-DNS format. For example, if your domain is `elgato.com` and you create a plugin named `Hello` with the action `My Action`, you could assign the string `com.elgato.hello.myaction` as your action's Unique Identifier.",
                UserTitleEnabled
                  | Bool
                  | doc "Boolean to disable the title field for users in the property inspector."
                  | optional,
                VisibleInActionsList
                  | Bool
                  | doc "Boolean to hide the action in the actions list. This can be used for a plugin that only works with a specific profile."
                  | optional,
                ..
              }
            ]
        )
        | doc "Specifies an array of actions. A plugin can indeed have one or multiple actions. For example, the “Game Capture” plugin has six actions: Scene, Record, Screenshot, Flashback Recording, Stream, Live Commentary.",
      ApplicationsToMonitor
        | {
          mac | Array String | optional,
          windows | Array String | optional,
          ..
        }
        | doc "List of application identifiers to monitor (applications launched or terminated). See the `applicationDidLaunch` and `applicationDidTerminate` events."
        | optional,
      Author
        | String
        | doc "The author of the plugin. This string is displayed to the user in the Stream Deck store."
        | optional,
      Category
        | String
        | doc "The name of the custom category in which the actions should be listed. This string is visible to the user in the actions list. If you don't provide a category, the actions will appear inside a \"Custom\" category."
        | optional,
      CategoryIcon
        | String
        | doc "The relative path to a PNG image without the .png extension. This image is used in the actions list. The PNG image should be a 28pt x 28pt image. You should provide @1x and @2x versions of the image. The Stream Deck application takes care of loading the appropriate version of the image."
        | optional,
      CodePath
        | String
        | doc "The relative path to the HTML/binary file containing the plugin code.",
      CodePathMac | String | doc "Override CodePath for macOS." | optional,
      CodePathWin | String | doc "Override CodePath for Windows." | optional,
      DefaultWindowSize
        | js2n.array.MaxItems 2
        | js2n.array.MinItems 2
        | Array Number
        | doc "Specify the default window size when a Javascript plugin or Property Inspector opens a window using window.open(). The default value is [500, 650]."
        | optional,
      Description
        | String
        | doc "Provides a general description of what the plugin does. This string is displayed to the user in the Stream Deck store.",
      Icon
        | String
        | doc "The relative path to an image without the extension. This image is displayed in the Stream Deck marketplace. SVGs are preferred. If not, the PNG image should be 288 x 288 px, and you should provide @1x and @2x (288 x 288 px & 576 x 576 px respectively). The Stream Deck application takes care of loading the appropriate version of the image.",
      Name
        | String
        | doc "The name of the plugin. This string is displayed to the user in the Stream Deck store.",
      OS
        | js2n.array.MinItems 1
        | Array
          {
            MinimumVersion
              | js2n.string.Matches "^\\d+(\\.\\d+)*$"
              | doc "The minimum version of the operating system that the plugin requires. Example: For Windows 10, you can use `10`. For macOS 10.11, you can use `10.11`.",
            Platform | std.enum.TagOrString | [| 'windows, 'mac |],
            ..
          }
        | doc "The list of operating systems & versions supported by the plugin.",
      Profiles
        | Array
          {
            DeviceType
              | std.number.Integer
              | js2n.number.Maximum 7
              | js2n.number.Minimum 0
              | doc "Type of device.",
            DontAutoSwitchWhenInstalled
              | Bool
              | doc "Boolean to prevent Stream Deck from automatically switching to this profile when installed."
              | optional,
            Name | String | doc "The filename of the profile.",
            Readonly
              | Bool
              | doc "Boolean to mark the profile as read-only."
              | optional,
            ..
          }
        | doc "Specifies an array of profiles. A plugin can have one or more profiles proposed to the user on installation. This lets you create full screen plugins."
        | optional,
      PropertyInspectorPath
        | String
        | doc "The relative path to the Property Inspector HTML file if your plugin wants to display some custom settings in the Property Inspector. If missing, the plugin will have an empty Property Inspector."
        | optional,
      SDKVersion | js2n.number.Minimum 1 | doc "The current SDK version is 2.",
      Software
        | {
          MinimumVersion
            | js2n.string.Matches "^\\d+(\\.\\d+)*$"
            | doc "The minimum version of the operating system that the plugin requires. For Windows 10, you can use “10”. For macOS 10.11, you can use “10.11”."
            | optional,
          ..
        }
        | doc "Indicates which version of the Stream Deck application is required to install the plugin.",
      URL
        | String
        | doc "A site to provide more information about the plugin."
        | optional,
      Version | String | doc "Plugin's semantic version (1.0.0).",
      ..
    }