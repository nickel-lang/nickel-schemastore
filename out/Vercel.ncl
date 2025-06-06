# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      "$schema"
        | String
        | doc "Ignored. Can be set to get completions, validations and documentation in some editors."
        | optional,
      alias
        | std.contract.any_of
          [
            String,
            std.contract.Sequence
              [ js2n.array.MaxItems 50, Array (js2n.string.MaxLength 253) ]
          ]
        | doc "Aliases that will get assigned when the deployment is `READY` and the target is `production`. The client needs to make a `GET` request to its API to ensure the assignment"
        | optional,
      build
        | {
          env
            | js2n.record.MaxProperties 1000
            | js2n.record.MinProperties 0
            | {
              _ | std.contract.Sequence
                [ js2n.string.MaxLength 65536, js2n.string.MinLength 0 ]
            }
            | js2n.record.FieldsMatch ".+"
            | doc "An object containing the deployment's environment variable names and values to be passed to Builds. Secrets can be referenced by prefixing the value with `@`"
            | optional,
        }
        | doc "An object containing another object with information to be passed to the Build Process"
        | optional,
      buildCommand
        | js2n.Nullable (js2n.string.MaxLength 256)
        | doc "The build command for this project. When `null` is used this value will be automatically detected"
        | optional,
      builds
        | js2n.array.MaxItems 128
        | js2n.array.MinItems 0
        | Array
          {
            config
              | { _ | Dyn }
              | doc "Optionally, an object including arbitrary metadata to be passed to the Builder"
              | optional,
            src
              | js2n.string.MaxLength 4096
              | js2n.string.MinLength 1
              | doc "A glob expression or pathname. If more than one file is resolved, one build will be created per matched file. It can include `*` and `**`"
              | optional,
            use
              | js2n.string.MaxLength 256
              | js2n.string.MinLength 3
              | doc "An npm module to be installed by the build process. It can include a semver compatible version (e.g.: `@org/proj@1`)",
          }
        | doc "A list of build descriptions whose src references valid source files."
        | optional,
      cleanUrls
        | Bool
        | doc "When set to `true`, all HTML files and Serverless Functions will have their extension removed. When visiting a path that ends with the extension, a 308 response will redirect the client to the extensionless path."
        | optional,
      crons
        | js2n.array.MaxItems 50
        | Array
          {
            path | js2n.string.MaxLength 512 | js2n.string.Matches "^/.*",
            schedule | js2n.string.MaxLength 256 | js2n.string.MinLength 9,
            ..
          }
        | doc "An array of cron jobs that should be created for production Deployments."
        | optional,
      devCommand
        | js2n.Nullable (js2n.string.MaxLength 256)
        | doc "The dev command for this project. When `null` is used this value will be automatically detected"
        | optional,
      env
        | js2n.record.MaxProperties 1000
        | js2n.record.MinProperties 0
        | {
          _ | std.contract.Sequence
            [ js2n.string.MaxLength 65536, js2n.string.MinLength 0 ]
        }
        | js2n.record.FieldsMatch ".+"
        | doc "An object containing the deployment's environment variable names and values. Secrets can be referenced by prefixing the value with `@`"
        | optional,
      framework
        | js2n.Enum
          [
            "blitzjs",
            "nextjs",
            "gatsby",
            "remix",
            "react-router",
            "astro",
            "hexo",
            "eleventy",
            "docusaurus-2",
            "docusaurus",
            "preact",
            "solidstart-1",
            "solidstart",
            "dojo",
            "ember",
            "vue",
            "scully",
            "ionic-angular",
            "angular",
            "polymer",
            "svelte",
            "sveltekit",
            "sveltekit-1",
            "ionic-react",
            "create-react-app",
            "gridsome",
            "umijs",
            "sapper",
            "saber",
            "stencil",
            "nuxtjs",
            "redwoodjs",
            "hugo",
            "jekyll",
            "brunch",
            "middleman",
            "zola",
            "hydrogen",
            "vite",
            "vitepress",
            "vuepress",
            "parcel",
            "fasthtml",
            "sanity-v3",
            "sanity",
            "storybook",
            null
          ]
        | doc "The framework that is being used for this project. When `null` is used no framework is selected"
        | optional,
      functionFailoverRegions
        | js2n.array.MaxItems 4
        | js2n.array.MinItems 1
        | Array (js2n.string.MaxLength 256)
        | doc "Same as passiveRegions. An array of the passive regions the deployment's Serverless Functions should be deployed to so we can failover to these regions on lambda outages"
        | optional,
      functions
        | js2n.record.MaxProperties 50
        | js2n.record.MinProperties 1
        | {
          _ | {
            excludeFiles
              | js2n.string.MaxLength 256
              | doc "A glob pattern to match files that should be excluded from your Serverless Function. If you’re using a Community Runtime, the behavior might vary."
              | optional,
            includeFiles
              | js2n.string.MaxLength 256
              | doc "A glob pattern to match files that should be included in your Serverless Function. If you’re using a Community Runtime, the behavior might vary."
              | optional,
            maxDuration
              | js2n.number.Maximum 900
              | js2n.number.Minimum 1
              | doc "An integer defining how long your Serverless Function should be allowed to run on every request in seconds (between 1 and the maximum limit of your plan)."
              | optional,
            memory
              | js2n.number.Maximum 10240
              | js2n.number.Minimum 128
              | doc "An integer defining the memory your Serverless Function should be provided with (between 128 and 10240)."
              | optional,
            runtime
              | js2n.string.MaxLength 256
              | doc "The npm package name of a Runtime, including its version"
              | optional,
          }
        }
        | js2n.record.FieldsMatch "^.{1,256}$"
        | doc "An object describing custom options for your Serverless Functions. Each key must be glob pattern that matches the paths of the Serverless Functions you would like to customize (like `api/*.js` or `api/test.js`)."
        | optional,
      git
        | {
          deploymentEnabled
            | std.contract.any_of [ Bool, { _ | Bool } ]
            | doc "Specifies the branches that will not trigger an auto-deployment when committing to them. Any non specified branch is `true` by default."
            | optional,
          exclusivity
            | {
              teams
                | js2n.array.MaxItems 10
                | js2n.array.MinItems 1
                | Array String
                | doc "A list of allowed Team IDs."
                | optional,
              ..
            }
            | doc "If specified, the git repository will be exclusive to the specificed Team IDs. Teams that are not specified in the list will not be able to link new projects or create new deployments."
            | optional,
          ..
        }
        | optional,
      github
        | {
          autoAlias
            | Bool
            | doc "When set to `false`, Vercel for GitHub will not deploy the given project regardless of the GitHub app being installed."
            | optional,
          autoJobCancelation
            | Bool
            | doc "When set to `false`, Vercel for GitHub will always build pushes in sequence without cancelling a build for the most recent commit."
            | optional,
          enabled
            | Bool
            | doc "When set to false, Vercel for GitHub will not apply the alias upon merge."
            | optional,
          silent
            | Bool
            | doc "[deprecated] Please use the Project Settings in the dashboard instead: https://vercel.link/46vERTS When set to `true`, Vercel for GitHub will stop commenting on pull requests and commits."
            | optional,
          ..
        }
        | optional,
      headers
        | js2n.array.MaxItems 2048
        | Array
          {
            has
              | js2n.array.MaxItems 16
              | Array (
                std.contract.any_of
                  [
                    js2n.record.Record
                      {
                        additional = 'None,
                        patterns = {},
                        properties =
                          {
                              type =
                                std.contract.Sequence
                                    [ std.enum.TagOrString, [| 'host |] ],
                              value = js2n.string.MaxLength 4096,
                            },
                        required = { type = true, value = true, },
                      },
                    js2n.record.Record
                      {
                        additional = 'None,
                        patterns = {},
                        properties =
                          {
                              key = js2n.string.MaxLength 4096,
                              type =
                                std.contract.Sequence
                                    [
                                      std.enum.TagOrString,
                                      [| 'query, 'cookie, 'header |]
                                    ],
                              value = js2n.string.MaxLength 4096,
                            },
                        required = { key = true, type = true, },
                      }
                  ]
              )
              | doc "An array of requirements that are needed to match"
              | optional,
            headers
              | js2n.array.MaxItems 1024
              | Array
                {
                  key | js2n.string.MaxLength 4096,
                  value | js2n.string.MaxLength 4096,
                }
              | doc "An array of key/value pairs representing each response header.",
            missing
              | js2n.array.MaxItems 16
              | Array (
                std.contract.any_of
                  [
                    js2n.record.Record
                      {
                        additional = 'None,
                        patterns = {},
                        properties =
                          {
                              type =
                                std.contract.Sequence
                                    [ std.enum.TagOrString, [| 'host |] ],
                              value = js2n.string.MaxLength 4096,
                            },
                        required = { type = true, value = true, },
                      },
                    js2n.record.Record
                      {
                        additional = 'None,
                        patterns = {},
                        properties =
                          {
                              key = js2n.string.MaxLength 4096,
                              type =
                                std.contract.Sequence
                                    [
                                      std.enum.TagOrString,
                                      [| 'query, 'cookie, 'header |]
                                    ],
                              value = js2n.string.MaxLength 4096,
                            },
                        required = { key = true, type = true, },
                      }
                  ]
              )
              | doc "An array of requirements that are needed to match"
              | optional,
            source
              | js2n.string.MaxLength 4096
              | doc "A pattern that matches each incoming pathname (excluding querystring)",
          }
        | doc "A list of header definitions."
        | optional,
      ignoreCommand | js2n.Nullable (js2n.string.MaxLength 256) | optional,
      images
        | {
          contentDispositionType
            | std.enum.TagOrString
            | [| 'attachment, 'inline |]
            | optional,
          contentSecurityPolicy
            | js2n.string.MaxLength 256
            | js2n.string.MinLength 1
            | optional,
          dangerouslyAllowSVG | Bool | optional,
          domains
            | js2n.array.MaxItems 50
            | js2n.array.MinItems 0
            | Array (
              std.contract.Sequence
                [ js2n.string.MaxLength 256, js2n.string.MinLength 1 ]
            )
            | optional,
          formats
            | js2n.array.MaxItems 4
            | js2n.array.MinItems 1
            | Array (
              std.contract.Sequence
                [
                  std.enum.TagOrString,
                  [|
                    '"image/png",
                    '"image/jpeg",
                    '"image/webp",
                    '"image/avif"
                  |]
                ]
            )
            | optional,
          localPatterns
            | js2n.array.MaxItems 25
            | js2n.array.MinItems 0
            | Array
              {
                pathname
                  | js2n.string.MaxLength 256
                  | js2n.string.MinLength 1
                  | optional,
                search
                  | js2n.string.MaxLength 256
                  | js2n.string.MinLength 0
                  | optional,
              }
            | optional,
          minimumCacheTTL
            | std.number.Integer
            | js2n.number.Maximum 315360000
            | js2n.number.Minimum 1
            | optional,
          qualities
            | js2n.array.MaxItems 20
            | js2n.array.MinItems 1
            | Array (
              std.contract.Sequence
                [
                  std.number.Integer,
                  js2n.number.Maximum 100,
                  js2n.number.Minimum 1
                ]
            )
            | optional,
          remotePatterns
            | js2n.array.MaxItems 50
            | js2n.array.MinItems 0
            | Array
              {
                hostname | js2n.string.MaxLength 256 | js2n.string.MinLength 1,
                pathname
                  | js2n.string.MaxLength 256
                  | js2n.string.MinLength 1
                  | optional,
                port
                  | js2n.string.MaxLength 5
                  | js2n.string.MinLength 0
                  | optional,
                protocol
                  | std.enum.TagOrString
                  | [| 'https, 'http |]
                  | optional,
                search
                  | js2n.string.MaxLength 256
                  | js2n.string.MinLength 0
                  | optional,
              }
            | optional,
          sizes | js2n.array.MaxItems 50 | js2n.array.MinItems 1 | Array Number,
        }
        | optional,
      installCommand
        | js2n.Nullable (js2n.string.MaxLength 256)
        | doc "The install command for this project. When `null` is used this value will be automatically detected"
        | optional,
      name | String | doc "A name for the deployment" | optional,
      outputDirectory
        | js2n.Nullable (js2n.string.MaxLength 256)
        | doc "The output directory of the project. When `null` is used this value will be automatically detected"
        | optional,
      passiveRegions
        | js2n.array.MaxItems 4
        | js2n.array.MinItems 1
        | Array (js2n.string.MaxLength 256)
        | doc "An array of the passive regions the deployment's Serverless Functions should be deployed to that can be failed over to during a lambda outage"
        | optional,
      public
        | Bool
        | doc "Whether a deployment's source and logs are available publicly"
        | optional,
      redirects
        | js2n.array.MaxItems 2048
        | Array
          {
            destination
              | js2n.string.MaxLength 4096
              | doc "A location destination defined as an absolute pathname or external URL.",
            has
              | js2n.array.MaxItems 16
              | Array (
                std.contract.any_of
                  [
                    js2n.record.Record
                      {
                        additional = 'None,
                        patterns = {},
                        properties =
                          {
                              type =
                                std.contract.Sequence
                                    [ std.enum.TagOrString, [| 'host |] ],
                              value = js2n.string.MaxLength 4096,
                            },
                        required = { type = true, value = true, },
                      },
                    js2n.record.Record
                      {
                        additional = 'None,
                        patterns = {},
                        properties =
                          {
                              key = js2n.string.MaxLength 4096,
                              type =
                                std.contract.Sequence
                                    [
                                      std.enum.TagOrString,
                                      [| 'query, 'cookie, 'header |]
                                    ],
                              value = js2n.string.MaxLength 4096,
                            },
                        required = { key = true, type = true, },
                      }
                  ]
              )
              | doc "An array of requirements that are needed to match"
              | optional,
            missing
              | js2n.array.MaxItems 16
              | Array (
                std.contract.any_of
                  [
                    js2n.record.Record
                      {
                        additional = 'None,
                        patterns = {},
                        properties =
                          {
                              type =
                                std.contract.Sequence
                                    [ std.enum.TagOrString, [| 'host |] ],
                              value = js2n.string.MaxLength 4096,
                            },
                        required = { type = true, value = true, },
                      },
                    js2n.record.Record
                      {
                        additional = 'None,
                        patterns = {},
                        properties =
                          {
                              key = js2n.string.MaxLength 4096,
                              type =
                                std.contract.Sequence
                                    [
                                      std.enum.TagOrString,
                                      [| 'query, 'cookie, 'header |]
                                    ],
                              value = js2n.string.MaxLength 4096,
                            },
                        required = { key = true, type = true, },
                      }
                  ]
              )
              | doc "An array of requirements that are needed to match"
              | optional,
            permanent
              | Bool
              | doc "A boolean to toggle between permanent and temporary redirect. When `true`, the status code is `308`. When `false` the status code is `307`."
              | optional,
            source
              | js2n.string.MaxLength 4096
              | doc "A pattern that matches each incoming pathname (excluding querystring).",
            statusCode
              | std.number.Integer
              | js2n.number.Maximum 999
              | js2n.number.Minimum 100
              | doc "An optional integer to define the status code of the redirect."
              | optional,
          }
        | doc "A list of redirect definitions."
        | optional,
      regions
        | js2n.array.MaxItems 1000
        | js2n.array.MinItems 1
        | Array (js2n.string.MaxLength 256)
        | doc "An array of the regions the deployment's Serverless Functions should be deployed to"
        | optional,
      relatedProjects
        | js2n.array.MaxItems 10
        | Array String
        | doc "An array of projectIds to associate with the current project."
        | optional,
      rewrites
        | js2n.array.MaxItems 2048
        | Array
          {
            destination
              | js2n.string.MaxLength 4096
              | doc "An absolute pathname to an existing resource or an external URL.",
            has
              | js2n.array.MaxItems 16
              | Array (
                std.contract.any_of
                  [
                    js2n.record.Record
                      {
                        additional = 'None,
                        patterns = {},
                        properties =
                          {
                              type =
                                std.contract.Sequence
                                    [ std.enum.TagOrString, [| 'host |] ],
                              value = js2n.string.MaxLength 4096,
                            },
                        required = { type = true, value = true, },
                      },
                    js2n.record.Record
                      {
                        additional = 'None,
                        patterns = {},
                        properties =
                          {
                              key = js2n.string.MaxLength 4096,
                              type =
                                std.contract.Sequence
                                    [
                                      std.enum.TagOrString,
                                      [| 'query, 'cookie, 'header |]
                                    ],
                              value = js2n.string.MaxLength 4096,
                            },
                        required = { key = true, type = true, },
                      }
                  ]
              )
              | doc "An array of requirements that are needed to match"
              | optional,
            missing
              | js2n.array.MaxItems 16
              | Array (
                std.contract.any_of
                  [
                    js2n.record.Record
                      {
                        additional = 'None,
                        patterns = {},
                        properties =
                          {
                              type =
                                std.contract.Sequence
                                    [ std.enum.TagOrString, [| 'host |] ],
                              value = js2n.string.MaxLength 4096,
                            },
                        required = { type = true, value = true, },
                      },
                    js2n.record.Record
                      {
                        additional = 'None,
                        patterns = {},
                        properties =
                          {
                              key = js2n.string.MaxLength 4096,
                              type =
                                std.contract.Sequence
                                    [
                                      std.enum.TagOrString,
                                      [| 'query, 'cookie, 'header |]
                                    ],
                              value = js2n.string.MaxLength 4096,
                            },
                        required = { key = true, type = true, },
                      }
                  ]
              )
              | doc "An array of requirements that are needed to match"
              | optional,
            source
              | js2n.string.MaxLength 4096
              | doc "A pattern that matches each incoming pathname (excluding querystring).",
            statusCode
              | std.number.Integer
              | js2n.number.Maximum 999
              | js2n.number.Minimum 100
              | doc "An optional integer to override the status code of the response."
              | optional,
          }
        | doc "A list of rewrite definitions."
        | optional,
      routes
        | js2n.array.MaxItems 2048
        | Array (
          std.contract.any_of
            [
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        caseSensitive = Bool,
                        check = Bool,
                        continue = Bool,
                        dest = js2n.string.MaxLength 4096,
                        has =
                          std.contract.Sequence
                              [
                                js2n.array.MaxItems 16,
                                js2n.array.ArrayOf
                                  (std.contract.any_of
                                    [
                                      js2n.record.Record
                                        {
                                          additional = 'None,
                                          patterns = {},
                                          properties =
                                            {
                                                type =
                                                  std.contract.Sequence
                                                      [
                                                        std.enum.TagOrString,
                                                        [| 'host |]
                                                      ],
                                                value =
                                                  js2n.string.MaxLength 4096,
                                              },
                                          required =
                                            { type = true, value = true, },
                                        },
                                      js2n.record.Record
                                        {
                                          additional = 'None,
                                          patterns = {},
                                          properties =
                                            {
                                                key =
                                                  js2n.string.MaxLength 4096,
                                                type =
                                                  std.contract.Sequence
                                                      [
                                                        std.enum.TagOrString,
                                                        [|
                                                          'query,
                                                          'cookie,
                                                          'header
                                                        |]
                                                      ],
                                                value =
                                                  js2n.string.MaxLength 4096,
                                              },
                                          required =
                                            { key = true, type = true, },
                                        }
                                    ])
                              ],
                        headers =
                          std.contract.Sequence
                              [
                                js2n.record.MaxProperties 100,
                                js2n.record.MinProperties 1,
                                js2n.record.Record
                                  {
                                    additional = 'None,
                                    patterns =
                                      {
                                          "^.{1,256}$" =
                                            js2n.string.MaxLength 4096,
                                        },
                                    properties = {},
                                    required = {},
                                  }
                              ],
                        important = Bool,
                        isInternal = Bool,
                        locale =
                          std.contract.Sequence
                              [
                                js2n.record.MinProperties 1,
                                js2n.record.Record
                                  {
                                    additional = 'None,
                                    patterns = {},
                                    properties =
                                      {
                                          cookie = js2n.string.MaxLength 4096,
                                          "default" =
                                            js2n.string.MaxLength 4096,
                                          path = js2n.string.MaxLength 4096,
                                          redirect =
                                            std.contract.Sequence
                                                [
                                                  js2n.record.MaxProperties 100,
                                                  js2n.record.MinProperties 1,
                                                  js2n.record.Record
                                                    {
                                                      additional = 'None,
                                                      patterns =
                                                        {
                                                            "^.{1,256}$" =
                                                              js2n.string.MaxLength
                                                                  4096,
                                                          },
                                                      properties = {},
                                                      required = {},
                                                    }
                                                ],
                                          value = js2n.string.MaxLength 4096,
                                        },
                                    required = {},
                                  }
                              ],
                        methods =
                          std.contract.Sequence
                              [
                                js2n.array.MaxItems 10,
                                js2n.array.ArrayOf (js2n.string.MaxLength 32)
                              ],
                        middleware = Number,
                        middlewarePath = String,
                        middlewareRawSrc = js2n.array.ArrayOf String,
                        missing =
                          std.contract.Sequence
                              [
                                js2n.array.MaxItems 16,
                                js2n.array.ArrayOf
                                  (std.contract.any_of
                                    [
                                      js2n.record.Record
                                        {
                                          additional = 'None,
                                          patterns = {},
                                          properties =
                                            {
                                                type =
                                                  std.contract.Sequence
                                                      [
                                                        std.enum.TagOrString,
                                                        [| 'host |]
                                                      ],
                                                value =
                                                  js2n.string.MaxLength 4096,
                                              },
                                          required =
                                            { type = true, value = true, },
                                        },
                                      js2n.record.Record
                                        {
                                          additional = 'None,
                                          patterns = {},
                                          properties =
                                            {
                                                key =
                                                  js2n.string.MaxLength 4096,
                                                type =
                                                  std.contract.Sequence
                                                      [
                                                        std.enum.TagOrString,
                                                        [|
                                                          'query,
                                                          'cookie,
                                                          'header
                                                        |]
                                                      ],
                                                value =
                                                  js2n.string.MaxLength 4096,
                                              },
                                          required =
                                            { key = true, type = true, },
                                        }
                                    ])
                              ],
                        override = Bool,
                        src = js2n.string.MaxLength 4096,
                        status =
                          std.contract.Sequence
                              [
                                std.number.Integer,
                                js2n.number.Maximum 999,
                                js2n.number.Minimum 100
                              ],
                        user = Bool,
                      },
                  required = { src = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        handle =
                          std.contract.Sequence
                              [
                                js2n.string.MaxLength 32,
                                std.enum.TagOrString,
                                [|
                                  'rewrite,
                                  'resource,
                                  'miss,
                                  'hit,
                                  'filesystem,
                                  'error
                                |]
                              ],
                      },
                  required = { handle = true, },
                }
            ]
        )
        | doc "A list of routes objects used to rewrite paths to point towards other internal or external paths"
        | optional,
      scope
        | String
        | doc "This property determines the scope (user or team) under which the project will be deployed by Vercel CLI."
        | optional,
      trailingSlash
        | Bool
        | doc "When `false`, visiting a path that ends with a forward slash will respond with a `308` status code and redirect to the path without the trailing slash."
        | optional,
      version
        | std.number.Integer
        | js2n.number.Maximum 2
        | js2n.number.Minimum 2
        | optional,
      wildcard
        | js2n.array.MaxItems 25
        | js2n.array.MinItems 1
        | Array
          {
            domain | js2n.string.MaxLength 255 | js2n.string.MinLength 1,
            value | js2n.string.MaxLength 1024 | js2n.string.MinLength 0,
          }
        | optional,
    }