# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      actions
        | {  .. }
        | doc "An object which describes the actions a block can trigger. This will be used to validate app definitions. By default this is extracted from the block’s TypeScript module augmentations."
        | optional,
      context
        | {
          _ | {
            appLock
              | std.enum.TagOrString
              | [| 'unlocked, 'studioLock, 'fullLock |]
              | doc m%"
                Set the value of AppLock for your app.
                
                If appLock is specified, this will override --app-lock passed on the command line.
              "%
              | optional,
            assets
              | Bool
              | doc m%"
                Whether to publish assets from the assets directory.
                
                If assets is specified, this will override --assets passed on the command line.
              "%
              | optional,
            assetsClonable
              | Bool
              | doc m%"
                Whether app assets should be clonable.
                
                If assetsClonable is specified, this will override --assets-clonable passed on the command line.
              "%
              | optional,
            collections
              | js2n.array.Items [ std.number.Integer ] js2n.Always
              | doc m%"
                A list of collections the app should be added to.
                
                If collections is specified, this will override --collections passed on the command line.
              "%
              | optional,
            demoMode
              | Bool
              | doc m%"
                Whether the app should be in demoMode.
                
                If demoMode is specified, this will override --demo-mode passed on the command line.
              "%
              | optional,
            googleAnalyticsId
              | String
              | doc m%"
                The Google Analytics ID that should be used for the app.
                
                If googleAnalyticsId is specified, this will override --google-analytics-id passed on the command line.
              "%
              | optional,
            icon
              | String
              | doc m%"
                The path to the app icon to use.
                
                If icon is specified, this will override --icon passed on the command line.
              "%
              | optional,
            iconBackground
              | js2n.string.Matches "^#[a-zA-Z\\d]{6}$"
              | doc m%"
                The background color to use for maskable icons.
                
                If iconBackground is specified, this will override --icon-background passed on the command line.
              "%
              | optional,
            id
              | std.number.Integer
              | js2n.number.Minimum 1
              | doc m%"
                The id of the app to update.
                
                If id is specified, this will override --id passed on the command line.
              "%
              | optional,
            maskableIcon
              | String
              | doc m%"
                The path to the maskable app icon to use.
                
                If maskableIcon is specified, this will override --maskable-icon passed on the command line.
              "%
              | optional,
            organization
              | js2n.string.MaxLength 30
              | js2n.string.MinLength 1
              | js2n.string.Matches
                "^([\\da-z](?:(?!.*--)[\\da-z-]*[\\da-z])?)$"
              | doc m%"
                The organization ID the app should be under.
                
                If organization is specified, this will override --organization passed on the command line.
              "%
              | optional,
            remote
              | String
              | doc m%"
                The remote the app should be under.
                
                If remote is specified, this will override --remote passed on the command line.
              "%
              | optional,
            resources
              | Bool
              | doc m%"
                Whether to publish resources from the resources directory.
                
                If resources is specified, this will override --resources passed on the command line.
              "%
              | optional,
            sentryDsn
              | String
              | doc m%"
                The custom Sentry DSN for the app.
                
                If sentryDsn is specified, this will override --sentry-dsn passed on the command line.
              "%
              | optional,
            sentryEnvironment
              | String
              | doc m%"
                The custom Sentry environment to use for the app.
                
                If sentryEnvironment is specified, this will override --sentry-environment passed on the command line.
              "%
              | optional,
            showAppDefinition
              | Bool
              | doc m%"
                Whether the app-definition should be shown.
                
                If showAppDefinition is specified, this will override --show-app-definition passed on the command line.
              "%
              | optional,
            template
              | Bool
              | doc m%"
                Whether the app should be a template app.
                
                If template is specified, this will override --template passed on the command line.
              "%
              | optional,
            variant
              | String
              | doc m%"
                The alternative app variant to use instead.
                
                If variant is specified, this will override --variant passed on the command line.
              "%
              | optional,
            visibility
              | std.enum.TagOrString
              | [| 'private, 'unlisted, 'public |]
              | doc m%"
                Determine the app visibility of the app in the Appsemble app store.
                
                This doesn’t affect whether or not the app can be accessed on its own domain.
                
                - public: The app is publicly listed in the Appsemble app store.
                - unlisted: The app store page can be accessed, but the app isn’t listed publicly in the Appsemble app store.
                - private: The app is only visible to people who are part of the organization.
                
                If visibility is specified, this will override --visibility passed on the command line.
              "%
              | optional,
          }
        }
        | doc "A context which can be specified using the --context command line parameter."
        | optional,
      description
        | std.contract.any_of
          [
            js2n.Null,
            Bool,
            Number,
            js2n.string.MaxLength 160,
            { _ | Dyn },
            Array Dyn
          ]
        | doc "A short description of the block. By default the description in package.json is used."
        | optional,
      events
        | {
          emit
            | { _ | { description | String | optional, .. } }
            | doc "The events the block may emit."
            | optional,
          listen
            | { _ | { description | String | optional, .. } }
            | doc "The events the block listens on."
            | optional,
        }
        | doc "An object describing the names of the events the block can listen and emit to. By default this is extracted from the block’s TypeScript module augmentations."
        | optional,
      iconBackground
        | js2n.string.Matches "^#[a-zA-Z\\d]{6}$"
        | doc "The background color to use for maskable icons."
        | optional,
      layout
        | js2n.Enum [ "float", "grow", "hidden", "static", null ]
        | doc "The type of layout to be used for the block."
        | optional,
      longDescription
        | String
        | doc "The long description of the block. Markdown is supported. By default the content of README.md is used."
        | optional,
      name
        | js2n.string.Matches
          "^@([\\da-z](?:(?!.*--)[\\da-z-]*[\\da-z])?)/([\\da-z](?:(?!.*--)[\\da-z-]*[\\da-z])?)$"
        | doc "The name of a block. By default the name in package.json is used."
        | optional,
      output | String | doc "Where to read build output from." | optional,
      parameters
        | std.contract.any_of
          [ js2n.Null, Bool, Number, String, { _ | Dyn }, Array Dyn ]
        | doc "A JSON schema which describes the block parameters. By default this is extracted from the block’s TypeScript module augmentations."
        | optional,
      version
        | std.contract.any_of
          [ js2n.Null, Bool, Number, String, { _ | Dyn }, Array Dyn ]
        | doc "A semantic version of the block representation of the block version. By default the version in package.json is used."
        | optional,
      webpack
        | String
        | doc "The path to the webpack configuration file relative to the block project directory. By default a file named webpack.config.js is used, with a fallback to the webpack configuration from @appsemble/webpack-config."
        | optional,
    }