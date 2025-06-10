# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.commandGroup" = std.contract.any_of [ String, Array String ],
      "definitions.lighthouseConfig" =
        {
            audits
              | Array String
              | doc "List of audit IDs to run. Only audits referenced by a category will appear in the report"
              | optional,
            categories
              | js2n.record.Record
                {
                  additional = 'Some Dyn,
                  patterns =
                    {
                        "^[a-zA-Z0-9-]+$" =
                          {
                              auditRefs
                                | Array
                                  {
                                    group
                                      | String
                                      | doc "The ID of the group to place this audit in"
                                      | optional,
                                    id
                                      | String
                                      | doc "The ID of the audit to include in this category",
                                    weight
                                      | Number
                                      | doc "The relative weight of this audit in computing the category score. Higher values mean the audit is more important to the category score",
                                    ..
                                  }
                                | doc "References to audits to include in this category",
                              description
                                | String
                                | doc "A more detailed description of the category's purpose"
                                | optional,
                              title
                                | String
                                | doc "The display name of the category",
                              ..
                            },
                      },
                  properties = {},
                  required = {},
                }
              | doc "Categories group audit results into sections in the report. Each category is organized by a set of audit references with their individual scores and grouped by audit groups"
              | optional,
            extends
              | std.enum.TagOrString
              | [| '"lighthouse:default" |]
              | doc "Base configuration to extend from. Currently only 'lighthouse:default' is supported"
              | optional,
            groups
              | js2n.record.Record
                {
                  additional = 'Some Dyn,
                  patterns =
                    {
                        "^[a-zA-Z0-9-]+$" =
                          {
                              description
                                | String
                                | doc "A more detailed description of the group's purpose"
                                | optional,
                              title
                                | String
                                | doc "The display name of the group",
                              ..
                            },
                      },
                  properties = {},
                  required = {},
                }
              | doc "Groups organize audits in categories into expandable sections"
              | optional,
            passes
              | Array
                {
                  blockedUrlPatterns
                    | Array String
                    | doc "Block any network requests to URLs matching these patterns"
                    | optional,
                  gatherers
                    | Array String
                    | doc "List of gatherers to run during this pass. Gatherers collect information about the page",
                  networkQuietThresholdMs
                    | Number
                    | doc "Wait for this amount of network quiet before continuing"
                    | optional,
                  passName
                    | String
                    | doc "Unique identifier for the pass. Used to match gatherer results with the pass",
                  pauseAfterLoadMs
                    | Number
                    | doc "How long to wait after the load event before running pass"
                    | optional,
                  pauseAfterNetworkQuietMs
                    | Number
                    | doc "How long to wait after network quiet before continuing"
                    | optional,
                  recordTrace
                    | Bool
                    | doc "Whether to record a trace during this pass for later analysis"
                    | optional,
                  useThrottling
                    | Bool
                    | doc "Whether to apply CPU and network throttling during this pass"
                    | optional,
                  ..
                }
              | doc "Controls how to load the page and what information to gather about it. Each pass loads the page with different settings and gathers different information"
              | optional,
            settings
              | {
                onlyAudits
                  | Array String
                  | doc "Only run the specified audits. If both onlyCategories and onlyAudits are present, onlyCategories takes precedence"
                  | optional,
                onlyCategories
                  | Array (
                    std.contract.Sequence
                      [
                        std.enum.TagOrString,
                        [|
                          'pwa,
                          'seo,
                          'best-practices,
                          'accessibility,
                          'performance
                        |]
                      ]
                  )
                  | doc "Only run the specified categories. If both onlyCategories and onlyAudits are present, onlyCategories takes precedence"
                  | optional,
                skipAudits
                  | Array String
                  | doc "Skip the specified audits. Takes precedence over onlyAudits and onlyCategories"
                  | optional,
                ..
              }
              | doc "Global settings that control how Lighthouse runs and what audits it includes"
              | optional,
            ..
          },
      "definitions.screenshotConfig" =
        {
            enabled
              | Bool
              | doc "Whether to render Screenshots for the URLs defined for this Service"
              | optional,
            fullPage
              | Bool
              | doc "Whether to use the default fullPage method. Disabling this uses an alternative that is more friendly to elements that have vh CSS Styles, but can sometimes be less accurate"
              | optional,
            timeout
              | std.number.Integer
              | js2n.number.Maximum 60
              | js2n.number.Minimum 1
              | doc "How long to wait for a page to be ready when taking a screenshot, in seconds. Minimum: 1, Maximum: 60"
              | optional,
            waitUntil
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [
                      std.enum.TagOrString,
                      [|
                        'networkidle2,
                        'networkidle0,
                        'domcontentloaded,
                        'load
                      |]
                    ],
                  std.contract.Sequence
                    [
                      js2n.array.MinItems 1,
                      js2n.array.UniqueItems,
                      Array (
                        std.contract.Sequence
                          [
                            std.enum.TagOrString,
                            [|
                              'networkidle2,
                              'networkidle0,
                              'domcontentloaded,
                              'load
                            |]
                          ]
                      )
                    ]
                ]
              | doc "Which browser event(s) to wait for before creating a screenshot of the page. If multiple events are specified, the screenshot is created after all events have fired"
              | optional,
            ..
          },
      "definitions.screenshotConfig.properties.enabled" = Bool,
      "definitions.screenshotConfig.properties.fullPage" = Bool,
      "definitions.screenshotConfig.properties.timeout" =
        std.contract.Sequence
            [
              std.number.Integer,
              js2n.number.Maximum 60,
              js2n.number.Minimum 1
            ],
      "definitions.screenshotConfig.properties.waitUntil" =
        std.contract.any_of
            [
              std.contract.Sequence
                [
                  std.enum.TagOrString,
                  [| 'networkidle2, 'networkidle0, 'domcontentloaded, 'load |]
                ],
              std.contract.Sequence
                [
                  js2n.array.MinItems 1,
                  js2n.array.UniqueItems,
                  Array (
                    std.contract.Sequence
                      [
                        std.enum.TagOrString,
                        [|
                          'networkidle2,
                          'networkidle0,
                          'domcontentloaded,
                          'load
                        |]
                      ]
                  )
                ]
            ],
      "definitions.visualDiffConfig" =
        {
            enabled
              | refs."definitions.screenshotConfig.properties.enabled"
              | Bool
              | optional,
            fullPage
              | refs."definitions.screenshotConfig.properties.fullPage"
              | Bool
              | optional,
            threshold
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [
                      std.number.Integer,
                      js2n.number.Maximum 100,
                      js2n.number.Minimum 0
                    ],
                  {
                    desktop
                      | std.number.Integer
                      | js2n.number.Maximum 100
                      | js2n.number.Minimum 0
                      | doc "Threshold for desktop screen size"
                      | optional,
                    mobile
                      | std.number.Integer
                      | js2n.number.Maximum 100
                      | js2n.number.Minimum 0
                      | doc "Threshold for mobile screen size"
                      | optional,
                    tablet
                      | std.number.Integer
                      | js2n.number.Maximum 100
                      | js2n.number.Minimum 0
                      | doc "Threshold for tablet screen size"
                      | optional,
                  }
                ]
              | doc "The maximum allowed difference between two screenshots before considering them different. Can be a single value for all screen types, or specific values per screen type"
              | optional,
            timeout
              | refs."definitions.screenshotConfig.properties.timeout"
              | Number
              | optional,
            waitUntil
              | refs."definitions.screenshotConfig.properties.waitUntil"
              | optional,
          },
    }
    in
  {
      services
        | js2n.record.MinProperties 1
        | js2n.IfThenElse
          (std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              js2n.record.MaxProperties 1,
              Array Dyn
            ])
          (std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              js2n.record.Record
                {
                  additional = 'Some Dyn,
                  patterns =
                    {
                        "^[a-z0-9_-]+$" =
                          std.contract.any_of
                              [
                                js2n.Null,
                                Bool,
                                Number,
                                String,
                                {
                                  "default"
                                    | std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        Number,
                                        String,
                                        { _ | Dyn },
                                        Array Dyn
                                      ]
                                    | optional,
                                  ..
                                },
                                Array Dyn
                              ],
                      },
                  properties = {},
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
              js2n.record.Record
                {
                  additional = 'Some Dyn,
                  patterns =
                    {
                        "^[a-z0-9_-]+$" =
                          std.contract.any_of
                              [
                                js2n.Null,
                                Bool,
                                Number,
                                String,
                                {
                                  "default"
                                    | std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        Number,
                                        String,
                                        { _ | Dyn },
                                        Array Dyn
                                      ]
                                    | optional,
                                  ..
                                },
                                Array Dyn
                              ],
                      },
                  properties = {},
                  required = {},
                },
              Array Dyn
            ])
        | js2n.record.Record
          {
            additional = 'Some Dyn,
            patterns =
              {
                  "^[a-z0-9_-]+$" =
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
                                    properties =
                                      { "default" = js2n.Const true, },
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
                                {
                                  checkout
                                    | std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        Number,
                                        String,
                                        { _ | Dyn },
                                        Array Dyn
                                      ]
                                    | optional,
                                  expose
                                    | std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        Number,
                                        String,
                                        { _ | Dyn },
                                        Array Dyn
                                      ]
                                    | optional,
                                  ..
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
                                  checkout
                                    | std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        Number,
                                        String,
                                        { _ | Dyn },
                                        Array Dyn
                                      ]
                                    | optional,
                                  expose
                                    | std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        Number,
                                        String,
                                        { _ | Dyn },
                                        Array Dyn
                                      ]
                                    | optional,
                                  ..
                                },
                                Array Dyn
                              ]),
                          {
                            alias-type
                              | std.enum.TagOrString
                              | [| 'domain, '"default" |]
                              | doc "What kind of aliases to generate"
                              | optional,
                            aliases
                              | std.contract.any_of
                                [
                                  js2n.string.Matches "^[a-z0-9-]+$",
                                  Array (js2n.string.Matches "^[a-z0-9-]+$")
                                ]
                              | doc "A list of aliases to generate URLs for. Can be a single alias or an array of aliases"
                              | optional,
                            checkout
                              | Bool
                              | doc "Whether to clone the git repository to this Service"
                              | optional,
                            checkout-path
                              | String
                              | doc "Where to clone the git repository"
                              | optional,
                            commands
                              | js2n.record.MinProperties 1
                              | {
                                build
                                  | refs."definitions.commandGroup"
                                  | doc "Commands that build or generate the site, such as compiling styles or running database updates from code"
                                  | optional,
                                clone
                                  | refs."definitions.commandGroup"
                                  | doc "Commands that should be run on the cloned (new) Preview that has been created from an existing Preview"
                                  | optional,
                                init
                                  | refs."definitions.commandGroup"
                                  | doc "Commands that set up the basic Preview infrastructure. These typically include installing required packages, configuring tools, and setting up the environment. These commands run first, before any other build stages. These commands are not run for Previews built from a Base Preview."
                                  | optional,
                                online
                                  | refs."definitions.commandGroup"
                                  | doc "Commands to run once, after a Preview has built, is online, and is ready to accept incoming requests"
                                  | optional,
                                ready
                                  | refs."definitions.commandGroup"
                                  | doc "Commands that indicate that a service is ready, such as checking for a listening TCP port"
                                  | optional,
                                start
                                  | refs."definitions.commandGroup"
                                  | doc "Commands that should be run every time a Preview starts"
                                  | optional,
                                update
                                  | refs."definitions.commandGroup"
                                  | doc "Commands that import data or other assets into a service, such as a database or image files. These commands are not run for Previews built from a Base Preview."
                                  | optional,
                              }
                              | doc "Commands to run at different stages of the Preview lifecycle. These commands run in sequence: init → update → build → ready → online. Start commands run every time a Preview starts, and clone commands run when creating a new Preview from an existing one."
                              | optional,
                            "default"
                              | Bool
                              | doc "Whether this is the default Service for a Preview"
                              | optional,
                            depends
                              | std.contract.any_of
                                [
                                  js2n.string.Matches "^[a-z0-9_-]+$",
                                  Array (js2n.string.Matches "^[a-z0-9_-]+$")
                                ]
                              | doc "List of other Services that this Service depends on"
                              | optional,
                            domain
                              | String
                              | doc "A custom domain for Tugboat to generate URLs with"
                              | optional,
                            expose
                              | std.number.Integer
                              | doc "Which port the Service should expose to the Tugboat proxy"
                              | optional,
                            http
                              | Bool
                              | doc "Whether the Service should be available via HTTP"
                              | optional,
                            https
                              | Bool
                              | doc "Whether the Service should be available via HTTPS"
                              | optional,
                            image
                              | js2n.string.Matches "^[a-zA-Z0-9/_:.-]+$"
                              | doc "The Docker image to use for this service",
                            lighthouse
                              | {
                                config
                                  | refs."definitions.lighthouseConfig"
                                  | doc "A custom Lighthouse configuration object to use while rendering Lighthouse Reports"
                                  | optional,
                                enabled
                                  | Bool
                                  | doc "Whether to render Lighthouse Reports for the URLs defined for this Service"
                                  | optional,
                                screen
                                  | js2n.array.MinItems 1
                                  | js2n.array.UniqueItems
                                  | Array (
                                    std.contract.Sequence
                                      [
                                        std.enum.TagOrString,
                                        [| 'mobile, 'desktop |]
                                      ]
                                  )
                                  | doc "Which screen sizes to generate Lighthouse Reports for"
                                  | optional,
                              }
                              | doc "Lighthouse configurations that affect all of the URLs defined for this Service. Values configured here override the Tugboat default values, but can also be overridden per-URL."
                              | optional,
                            screenshot
                              | refs."definitions.screenshotConfig"
                              | {}
                              | doc "Screenshot configurations to use for all URLs processed for the Service"
                              | optional,
                            subpath
                              | Bool
                              | doc "Whether subpath URLs should be generated for this Service"
                              | optional,
                            subpath-map
                              | Bool
                              | doc "Whether to map the generated subpath to /"
                              | optional,
                            urls
                              | std.contract.any_of
                                [
                                  Array (
                                    std.contract.any_of
                                      [
                                        js2n.string.Matches "^/",
                                        {
                                          aliases
                                            | Array String
                                            | doc "Use this list of Service aliases when processing this URL"
                                            | optional,
                                          lighthouse
                                            | refs."definitions.lighthouseConfig"
                                            | optional,
                                          screenshot
                                            | refs."definitions.screenshotConfig"
                                            | {}
                                            | optional,
                                          url
                                            | js2n.string.Matches "^/"
                                            | doc "The relative URL to process",
                                          visualdiff
                                            | refs."definitions.visualDiffConfig"
                                            | optional,
                                        }
                                      ]
                                  ),
                                  std.contract.Sequence
                                    [
                                      {
                                        _ | Array (
                                          std.contract.any_of
                                            [
                                              js2n.string.Matches "^/",
                                              {
                                                lighthouse
                                                  | refs."definitions.lighthouseConfig"
                                                  | optional,
                                                screenshot
                                                  | refs."definitions.screenshotConfig"
                                                  | {}
                                                  | optional,
                                                url
                                                  | js2n.string.Matches "^/"
                                                  | doc "The relative URL to process",
                                                visualdiff
                                                  | refs."definitions.visualDiffConfig"
                                                  | optional,
                                              }
                                            ]
                                        )
                                      },
                                      js2n.record.FieldsMatch
                                        "^(:default|[a-z0-9-]+)$"
                                    ]
                                ]
                              | doc "Which URLs should be processed when a Preview has finished building"
                              | optional,
                            visualdiff
                              | refs."definitions.visualDiffConfig"
                              | doc "Visual Diff configurations to use for all URLs processed for the Service"
                              | optional,
                            visualdiffs
                              | std.contract.any_of
                                [
                                  Array (
                                    std.contract.any_of
                                      [
                                        js2n.string.Matches "^/",
                                        {
                                          aliases
                                            | Array (
                                              js2n.string.Matches "^[a-z0-9-]+$"
                                            )
                                            | doc "Only create visual diffs for these Service aliases. The special :default alias can be used to target the automatically generated Service URL (the one with no alias)."
                                            | optional,
                                          fullPage
                                            | refs."definitions.screenshotConfig.properties.fullPage"
                                            | optional,
                                          timeout
                                            | std.number.Integer
                                            | js2n.number.Maximum 60
                                            | js2n.number.Minimum 1
                                            | doc "How long to wait for a page to be ready when taking a screenshot, in seconds. Minimum: 1, Maximum: 60"
                                            | optional,
                                          url | js2n.string.Matches "^/",
                                          waitUntil
                                            | refs."definitions.screenshotConfig.properties.waitUntil"
                                            | optional,
                                        }
                                      ]
                                  ),
                                  std.contract.Sequence
                                    [
                                      {
                                        _ | Array (
                                          std.contract.any_of
                                            [
                                              js2n.string.Matches "^/",
                                              {
                                                fullPage
                                                  | refs."definitions.screenshotConfig.properties.fullPage"
                                                  | optional,
                                                timeout
                                                  | std.number.Integer
                                                  | js2n.number.Maximum 60
                                                  | js2n.number.Minimum 1
                                                  | doc "How long to wait for a page to be ready when taking a screenshot, in seconds. Minimum: 1, Maximum: 60"
                                                  | optional,
                                                url | js2n.string.Matches "^/",
                                                waitUntil
                                                  | refs."definitions.screenshotConfig.properties.waitUntil"
                                                  | optional,
                                              }
                                            ]
                                        )
                                      },
                                      js2n.record.FieldsMatch
                                        "^(:default|[a-z0-9-]+)$"
                                    ]
                                ]
                              | doc "DEPRECATED: Use the 'urls' property instead. Which URLs should be processed for visual diffs when a Preview has finished building"
                              | optional,
                          }
                        ],
                },
            properties = {},
            required = {},
          }
        | doc "A list of service configurations",
    }