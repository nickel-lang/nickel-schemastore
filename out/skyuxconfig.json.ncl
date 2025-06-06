# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.availableThemes" =
        std.contract.Sequence
            [ std.enum.TagOrString, [| 'modern, '"default" |] ],
      "definitions.externalFileCSS" =
        {
            integrity
              | String
              | doc "Subresource integrity string to include."
              | optional,
            url | String | doc "Fully qualified URL of the file." | optional,
            ..
          },
      "definitions.externalFileJS" =
        std.contract.Sequence
            [
              refs."definitions.externalFileCSS",
              {
                head
                  | Bool
                  | doc "Inject in the head versus before the closing body tag."
                  | optional,
                ..
              }
            ],
    }
    in
  std.contract.any_of
      [
        js2n.Null,
        Bool,
        Number,
        String,
        {
          a11y
            | std.contract.any_of
              [ Bool, { rules | Array String | optional, .. } ]
            | doc "Enables or disables accessibility test rules. You can manage rules individually, or you can enable or disable all rules in bulk."
            | optional,
          app
            | {
              base
                | String
                | doc "Allows the base href to be set during skyux build."
                | optional,
              externals
                | {
                  css
                    | {
                      after
                        | Array refs."definitions.externalFileCSS"
                        | doc "CSS files to inject after default SKY UX files."
                        | optional,
                      before
                        | Array refs."definitions.externalFileCSS"
                        | doc "CSS files to inject before default SKY UX files."
                        | optional,
                      ..
                    }
                    | doc "CSS files to inject"
                    | optional,
                  js
                    | {
                      after
                        | Array (
                          std.contract.Sequence
                            [ refs."definitions.externalFileJS", { _ | Dyn } ]
                        )
                        | doc "JS files to inject before default SKY UX files."
                        | optional,
                      before
                        | Array (
                          std.contract.Sequence
                            [ refs."definitions.externalFileJS", { _ | Dyn } ]
                        )
                        | doc "JS files to inject before default SKY UX files."
                        | optional,
                      ..
                    }
                    | doc "JS files to inject"
                    | optional,
                  ..
                }
                | doc "Dynamically injects CSS and JavaScript files into SKY UX Host. You should have a specific use-case for an externals and they must be white-listed by the SKY UX team."
                | optional,
              port
                | String
                | doc "Configures a port for the skyux serve command to use. If no port is specified, skyux serve dynamically finds an available port."
                | optional,
              styles
                | Array String
                | doc "An array of CSS or SCSS files to be bundled with the SPA."
                | optional,
              theming
                | {
                  supportedThemes
                    | Array refs."definitions.availableThemes"
                    | optional,
                  theme
                    | refs."definitions.availableThemes"
                    | doc "The visual theme to apply to this application."
                    | optional,
                  ..
                }
                | doc "Specifies the theming capabilities of the application."
                | optional,
              title
                | String
                | doc "Controls the page title at the template level while waiting for the application to load."
                | optional,
              ..
            }
            | doc "Specifies configuration options for the local app when running skyux serve"
            | optional,
          appSettings
            | { _ | Dyn }
            | doc "Specifies data that is available for reuse throughout the application."
            | optional,
          auth
            | Bool
            | doc "Indicates whether the application requires an authenticated Blackbaud ID"
            | optional,
          codeCoverageThreshold
            | std.enum.TagOrString
            | [| 'strict, 'standard, 'none |]
            | doc "Specifies the minimum required code coverage threshold."
            | optional,
          compileMode
            | std.enum.TagOrString
            | [| 'jit, 'aot |]
            | doc "Specifies how to compile the project's code."
            | optional,
          cssPath
            | String
            | doc "Specifies a path to reference CSS styles. This property is specific to the SKY UX docs site and is for internal Blackbaud use only."
            | optional,
          dependenciesForTranspilation
            | Array Dyn
            | doc "Specifies a list of package dependencies that are not ES5 compatible. Each package listed will be coverted to support SKY UX Builder's target environment."
            | optional,
          enableIvy
            | Bool
            | doc "Enables or disables Angular's Ivy compiler during a build."
            | optional,
          help
            | { _ | Dyn }
            | doc " Indicates whether to automatically include the help widget in the application to identify the current page and display relevant help content. This property is for internal Blackbaud use only."
            | optional,
          host
            | {
              bbCheckout
                | {
                  version
                    | std.enum.TagOrString
                    | [| '"2" |]
                    | doc "Specifies the whitelisted version of bbCheckout to include."
                    | optional,
                  ..
                }
                | doc "Specifies bbCheckout options for the Host service."
                | optional,
              frameOptions
                | js2n.IfThenElse
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
                          properties = { none = js2n.Const true, },
                          required = { none = true, },
                        },
                      Array Dyn
                    ])
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
                            properties = { blackbaud = js2n.Const true, },
                            required = { blackbaud = true, },
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
                            properties = { self = js2n.Const true, },
                            required = { self = true, },
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
                              {
                                  urls =
                                    std.contract.any_of
                                        [
                                          js2n.Null,
                                          Bool,
                                          Number,
                                          String,
                                          { _ | Dyn },
                                          js2n.array.MinItems 1
                                        ],
                                },
                            required = { urls = true, },
                          },
                        Array Dyn
                      ])) js2n.Always
                | {
                  blackbaud
                    | Bool
                    | doc "Sets the frame options to common Blackbaud URLs"
                    | optional,
                  none
                    | Bool
                    | doc "Sets the frame options to none. Superseds all other `frameOptions` properties."
                    | optional,
                  self
                    | Bool
                    | doc "Sets the frame options to self."
                    | optional,
                  urls
                    | Array Dyn
                    | doc "Sets the frame options to this list.  Can be used in conjunction with the `self` and `blackbaud` properties."
                    | optional,
                  ..
                }
                | doc "Specifies frame options for the Host service."
                | optional,
              url
                | String
                | doc "Specifies a base URL to pass information from skyux serve to the SKY UX Host."
                | optional,
              ..
            }
            | doc "Blackbaud Only - Specifies configuration options for communication with SKY UX Host."
            | optional,
          importPath
            | String
            | doc "Specifies a path to reference SKY UX components in Angular. This property is specific to the SKY UX docs site and is for internal Blackbaud use only."
            | optional,
          librarySettings
            | {
              whitelistedNonPeerDependencies
                | Array String
                | doc "Specifies package dependencies that are allowed to be added to a library's package.json `dependencies` object when a library is published."
                | optional,
              ..
            }
            | doc "Container for controlling library settings"
            | optional,
          mode
            | std.enum.TagOrString
            | [| 'advanced, 'easy |]
            | doc "Controls how much boilerplate code to generate automatically."
            | optional,
          moduleAliases
            | { _ | Dyn }
            | doc "Specifies module aliases to allow for custom module resolution."
            | optional,
          name
            | String
            | doc "Specifies the name of the project when running in SKY UX Host. By default, SKY UX Builder uses the name property in the package.json file, minus the 'blackbaud-skyux-spa-' prefix."
            | optional,
          omnibar
            | { _ | Dyn }
            | doc "Specifies an object to pass to the omnibar's load method. This property is for internal Blackbaud use only."
            | optional,
          pacts | Array Dyn | doc "PACTS" | optional,
          params
            | js2n.record.Record
              {
                additional = 'Some Dyn,
                patterns =
                  {
                      "^.*$" =
                        std.contract.any_of
                            [
                              Bool,
                              {
                                excludeFromRequests
                                  | Bool
                                  | doc "Indicates whether the parameter should be excluded from the parameters automatically added to the query string of URLs requested with SkyAuthHttp."
                                  | optional,
                                required
                                  | Bool
                                  | doc "Indicates the parameter must be supplied to the application in order to function."
                                  | optional,
                                value
                                  | std.contract.any_of
                                    [
                                      js2n.Null,
                                      Bool,
                                      Number,
                                      String,
                                      { _ | Dyn },
                                      Array Dyn
                                    ]
                                  | doc "The default value of the parameter. This value may be overridden at runtime by the query string or other future sources of parameter values."
                                  | optional,
                                ..
                              }
                            ],
                    },
                properties = {},
                required = {},
              }
            | doc "Specifies a list of parameters that are allowed at runtime."
            | optional,
          pipelineSettings
            | { _ | Dyn }
            | doc "Configuration options specific to pipeline configuration."
            | optional,
          plugins
            | Array Dyn
            | doc "Specifies plugins to expand on existing SKY UX Builder functionality and create new functionality."
            | optional,
          redirects
            | { _ | Dyn }
            | doc "Specifies redirects for pages within an application using from : to pattern."
            | optional,
          routes
            | {
              public | Array Dyn | doc "Public routes." | optional,
              referenced | Array Dyn | doc "Referenced routes." | optional,
              ..
            }
            | doc "Allows you to use the omnibar but still define navigation items. This property is for internal Blackbaud use only."
            | optional,
          skyuxModules
            | Array Dyn
            | doc "The individual SKY UX modules that should be imported into the application.  Use this property for performance optimization when your application only uses a small subset of SKY UX components."
            | optional,
          testSettings
            | {
              e2e
                | {
                  browserSet
                    | std.enum.TagOrString
                    | [| 'speedy |]
                    | doc "The named set of browsers to run against."
                    | optional,
                  ..
                }
                | doc "Test settings specific to the skyux e2e command."
                | optional,
              unit
                | {
                  browserSet
                    | std.enum.TagOrString
                    | [| 'paranoid, 'quirky, 'speedy |]
                    | doc "The named set of browsers to run against."
                    | optional,
                  ..
                }
                | doc "Test settings specific to the skyux test command."
                | optional,
              ..
            }
            | doc "Container for controlling test settings."
            | optional,
          useHashRouting
            | Bool
            | doc "Allows your SPA to use Angular's hash location strategy."
            | optional,
          ..
        },
        Array Dyn
      ]