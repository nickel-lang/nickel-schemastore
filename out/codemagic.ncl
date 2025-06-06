# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.AppStoreConnect" =
        {
            api_key
              | std.contract.any_of
                [
                  String,
                  js2n.string.Matches "^Encrypted\\(.+\\)$",
                  std.contract.Sequence
                    [
                      js2n.string.MinLength 1,
                      js2n.string.Matches "^\\$\\{?([^:{}]+).*\\}?$"
                    ],
                  js2n.string.Matches
                    "^\\$\\{\\{\\s*inputs\\.[a-zA-Z]\\w*\\s*\\}\\}",
                  std.contract.Sequence
                    [
                      refs."definitions.SecureEnvironmentVariable",
                      { _ | Dyn }
                    ]
                ]
              | doc "App Store Connect API key in .p8 format that is used for authenticating application packages validation and upload to App Store Connect. It is required for TestFlight submission."
              | optional,
            apple_id
              | std.contract.any_of
                [
                  String,
                  js2n.string.Matches "^Encrypted\\(.+\\)$",
                  std.contract.Sequence
                    [
                      js2n.string.MinLength 1,
                      js2n.string.Matches "^\\$\\{?([^:{}]+).*\\}?$"
                    ],
                  js2n.string.Matches
                    "^\\$\\{\\{\\s*inputs\\.[a-zA-Z]\\w*\\s*\\}\\}",
                  std.contract.Sequence
                    [
                      refs."definitions.SecureEnvironmentVariable",
                      { _ | Dyn }
                    ]
                ]
              | doc "The email address used to log in to App Store Connect. It can also be passed with an environment variable."
              | optional,
            auth
              | std.contract.any_of
                [
                  js2n.string.Matches
                    "^\\$\\{\\{\\s*inputs\\.[a-zA-Z]\\w*\\s*\\}\\}",
                  std.contract.Sequence
                    [ refs."definitions.AppStoreConnectAuth", String ]
                ]
              | doc "Accepted value: integration. When defined, the API key info inherited from integrations is used for authenticating with App Store Connect. If you omit this key-value pair, you must define API key, key identifier and issuer identifier explicitly."
              | optional,
            beta_groups
              | Array (
                std.contract.any_of
                  [
                    String,
                    std.contract.Sequence
                      [
                        js2n.string.MinLength 1,
                        js2n.string.Matches "^\\$\\{?([^:{}]+).*\\}?$"
                      ],
                    js2n.string.Matches
                      "^\\$\\{\\{\\s*inputs\\.[a-zA-Z]\\w*\\s*\\}\\}"
                  ]
              )
              | doc "Published build will be made available to the specified Beta groups in App Store Connect. TestFlight submission is required in order to release builds to the groups of beta testers."
              | optional,
            cancel_previous_submissions
              | std.contract.any_of
                [
                  Bool,
                  std.contract.Sequence
                    [
                      js2n.string.MinLength 1,
                      js2n.string.Matches "^\\$\\{?([^:{}]+).*\\}?$"
                    ],
                  js2n.string.Matches
                    "^\\$\\{\\{\\s*inputs\\.[a-zA-Z]\\w*\\s*\\}\\}"
                ]
              | doc "Cancel previous submissions before submitting application package to App Store review. Requires authentication using App Store Connect API key."
              | optional,
            copyright
              | std.contract.any_of
                [
                  String,
                  std.contract.Sequence
                    [
                      js2n.string.MinLength 1,
                      js2n.string.Matches "^\\$\\{?([^:{}]+).*\\}?$"
                    ],
                  js2n.string.Matches
                    "^\\$\\{\\{\\s*inputs\\.[a-zA-Z]\\w*\\s*\\}\\}"
                ]
              | doc "The name of the person or entity that owns the exclusive rights to your app, preceded by the year the rights were obtained (for example, \"2008 Acme Inc.\"). Do not provide a URL."
              | optional,
            earliest_release_date
              | std.contract.any_of
                [
                  String,
                  js2n.string.Matches
                    "^\\$\\{\\{\\s*inputs\\.[a-zA-Z]\\w*\\s*\\}\\}"
                ]
              | doc "Specify earliest return date for scheduled release type. Timezone aware ISO8601 timestamp, for example 2021-11-10T14:55:41+00:00."
              | optional,
            expire_build_submitted_for_review
              | std.contract.any_of
                [
                  Bool,
                  std.contract.Sequence
                    [
                      js2n.string.MinLength 1,
                      js2n.string.Matches "^\\$\\{?([^:{}]+).*\\}?$"
                    ],
                  js2n.string.Matches
                    "^\\$\\{\\{\\s*inputs\\.[a-zA-Z]\\w*\\s*\\}\\}"
                ]
              | doc "Expire previously submitted build that is in review before submitting published build to Testflight. Requires authentication using App Store Connect API key."
              | optional,
            issuer_id
              | std.contract.any_of
                [
                  String,
                  js2n.string.Matches "^Encrypted\\(.+\\)$",
                  std.contract.Sequence
                    [
                      js2n.string.MinLength 1,
                      js2n.string.Matches "^\\$\\{?([^:{}]+).*\\}?$"
                    ],
                  js2n.string.Matches
                    "^\\$\\{\\{\\s*inputs\\.[a-zA-Z]\\w*\\s*\\}\\}",
                  std.contract.Sequence
                    [
                      refs."definitions.SecureEnvironmentVariable",
                      { _ | Dyn }
                    ]
                ]
              | doc "App Store Connect API key issuer identifier that is used for authenticating application packages validation and upload to App Store Connect. It is required for TestFlight submission."
              | optional,
            key_id
              | std.contract.any_of
                [
                  String,
                  js2n.string.Matches "^Encrypted\\(.+\\)$",
                  std.contract.Sequence
                    [
                      js2n.string.MinLength 1,
                      js2n.string.Matches "^\\$\\{?([^:{}]+).*\\}?$"
                    ],
                  js2n.string.Matches
                    "^\\$\\{\\{\\s*inputs\\.[a-zA-Z]\\w*\\s*\\}\\}",
                  std.contract.Sequence
                    [
                      refs."definitions.SecureEnvironmentVariable",
                      { _ | Dyn }
                    ]
                ]
              | doc "App Store Connect API key identifier that is used for authenticating application packages validation and upload to App Store Connect. It is required for TestFlight submission."
              | optional,
            password
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [
                      js2n.string.MinLength 1,
                      js2n.string.Matches "^([a-z]{4}-){3}[a-z]{4}$"
                    ],
                  js2n.string.Matches "^Encrypted\\(.+\\)$",
                  std.contract.Sequence
                    [
                      js2n.string.MinLength 1,
                      js2n.string.Matches "^\\$\\{?([^:{}]+).*\\}?$"
                    ],
                  js2n.string.Matches
                    "^\\$\\{\\{\\s*inputs\\.[a-zA-Z]\\w*\\s*\\}\\}",
                  std.contract.Sequence
                    [
                      refs."definitions.SecureEnvironmentVariable",
                      { _ | Dyn }
                    ]
                ]
              | doc "App-specific passwords allow you to sign in to your account securely when you use third-party apps with your Apple ID. e.g. ujlw-ypqu-dgzw-vyog. The plain or encrypted password can also be passed with en environment variable."
              | optional,
            phased_release
              | std.contract.any_of
                [
                  Bool,
                  std.contract.Sequence
                    [
                      js2n.string.MinLength 1,
                      js2n.string.Matches "^\\$\\{?([^:{}]+).*\\}?$"
                    ],
                  js2n.string.Matches
                    "^\\$\\{\\{\\s*inputs\\.[a-zA-Z]\\w*\\s*\\}\\}"
                ]
              | doc "Whether or not to release an App Store version update in phases. With this option turned on, your version update will be released over a 7-day period to a percentage of your users (selected at random by their Apple ID) with automatic updates turned on. Learn more from https://developer.apple.com/help/app-store-connect/update-your-app/release-a-version-update-in-phases. If not specified, then the default phased release configuration for the App Store version is reused."
              | optional,
            release_type
              | std.contract.any_of
                [
                  js2n.string.Matches
                    "^\\$\\{\\{\\s*inputs\\.[a-zA-Z]\\w*\\s*\\}\\}",
                  std.contract.Sequence
                    [ refs."definitions.AppStoreReleaseType", String ]
                ]
              | doc "Choose when to release the app. You can either manually release the app at a later date on the App Store Connect website, or the app version can be automatically released right after it has been approved by App Review."
              | optional,
            submit_to_app_store
              | std.contract.any_of
                [
                  Bool,
                  std.contract.Sequence
                    [
                      js2n.string.MinLength 1,
                      js2n.string.Matches "^\\$\\{?([^:{}]+).*\\}?$"
                    ],
                  js2n.string.Matches
                    "^\\$\\{\\{\\s*inputs\\.[a-zA-Z]\\w*\\s*\\}\\}"
                ]
              | doc "Submit published build to App Store review. Requires authentication using App Store Connect API key."
              | optional,
            submit_to_testflight
              | std.contract.any_of
                [
                  Bool,
                  std.contract.Sequence
                    [
                      js2n.string.MinLength 1,
                      js2n.string.Matches "^\\$\\{?([^:{}]+).*\\}?$"
                    ],
                  js2n.string.Matches
                    "^\\$\\{\\{\\s*inputs\\.[a-zA-Z]\\w*\\s*\\}\\}"
                ]
              | doc "Submit published build to Testflight. Requires authentication using App Store Connect API key."
              | optional,
          },
      "definitions.AppStoreConnectAuth" =
        std.contract.Sequence [ std.enum.TagOrString, [| 'integration |] ],
      "definitions.AppStoreReleaseType" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [| 'SCHEDULED, 'AFTER_APPROVAL, 'MANUAL |]
            ],
      "definitions.BranchPattern" =
        {
            include
              | Bool
              | doc "If set to false, the matching branches will not be watched for triggering events."
              | optional,
            pattern
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [
                      js2n.string.MinLength 1,
                      js2n.string.Matches "^\\$\\{?([^:{}]+).*\\}?$"
                    ],
                  js2n.string.Matches
                    "^\\$\\{\\{\\s*inputs\\.[a-zA-Z]\\w*\\s*\\}\\}",
                  std.contract.Sequence
                    [
                      refs."definitions.SecureEnvironmentVariable",
                      { _ | Dyn }
                    ],
                  js2n.string.MinLength 1,
                  std.number.Integer,
                  Number,
                  Bool
                ]
              | doc "The pattern can also be passed with an environment variable."
              | optional,
            source
              | Bool
              | doc "The variable is ignored for events other than pull_request."
              | optional,
          },
      "definitions.BuildScript" =
        {
            ignore_failure
              | std.contract.any_of
                [
                  Bool,
                  std.contract.Sequence
                    [
                      js2n.string.MinLength 1,
                      js2n.string.Matches "^\\$\\{?([^:{}]+).*\\}?$"
                    ],
                  js2n.string.Matches
                    "^\\$\\{\\{\\s*inputs\\.[a-zA-Z]\\w*\\s*\\}\\}"
                ]
              | doc "If set to true, the workflow will continue to run even if the script fails."
              | optional,
            name
              | std.contract.any_of
                [ js2n.string.MinLength 1, std.number.Integer, Number, Bool ]
              | doc "A descriptive script name can be provided to be shown in the UI. If not passed, the first line of your script will be shown in the UI for the script block."
              | optional,
            on_failure
              | std.contract.any_of
                [
                  js2n.string.Matches
                    "^\\$\\{\\{\\s*inputs\\.[a-zA-Z]\\w*\\s*\\}\\}",
                  std.contract.Sequence
                    [ refs."definitions.ScriptOnFailure", String ]
                ]
              | doc "The only supported action is to proceed directly to publishing."
              | optional,
            script
              | js2n.string.MinLength 1
              | doc "By default the script will be run in the Bash shell. You can run the script in other languages by defining a shebang line in the beginning.",
            test_report
              | js2n.string.MinLength 1
              | doc "You can display test results visually in the build overview. The value can be an absolute path, or a path relative to $CM_BUILD_DIR (in this case the patterns will be searched recursively). Supported test report formats are Junit XML and .JSON for Flutter's --machine report."
              | optional,
            when
              | refs."definitions.When"
              | { _ | Dyn }
              | doc "All conditions below should be met in order for script to continue."
              | optional,
            working_directory
              | String
              | doc "Specify directory where this script will be executed. It overrides global workflow working directory."
              | optional,
          },
      "definitions.Cache" =
        {
            cache_paths
              | Array (js2n.string.MinLength 1)
              | doc "For example, you may consider caching the following paths: \"$FLUTTER_ROOT/.pub-cache\" for Dart cache, \"$HOME/.gradle/caches\" for gradle cache, \"$HOME/Library/Caches/CocoaPods\" for CocoaPods cache."
              | optional,
          },
      "definitions.CertificateWithVariable" =
        {
            certificate
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [
                      js2n.string.MinLength 1,
                      js2n.string.Matches "^\\$\\{?([^:{}]+).*\\}?$"
                    ],
                  js2n.string.Matches
                    "^\\$\\{\\{\\s*inputs\\.[a-zA-Z]\\w*\\s*\\}\\}",
                  std.contract.Sequence
                    [
                      refs."definitions.SecureEnvironmentVariable",
                      { _ | Dyn }
                    ],
                  js2n.string.MinLength 1
                ]
              | doc "Certificate reference found in Team settings -> Code signing identities",
            environment_variable
              | js2n.string.MinLength 1
              | doc "Name of the variable containing the certificate path"
              | optional,
          },
      "definitions.Changeset" =
        {
            excludes
              | Array (
                std.contract.any_of
                  [ js2n.string.MinLength 1, std.number.Integer, Number, Bool ]
              )
              | optional,
            includes
              | Array (
                std.contract.any_of
                  [ js2n.string.MinLength 1, std.number.Integer, Number, Bool ]
              )
              | optional,
          },
      "definitions.DistributionType" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [| 'enterprise, 'development, 'app_store, 'ad_hoc |]
            ],
      "definitions.Email" =
        {
            notify
              | refs."definitions.PublisherNotification"
              | { _ | Dyn }
              | doc "Allows to turn on or turn off email notification on build success or failure."
              | optional,
            recipients
              | js2n.array.MinItems 1
              | Array (
                std.contract.any_of
                  [
                    String,
                    std.contract.Sequence
                      [
                        js2n.string.MinLength 1,
                        js2n.string.Matches "^\\$\\{?([^:{}]+).*\\}?$"
                      ],
                    js2n.string.Matches
                      "^\\$\\{\\{\\s*inputs\\.[a-zA-Z]\\w*\\s*\\}\\}",
                    std.contract.Sequence
                      [
                        refs."definitions.SecureEnvironmentVariable",
                        { _ | Dyn }
                      ]
                  ]
              )
              | doc "Provide valid email addresses here.",
          },
      "definitions.Environment" =
        {
            android_signing
              | js2n.array.MinItems 1
              | Array (
                std.contract.any_of
                  [
                    std.contract.Sequence
                      [ refs."definitions.KeystoreWithVariables", { _ | Dyn } ],
                    std.contract.Sequence
                      [
                        js2n.string.MinLength 1,
                        js2n.string.Matches "^\\$\\{?([^:{}]+).*\\}?$"
                      ],
                    js2n.string.Matches
                      "^\\$\\{\\{\\s*inputs\\.[a-zA-Z]\\w*\\s*\\}\\}",
                    std.contract.Sequence
                      [
                        refs."definitions.SecureEnvironmentVariable",
                        { _ | Dyn }
                      ],
                    js2n.string.MinLength 1
                  ]
              )
              | doc "Android code signing identities configured under Team settings"
              | optional,
            cocoapods
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [
                      js2n.string.MinLength 1,
                      js2n.string.Matches "^\\$\\{?([^:{}]+).*\\}?$"
                    ],
                  js2n.string.Matches
                    "^\\$\\{\\{\\s*inputs\\.[a-zA-Z]\\w*\\s*\\}\\}",
                  std.contract.Sequence
                    [
                      refs."definitions.SecureEnvironmentVariable",
                      { _ | Dyn }
                    ],
                  js2n.string.MinLength 1,
                  std.number.Integer,
                  Number
                ]
              | doc "Define default or version (e.g. 1.9.1)."
              | optional,
            flutter
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [
                      js2n.string.MinLength 1,
                      js2n.string.Matches "^\\$\\{?([^:{}]+).*\\}?$"
                    ],
                  js2n.string.Matches
                    "^\\$\\{\\{\\s*inputs\\.[a-zA-Z]\\w*\\s*\\}\\}",
                  std.contract.Sequence
                    [
                      refs."definitions.SecureEnvironmentVariable",
                      { _ | Dyn }
                    ],
                  js2n.string.MinLength 1,
                  std.number.Integer,
                  Number,
                  std.contract.Sequence
                    [ refs."definitions.FlutterWithFlavor", { _ | Dyn } ]
                ]
              | doc "Define the channel name, version (e.g. v1.13.4) or 'fvm' if using Flutter Version Management."
              | optional,
            groups
              | Array (js2n.string.MinLength 1)
              | doc "Define environment variable group names that have been configured in app or team settings."
              | optional,
            ios_signing
              | refs."definitions.IosSigning"
              | { _ | Dyn }
              | doc "iOS code signing identities configured under Team settings"
              | optional,
            java
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [
                      js2n.string.MinLength 1,
                      js2n.string.Matches "^\\$\\{?([^:{}]+).*\\}?$"
                    ],
                  js2n.string.Matches
                    "^\\$\\{\\{\\s*inputs\\.[a-zA-Z]\\w*\\s*\\}\\}",
                  std.contract.Sequence
                    [
                      refs."definitions.SecureEnvironmentVariable",
                      { _ | Dyn }
                    ],
                  js2n.string.MinLength 1,
                  std.number.Integer,
                  Number
                ]
              | doc "Define default, or platform version (e.g. 11)."
              | optional,
            ndk
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [
                      js2n.string.MinLength 1,
                      js2n.string.Matches "^\\$\\{?([^:{}]+).*\\}?$"
                    ],
                  js2n.string.Matches
                    "^\\$\\{\\{\\s*inputs\\.[a-zA-Z]\\w*\\s*\\}\\}",
                  std.contract.Sequence
                    [
                      refs."definitions.SecureEnvironmentVariable",
                      { _ | Dyn }
                    ],
                  js2n.string.MinLength 1,
                  std.number.Integer,
                  Number
                ]
              | doc "Define default or revision (e.g. r19c)."
              | optional,
            node
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [
                      js2n.string.MinLength 1,
                      js2n.string.Matches "^\\$\\{?([^:{}]+).*\\}?$"
                    ],
                  js2n.string.Matches
                    "^\\$\\{\\{\\s*inputs\\.[a-zA-Z]\\w*\\s*\\}\\}",
                  std.contract.Sequence
                    [
                      refs."definitions.SecureEnvironmentVariable",
                      { _ | Dyn }
                    ],
                  js2n.string.MinLength 1,
                  std.number.Integer,
                  Number
                ]
              | doc "Define default, latest, current, lts, carbon (or another stream), nightly or version (e.g. 12.4.0)."
              | optional,
            npm
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [
                      js2n.string.MinLength 1,
                      js2n.string.Matches "^\\$\\{?([^:{}]+).*\\}?$"
                    ],
                  js2n.string.Matches
                    "^\\$\\{\\{\\s*inputs\\.[a-zA-Z]\\w*\\s*\\}\\}",
                  std.contract.Sequence
                    [
                      refs."definitions.SecureEnvironmentVariable",
                      { _ | Dyn }
                    ],
                  js2n.string.MinLength 1,
                  std.number.Integer,
                  Number
                ]
              | doc "Define default, latest, next, lts or version (e.g. 6.13.7)."
              | optional,
            ruby
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [
                      js2n.string.MinLength 1,
                      js2n.string.Matches "^\\$\\{?([^:{}]+).*\\}?$"
                    ],
                  js2n.string.Matches
                    "^\\$\\{\\{\\s*inputs\\.[a-zA-Z]\\w*\\s*\\}\\}",
                  std.contract.Sequence
                    [
                      refs."definitions.SecureEnvironmentVariable",
                      { _ | Dyn }
                    ],
                  js2n.string.MinLength 1,
                  std.number.Integer,
                  Number
                ]
              | doc "Define default, or platform version (e.g. 2.5.1)."
              | optional,
            ubuntu
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [
                      js2n.string.MinLength 1,
                      js2n.string.Matches "^\\$\\{?([^:{}]+).*\\}?$"
                    ],
                  js2n.string.Matches
                    "^\\$\\{\\{\\s*inputs\\.[a-zA-Z]\\w*\\s*\\}\\}",
                  std.contract.Sequence
                    [
                      refs."definitions.SecureEnvironmentVariable",
                      { _ | Dyn }
                    ],
                  js2n.string.MinLength 1,
                  std.number.Integer,
                  Number
                ]
              | doc "Define the Ubuntu version to use for the build."
              | optional,
            unity
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [
                      js2n.string.MinLength 1,
                      js2n.string.Matches "^\\$\\{?([^:{}]+).*\\}?$"
                    ],
                  js2n.string.Matches
                    "^\\$\\{\\{\\s*inputs\\.[a-zA-Z]\\w*\\s*\\}\\}",
                  std.contract.Sequence
                    [
                      refs."definitions.SecureEnvironmentVariable",
                      { _ | Dyn }
                    ],
                  js2n.string.MinLength 1
                ]
              | doc "Define exact version (e.g. 2020.3.15f2)."
              | optional,
            vars
              | js2n.record.Record
                {
                  additional =
                    'Some
                        (std.contract.any_of
                          [
                            js2n.string.MinLength 1,
                            std.number.Integer,
                            Number,
                            Bool
                          ]),
                  patterns =
                    {
                        "[0-9a-zA-Z_]+" =
                          std.contract.any_of
                              [
                                js2n.string.MinLength 1,
                                std.number.Integer,
                                Number,
                                Bool
                              ],
                      },
                  properties = {},
                  required = {},
                }
              | doc "Define your environment variables."
              | optional,
            xcode
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [
                      js2n.string.MinLength 1,
                      js2n.string.Matches "^\\$\\{?([^:{}]+).*\\}?$"
                    ],
                  js2n.string.Matches
                    "^\\$\\{\\{\\s*inputs\\.[a-zA-Z]\\w*\\s*\\}\\}",
                  std.contract.Sequence
                    [
                      refs."definitions.SecureEnvironmentVariable",
                      { _ | Dyn }
                    ],
                  js2n.string.MinLength 1,
                  std.number.Integer,
                  Number
                ]
              | doc "Define latest, edge or version (e.g. 11.2)."
              | optional,
          },
      "definitions.Firebase" =
        {
            android
              | refs."definitions.FirebaseType"
              | { _ | Dyn }
              | doc "Codemagic enables you to automatically publish your Android app to Firebase App Distribution."
              | optional,
            firebase_service_account
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [
                      js2n.string.MinLength 1,
                      js2n.string.Matches "^\\$\\{?([^:{}]+).*\\}?$"
                    ],
                  js2n.string.Matches
                    "^\\$\\{\\{\\s*inputs\\.[a-zA-Z]\\w*\\s*\\}\\}",
                  std.contract.Sequence
                    [
                      refs."definitions.SecureEnvironmentVariable",
                      { _ | Dyn }
                    ],
                  js2n.string.MinLength 1
                ]
              | doc "The content of service account file that has \"Firebase App Distribution Admin\" role."
              | optional,
            firebase_token
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [
                      js2n.string.MinLength 1,
                      js2n.string.Matches "^\\$\\{?([^:{}]+).*\\}?$"
                    ],
                  js2n.string.Matches
                    "^\\$\\{\\{\\s*inputs\\.[a-zA-Z]\\w*\\s*\\}\\}",
                  std.contract.Sequence
                    [
                      refs."definitions.SecureEnvironmentVariable",
                      { _ | Dyn }
                    ],
                  js2n.string.MinLength 1
                ]
              | doc "Firebase access token generated using Firebase CLI; to receive the token use firebase login:ci with Firebase CLI installed."
              | optional,
            ios
              | refs."definitions.FirebaseType"
              | { _ | Dyn }
              | doc "Codemagic enables you to automatically publish your iOS app to Firebase App Distribution."
              | optional,
          },
      "definitions.FirebaseAndroidArtifactType" =
        std.contract.Sequence [ std.enum.TagOrString, [| 'apk, 'aab |] ],
      "definitions.FirebaseType" =
        {
            app_id
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [
                      js2n.string.MinLength 1,
                      js2n.string.Matches "^\\$\\{?([^:{}]+).*\\}?$"
                    ],
                  js2n.string.Matches
                    "^\\$\\{\\{\\s*inputs\\.[a-zA-Z]\\w*\\s*\\}\\}",
                  std.contract.Sequence
                    [
                      refs."definitions.SecureEnvironmentVariable",
                      { _ | Dyn }
                    ],
                  js2n.string.MinLength 1
                ]
              | doc "Firebase application id found in Firebase application settings.",
            artifact_type
              | std.contract.any_of
                [
                  js2n.string.Matches
                    "^\\$\\{\\{\\s*inputs\\.[a-zA-Z]\\w*\\s*\\}\\}",
                  std.contract.Sequence
                    [ refs."definitions.FirebaseAndroidArtifactType", String ]
                ]
              | doc "Artifact type (aab/apk) to prioritize when uploading to Firebase App Distribution, by default app bundles are prioritized."
              | optional,
            groups
              | Array (
                std.contract.any_of
                  [
                    String,
                    std.contract.Sequence
                      [
                        js2n.string.MinLength 1,
                        js2n.string.Matches "^\\$\\{?([^:{}]+).*\\}?$"
                      ],
                    js2n.string.Matches
                      "^\\$\\{\\{\\s*inputs\\.[a-zA-Z]\\w*\\s*\\}\\}"
                  ]
              )
              | doc "Test groups that the application should be distributed to."
              | optional,
          },
      "definitions.FlutterWithFlavor" =
        {
            flavor
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [
                      js2n.string.MinLength 1,
                      js2n.string.Matches "^\\$\\{?([^:{}]+).*\\}?$"
                    ],
                  js2n.string.Matches
                    "^\\$\\{\\{\\s*inputs\\.[a-zA-Z]\\w*\\s*\\}\\}",
                  std.contract.Sequence
                    [
                      refs."definitions.SecureEnvironmentVariable",
                      { _ | Dyn }
                    ],
                  js2n.string.MinLength 1
                ]
              | doc "The name of the flavor to use when using FVM."
              | optional,
            version
              | std.contract.any_of
                [ js2n.string.MinLength 1, std.number.Integer, Number ]
              | doc "Define the channel name, version (e.g. v1.13.4) or 'fvm' if using Flutter Version Management.",
          },
      "definitions.GooglePlay" =
        {
            changes_not_sent_for_review
              | std.contract.any_of
                [
                  Bool,
                  std.contract.Sequence
                    [
                      js2n.string.MinLength 1,
                      js2n.string.Matches "^\\$\\{?([^:{}]+).*\\}?$"
                    ],
                  js2n.string.Matches
                    "^\\$\\{\\{\\s*inputs\\.[a-zA-Z]\\w*\\s*\\}\\}"
                ]
              | doc "Indicates that the changes in this edit will not be reviewed until they are explicitly sent for review from the Google Play Console UI."
              | optional,
            credentials
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [
                      js2n.string.MinLength 1,
                      js2n.string.Matches "^\\$\\{?([^:{}]+).*\\}?$"
                    ],
                  js2n.string.Matches
                    "^\\$\\{\\{\\s*inputs\\.[a-zA-Z]\\w*\\s*\\}\\}",
                  std.contract.Sequence
                    [
                      refs."definitions.SecureEnvironmentVariable",
                      { _ | Dyn }
                    ],
                  js2n.string.MinLength 1
                ]
              | doc "The encrypted JSON key file or the encrypted contents of the JSON key file. The value can also be passed with an environment variable.",
            in_app_update_priority
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [
                      std.number.Integer,
                      js2n.number.Maximum 5,
                      js2n.number.Minimum 0
                    ],
                  std.contract.Sequence
                    [
                      js2n.string.MinLength 1,
                      js2n.string.Matches "^\\$\\{?([^:{}]+).*\\}?$"
                    ],
                  js2n.string.Matches
                    "^\\$\\{\\{\\s*inputs\\.[a-zA-Z]\\w*\\s*\\}\\}"
                ]
              | doc "If your application supports in-app updates, set the release priority by specifying an integer in range [0, 5]. Otherwise, in_app_update_priority can be omitted."
              | optional,
            release_name
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [
                      js2n.string.MinLength 1,
                      js2n.string.Matches "^\\$\\{?([^:{}]+).*\\}?$"
                    ],
                  js2n.string.Matches
                    "^\\$\\{\\{\\s*inputs\\.[a-zA-Z]\\w*\\s*\\}\\}",
                  std.contract.Sequence
                    [
                      refs."definitions.SecureEnvironmentVariable",
                      { _ | Dyn }
                    ],
                  js2n.string.MinLength 1
                ]
              | doc "Not required to be unique. If not set, the name is generated from the APK's versionName."
              | optional,
            release_promotion
              | refs."definitions.ReleasePromotion"
              | { _ | Dyn }
              | doc "Additionally, promote the uploaded release to another track"
              | optional,
            rollout_fraction
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [
                      js2n.number.ExclusiveMaximum 1,
                      js2n.number.ExclusiveMinimum 0
                    ],
                  std.contract.Sequence
                    [
                      js2n.string.MinLength 1,
                      js2n.string.Matches "^\\$\\{?([^:{}]+).*\\}?$"
                    ],
                  js2n.string.Matches
                    "^\\$\\{\\{\\s*inputs\\.[a-zA-Z]\\w*\\s*\\}\\}"
                ]
              | doc "Codemagic supports staged releases, allowing users to choose which fraction of the testers or users get access to the application. To release to everyone, omit the rollout_fraction field."
              | optional,
            submit_as_draft
              | std.contract.any_of
                [
                  Bool,
                  std.contract.Sequence
                    [
                      js2n.string.MinLength 1,
                      js2n.string.Matches "^\\$\\{?([^:{}]+).*\\}?$"
                    ],
                  js2n.string.Matches
                    "^\\$\\{\\{\\s*inputs\\.[a-zA-Z]\\w*\\s*\\}\\}"
                ]
              | doc "Indicates that the artifacts generated in the build will be uploaded to Google Play as a draft release."
              | optional,
            track
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [
                      js2n.string.MinLength 1,
                      js2n.string.Matches "^\\$\\{?([^:{}]+).*\\}?$"
                    ],
                  js2n.string.Matches
                    "^\\$\\{\\{\\s*inputs\\.[a-zA-Z]\\w*\\s*\\}\\}",
                  std.contract.Sequence
                    [
                      refs."definitions.SecureEnvironmentVariable",
                      { _ | Dyn }
                    ],
                  js2n.string.MinLength 1
                ]
              | doc "Codemagic enables you to automatically publish your app to Google Play.",
          },
      "definitions.Input" =
        {
            "default"
              | std.contract.any_of [ Bool, std.number.Integer, Number, String ]
              | doc "Provide a default value for the input parameter. Must be specified if the input is not required and prohibited otherwise."
              | optional,
            description
              | js2n.string.MinLength 1
              | doc "A description for this input parameter. Description is displayed in Codemagic when manually starting a build for this workflow and user is prompted to provide values for the inputs.",
            options
              | js2n.array.MinItems 1
              | Array (
                std.contract.any_of
                  [ js2n.string.MinLength 1, std.number.Integer, Number, Bool ]
              )
              | doc "Provide a list of values as options for the `choice` input. Required if type is `choice` and prohibited otherwise."
              | optional,
            type
              | refs."definitions.InputType"
              | String
              | doc "Defines the data type of the input parameter. This must be one of: `boolean`, `choice`, `number` or `string`. By default, `string` is assumed. Input values for the `choice` type are resolved to strings and must be defined in the `options` field. Values for inputs with types `boolean` and `number` are persisted as booleans and integers or floating point numbers respectively, instead of converting them to strings as long as they are not used directly in string interpolations."
              | optional,
          },
      "definitions.InputType" =
        std.contract.Sequence
            [ std.enum.TagOrString, [| 'string, 'number, 'choice, 'boolean |] ],
      "definitions.InstanceType" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [|
                'windows_x2,
                'linux_x2,
                'linux,
                'mac_pro,
                'mac_mini_m2,
                'mac_mini_m1,
                'mac_mini
              |]
            ],
      "definitions.Integrations" =
        {
            app_store_connect
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [
                      js2n.string.MinLength 1,
                      js2n.string.Matches "^\\$\\{?([^:{}]+).*\\}?$"
                    ],
                  js2n.string.Matches
                    "^\\$\\{\\{\\s*inputs\\.[a-zA-Z]\\w*\\s*\\}\\}",
                  std.contract.Sequence
                    [
                      refs."definitions.SecureEnvironmentVariable",
                      { _ | Dyn }
                    ],
                  js2n.string.MinLength 1
                ]
              | doc "Specify the name of the App Store Connect API key to be used from team or personal integrations to authenticate actions for code signing and publishing."
              | optional,
          },
      "definitions.IosSigning" =
        {
            bundle_identifier
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [
                      js2n.string.MinLength 1,
                      js2n.string.Matches "^\\$\\{?([^:{}]+).*\\}?$"
                    ],
                  js2n.string.Matches
                    "^\\$\\{\\{\\s*inputs\\.[a-zA-Z]\\w*\\s*\\}\\}",
                  std.contract.Sequence
                    [
                      refs."definitions.SecureEnvironmentVariable",
                      { _ | Dyn }
                    ],
                  js2n.string.MinLength 1
                ]
              | doc "Bundle identifier of certificates and profiles to fetch from Code signing identities"
              | optional,
            certificates
              | js2n.array.MinItems 1
              | Array (
                std.contract.any_of
                  [
                    std.contract.Sequence
                      [
                        js2n.string.MinLength 1,
                        js2n.string.Matches "^\\$\\{?([^:{}]+).*\\}?$"
                      ],
                    js2n.string.Matches
                      "^\\$\\{\\{\\s*inputs\\.[a-zA-Z]\\w*\\s*\\}\\}",
                    std.contract.Sequence
                      [
                        refs."definitions.SecureEnvironmentVariable",
                        { _ | Dyn }
                      ],
                    js2n.string.MinLength 1,
                    std.contract.Sequence
                      [
                        refs."definitions.CertificateWithVariable",
                        { _ | Dyn }
                      ]
                  ]
              )
              | doc "Certificates to fetch from Code signing identities"
              | optional,
            distribution_type
              | std.contract.any_of
                [
                  js2n.string.Matches
                    "^\\$\\{\\{\\s*inputs\\.[a-zA-Z]\\w*\\s*\\}\\}",
                  std.contract.Sequence
                    [ refs."definitions.DistributionType", String ]
                ]
              | doc "Type of certificates and profiles to fetch from Code signing identities"
              | optional,
            provisioning_profiles
              | js2n.array.MinItems 1
              | Array (
                std.contract.any_of
                  [
                    std.contract.Sequence
                      [
                        js2n.string.MinLength 1,
                        js2n.string.Matches "^\\$\\{?([^:{}]+).*\\}?$"
                      ],
                    js2n.string.Matches
                      "^\\$\\{\\{\\s*inputs\\.[a-zA-Z]\\w*\\s*\\}\\}",
                    std.contract.Sequence
                      [
                        refs."definitions.SecureEnvironmentVariable",
                        { _ | Dyn }
                      ],
                    js2n.string.MinLength 1,
                    std.contract.Sequence
                      [ refs."definitions.ProfileWithVariable", { _ | Dyn } ]
                  ]
              )
              | doc "Provisioning profiles to fetch from Code signing identities"
              | optional,
          },
      "definitions.KeystoreWithVariables" =
        {
            key_alias_environment_variable
              | js2n.string.MinLength 1
              | doc "Name of the variable containing the key alias"
              | optional,
            key_password_environment_variable
              | js2n.string.MinLength 1
              | doc "Name of the variable containing the key password"
              | optional,
            keystore
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [
                      js2n.string.MinLength 1,
                      js2n.string.Matches "^\\$\\{?([^:{}]+).*\\}?$"
                    ],
                  js2n.string.Matches
                    "^\\$\\{\\{\\s*inputs\\.[a-zA-Z]\\w*\\s*\\}\\}",
                  std.contract.Sequence
                    [
                      refs."definitions.SecureEnvironmentVariable",
                      { _ | Dyn }
                    ],
                  js2n.string.MinLength 1
                ]
              | doc "Keystore reference found in Team settings -> Code signing identities",
            keystore_environment_variable
              | js2n.string.MinLength 1
              | doc "Name of the variable containing the keystore path"
              | optional,
            keystore_password_environment_variable
              | js2n.string.MinLength 1
              | doc "Name of the variable containing the keystore password"
              | optional,
          },
      "definitions.PartnerCenter" =
        {
            client_id
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [
                      js2n.string.MinLength 1,
                      js2n.string.Matches "^\\$\\{?([^:{}]+).*\\}?$"
                    ],
                  js2n.string.Matches
                    "^\\$\\{\\{\\s*inputs\\.[a-zA-Z]\\w*\\s*\\}\\}",
                  std.contract.Sequence
                    [
                      refs."definitions.SecureEnvironmentVariable",
                      { _ | Dyn }
                    ],
                  js2n.string.MinLength 1
                ]
              | doc "Application (client) ID in Azure AD portal."
              | optional,
            client_secret
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [
                      js2n.string.MinLength 1,
                      js2n.string.Matches "^\\$\\{?([^:{}]+).*\\}?$"
                    ],
                  js2n.string.Matches
                    "^\\$\\{\\{\\s*inputs\\.[a-zA-Z]\\w*\\s*\\}\\}",
                  std.contract.Sequence
                    [
                      refs."definitions.SecureEnvironmentVariable",
                      { _ | Dyn }
                    ],
                  js2n.string.MinLength 1
                ]
              | doc "The value of the Azure AD app key."
              | optional,
            store_id
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [
                      js2n.string.MinLength 1,
                      js2n.string.Matches "^\\$\\{?([^:{}]+).*\\}?$"
                    ],
                  js2n.string.Matches
                    "^\\$\\{\\{\\s*inputs\\.[a-zA-Z]\\w*\\s*\\}\\}",
                  std.contract.Sequence
                    [
                      refs."definitions.SecureEnvironmentVariable",
                      { _ | Dyn }
                    ],
                  js2n.string.MinLength 1
                ]
              | doc "Store ID set up on Microsoft Partner Center."
              | optional,
            tenant_id
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [
                      js2n.string.MinLength 1,
                      js2n.string.Matches "^\\$\\{?([^:{}]+).*\\}?$"
                    ],
                  js2n.string.Matches
                    "^\\$\\{\\{\\s*inputs\\.[a-zA-Z]\\w*\\s*\\}\\}",
                  std.contract.Sequence
                    [
                      refs."definitions.SecureEnvironmentVariable",
                      { _ | Dyn }
                    ],
                  js2n.string.MinLength 1
                ]
              | doc "Directory (tenant) ID in Azure AD portal."
              | optional,
          },
      "definitions.PreCloneScript" =
        {
            ignore_failure
              | std.contract.any_of
                [
                  Bool,
                  std.contract.Sequence
                    [
                      js2n.string.MinLength 1,
                      js2n.string.Matches "^\\$\\{?([^:{}]+).*\\}?$"
                    ],
                  js2n.string.Matches
                    "^\\$\\{\\{\\s*inputs\\.[a-zA-Z]\\w*\\s*\\}\\}"
                ]
              | doc "If set to true, the workflow will continue to run even if the script fails."
              | optional,
            name
              | std.contract.any_of
                [ js2n.string.MinLength 1, std.number.Integer, Number, Bool ]
              | doc "A descriptive script name can be provided to be shown in the UI. If not passed, the first line of your script will be shown in the UI for the script block."
              | optional,
            on_failure
              | std.contract.any_of
                [
                  js2n.string.Matches
                    "^\\$\\{\\{\\s*inputs\\.[a-zA-Z]\\w*\\s*\\}\\}",
                  std.contract.Sequence
                    [ refs."definitions.ScriptOnFailure", String ]
                ]
              | doc "The only supported action is to proceed directly to publishing."
              | optional,
            script
              | js2n.string.MinLength 1
              | doc "By default the script will be run in the Bash shell. You can run the script in other languages by defining a shebang line in the beginning.",
            when
              | refs."definitions.When"
              | { _ | Dyn }
              | doc "All conditions below should be met in order for script to continue."
              | optional,
            working_directory
              | String
              | doc "Specify directory where this script will be executed. It overrides global workflow working directory."
              | optional,
          },
      "definitions.ProfileWithVariable" =
        {
            environment_variable
              | js2n.string.MinLength 1
              | doc "Name of the variable containing the profile path"
              | optional,
            profile
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [
                      js2n.string.MinLength 1,
                      js2n.string.Matches "^\\$\\{?([^:{}]+).*\\}?$"
                    ],
                  js2n.string.Matches
                    "^\\$\\{\\{\\s*inputs\\.[a-zA-Z]\\w*\\s*\\}\\}",
                  std.contract.Sequence
                    [
                      refs."definitions.SecureEnvironmentVariable",
                      { _ | Dyn }
                    ],
                  js2n.string.MinLength 1
                ]
              | doc "Profile reference found in Team settings -> Code signing identities",
          },
      "definitions.PublisherNotification" =
        {
            failure
              | std.contract.any_of
                [
                  Bool,
                  std.contract.Sequence
                    [
                      js2n.string.MinLength 1,
                      js2n.string.Matches "^\\$\\{?([^:{}]+).*\\}?$"
                    ],
                  js2n.string.Matches
                    "^\\$\\{\\{\\s*inputs\\.[a-zA-Z]\\w*\\s*\\}\\}"
                ]
              | doc "Set to false to not receive a notification when a build fails."
              | optional,
            success
              | std.contract.any_of
                [
                  Bool,
                  std.contract.Sequence
                    [
                      js2n.string.MinLength 1,
                      js2n.string.Matches "^\\$\\{?([^:{}]+).*\\}?$"
                    ],
                  js2n.string.Matches
                    "^\\$\\{\\{\\s*inputs\\.[a-zA-Z]\\w*\\s*\\}\\}"
                ]
              | doc "Set to false to not receive a notification when a build succeeds."
              | optional,
          },
      "definitions.Publishing" =
        {
            app_store_connect
              | refs."definitions.AppStoreConnect"
              | { _ | Dyn }
              | doc "Codemagic enables you to automatically publish your iOS app to App Store Connect for beta testing with TestFlight or distributing the app to users via App Store."
              | optional,
            email
              | refs."definitions.Email"
              | { _ | Dyn }
              | doc "If the build finishes successfully, release notes (if passed) and the generated artifacts will be published to the provided email address(es). If the build fails, an email with a link to build logs will be sent."
              | optional,
            firebase
              | refs."definitions.Firebase"
              | { _ | Dyn }
              | doc "Codemagic enables you to automatically publish your app to Firebase App Distribution. In order to do so, set up an account and project on Firebase and provide Codemagic with your Firebase token, Firebase app id and test groups."
              | optional,
            google_play
              | refs."definitions.GooglePlay"
              | { _ | Dyn }
              | doc "Codemagic enables you to automatically publish your app to the internal, alpha, beta and production tracks on Google Play. In order to do so, you will need to set up a service account in Google Play Console and add the JSON key file to your Codemagic configuration file."
              | optional,
            partner_center
              | refs."definitions.PartnerCenter"
              | { _ | Dyn }
              | doc "Codemagic enables you to automatically publish your app to Microsoft Store. In order to do so, set up an account and project on Microsoft Partner Center and provide Codemagic with your store id, client id, client secret and tenant id."
              | optional,
            scripts
              | js2n.array.MinItems 1
              | Array (
                std.contract.any_of
                  [
                    js2n.string.MinLength 1,
                    std.contract.Sequence
                      [ refs."definitions.BuildScript", { _ | Dyn } ]
                  ]
              )
              | doc "Add scripts to publish to any other service."
              | optional,
            slack
              | refs."definitions.Slack"
              | { _ | Dyn }
              | doc "Integrate Slack publishing into your Codemagic build pipeline to get notified when a build starts and receive build artifacts or logs when the build finishes. To set up publishing to Slack, you first need to connect your Slack workspace in User integrations for personal apps and in Team integrations for team apps."
              | optional,
            tester_groups
              | js2n.array.MinItems 1
              | Array (js2n.string.MinLength 1)
              | doc "List the tester groups that will receive new versions of the application."
              | optional,
          },
      "definitions.ReleasePromotion" =
        {
            promote_as_draft
              | std.contract.any_of
                [
                  Bool,
                  std.contract.Sequence
                    [
                      js2n.string.MinLength 1,
                      js2n.string.Matches "^\\$\\{?([^:{}]+).*\\}?$"
                    ],
                  js2n.string.Matches
                    "^\\$\\{\\{\\s*inputs\\.[a-zA-Z]\\w*\\s*\\}\\}"
                ]
              | doc "Indicates that the promoted release will be in the draft status in the target track."
              | optional,
            rollout_fraction
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [
                      js2n.number.ExclusiveMaximum 1,
                      js2n.number.ExclusiveMinimum 0
                    ],
                  std.contract.Sequence
                    [
                      js2n.string.MinLength 1,
                      js2n.string.Matches "^\\$\\{?([^:{}]+).*\\}?$"
                    ],
                  js2n.string.Matches
                    "^\\$\\{\\{\\s*inputs\\.[a-zA-Z]\\w*\\s*\\}\\}"
                ]
              | doc "The promoted release in the target track will be staged, allowing users to choose which fraction of the testers or users get access to the application. To release to everyone, omit the rollout_fraction field."
              | optional,
            track
              | std.contract.any_of
                [
                  String,
                  std.contract.Sequence
                    [
                      js2n.string.MinLength 1,
                      js2n.string.Matches "^\\$\\{?([^:{}]+).*\\}?$"
                    ],
                  js2n.string.Matches
                    "^\\$\\{\\{\\s*inputs\\.[a-zA-Z]\\w*\\s*\\}\\}"
                ]
              | doc "The track to promote the release to. Used in conjunction with the 'track` argument.",
          },
      "definitions.ScriptOnFailure" =
        std.contract.Sequence [ std.enum.TagOrString, [| 'publish |] ],
      "definitions.SecureEnvironmentVariable" =
        {
            filePath | String,
            group | String,
            name | String,
            source | String,
            type | std.enum.TagOrString | [| 'secure_environment_variable |],
          },
      "definitions.Slack" =
        {
            channel
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [
                      js2n.string.MinLength 1,
                      js2n.string.Matches "^\\$\\{?([^:{}]+).*\\}?$"
                    ],
                  js2n.string.Matches
                    "^\\$\\{\\{\\s*inputs\\.[a-zA-Z]\\w*\\s*\\}\\}",
                  std.contract.Sequence
                    [
                      refs."definitions.SecureEnvironmentVariable",
                      { _ | Dyn }
                    ],
                  js2n.string.MinLength 1
                ]
              | doc "To allow publishing to private channels, invite the Codemagic Slack app to the channels by writing @codemagic in the channel.",
            notify
              | refs."definitions.PublisherNotification"
              | { _ | Dyn }
              | doc "Allows to turn on or turn off slack notification on build success or failure."
              | optional,
            notify_on_build_start
              | std.contract.any_of
                [
                  Bool,
                  std.contract.Sequence
                    [
                      js2n.string.MinLength 1,
                      js2n.string.Matches "^\\$\\{?([^:{}]+).*\\}?$"
                    ],
                  js2n.string.Matches
                    "^\\$\\{\\{\\s*inputs\\.[a-zA-Z]\\w*\\s*\\}\\}"
                ]
              | doc "When you set notify_on_build_start to true, the channel will be notified when a build starts."
              | optional,
          },
      "definitions.TagPattern" =
        {
            include
              | Bool
              | doc "If set to false, the matching tags will not be watched for triggering events."
              | optional,
            pattern
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [
                      js2n.string.MinLength 1,
                      js2n.string.Matches "^\\$\\{?([^:{}]+).*\\}?$"
                    ],
                  js2n.string.Matches
                    "^\\$\\{\\{\\s*inputs\\.[a-zA-Z]\\w*\\s*\\}\\}",
                  std.contract.Sequence
                    [
                      refs."definitions.SecureEnvironmentVariable",
                      { _ | Dyn }
                    ],
                  js2n.string.MinLength 1,
                  std.number.Integer,
                  Number,
                  Bool
                ]
              | doc "The pattern can also be passed with an environment variable."
              | optional,
          },
      "definitions.Triggering" =
        {
            branch_patterns
              | js2n.array.MinItems 1
              | Array (
                std.contract.Sequence
                  [ refs."definitions.BranchPattern", { _ | Dyn } ]
              )
              | doc "A branch pattern can match the name of a particular branch, or you can use wildcard symbols to create a pattern that matches several branches. Note that for pull request builds you have to specify whether the watched branch is the source or the target of the pull request."
              | optional,
            cancel_previous_builds
              | std.contract.any_of
                [
                  Bool,
                  std.contract.Sequence
                    [
                      js2n.string.MinLength 1,
                      js2n.string.Matches "^\\$\\{?([^:{}]+).*\\}?$"
                    ],
                  js2n.string.Matches
                    "^\\$\\{\\{\\s*inputs\\.[a-zA-Z]\\w*\\s*\\}\\}"
                ]
              | doc "To avoid running builds on outdated commits, set cancel_previous_builds to true to automatically cancel all ongoing and queued builds triggered by webhooks on push or pull request commit when a more recent build has been triggered for the same branch."
              | optional,
            events
              | Array (
                std.contract.Sequence
                  [ refs."definitions.TriggeringEvent", String ]
              )
              | doc "Currently supported events are push, pull_request, tag, pull_request_labeled, pull_request_labelled."
              | optional,
            tag_patterns
              | js2n.array.MinItems 1
              | Array (
                std.contract.Sequence
                  [ refs."definitions.TagPattern", { _ | Dyn } ]
              )
              | doc "A tag pattern can match the name of a particular tag, or you can use wildcard symbols to create a pattern that matches several tags."
              | optional,
          },
      "definitions.TriggeringEvent" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [|
                'pull_request_labelled,
                'pull_request_labeled,
                'tag,
                'pull_request,
                'push
              |]
            ],
      "definitions.When" =
        {
            changeset
              | refs."definitions.Changeset"
              | { _ | Dyn }
              | doc "List of paths or path patterns to watch for changes, proceed if changes are detected."
              | optional,
            condition
              | std.contract.any_of
                [
                  String,
                  std.contract.Sequence
                    [
                      js2n.string.MinLength 1,
                      js2n.string.Matches "^\\$\\{?([^:{}]+).*\\}?$"
                    ],
                  js2n.string.Matches
                    "^\\$\\{\\{\\s*inputs\\.[a-zA-Z]\\w*\\s*\\}\\}"
                ]
              | doc "Check if condition evaluates to true before proceeding with building workflow or script."
              | optional,
          },
      "definitions.Workflow" =
        {
            artifacts
              | js2n.array.MinItems 1
              | Array (
                std.contract.any_of
                  [ js2n.string.MinLength 1, std.number.Integer, Number, Bool ]
              )
              | doc m%"
                Configure the paths and names of the artifacts you would like to use in the following steps, e.g. for publishing, or have available for download on the build page. All paths are relative to the clone directory, but absolute paths are supported as well. You can also use environment variables in artifact patterns.
                The pattern can match several files or folders. If it picks up files or folders with the same name, the top level file or folder name will be suffixed with _{number}.
                If one of the patterns includes another pattern, duplicate artifacts are not created.
                apk, aab, aar, ipa, app, proguard mapping (mapping.txt), flutter_drive.log, jar, zip, xarchive and dSYM.zip files will be available as separate items in the Artifacts section on the build page. The rest of the artifacts will be included in an archive with the following name pattern: {project-name}_{version}_artifacts.zip.
              "%
              | optional,
            cache
              | refs."definitions.Cache"
              | { _ | Dyn }
              | doc "Define the paths to be cached and stored on Codemagic."
              | optional,
            environment
              | refs."definitions.Environment"
              | { _ | Dyn }
              | doc "Environment contains all the environment variables and enables to specify the version of Flutter, Xcode, CocoaPods, Node, npm, ndk, Java and Ruby used for building. This is also where you can add credentials and API keys required for code signing. Make sure to encrypt the values of variables that hold sensitive data."
              | optional,
            inputs
              | js2n.record.Record
                {
                  additional =
                    'Some
                        (std.contract.Sequence
                          [ refs."definitions.Input", { _ | Dyn } ]),
                  patterns =
                    {
                        "^[a-zA-Z]\\w*$" =
                          std.contract.Sequence
                              [ refs."definitions.Input", { _ | Dyn } ],
                      },
                  properties = {},
                  required = {},
                }
              | doc "Define input properties that are passed to the workflow when starting a build. Build inputs can be specified when starting a build either manually from Codemagic user interface or by sending HTTP request to Codemagic API."
              | optional,
            instance_type
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [
                      js2n.string.MinLength 1,
                      js2n.string.Matches "^\\$\\{?([^:{}]+).*\\}?$"
                    ],
                  js2n.string.Matches
                    "^\\$\\{\\{\\s*inputs\\.[a-zA-Z]\\w*\\s*\\}\\}",
                  std.contract.Sequence
                    [
                      refs."definitions.SecureEnvironmentVariable",
                      { _ | Dyn }
                    ],
                  std.contract.Sequence
                    [ refs."definitions.InstanceType", String ]
                ]
              | doc "Build machine type to use for the build."
              | optional,
            integrations
              | refs."definitions.Integrations"
              | { _ | Dyn }
              | doc "Allows using info from the integrations connected in Codemagic UI. Currently supported: app_store_connect."
              | optional,
            labels
              | Array (
                std.contract.any_of
                  [
                    String,
                    std.contract.Sequence
                      [
                        js2n.string.MinLength 1,
                        js2n.string.Matches "^\\$\\{?([^:{}]+).*\\}?$"
                      ],
                    js2n.string.Matches
                      "^\\$\\{\\{\\s*inputs\\.[a-zA-Z]\\w*\\s*\\}\\}"
                  ]
              )
              | doc "Define label names to easily filter builds in UI. You can use environment variable as well."
              | optional,
            max_build_duration
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [ std.number.Integer, js2n.number.Minimum 1 ],
                  std.contract.Sequence
                    [
                      js2n.string.MinLength 1,
                      js2n.string.Matches "^\\$\\{?([^:{}]+).*\\}?$"
                    ],
                  js2n.string.Matches
                    "^\\$\\{\\{\\s*inputs\\.[a-zA-Z]\\w*\\s*\\}\\}"
                ]
              | doc "By default, Codemagic builds are set to time out after 60 minutes. You can decrease or increase the maximum build duration. "
              | optional,
            name
              | String
              | doc "Workflow name displayed in the Codemagic UI."
              | optional,
            pre_clone_scripts
              | js2n.array.MinItems 1
              | Array (
                std.contract.any_of
                  [
                    js2n.string.MinLength 1,
                    std.contract.Sequence
                      [ refs."definitions.PreCloneScript", { _ | Dyn } ]
                  ]
              )
              | doc "Scripts that are executed before the repository is cloned. Using pre-clone scripts you can set up a VPN connection or perform other preliminary tasks that do not require access to application source code."
              | optional,
            publishing
              | refs."definitions.Publishing"
              | { _ | Dyn }
              | doc "The matching artifacts will be published to the services you have configured. The available integrations currently are email, Slack, Google Play and App Store Connect. It is also possible to publish elsewhere with custom publishing scripts."
              | optional,
            scripts
              | js2n.array.MinItems 1
              | Array (
                std.contract.any_of
                  [
                    js2n.string.MinLength 1,
                    std.contract.Sequence
                      [ refs."definitions.BuildScript", { _ | Dyn } ]
                  ]
              )
              | doc "Scripts specify what kind of application is built. This is where you can specify the commands to test, build and code sign your project. You can also run shell (sh) scripts directly in your .yaml file, or run scripts in other languages by defining the language with a shebang line or by launching a script file present in your repository."
              | optional,
            triggering
              | refs."definitions.Triggering"
              | { _ | Dyn }
              | doc "Triggering defines the events for automatic build triggering and watched branches. If no events are defined, you can start builds only manually."
              | optional,
            when
              | refs."definitions.When"
              | { _ | Dyn }
              | doc "All conditions below should be met in order for build to continue."
              | optional,
            working_directory
              | std.contract.any_of
                [
                  String,
                  std.contract.Sequence
                    [
                      js2n.string.MinLength 1,
                      js2n.string.Matches "^\\$\\{?([^:{}]+).*\\}?$"
                    ],
                  js2n.string.Matches
                    "^\\$\\{\\{\\s*inputs\\.[a-zA-Z]\\w*\\s*\\}\\}"
                ]
              | doc "Specify the default directory to run script commands. Each script will be executed inside the specified directory, unless the working directory is specified for the script itself."
              | optional,
          },
    }
    in
  {
      workflows
        | { _ | refs."definitions.Workflow" }
        | doc "You can use codemagic.yaml to define several workflows for building a project. Each workflow describes the entire build pipeline from triggers to publishing. For example, you may want to have separate workflows for developing, testing and publishing the app.",
      ..
    }