# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.coreProperties" =
        {
            appStyles
              | String
              | doc "Import your custom styles here. Usually this endpoint file contains a list of @imports of your application styles."
              | optional,
            bootstrapCustomizations
              | String
              | doc "The .scss file path to be loaded after Bootstrap's _variables.scss file"
              | optional,
            bootstrapVersion
              | std.number.Integer
              | js2n.Enum [ 3, 4 ]
              | doc "The major version of Bootstrap being used"
              | optional,
            loglevel
              | std.enum.TagOrString
              | [| 'debug |]
              | doc "The verbosity of logging. Exclude this property to disable."
              | optional,
            preBootstrapCustomizations
              | String
              | doc "The .scss file path to be loaded before Bootstrap's _variables.scss file"
              | optional,
            scripts
              | std.contract.any_of [ Bool, { _ | Dyn } ]
              | doc "Excludes/includes Bootstrap's JavaScript modules"
              | optional,
            styleLoaders
              | js2n.array.MinItems 1
              | js2n.array.UniqueItems
              | Array String
              | doc "An array of Webpack loader names. Order matters, and sass-loader is required."
              | optional,
            styles
              | std.contract.any_of [ Bool, { _ | Dyn } ]
              | doc "Excludes/includes Bootstrap's CSS modules"
              | optional,
            useCustomIconFontPath
              | Bool
              | doc "Set to true if using a custom icon font and you need to specify its path in your Sass files"
              | optional,
            useFlexbox
              | Bool
              | doc "Enables/disables the flexbox model available in Bootstrap 4"
              | optional,
            ..
          },
      "definitions.extractStyling" =
        {
            extractStyles
              | Bool
              | doc "Enables/disables extraction of styles to a standalone CSS file using extract-text-webpack-plugin"
              | optional,
            ..
          },
      "definitions.extractStyling.properties.extractStyles" = Bool,
    }
    in
  std.contract.Sequence
      [
        refs."definitions.coreProperties",
        std.contract.any_of
          [
            std.contract.Sequence
              [
                std.contract.any_of
                  [
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
                              env =
                                js2n.record.Record
                                    {
                                      additional = 'Some Dyn,
                                      patterns = {},
                                      properties =
                                        {
                                            development =
                                              refs."definitions.extractStyling",
                                            production =
                                              refs."definitions.extractStyling",
                                          },
                                      required = {},
                                    },
                            },
                        required = {},
                      },
                    Array Dyn
                  ],
                std.contract.not
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
                          properties = { extractStyles = js2n.Always, },
                          required = { extractStyles = true, },
                        },
                      Array Dyn
                    ])
              ],
            std.contract.Sequence
              [
                std.contract.any_of
                  [
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
                              extractStyles =
                                refs."definitions.extractStyling.properties.extractStyles",
                            },
                        required = {},
                      },
                    Array Dyn
                  ],
                std.contract.not
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
                          properties = { env = js2n.Always, },
                          required = { env = true, },
                        },
                      Array Dyn
                    ])
              ]
          ],
        js2n.record.Required [ "bootstrapVersion", "styleLoaders" ]
      ]