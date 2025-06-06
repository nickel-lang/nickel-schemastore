# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  std.contract.any_of
      [
        js2n.Null,
        Bool,
        Number,
        String,
        {
          appAssets
            | Array (
              std.contract.any_of
                [
                  js2n.Null,
                  Bool,
                  Number,
                  String,
                  {
                    alias
                      | String
                      | doc "Name of the asset. The name will be used in launchExternalProcess to launch the asset.",
                    args
                      | String
                      | doc "The default command line arguments for the aforementioned target."
                      | optional,
                    src
                      | String
                      | doc "URL to a zip file containing the package files (executables, dlls, etc…).",
                    target
                      | String
                      | doc "Specifies default executable to launch. This option can be overridden in launchExternalProcess."
                      | optional,
                    version
                      | String
                      | doc "Version of the package. To force new updates, increment the version.",
                  },
                  Array Dyn
                ]
            )
            | doc "Set this object to co-deploy native apps along with your app."
            | optional,
          assets_url
            | String
            | doc "If an application specifies a valid \"assetsUrl\", then that \"assetsUrl\" will be used as the base portion of the URL instead of the OpenFin default, https://developer.openfin.co/release/."
            | optional,
          devtools_port
            | Number
            | doc "You can access the Chromium development tools by navigating to the selected port, i.e.: http://localhost:9090."
            | optional,
          dialogSettings
            | std.contract.any_of
              [
                js2n.Null,
                Bool,
                Number,
                String,
                {
                  bgColor
                    | Number
                    | doc "Determines the color of the dialog. Color value is a decimal representation of a 32 bit number (A,R,G,B). For instance : FF00FF00 or 4278255360 is fully opaque green."
                    | optional,
                  logo
                    | String
                    | doc "Determines the logo or image in the progress dialog. The logo should be a semi-transparent PNG. 100×25 pixels."
                    | optional,
                  progressBarBgColor
                    | Number
                    | doc "Determines the background color of the area where the progress bar is displayed."
                    | optional,
                  progressBarBorderColor
                    | Number
                    | doc "Determines the border color of the progress bar."
                    | optional,
                  progressBarFillColor
                    | Number
                    | doc "Determines the color of the progress bar."
                    | optional,
                  textColor
                    | Number
                    | doc "Determines the color of the text displayed above the progress bar location."
                    | optional,
                },
                Array Dyn
              ]
            | doc "An optional object to customize the appearance of the RVM progress dialog."
            | optional,
          licenseKey
            | String
            | doc "A string used as a licensing identifier for each customer/contract (RVM 2.7+). The OpenFin team will generate this for your production app."
            | optional,
          runtime
            | std.contract.any_of
              [
                js2n.Null,
                Bool,
                Number,
                String,
                {
                  arguments
                    | String
                    | doc "Command line arguments to set when launching the runtime. The OpenFin Runtime supports Chromium command line switches e.g.: \"– –disable-accelerated-compositing – –enable-threaded-compositing\" for a complete list of values please refer to current Chromium switches."
                    | optional,
                  fallbackVersion
                    | String
                    | doc "The RVM will fallback to this version if it fails to retrieve the desired Runtime version, assuming this version is already installed. (RVM 2.8+)"
                    | optional,
                  forceLatest
                    | Bool
                    | doc "If true, forces the runtime to always get the latest runtime version before launching (prevents background installs)."
                    | optional,
                  version
                    | js2n.OneOf
                      [
                        std.contract.any_of
                          [
                            js2n.Null,
                            Bool,
                            Number,
                            js2n.string.Matches "(\\d{1,3}\\.){3}\\d{1,3}",
                            { _ | Dyn },
                            Array Dyn
                          ],
                        std.contract.Sequence
                          [
                            std.enum.TagOrString,
                            [| 'staging, 'stable, 'canary, 'beta, 'alpha |]
                          ]
                      ]
                    | String
                    | doc "Specifies what version of the runtime the app should use. The value can either be a specific version or a release channel (e.g. alpha).",
                },
                Array Dyn
              ]
            | doc "Determines which runtime version the app will use.",
          shortcut
            | std.contract.any_of
              [
                js2n.Null,
                Bool,
                Number,
                String,
                {
                  company
                    | String
                    | doc "Company name for the application shortcut.",
                  description
                    | String
                    | doc "A short description of the application shortcut. Will be shown when hovering over the shortcut icon."
                    | optional,
                  "force"
                    | Bool
                    | doc "If set to true, a desktop icon is always created on application start-up (even when user has deleted it). If set to false, a desktop icon is created on initial application launch but not created on subsequent application launches."
                    | optional,
                  icon
                    | String
                    | doc "Location for the icon image to be used when installing the application shortcut.",
                  name
                    | String
                    | doc "Name of the application to display with the shortcut.",
                  startMenuRootFolder
                    | String
                    | doc "Set this value with a folder path (e.g. foo/bar) and the RVM will create the start menu shortcut under RootFolder/Company/App."
                    | optional,
                  target
                    | Array (
                      std.contract.Sequence
                        [
                          std.enum.TagOrString,
                          [| 'start-menu, 'desktop, 'automatic-start-up |]
                        ]
                    )
                    | doc "Locations for where the application shortcut is added on the desktop owner's machine. Available options are \"desktop\", \"start-menu\" and \"automatic-start-up\". The default is start-menu and desktop."
                    | optional,
                  uninstall-shortcut
                    | Bool
                    | doc "Removes the Start menu uninstall shortcut."
                    | optional,
                },
                Array Dyn
              ]
            | doc "Settings for the app's desktop shortcut",
          splashScreenImage
            | String
            | doc "You can specify an image to display while the runtime is loading. It takes any image file (including semi-transparent PNGs)."
            | optional,
          startup_app
            | std.contract.any_of
              [
                js2n.Null,
                Bool,
                Number,
                String,
                {
                  accelerator
                    | std.contract.any_of
                      [
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        {
                          devtools
                            | Bool
                            | doc "If true, allows the Dev Tools to be opened with the keyboard shortcut: Ctrl+Shift+i."
                            | optional,
                          reload
                            | Bool
                            | doc "If true, allows a window to reload with the keyboard shortcuts: Ctrl+r or F5."
                            | optional,
                          reloadIgnoreCache
                            | Bool
                            | doc "If true, allows a window to reload while ignoring the cache with the keyboard shortcuts: Ctrl+Shift or Shift+F5."
                            | optional,
                          zoom
                            | Bool
                            | doc "If true, enables the Zoom keyboard shortcuts: Ctrl+ (Zoom in), Ctrl- (Zoom out) and Ctrl+0 (Restore to 100%)."
                            | optional,
                        },
                        Array Dyn
                      ]
                    | doc "The name of this builder instance, which can be specified in the only/except property of a provisioner."
                    | optional,
                  alwaysOnTop
                    | Bool
                    | doc "A flag to always position the window at the top of the window stack."
                    | optional,
                  applicationIcon
                    | String
                    | doc "A URL for the icon to be shown in the window title bar."
                    | optional,
                  autoShow
                    | Bool
                    | doc "A flag to automatically show the Window when it is created."
                    | optional,
                  childWindowAutoAuth
                    | Bool
                    | doc "Allow non API created child windows, such as window.open, to authenticate."
                    | optional,
                  clearChildSubscriptionsOnReload
                    | Bool
                    | doc "Clear InterApplication subscriptions of all child windows when main window is reloaded."
                    | optional,
                  contextMenu
                    | Bool
                    | doc "A flag to show the context menu when right-clicking on a window. Gives access to the Developer Console for the Window."
                    | optional,
                  cornerRounding
                    | std.contract.any_of
                      [
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        {
                          height
                            | Number
                            | doc "This defines and applies rounded corners for the window."
                            | optional,
                          width
                            | Number
                            | doc "This defines and applies rounded corners for the window."
                            | optional,
                        },
                        Array Dyn
                      ]
                    | doc "This defines and applies rounded corners for the window."
                    | optional,
                  defaultCentered
                    | Bool
                    | doc "Specifies that the window will be positioned in the center of the primary monitor when loaded for the first time on a machine. When the window corresponding to that id is loaded again, the position from before the window was closed is used."
                    | optional,
                  defaultHeight
                    | Number
                    | doc "The default height of the window. Specifies the height of the window when loaded for the first time on a machine. When the window corresponding to that id is loaded again, the height is taken to be the last height of the window before it was closed."
                    | optional,
                  defaultLeft
                    | Number
                    | doc "The default left position of the window. Specifies the position of the left of the window when loaded for the first time on a machine. When the window corresponding to that id is loaded again, the value of left is taken to be the last value before the window was closed."
                    | optional,
                  defaultTop
                    | Number
                    | doc "The default top position of the window. Specifies the position of the top of the window when loaded for the first time on a machine. When the window corresponding to that id is loaded again, the value of top is taken to be the last value before the window was closed."
                    | optional,
                  defaultWidth
                    | Number
                    | doc "The default width of the window. Specifies the width of the window when loaded for the first time on a machine. When the window corresponding to that id is loaded again, the width is taken to be the last width of the window before it was closed."
                    | optional,
                  description
                    | String
                    | doc "The name for the window which must be unique within the context of the invoking Application."
                    | optional,
                  frame | Bool | doc "A flag to show the frame." | optional,
                  icon
                    | String
                    | doc "A URL for the icon to be shown in the window title bar."
                    | optional,
                  maxHeight
                    | Number
                    | doc "The maximum height of a window. Will default to the OS defined value if set to -1."
                    | optional,
                  maxWidth
                    | Number
                    | doc "The maximum width of a window. Will default to the OS defined value if set to -1."
                    | optional,
                  maximizable
                    | Bool
                    | doc "A flag that lets the window be maximized."
                    | optional,
                  minHeight
                    | Number
                    | doc "The minimum height of a window."
                    | optional,
                  minWidth
                    | Number
                    | doc "The minimum width of a window."
                    | optional,
                  name
                    | String
                    | doc "The name for the window which must be unique within the context of the invoking Application.",
                  nonPersistent
                    | Bool
                    | doc "A flag to configure the application as a non persistent. Runtime exits if there are no persistent apps running."
                    | optional,
                  opacity
                    | Number
                    | doc "A flag that specifies how transparent the window will be. This value is clamped between 0.0 and 1.0."
                    | optional,
                  permissions
                    | {
                      ExternalWindow
                        | { wrap | Bool | optional, .. }
                        | optional,
                      System
                        | {
                          downloadAsset | Bool | optional,
                          getAllExternalWindows | Bool | optional,
                          launchExternalProcess | Bool | optional,
                          readRegistryValue | Bool | optional,
                          terminateExternalProcess | Bool | optional,
                          ..
                        }
                        | optional,
                      ..
                    }
                    | doc "Enable secured APIs"
                    | optional,
                  preloadScripts
                    | Array (
                      std.contract.any_of
                        [
                          js2n.Null,
                          Bool,
                          Number,
                          String,
                          {
                            url
                              | String
                              | doc "URL from which to fetch the script.",
                            ..
                          },
                          Array Dyn
                        ]
                    )
                    | doc "An array of scripts to download and run before other scripts in the page."
                    | optional,
                  resizable
                    | Bool
                    | doc "A flag to drop to allow the user to resize the window."
                    | optional,
                  resizeRegion
                    | std.contract.any_of
                      [
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        {
                          bottomRightCorner
                            | Number
                            | doc "Defines a region in pixels of an additional square at the bottom right corner of a frameless window."
                            | optional,
                          size
                            | Number
                            | doc "Defines a region in pixels that will respond to user mouse interaction for resizing a frameless window."
                            | optional,
                        },
                        Array Dyn
                      ]
                    | doc "Define the attributes of the window's resize region."
                    | optional,
                  saveWindowState
                    | Bool
                    | doc "A flag to cache the location of the window or not."
                    | optional,
                  showTaskbarIcon
                    | Bool
                    | doc "A flag to show the Window's icon in the taskbar."
                    | optional,
                  state
                    | std.enum.TagOrString
                    | [| 'normal, 'minimized, 'maximized |]
                    | doc "A string that sets the window to be \"minimized\", \"maximized\", or \"normal\" on creation."
                    | optional,
                  taskbarIcon
                    | String
                    | doc "The URL of an icon to be shown on the desktop. Support formats: Portable Network Graphic (PNG); Size: 256 x 256."
                    | optional,
                  taskbarIconGroup
                    | String
                    | doc "Group your OpenFin apps in the Taskbar. v5.0+"
                    | optional,
                  url | String | doc "The URL of the window.",
                  uuid
                    | String
                    | doc "The UUID of the application, unique within the set of all other Applications running in OpenFin Runtime.",
                  waitForPageLoad
                    | Bool
                    | doc "When set to false, the page will render before the \"load\" event is fired on the window. Caution, when false you will see an initial empty white window."
                    | optional,
                },
                Array Dyn
              ]
            | doc "Specifies the application level configuration.",
          supportInformation
            | std.contract.any_of
              [
                js2n.Null,
                Bool,
                Number,
                String,
                {
                  company
                    | String
                    | doc "Displays the company name in the title bar for the support error dialog that appears when an application fails to load.",
                  email
                    | String
                    | doc "Displays the email to contact in the support error dialog that appears when an application fails to load.",
                  enableErrorReporting
                    | Bool
                    | doc "To disable the error reporting feature, set this value to false."
                    | optional,
                  forwardErrorReports
                    | Bool
                    | doc "When set to true, prompts end users with a dialog when a deployment error occurs from within the RVM and enables them send along log files from their machine. Error reports are delivered to your email address set in supportInformation."
                    | optional,
                  product
                    | String
                    | doc "Displays the product name or application name in the support error dialog that appears when an application fails to load.",
                },
                Array Dyn
              ]
            | doc "An optional object to customize error messages."
            | optional,
        },
        Array Dyn
      ]