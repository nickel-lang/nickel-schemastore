# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs_
    = {
      "definitions.!reference" = Array (js2n.string.MinLength 1),
      "definitions.after_script" = refs_."definitions.optional_script",
      "definitions.allow_failure" =
        js2n.OneOf
            [
              Bool,
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties = { exit_codes = std.number.Integer, },
                  required = { exit_codes = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        exit_codes =
                          std.contract.Sequence
                              [
                                js2n.array.MinItems 1,
                                js2n.array.UniqueItems,
                                js2n.array.ArrayOf std.number.Integer
                              ],
                      },
                  required = { exit_codes = true, },
                }
            ],
      "definitions.artifacts" =
        js2n.Nullable
            {
              access
                | std.enum.TagOrString
                | [| 'all, 'developer, 'none |]
                | optional,
              exclude | js2n.array.MinItems 1 | Array String | optional,
              expire_in | String | optional,
              expose_as | String | optional,
              name | String | optional,
              paths | js2n.array.MinItems 1 | Array String | optional,
              reports
                | {
                  annotations
                    | String
                    | doc "Path to JSON file with annotations report."
                    | optional,
                  browser_performance
                    | String
                    | doc "Path to a single file with browser performance metric report(s)."
                    | optional,
                  codequality
                    | refs_."definitions.string_file_list"
                    | doc "Path to file or list of files with code quality report(s) (such as Code Climate)."
                    | optional,
                  container_scanning
                    | refs_."definitions.string_file_list"
                    | doc "Path to file or list of files with Container scanning vulnerabilities report(s)."
                    | optional,
                  coverage_report
                    | js2n.Nullable
                      {
                        coverage_format
                          | std.enum.TagOrString
                          | [| 'jacoco, 'cobertura |]
                          | doc "Code coverage format used by the test framework."
                          | optional,
                        path
                          | js2n.string.MinLength 1
                          | doc "Path to the coverage report file that should be parsed."
                          | optional,
                        ..
                      }
                    | doc "Used to collect coverage reports from the job."
                    | optional,
                  cyclonedx | refs_."definitions.string_file_list" | optional,
                  dast
                    | refs_."definitions.string_file_list"
                    | doc "Path to file or list of files with DAST vulnerabilities report(s)."
                    | optional,
                  dependency_scanning
                    | refs_."definitions.string_file_list"
                    | doc "Path to file or list of files with Dependency scanning vulnerabilities report(s)."
                    | optional,
                  dotenv
                    | refs_."definitions.string_file_list"
                    | doc "Path to file or list of files containing runtime-created variables for this job."
                    | optional,
                  junit
                    | std.contract.any_of
                      [
                        String,
                        std.contract.Sequence
                          [ js2n.array.MinItems 1, Array String ]
                      ]
                    | doc "Path for file(s) that should be parsed as JUnit XML result"
                    | optional,
                  license_management
                    | refs_."definitions.string_file_list"
                    | doc "Deprecated in 12.8: Path to file or list of files with license report(s)."
                    | optional,
                  license_scanning
                    | refs_."definitions.string_file_list"
                    | doc "Path to file or list of files with license report(s)."
                    | optional,
                  load_performance
                    | refs_."definitions.string_file_list"
                    | optional,
                  lsif
                    | refs_."definitions.string_file_list"
                    | doc "Path to file or list of files containing code intelligence (Language Server Index Format)."
                    | optional,
                  metrics
                    | refs_."definitions.string_file_list"
                    | doc "Path to file or list of files with custom metrics report(s)."
                    | optional,
                  repository_xray
                    | refs_."definitions.string_file_list"
                    | doc "Path to file or list of files with Repository X-Ray report(s)."
                    | optional,
                  requirements
                    | refs_."definitions.string_file_list"
                    | doc "Path to file or list of files with requirements report(s)."
                    | optional,
                  sast
                    | refs_."definitions.string_file_list"
                    | doc "Path to file or list of files with SAST vulnerabilities report(s)."
                    | optional,
                  secret_detection
                    | refs_."definitions.string_file_list"
                    | doc "Path to file or list of files with secret detection report(s)."
                    | optional,
                  terraform
                    | refs_."definitions.string_file_list"
                    | doc "Path to file or list of files with terraform plan(s)."
                    | optional,
                }
                | optional,
              untracked | Bool | optional,
              when
                | std.enum.TagOrString
                | [| 'always, 'on_failure, 'on_success |]
                | optional,
            },
      "definitions.before_script" = refs_."definitions.optional_script",
      "definitions.cache" =
        std.contract.any_of
            [
              std.contract.Sequence
                [ refs_."definitions.cache_item", { _ | Dyn } ],
              Array (
                std.contract.Sequence
                  [ refs_."definitions.cache_item", { _ | Dyn } ]
              )
            ],
      "definitions.cache_item" =
        {
            fallback_keys | js2n.array.MaxItems 5 | Array String | optional,
            key
              | std.contract.any_of
                [
                  js2n.string.Matches "^[^/]*[^./][^/]*$",
                  {
                    files
                      | js2n.array.MaxItems 2
                      | js2n.array.MinItems 1
                      | Array String
                      | optional,
                    prefix | String | optional,
                    ..
                  }
                ]
              | optional,
            paths | Array String | optional,
            policy
              | js2n.string.Matches "pull-push|pull|push|\\$\\w{1,255}"
              | optional,
            unprotect | Bool | optional,
            untracked | Bool | optional,
            when
              | std.enum.TagOrString
              | [| 'always, 'on_failure, 'on_success |]
              | optional,
            ..
          },
      "definitions.changes" =
        std.contract.any_of
            [
              {
                compare_to
                  | String
                  | doc "Ref for comparing changes."
                  | optional,
                paths | Array String | doc "List of file paths.",
              },
              Array String
            ],
      "definitions.exists" =
        std.contract.any_of
            [
              js2n.array.ArrayOf String,
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    { paths = js2n.array.ArrayOf String, project = String, },
                  required = { paths = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        paths = js2n.array.ArrayOf String,
                        project = String,
                        ref = String,
                      },
                  required = { paths = true, project = true, },
                }
            ],
      "definitions.filter" =
        std.contract.any_of
            [
              js2n.Null,
              std.contract.Sequence
                [ refs_."definitions.filter_refs", Array Dyn ],
              {
                changes
                  | Array String
                  | doc "Filter job creation based on files that were modified in a git push."
                  | optional,
                kubernetes
                  | std.enum.TagOrString
                  | [| 'active |]
                  | doc "Filter job based on if Kubernetes integration is active."
                  | optional,
                refs | refs_."definitions.filter_refs" | Array Dyn | optional,
                variables | Array String | optional,
              }
            ],
      "definitions.filter_refs" =
        Array (
            std.contract.any_of
              [
                js2n.OneOf
                  [
                    std.contract.Sequence
                      [ std.enum.TagOrString, [| 'branches |] ],
                    std.contract.Sequence [ std.enum.TagOrString, [| 'tags |] ],
                    std.contract.Sequence [ std.enum.TagOrString, [| 'api |] ],
                    std.contract.Sequence
                      [ std.enum.TagOrString, [| 'external |] ],
                    std.contract.Sequence
                      [ std.enum.TagOrString, [| 'pipelines |] ],
                    std.contract.Sequence
                      [ std.enum.TagOrString, [| 'pushes |] ],
                    std.contract.Sequence
                      [ std.enum.TagOrString, [| 'schedules |] ],
                    std.contract.Sequence
                      [ std.enum.TagOrString, [| 'triggers |] ],
                    std.contract.Sequence [ std.enum.TagOrString, [| 'web |] ]
                  ],
                String
              ]
          ),
      "definitions.globalVariables" =
        js2n.record.Record
            {
              additional = 'Some Dyn,
              patterns =
                {
                    ".*" =
                      js2n.OneOf
                          [
                            std.contract.any_of [ Bool, Number, String ],
                            js2n.record.Record
                              {
                                additional = 'None,
                                patterns = {},
                                properties =
                                  {
                                      description = String,
                                      expand = Bool,
                                      options =
                                        std.contract.Sequence
                                            [
                                              js2n.array.MinItems 1,
                                              js2n.array.UniqueItems,
                                              js2n.array.ArrayOf String
                                            ],
                                      value = String,
                                    },
                                required = {},
                              }
                          ],
                  },
              properties = {},
              required = {},
            },
      "definitions.hooks" =
        {
            pre_get_sources_script
              | refs_."definitions.optional_script"
              | optional,
          },
      "definitions.id_tokens" =
        js2n.record.Record
            {
              additional = 'Some Dyn,
              patterns =
                {
                    ".*" =
                      {
                          aud
                            | std.contract.any_of
                              [
                                String,
                                std.contract.Sequence
                                  [
                                    js2n.array.MinItems 1,
                                    js2n.array.UniqueItems,
                                    Array String
                                  ]
                              ],
                        },
                  },
              properties = {},
              required = {},
            },
      "definitions.identity" =
        std.contract.Sequence [ std.enum.TagOrString, [| 'google_cloud |] ],
      "definitions.if" = String,
      "definitions.image" =
        std.contract.any_of
            [
              js2n.string.MinLength 1,
              {
                docker
                  | {
                    platform
                      | js2n.string.MinLength 1
                      | doc "Image architecture to pull."
                      | optional,
                    user
                      | js2n.string.MaxLength 255
                      | js2n.string.MinLength 1
                      | doc "Username or UID to use for the container."
                      | optional,
                  }
                  | optional,
                entrypoint
                  | js2n.array.MinItems 1
                  | doc "Command or script that should be executed as the container's entrypoint. It will be translated to Docker's --entrypoint option while creating the container. The syntax is similar to Dockerfile's ENTRYPOINT directive, where each shell token is a separate string in the array."
                  | optional,
                kubernetes
                  | {
                    user
                      | std.contract.any_of
                        [
                          std.number.Integer,
                          std.contract.Sequence
                            [
                              js2n.string.MaxLength 255,
                              js2n.string.MinLength 1
                            ]
                        ]
                      | doc "Username or UID to use for the container. It also supports the UID:GID format."
                      | optional,
                  }
                  | optional,
                name
                  | js2n.string.MinLength 1
                  | doc "Full name of the image that should be used. It should contain the Registry part if needed.",
                pull_policy
                  | std.contract.any_of
                    [
                      std.contract.Sequence
                        [
                          std.enum.TagOrString,
                          [| 'if-not-present, 'never, 'always |]
                        ],
                      std.contract.Sequence
                        [
                          js2n.array.MinItems 1,
                          js2n.array.UniqueItems,
                          Array (
                            std.contract.Sequence
                              [
                                std.enum.TagOrString,
                                [| 'if-not-present, 'never, 'always |]
                              ]
                          )
                        ]
                    ]
                  | optional,
              }
            ],
      "definitions.includeRules" =
        js2n.Nullable
            (Array (
              std.contract.any_of
                [
                  {
                    changes
                      | refs_."definitions.changes"
                      | std.contract.any_of [ { _ | Dyn }, Array Dyn ]
                      | optional,
                    exists
                      | refs_."definitions.exists"
                      | std.contract.any_of [ { _ | Dyn }, Array Dyn ]
                      | optional,
                    "if" | refs_."definitions.if" | String | optional,
                    when
                      | js2n.Nullable
                        (std.contract.Sequence
                          [ std.enum.TagOrString, [| 'always, 'never |] ])
                      | optional,
                  },
                  js2n.string.MinLength 1,
                  std.contract.Sequence [ js2n.array.MinItems 1, Array String ]
                ]
            )),
      "definitions.include_item" =
        js2n.OneOf
            [
              std.contract.Sequence
                [
                  js2n.string.Matches "\\w\\.ya?ml$",
                  std.contract.any_of
                    [
                      js2n.string.Matches "^https?://",
                      std.contract.not
                        (std.contract.any_of
                          [
                            js2n.Null,
                            Bool,
                            Number,
                            js2n.string.Matches "^\\w+://",
                            { _ | Dyn },
                            Array Dyn
                          ])
                    ]
                ],
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        inputs =
                          std.contract.Sequence
                              [ refs_."definitions.inputs", { _ | Dyn } ],
                        local = js2n.string.Matches "\\.ya?ml$",
                        rules =
                          std.contract.Sequence
                              [
                                refs_."definitions.includeRules",
                                js2n.Nullable (Array Dyn)
                              ],
                      },
                  required = { local = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        file =
                          std.contract.any_of
                              [
                                js2n.string.Matches "\\.ya?ml$",
                                js2n.array.ArrayOf
                                  (js2n.string.Matches "\\.ya?ml$")
                              ],
                        inputs =
                          std.contract.Sequence
                              [ refs_."definitions.inputs", { _ | Dyn } ],
                        project = js2n.string.Matches "(?:\\S/\\S|\\$\\S+)",
                        ref = String,
                        rules =
                          std.contract.Sequence
                              [
                                refs_."definitions.includeRules",
                                js2n.Nullable (Array Dyn)
                              ],
                      },
                  required = { file = true, project = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        inputs =
                          std.contract.Sequence
                              [ refs_."definitions.inputs", { _ | Dyn } ],
                        rules =
                          std.contract.Sequence
                              [
                                refs_."definitions.includeRules",
                                js2n.Nullable (Array Dyn)
                              ],
                        template = js2n.string.Matches "\\.ya?ml$",
                      },
                  required = { template = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        component = String,
                        inputs =
                          std.contract.Sequence
                              [ refs_."definitions.inputs", { _ | Dyn } ],
                        rules =
                          std.contract.Sequence
                              [
                                refs_."definitions.includeRules",
                                js2n.Nullable (Array Dyn)
                              ],
                      },
                  required = { component = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        inputs =
                          std.contract.Sequence
                              [ refs_."definitions.inputs", { _ | Dyn } ],
                        integrity =
                          js2n.string.Matches "^sha256-[A-Za-z0-9+/]{43}=$",
                        remote = js2n.string.Matches "^https?://.+\\.ya?ml$",
                        rules =
                          std.contract.Sequence
                              [
                                refs_."definitions.includeRules",
                                js2n.Nullable (Array Dyn)
                              ],
                      },
                  required = { remote = true, },
                }
            ],
      "definitions.inputParameters" =
        js2n.record.Record
            {
              additional = 'Some Dyn,
              patterns =
                {
                    ".*" =
                      js2n.Nullable
                          (std.contract.Sequence
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
                                          {
                                              type =
                                                std.contract.Sequence
                                                    [
                                                      std.enum.TagOrString,
                                                      [| 'string |]
                                                    ],
                                            },
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
                                      "default"
                                        | js2n.Nullable String
                                        | optional,
                                      ..
                                    },
                                    Array Dyn
                                  ]) js2n.Always,
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
                                          {
                                              type =
                                                std.contract.Sequence
                                                    [
                                                      std.enum.TagOrString,
                                                      [| 'number |]
                                                    ],
                                            },
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
                                      "default"
                                        | js2n.Nullable Number
                                        | optional,
                                      ..
                                    },
                                    Array Dyn
                                  ]) js2n.Always,
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
                                          {
                                              type =
                                                std.contract.Sequence
                                                    [
                                                      std.enum.TagOrString,
                                                      [| 'boolean |]
                                                    ],
                                            },
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
                                      "default" | js2n.Nullable Bool | optional,
                                      ..
                                    },
                                    Array Dyn
                                  ]) js2n.Always,
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
                                          {
                                              type =
                                                std.contract.Sequence
                                                    [
                                                      std.enum.TagOrString,
                                                      [| 'array |]
                                                    ],
                                            },
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
                                      "default"
                                        | js2n.Nullable (Array Dyn)
                                        | optional,
                                      ..
                                    },
                                    Array Dyn
                                  ]) js2n.Always,
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
                                description
                                  | js2n.string.MaxLength 1024
                                  | optional,
                                options
                                  | Array (
                                    std.contract.any_of [ Bool, Number, String ]
                                  )
                                  | optional,
                                regex | String | optional,
                                type
                                  | std.enum.TagOrString
                                  | [| 'string, 'number, 'boolean, 'array |]
                                  | optional,
                              }
                            ]),
                  },
              properties = {},
              required = {},
            },
      "definitions.inputs" =
        std.contract.Sequence
            [
              {
                _ | std.contract.any_of
                  [
                    js2n.string.MaxLength 1024,
                    Number,
                    Bool,
                    Array (
                      std.contract.any_of
                        [
                          String,
                          Number,
                          Bool,
                          {  .. },
                          Array (
                            std.contract.any_of
                              [
                                js2n.Null,
                                Bool,
                                Number,
                                String,
                                {  .. },
                                Array Dyn
                              ]
                          )
                        ]
                    ),
                    {  .. },
                    js2n.Null
                  ]
              },
              js2n.record.FieldsMatch "^[a-zA-Z0-9_-]+$"
            ],
      "definitions.interruptible" = Bool,
      "definitions.job" =
        std.contract.Sequence [ refs_."definitions.job_template", { _ | Dyn } ],
      "definitions.jobVariables" =
        js2n.record.Record
            {
              additional = 'Some Dyn,
              patterns =
                {
                    ".*" =
                      js2n.OneOf
                          [
                            std.contract.any_of [ Bool, Number, String ],
                            js2n.record.Record
                              {
                                additional = 'None,
                                patterns = {},
                                properties = { expand = Bool, value = String, },
                                required = {},
                              }
                          ],
                  },
              properties = {},
              required = {},
            },
      "definitions.job_template" =
        std.contract.Sequence
            [
              js2n.OneOf
                [
                  std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      std.contract.Sequence
                        [
                          js2n.record.Record
                            {
                              additional = 'Some Dyn,
                              patterns = {},
                              properties =
                                {
                                    when =
                                      std.contract.Sequence
                                          [
                                            std.enum.TagOrString,
                                            [| 'delayed |]
                                          ],
                                  },
                              required = { when = true, },
                            },
                          js2n.record.Required [ "start_in" ]
                        ],
                      Array Dyn
                    ],
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
                                when =
                                  std.contract.not
                                      (std.contract.Sequence
                                        [
                                          std.enum.TagOrString,
                                          [| 'delayed |]
                                        ]),
                              },
                          required = {},
                        },
                      Array Dyn
                    ]
                ],
              {
                after_script | refs_."definitions.after_script" | optional,
                allow_failure | refs_."definitions.allow_failure" | optional,
                artifacts
                  | refs_."definitions.artifacts"
                  | js2n.Nullable ({ _ | Dyn })
                  | optional,
                before_script | refs_."definitions.before_script" | optional,
                cache | refs_."definitions.cache" | optional,
                coverage
                  | js2n.string.Matches "^/.+/$"
                  | doc "Must be a regular expression, optionally but recommended to be quoted, and must be surrounded with '/'. Example: '/Code coverage: \\d+\\.\\d+/'"
                  | optional,
                dependencies
                  | Array String
                  | doc "Specify a list of job names from earlier stages from which artifacts should be loaded. By default, all previous artifacts are passed. Use an empty array to skip downloading artifacts."
                  | optional,
                environment
                  | std.contract.any_of
                    [
                      String,
                      {
                        action
                          | std.enum.TagOrString
                          | [| 'access, 'verify, 'stop, 'prepare, 'start |]
                          | doc "Specifies what this job will do. 'start' (default) indicates the job will start the deployment. 'prepare'/'verify'/'access' indicates this will not affect the deployment. 'stop' indicates this will stop the deployment."
                          | optional,
                        auto_stop_in
                          | String
                          | doc "The amount of time it should take before GitLab will automatically stop the environment. Supports a wide variety of formats, e.g. '1 week', '3 mins 4 sec', '2 hrs 20 min', '2h20min', '6 mos 1 day', '47 yrs 6 mos and 4d', '3 weeks and 2 days'."
                          | optional,
                        deployment_tier
                          | std.enum.TagOrString
                          | [|
                            'other,
                            'development,
                            'testing,
                            'staging,
                            'production
                          |]
                          | doc "Explicitly specifies the tier of the deployment environment if non-standard environment name is used."
                          | optional,
                        kubernetes
                          | {
                            agent
                              | String
                              | doc "Specifies the GitLab Agent for Kubernetes. The format is `path/to/agent/project:agent-name`."
                              | optional,
                            flux_resource_path
                              | String
                              | doc "The Flux resource path to associate with this environment. This must be the full resource path. For example, 'helm.toolkit.fluxcd.io/v2/namespaces/gitlab-agent/helmreleases/gitlab-agent'."
                              | optional,
                            namespace
                              | js2n.string.MinLength 1
                              | doc "The kubernetes namespace where this environment should be deployed to."
                              | optional,
                            ..
                          }
                          | doc "Used to configure the kubernetes deployment for this environment. This is currently not supported for kubernetes clusters that are managed by GitLab."
                          | optional,
                        name
                          | js2n.string.MinLength 1
                          | doc "The name of the environment, e.g. 'qa', 'staging', 'production'.",
                        on_stop
                          | String
                          | doc "The name of a job to execute when the environment is about to be stopped."
                          | optional,
                        url
                          | js2n.string.Matches "^(https?://.+|\\$[A-Za-z]+)"
                          | doc "When set, this will expose buttons in various places for the current environment in GitLab, that will take you to the defined URL."
                          | optional,
                      }
                    ]
                  | doc "Used to associate environment metadata with a deploy. Environment can have a name and URL attached to it, and will be displayed under /environments under the project."
                  | optional,
                except
                  | refs_."definitions.filter"
                  | doc "Job will run *except* for when these filtering options match."
                  | optional,
                extends
                  | std.contract.any_of
                    [
                      String,
                      std.contract.Sequence
                        [ js2n.array.MinItems 1, Array String ]
                    ]
                  | doc "The name of one or more jobs to inherit configuration from."
                  | optional,
                hooks | refs_."definitions.hooks" | { _ | Dyn } | optional,
                id_tokens
                  | refs_."definitions.id_tokens"
                  | { _ | Dyn }
                  | optional,
                identity | refs_."definitions.identity" | String | optional,
                image | refs_."definitions.image" | optional,
                inherit
                  | {
                    "default"
                      | std.contract.any_of
                        [
                          Bool,
                          Array (
                            std.contract.Sequence
                              [
                                std.enum.TagOrString,
                                [|
                                  'timeout,
                                  'tags,
                                  'services,
                                  'retry,
                                  'interruptible,
                                  'image,
                                  'cache,
                                  'before_script,
                                  'artifacts,
                                  'after_script
                                |]
                              ]
                          )
                        ]
                      | optional,
                    variables
                      | std.contract.any_of [ Bool, Array String ]
                      | optional,
                  }
                  | optional,
                interruptible
                  | refs_."definitions.interruptible"
                  | Bool
                  | optional,
                manual_confirmation | String | optional,
                needs
                  | Array (
                    js2n.OneOf
                      [
                        String,
                        js2n.record.Record
                          {
                            additional = 'None,
                            patterns = {},
                            properties =
                              {
                                  artifacts = Bool,
                                  job = String,
                                  "optional" = Bool,
                                  parallel =
                                    refs_."definitions.parallel_matrix",
                                },
                            required = { job = true, },
                          },
                        js2n.record.Record
                          {
                            additional = 'None,
                            patterns = {},
                            properties =
                              {
                                  artifacts = Bool,
                                  job = String,
                                  parallel =
                                    refs_."definitions.parallel_matrix",
                                  pipeline = String,
                                },
                            required = { job = true, pipeline = true, },
                          },
                        js2n.record.Record
                          {
                            additional = 'None,
                            patterns = {},
                            properties =
                              {
                                  artifacts = Bool,
                                  job = String,
                                  parallel =
                                    refs_."definitions.parallel_matrix",
                                  project = String,
                                  ref = String,
                                },
                            required =
                              { job = true, project = true, ref = true, },
                          },
                        std.contract.Sequence
                          [ refs_."definitions.!reference", Array Dyn ]
                      ]
                  )
                  | doc "The list of jobs in previous stages whose sole completion is needed to start the current job."
                  | optional,
                only
                  | refs_."definitions.filter"
                  | doc "Job will run *only* when these filtering options match."
                  | optional,
                pages
                  | std.contract.any_of
                    [
                      {
                        expire_in | String | optional,
                        path_prefix | String | optional,
                        publish | String | optional,
                      },
                      Bool
                    ]
                  | optional,
                parallel | refs_."definitions.parallel" | optional,
                publish
                  | String
                  | doc "Deprecated. Use `pages.publish` instead. A path to a directory that contains the files to be published with Pages."
                  | optional,
                release
                  | {
                    assets
                      | {
                        links
                          | js2n.array.MinItems 1
                          | Array
                            {
                              filepath
                                | String
                                | doc "The redirect link to the url."
                                | optional,
                              link_type
                                | std.enum.TagOrString
                                | [| 'other, 'image, 'package, 'runbook |]
                                | doc "The content kind of what users can download via url."
                                | optional,
                              name
                                | js2n.string.MinLength 1
                                | doc "The name of the link.",
                              url
                                | js2n.string.MinLength 1
                                | doc "The URL to download a file.",
                            }
                          | doc "Include asset links in the release.",
                      }
                      | optional,
                    description
                      | js2n.string.MinLength 1
                      | doc "Specifies the longer description of the Release.",
                    milestones
                      | Array String
                      | doc "The title of each milestone the release is associated with."
                      | optional,
                    name
                      | String
                      | doc "The Release name. If omitted, it is populated with the value of release: tag_name."
                      | optional,
                    ref
                      | String
                      | doc "If the release: tag_name doesn’t exist yet, the release is created from ref. ref can be a commit SHA, another tag name, or a branch name."
                      | optional,
                    released_at
                      | js2n.string.Matches
                        "^(?:[1-9]\\d{3}-(?:(?:0[1-9]|1[0-2])-(?:0[1-9]|1\\d|2[0-8])|(?:0[13-9]|1[0-2])-(?:29|30)|(?:0[13578]|1[02])-31)|(?:[1-9]\\d(?:0[48]|[2468][048]|[13579][26])|(?:[2468][048]|[13579][26])00)-02-29)T(?:[01]\\d|2[0-3]):[0-5]\\d:[0-5]\\d(?:Z|[+-][01]\\d:[0-5]\\d)$"
                      | doc "The date and time when the release is ready. Defaults to the current date and time if not defined. Should be enclosed in quotes and expressed in ISO 8601 format."
                      | optional,
                    tag_message
                      | String
                      | doc "Message to use if creating a new annotated tag."
                      | optional,
                    tag_name
                      | js2n.string.MinLength 1
                      | doc "The tag_name must be specified. It can refer to an existing Git tag or can be specified by the user.",
                  }
                  | doc "Indicates that the job creates a Release."
                  | optional,
                resource_group
                  | String
                  | doc "Limit job concurrency. Can be used to ensure that the Runner will not run certain jobs simultaneously."
                  | optional,
                retry | refs_."definitions.retry" | optional,
                rules
                  | refs_."definitions.rules"
                  | js2n.Nullable (Array Dyn)
                  | optional,
                run | refs_."definitions.steps" | Array Dyn | optional,
                script | refs_."definitions.script" | optional,
                secrets | refs_."definitions.secrets" | { _ | Dyn } | optional,
                services | refs_."definitions.services" | Array Dyn | optional,
                stage
                  | std.contract.any_of
                    [
                      js2n.string.MinLength 1,
                      std.contract.Sequence
                        [ js2n.array.MinItems 1, Array String ]
                    ]
                  | doc "Define what stage the job will run in."
                  | optional,
                start_in | refs_."definitions.start_in" | String | optional,
                tags | refs_."definitions.tags" | Array Dyn | optional,
                timeout | refs_."definitions.timeout" | String | optional,
                trigger
                  | js2n.OneOf
                    [
                      std.contract.Sequence
                        [
                          js2n.record.DependentFields
                            { branch = [ "project" ], },
                          js2n.record.Record
                            {
                              additional = 'None,
                              patterns = {},
                              properties =
                                {
                                    branch = String,
                                    forward =
                                      js2n.record.Record
                                          {
                                            additional = 'None,
                                            patterns = {},
                                            properties =
                                              {
                                                  pipeline_variables = Bool,
                                                  yaml_variables = Bool,
                                                },
                                            required = {},
                                          },
                                    inputs =
                                      std.contract.Sequence
                                          [
                                            refs_."definitions.inputs",
                                            { _ | Dyn }
                                          ],
                                    project =
                                      js2n.string.Matches "(?:\\S/\\S|\\$\\S+)",
                                    strategy =
                                      std.contract.Sequence
                                          [
                                            std.enum.TagOrString,
                                            [| 'depend |]
                                          ],
                                  },
                              required = { project = true, },
                            }
                        ],
                      js2n.record.Record
                        {
                          additional = 'None,
                          patterns = {},
                          properties =
                            {
                                forward =
                                  js2n.record.Record
                                      {
                                        additional = 'None,
                                        patterns = {},
                                        properties =
                                          {
                                              pipeline_variables = Bool,
                                              yaml_variables = Bool,
                                            },
                                        required = {},
                                      },
                                include =
                                  std.contract.any_of
                                      [
                                        js2n.string.Matches "\\.ya?ml$",
                                        std.contract.Sequence
                                          [
                                            js2n.array.MaxItems 3,
                                            js2n.array.ArrayOf
                                              (js2n.OneOf
                                                [
                                                  js2n.record.Record
                                                    {
                                                      additional = 'None,
                                                      patterns = {},
                                                      properties =
                                                        {
                                                            inputs =
                                                              std.contract.Sequence
                                                                  [
                                                                    refs_."definitions.inputs",
                                                                    { _ | Dyn }
                                                                  ],
                                                            local =
                                                              js2n.string.Matches
                                                                  "\\.ya?ml$",
                                                          },
                                                      required =
                                                        { local = true, },
                                                    },
                                                  js2n.record.Record
                                                    {
                                                      additional = 'None,
                                                      patterns = {},
                                                      properties =
                                                        {
                                                            inputs =
                                                              std.contract.Sequence
                                                                  [
                                                                    refs_."definitions.inputs",
                                                                    { _ | Dyn }
                                                                  ],
                                                            template =
                                                              js2n.string.Matches
                                                                  "\\.ya?ml$",
                                                          },
                                                      required =
                                                        { template = true, },
                                                    },
                                                  js2n.record.Record
                                                    {
                                                      additional = 'None,
                                                      patterns = {},
                                                      properties =
                                                        {
                                                            artifact =
                                                              js2n.string.Matches
                                                                  "\\.ya?ml$",
                                                            inputs =
                                                              std.contract.Sequence
                                                                  [
                                                                    refs_."definitions.inputs",
                                                                    { _ | Dyn }
                                                                  ],
                                                            job = String,
                                                          },
                                                      required =
                                                        {
                                                            artifact = true,
                                                            job = true,
                                                          },
                                                    },
                                                  js2n.record.Record
                                                    {
                                                      additional = 'None,
                                                      patterns = {},
                                                      properties =
                                                        {
                                                            file =
                                                              js2n.string.Matches
                                                                  "\\.ya?ml$",
                                                            inputs =
                                                              std.contract.Sequence
                                                                  [
                                                                    refs_."definitions.inputs",
                                                                    { _ | Dyn }
                                                                  ],
                                                            project =
                                                              js2n.string.Matches
                                                                  "(?:\\S/\\S|\\$\\S+)",
                                                            ref =
                                                              js2n.string.MinLength
                                                                  1,
                                                          },
                                                      required =
                                                        {
                                                            file = true,
                                                            project = true,
                                                          },
                                                    },
                                                  js2n.record.Record
                                                    {
                                                      additional = 'None,
                                                      patterns = {},
                                                      properties =
                                                        {
                                                            component = String,
                                                            inputs =
                                                              std.contract.Sequence
                                                                  [
                                                                    refs_."definitions.inputs",
                                                                    { _ | Dyn }
                                                                  ],
                                                          },
                                                      required =
                                                        { component = true, },
                                                    },
                                                  js2n.record.Record
                                                    {
                                                      additional = 'None,
                                                      patterns = {},
                                                      properties =
                                                        {
                                                            inputs =
                                                              std.contract.Sequence
                                                                  [
                                                                    refs_."definitions.inputs",
                                                                    { _ | Dyn }
                                                                  ],
                                                            remote =
                                                              js2n.string.Matches
                                                                  "^https?://.+\\.ya?ml$",
                                                          },
                                                      required =
                                                        { remote = true, },
                                                    }
                                                ])
                                          ]
                                      ],
                                strategy =
                                  std.contract.Sequence
                                      [ std.enum.TagOrString, [| 'depend |] ],
                              },
                          required = {},
                        },
                      js2n.string.Matches "(?:\\S/\\S|\\$\\S+)"
                    ]
                  | optional,
                variables
                  | refs_."definitions.jobVariables"
                  | { _ | Dyn }
                  | optional,
                when | refs_."definitions.when" | String | optional,
              }
            ],
      "definitions.optional_script" =
        std.contract.any_of
            [ String, Array (std.contract.any_of [ String, Array String ]) ],
      "definitions.parallel" =
        std.contract.any_of
            [
              std.contract.Sequence
                [
                  std.number.Integer,
                  js2n.number.Maximum 200,
                  js2n.number.Minimum 1
                ],
              {
                matrix
                  | js2n.array.MaxItems 200
                  | Array (
                    { _ | std.contract.any_of [ Number, String, Array Dyn ] }
                  )
                  | doc "Defines different variables for jobs that are running in parallel.",
              }
            ],
      "definitions.parallel_matrix" =
        {
            matrix
              | js2n.array.MaxItems 200
              | Array (
                { _ | std.contract.any_of [ Number, String, Array Dyn ] }
              )
              | doc "Defines different variables for jobs that are running in parallel.",
          },
      "definitions.retry" =
        std.contract.any_of
            [
              std.contract.Sequence [ refs_."definitions.retry_max", Number ],
              {
                exit_codes
                  | std.contract.any_of
                    [
                      std.contract.Sequence
                        [
                          js2n.array.MinItems 1,
                          js2n.array.UniqueItems,
                          Array std.number.Integer
                        ],
                      std.number.Integer
                    ]
                  | optional,
                max | refs_."definitions.retry_max" | Number | optional,
                when
                  | js2n.OneOf
                    [
                      refs_."definitions.retry_errors",
                      js2n.array.ArrayOf refs_."definitions.retry_errors"
                    ]
                  | optional,
              }
            ],
      "definitions.retry_errors" =
        js2n.OneOf
            [
              js2n.Const "always",
              js2n.Const "unknown_failure",
              js2n.Const "script_failure",
              js2n.Const "api_failure",
              js2n.Const "stuck_or_timeout_failure",
              js2n.Const "runner_system_failure",
              js2n.Const "runner_unsupported",
              js2n.Const "stale_schedule",
              js2n.Const "job_execution_timeout",
              js2n.Const "archived_failure",
              js2n.Const "unmet_prerequisites",
              js2n.Const "scheduler_failure",
              js2n.Const "data_integrity_failure"
            ],
      "definitions.retry_max" =
        std.contract.Sequence
            [
              std.number.Integer,
              js2n.number.Maximum 2,
              js2n.number.Minimum 0
            ],
      "definitions.rules" =
        js2n.Nullable
            (Array (
              std.contract.any_of
                [
                  {
                    allow_failure
                      | refs_."definitions.allow_failure"
                      | optional,
                    changes
                      | refs_."definitions.changes"
                      | std.contract.any_of [ { _ | Dyn }, Array Dyn ]
                      | optional,
                    exists
                      | refs_."definitions.exists"
                      | std.contract.any_of [ { _ | Dyn }, Array Dyn ]
                      | optional,
                    "if" | refs_."definitions.if" | String | optional,
                    interruptible
                      | refs_."definitions.interruptible"
                      | Bool
                      | optional,
                    needs
                      | refs_."definitions.rulesNeeds"
                      | Array Dyn
                      | optional,
                    start_in | refs_."definitions.start_in" | String | optional,
                    variables
                      | refs_."definitions.rulesVariables"
                      | { _ | Dyn }
                      | optional,
                    when | refs_."definitions.when" | String | optional,
                  },
                  js2n.string.MinLength 1,
                  std.contract.Sequence [ js2n.array.MinItems 1, Array String ]
                ]
            )),
      "definitions.rulesNeeds" =
        Array (
            std.contract.any_of
              [
                String,
                {
                  artifacts
                    | Bool
                    | doc "Download artifacts of the job in needs."
                    | optional,
                  job
                    | js2n.string.MinLength 1
                    | doc "Name of a job that is defined in the pipeline.",
                  "optional"
                    | Bool
                    | doc "Whether the job needs to be present in the pipeline to run ahead of the current job."
                    | optional,
                }
              ]
          ),
      "definitions.rulesVariables" =
        js2n.record.Record
            {
              additional = 'Some Dyn,
              patterns =
                { ".*" = std.contract.any_of [ Bool, Number, String ], },
              properties = {},
              required = {},
            },
      "definitions.script" =
        std.contract.any_of
            [
              js2n.string.MinLength 1,
              std.contract.Sequence
                [
                  js2n.array.MinItems 1,
                  Array (std.contract.any_of [ String, Array String ])
                ]
            ],
      "definitions.secrets" =
        js2n.record.Record
            {
              additional = 'Some Dyn,
              patterns =
                {
                    ".*" =
                      std.contract.Sequence
                          [
                            js2n.record.DependentFields
                              { gcp_secret_manager = [ "token" ], },
                            std.contract.any_of
                              [
                                js2n.record.Required [ "vault" ],
                                js2n.record.Required [ "azure_key_vault" ],
                                js2n.record.Required [ "gcp_secret_manager" ],
                                js2n.record.Required [ "akeyless" ]
                              ],
                            {
                              akeyless
                                | {
                                  cert_user_name | String | optional,
                                  csr_data | String | optional,
                                  data_key | String | optional,
                                  name | String | optional,
                                  public_key_data | String | optional,
                                }
                                | optional,
                              azure_key_vault
                                | {
                                  name | String,
                                  version | String | optional,
                                }
                                | optional,
                              file | Bool | optional,
                              gcp_secret_manager
                                | {
                                  name | String,
                                  version
                                    | std.contract.any_of
                                      [ String, std.number.Integer ]
                                    | optional,
                                }
                                | optional,
                              token
                                | String
                                | doc "Specifies the JWT variable that should be used to authenticate with the secret provider."
                                | optional,
                              vault
                                | std.contract.any_of
                                  [
                                    String,
                                    {
                                      engine
                                        | { name | String, path | String, .. },
                                      field | String,
                                      path | String,
                                    }
                                  ]
                                | optional,
                            }
                          ],
                  },
              properties = {},
              required = {},
            },
      "definitions.services" =
        Array (
            std.contract.any_of
              [
                js2n.string.MinLength 1,
                {
                  alias | js2n.string.MinLength 1 | optional,
                  command | js2n.array.MinItems 1 | Array String | optional,
                  docker
                    | {
                      platform
                        | js2n.string.MinLength 1
                        | doc "Image architecture to pull."
                        | optional,
                      user
                        | js2n.string.MaxLength 255
                        | js2n.string.MinLength 1
                        | doc "Username or UID to use for the container."
                        | optional,
                    }
                    | optional,
                  entrypoint | js2n.array.MinItems 1 | Array String | optional,
                  kubernetes
                    | {
                      user
                        | std.contract.any_of
                          [
                            std.number.Integer,
                            std.contract.Sequence
                              [
                                js2n.string.MaxLength 255,
                                js2n.string.MinLength 1
                              ]
                          ]
                        | doc "Username or UID to use for the container. It also supports the UID:GID format."
                        | optional,
                    }
                    | optional,
                  name
                    | js2n.string.MinLength 1
                    | doc "Full name of the image that should be used. It should contain the Registry part if needed.",
                  pull_policy
                    | std.contract.any_of
                      [
                        std.contract.Sequence
                          [
                            std.enum.TagOrString,
                            [| 'if-not-present, 'never, 'always |]
                          ],
                        std.contract.Sequence
                          [
                            js2n.array.MinItems 1,
                            js2n.array.UniqueItems,
                            Array (
                              std.contract.Sequence
                                [
                                  std.enum.TagOrString,
                                  [| 'if-not-present, 'never, 'always |]
                                ]
                            )
                          ]
                      ]
                    | optional,
                  variables
                    | refs_."definitions.jobVariables"
                    | { _ | Dyn }
                    | optional,
                }
              ]
          ),
      "definitions.start_in" = js2n.string.MinLength 1,
      "definitions.step" =
        js2n.OneOf
            [
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        env =
                          std.contract.Sequence
                              [
                                refs_."definitions.stepNamedStrings",
                                { _ | Dyn }
                              ],
                        inputs =
                          std.contract.Sequence
                              [
                                refs_."definitions.stepNamedValues",
                                { _ | Dyn }
                              ],
                        name =
                          std.contract.Sequence
                              [ refs_."definitions.stepName", String ],
                        step =
                          js2n.OneOf
                              [
                                String,
                                std.contract.Sequence
                                  [
                                    refs_."definitions.stepGitReference",
                                    { _ | Dyn }
                                  ],
                                std.contract.Sequence
                                  [
                                    refs_."definitions.stepOciReference",
                                    { _ | Dyn }
                                  ]
                              ],
                      },
                  required = { name = true, step = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        delegate = String,
                        env =
                          std.contract.Sequence
                              [
                                refs_."definitions.stepNamedStrings",
                                { _ | Dyn }
                              ],
                        outputs =
                          std.contract.Sequence
                              [
                                refs_."definitions.stepNamedValues",
                                { _ | Dyn }
                              ],
                        run = js2n.array.ArrayOf js2n.Always,
                      },
                  required = { run = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        action = js2n.string.MinLength 1,
                        env =
                          std.contract.Sequence
                              [
                                refs_."definitions.stepNamedStrings",
                                { _ | Dyn }
                              ],
                        inputs =
                          std.contract.Sequence
                              [
                                refs_."definitions.stepNamedValues",
                                { _ | Dyn }
                              ],
                        name =
                          std.contract.Sequence
                              [ refs_."definitions.stepName", String ],
                      },
                  required = { action = true, name = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        env =
                          std.contract.Sequence
                              [
                                refs_."definitions.stepNamedStrings",
                                { _ | Dyn }
                              ],
                        name =
                          std.contract.Sequence
                              [ refs_."definitions.stepName", String ],
                        script = js2n.string.MinLength 1,
                      },
                  required = { name = true, script = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        env =
                          std.contract.Sequence
                              [
                                refs_."definitions.stepNamedStrings",
                                { _ | Dyn }
                              ],
                        exec =
                          std.contract.Sequence
                              [ refs_."definitions.stepExec", { _ | Dyn } ],
                      },
                  required = { exec = true, },
                }
            ],
      "definitions.stepExec" =
        {
            command
              | js2n.array.MinItems 1
              | Array String
              | doc "Command are the parameters to the system exec API. It does not invoke a shell.",
            work_dir
              | String
              | doc "WorkDir is the working directly in which `command` will be exec'ed."
              | optional,
          },
      "definitions.stepGitReference" =
        {
            git
              | {
                dir | String | optional,
                file | String | optional,
                rev | String,
                url | String,
              },
          },
      "definitions.stepName" = js2n.string.Matches "^[a-zA-Z_][a-zA-Z0-9_]*$",
      "definitions.stepNamedStrings" =
        std.contract.Sequence
            [
              { _ | String },
              js2n.record.FieldsMatch "^[a-zA-Z_][a-zA-Z0-9_]*$"
            ],
      "definitions.stepNamedValues" =
        std.contract.Sequence
            [
              {
                _ | std.contract.any_of
                  [ js2n.Null, Bool, Number, String, { _ | Dyn }, Array Dyn ]
              },
              js2n.record.FieldsMatch "^[a-zA-Z_][a-zA-Z0-9_]*$"
            ],
      "definitions.stepOciReference" =
        {
            oci
              | {
                dir
                  | String
                  | doc "A directory inside the OCI image where the step can be found."
                  | optional,
                file
                  | String
                  | doc "The name of the file that defines the step, defaults to step.yml."
                  | optional,
                registry
                  | String
                  | doc "The <host>[:<port>] of the container registry server.",
                repository
                  | String
                  | doc "A path within the registry containing related OCI images. Typically the namespace, project, and image name.",
                tag
                  | String
                  | doc "A pointer to the image manifest hosted in the OCI repository.",
              },
          },
      "definitions.steps" = Array refs_."definitions.step",
      "definitions.string_file_list" =
        std.contract.any_of [ String, Array String ],
      "definitions.tags" =
        std.contract.Sequence
            [
              js2n.array.MinItems 1,
              Array (
                std.contract.any_of
                  [
                    js2n.string.MinLength 1,
                    std.contract.Sequence
                      [ js2n.array.MinItems 1, Array String ]
                  ]
              )
            ],
      "definitions.timeout" = js2n.string.MinLength 1,
      "definitions.when" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [| 'delayed, 'manual, 'never, 'always, 'on_failure, 'on_success |]
            ],
      "definitions.workflowAutoCancel" =
        {
            on_job_failure
              | std.enum.TagOrString
              | [| 'all, 'none |]
              | optional,
            on_new_commit
              | std.enum.TagOrString
              | [| 'none, 'interruptible, 'conservative |]
              | optional,
          },
      "definitions.workflowName" =
        std.contract.Sequence
            [ js2n.string.MaxLength 255, js2n.string.MinLength 1 ],
    }
    in
  js2n.record.Record
      {
        additional =
          'Some
              (std.contract.Sequence [ refs_."definitions.job", { _ | Dyn } ]),
        patterns =
          {
              "^[.]" =
                std.contract.any_of
                    [
                      std.contract.Sequence
                        [ refs_."definitions.job_template", { _ | Dyn } ],
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      { _ | Dyn },
                      Array Dyn
                    ],
            },
        properties =
          {
              "!reference" = refs_."definitions.!reference",
              "$schema" = String,
              after_script = refs_."definitions.after_script",
              before_script = refs_."definitions.before_script",
              cache = refs_."definitions.cache",
              "default" =
                {
                    "!reference" | refs_."definitions.!reference" | optional,
                    after_script | refs_."definitions.after_script" | optional,
                    artifacts | refs_."definitions.artifacts" | optional,
                    before_script
                      | refs_."definitions.before_script"
                      | optional,
                    cache | refs_."definitions.cache" | optional,
                    hooks | refs_."definitions.hooks" | optional,
                    id_tokens | refs_."definitions.id_tokens" | optional,
                    identity | refs_."definitions.identity" | optional,
                    image | refs_."definitions.image" | optional,
                    interruptible
                      | refs_."definitions.interruptible"
                      | optional,
                    retry | refs_."definitions.retry" | optional,
                    services | refs_."definitions.services" | optional,
                    tags | refs_."definitions.tags" | Array Dyn | optional,
                    timeout | refs_."definitions.timeout" | optional,
                  },
              image = refs_."definitions.image",
              include =
                js2n.OneOf
                    [
                      refs_."definitions.include_item",
                      js2n.array.ArrayOf refs_."definitions.include_item"
                    ],
              pages =
                std.contract.Sequence [ refs_."definitions.job", { _ | Dyn } ],
              services = refs_."definitions.services",
              spec =
                { inputs | refs_."definitions.inputParameters" | optional, },
              stages =
                std.contract.Sequence
                    [
                      js2n.array.MinItems 1,
                      js2n.array.UniqueItems,
                      Array (std.contract.any_of [ String, Array String ])
                    ],
              variables = refs_."definitions.globalVariables",
              workflow =
                {
                    auto_cancel
                      | refs_."definitions.workflowAutoCancel"
                      | optional,
                    name | refs_."definitions.workflowName" | String | optional,
                    rules
                      | Array (
                        std.contract.Sequence
                          [
                            std.contract.any_of
                              [
                                {
                                  auto_cancel
                                    | refs_."definitions.workflowAutoCancel"
                                    | optional,
                                  changes
                                    | refs_."definitions.changes"
                                    | optional,
                                  exists
                                    | refs_."definitions.exists"
                                    | optional,
                                  "if" | refs_."definitions.if" | optional,
                                  variables
                                    | refs_."definitions.rulesVariables"
                                    | optional,
                                  when
                                    | std.enum.TagOrString
                                    | [| 'never, 'always |]
                                    | optional,
                                },
                                Array Dyn
                              ],
                            std.contract.any_of
                              [
                                { _ | Dyn },
                                std.contract.Sequence
                                  [ js2n.array.MinItems 1, Array String ]
                              ]
                          ]
                      )
                      | optional,
                    ..
                  },
            },
        required = {},
      }