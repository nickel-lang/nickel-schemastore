# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.action_v2" =
        std.contract.Sequence
            [
              js2n.record.DependentContracts
                {
                  icons =
                    std.contract.not
                        (std.contract.any_of
                          [
                            js2n.Null,
                            Bool,
                            Number,
                            String,
                            js2n.record.Required [ "icons" ],
                            Array Dyn
                          ]),
                  name =
                    std.contract.not
                        (std.contract.any_of
                          [
                            js2n.Null,
                            Bool,
                            Number,
                            String,
                            js2n.record.Required [ "name" ],
                            Array Dyn
                          ]),
                  popup =
                    std.contract.not
                        (std.contract.any_of
                          [
                            js2n.Null,
                            Bool,
                            Number,
                            String,
                            js2n.record.Required [ "popup" ],
                            Array Dyn
                          ]),
                },
              {
                default_icon
                  | std.contract.any_of
                    [
                      String,
                      {
                        "19" | refs."definitions.uri" | String | optional,
                        "38" | refs."definitions.uri" | String | optional,
                        ..
                      }
                    ]
                  | optional,
                default_popup
                  | refs."definitions.uri"
                  | String
                  | doc "The popup appears when the user clicks the icon."
                  | optional,
                default_title
                  | String
                  | doc "Tooltip for the main toolbar icon."
                  | optional,
                ..
              }
            ],
      "definitions.action_v3" =
        std.contract.Sequence
            [
              js2n.record.DependentContracts
                {
                  icons =
                    std.contract.not
                        (std.contract.any_of
                          [
                            js2n.Null,
                            Bool,
                            Number,
                            String,
                            js2n.record.Required [ "icons" ],
                            Array Dyn
                          ]),
                  name =
                    std.contract.not
                        (std.contract.any_of
                          [
                            js2n.Null,
                            Bool,
                            Number,
                            String,
                            js2n.record.Required [ "name" ],
                            Array Dyn
                          ]),
                  popup =
                    std.contract.not
                        (std.contract.any_of
                          [
                            js2n.Null,
                            Bool,
                            Number,
                            String,
                            js2n.record.Required [ "popup" ],
                            Array Dyn
                          ]),
                },
              {
                default_icon
                  | {
                    "16" | refs."definitions.uri" | String | optional,
                    "24" | refs."definitions.uri" | String | optional,
                    "32" | refs."definitions.uri" | String | optional,
                    ..
                  }
                  | optional,
                default_popup
                  | refs."definitions.uri"
                  | String
                  | doc "The popup appears when the user clicks the icon."
                  | optional,
                default_title
                  | String
                  | doc "Tooltip for the main toolbar icon."
                  | optional,
                ..
              }
            ],
      "definitions.command" =
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
                        properties = { global = js2n.Const true, },
                        required = { global = true, },
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
                      description | String | optional,
                      global
                        | Bool
                        | doc "Whether this command should work while Chrome does not have focus. Keyboard shortcut suggestions for global commands are limited to Ctrl+Shift+[0..9]"
                        | optional,
                      suggested_key
                        | {
                          chromeos
                            | js2n.string.Matches
                              "^(Ctrl|Command|MacCtrl)\\+Shift\\+[0-9]"
                            | optional,
                          "default"
                            | js2n.string.Matches
                              "^(Ctrl|Command|MacCtrl)\\+Shift\\+[0-9]"
                            | optional,
                          linux
                            | js2n.string.Matches
                              "^(Ctrl|Command|MacCtrl)\\+Shift\\+[0-9]"
                            | optional,
                          mac
                            | js2n.string.Matches
                              "^(Ctrl|Command|MacCtrl)\\+Shift\\+[0-9]"
                            | optional,
                          windows
                            | js2n.string.Matches
                              "^(Ctrl|Command|MacCtrl)\\+Shift\\+[0-9]"
                            | optional,
                        }
                        | optional,
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
                      description | String | optional,
                      global
                        | Bool
                        | doc "Whether this command should work while Chrome does not have focus. Keyboard shortcut suggestions for global commands are limited to Ctrl+Shift+[0..9]"
                        | optional,
                      suggested_key
                        | {
                          chromeos
                            | js2n.string.Matches
                              "^(Ctrl|Command|MacCtrl|Alt|Option)\\+(Shift\\+)?[A-Z]"
                            | optional,
                          "default"
                            | js2n.string.Matches
                              "^(Ctrl|Command|MacCtrl|Alt|Option)\\+(Shift\\+)?[A-Z]"
                            | optional,
                          linux
                            | js2n.string.Matches
                              "^(Ctrl|Command|MacCtrl|Alt|Option)\\+(Shift\\+)?[A-Z]"
                            | optional,
                          mac
                            | js2n.string.Matches
                              "^(Ctrl|Command|MacCtrl|Alt|Option)\\+(Shift\\+)?[A-Z]"
                            | optional,
                          windows
                            | js2n.string.Matches
                              "^(Ctrl|Command|MacCtrl|Alt|Option)\\+(Shift\\+)?[A-Z]"
                            | optional,
                        }
                        | optional,
                    },
                    Array Dyn
                  ]),
              { _ | Dyn }
            ],
      "definitions.content_security_policy" = String,
      "definitions.glob_pattern" = String,
      "definitions.match_pattern" =
        js2n.string.Matches
            "^((\\*|http|https|file|ftp|chrome-extension):\\/\\/(\\*|\\*\\.[^\\/\\*]+|[^\\/\\*]+)?(\\/.*))|urn:(\\*|.*)|<all_urls>$",
      "definitions.mime_type" =
        js2n.string.Matches
            "^(?:application|audio|image|message|model|multipart|text|video)\\/[-+.\\w]+$",
      "definitions.permissions" =
        std.contract.Sequence
            [
              js2n.array.UniqueItems,
              Array (
                std.contract.any_of
                  [
                    std.contract.Sequence
                      [
                        std.enum.TagOrString,
                        [|
                          'webRequestBlocking,
                          'webRequest,
                          'webNavigation,
                          'webAuthenticationProxy,
                          'wallpaper,
                          'vpnProvider,
                          'unlimitedStorage,
                          'ttsEngine,
                          'tts,
                          'topSites,
                          'tabs,
                          'tabGroups,
                          'tabCapture,
                          '"system.storage",
                          '"system.memory",
                          '"system.display",
                          '"system.cpu",
                          'storage,
                          'sidePanel,
                          'sessions,
                          'search,
                          'scripting,
                          'runtime,
                          'readingList,
                          'proxy,
                          'processes,
                          'privacy,
                          'printingMetrics,
                          'printing,
                          'printerProvider,
                          'power,
                          'platformKeys,
                          'pageCapture,
                          'offscreen,
                          'notifications,
                          'nativeMessaging,
                          'management,
                          'loginState,
                          'idle,
                          '"identity.email",
                          'identity,
                          'history,
                          'geolocation,
                          'gcm,
                          'fontSettings,
                          'fileSystemProvider,
                          'fileBrowserHandler,
                          'favicon,
                          '"enterprise.platformKeys",
                          '"enterprise.networkingAttributes",
                          '"enterprise.hardwarePlatform",
                          '"enterprise.deviceAttributes",
                          '"downloads.ui",
                          '"downloads.open",
                          'downloads,
                          'documentScan,
                          'desktopCapture,
                          'dns,
                          'declarativeNetRequestFeedback,
                          'declarativeNetRequestWithHostAccess,
                          'declarativeNetRequest,
                          'declarativeContent,
                          'debugger,
                          'cookies,
                          'contextMenus,
                          'contentSettings,
                          'clipboardWrite,
                          'clipboardRead,
                          'certificateProvider,
                          'browsingData,
                          'bookmarks,
                          'background,
                          'audio,
                          'alarms,
                          'activeTab,
                          '"accessibilityFeatures.read",
                          '"accessibilityFeatures.modify"
                        |]
                      ],
                    String
                  ]
              )
            ],
      "definitions.scripts" =
        std.contract.Sequence
            [
              js2n.array.MinItems 1,
              js2n.array.UniqueItems,
              Array (std.contract.Sequence [ refs."definitions.uri", String ])
            ],
      "definitions.uri" = String,
      "definitions.version_string" =
        js2n.string.Matches "^(?:\\d{1,5}\\.){0,3}\\d{1,5}$",
      "definitions.web_resource" =
        {
            extension_ids
              | Array String
              | doc "A list of extension IDs, specifying which extensions can access the resources."
              | optional,
            matches
              | Array (
                std.contract.Sequence
                  [ refs."definitions.match_pattern", String ]
              )
              | doc "A list of URL match patterns specifying which pages can access the resources. Only the origin is used to match URLs; subdomains patterns (*.google.com) and paths are ignored."
              | optional,
            resources
              | Array (
                std.contract.Sequence
                  [ refs."definitions.glob_pattern", String ]
              )
              | doc "An array of resources to be exposed. Resources are specified as strings and may contain * for wildcard matches. For example, \"/images/*\" exposes everything in the extension's /images directory recursively while \"*.png\" exposes all PNG files.",
            use_dynamic_url
              | Bool
              | doc "If true, only allow resources to be accessible through dynamic ID. The dynamic ID is generated per session. It's regenerated on browser restart or extension reload."
              | optional,
            ..
          },
    }
    in
  std.contract.Sequence
      [
        js2n.record.DependentContracts
          {
            content_scripts =
              std.contract.not
                  (std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      js2n.record.Required [ "script_badge" ],
                      Array Dyn
                    ]),
            script_badge =
              std.contract.not
                  (std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      js2n.record.Required [ "content_scripts" ],
                      Array Dyn
                    ]),
          },
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
                  properties = { manifest_version = js2n.Const 3, },
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
              std.contract.Sequence
                [
                  js2n.record.DependentContracts
                    {
                      browser_action =
                        std.contract.not
                            (std.contract.any_of
                              [
                                js2n.Null,
                                Bool,
                                Number,
                                String,
                                js2n.record.Required [ "browser_action" ],
                                Array Dyn
                              ]),
                      page_action =
                        std.contract.not
                            (std.contract.any_of
                              [
                                js2n.Null,
                                Bool,
                                Number,
                                String,
                                js2n.record.Required [ "page_action" ],
                                Array Dyn
                              ]),
                    },
                  {
                    action
                      | refs."definitions.action_v3"
                      | { _ | Dyn }
                      | doc "Used to control the toolbar button for your extension in Chrome's UI."
                      | optional,
                    background
                      | js2n.record.DependentContracts
                        {
                          page =
                            std.contract.not
                                (std.contract.any_of
                                  [
                                    js2n.Null,
                                    Bool,
                                    Number,
                                    String,
                                    js2n.record.Required [ "scripts" ],
                                    Array Dyn
                                  ]),
                          scripts =
                            std.contract.not
                                (std.contract.any_of
                                  [
                                    js2n.Null,
                                    Bool,
                                    Number,
                                    String,
                                    js2n.record.Required [ "page" ],
                                    Array Dyn
                                  ]),
                        }
                      | {
                        service_worker
                          | String
                          | doc "The service worker js file."
                          | optional,
                        type | std.enum.TagOrString | [| 'module |] | optional,
                        ..
                      }
                      | doc "The background page is an HTML page that runs in the extension process. It exists for the lifetime of your extension, and only one instance of it at a time is active."
                      | optional,
                    content_security_policy
                      | {
                        extension_pages
                          | refs."definitions.content_security_policy"
                          | doc "This policy covers pages in your extension, including html files and service workers."
                          | optional,
                        sandbox
                          | refs."definitions.content_security_policy"
                          | doc "This policy covers any sandboxed extension pages that your extension uses."
                          | optional,
                        ..
                      }
                      | optional,
                    host_permissions
                      | refs."definitions.permissions"
                      | Array Dyn
                      | optional,
                    web_accessible_resources
                      | js2n.array.MinItems 1
                      | js2n.array.UniqueItems
                      | Array refs."definitions.web_resource"
                      | doc "An array of objects that declare resource access rules. Each object maps an array of extension resources to an array of URLs and/or extension IDs that can access those resources."
                      | optional,
                    ..
                  }
                ],
              Array Dyn
            ])
          (std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              std.contract.Sequence
                [
                  js2n.record.DependentContracts
                    {
                      browser_action =
                        std.contract.not
                            (std.contract.any_of
                              [
                                js2n.Null,
                                Bool,
                                Number,
                                String,
                                js2n.record.Required [ "page_action" ],
                                Array Dyn
                              ]),
                      page_action =
                        std.contract.not
                            (std.contract.any_of
                              [
                                js2n.Null,
                                Bool,
                                Number,
                                String,
                                js2n.record.Required [ "browser_action" ],
                                Array Dyn
                              ]),
                    },
                  {
                    background
                      | js2n.record.DependentContracts
                        {
                          page =
                            std.contract.not
                                (std.contract.any_of
                                  [
                                    js2n.Null,
                                    Bool,
                                    Number,
                                    String,
                                    js2n.record.Required [ "scripts" ],
                                    Array Dyn
                                  ]),
                          scripts =
                            std.contract.not
                                (std.contract.any_of
                                  [
                                    js2n.Null,
                                    Bool,
                                    Number,
                                    String,
                                    js2n.record.Required [ "page" ],
                                    Array Dyn
                                  ]),
                        }
                      | {
                        page
                          | refs."definitions.uri"
                          | doc "Specify the HTML of the background page."
                          | optional,
                        persistent
                          | Bool
                          | doc "When false, makes the background page an event page (loaded only when needed)."
                          | optional,
                        scripts
                          | refs."definitions.scripts"
                          | Array Dyn
                          | doc "A background page will be generated by the extension system that includes each of the files listed in the scripts property."
                          | optional,
                        ..
                      }
                      | doc "The background page is an HTML page that runs in the extension process. It exists for the lifetime of your extension, and only one instance of it at a time is active."
                      | optional,
                    browser_action
                      | refs."definitions.action_v2"
                      | { _ | Dyn }
                      | doc "Use browser actions to put icons in the main Google Chrome toolbar, to the right of the address bar. In addition to its icon, a browser action can also have a tooltip, a badge, and a popup."
                      | optional,
                    content_security_policy
                      | refs."definitions.content_security_policy"
                      | optional,
                    page_action
                      | refs."definitions.action_v2"
                      | { _ | Dyn }
                      | doc "Use the chrome.pageAction API to put icons inside the address bar. Page actions represent actions that can be taken on the current page, but that aren't applicable to all pages."
                      | optional,
                    web_accessible_resources
                      | js2n.array.MinItems 1
                      | js2n.array.UniqueItems
                      | Array refs."definitions.uri"
                      | doc "An array of strings specifying the paths (relative to the package root) of packaged resources that are expected to be usable in the context of a web page."
                      | optional,
                    ..
                  }
                ],
              Array Dyn
            ]),
        {
          chrome_settings_overrides | js2n.Always | optional,
          chrome_url_overrides
            | js2n.record.MaxProperties 1
            | {
              bookmarks
                | refs."definitions.uri"
                | doc "The page that appears when the user chooses the Bookmark Manager menu item from the Chrome menu or, on Mac, the Bookmark Manager item from the Bookmarks menu. You can also get to this page by entering the URL chrome://bookmarks."
                | optional,
              history
                | refs."definitions.uri"
                | doc "The page that appears when the user chooses the History menu item from the Chrome menu or, on Mac, the Show Full History item from the History menu. You can also get to this page by entering the URL chrome://history."
                | optional,
              newtab
                | refs."definitions.uri"
                | doc "The page that appears when the user creates a new tab or window. You can also get to this page by entering the URL chrome://newtab."
                | optional,
            }
            | doc "Override pages are a way to substitute an HTML file from your extension for a page that Google Chrome normally provides."
            | optional,
          commands
            | js2n.record.Record
              {
                additional = 'Some Dyn,
                patterns =
                  {
                      ".*" =
                        std.contract.Sequence
                            [ refs."definitions.command", { _ | Dyn } ],
                      "^_execute_browser_action$" =
                        std.contract.Sequence
                            [ refs."definitions.command", { _ | Dyn } ],
                      "^_execute_page_action$" =
                        std.contract.Sequence
                            [ refs."definitions.command", { _ | Dyn } ],
                    },
                properties = {},
                required = {},
              }
            | doc "Use the commands API to add keyboard shortcuts that trigger actions in your extension, for example, an action to open the browser action or send a command to the extension."
            | optional,
          content_pack | js2n.Always | optional,
          content_scripts
            | js2n.array.MinItems 1
            | js2n.array.UniqueItems
            | Array
              {
                all_frames
                  | Bool
                  | doc "Controls whether the content script runs in all frames of the matching page, or only the top frame."
                  | optional,
                css
                  | js2n.array.UniqueItems
                  | Array refs."definitions.uri"
                  | doc "The list of CSS files to be injected into matching pages. These are injected in the order they appear in this array, before any DOM is constructed or displayed for the page."
                  | optional,
                exclude_globs
                  | js2n.array.UniqueItems
                  | Array refs."definitions.glob_pattern"
                  | doc "Applied after matches to exclude URLs that match this glob. Intended to emulate the @exclude Greasemonkey keyword."
                  | optional,
                exclude_matches
                  | js2n.array.UniqueItems
                  | Array refs."definitions.match_pattern"
                  | doc "Excludes pages that this content script would otherwise be injected into."
                  | optional,
                include_globs
                  | js2n.array.UniqueItems
                  | Array refs."definitions.glob_pattern"
                  | doc "Applied after matches to include only those URLs that also match this glob. Intended to emulate the @include Greasemonkey keyword."
                  | optional,
                js
                  | refs."definitions.scripts"
                  | Array Dyn
                  | doc "The list of JavaScript files to be injected into matching pages. These are injected in the order they appear in this array."
                  | optional,
                match_about_blank
                  | Bool
                  | doc "Whether to insert the content script on about:blank and about:srcdoc."
                  | optional,
                matches
                  | js2n.array.MinItems 1
                  | js2n.array.UniqueItems
                  | Array refs."definitions.match_pattern"
                  | doc "Specifies which pages this content script will be injected into.",
                run_at
                  | std.enum.TagOrString
                  | [| 'document_idle, 'document_end, 'document_start |]
                  | doc "Controls when the files in js are injected."
                  | optional,
                world
                  | std.enum.TagOrString
                  | [| 'MAIN, 'ISOLATED |]
                  | doc "The JavaScript world for a script to execute within."
                  | optional,
              }
            | doc "Content scripts are JavaScript files that run in the context of web pages."
            | optional,
          current_locale | js2n.Always | optional,
          default_locale
            | String
            | doc "Specifies the subdirectory of _locales that contains the default strings for this extension."
            | optional,
          description
            | js2n.string.MaxLength 132
            | doc "A plain text description of the extension"
            | optional,
          devtools_page
            | refs."definitions.uri"
            | doc "A DevTools extension adds functionality to the Chrome DevTools. It can add new UI panels and sidebars, interact with the inspected page, get information about network requests, and more."
            | optional,
          externally_connectable
            | {
              accepts_tls_channel_id
                | Bool
                | doc "Indicates that the extension would like to make use of the TLS channel ID of the web page connecting to it. The web page must also opt to send the TLS channel ID to the extension via setting includeTlsChannelId to true in runtime.connect's connectInfo or runtime.sendMessage's options."
                | optional,
              ids | Array String | optional,
              matches | Array String | optional,
            }
            | doc "Declares which extensions, apps, and web pages can connect to your extension via runtime.connect and runtime.sendMessage."
            | optional,
          file_browser_handlers
            | js2n.array.MinItems 1
            | Array
              {
                default_title | String | doc "What the button will display.",
                file_filters
                  | js2n.array.MinItems 1
                  | Array String
                  | doc "Filetypes to match.",
                id
                  | String
                  | doc "Used by event handling code to differentiate between multiple file handlers",
              }
            | doc "You can use this API to enable users to upload files to your website."
            | optional,
          homepage_url
            | refs."definitions.uri"
            | doc "The URL of the homepage for this extension."
            | optional,
          icons
            | js2n.record.MinProperties 1
            | {
              "128"
                | refs."definitions.uri"
                | doc "Used during installation and in the Chrome Web Store."
                | optional,
              "16"
                | refs."definitions.uri"
                | doc "Used as the favicon for an extension's pages and infobar."
                | optional,
              "256"
                | refs."definitions.uri"
                | doc "Used during installation and in the Chrome Web Store."
                | optional,
              "48"
                | refs."definitions.uri"
                | doc "Used on the extension management page (chrome://extensions)."
                | optional,
              ..
            }
            | doc "One or more icons that represent the extension, app, or theme. Recommended format: PNG; also BMP, GIF, ICO, JPEG."
            | optional,
          "import" | js2n.Always | optional,
          incognito
            | std.enum.TagOrString
            | [| 'not_allowed, 'split, 'spanning |]
            | doc "Specify how this extension will behave if allowed to run in incognito mode."
            | optional,
          input_components
            | Array
              {
                description | String,
                id | String,
                language | String,
                layouts | Array Dyn,
                name | String,
                type | String,
              }
            | doc "Allows your extension to handle keystrokes, set the composition, and manage the candidate window."
            | optional,
          key
            | String
            | doc "This value can be used to control the unique ID of an extension, app, or theme when it is loaded during development."
            | optional,
          manifest_version
            | js2n.Enum [ 2, 3 ]
            | doc "One integer specifying the version of the manifest file format your package requires.",
          minimum_chrome_version
            | refs."definitions.version_string"
            | doc "The version of Chrome that your extension, app, or theme requires, if any."
            | optional,
          nacl_modules
            | js2n.array.MinItems 1
            | js2n.array.UniqueItems
            | Array
              {
                mime_type
                  | refs."definitions.mime_type"
                  | doc "The MIME type for which the Native Client module will be registered as content handler.",
                path
                  | refs."definitions.uri"
                  | doc "The location of a Native Client manifest (a .nmf file) within the extension directory.",
              }
            | doc "One or more mappings from MIME types to the Native Client module that handles each type."
            | optional,
          name | js2n.string.MaxLength 45 | doc "The name of the extension",
          oauth2
            | {
              client_id
                | String
                | doc "You need to register your app in the Google APIs Console to get the client ID.",
              scopes | js2n.array.MinItems 1 | Array String,
            }
            | doc "Use the Chrome Identity API to authenticate users: the getAuthToken for users logged into their Google Account and the launchWebAuthFlow for users logged into a non-Google account."
            | optional,
          offline_enabled
            | Bool
            | doc "Whether the app or extension is expected to work offline. When Chrome detects that it is offline, apps with this field set to true will be highlighted on the New Tab page."
            | optional,
          omnibox
            | {
              keyword
                | String
                | doc "The keyword that will trigger your extension.",
            }
            | doc "The omnibox API allows you to register a keyword with Google Chrome's address bar, which is also known as the omnibox."
            | optional,
          optional_permissions
            | refs."definitions.permissions"
            | Array Dyn
            | doc "Use the chrome.permissions API to request declared optional permissions at run time rather than install time, so users understand why the permissions are needed and grant only those that are necessary."
            | optional,
          options_page
            | refs."definitions.uri"
            | doc "To allow users to customize the behavior of your extension, you may wish to provide an options page. If you do, a link to it will be provided from the extensions management page at chrome://extensions. Clicking the Options link opens a new tab pointing at your options page."
            | optional,
          options_ui
            | {
              chrome_style
                | Bool
                | doc "If true, a Chrome user agent stylesheet will be applied to your options page. The default value is false, but we recommend you enable it for a consistent UI with Chrome."
                | optional,
              open_in_tab
                | Bool
                | doc "If true, your extension's options page will be opened in a new tab rather than embedded in chrome://extensions. The default is false, and we recommend that you don't change it. This is only useful to delay the inevitable deprecation of the old options UI! It will be removed soon, so try not to use it. It will break."
                | optional,
              page
                | String
                | doc "The path to your options page, relative to your extension's root.",
              ..
            }
            | doc "To allow users to customize the behavior of your extension, you may wish to provide an options page. If you do, an Options link will be shown on the extensions management page at chrome://extensions which opens a dialogue containing your options page."
            | optional,
          permissions
            | refs."definitions.permissions"
            | Array Dyn
            | doc "Permissions help to limit damage if your extension or app is compromised by malware. Some permissions are also displayed to users before installation, as detailed in Permission Warnings."
            | optional,
          platforms | js2n.Always | optional,
          requirements
            | {
              "3D"
                | {
                  features
                    | js2n.array.MinItems 1
                    | js2n.array.UniqueItems
                    | Array (
                      std.contract.Sequence
                        [ std.enum.TagOrString, [| 'webgl |] ]
                    )
                    | doc "List of the 3D-related features your app requires.",
                }
                | doc "The '3D' requirement denotes GPU hardware acceleration."
                | optional,
              plugins
                | { npapi | Bool, }
                | doc "Indicates if an app or extension requires NPAPI to run. This requirement is enabled by default when the manifest includes the 'plugins' field."
                | optional,
            }
            | doc "Technologies required by the app or extension. Hosting sites such as the Chrome Web Store may use this list to dissuade users from installing apps or extensions that will not work on their computer."
            | optional,
          sandbox
            | {
              content_security_policy
                | refs."definitions.content_security_policy"
                | optional,
              pages
                | js2n.array.MinItems 1
                | js2n.array.UniqueItems
                | Array refs."definitions.uri",
            }
            | doc "Defines an collection of app or extension pages that are to be served in a sandboxed unique origin, and optionally a Content Security Policy to use with them."
            | optional,
          short_name
            | js2n.string.MaxLength 12
            | doc "The short name is typically used where there is insufficient space to display the full name."
            | optional,
          signature | js2n.Always | optional,
          spellcheck | js2n.Always | optional,
          storage | js2n.Always | optional,
          system_indicator | js2n.Always | optional,
          tts_engine
            | {
              voices
                | js2n.array.MinItems 1
                | js2n.array.UniqueItems
                | Array
                  {
                    event_types
                      | js2n.array.MinItems 1
                      | js2n.array.UniqueItems
                      | Array (
                        std.contract.Sequence
                          [
                            std.enum.TagOrString,
                            [|
                              'error,
                              'end,
                              'marker,
                              'sentence,
                              'word,
                              'start
                            |]
                          ]
                      )
                      | doc "Events sent to update the client on the progress of speech synthesis.",
                    gender
                      | String
                      | doc "If your voice corresponds to a male or female voice, you can use this parameter to help clients choose the most appropriate voice for their application."
                      | optional,
                    lang
                      | String
                      | doc "Almost always, a voice can synthesize speech in just a single language. When an engine supports more than one language, it can easily register a separate voice for each language."
                      | optional,
                    voice_name
                      | String
                      | doc "Identifies the name of the voice and the engine used.",
                  }
                | doc "Voices the extension can synthesize.",
            }
            | doc "Register itself as a speech engine."
            | optional,
          update_url
            | refs."definitions.uri"
            | doc "If you publish using the Chrome Developer Dashboard, ignore this field. If you host your own extension or app: URL to an update manifest XML file."
            | optional,
          version
            | refs."definitions.version_string"
            | doc "One to four dot-separated integers identifying the version of this extension.",
          version_name
            | String
            | doc "In addition to the version field, which is used for update purposes, version_name can be set to a descriptive version string and will be used for display purposes if present."
            | optional,
          ..
        }
      ]