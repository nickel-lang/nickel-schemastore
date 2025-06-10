# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      ansible-navigator
        | std.contract.any_of
          [
            js2n.Null,
            Bool,
            Number,
            String,
            {
              ansible
                | {
                  cmdline
                    | String
                    | doc "Extra parameters passed to the underlying ansible command (e.g. ansible-playbook, ansible-doc, etc)"
                    | optional,
                  config
                    | std.contract.any_of
                      [
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        {
                          help
                            | js2n.Enum [ true, false ]
                            | doc "Help options for ansible-config command in stdout mode"
                            | optional,
                          path
                            | String
                            | doc "Specify the path to the ansible configuration file"
                            | optional,
                        },
                        Array Dyn
                      ]
                    | optional,
                  "doc"
                    | {
                      help
                        | js2n.Enum [ true, false ]
                        | doc "Help options for ansible-doc command in stdout mode"
                        | optional,
                      plugin
                        | {
                          name
                            | String
                            | doc "Specify the plugin name"
                            | optional,
                          type
                            | std.enum.TagOrString
                            | [|
                              'vars,
                              'test,
                              'strategy,
                              'shell,
                              'role,
                              'netconf,
                              'module,
                              'lookup,
                              'keyword,
                              'inventory,
                              'httpapi,
                              'filter,
                              'connection,
                              'cliconf,
                              'callback,
                              'cache,
                              'become
                            |]
                            | doc "Specify the plugin type, 'become', 'cache', 'callback', 'cliconf', 'connection', 'filter', 'httpapi', 'inventory', 'keyword', 'lookup', 'module', 'netconf', 'role', 'shell', 'strategy', 'test' or 'vars'"
                            | optional,
                        }
                        | optional,
                    }
                    | optional,
                  inventory
                    | std.contract.any_of
                      [
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        {
                          entries
                            | Array String
                            | doc "Specify an inventory file path or comma separated host list"
                            | optional,
                          help
                            | js2n.Enum [ true, false ]
                            | doc "Help options for ansible-inventory command in stdout mode"
                            | optional,
                        },
                        Array Dyn
                      ]
                    | optional,
                  playbook
                    | std.contract.any_of
                      [
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        {
                          help
                            | js2n.Enum [ true, false ]
                            | doc "Help options for ansible-playbook command in stdout mode"
                            | optional,
                          path
                            | String
                            | doc "Specify the playbook name"
                            | optional,
                        },
                        Array Dyn
                      ]
                    | optional,
                }
                | optional,
              ansible-builder
                | {
                  help
                    | js2n.Enum [ true, false ]
                    | doc "Help options for ansible-builder command in stdout mode"
                    | optional,
                  workdir
                    | String
                    | doc "Specify the path that contains ansible-builder manifest files"
                    | optional,
                }
                | optional,
              ansible-lint
                | {
                  config
                    | String
                    | doc "Specify the path to the ansible-lint configuration file"
                    | optional,
                  lintables
                    | String
                    | doc "Path to files on which to run ansible-lint"
                    | optional,
                }
                | optional,
              ansible-runner
                | {
                  artifact-dir
                    | String
                    | doc "The directory path to store artifacts generated by ansible-runner"
                    | optional,
                  job-events
                    | js2n.Enum [ true, false ]
                    | doc "Write ansible-runner job_events in the artifact directory"
                    | optional,
                  rotate-artifacts-count
                    | std.number.Integer
                    | doc "Keep ansible-runner artifact directories, for last n runs, if set to 0 artifact directories won't be deleted"
                    | optional,
                  timeout
                    | std.number.Integer
                    | doc "The timeout value after which ansible-runner will forcefully stop the execution"
                    | optional,
                }
                | optional,
              app
                | std.enum.TagOrString
                | [|
                  'welcome,
                  'settings,
                  'run,
                  'replay,
                  'lint,
                  'inventory,
                  'images,
                  'exec,
                  '"doc",
                  'config,
                  'collections,
                  'builder
                |]
                | doc "Subcommands"
                | optional,
              collection-doc-cache-path
                | String
                | doc "The path to collection doc cache"
                | optional,
              color
                | {
                  enable
                    | js2n.Enum [ true, false ]
                    | doc "Enable the use of color for mode interactive and stdout"
                    | optional,
                  osc4
                    | js2n.Enum [ true, false ]
                    | doc "Enable or disable terminal color changing support with OSC 4"
                    | optional,
                }
                | optional,
              editor
                | {
                  command
                    | String
                    | doc "Specify the editor command"
                    | optional,
                  console
                    | js2n.Enum [ true, false ]
                    | doc "Specify if the editor is console based"
                    | optional,
                }
                | optional,
              enable-prompts
                | js2n.Enum [ true, false ]
                | doc "Enable prompts for password and in playbooks. This will set mode to stdout and disable playbook artifact creation"
                | optional,
              exec
                | {
                  command
                    | String
                    | doc "Specify the command to run within the execution environment"
                    | optional,
                  shell
                    | js2n.Enum [ true, false ]
                    | doc "Specify the exec command should be run in a shell"
                    | optional,
                }
                | optional,
              execution-environment
                | {
                  container-engine
                    | std.enum.TagOrString
                    | [| 'docker, 'podman, 'auto |]
                    | doc "Specify the container engine (auto=podman then docker)"
                    | optional,
                  container-options
                    | Array String
                    | doc "Extra parameters passed to the container engine command"
                    | optional,
                  enabled
                    | js2n.Enum [ true, false ]
                    | doc "Enable or disable the use of an execution environment"
                    | optional,
                  environment-variables
                    | {
                      pass
                        | Array String
                        | doc "Specify an existing environment variable to be passed through to and set within the execution environment (--penv MY_VAR)"
                        | optional,
                      set
                        | { _ | Dyn }
                        | doc "Specify an environment variable and a value to be set within the execution environment (--senv MY_VAR=42)"
                        | optional,
                    }
                    | optional,
                  image
                    | String
                    | doc "Specify the name of the execution environment image"
                    | optional,
                  pull
                    | std.contract.any_of
                      [
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        {
                          arguments
                            | Array String
                            | doc "Specify any additional parameters that should be added to the pull command when pulling an execution environment from a container registry. e.g. --pa='--tls-verify=false'"
                            | optional,
                          policy
                            | std.enum.TagOrString
                            | [| 'tag, 'never, 'missing, 'always |]
                            | doc "Specify the image pull policy always:Always pull the image, missing:Pull if not locally available, never:Never pull the image, tag:if the image tag is 'latest', always pull the image, otherwise pull if not locally available"
                            | optional,
                        },
                        Array Dyn
                      ]
                    | optional,
                  volume-mounts
                    | Array
                      {
                        dest | String,
                        options | String | optional,
                        src | String,
                      }
                    | doc "Specify volume to be bind mounted within an execution environment (--eev /home/user/test:/home/user/test:Z)"
                    | optional,
                }
                | optional,
              format
                | std.enum.TagOrString
                | [| 'yaml, 'json |]
                | doc "Specify the format for stdout output."
                | optional,
              images
                | std.contract.any_of
                  [
                    js2n.Null,
                    Bool,
                    Number,
                    String,
                    {
                      details
                        | Array (
                          std.contract.Sequence
                            [
                              std.enum.TagOrString,
                              [|
                                'system_packages,
                                'redhat_release,
                                'python_version,
                                'python_packages,
                                'os_release,
                                'everything,
                                'ansible_version,
                                'ansible_collections
                              |]
                            ]
                        )
                        | doc "Provide detailed information about the selected execution environment image"
                        | optional,
                    },
                    Array Dyn
                  ]
                | optional,
              inventory-columns
                | Array String
                | doc "Specify a host attribute to show in the inventory view"
                | optional,
              logging
                | {
                  append
                    | js2n.Enum [ true, false ]
                    | doc "Specify if log messages should be appended to an existing log file, otherwise a new log file will be created per session"
                    | optional,
                  file
                    | String
                    | doc "Specify the full path for the ansible-navigator log file"
                    | optional,
                  level
                    | std.enum.TagOrString
                    | [| 'critical, 'error, 'warning, 'info, 'debug |]
                    | doc "Specify the ansible-navigator log level"
                    | optional,
                }
                | optional,
              mode
                | std.enum.TagOrString
                | [| 'interactive, 'stdout |]
                | doc "Specify the user-interface mode"
                | optional,
              playbook-artifact
                | {
                  enable
                    | js2n.Enum [ true, false ]
                    | doc "Enable or disable the creation of artifacts for completed playbooks. Note: not compatible with '--mode stdout' when playbooks require user input"
                    | optional,
                  replay
                    | String
                    | doc "Specify the path for the playbook artifact to replay"
                    | optional,
                  save-as
                    | String
                    | doc "Specify the name for artifacts created from completed playbooks. The following placeholders are available: {playbook_dir}, {playbook_name}, {playbook_status}, and {time_stamp}"
                    | optional,
                }
                | optional,
              settings
                | std.contract.any_of
                  [
                    js2n.Null,
                    Bool,
                    Number,
                    String,
                    {
                      effective
                        | Bool
                        | doc "Show the effective settings. Defaults, CLI parameters, environment variables, and the settings file will be combined"
                        | optional,
                      sample
                        | Bool
                        | doc "Generate a sample settings file"
                        | optional,
                      schema
                        | std.enum.TagOrString
                        | [| 'json |]
                        | doc "Generate a schema for the settings file ('json'= draft-07 JSON Schema)"
                        | optional,
                      sources
                        | Bool
                        | doc "Show the source of each current settings entry"
                        | optional,
                    },
                    Array Dyn
                  ]
                | optional,
              time-zone
                | String
                | doc "Specify the IANA time zone to use or 'local' to use the system time zone"
                | optional,
            },
            Array Dyn
          ],
    }