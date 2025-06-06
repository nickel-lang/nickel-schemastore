# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      expo
        | {
          _internal
            | {
              pluginHistory
                | {  .. }
                | doc "List of plugins already run on the config"
                | optional,
              ..
            }
            | doc "Internal properties for developer tools"
            | optional,
          android
            | {
              adaptiveIcon
                | {
                  backgroundColor
                    | js2n.string.Matches "^#|(&#x23;)\\d{6}$"
                    | doc "Color to use as the background for your app\"s Adaptive Icon on Android. Defaults to white, `#FFFFFF`. Has no effect if `foregroundImage` is not specified."
                    | optional,
                  backgroundImage
                    | String
                    | doc "Local path or remote URL to a background image for your app\"s Adaptive Icon on Android. If specified, this overrides the `backgroundColor` key. Must have the same dimensions as `foregroundImage`, and has no effect if `foregroundImage` is not specified. Should follow the [specified guidelines](https://developer.android.com/guide/practices/ui_guidelines/icon_design_adaptive)."
                    | optional,
                  foregroundImage
                    | String
                    | doc "Local path or remote URL to an image to use for your app\"s icon on Android. If specified, this overrides the top-level `icon` and the `android.icon` keys. Should follow the [specified guidelines](https://developer.android.com/guide/practices/ui_guidelines/icon_design_adaptive). This icon will appear on the home screen."
                    | optional,
                  monochromeImage
                    | String
                    | doc "Local path or remote URL to an image representing the Android 13+ monochromatic icon. Should follow the [specified guidelines](https://developer.android.com/guide/practices/ui_guidelines/icon_design_adaptive). This icon will appear on the home screen when the user enables \"Themed icons\" in system settings on a device running Android 13+."
                    | optional,
                }
                | doc "Settings for an Adaptive Launcher Icon on Android. [Learn more](https://developer.android.com/guide/practices/ui_guidelines/icon_design_adaptive)"
                | optional,
              allowBackup
                | Bool
                | doc "Allows your user\"s app data to be automatically backed up to their Google Drive. If this is set to false, no backup or restore of the application will ever be performed (this is useful if your app deals with sensitive information). Defaults to the Android default, which is `true`."
                | optional,
              backgroundColor
                | js2n.string.Matches "^#|(&#x23;)\\d{6}$"
                | doc "The background color for your Android app, behind any of your React views. Overrides the top-level `backgroundColor` key if it is present."
                | optional,
              blockedPermissions
                | Array String
                | doc "List of permissions to block in the final `AndroidManifest.xml`. This is useful for removing permissions that are added by native package `AndroidManifest.xml` files which are merged into the final manifest. Internally this feature uses the `tools:node=\"remove\"` XML attribute to remove permissions. Not available in Expo Go."
                | optional,
              config
                | {
                  branch
                    | {
                      apiKey | String | doc "Your Branch API key" | optional,
                    }
                    | doc "[Branch](https://branch.io/) key to hook up Branch linking services."
                    | optional,
                  googleMaps
                    | {
                      apiKey
                        | String
                        | doc "Your Google Maps Android SDK API key"
                        | optional,
                    }
                    | doc "[Google Maps Android SDK](https://developers.google.com/maps/documentation/android-api/signup) configuration for your standalone app."
                    | optional,
                  googleMobileAdsAppId
                    | String
                    | doc "[Google Mobile Ads App ID](https://support.google.com/admob/answer/6232340) Google AdMob App ID. "
                    | optional,
                  googleMobileAdsAutoInit
                    | Bool
                    | doc "A boolean indicating whether to initialize Google App Measurement and begin sending user-level event data to Google immediately when the app starts. The default in Expo (Client and in standalone apps) is `false`. [Sets the opposite of the given value to the following key in `Info.plist`](https://developers.google.com/admob/ios/eu-consent#delay_app_measurement_optional)"
                    | optional,
                }
                | doc "Note: This property key is not included in the production manifest and will evaluate to `undefined`. It is used internally only in the build process, because it contains API keys that some may want to keep private."
                | optional,
              googleServicesFile
                | String
                | doc "[Firebase Configuration File](https://support.google.com/firebase/answer/7015592) Location of the `google-services.json` file for configuring Firebase. Including this key automatically enables FCM in your standalone app."
                | optional,
              icon
                | String
                | doc "Local path or remote URL to an image to use for your app\"s icon on Android. If specified, this overrides the top-level `icon` key. We recommend that you use a 1024x1024 png file (transparency is recommended for the Google Play Store). This icon will appear on the home screen and within the Expo Go app."
                | optional,
              intentFilters
                | js2n.array.UniqueItems
                | Array
                  {
                    action | String,
                    autoVerify
                      | Bool
                      | doc "You may also use an intent filter to set your app as the default handler for links (without showing the user a dialog with options). To do so use `true` and then configure your server to serve a JSON file verifying that you own the domain. [Learn more](https://developer.android.com/training/app-links)"
                      | optional,
                    category
                      | std.contract.any_of [ String, Array String ]
                      | optional,
                    data
                      | std.contract.any_of
                        [
                          {
                            host
                              | String
                              | doc "Hostname, e.g. `myapp.io`"
                              | optional,
                            mimeType
                              | String
                              | doc "MIME type for URLs that should be matched by the filter"
                              | optional,
                            path
                              | String
                              | doc "Exact path for URLs that should be matched by the filter, e.g. `/records`"
                              | optional,
                            pathPattern
                              | String
                              | doc "Pattern for paths that should be matched by the filter, e.g. `.*`. Must begin with `/`"
                              | optional,
                            pathPrefix
                              | String
                              | doc "Prefix for paths that should be matched by the filter, e.g. `/records/` will match `/records/123`"
                              | optional,
                            port | String | doc "Port, e.g. `3000`" | optional,
                            scheme
                              | String
                              | doc "Scheme of the URL, e.g. `https`"
                              | optional,
                          },
                          Array
                            {
                              host
                                | String
                                | doc "Hostname, e.g. `myapp.io`"
                                | optional,
                              mimeType
                                | String
                                | doc "MIME type for URLs that should be matched by the filter"
                                | optional,
                              path
                                | String
                                | doc "Exact path for URLs that should be matched by the filter, e.g. `/records`"
                                | optional,
                              pathPattern
                                | String
                                | doc "Pattern for paths that should be matched by the filter, e.g. `.*`. Must begin with `/`"
                                | optional,
                              pathPrefix
                                | String
                                | doc "Prefix for paths that should be matched by the filter, e.g. `/records/` will match `/records/123`"
                                | optional,
                              port
                                | String
                                | doc "Port, e.g. `3000`"
                                | optional,
                              scheme
                                | String
                                | doc "Scheme of the URL, e.g. `https`"
                                | optional,
                            }
                        ]
                      | optional,
                  }
                | doc "Configuration for setting an array of custom intent filters in Android manifest. [Learn more](https://developer.android.com/guide/components/intents-filters)"
                | optional,
              jsEngine
                | std.enum.TagOrString
                | [| 'jsc, 'hermes |]
                | doc "Specifies the JavaScript engine for Android apps. Supported only on EAS Build and in Expo Go. Defaults to `hermes`. Valid values: `hermes`, `jsc`."
                | optional,
              newArchEnabled
                | Bool
                | doc "A Boolean value that indicates whether the Android app should use the new architecture."
                | optional,
              package
                | js2n.string.Matches
                  "^(?!.*\\bnative\\b)[a-zA-Z][a-zA-Z0-9_]*(\\.[a-zA-Z][a-zA-Z0-9_]*)+$"
                | doc "The package name for your Android standalone app. You make it up, but it needs to be unique on the Play Store. See [this StackOverflow question](http://stackoverflow.com/questions/6273892/android-package-name-convention)."
                | optional,
              permissions
                | Array String
                | doc "A list of permissions to add to the app `AndroidManifest.xml` during prebuild. For example: `[\"android.permission.SCHEDULE_EXACT_ALARM\"]`"
                | optional,
              playStoreUrl
                | js2n.string.Matches "^https://play\\.google\\.com/"
                | doc "URL to your app on the Google Play Store, if you have deployed it there. This is used to link to your store page from your Expo project page if your app is public."
                | optional,
              publishBundlePath
                | String
                | doc "The bundle for the Android version of your app will be written to this path during publish."
                | optional,
              publishManifestPath
                | String
                | doc "The manifest for the Android version of your app will be written to this path during publish."
                | optional,
              runtimeVersion
                | js2n.OneOf
                  [
                    js2n.string.Matches "^[a-zA-Z\\d][a-zA-Z\\d._+()-]{0,254}$",
                    js2n.string.Matches
                      "^exposdk:((\\d+\\.\\d+\\.\\d+)|(UNVERSIONED))$",
                    js2n.record.Record
                      {
                        additional = 'None,
                        patterns = {},
                        properties =
                          {
                              policy =
                                std.contract.Sequence
                                    [
                                      std.enum.TagOrString,
                                      [|
                                        'fingerprint,
                                        'appVersion,
                                        'sdkVersion,
                                        'nativeVersion
                                      |]
                                    ],
                            },
                        required = { policy = true, },
                      }
                  ]
                | doc "Property indicating compatibility between a Android build\"s native code and an OTA update for the Android platform. If provided, this will override the value of top level `runtimeVersion` key on Android."
                | optional,
              softwareKeyboardLayoutMode
                | std.enum.TagOrString
                | [| 'pan, 'resize |]
                | doc "Determines how the software keyboard will impact the layout of your application. This maps to the `android:windowSoftInputMode` property. Defaults to `resize`. Valid values: `resize`, `pan`."
                | optional,
              splash
                | {
                  backgroundColor
                    | js2n.string.Matches "^#|(&#x23;)\\d{6}$"
                    | doc "Color to fill the loading screen background"
                    | optional,
                  dark
                    | {
                      backgroundColor
                        | js2n.string.Matches "^#|(&#x23;)\\d{6}$"
                        | doc "Color to fill the loading screen background"
                        | optional,
                      hdpi
                        | String
                        | doc m%"
                          Local path or remote URL to an image to fill the background of the loading screen in "native" mode. Image size and aspect ratio are up to you. [Learn more]( https://developer.android.com/training/multiscreen/screendensities) 
                          
                           `Scale 1.5x`
                        "%
                        | optional,
                      image
                        | String
                        | doc "Local path or remote URL to an image to fill the background of the loading screen. Image size and aspect ratio are up to you. Must be a .png."
                        | optional,
                      mdpi
                        | String
                        | doc m%"
                          Local path or remote URL to an image to fill the background of the loading screen in "native" mode. Image size and aspect ratio are up to you. [Learn more]( https://developer.android.com/training/multiscreen/screendensities) 
                          
                           `Natural sized image (baseline)`
                        "%
                        | optional,
                      resizeMode
                        | std.enum.TagOrString
                        | [| 'native, 'contain, 'cover |]
                        | doc "Determines how the `image` will be displayed in the splash loading screen. Must be one of `cover`, `contain` or `native`, defaults to `contain`."
                        | optional,
                      xhdpi
                        | String
                        | doc m%"
                          Local path or remote URL to an image to fill the background of the loading screen in "native" mode. Image size and aspect ratio are up to you. [Learn more]( https://developer.android.com/training/multiscreen/screendensities) 
                          
                           `Scale 2x`
                        "%
                        | optional,
                      xxhdpi
                        | String
                        | doc m%"
                          Local path or remote URL to an image to fill the background of the loading screen in "native" mode. Image size and aspect ratio are up to you. [Learn more]( https://developer.android.com/training/multiscreen/screendensities) 
                          
                           `Scale 3x`
                        "%
                        | optional,
                      xxxhdpi
                        | String
                        | doc m%"
                          Local path or remote URL to an image to fill the background of the loading screen in "native" mode. Image size and aspect ratio are up to you. [Learn more]( https://developer.android.com/training/multiscreen/screendensities) 
                          
                           `Scale 4x`
                        "%
                        | optional,
                      ..
                    }
                    | doc "Configuration for loading and splash screen for managed and standalone Android apps in dark mode."
                    | optional,
                  hdpi
                    | String
                    | doc m%"
                      Local path or remote URL to an image to fill the background of the loading screen in "native" mode. Image size and aspect ratio are up to you. [Learn more]( https://developer.android.com/training/multiscreen/screendensities) 
                      
                       `Scale 1.5x`
                    "%
                    | optional,
                  image
                    | String
                    | doc "Local path or remote URL to an image to fill the background of the loading screen. Image size and aspect ratio are up to you. Must be a .png."
                    | optional,
                  mdpi
                    | String
                    | doc m%"
                      Local path or remote URL to an image to fill the background of the loading screen in "native" mode. Image size and aspect ratio are up to you. [Learn more]( https://developer.android.com/training/multiscreen/screendensities) 
                      
                       `Natural sized image (baseline)`
                    "%
                    | optional,
                  resizeMode
                    | std.enum.TagOrString
                    | [| 'native, 'contain, 'cover |]
                    | doc "Determines how the `image` will be displayed in the splash loading screen. Must be one of `cover`, `contain` or `native`, defaults to `contain`."
                    | optional,
                  xhdpi
                    | String
                    | doc m%"
                      Local path or remote URL to an image to fill the background of the loading screen in "native" mode. Image size and aspect ratio are up to you. [Learn more]( https://developer.android.com/training/multiscreen/screendensities) 
                      
                       `Scale 2x`
                    "%
                    | optional,
                  xxhdpi
                    | String
                    | doc m%"
                      Local path or remote URL to an image to fill the background of the loading screen in "native" mode. Image size and aspect ratio are up to you. [Learn more]( https://developer.android.com/training/multiscreen/screendensities) 
                      
                       `Scale 3x`
                    "%
                    | optional,
                  xxxhdpi
                    | String
                    | doc m%"
                      Local path or remote URL to an image to fill the background of the loading screen in "native" mode. Image size and aspect ratio are up to you. [Learn more]( https://developer.android.com/training/multiscreen/screendensities) 
                      
                       `Scale 4x`
                    "%
                    | optional,
                }
                | doc "Configuration for loading and splash screen for managed and standalone Android apps."
                | optional,
              userInterfaceStyle
                | std.enum.TagOrString
                | [| 'automatic, 'dark, 'light |]
                | doc "Configuration to force the app to always use the light or dark user-interface appearance, such as \"dark mode\", or make it automatically adapt to the system preferences. If not provided, defaults to `light`. Requires `expo-system-ui` be installed in your project to work on Android."
                | optional,
              versionCode
                | std.number.Integer
                | js2n.number.Maximum 2100000000
                | js2n.number.Minimum 0
                | doc "Version number required by Google Play. Increment by one for each release. Must be a positive integer. [Learn more](https://developer.android.com/studio/publish/versioning.html)"
                | optional,
            }
            | doc "Configuration that is specific to the Android platform."
            | optional,
          androidNavigationBar
            | {
              backgroundColor
                | js2n.string.Matches "^#|(&#x23;)\\d{6}$"
                | doc "Specifies the background color of the navigation bar."
                | optional,
              barStyle
                | std.enum.TagOrString
                | [| 'dark-content, 'light-content |]
                | doc "Configure the navigation bar icons to have a light or dark color. Supported on Android Oreo and newer. Valid values: `\"light-content\"`, `\"dark-content\"`"
                | optional,
              visible
                | std.enum.TagOrString
                | [| 'sticky-immersive, 'immersive, 'leanback |]
                | doc m%"
                  Determines how and when the navigation bar is shown. [Learn more](https://developer.android.com/training/system-ui/immersive). Requires `expo-navigation-bar` be installed in your project. Valid values: `leanback`, `immersive`, `sticky-immersive` 
                  
                   `leanback` results in the navigation bar being hidden until the first touch gesture is registered. 
                  
                   `immersive` results in the navigation bar being hidden until the user swipes up from the edge where the navigation bar is hidden. 
                  
                   `sticky-immersive` is identical to `"immersive"` except that the navigation bar will be semi-transparent and will be hidden again after a short period of time.
                "%
                | optional,
            }
            | doc "Configuration for the bottom navigation bar on Android. Can be used to configure the `expo-navigation-bar` module in EAS Build."
            | optional,
          androidStatusBar
            | {
              backgroundColor
                | js2n.string.Matches "^#|(&#x23;)\\d{6}$"
                | doc "Specifies the background color of the status bar. Defaults to `#00000000` (transparent) for `dark-content` bar style and `#00000088` (semi-transparent black) for `light-content` bar style"
                | optional,
              barStyle
                | std.enum.TagOrString
                | [| 'dark-content, 'light-content |]
                | doc "Configures the status bar icons to have a light or dark color. Valid values: `light-content`, `dark-content`. Defaults to `dark-content`"
                | optional,
              hidden
                | Bool
                | doc "Instructs the system whether the status bar should be visible or not. Defaults to `false`"
                | optional,
              translucent
                | Bool
                | doc "When false, the system status bar pushes the content of your app down (similar to `position: relative`). When true, the status bar floats above the content in your app (similar to `position: absolute`). Defaults to `true` to match the iOS status bar behavior (which can only float above content). Explicitly setting this property to `true` will add `android:windowTranslucentStatus` to `styles.xml` and may cause unexpected keyboard behavior on Android when using the `softwareKeyboardLayoutMode` set to `resize`. In this case you will have to use `KeyboardAvoidingView` to manage the keyboard layout."
                | optional,
            }
            | doc "Configuration for the status bar on Android. For more details please navigate to [Configuring StatusBar](https://docs.expo.dev/guides/configuring-statusbar/)."
            | optional,
          assetBundlePatterns
            | Array String
            | doc "@deprecated Follow [the guide to select and exclude assets](https://docs.expo.dev/eas-update/asset-selection/) for EAS Update instead. An array of file glob strings which point to assets that will be bundled within your standalone app binary. Read more in the [Offline Support guide](https://docs.expo.dev/guides/offline-support/)"
            | optional,
          backgroundColor
            | js2n.string.Matches "^#|(&#x23;)\\d{6}$"
            | doc "The background color for your app, behind any of your React views. This is also known as the root view background color. Requires `expo-system-ui` be installed in your project to work on iOS."
            | optional,
          currentFullName
            | String
            | doc "The auto generated Expo account name and slug used for display purposes. It is not meant to be set directly. Formatted like `@username/slug`. When unauthenticated, the username is `@anonymous`. For published projects, this value may change when a project is transferred between accounts or renamed."
            | optional,
          description
            | String
            | doc "A short description of what your app is and why it is great."
            | optional,
          developmentClient
            | {
              silentLaunch
                | Bool
                | doc "If true, the app will launch in a development client with no additional dialogs or progress indicators, just like in a standalone app."
                | optional,
            }
            | doc "Settings that apply specifically to running this app in a development client"
            | optional,
          experiments
            | {
              baseUrl
                | String
                | doc "Export a website relative to a subpath of a domain. The path will be prepended as-is to links to all bundled resources. Prefix the path with a `/` (recommended) to load all resources relative to the server root. If the path **does not** start with a `/` then resources will be loaded relative to the code that requests them, this could lead to unexpected behavior. Example \"/subpath\". Defaults to \"\" (empty string)."
                | optional,
              reactCanary
                | Bool
                | doc "Experimentally use a vendored canary build of React for testing upcoming features."
                | optional,
              reactCompiler
                | Bool
                | doc "Experimentally enable React Compiler."
                | optional,
              reactServerActions
                | Bool
                | doc "Experimentally enable React Server Actions support in Expo CLI and Expo Router."
                | optional,
              reactServerComponents
                | Bool
                | doc "Experimentally enable React Server Components support in Expo CLI and Expo Router."
                | optional,
              supportsTVOnly
                | Bool
                | doc "If true, indicates that this project does not support tablets or handsets, and only supports Apple TV and Android TV"
                | optional,
              tsconfigPaths
                | Bool
                | doc "Enable tsconfig/jsconfig `compilerOptions.paths` and `compilerOptions.baseUrl` support for import aliases in Metro."
                | optional,
              turboModules
                | Bool
                | doc "Enables Turbo Modules, which are a type of native modules that use a different way of communicating between JS and platform code. When installing a Turbo Module you will need to enable this experimental option (the library still needs to be a part of Expo SDK already, like react-native-reanimated v2). Turbo Modules do not support remote debugging and enabling this option will disable remote debugging."
                | optional,
              typedRoutes
                | Bool
                | doc "Enable support for statically typed links in Expo Router. This feature requires TypeScript be set up in your Expo Router v2 project."
                | optional,
            }
            | doc "Enable experimental features that may be unstable, unsupported, or removed without deprecation notices."
            | optional,
          extra
            | {  .. }
            | doc "Any extra fields you want to pass to your experience. Values are accessible via `Constants.expoConfig.extra` ([Learn more](https://docs.expo.dev/versions/latest/sdk/constants/#constantsmanifest))"
            | optional,
          githubUrl
            | js2n.string.Matches "^https://github\\.com/"
            | doc "If you would like to share the source code of your app on Github, enter the URL for the repository here and it will be linked to from your Expo project page."
            | optional,
          icon
            | String
            | doc "Local path or remote URL to an image to use for your app\"s icon. We recommend that you use a 1024x1024 png file. This icon will appear on the home screen and within the Expo Go app."
            | optional,
          ios
            | {
              accessesContactNotes
                | Bool
                | doc "A Boolean value that indicates whether the app may access the notes stored in contacts. You must [receive permission from Apple](https://developer.apple.com/documentation/bundleresources/entitlements/com_apple_developer_contacts_notes) before you can submit your app for review with this capability."
                | optional,
              appStoreUrl
                | js2n.string.Matches
                  "^https://(itunes|apps)\\.apple\\.com/.*?\\d+"
                | doc "URL to your app on the Apple App Store, if you have deployed it there. This is used to link to your store page from your Expo project page if your app is public."
                | optional,
              appleTeamId
                | String
                | doc "The Apple development team ID to use for all native targets. You can find your team ID in [the Apple Developer Portal](https://developer.apple.com/help/account/manage-your-team/locate-your-team-id/)."
                | optional,
              associatedDomains
                | js2n.array.UniqueItems
                | Array String
                | doc "An array that contains Associated Domains for the standalone app. [Learn more](https://developer.apple.com/documentation/safariservices/supporting_associated_domains)."
                | optional,
              backgroundColor
                | js2n.string.Matches "^#|(&#x23;)\\d{6}$"
                | doc "The background color for your iOS app, behind any of your React views. Overrides the top-level `backgroundColor` key if it is present. Requires `expo-system-ui` be installed in your project to work on iOS."
                | optional,
              bitcode
                | std.contract.any_of [ Bool, String ]
                | doc "Enable iOS Bitcode optimizations in the native build. Accepts the name of an iOS build configuration to enable for a single configuration and disable for all others, e.g. Debug, Release. Not available in Expo Go. Defaults to `undefined` which uses the template\"s predefined settings."
                | optional,
              buildNumber
                | js2n.string.Matches "^[A-Za-z0-9.]+$"
                | doc "Build number for your iOS standalone app. Corresponds to `CFBundleVersion` and must match Apple\"s [specified format](https://developer.apple.com/documentation/bundleresources/information_property_list/cfbundleversion). (Note: Transporter will pull the value for `Version Number` from `expo.version` and NOT from `expo.ios.buildNumber`.)"
                | optional,
              bundleIdentifier
                | js2n.string.Matches "^[a-zA-Z0-9.-]+$"
                | doc "The bundle identifier for your iOS standalone app. You make it up, but it needs to be unique on the App Store. See [this StackOverflow question](https://stackoverflow.com/questions/11347470/what-does-bundle-identifier-mean-in-the-ios-project)."
                | optional,
              config
                | {
                  branch
                    | {
                      apiKey | String | doc "Your Branch API key" | optional,
                    }
                    | doc "[Branch](https://branch.io/) key to hook up Branch linking services."
                    | optional,
                  googleMapsApiKey
                    | String
                    | doc "[Google Maps iOS SDK](https://developers.google.com/maps/documentation/ios-sdk/start) key for your standalone app."
                    | optional,
                  googleMobileAdsAppId
                    | String
                    | doc "[Google Mobile Ads App ID](https://support.google.com/admob/answer/6232340) Google AdMob App ID. "
                    | optional,
                  googleMobileAdsAutoInit
                    | Bool
                    | doc "A boolean indicating whether to initialize Google App Measurement and begin sending user-level event data to Google immediately when the app starts. The default in Expo (Go and in standalone apps) is `false`. [Sets the opposite of the given value to the following key in `Info.plist`.](https://developers.google.com/admob/ios/eu-consent#delay_app_measurement_optional)"
                    | optional,
                  usesNonExemptEncryption
                    | Bool
                    | doc "Sets `ITSAppUsesNonExemptEncryption` in the standalone ipa\"s Info.plist to the given boolean value."
                    | optional,
                }
                | doc "Note: This property key is not included in the production manifest and will evaluate to `undefined`. It is used internally only in the build process, because it contains API keys that some may want to keep private."
                | optional,
              entitlements
                | {  .. }
                | doc "Dictionary of arbitrary configuration to add to your standalone app\"s native *.entitlements (plist). Applied prior to all other Expo-specific configuration. No other validation is performed, so use this at your own risk of rejection from the App Store."
                | optional,
              googleServicesFile
                | String
                | doc "[Firebase Configuration File](https://support.google.com/firebase/answer/7015592) Location of the `GoogleService-Info.plist` file for configuring Firebase."
                | optional,
              icon
                | std.contract.any_of
                  [
                    String,
                    {
                      dark
                        | String
                        | doc "The dark icon. It will appear for the app when the user\"s system appearance is dark. See Apple\"s [Human Interface Guidelines](https://developer.apple.com/design/human-interface-guidelines/app-icons#iOS-iPadOS) for more information."
                        | optional,
                      light
                        | String
                        | doc "The light icon. It will appear when neither dark nor tinted icons are used, or if they are not provided."
                        | optional,
                      tinted
                        | String
                        | doc "The tinted icon. It will appear for the app when the user\"s system appearance is tinted. See Apple\"s [Human Interface Guidelines](https://developer.apple.com/design/human-interface-guidelines/app-icons#iOS-iPadOS) for more information."
                        | optional,
                    }
                  ]
                | doc m%"
                  Local path or remote URL to an image to use for your app"s icon on iOS. Alternatively, an object specifying different icons for various system appearances (e.g., dark, tinted) can be provided. If specified, this overrides the top-level `icon` key. Use a 1024x1024 icon which follows Apple"s interface guidelines for icons, including color profile and transparency.
                  
                  Expo will generate the other required sizes. This icon will appear on the home screen and within the Expo Go app.
                "%
                | optional,
              infoPlist
                | {  .. }
                | doc "Dictionary of arbitrary configuration to add to your standalone app\"s native Info.plist. Applied prior to all other Expo-specific configuration. No other validation is performed, so use this at your own risk of rejection from the App Store."
                | optional,
              isTabletOnly
                | Bool
                | doc "If true, indicates that your standalone iOS app does not support handsets, and only supports tablets."
                | optional,
              jsEngine
                | std.enum.TagOrString
                | [| 'jsc, 'hermes |]
                | doc "Specifies the JavaScript engine for iOS apps. Supported only on EAS Build. Defaults to `hermes`. Valid values: `hermes`, `jsc`."
                | optional,
              newArchEnabled
                | Bool
                | doc "A Boolean value that indicates whether the iOS app should use the new architecture."
                | optional,
              privacyManifests
                | {
                  NSPrivacyAccessedAPITypes
                    | Array
                      {
                        NSPrivacyAccessedAPIType
                          | String
                          | doc "A string that identifies the category of required reason APIs your app uses",
                        NSPrivacyAccessedAPITypeReasons
                          | js2n.array.UniqueItems
                          | Array String
                          | doc "A list of reasons for a specific category.",
                      }
                    | doc "A list of required reasons of why your app uses restricted API categories. [Learn more](https://developer.apple.com/documentation/bundleresources/privacy_manifest_files/describing_use_of_required_reason_api)"
                    | optional,
                  NSPrivacyCollectedDataTypes
                    | Array
                      {
                        NSPrivacyCollectedDataType | String,
                        NSPrivacyCollectedDataTypeLinked | Bool,
                        NSPrivacyCollectedDataTypePurposes
                          | js2n.array.UniqueItems
                          | Array String,
                        NSPrivacyCollectedDataTypeTracking | Bool,
                      }
                    | doc "A list of collected data types that your app uses."
                    | optional,
                  NSPrivacyTracking
                    | Bool
                    | doc "A Boolean that indicates whether your app or third-party SDK uses data for tracking."
                    | optional,
                  NSPrivacyTrackingDomains
                    | js2n.array.UniqueItems
                    | Array String
                    | doc "A list of domains that your app uses for tracking."
                    | optional,
                }
                | doc "Dictionary of privacy manifest definitions to add to your app\"s native PrivacyInfo.xcprivacy file. [Learn more](https://developer.apple.com/documentation/bundleresources/privacy_manifest_files)"
                | optional,
              publishBundlePath
                | String
                | doc "The bundle for the iOS version of your app will be written to this path during publish."
                | optional,
              publishManifestPath
                | String
                | doc "The manifest for the iOS version of your app will be written to this path during publish."
                | optional,
              requireFullScreen
                | Bool
                | doc "If true, indicates that your standalone iOS app does not support Slide Over and Split View on iPad. Defaults to `false`"
                | optional,
              runtimeVersion
                | js2n.OneOf
                  [
                    js2n.string.Matches "^[a-zA-Z\\d][a-zA-Z\\d._+()-]{0,254}$",
                    js2n.string.Matches
                      "^exposdk:((\\d+\\.\\d+\\.\\d+)|(UNVERSIONED))$",
                    js2n.record.Record
                      {
                        additional = 'None,
                        patterns = {},
                        properties =
                          {
                              policy =
                                std.contract.Sequence
                                    [
                                      std.enum.TagOrString,
                                      [|
                                        'fingerprint,
                                        'appVersion,
                                        'sdkVersion,
                                        'nativeVersion
                                      |]
                                    ],
                            },
                        required = { policy = true, },
                      }
                  ]
                | doc "Property indicating compatibility between an iOS build\"s native code and an OTA update for the iOS platform. If provided, this will override the value of the top level `runtimeVersion` key on iOS."
                | optional,
              splash
                | {
                  backgroundColor
                    | js2n.string.Matches "^#|(&#x23;)\\d{6}$"
                    | doc "Color to fill the loading screen background"
                    | optional,
                  dark
                    | {
                      backgroundColor
                        | js2n.string.Matches "^#|(&#x23;)\\d{6}$"
                        | doc "Color to fill the loading screen background"
                        | optional,
                      image
                        | String
                        | doc "Local path or remote URL to an image to fill the background of the loading screen. Image size and aspect ratio are up to you. Must be a .png."
                        | optional,
                      resizeMode
                        | std.enum.TagOrString
                        | [| 'contain, 'cover |]
                        | doc "Determines how the `image` will be displayed in the splash loading screen. Must be one of `cover` or `contain`, defaults to `contain`."
                        | optional,
                      tabletImage
                        | String
                        | doc "Local path or remote URL to an image to fill the background of the loading screen. Image size and aspect ratio are up to you. Must be a .png."
                        | optional,
                      ..
                    }
                    | doc "Configuration for loading and splash screen for standalone iOS apps in dark mode."
                    | optional,
                  image
                    | String
                    | doc "Local path or remote URL to an image to fill the background of the loading screen. Image size and aspect ratio are up to you. Must be a .png."
                    | optional,
                  resizeMode
                    | std.enum.TagOrString
                    | [| 'contain, 'cover |]
                    | doc "Determines how the `image` will be displayed in the splash loading screen. Must be one of `cover` or `contain`, defaults to `contain`."
                    | optional,
                  tabletImage
                    | String
                    | doc "Local path or remote URL to an image to fill the background of the loading screen. Image size and aspect ratio are up to you. Must be a .png."
                    | optional,
                  ..
                }
                | doc "Configuration for loading and splash screen for standalone iOS apps."
                | optional,
              supportsTablet
                | Bool
                | doc "Whether your standalone iOS app supports tablet screen sizes. Defaults to `false`."
                | optional,
              userInterfaceStyle
                | std.enum.TagOrString
                | [| 'automatic, 'dark, 'light |]
                | doc "Configuration to force the app to always use the light or dark user-interface appearance, such as \"dark mode\", or make it automatically adapt to the system preferences. If not provided, defaults to `light`."
                | optional,
              usesAppleSignIn
                | Bool
                | doc "A boolean indicating if the app uses Apple Sign-In. See `AppleAuthentication` docs for details."
                | optional,
              usesBroadcastPushNotifications
                | Bool
                | doc " A boolean indicating if the app uses Push Notifications Broadcast option for Push Notifications capability. If true, EAS CLI will use the value during capability syncing. If EAS CLI is not used, this configuration will not have any effect unless another tool is used to operate on it, so enable the capability manually on the Apple Developer Portal in that case."
                | optional,
              usesIcloudStorage
                | Bool
                | doc "A boolean indicating if the app uses iCloud Storage for `DocumentPicker`. See `DocumentPicker` docs for details."
                | optional,
            }
            | doc "Configuration that is specific to the iOS platform."
            | optional,
          jsEngine
            | std.enum.TagOrString
            | [| 'jsc, 'hermes |]
            | doc "Specifies the JavaScript engine for apps. Supported only on EAS Build. Defaults to `hermes`. Valid values: `hermes`, `jsc`."
            | optional,
          locales
            | { _ | std.contract.any_of [ { _ | Dyn }, String ] }
            | doc "Provide overrides by locale for System Dialog prompts like Permissions Boxes"
            | optional,
          name
            | String
            | doc "The name of your app as it appears both within Expo Go and on your home screen as a standalone app.",
          newArchEnabled
            | Bool
            | doc "A Boolean value that indicates whether the app should use the new architecture. Defaults to true."
            | optional,
          notification
            | {
              androidCollapsedTitle
                | String
                | doc "If `androidMode` is set to `collapse`, this title is used for the collapsed notification message. For example, `\"#{unread_notifications} new interactions\"`."
                | optional,
              androidMode
                | std.enum.TagOrString
                | [| 'collapse, '"default" |]
                | doc "Show each push notification individually (`default`) or collapse into one (`collapse`)."
                | optional,
              color
                | js2n.string.Matches "^#|(&#x23;)\\d{6}$"
                | doc "(Android only) Tint color for the push notification image when it appears in the notification tray. Defaults to `#ffffff`"
                | optional,
              icon
                | String
                | doc "(Android only) Local path or remote URL to an image to use as the icon for push notifications. 96x96 png grayscale with transparency. We recommend following [Google\"s design guidelines](https://material.io/design/iconography/product-icons.html#design-principles). If not provided, defaults to your app icon."
                | optional,
              iosDisplayInForeground
                | Bool
                | doc "Whether or not to display notifications when the app is in the foreground on iOS. `_displayInForeground` option in the individual push notification message overrides this option. [Learn more.](https://docs.expo.dev/push-notifications/receiving-notifications/#foreground-notification-behavior) Defaults to `false`."
                | optional,
            }
            | doc "Configuration for remote (push) notifications."
            | optional,
          orientation
            | std.enum.TagOrString
            | [| 'landscape, 'portrait, '"default" |]
            | doc "Locks your app to a specific orientation with portrait or landscape. Defaults to no lock. Valid values: `default`, `portrait`, `landscape`"
            | optional,
          originalFullName
            | String
            | doc "The auto generated Expo account name and slug used for services like Notifications and AuthSession proxy. It is not meant to be set directly. Formatted like `@username/slug`. When unauthenticated, the username is `@anonymous`. For published projects, this value will not change when a project is transferred between accounts or renamed."
            | optional,
          owner
            | js2n.string.MinLength 1
            | doc "The name of the Expo account that owns the project. This is useful for teams collaborating on a project. If not provided, the owner defaults to the username of the current user."
            | optional,
          packagerOpts
            | {  .. }
            | doc "@deprecated Use a `metro.config.js` file instead. [Learn more](https://docs.expo.dev/guides/customizing-metro/)"
            | optional,
          platforms
            | js2n.array.UniqueItems
            | Array (
              std.contract.Sequence
                [ std.enum.TagOrString, [| 'web, 'ios, 'android |] ]
            )
            | doc "Platforms that your project explicitly supports. If not specified, it defaults to `[\"ios\", \"android\"]`."
            | optional,
          plugins
            | Array (
              std.contract.any_of
                [
                  String,
                  std.contract.Sequence
                    [
                      js2n.array.MinItems 1,
                      Array (std.contract.any_of [ { _ | Dyn }, String ])
                    ]
                ]
            )
            | doc "Config plugins for adding extra functionality to your project. [Learn more](https://docs.expo.dev/guides/config-plugins/)."
            | optional,
          primaryColor
            | js2n.string.Matches "^#|(&#x23;)\\d{6}$"
            | doc "On Android, this will determine the color of your app in the multitasker. Currently this is not used on iOS, but it may be used for other purposes in the future."
            | optional,
          runtimeVersion
            | js2n.OneOf
              [
                js2n.string.Matches "^[a-zA-Z\\d][a-zA-Z\\d._+()-]{0,254}$",
                js2n.string.Matches
                  "^exposdk:((\\d+\\.\\d+\\.\\d+)|(UNVERSIONED))$",
                js2n.record.Record
                  {
                    additional = 'None,
                    patterns = {},
                    properties =
                      {
                          policy =
                            std.contract.Sequence
                                [
                                  std.enum.TagOrString,
                                  [|
                                    'fingerprint,
                                    'appVersion,
                                    'sdkVersion,
                                    'nativeVersion
                                  |]
                                ],
                        },
                    required = { policy = true, },
                  }
              ]
            | doc "Property indicating compatibility between a build\"s native code and an OTA update."
            | optional,
          scheme
            | std.contract.any_of
              [
                js2n.string.Matches "^[a-z][a-z0-9+.-]*$",
                Array (js2n.string.Matches "^[a-z][a-z0-9+.-]*$")
              ]
            | doc "URL scheme(s) to link into your app. For example, if we set this to `\"demo\"`, then demo:// URLs would open your app when tapped. This is a build-time configuration, it has no effect in Expo Go."
            | optional,
          sdkVersion
            | js2n.string.Matches "^(\\d+\\.\\d+\\.\\d+)|(UNVERSIONED)$"
            | doc "The Expo sdkVersion to run the project on. This should line up with the version specified in your package.json."
            | optional,
          slug
            | js2n.string.Matches "^[a-zA-Z0-9_\\-]+$"
            | doc "A URL-friendly name for your project that is unique across your account.",
          splash
            | {
              backgroundColor
                | js2n.string.Matches "^#|(&#x23;)\\d{6}$"
                | doc "Color to fill the loading screen background"
                | optional,
              image
                | String
                | doc "Local path or remote URL to an image to fill the background of the loading screen. Image size and aspect ratio are up to you. Must be a .png."
                | optional,
              resizeMode
                | std.enum.TagOrString
                | [| 'contain, 'cover |]
                | doc "Determines how the `image` will be displayed in the splash loading screen. Must be one of `cover` or `contain`, defaults to `contain`."
                | optional,
              ..
            }
            | doc "Configuration for loading and splash screen for standalone apps."
            | optional,
          updates
            | {
              assetPatternsToBeBundled
                | Array String
                | doc "Array of glob patterns specifying which files should be included in updates. Glob patterns are relative to the project root. A value of `[\"**\"]` will match all asset files within the project root. When not supplied all asset files will be included. Example: Given a value of `[\"app/images/**/*.png\", \"app/fonts/**/*.woff\"]` all `.png` files in all subdirectories of `app/images` and all `.woff` files in all subdirectories of `app/fonts` will be included in updates."
                | optional,
              checkAutomatically
                | std.enum.TagOrString
                | [| 'NEVER, 'WIFI_ONLY, 'ON_LOAD, 'ON_ERROR_RECOVERY |]
                | doc "By default, expo-updates will check for updates every time the app is loaded. Set this to `ON_ERROR_RECOVERY` to disable automatic checking unless recovering from an error. Set this to `NEVER` to disable automatic checking. Valid values: `ON_LOAD` (default value), `ON_ERROR_RECOVERY`, `WIFI_ONLY`, `NEVER`"
                | optional,
              codeSigningCertificate
                | String
                | doc "Local path of a PEM-formatted X.509 certificate used for verifying codesigned updates. When provided, all updates downloaded by expo-updates must be signed."
                | optional,
              codeSigningMetadata
                | {
                  alg
                    | std.enum.TagOrString
                    | [| 'rsa-v1_5-sha256 |]
                    | doc "Algorithm used to generate manifest code signing signature. Valid values: `rsa-v1_5-sha256`"
                    | optional,
                  keyid
                    | String
                    | doc "Identifier for the key in the certificate. Used to instruct signing mechanisms when signing or verifying signatures."
                    | optional,
                }
                | doc "Metadata for `codeSigningCertificate`"
                | optional,
              defaultToCacheTimeout
                | js2n.number.Maximum 300000
                | js2n.number.Minimum 0
                | doc "How long (in ms) to wait for the app to check for and fetch a new update upon launch before falling back to the most recent update already present on the device. Defaults to 0. Must be between 0 and 300000 (5 minutes). If the startup update check takes longer than this value, any update downloaded during the check will be applied upon the next app launch."
                | optional,
              enabled
                | Bool
                | doc "Whether the updates system will run. Defaults to true. If set to false, builds will only use code and assets bundled at time of build."
                | optional,
              requestHeaders
                | {  .. }
                | doc "Extra HTTP headers to include in HTTP requests made by `expo-updates` when fetching manifests or assets. These may override preset headers."
                | optional,
              url
                | String
                | doc "URL from which expo-updates will fetch update manifests"
                | optional,
              useEmbeddedUpdate
                | Bool
                | doc "Whether to load the embedded update. Defaults to true. If set to false, an update will be fetched at launch. When set to false, ensure that `checkAutomatically` is set to `ON_LOAD` and `defaultToCacheTimeout` is large enough for the initial remote update to download. This should not be used in production."
                | optional,
            }
            | doc "Configuration for the expo-updates library"
            | optional,
          userInterfaceStyle
            | std.enum.TagOrString
            | [| 'automatic, 'dark, 'light |]
            | doc "Configuration to force the app to always use the light or dark user-interface appearance, such as \"dark mode\", or make it automatically adapt to the system preferences. If not provided, defaults to `light`. Requires `expo-system-ui` be installed in your project to work on Android."
            | optional,
          version
            | String
            | doc "Your app version. In addition to this field, you\"ll also use `ios.buildNumber` and `android.versionCode` — read more about how to version your app [here](https://docs.expo.dev/distribution/app-stores/#versioning-your-app). On iOS this corresponds to `CFBundleShortVersionString`, and on Android, this corresponds to `versionName`. The required format can be found [here](https://developer.apple.com/documentation/bundleresources/information_property_list/cfbundleshortversionstring)."
            | optional,
          web
            | {
              backgroundColor
                | js2n.string.Matches "^#|(&#x23;)\\d{6}$"
                | doc "Defines the expected “background color” for the website. This value repeats what is already available in the site’s CSS, but can be used by browsers to draw the background color of a shortcut when the manifest is available before the stylesheet has loaded. This creates a smooth transition between launching the web application and loading the site\"s content."
                | optional,
              barStyle
                | std.enum.TagOrString
                | [| 'black-translucent, 'black, '"default" |]
                | doc "If content is set to default, the status bar appears normal. If set to black, the status bar has a black background. If set to black-translucent, the status bar is black and translucent. If set to default or black, the web content is displayed below the status bar. If set to black-translucent, the web content is displayed on the entire screen, partially obscured by the status bar."
                | optional,
              bundler
                | std.enum.TagOrString
                | [| 'metro, 'webpack |]
                | doc "Sets the bundler to use for the web platform. Only supported in the local CLI `npx expo`. Defaults to `webpack` if the `@expo/webpack-config` package is installed, if not, it defaults to `metro`."
                | optional,
              config
                | {
                  firebase
                    | {
                      apiKey | String | optional,
                      appId | String | optional,
                      authDomain | String | optional,
                      databaseURL | String | optional,
                      measurementId | String | optional,
                      messagingSenderId | String | optional,
                      projectId | String | optional,
                      storageBucket | String | optional,
                    }
                    | optional,
                }
                | doc "Firebase web configuration. Used by the expo-firebase packages on both web and native. [Learn more](https://firebase.google.com/docs/reference/js/firebase.html#initializeapp)"
                | optional,
              dangerous
                | {  .. }
                | doc "Experimental features. These will break without deprecation notice."
                | optional,
              description
                | String
                | doc "Provides a general description of what the pinned website does."
                | optional,
              dir
                | std.enum.TagOrString
                | [| 'rtl, 'ltr, 'auto |]
                | doc "Specifies the primary text direction for the name, short_name, and description members. Together with the lang member, it helps the correct display of right-to-left languages."
                | optional,
              display
                | std.enum.TagOrString
                | [| 'browser, 'minimal-ui, 'standalone, 'fullscreen |]
                | doc "Defines the developers’ preferred display mode for the website."
                | optional,
              favicon
                | String
                | doc "Relative path of an image to use for your app\"s favicon."
                | optional,
              lang
                | String
                | doc "Specifies the primary language for the values in the name and short_name members. This value is a string containing a single language tag."
                | optional,
              name
                | String
                | doc "Defines the title of the document, defaults to the outer level name"
                | optional,
              orientation
                | std.enum.TagOrString
                | [|
                  'portrait-secondary,
                  'portrait-primary,
                  'portrait,
                  'landscape-secondary,
                  'landscape-primary,
                  'landscape,
                  'natural,
                  'any
                |]
                | doc "Defines the default orientation for all the website\"s top level browsing contexts."
                | optional,
              output
                | std.enum.TagOrString
                | [| 'server, 'static, 'single |]
                | doc "Sets the export method for the web app for both `expo start` and `expo export`. `static` statically renders HTML files for every route in the `app/` directory, which is available only in Expo Router apps. `single` outputs a Single Page Application (SPA), with a single `index.html` in the output folder, and has no statically indexable HTML. `server` outputs static HTML, and API Routes for hosting with a custom Node.js server. Defaults to `single`."
                | optional,
              preferRelatedApplications
                | Bool
                | doc "Hints for the user agent to indicate to the user that the specified native applications (defined in expo.ios and expo.android) are recommended over the website."
                | optional,
              scope
                | String
                | doc "Defines the navigation scope of this website\"s context. This restricts what web pages can be viewed while the manifest is applied. If the user navigates outside the scope, it returns to a normal web page inside a browser tab/window. If the scope is a relative URL, the base URL will be the URL of the manifest."
                | optional,
              shortName
                | String
                | doc "A short version of the app\"s name, 12 characters or fewer. Used in app launcher and new tab pages. Maps to `short_name` in the PWA manifest.json. Defaults to the `name` property."
                | optional,
              splash
                | {
                  backgroundColor
                    | js2n.string.Matches "^#|(&#x23;)\\d{6}$"
                    | doc "Color to fill the loading screen background"
                    | optional,
                  image
                    | String
                    | doc "Local path or remote URL to an image to fill the background of the loading screen. Image size and aspect ratio are up to you. Must be a .png."
                    | optional,
                  resizeMode
                    | std.enum.TagOrString
                    | [| 'contain, 'cover |]
                    | doc "Determines how the `image` will be displayed in the splash loading screen. Must be one of `cover` or `contain`, defaults to `contain`."
                    | optional,
                }
                | doc "Configuration for PWA splash screens."
                | optional,
              startUrl
                | String
                | doc "The URL that loads when a user launches the application (e.g., when added to home screen), typically the index. Note: This has to be a relative URL, relative to the manifest URL."
                | optional,
              themeColor
                | js2n.string.Matches "^#|(&#x23;)\\d{6}$"
                | doc "Defines the color of the Android tool bar, and may be reflected in the app\"s preview in task switchers."
                | optional,
              ..
            }
            | doc "Configuration that is specific to the web platform."
            | optional,
        }
        | optional,
    }