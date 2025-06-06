# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      _metadata
        | {
          major_version
            | std.number.Integer
            | doc "An integer that specifies the major version of the manifest schema to target."
            | optional,
          minor_version
            | std.number.Integer
            | doc "An integer that specifies the minor version of the manifest schema to target."
            | optional,
        }
        | doc m%"
          Settings that describe the manifest.
          https://api.slack.com/reference/manifests#metadata
        "%
        | optional,
      display_information
        | {
          background_color
            | js2n.string.Matches "^#(?:[\\da-fA-F]{3}){1,2}$"
            | doc "A hex color value that specifies the background color used on hovercards that display information about your app. Can be 3-digit (#000) or 6-digit (#000000) hex values. Once an app has set a background color value, it cannot be removed, only updated."
            | optional,
          description
            | js2n.string.MaxLength 140
            | doc "A short description of the app for display to users."
            | optional,
          long_description
            | js2n.string.MaxLength 4000
            | doc "A longer version of the description of the app."
            | optional,
          name | js2n.string.MaxLength 35 | doc "The name of the app.",
        }
        | doc m%"
          Settings that describe parts of an app's appearance within Slack. If you're distributing the app via the App Directory, read our listing guidelines to pick the best values for these settings.
          https://api.slack.com/reference/manifests#display
        "%,
      features
        | {
          app_home
            | {
              home_tab_enabled
                | Bool
                | doc "Whether or not the Home tab is enabled."
                | optional,
              messages_tab_enabled
                | Bool
                | doc "Whether or not the Messages tab in your App Home is enabled."
                | optional,
              messages_tab_read_only_enabled
                | Bool
                | doc "Whether or not the users can send messages to your app in the Messages tab of your App Home."
                | optional,
            }
            | doc "App Home configuration."
            | optional,
          bot_user
            | {
              always_online
                | Bool
                | doc "Whether or not the bot user will always appear to be online."
                | optional,
              display_name
                | js2n.string.MaxLength 80
                | js2n.string.Matches "^[\\w\\-.]+$"
                | doc "The display name of the bot user. Allowed characters: a-z, 0-9, -, _, and .",
            }
            | doc "Bot user configuration."
            | optional,
          shortcuts
            | Array
              {
                callback_id
                  | js2n.string.MaxLength 255
                  | doc "The callback_id of this shortcut.",
                description
                  | js2n.string.MaxLength 150
                  | doc "A short description of this shortcut.",
                name | String | doc "The name of the shortcut.",
                type
                  | std.enum.TagOrString
                  | [| 'global, 'message |]
                  | doc "Specifies which type of shortcut is being described.",
              }
            | doc "Shortcuts configuration."
            | optional,
          slash_commands
            | Array
              {
                command
                  | js2n.string.MaxLength 32
                  | js2n.string.Matches "^/.*$"
                  | doc "The actual slash command. Should include the leading / character",
                description
                  | js2n.string.MaxLength 2000
                  | doc "A description of the slash command that will be displayed to users.",
                should_escape
                  | Bool
                  | doc "Whether or not channels, users, and links typed with the slash command should be escaped."
                  | optional,
                url
                  | String
                  | doc "The full https URL that acts as the slash command's request URL."
                  | optional,
                usage_hint
                  | js2n.string.MaxLength 1000
                  | doc "A short usage hint about the slash command for users."
                  | optional,
              }
            | doc "Slash commands configuration."
            | optional,
          unfurl_domains
            | js2n.array.MaxItems 5
            | Array String
            | doc "Valid unfurl domains to register. Please consult the unfurl docs for a list of domain requirements."
            | optional,
          workflow_steps
            | js2n.array.MaxItems 10
            | Array
              {
                callback_id
                  | js2n.string.MaxLength 50
                  | doc "The callback_id of the workflow step.",
                name
                  | js2n.string.MaxLength 50
                  | doc "The name of the workflow step.",
              }
            | doc "Workflow steps configuration."
            | optional,
        }
        | doc m%"
          Features section of the app config pages.
          https://api.slack.com/reference/manifests#features
        "%
        | optional,
      oauth_config
        | {
          redirect_urls
            | js2n.array.MaxItems 1000
            | Array String
            | doc "OAuth redirect URLs."
            | optional,
          scopes
            | {
              bot
                | js2n.array.MaxItems 255
                | Array String
                | doc "Bot scopes to request upon app installation."
                | optional,
              user
                | js2n.array.MaxItems 255
                | Array String
                | doc "User scopes to request upon app installation."
                | optional,
            }
            | doc "Permission scopes configuration."
            | optional,
        }
        | doc m%"
          OAuth configuration for the app.
          https://api.slack.com/reference/manifests#oauth
        "%
        | optional,
      settings
        | {
          allowed_ip_address_ranges
            | Array String
            | doc "IP addresses that conform to the Allowed IP Ranges feature"
            | optional,
          event_subscriptions
            | {
              bot_events
                | js2n.array.MaxItems 100
                | Array String
                | doc "The event types you want to the app to subscribe to."
                | optional,
              request_url
                | String
                | doc "The full https URL that acts as the Events API request URL. If set, you'll need to manually verify the Request URL in the App Manifest section of App Management."
                | optional,
              user_events
                | js2n.array.MaxItems 100
                | Array String
                | doc "The event types you want to the app to subscribe to on behalf of authorized users."
                | optional,
            }
            | doc "Events API configuration for the app."
            | optional,
          interactivity
            | {
              is_enabled
                | Bool
                | doc "Whether or not interactivity features are enabled.",
              message_menu_options_url
                | String
                | doc "The full https URL that acts as the interactive Options Load URL."
                | optional,
              request_url
                | String
                | doc "The full https URL that acts as the interactive Request URL."
                | optional,
            }
            | doc "Interactivity configuration for the app."
            | optional,
          org_deploy_enabled
            | Bool
            | doc "Whether or not org-wide deploy is enabled."
            | optional,
          socket_mode_enabled
            | Bool
            | doc "Whether or not Socket Mode is enabled."
            | optional,
          token_rotation_enabled
            | Bool
            | doc "Whether or not token rotation is enabled for access tokens."
            | optional,
        }
        | doc m%"
          Settings section of the app config pages.
          https://api.slack.com/reference/manifests#settings
        "%
        | optional,
    }