# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      browsh
        | {
          custom_css
            | String
            | doc "Custom CSS to apply to all loaded tabs"
            | optional,
          use_experimental_text_visibility
            | Bool
            | doc "Possibly better handling of overlapping text in web pages. If a page seems to have text that shouldn't be visible, if it should be behind another element for example, then this experimental feature should help. It can also be toggled in-browser with F6"
            | optional,
          websocket-port | std.number.Integer | optional,
          ..
        }
        | doc "Browsh internals"
        | optional,
      browsh_supporter
        | std.enum.TagOrString
        | [| '"♥", '"I have shown my support for Browsh" |]
        | doc "By showing your support you can disable the app's branding and nags to donate"
        | optional,
      default_search_engine_base
        | String
        | doc "The base query when a non-URL is entered into the URL bar"
        | optional,
      firefox
        | {
          path | String | doc "The path to your Firefox binary" | optional,
          preferences
            | Array String
            | doc "Config that you might usually set through Firefox's 'about:config' page Note that string must be wrapped in quotes"
            | optional,
          profile
            | String
            | doc "Browsh has its own profile, separate from the normal user's. But you can change that"
            | optional,
          use-existing
            | Bool
            | doc "Don't let Browsh launch Firefox, but make it try to connect to an existing one. Note it will need to have been launched with the '--marionette' flag"
            | optional,
          with-gui
            | String
            | doc "Launch Firefox in with its visible GUI window. Useful for setting up the Browsh profile."
            | optional,
          ..
        }
        | optional,
      mobile_user_agent
        | String
        | doc "The mobile user agent for forcing web pages to use their mobile layout"
        | optional,
      startup-url
        | String
        | doc "The page to show at startup. Browsh will fail to boot if this URL is not accessible"
        | optional,
      ..
    }