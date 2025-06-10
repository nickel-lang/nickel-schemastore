# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.defaultDimensions" = { _ | Dyn },
      "definitions.expectedDimensions" =
        {
            height | std.number.Integer | optional,
            width | std.number.Integer | optional,
            ..
          },
      "definitions.extensionPoints" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [|
                'USER_PROFILE_SETTINGS,
                'USER_CARD,
                'PROJECT_SETTINGS,
                'MARKDOWN,
                'MAIN_MENU_ITEM,
                'ISSUE_OPTIONS_MENU_ITEM,
                'ISSUE_FIELD_PANEL_LAST,
                'ISSUE_FIELD_PANEL_FIRST,
                'ISSUE_BELOW_SUMMARY,
                'ISSUE_ABOVE_ACTIVITY_STREAM,
                'HELPDESK_CHANNEL,
                'DASHBOARD_WIDGET,
                'ARTICLE_OPTIONS_MENU_ITEM,
                'ARTICLE_BELOW_SUMMARY,
                'ARTICLE_ABOVE_ACTIVITY_STREAM,
                'ADMINISTRATION_MENU_ITEM
              |]
            ],
      "definitions.fractionValue" = js2n.string.Matches "^[1-9]\\d*fr$",
      "definitions.icon" = js2n.string.Matches ".*\\.(svg|png|jpg|jpeg|ico)$",
      "definitions.permissions" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [|
                'UPDATE_WORK_ITEM,
                'READ_WORK_ITEM,
                'SHARE_WATCH_FOLDER,
                'DELETE_WATCH_FOLDER,
                'UPDATE_WATCH_FOLDER,
                'CREATE_WATCH_FOLDER,
                'READ_HIDDEN_STUFF,
                'DELETE_NOT_OWN_COMMENT,
                'UPDATE_NOT_OWN_COMMENT,
                'DELETE_COMMENT,
                'UPDATE_COMMENT,
                'READ_COMMENT,
                'CREATE_COMMENT,
                'DELETE_ATTACHMENT_ISSUE,
                'UPDATE_ATTACHMENT_ISSUE,
                'CREATE_ATTACHMENT_ISSUE,
                'VIEW_VOTERS,
                'UPDATE_WATCHERS,
                'VIEW_WATCHERS,
                'APPLY_COMMANDS_SILENTLY,
                'PRIVATE_UPDATE_ISSUE,
                'LINK_ISSUE,
                'DELETE_ISSUE,
                'CREATE_ISSUE,
                'UPDATE_ISSUE,
                'PRIVATE_READ_ISSUE,
                'READ_ISSUE,
                'ADMIN_UPDATE_APP,
                'ADMIN_READ_APP,
                'MANAGE_ROLE,
                'READ_ROLE,
                'DELETE_USER,
                'CREATE_USER,
                'UPDATE_USER,
                'READ_USER,
                'READ_USER_BASIC,
                'UPDATE_PROFILE,
                'DELETE_ORGANIZATION,
                'CREATE_ORGANIZATION,
                'UPDATE_ORGANIZATION,
                'READ_ORGANIZATION,
                'DELETE_USERGROUP,
                'UPDATE_USERGROUP,
                'CREATE_USERGROUP,
                'READ_USERGROUP,
                'DELETE_PROJECT,
                'UPDATE_PROJECT,
                'READ_PROJECT,
                'CREATE_PROJECT,
                'READ_PROJECT_BASIC
              |]
            ],
      "definitions.pixelOrPercentValue" =
        js2n.string.Matches "^(\\d+px|\\d+%$)",
      "definitions.semver" =
        std.contract.Sequence
            [
              js2n.string.MaxLength 14,
              js2n.string.MinLength 5,
              js2n.string.Matches
                "^(?:0|[1-9]\\d*)\\.(?:0|[1-9]\\d*)\\.(?:0|[1-9]\\d*)$"
            ],
      "definitions.settingsSchemaPath" = js2n.string.Matches ".*\\.json$",
      "definitions.url" =
        std.contract.Sequence
            [ js2n.string.MaxLength 255, js2n.string.MinLength 1 ],
    }
    in
  {
      "$schema"
        | String
        | doc "The URL for the JSON schema that defines the structure of the manifest file."
        | optional,
      changeNotes
        | String
        | doc "A description of changes available in a specific version of the app. This information is only displayed in the JetBrains Marketplace."
        | optional,
      description
        | String
        | doc "The description of the app. You can see this description in the app details on the Apps administration page."
        | optional,
      icon
        | refs."definitions.icon"
        | doc "The name of the file with the app icon. Store this file at the root level of the app package."
        | optional,
      iconDark
        | refs."definitions.icon"
        | doc "The name of the file with the app icon for the dark theme. Store this file at the root level of the app package. If you don't include a separate icon for the dark theme, YouTrack will use the icon image for both dark and light themes."
        | optional,
      maxYouTrackVersion
        | refs."definitions.semver"
        | String
        | doc "The maximum YouTrack version with which the app is compatible. If you attempt to upload or install an app in a YouTrack installation that runs a version higher than the value specified in the manifest, the operation fails."
        | optional,
      minYouTrackVersion
        | refs."definitions.semver"
        | String
        | doc "The minimum YouTrack version with which the app is compatible. If you attempt to upload or install an app in a YouTrack installation that runs a version lower than the value specified in the manifest, the operation fails."
        | optional,
      name
        | js2n.string.Matches "^[a-z0-9-_.~]+$"
        | doc "The name of the app. This is used as a unique identifier in YouTrack.",
      title
        | String
        | doc "The title of the app. This is a user-friendly name that is shown in the JetBrains Marketplace and the YouTrack UI."
        | optional,
      url
        | refs."definitions.url"
        | String
        | doc "The website for the app. For example, a GitHub page or landing page for your company or product."
        | optional,
      vendor
        | {
          email | String | optional,
          name | String,
          url | refs."definitions.url" | String | optional,
          ..
        }
        | doc "An object that contains the description of the app vendor."
        | optional,
      version
        | refs."definitions.semver"
        | String
        | doc "The version number assigned to the app package in major.minor.bugfix format. The default value is '0.0.0'."
        | optional,
      visual | Bool | doc "" | optional,
      widgets
        | js2n.array.MinItems 1
        | Array (
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
                        properties =
                          { extensionPoint = js2n.Const "HELPDESK_CHANNEL", },
                        required = { extensionPoint = true, },
                      },
                    Array Dyn
                  ])
                (std.contract.any_of
                  [
                    js2n.Null,
                    Bool,
                    Number,
                    String,
                    js2n.record.Required [ "description", "iconPath" ],
                    Array Dyn
                  ]) js2n.Always,
              js2n.IfThenElse
                (std.contract.not
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
                            { extensionPoint = js2n.Const "MARKDOWN", },
                          required = { extensionPoint = true, },
                        },
                      Array Dyn,
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      js2n.record.Record
                        {
                          additional = 'Some Dyn,
                          patterns = {},
                          properties =
                            { extensionPoint = js2n.Const "DASHBOARD_WIDGET", },
                          required = { extensionPoint = true, },
                        },
                      Array Dyn
                    ]))
                (std.contract.any_of
                  [
                    js2n.Null,
                    Bool,
                    Number,
                    String,
                    {
                      expectedDimensions
                        | refs."definitions.expectedDimensions"
                        | optional,
                      ..
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
                      settingsSchemaPath
                        | refs."definitions.settingsSchemaPath"
                        | optional,
                      ..
                    },
                    Array Dyn
                  ]),
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
                          { extensionPoint = js2n.Const "MARKDOWN", },
                        required = { extensionPoint = true, },
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
                      defaultDimensions
                        | refs."definitions.defaultDimensions"
                        | {
                          height
                            | refs."definitions.pixelOrPercentValue"
                            | optional,
                          width
                            | refs."definitions.pixelOrPercentValue"
                            | optional,
                          ..
                        }
                        | optional,
                      ..
                    },
                    Array Dyn
                  ]) js2n.Always,
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
                          { extensionPoint = js2n.Const "DASHBOARD_WIDGET", },
                        required = { extensionPoint = true, },
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
                      defaultDimensions
                        | refs."definitions.defaultDimensions"
                        | {
                          height | refs."definitions.fractionValue" | optional,
                          width | refs."definitions.fractionValue" | optional,
                          ..
                        }
                        | optional,
                      ..
                    },
                    Array Dyn
                  ]) js2n.Always,
              {
                description
                  | String
                  | doc "The description of the widget."
                  | optional,
                extensionPoint
                  | refs."definitions.extensionPoints"
                  | doc "The location in the YouTrack UI where the widget will be embedded.",
                iconPath
                  | refs."definitions.icon"
                  | doc "The relative path to the file with the icon for the widget inside the app package."
                  | optional,
                indexPath
                  | js2n.string.Matches ".*index\\.html(\\?.*)?$"
                  | doc "The path to the index.html file that defines the content and structure of the widget. The path is relative to the widgets folder inside the app package.",
                key
                  | js2n.string.Matches "^[a-z0-9-_.~]+$"
                  | doc "The unique key identifier of the widget. This is a mandatory field that must be unique within the app.",
                name
                  | String
                  | doc "The name of the widget shown in the app settings in YouTrack.",
                "permissions:"
                  | js2n.array.MinItems 1
                  | js2n.array.UniqueItems
                  | Array refs."definitions.permissions"
                  | doc "The set of permissions required to view and use the widget. Depending on the app scope, these permissions can be required at the global or project level."
                  | optional,
                ..
              }
            ]
        )
        | doc "An array of widget objects included in the app. Each widget represents a frontend extension."
        | optional,
      ..
    }