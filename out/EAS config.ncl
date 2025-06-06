# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.Build" =
        js2n.record.Record
            {
              additional = 'Some Dyn,
              patterns =
                {
                    ".*" =
                      std.contract.Sequence
                          [ refs."definitions.BuildProfile", { _ | Dyn } ],
                  },
              properties = {},
              required = {},
            },
      "definitions.BuildCache" =
        {
            customPaths
              | js2n.array.UniqueItems
              | Array String
              | doc "[DEPRECATED] Use `paths` instead. List of the paths that will be saved after a successful build and restored at the beginning of the next one."
              | optional,
            disabled
              | Bool
              | doc "Disables caching. Defaults to false."
              | optional,
            key
              | String
              | doc "Cache key. You can invalidate the cache by changing this value."
              | optional,
            paths
              | js2n.array.UniqueItems
              | Array String
              | doc "List of the paths that will be saved after a successful build and restored at the beginning of the next one."
              | optional,
            ..
          },
      "definitions.BuildProfile" =
        {
            android
              | refs."definitions.BuildProfileAndroid"
              | { _ | Dyn }
              | optional,
            autoIncrement
              | Bool
              | doc "Controls how EAS CLI bumps your application build version."
              | optional,
            buildArtifactPaths
              | Array String
              | doc "List of paths (or patterns) where EAS Build is going to look for the build artifacts. Use `applicationArchivePath` to specify the path for uploading the application archive. Build artifacts are uploaded even if the build fails. See: https://github.com/mrmlnc/fast-glob#pattern-syntax"
              | optional,
            bun
              | String
              | doc "The version of Bun to use for the build. See: https://bun.sh/"
              | optional,
            cache
              | refs."definitions.BuildCache"
              | { _ | Dyn }
              | doc "The cache configuration."
              | optional,
            channel
              | String
              | doc "The channel name identifies which EAS Update channel a build belongs to. Learn more: https://docs.expo.dev/eas-update/how-eas-update-works/"
              | optional,
            config
              | String
              | doc "Custom workflow file name that will be used to run this build. You can also specify this property on platform level for platform-specific workflows. Learn more: https://docs.expo.dev/custom-builds/get-started/"
              | optional,
            corepack
              | Bool
              | doc "If set to true, corepack will be enabled at the beginning of the build process. Learn more: https://nodejs.org/api/corepack.html"
              | optional,
            credentialsSource
              | std.enum.TagOrString
              | [| 'local, 'remote |]
              | doc "The source of credentials used to sign build artifacts. Learn more: https://docs.expo.dev/app-signing/local-credentials/"
              | optional,
            developmentClient
              | Bool
              | doc "If set to true, this field expresses the intent to produce a development client build. Learn more: https://docs.expo.dev/development/introduction/"
              | optional,
            distribution
              | std.enum.TagOrString
              | [| 'store, 'internal |]
              | doc "The method of distributing your app. Learn more: https://docs.expo.dev/build/internal-distribution/"
              | optional,
            env
              | js2n.record.Record
                {
                  additional = 'Some Dyn,
                  patterns = { ".*" = String, },
                  properties = {},
                  required = {},
                }
              | doc m%"
                Environment variables that should be set during the build process.
                
                Should only be used for values that you would commit to your git repository, i.e. not passwords or secrets.
              "%
              | optional,
            environment
              | std.enum.TagOrString
              | [| 'development, 'preview, 'production |]
              | doc "Environment to use for the server-side defined EAS environment variables during build process and command execution. Learn more: https://docs.expo.dev/eas/environment-variables/"
              | optional,
            extends
              | String
              | doc "The name of the build profile that the current one should inherit values from. This value can't be specified per platform."
              | optional,
            ios | refs."definitions.BuildProfileIos" | { _ | Dyn } | optional,
            node
              | String
              | doc "The version of Node.js to use for the build. See: https://nodejs.org/en/about/releases/"
              | optional,
            pnpm
              | String
              | doc "The version of pnpm to use for the build. See: https://www.npmjs.com/package/pnpm"
              | optional,
            prebuildCommand
              | String
              | doc "Optional override of the prebuild command used by EAS. Learn more: https://docs.expo.dev/workflow/expo-cli/#expo-prebuild"
              | optional,
            resourceClass
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [ std.enum.TagOrString, [| 'large, 'medium, '"default" |] ],
                  String
                ]
              | doc "The resource class that will be used to run this build, supported by both Android and iOS workers. Learn more: https://docs.expo.dev/build-reference/infrastructure/"
              | optional,
            withoutCredentials
              | Bool
              | doc "When set to `true`, EAS CLI won't require you to configure credentials when building the app. This comes in handy when working with custom builds."
              | optional,
            yarn
              | String
              | doc "The version of Yarn to use for the build. See: https://www.npmjs.com/package/yarn"
              | optional,
            ..
          },
      "definitions.BuildProfileAndroid" =
        {
            applicationArchivePath
              | String
              | doc "Path (or pattern) where EAS Build is going to look for the application archive. See: https://github.com/mrmlnc/fast-glob#pattern-syntax"
              | optional,
            artifactPath
              | String
              | doc "[DEPRECATED] Use `applicationArchivePath` instead. Path (or pattern) where EAS Build is going to look for the build artifacts. See: https://github.com/mrmlnc/fast-glob#pattern-syntax"
              | optional,
            autoIncrement
              | js2n.Enum [ false, true, "versionCode", "version" ]
              | doc "Controls how EAS CLI bumps your application build version."
              | optional,
            buildType
              | std.enum.TagOrString
              | [| 'apk, 'app-bundle |]
              | doc "Type of the artifact you want to build."
              | optional,
            config
              | String
              | doc "Custom workflow file name that will be used to run this Android build. You can also specify this property on profile levle for platform-agnostic workflows. Learn more: https://docs.expo.dev/custom-builds/get-started/"
              | optional,
            gradleCommand
              | String
              | doc "Gradle task that will be used to build your project, e.g. `:app:assembleDebug` to build a debug binary."
              | optional,
            image
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [
                      std.enum.TagOrString,
                      [|
                        '"ubuntu-22.04-jdk-11-ndk-r21e",
                        '"ubuntu-22.04-jdk-17-ndk-r21e",
                        '"ubuntu-22.04-jdk-11-ndk-r23b",
                        '"ubuntu-22.04-jdk-17-ndk-r25b",
                        '"ubuntu-22.04-jdk-17-ndk-r26b",
                        'sdk-49,
                        'sdk-50,
                        'sdk-51,
                        'sdk-52,
                        'latest,
                        'auto
                      |]
                    ],
                  std.contract.Sequence
                    [
                      std.enum.TagOrString,
                      [|
                        '"ubuntu-22.04-jdk-8-ndk-r21e",
                        '"ubuntu-20.04-jdk-8-ndk-r21e",
                        '"ubuntu-20.04-jdk-11-ndk-r21e",
                        '"ubuntu-20.04-jdk-8-ndk-r19c",
                        '"ubuntu-20.04-jdk-11-ndk-r19c",
                        '"ubuntu-20.04-jdk-11-ndk-r23b",
                        'stable,
                        '"default"
                      |]
                    ]
                ]
              | doc "Image with build environment. Learn more: https://docs.expo.dev/build-reference/infrastructure/"
              | optional,
            ndk | String | doc "The version of Android NDK." | optional,
            resourceClass
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [ std.enum.TagOrString, [| 'large, 'medium, '"default" |] ],
                  String
                ]
              | doc "The Android-specific resource class that will be used to run this build. Learn more: https://docs.expo.dev/build-reference/infrastructure/"
              | optional,
            withoutCredentials
              | Bool
              | doc "When set to `true`, EAS CLI won't require you to configure credentials when building the app. This comes in handy when you want to build debug binaries and the debug keystore is checked in to the repository or working with custom builds."
              | optional,
            ..
          },
      "definitions.BuildProfileIos" =
        {
            applicationArchivePath
              | String
              | doc "Path (or pattern) where EAS Build is going to look for the application archive. See: https://github.com/mrmlnc/fast-glob#pattern-syntax"
              | optional,
            artifactPath
              | String
              | doc "[DEPRECATED] Use `applicationArchivePath` instead. Path (or pattern) where EAS Build is going to look for the build artifacts. See: https://github.com/mrmlnc/fast-glob#pattern-syntax"
              | optional,
            autoIncrement
              | js2n.Enum [ false, true, "buildNumber", "version" ]
              | doc "Controls how EAS CLI bumps your application build version."
              | optional,
            buildConfiguration
              | String
              | doc "Xcode project's Build Configuration."
              | optional,
            bundler
              | String
              | doc "The version of bundler to use for the build. See: https://bundler.io/."
              | optional,
            cocoapods
              | String
              | doc "The version of CocoaPods to use for the build. See: https://cocoapods.org/"
              | optional,
            config
              | String
              | doc "Custom workflow file name that will be used to run this iOS build. You can also specify this property on profile levle for platform-agnostic workflows. Learn more: https://docs.expo.dev/custom-builds/get-started/"
              | optional,
            enterpriseProvisioning
              | std.enum.TagOrString
              | [| 'adhoc, 'universal |]
              | optional,
            fastlane
              | String
              | doc "The version of fastlane to use for the build. See: https://fastlane.tools/"
              | optional,
            image
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [
                      std.enum.TagOrString,
                      [|
                        '"macos-ventura-13.6-xcode-15.0",
                        '"macos-ventura-13.6-xcode-15.1",
                        '"macos-ventura-13.6-xcode-15.2",
                        '"macos-sonoma-14.4-xcode-15.3",
                        '"macos-sonoma-14.5-xcode-15.4",
                        '"macos-sonoma-14.6-xcode-16.0",
                        '"macos-sonoma-14.6-xcode-16.1",
                        'sdk-49,
                        'sdk-50,
                        'sdk-51,
                        'sdk-52,
                        'latest,
                        'auto
                      |]
                    ],
                  std.contract.Sequence
                    [ std.enum.TagOrString, [| 'stable, '"default" |] ]
                ]
              | doc "Image with build environment. Learn more: https://docs.expo.dev/build-reference/infrastructure/"
              | optional,
            resourceClass
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [
                      std.enum.TagOrString,
                      [| 'm-medium, 'large, 'medium, '"default" |]
                    ],
                  String
                ]
              | doc "The iOS-specific resource class that will be used to run this build. Learn more: https://docs.expo.dev/build-reference/infrastructure/"
              | optional,
            scheme | String | doc "Xcode project's scheme." | optional,
            simulator
              | Bool
              | doc "If set to true, creates build for simulator."
              | optional,
            withoutCredentials
              | Bool
              | doc "When set to `true`, EAS CLI won't require you to configure credentials when building the app. This comes in handy when working with custom builds."
              | optional,
            ..
          },
      "definitions.Cli" =
        {
            appVersionSource
              | std.enum.TagOrString
              | [| 'remote, 'local |]
              | optional,
            promptToConfigurePushNotifications
              | Bool
              | doc "Specifies where EAS CLI should prompt to configure Push Notifications credentials. It defaults to true if expo-notifications is in your project dependencies, otherwise it defaults to false."
              | optional,
            requireCommit
              | Bool
              | doc "If all changes required to be committed before building or submitting"
              | optional,
            version
              | String
              | doc "The compatible versions of EAS CLI with this config"
              | optional,
            ..
          },
      "definitions.Submit" =
        js2n.record.Record
            {
              additional = 'Some Dyn,
              patterns =
                {
                    ".*" =
                      std.contract.Sequence
                          [ refs."definitions.SubmitProfile", { _ | Dyn } ],
                  },
              properties = {},
              required = {},
            },
      "definitions.SubmitProfile" =
        {
            android
              | refs."definitions.SubmitProfileAndroid"
              | { _ | Dyn }
              | optional,
            extends
              | String
              | doc "The name of the submit profile that the current one should inherit values from."
              | optional,
            ios | refs."definitions.SubmitProfileIos" | { _ | Dyn } | optional,
            ..
          },
      "definitions.SubmitProfileAndroid" =
        {
            applicationId
              | String
              | doc "The application id that will be used when accessing Service Account Keys managed by Expo, it does not have any effect if you are using local credentials. In most cases this value will be autodetected, but if you have multiple product flavors, this value might be necessary."
              | optional,
            changesNotSentForReview
              | Bool
              | doc "Indicates that the changes sent with this submission will not be reviewed until they are explicitly sent for review from the Google Play Console UI. Defaults to false."
              | optional,
            releaseStatus
              | std.enum.TagOrString
              | [| 'completed, 'halted, 'inProgress, 'draft |]
              | doc "The status of a release. Learn more: https://developers.google.com/android-publisher/api-ref/rest/v3/edits.tracks"
              | optional,
            rollout
              | Number
              | doc "The initial fraction of users who are eligible to receive the release. Should be a value from 0 (no users) to 1 (all users). Works only with 'inProgress' release status. Learn more: https://developers.google.com/android-publisher/api-ref/rest/v3/edits.tracks"
              | optional,
            serviceAccountKeyPath
              | String
              | doc "Path to the JSON file with service account key used to authenticate with Google Play. Learn more: https://expo.fyi/creating-google-service-account"
              | optional,
            track
              | std.enum.TagOrString
              | [| 'production, 'internal, 'alpha, 'beta |]
              | doc "The track of the application to use. Learn more: https://support.google.com/googleplay/android-developer/answer/9859348?hl=en"
              | optional,
            ..
          },
      "definitions.SubmitProfileIos" =
        {
            appName
              | String
              | doc "The name of your app as it will appear on the App Store. Defaults to `expo.name` from the app config."
              | optional,
            appleId
              | String
              | doc "Your Apple ID username (you can also set the `EXPO_APPLE_ID` env variable)."
              | optional,
            appleTeamId
              | String
              | doc "Your Apple Developer Team ID."
              | optional,
            ascApiKeyId
              | String
              | doc "The Key ID of your App Store Connect Api Key. Learn more: https://expo.fyi/creating-asc-api-key"
              | optional,
            ascApiKeyIssuerId
              | String
              | doc "The Issuer ID of your App Store Connect Api Key. Learn more: https://expo.fyi/creating-asc-api-key"
              | optional,
            ascApiKeyPath
              | String
              | doc "The path to your App Store Connect Api Key .p8 file. Learn more: https://expo.fyi/creating-asc-api-key"
              | optional,
            ascAppId
              | String
              | doc "App Store Connect unique application Apple ID number. When set, results in skipping the app creation step. Learn more: https://expo.fyi/asc-app-id"
              | optional,
            bundleIdentifier
              | String
              | doc "The Bundle identifier that will be used when accessing submit credentials managed by Expo, it does not have any effect if you are using local credentials. In most cases this value will be autodetected, but if you have multiple Xcode schemes and targets, this value might be necessary."
              | optional,
            companyName
              | String
              | doc "The name of your company, needed only for the first submission of any app to the App Store."
              | optional,
            language
              | String
              | doc "Primary language. Defaults to `en-US`."
              | optional,
            metadataPath
              | String
              | doc "The path to your store configuration file. Learn more: https://docs.expo.dev/eas-metadata/introduction/"
              | optional,
            sku
              | String
              | doc "An unique ID for your app that is not visible on the App Store, will be generated unless provided."
              | optional,
            ..
          },
    }
    in
  {
      "$schema" | String | optional,
      build | refs."definitions.Build" | optional,
      cli | refs."definitions.Cli" | optional,
      submit | refs."definitions.Submit" | optional,
      ..
    }