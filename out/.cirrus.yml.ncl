# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  js2n.record.Record
      {
        additional = 'Some Dyn,
        patterns =
          {
              "^(.*)docker_builder$" =
                js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns =
                        {
                            "^(.*)artifacts$" =
                              {
                                  format
                                    | String
                                    | doc "Content Format."
                                    | optional,
                                  name | String | optional,
                                  path
                                    | String
                                    | doc "Path or pattern of artifacts."
                                    | optional,
                                  paths
                                    | js2n.array.Items [ String ] js2n.Always
                                    | optional,
                                  type
                                    | String
                                    | doc "Content Type."
                                    | optional,
                                  ..
                                },
                            "^(.*)background_script$" =
                              std.contract.any_of
                                  [
                                    String,
                                    js2n.array.Items [ String ] js2n.Always
                                  ],
                            "^(.*)cache$" =
                              {
                                  fingerprint_script
                                    | std.contract.any_of
                                      [
                                        String,
                                        js2n.array.Items [ String ] js2n.Always
                                      ]
                                    | doc "Script that is used to calculate cache key."
                                    | optional,
                                  folder
                                    | String
                                    | doc "Path of a folder to cache.",
                                  name | String | optional,
                                  populate_script
                                    | std.contract.any_of
                                      [
                                        String,
                                        js2n.array.Items [ String ] js2n.Always
                                      ]
                                    | doc "In case of a cache miss this script will be executed."
                                    | optional,
                                  reupload_on_changes
                                    | String
                                    | doc "Boolean expression. A flag to check if contents of folder has changed after a cache hit."
                                    | optional,
                                  ..
                                },
                            "^(.*)file$" =
                              {
                                  name | String | optional,
                                  path | String | doc "Destination path.",
                                  variable_name
                                    | String
                                    | doc "Environment variable name.",
                                  ..
                                },
                            "^(.*)script$" =
                              std.contract.any_of
                                  [
                                    String,
                                    js2n.array.Items [ String ] js2n.Always
                                  ],
                          },
                      properties =
                        {
                            alias = String,
                            allow_failures = String,
                            always =
                              js2n.record.Record
                                  {
                                    additional = 'Some Dyn,
                                    patterns =
                                      {
                                          "^(.*)artifacts$" =
                                            {
                                                format
                                                  | String
                                                  | doc "Content Format."
                                                  | optional,
                                                name | String | optional,
                                                path
                                                  | String
                                                  | doc "Path or pattern of artifacts."
                                                  | optional,
                                                paths
                                                  | js2n.array.Items [ String ]
                                                    js2n.Always
                                                  | optional,
                                                type
                                                  | String
                                                  | doc "Content Type."
                                                  | optional,
                                                ..
                                              },
                                          "^(.*)background_script$" =
                                            std.contract.any_of
                                                [
                                                  String,
                                                  js2n.array.Items [ String ]
                                                    js2n.Always
                                                ],
                                          "^(.*)cache$" =
                                            {
                                                fingerprint_script
                                                  | std.contract.any_of
                                                    [
                                                      String,
                                                      js2n.array.Items
                                                        [ String ] js2n.Always
                                                    ]
                                                  | doc "Script that is used to calculate cache key."
                                                  | optional,
                                                folder
                                                  | String
                                                  | doc "Path of a folder to cache.",
                                                name | String | optional,
                                                populate_script
                                                  | std.contract.any_of
                                                    [
                                                      String,
                                                      js2n.array.Items
                                                        [ String ] js2n.Always
                                                    ]
                                                  | doc "In case of a cache miss this script will be executed."
                                                  | optional,
                                                reupload_on_changes
                                                  | String
                                                  | doc "Boolean expression. A flag to check if contents of folder has changed after a cache hit."
                                                  | optional,
                                                ..
                                              },
                                          "^(.*)file$" =
                                            {
                                                name | String | optional,
                                                path
                                                  | String
                                                  | doc "Destination path.",
                                                variable_name
                                                  | String
                                                  | doc "Environment variable name.",
                                                ..
                                              },
                                          "^(.*)script$" =
                                            std.contract.any_of
                                                [
                                                  String,
                                                  js2n.array.Items [ String ]
                                                    js2n.Always
                                                ],
                                        },
                                    properties = {},
                                    required = {},
                                  },
                            auto_cancellation = String,
                            depends_on =
                              std.contract.any_of
                                  [
                                    String,
                                    js2n.array.Items [ String ] js2n.Always
                                  ],
                            env =
                              js2n.record.Record
                                  {
                                    additional = 'Some Dyn,
                                    patterns = { ".*" = String, },
                                    properties = {},
                                    required = {},
                                  },
                            environment =
                              js2n.record.Record
                                  {
                                    additional = 'Some Dyn,
                                    patterns = { ".*" = String, },
                                    properties = {},
                                    required = {},
                                  },
                            execution_lock = String,
                            experimental = String,
                            name = String,
                            on_failure =
                              js2n.record.Record
                                  {
                                    additional = 'Some Dyn,
                                    patterns =
                                      {
                                          "^(.*)artifacts$" =
                                            {
                                                format
                                                  | String
                                                  | doc "Content Format."
                                                  | optional,
                                                name | String | optional,
                                                path
                                                  | String
                                                  | doc "Path or pattern of artifacts."
                                                  | optional,
                                                paths
                                                  | js2n.array.Items [ String ]
                                                    js2n.Always
                                                  | optional,
                                                type
                                                  | String
                                                  | doc "Content Type."
                                                  | optional,
                                                ..
                                              },
                                          "^(.*)background_script$" =
                                            std.contract.any_of
                                                [
                                                  String,
                                                  js2n.array.Items [ String ]
                                                    js2n.Always
                                                ],
                                          "^(.*)cache$" =
                                            {
                                                fingerprint_script
                                                  | std.contract.any_of
                                                    [
                                                      String,
                                                      js2n.array.Items
                                                        [ String ] js2n.Always
                                                    ]
                                                  | doc "Script that is used to calculate cache key."
                                                  | optional,
                                                folder
                                                  | String
                                                  | doc "Path of a folder to cache.",
                                                name | String | optional,
                                                populate_script
                                                  | std.contract.any_of
                                                    [
                                                      String,
                                                      js2n.array.Items
                                                        [ String ] js2n.Always
                                                    ]
                                                  | doc "In case of a cache miss this script will be executed."
                                                  | optional,
                                                reupload_on_changes
                                                  | String
                                                  | doc "Boolean expression. A flag to check if contents of folder has changed after a cache hit."
                                                  | optional,
                                                ..
                                              },
                                          "^(.*)file$" =
                                            {
                                                name | String | optional,
                                                path
                                                  | String
                                                  | doc "Destination path.",
                                                variable_name
                                                  | String
                                                  | doc "Environment variable name.",
                                                ..
                                              },
                                          "^(.*)script$" =
                                            std.contract.any_of
                                                [
                                                  String,
                                                  js2n.array.Items [ String ]
                                                    js2n.Always
                                                ],
                                        },
                                    properties = {},
                                    required = {},
                                  },
                            on_success =
                              js2n.record.Record
                                  {
                                    additional = 'Some Dyn,
                                    patterns =
                                      {
                                          "^(.*)artifacts$" =
                                            {
                                                format
                                                  | String
                                                  | doc "Content Format."
                                                  | optional,
                                                name | String | optional,
                                                path
                                                  | String
                                                  | doc "Path or pattern of artifacts."
                                                  | optional,
                                                paths
                                                  | js2n.array.Items [ String ]
                                                    js2n.Always
                                                  | optional,
                                                type
                                                  | String
                                                  | doc "Content Type."
                                                  | optional,
                                                ..
                                              },
                                          "^(.*)background_script$" =
                                            std.contract.any_of
                                                [
                                                  String,
                                                  js2n.array.Items [ String ]
                                                    js2n.Always
                                                ],
                                          "^(.*)cache$" =
                                            {
                                                fingerprint_script
                                                  | std.contract.any_of
                                                    [
                                                      String,
                                                      js2n.array.Items
                                                        [ String ] js2n.Always
                                                    ]
                                                  | doc "Script that is used to calculate cache key."
                                                  | optional,
                                                folder
                                                  | String
                                                  | doc "Path of a folder to cache.",
                                                name | String | optional,
                                                populate_script
                                                  | std.contract.any_of
                                                    [
                                                      String,
                                                      js2n.array.Items
                                                        [ String ] js2n.Always
                                                    ]
                                                  | doc "In case of a cache miss this script will be executed."
                                                  | optional,
                                                reupload_on_changes
                                                  | String
                                                  | doc "Boolean expression. A flag to check if contents of folder has changed after a cache hit."
                                                  | optional,
                                                ..
                                              },
                                          "^(.*)file$" =
                                            {
                                                name | String | optional,
                                                path
                                                  | String
                                                  | doc "Destination path.",
                                                variable_name
                                                  | String
                                                  | doc "Environment variable name.",
                                                ..
                                              },
                                          "^(.*)script$" =
                                            std.contract.any_of
                                                [
                                                  String,
                                                  js2n.array.Items [ String ]
                                                    js2n.Always
                                                ],
                                        },
                                    properties = {},
                                    required = {},
                                  },
                            only_if = String,
                            os_version =
                              std.contract.Sequence
                                  [
                                    std.enum.TagOrString,
                                    [| '"1803", '"1709", '"2019" |]
                                  ],
                            platform =
                              std.contract.Sequence
                                  [
                                    std.enum.TagOrString,
                                    [| 'windows, 'linux |]
                                  ],
                            required_pr_labels =
                              std.contract.any_of
                                  [
                                    String,
                                    js2n.array.Items [ String ] js2n.Always
                                  ],
                            skip = String,
                            skip_notifications = String,
                            stateful = String,
                            timeout_in = String,
                            trigger_type =
                              std.contract.Sequence
                                  [
                                    std.enum.TagOrString,
                                    [| 'manual, 'automatic |]
                                  ],
                            use_compute_credits = String,
                            use_static_ip = String,
                          },
                      required = {},
                    },
              "^(.*)gke_pipe$" =
                {
                    alias | String | optional,
                    allow_failures
                      | String
                      | doc "Boolean expression that can use environment variables."
                      | optional,
                    auto_cancellation
                      | String
                      | doc "Boolean expression that can use environment variables."
                      | optional,
                    cluster_name | String | doc "GKE cluster name." | optional,
                    depends_on
                      | std.contract.any_of
                        [ String, js2n.array.Items [ String ] js2n.Always ]
                      | doc "List of task names this task depends on."
                      | optional,
                    env
                      | js2n.record.Record
                        {
                          additional = 'Some Dyn,
                          patterns = { ".*" = String, },
                          properties = {},
                          required = {},
                        }
                      | doc "Map represented as an object."
                      | optional,
                    environment
                      | js2n.record.Record
                        {
                          additional = 'Some Dyn,
                          patterns = { ".*" = String, },
                          properties = {},
                          required = {},
                        }
                      | doc "Map represented as an object."
                      | optional,
                    execution_lock
                      | String
                      | doc "Lock name for triggering and execution"
                      | optional,
                    experimental
                      | String
                      | doc "Boolean expression that can use environment variables."
                      | optional,
                    gcp_credentials
                      | js2n.string.Matches "^ENCRYPTED\\[!?[0-9a-z]*!?\\]$"
                      | optional,
                    name | String | optional,
                    namespace
                      | String
                      | doc "Kubernetes namespace to schedule CI jobs in."
                      | optional,
                    only_if
                      | String
                      | doc "Boolean expression that can use environment variables."
                      | optional,
                    required_pr_labels
                      | std.contract.any_of
                        [ String, js2n.array.Items [ String ] js2n.Always ]
                      | doc "List of required labels on a PR."
                      | optional,
                    resources
                      | {
                        cpu | Number | optional,
                        memory | js2n.string.Matches "\\d+(G|Mb)?" | optional,
                        ..
                      }
                      | doc "Pipe resources"
                      | optional,
                    skip_notifications
                      | String
                      | doc "Boolean expression that can use environment variables."
                      | optional,
                    stateful
                      | String
                      | doc "Boolean expression that can use environment variables."
                      | optional,
                    steps
                      | js2n.array.Items
                        [
                          js2n.record.Record
                            {
                              additional = 'Some Dyn,
                              patterns =
                                {
                                    "^(.*)artifacts$" =
                                      {
                                          format
                                            | String
                                            | doc "Content Format."
                                            | optional,
                                          name | String | optional,
                                          path
                                            | String
                                            | doc "Path or pattern of artifacts."
                                            | optional,
                                          paths
                                            | js2n.array.Items [ String ]
                                              js2n.Always
                                            | optional,
                                          type
                                            | String
                                            | doc "Content Type."
                                            | optional,
                                          ..
                                        },
                                    "^(.*)cache$" =
                                      {
                                          fingerprint_script
                                            | std.contract.any_of
                                              [
                                                String,
                                                js2n.array.Items [ String ]
                                                  js2n.Always
                                              ]
                                            | doc "Script that is used to calculate cache key."
                                            | optional,
                                          folder
                                            | String
                                            | doc "Path of a folder to cache.",
                                          name | String | optional,
                                          populate_script
                                            | std.contract.any_of
                                              [
                                                String,
                                                js2n.array.Items [ String ]
                                                  js2n.Always
                                              ]
                                            | doc "In case of a cache miss this script will be executed."
                                            | optional,
                                          reupload_on_changes
                                            | String
                                            | doc "Boolean expression. A flag to check if contents of folder has changed after a cache hit."
                                            | optional,
                                          ..
                                        },
                                    "^(.*)file$" =
                                      {
                                          name | String | optional,
                                          path
                                            | String
                                            | doc "Destination path.",
                                          variable_name
                                            | String
                                            | doc "Environment variable name.",
                                          ..
                                        },
                                    "^(.*)script$" =
                                      std.contract.any_of
                                          [
                                            String,
                                            js2n.array.Items [ String ]
                                              js2n.Always
                                          ],
                                  },
                              properties =
                                {
                                    always =
                                      js2n.record.Record
                                          {
                                            additional = 'Some Dyn,
                                            patterns =
                                              {
                                                  "^(.*)artifacts$" =
                                                    {
                                                        format
                                                          | String
                                                          | doc "Content Format."
                                                          | optional,
                                                        name
                                                          | String
                                                          | optional,
                                                        path
                                                          | String
                                                          | doc "Path or pattern of artifacts."
                                                          | optional,
                                                        paths
                                                          | js2n.array.Items
                                                            [ String ]
                                                            js2n.Always
                                                          | optional,
                                                        type
                                                          | String
                                                          | doc "Content Type."
                                                          | optional,
                                                        ..
                                                      },
                                                  "^(.*)background_script$" =
                                                    std.contract.any_of
                                                        [
                                                          String,
                                                          js2n.array.Items
                                                            [ String ]
                                                            js2n.Always
                                                        ],
                                                  "^(.*)cache$" =
                                                    {
                                                        fingerprint_script
                                                          | std.contract.any_of
                                                            [
                                                              String,
                                                              js2n.array.Items
                                                                [ String ]
                                                                js2n.Always
                                                            ]
                                                          | doc "Script that is used to calculate cache key."
                                                          | optional,
                                                        folder
                                                          | String
                                                          | doc "Path of a folder to cache.",
                                                        name
                                                          | String
                                                          | optional,
                                                        populate_script
                                                          | std.contract.any_of
                                                            [
                                                              String,
                                                              js2n.array.Items
                                                                [ String ]
                                                                js2n.Always
                                                            ]
                                                          | doc "In case of a cache miss this script will be executed."
                                                          | optional,
                                                        reupload_on_changes
                                                          | String
                                                          | doc "Boolean expression. A flag to check if contents of folder has changed after a cache hit."
                                                          | optional,
                                                        ..
                                                      },
                                                  "^(.*)file$" =
                                                    {
                                                        name
                                                          | String
                                                          | optional,
                                                        path
                                                          | String
                                                          | doc "Destination path.",
                                                        variable_name
                                                          | String
                                                          | doc "Environment variable name.",
                                                        ..
                                                      },
                                                  "^(.*)script$" =
                                                    std.contract.any_of
                                                        [
                                                          String,
                                                          js2n.array.Items
                                                            [ String ]
                                                            js2n.Always
                                                        ],
                                                },
                                            properties = {},
                                            required = {},
                                          },
                                    image = String,
                                    on_failure =
                                      js2n.record.Record
                                          {
                                            additional = 'Some Dyn,
                                            patterns =
                                              {
                                                  "^(.*)artifacts$" =
                                                    {
                                                        format
                                                          | String
                                                          | doc "Content Format."
                                                          | optional,
                                                        name
                                                          | String
                                                          | optional,
                                                        path
                                                          | String
                                                          | doc "Path or pattern of artifacts."
                                                          | optional,
                                                        paths
                                                          | js2n.array.Items
                                                            [ String ]
                                                            js2n.Always
                                                          | optional,
                                                        type
                                                          | String
                                                          | doc "Content Type."
                                                          | optional,
                                                        ..
                                                      },
                                                  "^(.*)background_script$" =
                                                    std.contract.any_of
                                                        [
                                                          String,
                                                          js2n.array.Items
                                                            [ String ]
                                                            js2n.Always
                                                        ],
                                                  "^(.*)cache$" =
                                                    {
                                                        fingerprint_script
                                                          | std.contract.any_of
                                                            [
                                                              String,
                                                              js2n.array.Items
                                                                [ String ]
                                                                js2n.Always
                                                            ]
                                                          | doc "Script that is used to calculate cache key."
                                                          | optional,
                                                        folder
                                                          | String
                                                          | doc "Path of a folder to cache.",
                                                        name
                                                          | String
                                                          | optional,
                                                        populate_script
                                                          | std.contract.any_of
                                                            [
                                                              String,
                                                              js2n.array.Items
                                                                [ String ]
                                                                js2n.Always
                                                            ]
                                                          | doc "In case of a cache miss this script will be executed."
                                                          | optional,
                                                        reupload_on_changes
                                                          | String
                                                          | doc "Boolean expression. A flag to check if contents of folder has changed after a cache hit."
                                                          | optional,
                                                        ..
                                                      },
                                                  "^(.*)file$" =
                                                    {
                                                        name
                                                          | String
                                                          | optional,
                                                        path
                                                          | String
                                                          | doc "Destination path.",
                                                        variable_name
                                                          | String
                                                          | doc "Environment variable name.",
                                                        ..
                                                      },
                                                  "^(.*)script$" =
                                                    std.contract.any_of
                                                        [
                                                          String,
                                                          js2n.array.Items
                                                            [ String ]
                                                            js2n.Always
                                                        ],
                                                },
                                            properties = {},
                                            required = {},
                                          },
                                    on_success =
                                      js2n.record.Record
                                          {
                                            additional = 'Some Dyn,
                                            patterns =
                                              {
                                                  "^(.*)artifacts$" =
                                                    {
                                                        format
                                                          | String
                                                          | doc "Content Format."
                                                          | optional,
                                                        name
                                                          | String
                                                          | optional,
                                                        path
                                                          | String
                                                          | doc "Path or pattern of artifacts."
                                                          | optional,
                                                        paths
                                                          | js2n.array.Items
                                                            [ String ]
                                                            js2n.Always
                                                          | optional,
                                                        type
                                                          | String
                                                          | doc "Content Type."
                                                          | optional,
                                                        ..
                                                      },
                                                  "^(.*)background_script$" =
                                                    std.contract.any_of
                                                        [
                                                          String,
                                                          js2n.array.Items
                                                            [ String ]
                                                            js2n.Always
                                                        ],
                                                  "^(.*)cache$" =
                                                    {
                                                        fingerprint_script
                                                          | std.contract.any_of
                                                            [
                                                              String,
                                                              js2n.array.Items
                                                                [ String ]
                                                                js2n.Always
                                                            ]
                                                          | doc "Script that is used to calculate cache key."
                                                          | optional,
                                                        folder
                                                          | String
                                                          | doc "Path of a folder to cache.",
                                                        name
                                                          | String
                                                          | optional,
                                                        populate_script
                                                          | std.contract.any_of
                                                            [
                                                              String,
                                                              js2n.array.Items
                                                                [ String ]
                                                                js2n.Always
                                                            ]
                                                          | doc "In case of a cache miss this script will be executed."
                                                          | optional,
                                                        reupload_on_changes
                                                          | String
                                                          | doc "Boolean expression. A flag to check if contents of folder has changed after a cache hit."
                                                          | optional,
                                                        ..
                                                      },
                                                  "^(.*)file$" =
                                                    {
                                                        name
                                                          | String
                                                          | optional,
                                                        path
                                                          | String
                                                          | doc "Destination path.",
                                                        variable_name
                                                          | String
                                                          | doc "Environment variable name.",
                                                        ..
                                                      },
                                                  "^(.*)script$" =
                                                    std.contract.any_of
                                                        [
                                                          String,
                                                          js2n.array.Items
                                                            [ String ]
                                                            js2n.Always
                                                        ],
                                                },
                                            properties = {},
                                            required = {},
                                          },
                                  },
                              required = { image = true, },
                            }
                        ] js2n.Always
                      | optional,
                    timeout_in
                      | String
                      | doc "Task timeout in minutes"
                      | optional,
                    trigger_type
                      | std.enum.TagOrString
                      | [| 'manual, 'automatic |]
                      | doc "Trigger type"
                      | optional,
                    use_compute_credits
                      | String
                      | doc "Boolean expression that can use environment variables."
                      | optional,
                    zone
                      | std.enum.TagOrString
                      | [|
                        'us-east4-c,
                        'us-east4-b,
                        'us-east4-a,
                        'us-east1-d,
                        'us-east1-c,
                        'us-east1-b,
                        'us-central1-c,
                        'us-central1-b,
                        'us-central1-f,
                        'europe-west4-c,
                        'us-central1-a,
                        'us-west1-a,
                        'europe-west3-a,
                        'europe-west2-b,
                        'europe-west1-c,
                        'europe-west2-a,
                        'europe-west1-b,
                        'europe-west4-b,
                        'europe-west3-c,
                        'europe-west4-a,
                        'europe-west3-b,
                        'europe-west2-c,
                        'europe-west1-d,
                        'us-west2-c,
                        'us-west2-b,
                        'us-west1-c,
                        'us-west2-a,
                        'us-west1-b
                      |]
                      | doc "Google Cloud zone of the cluster."
                      | optional,
                    ..
                  },
              "^(.*)pipe$" =
                {
                    alias | String | optional,
                    allow_failures
                      | String
                      | doc "Boolean expression that can use environment variables."
                      | optional,
                    auto_cancellation
                      | String
                      | doc "Boolean expression that can use environment variables."
                      | optional,
                    depends_on
                      | std.contract.any_of
                        [ String, js2n.array.Items [ String ] js2n.Always ]
                      | doc "List of task names this task depends on."
                      | optional,
                    env
                      | js2n.record.Record
                        {
                          additional = 'Some Dyn,
                          patterns = { ".*" = String, },
                          properties = {},
                          required = {},
                        }
                      | doc "Map represented as an object."
                      | optional,
                    environment
                      | js2n.record.Record
                        {
                          additional = 'Some Dyn,
                          patterns = { ".*" = String, },
                          properties = {},
                          required = {},
                        }
                      | doc "Map represented as an object."
                      | optional,
                    execution_lock
                      | String
                      | doc "Lock name for triggering and execution"
                      | optional,
                    experimental
                      | String
                      | doc "Boolean expression that can use environment variables."
                      | optional,
                    name | String | optional,
                    only_if
                      | String
                      | doc "Boolean expression that can use environment variables."
                      | optional,
                    required_pr_labels
                      | std.contract.any_of
                        [ String, js2n.array.Items [ String ] js2n.Always ]
                      | doc "List of required labels on a PR."
                      | optional,
                    resources
                      | {
                        cpu | Number | optional,
                        memory | js2n.string.Matches "\\d+(G|Mb)?" | optional,
                        ..
                      }
                      | doc "Pipe resources"
                      | optional,
                    skip
                      | String
                      | doc "Boolean expression that can use environment variables."
                      | optional,
                    skip_notifications
                      | String
                      | doc "Boolean expression that can use environment variables."
                      | optional,
                    stateful
                      | String
                      | doc "Boolean expression that can use environment variables."
                      | optional,
                    steps
                      | js2n.array.Items
                        [
                          js2n.record.Record
                            {
                              additional = 'Some Dyn,
                              patterns =
                                {
                                    "^(.*)artifacts$" =
                                      {
                                          format
                                            | String
                                            | doc "Content Format."
                                            | optional,
                                          name | String | optional,
                                          path
                                            | String
                                            | doc "Path or pattern of artifacts."
                                            | optional,
                                          paths
                                            | js2n.array.Items [ String ]
                                              js2n.Always
                                            | optional,
                                          type
                                            | String
                                            | doc "Content Type."
                                            | optional,
                                          ..
                                        },
                                    "^(.*)cache$" =
                                      {
                                          fingerprint_script
                                            | std.contract.any_of
                                              [
                                                String,
                                                js2n.array.Items [ String ]
                                                  js2n.Always
                                              ]
                                            | doc "Script that is used to calculate cache key."
                                            | optional,
                                          folder
                                            | String
                                            | doc "Path of a folder to cache.",
                                          name | String | optional,
                                          populate_script
                                            | std.contract.any_of
                                              [
                                                String,
                                                js2n.array.Items [ String ]
                                                  js2n.Always
                                              ]
                                            | doc "In case of a cache miss this script will be executed."
                                            | optional,
                                          reupload_on_changes
                                            | String
                                            | doc "Boolean expression. A flag to check if contents of folder has changed after a cache hit."
                                            | optional,
                                          ..
                                        },
                                    "^(.*)file$" =
                                      {
                                          name | String | optional,
                                          path
                                            | String
                                            | doc "Destination path.",
                                          variable_name
                                            | String
                                            | doc "Environment variable name.",
                                          ..
                                        },
                                    "^(.*)script$" =
                                      std.contract.any_of
                                          [
                                            String,
                                            js2n.array.Items [ String ]
                                              js2n.Always
                                          ],
                                  },
                              properties =
                                {
                                    always =
                                      js2n.record.Record
                                          {
                                            additional = 'Some Dyn,
                                            patterns =
                                              {
                                                  "^(.*)artifacts$" =
                                                    {
                                                        format
                                                          | String
                                                          | doc "Content Format."
                                                          | optional,
                                                        name
                                                          | String
                                                          | optional,
                                                        path
                                                          | String
                                                          | doc "Path or pattern of artifacts."
                                                          | optional,
                                                        paths
                                                          | js2n.array.Items
                                                            [ String ]
                                                            js2n.Always
                                                          | optional,
                                                        type
                                                          | String
                                                          | doc "Content Type."
                                                          | optional,
                                                        ..
                                                      },
                                                  "^(.*)background_script$" =
                                                    std.contract.any_of
                                                        [
                                                          String,
                                                          js2n.array.Items
                                                            [ String ]
                                                            js2n.Always
                                                        ],
                                                  "^(.*)cache$" =
                                                    {
                                                        fingerprint_script
                                                          | std.contract.any_of
                                                            [
                                                              String,
                                                              js2n.array.Items
                                                                [ String ]
                                                                js2n.Always
                                                            ]
                                                          | doc "Script that is used to calculate cache key."
                                                          | optional,
                                                        folder
                                                          | String
                                                          | doc "Path of a folder to cache.",
                                                        name
                                                          | String
                                                          | optional,
                                                        populate_script
                                                          | std.contract.any_of
                                                            [
                                                              String,
                                                              js2n.array.Items
                                                                [ String ]
                                                                js2n.Always
                                                            ]
                                                          | doc "In case of a cache miss this script will be executed."
                                                          | optional,
                                                        reupload_on_changes
                                                          | String
                                                          | doc "Boolean expression. A flag to check if contents of folder has changed after a cache hit."
                                                          | optional,
                                                        ..
                                                      },
                                                  "^(.*)file$" =
                                                    {
                                                        name
                                                          | String
                                                          | optional,
                                                        path
                                                          | String
                                                          | doc "Destination path.",
                                                        variable_name
                                                          | String
                                                          | doc "Environment variable name.",
                                                        ..
                                                      },
                                                  "^(.*)script$" =
                                                    std.contract.any_of
                                                        [
                                                          String,
                                                          js2n.array.Items
                                                            [ String ]
                                                            js2n.Always
                                                        ],
                                                },
                                            properties = {},
                                            required = {},
                                          },
                                    image = String,
                                    on_failure =
                                      js2n.record.Record
                                          {
                                            additional = 'Some Dyn,
                                            patterns =
                                              {
                                                  "^(.*)artifacts$" =
                                                    {
                                                        format
                                                          | String
                                                          | doc "Content Format."
                                                          | optional,
                                                        name
                                                          | String
                                                          | optional,
                                                        path
                                                          | String
                                                          | doc "Path or pattern of artifacts."
                                                          | optional,
                                                        paths
                                                          | js2n.array.Items
                                                            [ String ]
                                                            js2n.Always
                                                          | optional,
                                                        type
                                                          | String
                                                          | doc "Content Type."
                                                          | optional,
                                                        ..
                                                      },
                                                  "^(.*)background_script$" =
                                                    std.contract.any_of
                                                        [
                                                          String,
                                                          js2n.array.Items
                                                            [ String ]
                                                            js2n.Always
                                                        ],
                                                  "^(.*)cache$" =
                                                    {
                                                        fingerprint_script
                                                          | std.contract.any_of
                                                            [
                                                              String,
                                                              js2n.array.Items
                                                                [ String ]
                                                                js2n.Always
                                                            ]
                                                          | doc "Script that is used to calculate cache key."
                                                          | optional,
                                                        folder
                                                          | String
                                                          | doc "Path of a folder to cache.",
                                                        name
                                                          | String
                                                          | optional,
                                                        populate_script
                                                          | std.contract.any_of
                                                            [
                                                              String,
                                                              js2n.array.Items
                                                                [ String ]
                                                                js2n.Always
                                                            ]
                                                          | doc "In case of a cache miss this script will be executed."
                                                          | optional,
                                                        reupload_on_changes
                                                          | String
                                                          | doc "Boolean expression. A flag to check if contents of folder has changed after a cache hit."
                                                          | optional,
                                                        ..
                                                      },
                                                  "^(.*)file$" =
                                                    {
                                                        name
                                                          | String
                                                          | optional,
                                                        path
                                                          | String
                                                          | doc "Destination path.",
                                                        variable_name
                                                          | String
                                                          | doc "Environment variable name.",
                                                        ..
                                                      },
                                                  "^(.*)script$" =
                                                    std.contract.any_of
                                                        [
                                                          String,
                                                          js2n.array.Items
                                                            [ String ]
                                                            js2n.Always
                                                        ],
                                                },
                                            properties = {},
                                            required = {},
                                          },
                                    on_success =
                                      js2n.record.Record
                                          {
                                            additional = 'Some Dyn,
                                            patterns =
                                              {
                                                  "^(.*)artifacts$" =
                                                    {
                                                        format
                                                          | String
                                                          | doc "Content Format."
                                                          | optional,
                                                        name
                                                          | String
                                                          | optional,
                                                        path
                                                          | String
                                                          | doc "Path or pattern of artifacts."
                                                          | optional,
                                                        paths
                                                          | js2n.array.Items
                                                            [ String ]
                                                            js2n.Always
                                                          | optional,
                                                        type
                                                          | String
                                                          | doc "Content Type."
                                                          | optional,
                                                        ..
                                                      },
                                                  "^(.*)background_script$" =
                                                    std.contract.any_of
                                                        [
                                                          String,
                                                          js2n.array.Items
                                                            [ String ]
                                                            js2n.Always
                                                        ],
                                                  "^(.*)cache$" =
                                                    {
                                                        fingerprint_script
                                                          | std.contract.any_of
                                                            [
                                                              String,
                                                              js2n.array.Items
                                                                [ String ]
                                                                js2n.Always
                                                            ]
                                                          | doc "Script that is used to calculate cache key."
                                                          | optional,
                                                        folder
                                                          | String
                                                          | doc "Path of a folder to cache.",
                                                        name
                                                          | String
                                                          | optional,
                                                        populate_script
                                                          | std.contract.any_of
                                                            [
                                                              String,
                                                              js2n.array.Items
                                                                [ String ]
                                                                js2n.Always
                                                            ]
                                                          | doc "In case of a cache miss this script will be executed."
                                                          | optional,
                                                        reupload_on_changes
                                                          | String
                                                          | doc "Boolean expression. A flag to check if contents of folder has changed after a cache hit."
                                                          | optional,
                                                        ..
                                                      },
                                                  "^(.*)file$" =
                                                    {
                                                        name
                                                          | String
                                                          | optional,
                                                        path
                                                          | String
                                                          | doc "Destination path.",
                                                        variable_name
                                                          | String
                                                          | doc "Environment variable name.",
                                                        ..
                                                      },
                                                  "^(.*)script$" =
                                                    std.contract.any_of
                                                        [
                                                          String,
                                                          js2n.array.Items
                                                            [ String ]
                                                            js2n.Always
                                                        ],
                                                },
                                            properties = {},
                                            required = {},
                                          },
                                  },
                              required = { image = true, },
                            }
                        ] js2n.Always
                      | optional,
                    timeout_in
                      | String
                      | doc "Task timeout in minutes"
                      | optional,
                    trigger_type
                      | std.enum.TagOrString
                      | [| 'manual, 'automatic |]
                      | doc "Trigger type"
                      | optional,
                    use_compute_credits
                      | String
                      | doc "Boolean expression that can use environment variables."
                      | optional,
                    ..
                  },
              "^(.*)task$" =
                js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns =
                        {
                            "^(.*)artifacts$" =
                              {
                                  format
                                    | String
                                    | doc "Content Format."
                                    | optional,
                                  name | String | optional,
                                  path
                                    | String
                                    | doc "Path or pattern of artifacts."
                                    | optional,
                                  paths
                                    | js2n.array.Items [ String ] js2n.Always
                                    | optional,
                                  type
                                    | String
                                    | doc "Content Type."
                                    | optional,
                                  ..
                                },
                            "^(.*)background_script$" =
                              std.contract.any_of
                                  [
                                    String,
                                    js2n.array.Items [ String ] js2n.Always
                                  ],
                            "^(.*)cache$" =
                              {
                                  fingerprint_script
                                    | std.contract.any_of
                                      [
                                        String,
                                        js2n.array.Items [ String ] js2n.Always
                                      ]
                                    | doc "Script that is used to calculate cache key."
                                    | optional,
                                  folder
                                    | String
                                    | doc "Path of a folder to cache.",
                                  name | String | optional,
                                  populate_script
                                    | std.contract.any_of
                                      [
                                        String,
                                        js2n.array.Items [ String ] js2n.Always
                                      ]
                                    | doc "In case of a cache miss this script will be executed."
                                    | optional,
                                  reupload_on_changes
                                    | String
                                    | doc "Boolean expression. A flag to check if contents of folder has changed after a cache hit."
                                    | optional,
                                  ..
                                },
                            "^(.*)file$" =
                              {
                                  name | String | optional,
                                  path | String | doc "Destination path.",
                                  variable_name
                                    | String
                                    | doc "Environment variable name.",
                                  ..
                                },
                            "^(.*)script$" =
                              std.contract.any_of
                                  [
                                    String,
                                    js2n.array.Items [ String ] js2n.Always
                                  ],
                          },
                      properties =
                        {
                            alias = String,
                            allow_failures = String,
                            always =
                              js2n.record.Record
                                  {
                                    additional = 'Some Dyn,
                                    patterns =
                                      {
                                          "^(.*)artifacts$" =
                                            {
                                                format
                                                  | String
                                                  | doc "Content Format."
                                                  | optional,
                                                name | String | optional,
                                                path
                                                  | String
                                                  | doc "Path or pattern of artifacts."
                                                  | optional,
                                                paths
                                                  | js2n.array.Items [ String ]
                                                    js2n.Always
                                                  | optional,
                                                type
                                                  | String
                                                  | doc "Content Type."
                                                  | optional,
                                                ..
                                              },
                                          "^(.*)background_script$" =
                                            std.contract.any_of
                                                [
                                                  String,
                                                  js2n.array.Items [ String ]
                                                    js2n.Always
                                                ],
                                          "^(.*)cache$" =
                                            {
                                                fingerprint_script
                                                  | std.contract.any_of
                                                    [
                                                      String,
                                                      js2n.array.Items
                                                        [ String ] js2n.Always
                                                    ]
                                                  | doc "Script that is used to calculate cache key."
                                                  | optional,
                                                folder
                                                  | String
                                                  | doc "Path of a folder to cache.",
                                                name | String | optional,
                                                populate_script
                                                  | std.contract.any_of
                                                    [
                                                      String,
                                                      js2n.array.Items
                                                        [ String ] js2n.Always
                                                    ]
                                                  | doc "In case of a cache miss this script will be executed."
                                                  | optional,
                                                reupload_on_changes
                                                  | String
                                                  | doc "Boolean expression. A flag to check if contents of folder has changed after a cache hit."
                                                  | optional,
                                                ..
                                              },
                                          "^(.*)file$" =
                                            {
                                                name | String | optional,
                                                path
                                                  | String
                                                  | doc "Destination path.",
                                                variable_name
                                                  | String
                                                  | doc "Environment variable name.",
                                                ..
                                              },
                                          "^(.*)script$" =
                                            std.contract.any_of
                                                [
                                                  String,
                                                  js2n.array.Items [ String ]
                                                    js2n.Always
                                                ],
                                        },
                                    properties = {},
                                    required = {},
                                  },
                            auto_cancellation = String,
                            aws_credentials =
                              js2n.string.Matches
                                  "^ENCRYPTED\\[!?[0-9a-z]*!?\\]$",
                            azure_container_instance =
                              {
                                  cpu | Number | optional,
                                  image
                                    | String
                                    | doc "Docker Image."
                                    | optional,
                                  memory
                                    | js2n.string.Matches "\\d+(G|Mb)?"
                                    | optional,
                                  platform
                                    | std.enum.TagOrString
                                    | [| 'windows, 'linux |]
                                    | doc "Container Platform."
                                    | optional,
                                  region
                                    | std.enum.TagOrString
                                    | [| 'eastus, 'westus |]
                                    | doc "Azure zone."
                                    | optional,
                                  resource_group | String | optional,
                                  ..
                                },
                            azure_credentials =
                              js2n.string.Matches
                                  "^ENCRYPTED\\[!?[0-9a-z]*!?\\]$",
                            compute_engine_instance =
                              {
                                  cpu | Number | optional,
                                  disk | Number | optional,
                                  image
                                    | String
                                    | doc "Image name or family."
                                    | optional,
                                  image_project
                                    | String
                                    | doc "Google Cloud project of an image."
                                    | optional,
                                  memory
                                    | js2n.string.Matches "\\d+(G|Mb)?"
                                    | optional,
                                  nested_virtualization | Bool | optional,
                                  platform
                                    | std.enum.TagOrString
                                    | [| 'solaris, 'windows, 'linux, 'freebsd |]
                                    | doc "VM platform."
                                    | optional,
                                  ..
                                },
                            container =
                              {
                                  additional_containers
                                    | js2n.array.Items
                                      [
                                        {
                                          command
                                            | std.contract.any_of
                                              [
                                                String,
                                                js2n.array.Items [ String ]
                                                  js2n.Always
                                              ]
                                            | doc "Container CMD to override."
                                            | optional,
                                          cpu | Number | optional,
                                          env
                                            | js2n.record.Record
                                              {
                                                additional = 'Some Dyn,
                                                patterns = { ".*" = String, },
                                                properties = {},
                                                required = {},
                                              }
                                            | doc "Map represented as an object."
                                            | optional,
                                          environment
                                            | js2n.record.Record
                                              {
                                                additional = 'Some Dyn,
                                                patterns = { ".*" = String, },
                                                properties = {},
                                                required = {},
                                              }
                                            | doc "Map represented as an object."
                                            | optional,
                                          image | String | doc "Docker Image.",
                                          memory
                                            | js2n.string.Matches "\\d+(G|Mb)?"
                                            | optional,
                                          name | String | optional,
                                          port
                                            | std.contract.any_of
                                              [ Number, String ]
                                            | doc "Port exposed by the container.",
                                          privileged
                                            | String
                                            | doc "Boolean expression that can use environment variables."
                                            | optional,
                                          readiness_command
                                            | std.contract.any_of
                                              [
                                                String,
                                                js2n.array.Items [ String ]
                                                  js2n.Always
                                              ]
                                            | doc "Container readiness probe command."
                                            | optional,
                                          ..
                                        }
                                      ] js2n.Always
                                    | optional,
                                  cpu | Number | optional,
                                  docker_arguments
                                    | js2n.record.Record
                                      {
                                        additional = 'Some Dyn,
                                        patterns = { ".*" = String, },
                                        properties = {},
                                        required = {},
                                      }
                                    | doc "Arguments for Docker build"
                                    | optional,
                                  dockerfile
                                    | String
                                    | doc "Relative path to Dockerfile to build container from."
                                    | optional,
                                  image
                                    | String
                                    | doc "Docker Image to use."
                                    | optional,
                                  kvm
                                    | String
                                    | doc "Boolean expression that can use environment variables."
                                    | optional,
                                  memory
                                    | js2n.string.Matches "\\d+(G|Mb)?"
                                    | optional,
                                  registry_config | String | optional,
                                  use_in_memory_disk
                                    | String
                                    | doc "Boolean expression that can use environment variables."
                                    | optional,
                                  use_static_ip
                                    | String
                                    | doc "Boolean expression that can use environment variables."
                                    | optional,
                                  ..
                                },
                            depends_on =
                              std.contract.any_of
                                  [
                                    String,
                                    js2n.array.Items [ String ] js2n.Always
                                  ],
                            ec2_instance =
                              {
                                  image | String | doc "AMI Image." | optional,
                                  platform
                                    | std.enum.TagOrString
                                    | [| 'solaris, 'windows, 'linux, 'freebsd |]
                                    | doc "Image Platform."
                                    | optional,
                                  region
                                    | std.enum.TagOrString
                                    | [|
                                      'us-west-2,
                                      'us-west-1,
                                      'us-east-2,
                                      'us-east-1,
                                      'eu-central-1,
                                      'eu-west-1,
                                      'eu-west-2,
                                      'eu-west-3,
                                      'eu-north-1
                                    |]
                                    | doc "AWS region."
                                    | optional,
                                  type | String | optional,
                                  ..
                                },
                            eks_container =
                              {
                                  additional_containers
                                    | js2n.array.Items
                                      [
                                        {
                                          command
                                            | std.contract.any_of
                                              [
                                                String,
                                                js2n.array.Items [ String ]
                                                  js2n.Always
                                              ]
                                            | doc "Container CMD to override."
                                            | optional,
                                          cpu | Number | optional,
                                          env
                                            | js2n.record.Record
                                              {
                                                additional = 'Some Dyn,
                                                patterns = { ".*" = String, },
                                                properties = {},
                                                required = {},
                                              }
                                            | doc "Map represented as an object."
                                            | optional,
                                          environment
                                            | js2n.record.Record
                                              {
                                                additional = 'Some Dyn,
                                                patterns = { ".*" = String, },
                                                properties = {},
                                                required = {},
                                              }
                                            | doc "Map represented as an object."
                                            | optional,
                                          image | String | doc "Docker Image.",
                                          memory
                                            | js2n.string.Matches "\\d+(G|Mb)?"
                                            | optional,
                                          name | String | optional,
                                          port
                                            | std.contract.any_of
                                              [ Number, String ]
                                            | doc "Port exposed by the container.",
                                          privileged
                                            | String
                                            | doc "Boolean expression that can use environment variables."
                                            | optional,
                                          readiness_command
                                            | std.contract.any_of
                                              [
                                                String,
                                                js2n.array.Items [ String ]
                                                  js2n.Always
                                              ]
                                            | doc "Container readiness probe command."
                                            | optional,
                                          ..
                                        }
                                      ] js2n.Always
                                    | optional,
                                  cluster_name
                                    | String
                                    | doc "EKS cluster name."
                                    | optional,
                                  cpu | Number | optional,
                                  image
                                    | String
                                    | doc "Docker Image."
                                    | optional,
                                  memory
                                    | js2n.string.Matches "\\d+(G|Mb)?"
                                    | optional,
                                  namespace
                                    | String
                                    | doc "Kubernetes namespace to schedule CI jobs in."
                                    | optional,
                                  privileged | Bool | optional,
                                  region
                                    | std.enum.TagOrString
                                    | [|
                                      'us-west-2,
                                      'us-west-1,
                                      'us-east-2,
                                      'us-east-1,
                                      'eu-central-1,
                                      'eu-west-1,
                                      'eu-west-2,
                                      'eu-west-3,
                                      'eu-north-1
                                    |]
                                    | doc "AWS region."
                                    | optional,
                                  registry_config | String | optional,
                                  use_in_memory_disk | Bool | optional,
                                  ..
                                },
                            env =
                              js2n.record.Record
                                  {
                                    additional = 'Some Dyn,
                                    patterns = { ".*" = String, },
                                    properties = {},
                                    required = {},
                                  },
                            environment =
                              js2n.record.Record
                                  {
                                    additional = 'Some Dyn,
                                    patterns = { ".*" = String, },
                                    properties = {},
                                    required = {},
                                  },
                            execution_lock = String,
                            experimental = String,
                            freebsd_instance =
                              {
                                  cpu | Number | optional,
                                  image
                                    | String
                                    | doc "FreeBSD VM image."
                                    | optional,
                                  image_family
                                    | String
                                    | doc "Image family."
                                    | optional,
                                  memory
                                    | js2n.string.Matches "\\d+(G|Mb)?"
                                    | optional,
                                  use_static_ip
                                    | String
                                    | doc "Boolean expression that can use environment variables."
                                    | optional,
                                  ..
                                },
                            gce_container =
                              {
                                  additional_containers
                                    | js2n.array.Items
                                      [
                                        {
                                          command
                                            | std.contract.any_of
                                              [
                                                String,
                                                js2n.array.Items [ String ]
                                                  js2n.Always
                                              ]
                                            | doc "Container CMD to override."
                                            | optional,
                                          cpu | Number | optional,
                                          env
                                            | js2n.record.Record
                                              {
                                                additional = 'Some Dyn,
                                                patterns = { ".*" = String, },
                                                properties = {},
                                                required = {},
                                              }
                                            | doc "Map represented as an object."
                                            | optional,
                                          environment
                                            | js2n.record.Record
                                              {
                                                additional = 'Some Dyn,
                                                patterns = { ".*" = String, },
                                                properties = {},
                                                required = {},
                                              }
                                            | doc "Map represented as an object."
                                            | optional,
                                          image | String | doc "Docker Image.",
                                          memory
                                            | js2n.string.Matches "\\d+(G|Mb)?"
                                            | optional,
                                          name | String | optional,
                                          port
                                            | std.contract.any_of
                                              [ Number, String ]
                                            | doc "Port exposed by the container.",
                                          privileged
                                            | String
                                            | doc "Boolean expression that can use environment variables."
                                            | optional,
                                          readiness_command
                                            | std.contract.any_of
                                              [
                                                String,
                                                js2n.array.Items [ String ]
                                                  js2n.Always
                                              ]
                                            | doc "Container readiness probe command."
                                            | optional,
                                          ..
                                        }
                                      ] js2n.Always
                                    | optional,
                                  container
                                    | String
                                    | doc "Container image."
                                    | optional,
                                  cpu | Number | optional,
                                  disk | Number | optional,
                                  enable_nested_virtualization
                                    | String
                                    | doc "Boolean expression that can use environment variables."
                                    | optional,
                                  image_family
                                    | String
                                    | doc "Image family."
                                    | optional,
                                  image_name
                                    | String
                                    | doc "Image name."
                                    | optional,
                                  image_project
                                    | String
                                    | doc "Google Cloud project of an image."
                                    | optional,
                                  memory
                                    | js2n.string.Matches "\\d+(G|Mb)?"
                                    | optional,
                                  preemptible
                                    | String
                                    | doc "Boolean expression that can use environment variables."
                                    | optional,
                                  scopes
                                    | std.contract.any_of
                                      [
                                        String,
                                        js2n.array.Items [ String ] js2n.Always
                                      ]
                                    | doc "Google Cloud Scopes of the VM."
                                    | optional,
                                  use_ssd
                                    | String
                                    | doc "Boolean expression that can use environment variables."
                                    | optional,
                                  zone
                                    | std.enum.TagOrString
                                    | [|
                                      'us-east4-c,
                                      'us-east4-b,
                                      'us-east4-a,
                                      'us-east1-d,
                                      'us-east1-c,
                                      'us-east1-b,
                                      'us-central1-c,
                                      'us-central1-b,
                                      'us-central1-f,
                                      'europe-west4-c,
                                      'us-central1-a,
                                      'us-west1-a,
                                      'europe-west3-a,
                                      'europe-west2-b,
                                      'europe-west1-c,
                                      'europe-west2-a,
                                      'europe-west1-b,
                                      'europe-west4-b,
                                      'europe-west3-c,
                                      'europe-west4-a,
                                      'europe-west3-b,
                                      'europe-west2-c,
                                      'europe-west1-d,
                                      'us-west2-c,
                                      'us-west2-b,
                                      'us-west1-c,
                                      'us-west2-a,
                                      'us-west1-b
                                    |]
                                    | doc "Google Cloud zone where to start a VM."
                                    | optional,
                                  ..
                                },
                            gce_instance =
                              {
                                  cpu | Number | optional,
                                  disk | Number | optional,
                                  enable_nested_virtualization
                                    | String
                                    | doc "Boolean expression that can use environment variables."
                                    | optional,
                                  image_family
                                    | String
                                    | doc "Image family."
                                    | optional,
                                  image_name
                                    | String
                                    | doc "Image name."
                                    | optional,
                                  image_project
                                    | String
                                    | doc "Google Cloud project of an image."
                                    | optional,
                                  memory
                                    | js2n.string.Matches "\\d+(G|Mb)?"
                                    | optional,
                                  platform
                                    | std.enum.TagOrString
                                    | [| 'solaris, 'windows, 'linux, 'freebsd |]
                                    | doc "VM platform."
                                    | optional,
                                  preemptible
                                    | String
                                    | doc "Boolean expression that can use environment variables."
                                    | optional,
                                  scopes
                                    | std.contract.any_of
                                      [
                                        String,
                                        js2n.array.Items [ String ] js2n.Always
                                      ]
                                    | doc "Google Cloud Scopes of the VM."
                                    | optional,
                                  type
                                    | String
                                    | doc "Machine Type."
                                    | optional,
                                  use_ssd
                                    | String
                                    | doc "Boolean expression that can use environment variables."
                                    | optional,
                                  zone
                                    | std.enum.TagOrString
                                    | [|
                                      'us-east4-c,
                                      'us-east4-b,
                                      'us-east4-a,
                                      'us-east1-d,
                                      'us-east1-c,
                                      'us-east1-b,
                                      'us-central1-c,
                                      'us-central1-b,
                                      'us-central1-f,
                                      'europe-west4-c,
                                      'us-central1-a,
                                      'us-west1-a,
                                      'europe-west3-a,
                                      'europe-west2-b,
                                      'europe-west1-c,
                                      'europe-west2-a,
                                      'europe-west1-b,
                                      'europe-west4-b,
                                      'europe-west3-c,
                                      'europe-west4-a,
                                      'europe-west3-b,
                                      'europe-west2-c,
                                      'europe-west1-d,
                                      'us-west2-c,
                                      'us-west2-b,
                                      'us-west1-c,
                                      'us-west2-a,
                                      'us-west1-b
                                    |]
                                    | doc "Google Cloud zone where to start a VM."
                                    | optional,
                                  ..
                                },
                            gcp_credentials =
                              js2n.string.Matches
                                  "^ENCRYPTED\\[!?[0-9a-z]*!?\\]$",
                            gke_container =
                              {
                                  additional_containers
                                    | js2n.array.Items
                                      [
                                        {
                                          command
                                            | std.contract.any_of
                                              [
                                                String,
                                                js2n.array.Items [ String ]
                                                  js2n.Always
                                              ]
                                            | doc "Container CMD to override."
                                            | optional,
                                          cpu | Number | optional,
                                          env
                                            | js2n.record.Record
                                              {
                                                additional = 'Some Dyn,
                                                patterns = { ".*" = String, },
                                                properties = {},
                                                required = {},
                                              }
                                            | doc "Map represented as an object."
                                            | optional,
                                          environment
                                            | js2n.record.Record
                                              {
                                                additional = 'Some Dyn,
                                                patterns = { ".*" = String, },
                                                properties = {},
                                                required = {},
                                              }
                                            | doc "Map represented as an object."
                                            | optional,
                                          image | String | doc "Docker Image.",
                                          memory
                                            | js2n.string.Matches "\\d+(G|Mb)?"
                                            | optional,
                                          name | String | optional,
                                          port
                                            | std.contract.any_of
                                              [ Number, String ]
                                            | doc "Port exposed by the container.",
                                          privileged
                                            | String
                                            | doc "Boolean expression that can use environment variables."
                                            | optional,
                                          readiness_command
                                            | std.contract.any_of
                                              [
                                                String,
                                                js2n.array.Items [ String ]
                                                  js2n.Always
                                              ]
                                            | doc "Container readiness probe command."
                                            | optional,
                                          ..
                                        }
                                      ] js2n.Always
                                    | optional,
                                  builder_image_name
                                    | String
                                    | doc "Image name."
                                    | optional,
                                  builder_image_project
                                    | String
                                    | doc "Google Cloud project of an image used to build Docker container from Dockerfile."
                                    | optional,
                                  cluster_name
                                    | String
                                    | doc "GKE cluster name."
                                    | optional,
                                  cpu | Number | optional,
                                  docker_arguments
                                    | js2n.record.Record
                                      {
                                        additional = 'Some Dyn,
                                        patterns = { ".*" = String, },
                                        properties = {},
                                        required = {},
                                      }
                                    | doc "Arguments for Docker build"
                                    | optional,
                                  dockerfile
                                    | String
                                    | doc "Relative path to Dockerfile."
                                    | optional,
                                  image
                                    | String
                                    | doc "Docker Image."
                                    | optional,
                                  memory
                                    | js2n.string.Matches "\\d+(G|Mb)?"
                                    | optional,
                                  namespace
                                    | String
                                    | doc "Kubernetes namespace to schedule CI jobs in."
                                    | optional,
                                  platform
                                    | std.enum.TagOrString
                                    | [| 'windows, 'linux |]
                                    | doc "Container Platform."
                                    | optional,
                                  privileged | Bool | optional,
                                  registry_config | String | optional,
                                  use_in_memory_disk | Bool | optional,
                                  zone
                                    | std.enum.TagOrString
                                    | [|
                                      'us-east4-c,
                                      'us-east4-b,
                                      'us-east4-a,
                                      'us-east1-d,
                                      'us-east1-c,
                                      'us-east1-b,
                                      'us-central1-c,
                                      'us-central1-b,
                                      'us-central1-f,
                                      'europe-west4-c,
                                      'us-central1-a,
                                      'us-west1-a,
                                      'europe-west3-a,
                                      'europe-west2-b,
                                      'europe-west1-c,
                                      'europe-west2-a,
                                      'europe-west1-b,
                                      'europe-west4-b,
                                      'europe-west3-c,
                                      'europe-west4-a,
                                      'europe-west3-b,
                                      'europe-west2-c,
                                      'europe-west1-d,
                                      'us-west2-c,
                                      'us-west2-b,
                                      'us-west1-c,
                                      'us-west2-a,
                                      'us-west1-b
                                    |]
                                    | doc "Google Cloud zone of the cluster."
                                    | optional,
                                  ..
                                },
                            macos_instance =
                              {
                                  image
                                    | String
                                    | doc "macOS VM image."
                                    | optional,
                                  ..
                                },
                            name = String,
                            on_failure =
                              js2n.record.Record
                                  {
                                    additional = 'Some Dyn,
                                    patterns =
                                      {
                                          "^(.*)artifacts$" =
                                            {
                                                format
                                                  | String
                                                  | doc "Content Format."
                                                  | optional,
                                                name | String | optional,
                                                path
                                                  | String
                                                  | doc "Path or pattern of artifacts."
                                                  | optional,
                                                paths
                                                  | js2n.array.Items [ String ]
                                                    js2n.Always
                                                  | optional,
                                                type
                                                  | String
                                                  | doc "Content Type."
                                                  | optional,
                                                ..
                                              },
                                          "^(.*)background_script$" =
                                            std.contract.any_of
                                                [
                                                  String,
                                                  js2n.array.Items [ String ]
                                                    js2n.Always
                                                ],
                                          "^(.*)cache$" =
                                            {
                                                fingerprint_script
                                                  | std.contract.any_of
                                                    [
                                                      String,
                                                      js2n.array.Items
                                                        [ String ] js2n.Always
                                                    ]
                                                  | doc "Script that is used to calculate cache key."
                                                  | optional,
                                                folder
                                                  | String
                                                  | doc "Path of a folder to cache.",
                                                name | String | optional,
                                                populate_script
                                                  | std.contract.any_of
                                                    [
                                                      String,
                                                      js2n.array.Items
                                                        [ String ] js2n.Always
                                                    ]
                                                  | doc "In case of a cache miss this script will be executed."
                                                  | optional,
                                                reupload_on_changes
                                                  | String
                                                  | doc "Boolean expression. A flag to check if contents of folder has changed after a cache hit."
                                                  | optional,
                                                ..
                                              },
                                          "^(.*)file$" =
                                            {
                                                name | String | optional,
                                                path
                                                  | String
                                                  | doc "Destination path.",
                                                variable_name
                                                  | String
                                                  | doc "Environment variable name.",
                                                ..
                                              },
                                          "^(.*)script$" =
                                            std.contract.any_of
                                                [
                                                  String,
                                                  js2n.array.Items [ String ]
                                                    js2n.Always
                                                ],
                                        },
                                    properties = {},
                                    required = {},
                                  },
                            on_success =
                              js2n.record.Record
                                  {
                                    additional = 'Some Dyn,
                                    patterns =
                                      {
                                          "^(.*)artifacts$" =
                                            {
                                                format
                                                  | String
                                                  | doc "Content Format."
                                                  | optional,
                                                name | String | optional,
                                                path
                                                  | String
                                                  | doc "Path or pattern of artifacts."
                                                  | optional,
                                                paths
                                                  | js2n.array.Items [ String ]
                                                    js2n.Always
                                                  | optional,
                                                type
                                                  | String
                                                  | doc "Content Type."
                                                  | optional,
                                                ..
                                              },
                                          "^(.*)background_script$" =
                                            std.contract.any_of
                                                [
                                                  String,
                                                  js2n.array.Items [ String ]
                                                    js2n.Always
                                                ],
                                          "^(.*)cache$" =
                                            {
                                                fingerprint_script
                                                  | std.contract.any_of
                                                    [
                                                      String,
                                                      js2n.array.Items
                                                        [ String ] js2n.Always
                                                    ]
                                                  | doc "Script that is used to calculate cache key."
                                                  | optional,
                                                folder
                                                  | String
                                                  | doc "Path of a folder to cache.",
                                                name | String | optional,
                                                populate_script
                                                  | std.contract.any_of
                                                    [
                                                      String,
                                                      js2n.array.Items
                                                        [ String ] js2n.Always
                                                    ]
                                                  | doc "In case of a cache miss this script will be executed."
                                                  | optional,
                                                reupload_on_changes
                                                  | String
                                                  | doc "Boolean expression. A flag to check if contents of folder has changed after a cache hit."
                                                  | optional,
                                                ..
                                              },
                                          "^(.*)file$" =
                                            {
                                                name | String | optional,
                                                path
                                                  | String
                                                  | doc "Destination path.",
                                                variable_name
                                                  | String
                                                  | doc "Environment variable name.",
                                                ..
                                              },
                                          "^(.*)script$" =
                                            std.contract.any_of
                                                [
                                                  String,
                                                  js2n.array.Items [ String ]
                                                    js2n.Always
                                                ],
                                        },
                                    properties = {},
                                    required = {},
                                  },
                            only_if = String,
                            osx_instance =
                              {
                                  image
                                    | String
                                    | doc "macOS VM image."
                                    | optional,
                                  ..
                                },
                            persistent_worker =
                              {
                                  isolation
                                    | {
                                      parallels
                                        | {
                                          image
                                            | String
                                            | doc "Image name."
                                            | optional,
                                          password
                                            | String
                                            | doc "SSH password"
                                            | optional,
                                          platform
                                            | std.enum.TagOrString
                                            | [| 'windows, 'linux, 'darwin |]
                                            | doc "Image Platform."
                                            | optional,
                                          user
                                            | String
                                            | doc "SSH username"
                                            | optional,
                                          ..
                                        }
                                        | doc "Parallels VM isolation."
                                        | optional,
                                      ..
                                    }
                                    | doc "Persistent Worker isolation."
                                    | optional,
                                  labels
                                    | String
                                    | doc "Labels for selection."
                                    | optional,
                                  ..
                                },
                            required_pr_labels =
                              std.contract.any_of
                                  [
                                    String,
                                    js2n.array.Items [ String ] js2n.Always
                                  ],
                            skip = String,
                            skip_notifications = String,
                            stateful = String,
                            timeout_in = String,
                            trigger_type =
                              std.contract.Sequence
                                  [
                                    std.enum.TagOrString,
                                    [| 'manual, 'automatic |]
                                  ],
                            use_compute_credits = String,
                            windows_container =
                              {
                                  cpu | Number | optional,
                                  docker_arguments
                                    | js2n.record.Record
                                      {
                                        additional = 'Some Dyn,
                                        patterns = { ".*" = String, },
                                        properties = {},
                                        required = {},
                                      }
                                    | doc "Arguments for Docker build"
                                    | optional,
                                  dockerfile
                                    | String
                                    | doc "Relative path to Dockerfile to build container from."
                                    | optional,
                                  image
                                    | String
                                    | doc "Docker Image to use."
                                    | optional,
                                  memory
                                    | js2n.string.Matches "\\d+(G|Mb)?"
                                    | optional,
                                  os_version
                                    | std.enum.TagOrString
                                    | [| '"1803", '"1709", '"2019" |]
                                    | doc "Windows version of container."
                                    | optional,
                                  use_static_ip
                                    | String
                                    | doc "Boolean expression that can use environment variables."
                                    | optional,
                                  ..
                                },
                          },
                      required = {},
                    },
            },
        properties =
          {
              allow_failures = String,
              auto_cancellation = String,
              aws_credentials =
                js2n.string.Matches "^ENCRYPTED\\[!?[0-9a-z]*!?\\]$",
              azure_container_instance =
                {
                    cpu | Number | optional,
                    image | String | doc "Docker Image." | optional,
                    memory | js2n.string.Matches "\\d+(G|Mb)?" | optional,
                    platform
                      | std.enum.TagOrString
                      | [| 'windows, 'linux |]
                      | doc "Container Platform."
                      | optional,
                    region
                      | std.enum.TagOrString
                      | [| 'eastus, 'westus |]
                      | doc "Azure zone."
                      | optional,
                    resource_group | String | optional,
                    ..
                  },
              azure_credentials =
                js2n.string.Matches "^ENCRYPTED\\[!?[0-9a-z]*!?\\]$",
              compute_engine_instance =
                {
                    cpu | Number | optional,
                    disk | Number | optional,
                    image | String | doc "Image name or family." | optional,
                    image_project
                      | String
                      | doc "Google Cloud project of an image."
                      | optional,
                    memory | js2n.string.Matches "\\d+(G|Mb)?" | optional,
                    nested_virtualization | Bool | optional,
                    platform
                      | std.enum.TagOrString
                      | [| 'solaris, 'windows, 'linux, 'freebsd |]
                      | doc "VM platform."
                      | optional,
                    ..
                  },
              container =
                {
                    additional_containers
                      | js2n.array.Items
                        [
                          {
                            command
                              | std.contract.any_of
                                [
                                  String,
                                  js2n.array.Items [ String ] js2n.Always
                                ]
                              | doc "Container CMD to override."
                              | optional,
                            cpu | Number | optional,
                            env
                              | js2n.record.Record
                                {
                                  additional = 'Some Dyn,
                                  patterns = { ".*" = String, },
                                  properties = {},
                                  required = {},
                                }
                              | doc "Map represented as an object."
                              | optional,
                            environment
                              | js2n.record.Record
                                {
                                  additional = 'Some Dyn,
                                  patterns = { ".*" = String, },
                                  properties = {},
                                  required = {},
                                }
                              | doc "Map represented as an object."
                              | optional,
                            image | String | doc "Docker Image.",
                            memory
                              | js2n.string.Matches "\\d+(G|Mb)?"
                              | optional,
                            name | String | optional,
                            port
                              | std.contract.any_of [ Number, String ]
                              | doc "Port exposed by the container.",
                            privileged
                              | String
                              | doc "Boolean expression that can use environment variables."
                              | optional,
                            readiness_command
                              | std.contract.any_of
                                [
                                  String,
                                  js2n.array.Items [ String ] js2n.Always
                                ]
                              | doc "Container readiness probe command."
                              | optional,
                            ..
                          }
                        ] js2n.Always
                      | optional,
                    cpu | Number | optional,
                    docker_arguments
                      | js2n.record.Record
                        {
                          additional = 'Some Dyn,
                          patterns = { ".*" = String, },
                          properties = {},
                          required = {},
                        }
                      | doc "Arguments for Docker build"
                      | optional,
                    dockerfile
                      | String
                      | doc "Relative path to Dockerfile to build container from."
                      | optional,
                    image | String | doc "Docker Image to use." | optional,
                    kvm
                      | String
                      | doc "Boolean expression that can use environment variables."
                      | optional,
                    memory | js2n.string.Matches "\\d+(G|Mb)?" | optional,
                    registry_config | String | optional,
                    use_in_memory_disk
                      | String
                      | doc "Boolean expression that can use environment variables."
                      | optional,
                    use_static_ip
                      | String
                      | doc "Boolean expression that can use environment variables."
                      | optional,
                    ..
                  },
              ec2_instance =
                {
                    image | String | doc "AMI Image." | optional,
                    platform
                      | std.enum.TagOrString
                      | [| 'solaris, 'windows, 'linux, 'freebsd |]
                      | doc "Image Platform."
                      | optional,
                    region
                      | std.enum.TagOrString
                      | [|
                        'us-west-2,
                        'us-west-1,
                        'us-east-2,
                        'us-east-1,
                        'eu-central-1,
                        'eu-west-1,
                        'eu-west-2,
                        'eu-west-3,
                        'eu-north-1
                      |]
                      | doc "AWS region."
                      | optional,
                    type | String | optional,
                    ..
                  },
              eks_container =
                {
                    additional_containers
                      | js2n.array.Items
                        [
                          {
                            command
                              | std.contract.any_of
                                [
                                  String,
                                  js2n.array.Items [ String ] js2n.Always
                                ]
                              | doc "Container CMD to override."
                              | optional,
                            cpu | Number | optional,
                            env
                              | js2n.record.Record
                                {
                                  additional = 'Some Dyn,
                                  patterns = { ".*" = String, },
                                  properties = {},
                                  required = {},
                                }
                              | doc "Map represented as an object."
                              | optional,
                            environment
                              | js2n.record.Record
                                {
                                  additional = 'Some Dyn,
                                  patterns = { ".*" = String, },
                                  properties = {},
                                  required = {},
                                }
                              | doc "Map represented as an object."
                              | optional,
                            image | String | doc "Docker Image.",
                            memory
                              | js2n.string.Matches "\\d+(G|Mb)?"
                              | optional,
                            name | String | optional,
                            port
                              | std.contract.any_of [ Number, String ]
                              | doc "Port exposed by the container.",
                            privileged
                              | String
                              | doc "Boolean expression that can use environment variables."
                              | optional,
                            readiness_command
                              | std.contract.any_of
                                [
                                  String,
                                  js2n.array.Items [ String ] js2n.Always
                                ]
                              | doc "Container readiness probe command."
                              | optional,
                            ..
                          }
                        ] js2n.Always
                      | optional,
                    cluster_name | String | doc "EKS cluster name." | optional,
                    cpu | Number | optional,
                    image | String | doc "Docker Image." | optional,
                    memory | js2n.string.Matches "\\d+(G|Mb)?" | optional,
                    namespace
                      | String
                      | doc "Kubernetes namespace to schedule CI jobs in."
                      | optional,
                    privileged | Bool | optional,
                    region
                      | std.enum.TagOrString
                      | [|
                        'us-west-2,
                        'us-west-1,
                        'us-east-2,
                        'us-east-1,
                        'eu-central-1,
                        'eu-west-1,
                        'eu-west-2,
                        'eu-west-3,
                        'eu-north-1
                      |]
                      | doc "AWS region."
                      | optional,
                    registry_config | String | optional,
                    use_in_memory_disk | Bool | optional,
                    ..
                  },
              env =
                js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = { ".*" = String, },
                      properties = {},
                      required = {},
                    },
              environment =
                js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = { ".*" = String, },
                      properties = {},
                      required = {},
                    },
              experimental = String,
              freebsd_instance =
                {
                    cpu | Number | optional,
                    image | String | doc "FreeBSD VM image." | optional,
                    image_family | String | doc "Image family." | optional,
                    memory | js2n.string.Matches "\\d+(G|Mb)?" | optional,
                    use_static_ip
                      | String
                      | doc "Boolean expression that can use environment variables."
                      | optional,
                    ..
                  },
              gce_container =
                {
                    additional_containers
                      | js2n.array.Items
                        [
                          {
                            command
                              | std.contract.any_of
                                [
                                  String,
                                  js2n.array.Items [ String ] js2n.Always
                                ]
                              | doc "Container CMD to override."
                              | optional,
                            cpu | Number | optional,
                            env
                              | js2n.record.Record
                                {
                                  additional = 'Some Dyn,
                                  patterns = { ".*" = String, },
                                  properties = {},
                                  required = {},
                                }
                              | doc "Map represented as an object."
                              | optional,
                            environment
                              | js2n.record.Record
                                {
                                  additional = 'Some Dyn,
                                  patterns = { ".*" = String, },
                                  properties = {},
                                  required = {},
                                }
                              | doc "Map represented as an object."
                              | optional,
                            image | String | doc "Docker Image.",
                            memory
                              | js2n.string.Matches "\\d+(G|Mb)?"
                              | optional,
                            name | String | optional,
                            port
                              | std.contract.any_of [ Number, String ]
                              | doc "Port exposed by the container.",
                            privileged
                              | String
                              | doc "Boolean expression that can use environment variables."
                              | optional,
                            readiness_command
                              | std.contract.any_of
                                [
                                  String,
                                  js2n.array.Items [ String ] js2n.Always
                                ]
                              | doc "Container readiness probe command."
                              | optional,
                            ..
                          }
                        ] js2n.Always
                      | optional,
                    container | String | doc "Container image." | optional,
                    cpu | Number | optional,
                    disk | Number | optional,
                    enable_nested_virtualization
                      | String
                      | doc "Boolean expression that can use environment variables."
                      | optional,
                    image_family | String | doc "Image family." | optional,
                    image_name | String | doc "Image name." | optional,
                    image_project
                      | String
                      | doc "Google Cloud project of an image."
                      | optional,
                    memory | js2n.string.Matches "\\d+(G|Mb)?" | optional,
                    preemptible
                      | String
                      | doc "Boolean expression that can use environment variables."
                      | optional,
                    scopes
                      | std.contract.any_of
                        [ String, js2n.array.Items [ String ] js2n.Always ]
                      | doc "Google Cloud Scopes of the VM."
                      | optional,
                    use_ssd
                      | String
                      | doc "Boolean expression that can use environment variables."
                      | optional,
                    zone
                      | std.enum.TagOrString
                      | [|
                        'us-east4-c,
                        'us-east4-b,
                        'us-east4-a,
                        'us-east1-d,
                        'us-east1-c,
                        'us-east1-b,
                        'us-central1-c,
                        'us-central1-b,
                        'us-central1-f,
                        'europe-west4-c,
                        'us-central1-a,
                        'us-west1-a,
                        'europe-west3-a,
                        'europe-west2-b,
                        'europe-west1-c,
                        'europe-west2-a,
                        'europe-west1-b,
                        'europe-west4-b,
                        'europe-west3-c,
                        'europe-west4-a,
                        'europe-west3-b,
                        'europe-west2-c,
                        'europe-west1-d,
                        'us-west2-c,
                        'us-west2-b,
                        'us-west1-c,
                        'us-west2-a,
                        'us-west1-b
                      |]
                      | doc "Google Cloud zone where to start a VM."
                      | optional,
                    ..
                  },
              gce_instance =
                {
                    cpu | Number | optional,
                    disk | Number | optional,
                    enable_nested_virtualization
                      | String
                      | doc "Boolean expression that can use environment variables."
                      | optional,
                    image_family | String | doc "Image family." | optional,
                    image_name | String | doc "Image name." | optional,
                    image_project
                      | String
                      | doc "Google Cloud project of an image."
                      | optional,
                    memory | js2n.string.Matches "\\d+(G|Mb)?" | optional,
                    platform
                      | std.enum.TagOrString
                      | [| 'solaris, 'windows, 'linux, 'freebsd |]
                      | doc "VM platform."
                      | optional,
                    preemptible
                      | String
                      | doc "Boolean expression that can use environment variables."
                      | optional,
                    scopes
                      | std.contract.any_of
                        [ String, js2n.array.Items [ String ] js2n.Always ]
                      | doc "Google Cloud Scopes of the VM."
                      | optional,
                    type | String | doc "Machine Type." | optional,
                    use_ssd
                      | String
                      | doc "Boolean expression that can use environment variables."
                      | optional,
                    zone
                      | std.enum.TagOrString
                      | [|
                        'us-east4-c,
                        'us-east4-b,
                        'us-east4-a,
                        'us-east1-d,
                        'us-east1-c,
                        'us-east1-b,
                        'us-central1-c,
                        'us-central1-b,
                        'us-central1-f,
                        'europe-west4-c,
                        'us-central1-a,
                        'us-west1-a,
                        'europe-west3-a,
                        'europe-west2-b,
                        'europe-west1-c,
                        'europe-west2-a,
                        'europe-west1-b,
                        'europe-west4-b,
                        'europe-west3-c,
                        'europe-west4-a,
                        'europe-west3-b,
                        'europe-west2-c,
                        'europe-west1-d,
                        'us-west2-c,
                        'us-west2-b,
                        'us-west1-c,
                        'us-west2-a,
                        'us-west1-b
                      |]
                      | doc "Google Cloud zone where to start a VM."
                      | optional,
                    ..
                  },
              gcp_credentials =
                js2n.string.Matches "^ENCRYPTED\\[!?[0-9a-z]*!?\\]$",
              gke_container =
                {
                    additional_containers
                      | js2n.array.Items
                        [
                          {
                            command
                              | std.contract.any_of
                                [
                                  String,
                                  js2n.array.Items [ String ] js2n.Always
                                ]
                              | doc "Container CMD to override."
                              | optional,
                            cpu | Number | optional,
                            env
                              | js2n.record.Record
                                {
                                  additional = 'Some Dyn,
                                  patterns = { ".*" = String, },
                                  properties = {},
                                  required = {},
                                }
                              | doc "Map represented as an object."
                              | optional,
                            environment
                              | js2n.record.Record
                                {
                                  additional = 'Some Dyn,
                                  patterns = { ".*" = String, },
                                  properties = {},
                                  required = {},
                                }
                              | doc "Map represented as an object."
                              | optional,
                            image | String | doc "Docker Image.",
                            memory
                              | js2n.string.Matches "\\d+(G|Mb)?"
                              | optional,
                            name | String | optional,
                            port
                              | std.contract.any_of [ Number, String ]
                              | doc "Port exposed by the container.",
                            privileged
                              | String
                              | doc "Boolean expression that can use environment variables."
                              | optional,
                            readiness_command
                              | std.contract.any_of
                                [
                                  String,
                                  js2n.array.Items [ String ] js2n.Always
                                ]
                              | doc "Container readiness probe command."
                              | optional,
                            ..
                          }
                        ] js2n.Always
                      | optional,
                    builder_image_name | String | doc "Image name." | optional,
                    builder_image_project
                      | String
                      | doc "Google Cloud project of an image used to build Docker container from Dockerfile."
                      | optional,
                    cluster_name | String | doc "GKE cluster name." | optional,
                    cpu | Number | optional,
                    docker_arguments
                      | js2n.record.Record
                        {
                          additional = 'Some Dyn,
                          patterns = { ".*" = String, },
                          properties = {},
                          required = {},
                        }
                      | doc "Arguments for Docker build"
                      | optional,
                    dockerfile
                      | String
                      | doc "Relative path to Dockerfile."
                      | optional,
                    image | String | doc "Docker Image." | optional,
                    memory | js2n.string.Matches "\\d+(G|Mb)?" | optional,
                    namespace
                      | String
                      | doc "Kubernetes namespace to schedule CI jobs in."
                      | optional,
                    platform
                      | std.enum.TagOrString
                      | [| 'windows, 'linux |]
                      | doc "Container Platform."
                      | optional,
                    privileged | Bool | optional,
                    registry_config | String | optional,
                    use_in_memory_disk | Bool | optional,
                    zone
                      | std.enum.TagOrString
                      | [|
                        'us-east4-c,
                        'us-east4-b,
                        'us-east4-a,
                        'us-east1-d,
                        'us-east1-c,
                        'us-east1-b,
                        'us-central1-c,
                        'us-central1-b,
                        'us-central1-f,
                        'europe-west4-c,
                        'us-central1-a,
                        'us-west1-a,
                        'europe-west3-a,
                        'europe-west2-b,
                        'europe-west1-c,
                        'europe-west2-a,
                        'europe-west1-b,
                        'europe-west4-b,
                        'europe-west3-c,
                        'europe-west4-a,
                        'europe-west3-b,
                        'europe-west2-c,
                        'europe-west1-d,
                        'us-west2-c,
                        'us-west2-b,
                        'us-west1-c,
                        'us-west2-a,
                        'us-west1-b
                      |]
                      | doc "Google Cloud zone of the cluster."
                      | optional,
                    ..
                  },
              macos_instance =
                { image | String | doc "macOS VM image." | optional, .. },
              only_if = String,
              osx_instance =
                { image | String | doc "macOS VM image." | optional, .. },
              persistent_worker =
                {
                    isolation
                      | {
                        parallels
                          | {
                            image | String | doc "Image name." | optional,
                            password | String | doc "SSH password" | optional,
                            platform
                              | std.enum.TagOrString
                              | [| 'windows, 'linux, 'darwin |]
                              | doc "Image Platform."
                              | optional,
                            user | String | doc "SSH username" | optional,
                            ..
                          }
                          | doc "Parallels VM isolation."
                          | optional,
                        ..
                      }
                      | doc "Persistent Worker isolation."
                      | optional,
                    labels | String | doc "Labels for selection." | optional,
                    ..
                  },
              skip = String,
              skip_notifications = String,
              stateful = String,
              timeout_in = String,
              trigger_type =
                std.contract.Sequence
                    [ std.enum.TagOrString, [| 'manual, 'automatic |] ],
              use_compute_credits = String,
              windows_container =
                {
                    cpu | Number | optional,
                    docker_arguments
                      | js2n.record.Record
                        {
                          additional = 'Some Dyn,
                          patterns = { ".*" = String, },
                          properties = {},
                          required = {},
                        }
                      | doc "Arguments for Docker build"
                      | optional,
                    dockerfile
                      | String
                      | doc "Relative path to Dockerfile to build container from."
                      | optional,
                    image | String | doc "Docker Image to use." | optional,
                    memory | js2n.string.Matches "\\d+(G|Mb)?" | optional,
                    os_version
                      | std.enum.TagOrString
                      | [| '"1803", '"1709", '"2019" |]
                      | doc "Windows version of container."
                      | optional,
                    use_static_ip
                      | String
                      | doc "Boolean expression that can use environment variables."
                      | optional,
                    ..
                  },
            },
        required = {},
      }