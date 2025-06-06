# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.blkio_limit" =
        {
            path
              | String
              | doc "Path to the device (e.g., '/dev/sda')."
              | optional,
            rate
              | std.contract.any_of [ std.number.Integer, String ]
              | doc "Rate limit in bytes per second or IO operations per second."
              | optional,
          },
      "definitions.blkio_weight" =
        {
            path
              | String
              | doc "Path to the device (e.g., '/dev/sda')."
              | optional,
            weight
              | std.contract.any_of [ std.number.Integer, String ]
              | doc "Relative weight for the device, between 10 and 1000."
              | optional,
          },
      "definitions.command" =
        std.contract.any_of [ js2n.Null, String, Array String ],
      "definitions.config" =
        js2n.record.Record
            {
              additional = 'None,
              patterns = { "^x-" = js2n.Always, },
              properties =
                {
                    content = String,
                    environment = String,
                    external =
                      std.contract.any_of
                          [
                            Bool,
                            String,
                            {
                              name
                                | String
                                | doc "Specifies the name of the external config. Deprecated: use the 'name' property instead."
                                | optional,
                              ..
                            }
                          ],
                    file = String,
                    labels = refs."definitions.list_or_dict",
                    name = String,
                    template_driver = String,
                  },
              required = {},
            },
      "definitions.deployment" =
        js2n.Nullable
            (js2n.record.Record
              {
                additional = 'None,
                patterns = { "^x-" = js2n.Always, },
                properties =
                  {
                      endpoint_mode = String,
                      labels = refs."definitions.list_or_dict",
                      mode = String,
                      placement =
                        js2n.record.Record
                            {
                              additional = 'None,
                              patterns = { "^x-" = js2n.Always, },
                              properties =
                                {
                                    constraints = Array String,
                                    max_replicas_per_node =
                                      std.contract.any_of
                                          [ std.number.Integer, String ],
                                    preferences =
                                      Array (
                                          js2n.record.Record
                                            {
                                              additional = 'None,
                                              patterns =
                                                { "^x-" = js2n.Always, },
                                              properties = { spread = String, },
                                              required = {},
                                            }
                                        ),
                                  },
                              required = {},
                            },
                      replicas =
                        std.contract.any_of [ std.number.Integer, String ],
                      resources =
                        js2n.record.Record
                            {
                              additional = 'None,
                              patterns = { "^x-" = js2n.Always, },
                              properties =
                                {
                                    limits =
                                      js2n.record.Record
                                          {
                                            additional = 'None,
                                            patterns = { "^x-" = js2n.Always, },
                                            properties =
                                              {
                                                  cpus =
                                                    std.contract.any_of
                                                        [ Number, String ],
                                                  memory = String,
                                                  pids =
                                                    std.contract.any_of
                                                        [
                                                          std.number.Integer,
                                                          String
                                                        ],
                                                },
                                            required = {},
                                          },
                                    reservations =
                                      js2n.record.Record
                                          {
                                            additional = 'None,
                                            patterns = { "^x-" = js2n.Always, },
                                            properties =
                                              {
                                                  cpus =
                                                    std.contract.any_of
                                                        [ Number, String ],
                                                  devices =
                                                    std.contract.Sequence
                                                        [
                                                          refs."definitions.devices",
                                                          Array Dyn
                                                        ],
                                                  generic_resources =
                                                    std.contract.Sequence
                                                        [
                                                          refs."definitions.generic_resources",
                                                          Array Dyn
                                                        ],
                                                  memory = String,
                                                },
                                            required = {},
                                          },
                                  },
                              required = {},
                            },
                      restart_policy =
                        js2n.record.Record
                            {
                              additional = 'None,
                              patterns = { "^x-" = js2n.Always, },
                              properties =
                                {
                                    condition = String,
                                    delay = String,
                                    max_attempts =
                                      std.contract.any_of
                                          [ std.number.Integer, String ],
                                    window = String,
                                  },
                              required = {},
                            },
                      rollback_config =
                        js2n.record.Record
                            {
                              additional = 'None,
                              patterns = { "^x-" = js2n.Always, },
                              properties =
                                {
                                    delay = String,
                                    failure_action = String,
                                    max_failure_ratio =
                                      std.contract.any_of [ Number, String ],
                                    monitor = String,
                                    order =
                                      std.contract.Sequence
                                          [
                                            std.enum.TagOrString,
                                            [| 'stop-first, 'start-first |]
                                          ],
                                    parallelism =
                                      std.contract.any_of
                                          [ std.number.Integer, String ],
                                  },
                              required = {},
                            },
                      update_config =
                        js2n.record.Record
                            {
                              additional = 'None,
                              patterns = { "^x-" = js2n.Always, },
                              properties =
                                {
                                    delay = String,
                                    failure_action = String,
                                    max_failure_ratio =
                                      std.contract.any_of [ Number, String ],
                                    monitor = String,
                                    order =
                                      std.contract.Sequence
                                          [
                                            std.enum.TagOrString,
                                            [| 'stop-first, 'start-first |]
                                          ],
                                    parallelism =
                                      std.contract.any_of
                                          [ std.number.Integer, String ],
                                  },
                              required = {},
                            },
                    },
                required = {},
              }),
      "definitions.development" =
        js2n.Nullable
            (js2n.record.Record
              {
                additional = 'None,
                patterns = { "^x-" = js2n.Always, },
                properties =
                  {
                      watch =
                        Array (
                            js2n.record.Record
                              {
                                additional = 'None,
                                patterns = { "^x-" = js2n.Always, },
                                properties =
                                  {
                                      action =
                                        std.contract.Sequence
                                            [
                                              std.enum.TagOrString,
                                              [|
                                                '"sync+exec",
                                                '"sync+restart",
                                                'restart,
                                                'sync,
                                                'rebuild
                                              |]
                                            ],
                                      exec =
                                        std.contract.Sequence
                                            [
                                              refs."definitions.service_hook",
                                              { _ | Dyn }
                                            ],
                                      ignore =
                                        refs."definitions.string_or_list",
                                      include =
                                        refs."definitions.string_or_list",
                                      path = String,
                                      target = String,
                                    },
                                required = { action = true, path = true, },
                              }
                          ),
                    },
                required = {},
              }),
      "definitions.devices" =
        Array (
            js2n.record.Record
              {
                additional = 'None,
                patterns = { "^x-" = js2n.Always, },
                properties =
                  {
                      capabilities =
                        std.contract.Sequence
                            [ refs."definitions.list_of_strings", Array Dyn ],
                      count =
                        std.contract.any_of [ std.number.Integer, String ],
                      device_ids =
                        std.contract.Sequence
                            [ refs."definitions.list_of_strings", Array Dyn ],
                      driver = String,
                      options = refs."definitions.list_or_dict",
                    },
                required = { capabilities = true, },
              }
          ),
      "definitions.env_file" =
        std.contract.any_of
            [
              String,
              Array (
                std.contract.any_of
                  [
                    String,
                    {
                      format
                        | String
                        | doc "Format attribute lets you to use an alternative file formats for env_file. When not set, env_file is parsed according to Compose rules."
                        | optional,
                      path | String | doc "Path to the environment file.",
                      required
                        | std.contract.any_of [ Bool, String ]
                        | doc "Whether the file is required. If true and the file doesn't exist, an error will be raised."
                        | optional,
                    }
                  ]
              )
            ],
      "definitions.extra_hosts" =
        std.contract.any_of
            [
              std.contract.Sequence
                [
                  { _ | std.contract.any_of [ String, Array String ] },
                  js2n.record.FieldsMatch ".+"
                ],
              std.contract.Sequence [ js2n.array.UniqueItems, Array String ]
            ],
      "definitions.generic_resources" =
        Array (
            js2n.record.Record
              {
                additional = 'None,
                patterns = { "^x-" = js2n.Always, },
                properties =
                  {
                      discrete_resource_spec =
                        js2n.record.Record
                            {
                              additional = 'None,
                              patterns = { "^x-" = js2n.Always, },
                              properties =
                                {
                                    kind = String,
                                    value =
                                      std.contract.any_of [ Number, String ],
                                  },
                              required = {},
                            },
                    },
                required = {},
              }
          ),
      "definitions.gpus" =
        std.contract.any_of
            [
              std.contract.Sequence [ std.enum.TagOrString, [| 'all |] ],
              Array
                {
                  capabilities
                    | refs."definitions.list_of_strings"
                    | Array Dyn
                    | doc "List of capabilities the GPU needs to have (e.g., 'compute', 'utility')."
                    | optional,
                  count
                    | std.contract.any_of [ std.number.Integer, String ]
                    | doc "Number of GPUs to use."
                    | optional,
                  device_ids
                    | refs."definitions.list_of_strings"
                    | Array Dyn
                    | doc "List of specific GPU device IDs to use."
                    | optional,
                  driver
                    | String
                    | doc "GPU driver to use (e.g., 'nvidia')."
                    | optional,
                  options
                    | refs."definitions.list_or_dict"
                    | doc "Driver-specific options for the GPU."
                    | optional,
                  ..
                }
            ],
      "definitions.healthcheck" =
        js2n.record.Record
            {
              additional = 'None,
              patterns = { "^x-" = js2n.Always, },
              properties =
                {
                    disable = std.contract.any_of [ Bool, String ],
                    interval = String,
                    retries = std.contract.any_of [ Number, String ],
                    start_interval = String,
                    start_period = String,
                    test = std.contract.any_of [ String, Array String ],
                    timeout = String,
                  },
              required = {},
            },
      "definitions.include" =
        std.contract.any_of
            [
              String,
              {
                env_file
                  | refs."definitions.string_or_list"
                  | doc "Path to the environment files to use to define default values when interpolating variables in the Compose files being parsed."
                  | optional,
                path
                  | refs."definitions.string_or_list"
                  | doc "Path to the Compose application or sub-project files to include."
                  | optional,
                project_directory
                  | String
                  | doc "Path to resolve relative paths set in the Compose file"
                  | optional,
              }
            ],
      "definitions.label_file" = std.contract.any_of [ String, Array String ],
      "definitions.list_of_strings" =
        std.contract.Sequence [ js2n.array.UniqueItems, Array String ],
      "definitions.list_or_dict" =
        std.contract.any_of
            [
              std.contract.Sequence
                [
                  {
                    _ | std.contract.any_of [ js2n.Null, Bool, Number, String ]
                  },
                  js2n.record.FieldsMatch ".+"
                ],
              std.contract.Sequence [ js2n.array.UniqueItems, Array String ]
            ],
      "definitions.network" =
        js2n.Nullable
            (js2n.record.Record
              {
                additional = 'None,
                patterns = { "^x-" = js2n.Always, },
                properties =
                  {
                      attachable = std.contract.any_of [ Bool, String ],
                      driver = String,
                      driver_opts =
                        js2n.record.Record
                            {
                              additional = 'Some Dyn,
                              patterns =
                                {
                                    "^.+$" =
                                      std.contract.any_of [ Number, String ],
                                  },
                              properties = {},
                              required = {},
                            },
                      enable_ipv4 = std.contract.any_of [ Bool, String ],
                      enable_ipv6 = std.contract.any_of [ Bool, String ],
                      external =
                        std.contract.any_of
                            [
                              Bool,
                              String,
                              js2n.record.Record
                                {
                                  additional = 'None,
                                  patterns = { "^x-" = js2n.Always, },
                                  properties = { name = String, },
                                  required = {},
                                }
                            ],
                      internal = std.contract.any_of [ Bool, String ],
                      ipam =
                        js2n.record.Record
                            {
                              additional = 'None,
                              patterns = { "^x-" = js2n.Always, },
                              properties =
                                {
                                    config =
                                      Array (
                                          js2n.record.Record
                                            {
                                              additional = 'None,
                                              patterns =
                                                { "^x-" = js2n.Always, },
                                              properties =
                                                {
                                                    aux_addresses =
                                                      std.contract.Sequence
                                                          [
                                                            { _ | String },
                                                            js2n.record.FieldsMatch
                                                              "^.+$"
                                                          ],
                                                    gateway = String,
                                                    ip_range = String,
                                                    subnet = String,
                                                  },
                                              required = {},
                                            }
                                        ),
                                    driver = String,
                                    options =
                                      std.contract.Sequence
                                          [
                                            { _ | String },
                                            js2n.record.FieldsMatch "^.+$"
                                          ],
                                  },
                              required = {},
                            },
                      labels = refs."definitions.list_or_dict",
                      name = String,
                    },
                required = {},
              }),
      "definitions.secret" =
        js2n.record.Record
            {
              additional = 'None,
              patterns = { "^x-" = js2n.Always, },
              properties =
                {
                    driver = String,
                    driver_opts =
                      js2n.record.Record
                          {
                            additional = 'Some Dyn,
                            patterns =
                              {
                                  "^.+$" =
                                    std.contract.any_of [ Number, String ],
                                },
                            properties = {},
                            required = {},
                          },
                    environment = String,
                    external =
                      std.contract.any_of
                          [
                            Bool,
                            String,
                            {
                              name
                                | String
                                | doc "Specifies the name of the external secret."
                                | optional,
                              ..
                            }
                          ],
                    file = String,
                    labels = refs."definitions.list_or_dict",
                    name = String,
                    template_driver = String,
                  },
              required = {},
            },
      "definitions.service" =
        js2n.record.Record
            {
              additional = 'None,
              patterns = { "^x-" = js2n.Always, },
              properties =
                {
                    annotations = refs."definitions.list_or_dict",
                    attach = std.contract.any_of [ Bool, String ],
                    blkio_config =
                      {
                          device_read_bps
                            | Array (
                              std.contract.Sequence
                                [ refs."definitions.blkio_limit", { _ | Dyn } ]
                            )
                            | doc "Limit read rate (bytes per second) from a device."
                            | optional,
                          device_read_iops
                            | Array (
                              std.contract.Sequence
                                [ refs."definitions.blkio_limit", { _ | Dyn } ]
                            )
                            | doc "Limit read rate (IO per second) from a device."
                            | optional,
                          device_write_bps
                            | Array (
                              std.contract.Sequence
                                [ refs."definitions.blkio_limit", { _ | Dyn } ]
                            )
                            | doc "Limit write rate (bytes per second) to a device."
                            | optional,
                          device_write_iops
                            | Array (
                              std.contract.Sequence
                                [ refs."definitions.blkio_limit", { _ | Dyn } ]
                            )
                            | doc "Limit write rate (IO per second) to a device."
                            | optional,
                          weight
                            | std.contract.any_of [ std.number.Integer, String ]
                            | doc "Block IO weight (relative weight) for the service, between 10 and 1000."
                            | optional,
                          weight_device
                            | Array (
                              std.contract.Sequence
                                [ refs."definitions.blkio_weight", { _ | Dyn } ]
                            )
                            | doc "Block IO weight (relative weight) for specific devices."
                            | optional,
                        },
                    build =
                      std.contract.any_of
                          [
                            String,
                            js2n.record.Record
                              {
                                additional = 'None,
                                patterns = { "^x-" = js2n.Always, },
                                properties =
                                  {
                                      additional_contexts =
                                        refs."definitions.list_or_dict",
                                      args = refs."definitions.list_or_dict",
                                      cache_from = Array String,
                                      cache_to = Array String,
                                      context = String,
                                      dockerfile = String,
                                      dockerfile_inline = String,
                                      entitlements = Array String,
                                      extra_hosts =
                                        refs."definitions.extra_hosts",
                                      isolation = String,
                                      labels = refs."definitions.list_or_dict",
                                      network = String,
                                      no_cache =
                                        std.contract.any_of [ Bool, String ],
                                      platforms = Array String,
                                      privileged =
                                        std.contract.any_of [ Bool, String ],
                                      pull =
                                        std.contract.any_of [ Bool, String ],
                                      secrets =
                                        std.contract.Sequence
                                            [
                                              refs."definitions.service_config_or_secret",
                                              Array Dyn
                                            ],
                                      shm_size =
                                        std.contract.any_of
                                            [ std.number.Integer, String ],
                                      ssh = refs."definitions.list_or_dict",
                                      tags = Array String,
                                      target = String,
                                      ulimits =
                                        std.contract.Sequence
                                            [
                                              refs."definitions.ulimits",
                                              { _ | Dyn }
                                            ],
                                    },
                                required = {},
                              }
                          ],
                    cap_add =
                      std.contract.Sequence
                          [ js2n.array.UniqueItems, Array String ],
                    cap_drop =
                      std.contract.Sequence
                          [ js2n.array.UniqueItems, Array String ],
                    cgroup =
                      std.contract.Sequence
                          [ std.enum.TagOrString, [| 'private, 'host |] ],
                    cgroup_parent = String,
                    command = refs."definitions.command",
                    configs =
                      std.contract.Sequence
                          [
                            refs."definitions.service_config_or_secret",
                            Array Dyn
                          ],
                    container_name = String,
                    cpu_count =
                      std.contract.any_of
                          [
                            String,
                            std.contract.Sequence
                              [ std.number.Integer, js2n.number.Minimum 0 ]
                          ],
                    cpu_percent =
                      std.contract.any_of
                          [
                            String,
                            std.contract.Sequence
                              [
                                std.number.Integer,
                                js2n.number.Maximum 100,
                                js2n.number.Minimum 0
                              ]
                          ],
                    cpu_period = std.contract.any_of [ Number, String ],
                    cpu_quota = std.contract.any_of [ Number, String ],
                    cpu_rt_period = std.contract.any_of [ Number, String ],
                    cpu_rt_runtime = std.contract.any_of [ Number, String ],
                    cpu_shares = std.contract.any_of [ Number, String ],
                    cpus = std.contract.any_of [ Number, String ],
                    cpuset = String,
                    credential_spec =
                      js2n.record.Record
                          {
                            additional = 'None,
                            patterns = { "^x-" = js2n.Always, },
                            properties =
                              {
                                  config = String,
                                  file = String,
                                  registry = String,
                                },
                            required = {},
                          },
                    depends_on =
                      std.contract.any_of
                          [
                            std.contract.Sequence
                              [ refs."definitions.list_of_strings", Array Dyn ],
                            std.contract.Sequence
                              [
                                {
                                  _ | js2n.record.Record
                                    {
                                      additional = 'None,
                                      patterns = { "^x-" = js2n.Always, },
                                      properties =
                                        {
                                            condition =
                                              std.contract.Sequence
                                                  [
                                                    std.enum.TagOrString,
                                                    [|
                                                      'service_completed_successfully,
                                                      'service_healthy,
                                                      'service_started
                                                    |]
                                                  ],
                                            required = Bool,
                                            restart =
                                              std.contract.any_of
                                                  [ Bool, String ],
                                          },
                                      required = { condition = true, },
                                    }
                                },
                                js2n.record.FieldsMatch "^[a-zA-Z0-9._-]+$"
                              ]
                          ],
                    deploy =
                      std.contract.Sequence
                          [
                            refs."definitions.deployment",
                            js2n.Nullable ({ _ | Dyn })
                          ],
                    develop =
                      std.contract.Sequence
                          [
                            refs."definitions.development",
                            js2n.Nullable ({ _ | Dyn })
                          ],
                    device_cgroup_rules =
                      std.contract.Sequence
                          [ refs."definitions.list_of_strings", Array Dyn ],
                    devices =
                      Array (
                          std.contract.any_of
                            [
                              String,
                              js2n.record.Record
                                {
                                  additional = 'None,
                                  patterns = { "^x-" = js2n.Always, },
                                  properties =
                                    {
                                        permissions = String,
                                        source = String,
                                        target = String,
                                      },
                                  required = { source = true, },
                                }
                            ]
                        ),
                    dns = refs."definitions.string_or_list",
                    dns_opt =
                      std.contract.Sequence
                          [ js2n.array.UniqueItems, Array String ],
                    dns_search = refs."definitions.string_or_list",
                    domainname = String,
                    entrypoint = refs."definitions.command",
                    env_file = refs."definitions.env_file",
                    environment = refs."definitions.list_or_dict",
                    expose =
                      std.contract.Sequence
                          [
                            js2n.array.UniqueItems,
                            Array (std.contract.any_of [ Number, String ])
                          ],
                    extends =
                      std.contract.any_of
                          [
                            String,
                            {
                              file
                                | String
                                | doc "The file path where the service to extend is defined."
                                | optional,
                              service
                                | String
                                | doc "The name of the service to extend.",
                            }
                          ],
                    external_links =
                      std.contract.Sequence
                          [ js2n.array.UniqueItems, Array String ],
                    extra_hosts = refs."definitions.extra_hosts",
                    gpus = refs."definitions.gpus",
                    group_add =
                      std.contract.Sequence
                          [
                            js2n.array.UniqueItems,
                            Array (std.contract.any_of [ Number, String ])
                          ],
                    healthcheck =
                      std.contract.Sequence
                          [ refs."definitions.healthcheck", { _ | Dyn } ],
                    hostname = String,
                    image = String,
                    init = std.contract.any_of [ Bool, String ],
                    ipc = String,
                    isolation = String,
                    label_file = refs."definitions.label_file",
                    labels = refs."definitions.list_or_dict",
                    links =
                      std.contract.Sequence
                          [ js2n.array.UniqueItems, Array String ],
                    logging =
                      js2n.record.Record
                          {
                            additional = 'None,
                            patterns = { "^x-" = js2n.Always, },
                            properties =
                              {
                                  driver = String,
                                  options =
                                    js2n.record.Record
                                        {
                                          additional = 'Some Dyn,
                                          patterns =
                                            {
                                                "^.+$" =
                                                  std.contract.any_of
                                                      [
                                                        js2n.Null,
                                                        Number,
                                                        String
                                                      ],
                                              },
                                          properties = {},
                                          required = {},
                                        },
                                },
                            required = {},
                          },
                    mac_address = String,
                    mem_limit = std.contract.any_of [ Number, String ],
                    mem_reservation =
                      std.contract.any_of [ std.number.Integer, String ],
                    mem_swappiness =
                      std.contract.any_of [ std.number.Integer, String ],
                    memswap_limit = std.contract.any_of [ Number, String ],
                    network_mode = String,
                    networks =
                      std.contract.any_of
                          [
                            std.contract.Sequence
                              [ refs."definitions.list_of_strings", Array Dyn ],
                            std.contract.Sequence
                              [
                                {
                                  _ | js2n.Nullable
                                    (js2n.record.Record
                                      {
                                        additional = 'None,
                                        patterns = { "^x-" = js2n.Always, },
                                        properties =
                                          {
                                              aliases =
                                                std.contract.Sequence
                                                    [
                                                      refs."definitions.list_of_strings",
                                                      Array Dyn
                                                    ],
                                              driver_opts =
                                                js2n.record.Record
                                                    {
                                                      additional = 'Some Dyn,
                                                      patterns =
                                                        {
                                                            "^.+$" =
                                                              std.contract.any_of
                                                                  [
                                                                    Number,
                                                                    String
                                                                  ],
                                                          },
                                                      properties = {},
                                                      required = {},
                                                    },
                                              gw_priority = Number,
                                              interface_name = String,
                                              ipv4_address = String,
                                              ipv6_address = String,
                                              link_local_ips =
                                                std.contract.Sequence
                                                    [
                                                      refs."definitions.list_of_strings",
                                                      Array Dyn
                                                    ],
                                              mac_address = String,
                                              "priority" = Number,
                                            },
                                        required = {},
                                      })
                                },
                                js2n.record.FieldsMatch "^[a-zA-Z0-9._-]+$"
                              ]
                          ],
                    oom_kill_disable = std.contract.any_of [ Bool, String ],
                    oom_score_adj =
                      std.contract.any_of
                          [
                            String,
                            std.contract.Sequence
                              [
                                std.number.Integer,
                                js2n.number.Maximum 1000,
                                js2n.number.Minimum (-1000)
                              ]
                          ],
                    pid = js2n.Nullable String,
                    pids_limit = std.contract.any_of [ Number, String ],
                    platform = String,
                    ports =
                      std.contract.Sequence
                          [
                            js2n.array.UniqueItems,
                            Array (
                              std.contract.any_of
                                [
                                  Number,
                                  String,
                                  js2n.record.Record
                                    {
                                      additional = 'None,
                                      patterns = { "^x-" = js2n.Always, },
                                      properties =
                                        {
                                            app_protocol = String,
                                            host_ip = String,
                                            mode = String,
                                            name = String,
                                            protocol = String,
                                            published =
                                              std.contract.any_of
                                                  [
                                                    std.number.Integer,
                                                    String
                                                  ],
                                            target =
                                              std.contract.any_of
                                                  [
                                                    std.number.Integer,
                                                    String
                                                  ],
                                          },
                                      required = {},
                                    }
                                ]
                            )
                          ],
                    post_start =
                      Array (
                          std.contract.Sequence
                            [ refs."definitions.service_hook", { _ | Dyn } ]
                        ),
                    pre_stop =
                      Array (
                          std.contract.Sequence
                            [ refs."definitions.service_hook", { _ | Dyn } ]
                        ),
                    privileged = std.contract.any_of [ Bool, String ],
                    profiles =
                      std.contract.Sequence
                          [ refs."definitions.list_of_strings", Array Dyn ],
                    provider =
                      js2n.record.Record
                          {
                            additional = 'None,
                            patterns = { "^x-" = js2n.Always, },
                            properties =
                              {
                                  options =
                                    js2n.record.Record
                                        {
                                          additional = 'Some Dyn,
                                          patterns =
                                            {
                                                "^.+$" =
                                                  std.contract.any_of
                                                      [
                                                        js2n.Null,
                                                        Number,
                                                        String
                                                      ],
                                              },
                                          properties = {},
                                          required = {},
                                        },
                                  type = String,
                                },
                            required = {},
                          },
                    pull_policy =
                      js2n.string.Matches
                          "always|never|build|if_not_present|missing|refresh|daily|weekly|every_([0-9]+[wdhms])+",
                    pull_refresh_after = String,
                    read_only = std.contract.any_of [ Bool, String ],
                    restart = String,
                    runtime = String,
                    scale = std.contract.any_of [ std.number.Integer, String ],
                    secrets =
                      std.contract.Sequence
                          [
                            refs."definitions.service_config_or_secret",
                            Array Dyn
                          ],
                    security_opt =
                      std.contract.Sequence
                          [ js2n.array.UniqueItems, Array String ],
                    shm_size = std.contract.any_of [ Number, String ],
                    stdin_open = std.contract.any_of [ Bool, String ],
                    stop_grace_period = String,
                    stop_signal = String,
                    storage_opt = { _ | Dyn },
                    sysctls = refs."definitions.list_or_dict",
                    tmpfs = refs."definitions.string_or_list",
                    tty = std.contract.any_of [ Bool, String ],
                    ulimits =
                      std.contract.Sequence
                          [ refs."definitions.ulimits", { _ | Dyn } ],
                    user = String,
                    userns_mode = String,
                    uts = String,
                    volumes =
                      std.contract.Sequence
                          [
                            js2n.array.UniqueItems,
                            Array (
                              std.contract.any_of
                                [
                                  String,
                                  js2n.record.Record
                                    {
                                      additional = 'None,
                                      patterns = { "^x-" = js2n.Always, },
                                      properties =
                                        {
                                            bind =
                                              js2n.record.Record
                                                  {
                                                    additional = 'None,
                                                    patterns =
                                                      { "^x-" = js2n.Always, },
                                                    properties =
                                                      {
                                                          create_host_path =
                                                            std.contract.any_of
                                                                [
                                                                  Bool,
                                                                  String
                                                                ],
                                                          propagation = String,
                                                          recursive =
                                                            std.contract.Sequence
                                                                [
                                                                  std.enum.TagOrString,
                                                                  [|
                                                                    'readonly,
                                                                    'writable,
                                                                    'disabled,
                                                                    'enabled
                                                                  |]
                                                                ],
                                                          selinux =
                                                            std.contract.Sequence
                                                                [
                                                                  std.enum.TagOrString,
                                                                  [| 'Z, 'z |]
                                                                ],
                                                        },
                                                    required = {},
                                                  },
                                            consistency = String,
                                            image =
                                              js2n.record.Record
                                                  {
                                                    additional = 'None,
                                                    patterns =
                                                      { "^x-" = js2n.Always, },
                                                    properties =
                                                      { subpath = String, },
                                                    required = {},
                                                  },
                                            read_only =
                                              std.contract.any_of
                                                  [ Bool, String ],
                                            source = String,
                                            target = String,
                                            tmpfs =
                                              js2n.record.Record
                                                  {
                                                    additional = 'None,
                                                    patterns =
                                                      { "^x-" = js2n.Always, },
                                                    properties =
                                                      {
                                                          mode =
                                                            std.contract.any_of
                                                                [
                                                                  Number,
                                                                  String
                                                                ],
                                                          size =
                                                            std.contract.any_of
                                                                [
                                                                  std.contract.Sequence
                                                                    [
                                                                      std.number.Integer,
                                                                      js2n.number.Minimum
                                                                        0
                                                                    ],
                                                                  String
                                                                ],
                                                        },
                                                    required = {},
                                                  },
                                            type =
                                              std.contract.Sequence
                                                  [
                                                    std.enum.TagOrString,
                                                    [|
                                                      'image,
                                                      'npipe,
                                                      'cluster,
                                                      'tmpfs,
                                                      'volume,
                                                      'bind
                                                    |]
                                                  ],
                                            volume =
                                              js2n.record.Record
                                                  {
                                                    additional = 'None,
                                                    patterns =
                                                      { "^x-" = js2n.Always, },
                                                    properties =
                                                      {
                                                          labels =
                                                            refs."definitions.list_or_dict",
                                                          nocopy =
                                                            std.contract.any_of
                                                                [
                                                                  Bool,
                                                                  String
                                                                ],
                                                          subpath = String,
                                                        },
                                                    required = {},
                                                  },
                                          },
                                      required = { type = true, },
                                    }
                                ]
                            )
                          ],
                    volumes_from =
                      std.contract.Sequence
                          [ js2n.array.UniqueItems, Array String ],
                    working_dir = String,
                  },
              required = {},
            },
      "definitions.service_config_or_secret" =
        Array (
            std.contract.any_of
              [
                String,
                js2n.record.Record
                  {
                    additional = 'None,
                    patterns = { "^x-" = js2n.Always, },
                    properties =
                      {
                          gid = String,
                          mode = std.contract.any_of [ Number, String ],
                          source = String,
                          target = String,
                          uid = String,
                        },
                    required = {},
                  }
              ]
          ),
      "definitions.service_hook" =
        js2n.record.Record
            {
              additional = 'None,
              patterns = { "^x-" = js2n.Always, },
              properties =
                {
                    command = refs."definitions.command",
                    environment = refs."definitions.list_or_dict",
                    privileged = std.contract.any_of [ Bool, String ],
                    user = String,
                    working_dir = String,
                  },
              required = { command = true, },
            },
      "definitions.string_or_list" =
        std.contract.any_of
            [
              String,
              std.contract.Sequence
                [ refs."definitions.list_of_strings", Array Dyn ]
            ],
      "definitions.ulimits" =
        js2n.record.Record
            {
              additional = 'Some Dyn,
              patterns =
                {
                    "^[a-z]+$" =
                      js2n.OneOf
                          [
                            std.contract.any_of [ std.number.Integer, String ],
                            js2n.record.Record
                              {
                                additional = 'None,
                                patterns = { "^x-" = js2n.Always, },
                                properties =
                                  {
                                      hard =
                                        std.contract.any_of
                                            [ std.number.Integer, String ],
                                      soft =
                                        std.contract.any_of
                                            [ std.number.Integer, String ],
                                    },
                                required = { hard = true, soft = true, },
                              }
                          ],
                  },
              properties = {},
              required = {},
            },
      "definitions.volume" =
        js2n.Nullable
            (js2n.record.Record
              {
                additional = 'None,
                patterns = { "^x-" = js2n.Always, },
                properties =
                  {
                      driver = String,
                      driver_opts =
                        js2n.record.Record
                            {
                              additional = 'Some Dyn,
                              patterns =
                                {
                                    "^.+$" =
                                      std.contract.any_of [ Number, String ],
                                  },
                              properties = {},
                              required = {},
                            },
                      external =
                        std.contract.any_of
                            [
                              Bool,
                              String,
                              js2n.record.Record
                                {
                                  additional = 'None,
                                  patterns = { "^x-" = js2n.Always, },
                                  properties = { name = String, },
                                  required = {},
                                }
                            ],
                      labels = refs."definitions.list_or_dict",
                      name = String,
                    },
                required = {},
              }),
    }
    in
  js2n.record.Record
      {
        additional = 'None,
        patterns = { "^x-" = js2n.Always, },
        properties =
          {
              configs =
                std.contract.Sequence
                    [
                      { _ | refs."definitions.config" },
                      js2n.record.FieldsMatch "^[a-zA-Z0-9._-]+$"
                    ],
              include = Array refs."definitions.include",
              name = String,
              networks =
                js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns =
                        { "^[a-zA-Z0-9._-]+$" = refs."definitions.network", },
                      properties = {},
                      required = {},
                    },
              secrets =
                std.contract.Sequence
                    [
                      { _ | refs."definitions.secret" },
                      js2n.record.FieldsMatch "^[a-zA-Z0-9._-]+$"
                    ],
              services =
                std.contract.Sequence
                    [
                      { _ | refs."definitions.service" },
                      js2n.record.FieldsMatch "^[a-zA-Z0-9._-]+$"
                    ],
              version = String,
              volumes =
                std.contract.Sequence
                    [
                      { _ | refs."definitions.volume" },
                      js2n.record.FieldsMatch "^[a-zA-Z0-9._-]+$"
                    ],
            },
        required = {},
      }