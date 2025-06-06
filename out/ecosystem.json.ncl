# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.app" =
        js2n.record.Record
            {
              additional = 'Some Dyn,
              patterns = { "^env_\\S+$" = { _ | String }, },
              properties =
                {
                    append_env_to_name = Bool,
                    args = std.contract.any_of [ String, Array String ],
                    automation = Bool,
                    autorestart = Bool,
                    combine_logs = Bool,
                    cron_restart = String,
                    cwd = String,
                    disable_logs = Bool,
                    disable_source_map_support = Bool,
                    disable_trace = Bool,
                    env = { _ | String },
                    env_ = { _ | String },
                    error_file = String,
                    exec_mode =
                      std.contract.Sequence
                          [ std.enum.TagOrString, [| 'cluster, 'fork |] ],
                    filter_env = Array String,
                    "force" = Bool,
                    gid = String,
                    ignore_watch = std.contract.any_of [ String, Array String ],
                    increment_var = String,
                    instance_var = String,
                    instances = Number,
                    interpreter = String,
                    interpreter_args =
                      std.contract.any_of [ String, Array String ],
                    kill_timeout = Number,
                    listen_timeout = Number,
                    log_date_format = String,
                    log_type =
                      std.contract.Sequence
                          [ std.enum.TagOrString, [| 'json |] ],
                    max_memory_restart = Number,
                    max_restarts = Number,
                    merge_logs = Bool,
                    min_uptime = Number,
                    name = String,
                    out_file = String,
                    pid_file = String,
                    pmx = Bool,
                    port = Number,
                    post_update = Array String,
                    restart_delay = Number,
                    script = String,
                    shutdown_with_message = Bool,
                    source_map_support = Bool,
                    trace = Bool,
                    treekill = Bool,
                    uid = String,
                    vizion = Bool,
                    wait_ready = Bool,
                    watch = Bool,
                    watch_options = { _ | Dyn },
                  },
              required = { script = true, },
            },
      "definitions.deploymentEnvironment" =
        {
            host
              | std.contract.any_of [ String, Array String ]
              | doc "SSH host"
              | optional,
            key
              | String
              | doc "SSH key path. Defaults to $HOME/.ssh"
              | optional,
            path | String | doc "path in the server" | optional,
            post-deploy | String | doc "post-deploy action" | optional,
            post-setup
              | String
              | doc "Post-setup commands or path to a script on the host machine"
              | optional,
            pre-deploy-local | String | doc "pre-deploy action" | optional,
            pre-setup
              | String
              | doc "Pre-setup command or path to a script on your local machine"
              | optional,
            ref | String | doc "GIT remote/branch" | optional,
            repo | String | doc "GIT remote" | optional,
            ssh_options
              | std.contract.any_of [ String, Array String ]
              | doc "SSH options with no command-line flag, see 'man ssh'"
              | optional,
            user | String | doc "SSH user" | optional,
            ..
          },
    }
    in
  {
      apps
        | Array refs."definitions.app"
        | doc "The apps property is an array of object where each object contains the configuration for each process."
        | optional,
      deploy
        | {
          development | refs."definitions.deploymentEnvironment" | optional,
          production | refs."definitions.deploymentEnvironment" | optional,
          staging | refs."definitions.deploymentEnvironment" | optional,
          ..
        }
        | doc "The deploy property is an object where each of its properties is an object which defines a deployment environment."
        | optional,
      ..
    }