# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.ColorSet" =
        {
            background | String | optional,
            background-image | String | optional,
            card-background | String | optional,
            card-shadow | String | optional,
            highlight-hover | String | optional,
            highlight-primary | String | optional,
            highlight-secondary | String | optional,
            link | String | optional,
            link-hover | String | optional,
            text | String | optional,
            text-header | String | optional,
            text-subtitle | String | optional,
            text-title | String | optional,
          },
      "definitions.Colors" =
        {
            dark | refs."definitions.ColorSet" | { _ | Dyn } | optional,
            light | refs."definitions.ColorSet" | { _ | Dyn } | optional,
          },
      "definitions.Defaults" =
        {
            colorTheme
              | std.enum.TagOrString
              | [| 'dark, 'light, 'auto |]
              | doc "One of 'auto', 'light', or 'dark'"
              | optional,
            layout
              | std.enum.TagOrString
              | [| 'list, 'columns |]
              | doc "Layout of the dashboard, either 'columns' or 'list'"
              | optional,
          },
      "definitions.Headers" = {  .. },
      "definitions.Hotkey" =
        { search | String | doc "hotkey for search, e.g. Shift", },
      "definitions.Item" =
        {
            icon
              | String
              | doc "Fontawesome icon for the item, alternative for logo"
              | optional,
            keywords
              | String
              | doc "Optional keyword used for searching purpose"
              | optional,
            logo
              | String
              | doc "Path to a logo. Alternatively a fa icon can be provided"
              | optional,
            name | String | optional,
            subtitle | String | optional,
            tag | String | doc "Show tag" | optional,
            tagstyle | String | doc "Styleclass for the tag" | optional,
            target
              | String
              | doc "html tag target attribute like _blank for a new page"
              | optional,
            type
              | String
              | doc "Optional, loads a specific component that provides extra features. MUST MATCH a file name (without file extension) available in `src/components/services`"
              | optional,
            url | String | doc "Url of this item" | optional,
            ..
          },
      "definitions.Link" =
        {
            icon | String | doc "Fontawesome icon" | optional,
            name | String | doc "Name as seen in the navbar" | optional,
            target
              | String
              | doc "html tag target attribute like _blank for a new page"
              | optional,
            url
              | String
              | doc "Url of the link. When #filename is used, it is a link to another homer page, while 'filename' is the name of the config file",
          },
      "definitions.Mapping" = {  .. },
      "definitions.Message" =
        {
            content
              | String
              | doc "HTML content for the message box"
              | optional,
            icon
              | String
              | doc "Fontawesome icon for the message box"
              | optional,
            mapping
              | refs."definitions.Mapping"
              | { _ | Dyn }
              | doc "Mapping for the content loaded from the URL"
              | optional,
            refreshInterval
              | std.number.Integer
              | doc "The refresh interval in milliseconds for reloading the message url"
              | optional,
            style
              | String
              | doc "See https://bulma.io/documentation/components/message/#colors for styling options"
              | optional,
            title | String | doc "Title of the message box" | optional,
            url | String | optional,
          },
      "definitions.Proxy" =
        {
            headers
              | refs."definitions.Headers"
              | { _ | Dyn }
              | doc "send custom headers when fetching service specific data. Can also be set on a service level."
              | optional,
            useCredentials
              | Bool
              | doc "# send cookies & authorization headers when fetching service specific data. Set to `true` if you use an authentication proxy. Can be overrided on service level. "
              | optional,
          },
      "definitions.Service" =
        {
            class
              | String
              | doc "Optional css class to add on the service group. Example 'highlight-purple'"
              | optional,
            icon | String | doc "Fontawesome icon for the service" | optional,
            items
              | Array (
                std.contract.Sequence [ refs."definitions.Item", { _ | Dyn } ]
              ),
            logo
              | String
              | doc "A path to an image can also be provided. Note that icon take precedence if both icon and logo are set."
              | optional,
            name | String | doc "Service name" | optional,
          },
    }
    in
  {
      colors | refs."definitions.Colors" | optional,
      columns
        | String
        | doc "'auto' or number (must be a factor of 12: 1, 2, 3, 4, 6, 12)"
        | optional,
      connectivityCheck
        | Bool
        | doc "# whether you want to display a message when the apps are not accessible anymore (VPN disconnected for example). You should set it to true when using an authentication proxy, it also reloads the page when a redirection is detected when checking connectivity."
        | optional,
      defaults | refs."definitions.Defaults" | optional,
      documentTitle
        | String
        | doc "Title of the document. When not filled, title (and subtitle will be used)"
        | optional,
      externalConfig
        | String
        | doc "Use external configuration file. Using this will ignore remaining config in this file externalConfig: https://example.com/server-luci/config.yaml"
        | optional,
      footer
        | std.contract.any_of [ Bool, String ]
        | doc "footer Line content. HTML is supported. Set false if you want to hide it."
        | optional,
      header | Bool | doc "Show header, default is true" | optional,
      hotkey
        | refs."definitions.Hotkey"
        | doc "Define hotkeys, for example for search"
        | optional,
      icon | String | doc "Dashboard icon" | optional,
      links
        | Array refs."definitions.Link"
        | doc "Links in the navigation bar"
        | optional,
      logo | String | doc "Path to logo image" | optional,
      message | refs."definitions.Message" | doc "Messagebox" | optional,
      proxy
        | refs."definitions.Proxy"
        | doc "Optional: Proxy / hosting option"
        | optional,
      services | Array refs."definitions.Service" | doc "Services" | optional,
      stylesheet
        | Array String
        | doc "Will load custom CSS files. Especially useful for custom icon sets. Entries are paths to the stylesheets"
        | optional,
      subtitle | String | doc "Subtitle of the dashboard" | optional,
      theme
        | String
        | doc "'default' or one of the themes available in 'src/assets/themes'"
        | optional,
      title | String | doc "Title of the dashboard" | optional,
      ..
    }