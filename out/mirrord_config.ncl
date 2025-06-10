# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.AdvancedFsUserConfig" =
        {
            local
              | js2n.Nullable
                (std.contract.Sequence
                  [
                    refs."definitions.VecOrSingle_for_String",
                    std.contract.any_of [ Array Dyn, String ]
                  ])
              | doc "Specify file path patterns that if matched will be opened locally."
              | optional,
            mapping
              | js2n.Nullable ({ _ | String })
              | doc m%"
                Specify map of patterns that if matched will replace the path according to specification.
                
                *Capture groups are allowed.*
                
                Example: ```json { "^/home/(?<user>\\S+)/dev/tomcat": "/etc/tomcat" "^/home/(?<user>\\S+)/dev/config/(?<app>\\S+)": "/mnt/configs/${user}-$app" } ``` Will do the next replacements for any io operaton
                
                `/home/johndoe/dev/tomcat/context.xml` => `/etc/tomcat/context.xml` `/home/johndoe/dev/config/api/app.conf` => `/mnt/configs/johndoe-api/app.conf`
                
                - Relative paths: this feature (currently) does not apply mappings to relative paths, e.g. `../dev`.
              "%
              | optional,
            mode | js2n.Nullable refs."definitions.FsModeConfig" | optional,
            not_found
              | js2n.Nullable
                (std.contract.Sequence
                  [
                    refs."definitions.VecOrSingle_for_String",
                    std.contract.any_of [ Array Dyn, String ]
                  ])
              | doc "Specify file path patterns that if matched will be treated as non-existent."
              | optional,
            read_only
              | js2n.Nullable
                (std.contract.Sequence
                  [
                    refs."definitions.VecOrSingle_for_String",
                    std.contract.any_of [ Array Dyn, String ]
                  ])
              | doc "Specify file path patterns that if matched will be read from the remote. if file matching the pattern is opened for writing or read/write it will be opened locally."
              | optional,
            read_write
              | js2n.Nullable
                (std.contract.Sequence
                  [
                    refs."definitions.VecOrSingle_for_String",
                    std.contract.any_of [ Array Dyn, String ]
                  ])
              | doc "Specify file path patterns that if matched will be read and written to the remote."
              | optional,
            readonly_file_buffer
              | js2n.Nullable
                (std.contract.Sequence
                  [ std.number.Integer, js2n.number.Minimum 0 ])
              | doc m%"
                Sets buffer size for read-only remote files in bytes. By default, the value is 128000 bytes, or 128 kB.
                
                Setting the value to 0 disables file buffering. Otherwise, read-only remote files will be read in chunks and buffered locally. This improves performance when the user application reads data in small portions.
              "%
              | optional,
          },
      "definitions.AgentFileConfig" =
        {
            annotations
              | js2n.Nullable ({ _ | String })
              | doc m%"
                Allows setting up custom annotations for the agent Job and Pod.
                
                ```json { "annotations": { "cats.io/inject": "enabled" "prometheus.io/scrape": "true", "prometheus.io/port": "9000" } } ```
              "%
              | optional,
            check_out_of_pods
              | js2n.Nullable Bool
              | doc m%"
                Determine if to check whether there is room for agent job in target node. (Not applicable when using ephemeral containers feature)
                
                Can be disabled if the check takes too long and you are sure there is enough resources on each node
              "%
              | optional,
            communication_timeout
              | js2n.Nullable
                (std.contract.Sequence
                  [ std.number.Integer, js2n.number.Minimum 0 ])
              | doc m%"
                Controls how long the agent lives when there are no connections.
                
                Each connection has its own heartbeat mechanism, so even if the local application has no messages, the agent stays alive until there are no more heartbeat messages.
              "%
              | optional,
            disabled_capabilities
              | js2n.Nullable
                (Array (
                  std.contract.Sequence
                    [ refs."definitions.LinuxCapability", String ]
                ))
              | doc m%"
                Disables specified Linux capabilities for the agent container. If nothing is disabled here, agent uses `NET_ADMIN`, `NET_RAW`, `SYS_PTRACE` and `SYS_ADMIN`.
                
                Has no effect when using the targetless mode, as targetless agent containers have no capabilities.
              "%
              | optional,
            dns
              | js2n.Nullable
                (std.contract.Sequence
                  [ refs."definitions.FileAgentDnsConfig", { _ | Dyn } ])
              | optional,
            ephemeral
              | js2n.Nullable Bool
              | doc m%"
                Runs the agent as an [ephemeral container](https://kubernetes.io/docs/concepts/workloads/pods/ephemeral-containers/).
                
                Not compatible with targetless runs.
                
                Defaults to `false`.
              "%
              | optional,
            exclude_from_mesh
              | js2n.Nullable Bool
              | doc "When running the agent as an ephemeral container, use this option to exclude the agent's port from the service mesh sidecar proxy."
              | optional,
            flush_connections
              | js2n.Nullable Bool
              | doc m%"
                Flushes existing connections when starting to steal, might fix issues where connections aren't stolen (due to being already established)
                
                Defaults to `true`.
              "%
              | optional,
            image
              | js2n.Nullable refs."definitions.AgentImageFileConfig"
              | doc m%"
                Name of the agent's docker image.
                
                Useful when a custom build of mirrord-agent is required, or when using an internal registry.
                
                Defaults to the latest stable image `"ghcr.io/metalbear-co/mirrord:latest"`.
                
                ```json { "image": "internal.repo/images/mirrord:latest" } ```
                
                Complete setup:
                
                ```json { "image": { "registry": "internal.repo/images/mirrord", "tag": "latest" } } ```
              "%
              | optional,
            image_pull_policy
              | js2n.Nullable String
              | doc m%"
                Controls when a new agent image is downloaded.
                
                Supports `"IfNotPresent"`, `"Always"`, `"Never"`, or any valid kubernetes [image pull policy](https://kubernetes.io/docs/concepts/containers/images/#image-pull-policy)
                
                Defaults to `"IfNotPresent"`
              "%
              | optional,
            image_pull_secrets
              | js2n.Nullable
                (Array (
                  std.contract.Sequence
                    [ refs."definitions.AgentPullSecret", { _ | Dyn } ]
                ))
              | doc m%"
                List of secrets the agent pod has access to.
                
                Takes an array of entries with the format `{ name: <secret-name> }`.
                
                Read more [here](https://kubernetes.io/docs/concepts/containers/images/#referring-to-an-imagepullsecrets-on-a-pod).
                
                ```json { "agent": { "image_pull_secrets": [ { "name": "secret-key-1" }, { "name": "secret-key-2" } ] } } ```
              "%
              | optional,
            json_log
              | js2n.Nullable Bool
              | doc m%"
                Controls whether the agent produces logs in a human-friendly format, or json.
                
                ```json { "agent": { "json_log": true } } ```
              "%
              | optional,
            labels
              | js2n.Nullable ({ _ | String })
              | doc m%"
                Allows setting up custom labels for the agent Job and Pod.
                
                ```json { "labels": { "user": "meow", "state": "asleep" } } ```
              "%
              | optional,
            log_level
              | js2n.Nullable String
              | doc m%"
                Log level for the agent.
                
                Supports `"trace"`, `"debug"`, `"info"`, `"warn"`, `"error"`, or any string that would work with `RUST_LOG`.
                
                ```json { "agent": { "log_level": "mirrord=debug,warn" } } ```
              "%
              | optional,
            metrics
              | js2n.Nullable String
              | doc m%"
                Enables prometheus metrics for the agent pod.
                
                You might need to add annotations to the agent pod depending on how prometheus is configured to scrape for metrics.
                
                ```json { "metrics": "0.0.0.0:9000" } ```
              "%
              | optional,
            namespace
              | js2n.Nullable String
              | doc m%"
                Namespace where the agent shall live.
                
                **Note:** ignored in targetless runs or when the agent is run as an ephemeral container.
                
                Defaults to the current kubernetes namespace.
              "%
              | optional,
            network_interface
              | js2n.Nullable String
              | doc m%"
                Which network interface to use for mirroring.
                
                The default behavior is try to access the internet and use that interface. If that fails it uses `eth0`.
              "%
              | optional,
            nftables
              | js2n.Nullable Bool
              | doc m%"
                Use iptables-nft instead of iptables-legacy. Defaults to `false`.
                
                Needed if your mesh uses nftables instead of iptables-legacy,
              "%
              | optional,
            node_selector
              | js2n.Nullable ({ _ | String })
              | doc m%"
                Allows setting up custom node selector for the agent Pod. Applies only to targetless runs, as targeted agent always runs on the same node as its target container.
                
                ```json { "node_selector": { "kubernetes.io/hostname": "node1" } } ```
              "%
              | optional,
            privileged
              | js2n.Nullable Bool
              | doc m%"
                Run the mirror agent as privileged container. Defaults to `false`.
                
                Might be needed in strict environments such as Bottlerocket.
                
                Has no effect when using the targetless mode, as targetless agent containers are never privileged.
              "%
              | optional,
            resources
              | js2n.Nullable
                (std.contract.Sequence
                  [
                    refs."definitions.io.k8s.api.core.v1.ResourceRequirements",
                    { _ | Dyn }
                  ])
              | doc "Set pod resource reqirements. (not with ephemeral agents) Default is ```json { \"requests\": { \"cpu\": \"1m\", \"memory\": \"1Mi\" }, \"limits\": { \"cpu\": \"100m\", \"memory\": \"100Mi\" } } ```"
              | optional,
            service_account
              | js2n.Nullable String
              | doc m%"
                Allows setting up custom Service Account for the agent Job and Pod.
                
                ```json { "service_account": "my-service-account" } ```
              "%
              | optional,
            startup_timeout
              | js2n.Nullable
                (std.contract.Sequence
                  [ std.number.Integer, js2n.number.Minimum 0 ])
              | doc m%"
                Controls how long to wait for the agent to finish initialization.
                
                If initialization takes longer than this value, mirrord exits.
                
                Defaults to `60`.
              "%
              | optional,
            tolerations
              | js2n.Nullable
                (Array (
                  std.contract.Sequence
                    [
                      refs."definitions.io.k8s.api.core.v1.Toleration",
                      { _ | Dyn }
                    ]
                ))
              | doc m%"
                Set pod tolerations. (not with ephemeral agents).
                
                Defaults to `operator: Exists`.
                
                ```json [ { "key": "meow", "operator": "Exists", "effect": "NoSchedule" } ] ```
                
                Set to an empty array to have no tolerations at all
              "%
              | optional,
            ttl
              | js2n.Nullable
                (std.contract.Sequence
                  [ std.number.Integer, js2n.number.Minimum 0 ])
              | doc m%"
                Controls how long the agent pod persists for after the agent exits (in seconds).
                
                Can be useful for collecting logs.
                
                Defaults to `1`.
              "%
              | optional,
          },
      "definitions.AgentImageFileConfig" =
        std.contract.any_of
            [
              js2n.Null,
              String,
              {
                registry | js2n.Nullable String | optional,
                tag | js2n.Nullable String | optional,
              }
            ],
      "definitions.AgentPullSecret" =
        { name | String | doc "Name of the secret.", .. },
      "definitions.ConcurrentSteal" =
        js2n.OneOf
            [
              std.contract.Sequence [ std.enum.TagOrString, [| 'override |] ],
              std.contract.Sequence [ std.enum.TagOrString, [| 'continue |] ],
              std.contract.Sequence [ std.enum.TagOrString, [| 'abort |] ]
            ],
      "definitions.ContainerFileConfig" =
        {
            cli_extra_args
              | js2n.Nullable (Array String)
              | doc m%"
                Any extra args to use when creating the sidecar mirrord-cli container.
                
                This is useful when you want to use portforwarding, passing `-p local:container` won't work for main command but adding them here will work ```json { "container": { "cli_extra_args": ["-p", "local:container"] } } ```
              "%
              | optional,
            cli_image
              | js2n.Nullable String
              | doc m%"
                Tag of the `mirrord-cli` image you want to use.
                
                Defaults to `"ghcr.io/metalbear-co/mirrord-cli:<cli version>"`.
              "%
              | optional,
            cli_image_lib_path
              | js2n.Nullable String
              | doc m%"
                Path of the mirrord-layer lib inside the specified mirrord-cli image.
                
                Defaults to `"/opt/mirrord/lib/libmirrord_layer.so"`.
              "%
              | optional,
            cli_prevent_cleanup
              | js2n.Nullable Bool
              | doc "Don't add `--rm` to sidecar command to prevent cleanup."
              | optional,
            override_host_ip
              | js2n.Nullable String
              | doc m%"
                Allows to override the IP address for the internal proxy to use when connecting to the host machine from within the container.
                
                ```json5 { "container": { "override_host_ip": "172.17.0.1" // usual resolution of value from `host.docker.internal` } } ```
                
                This should be useful if your host machine is exposed with a different IP address than the one bound as host.
              "%
              | optional,
          },
      "definitions.CopyTargetFileConfig" =
        std.contract.any_of
            [
              Bool,
              {
                enabled | js2n.Nullable Bool | optional,
                scale_down | js2n.Nullable Bool | optional,
              }
            ],
      "definitions.CronJobTarget" =
        { container | js2n.Nullable String | optional, cron_job | String, },
      "definitions.DeploymentTarget" =
        {
            container | js2n.Nullable String | optional,
            deployment
              | String
              | doc "<!--${internal}--> Deployment to mirror.",
          },
      "definitions.DnsFileConfig" =
        {
            enabled | js2n.Nullable Bool | optional,
            filter
              | js2n.Nullable refs."definitions.DnsFilterConfig"
              | doc "Unstable: the precise syntax of this config is subject to change."
              | optional,
          },
      "definitions.DnsFilterConfig" =
        js2n.OneOf
            [
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        remote =
                          std.contract.Sequence
                              [
                                refs."definitions.VecOrSingle_for_String",
                                std.contract.any_of [ Array Dyn, String ]
                              ],
                      },
                  required = { remote = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        local =
                          std.contract.Sequence
                              [
                                refs."definitions.VecOrSingle_for_String",
                                std.contract.any_of [ Array Dyn, String ]
                              ],
                      },
                  required = { local = true, },
                }
            ],
      "definitions.EnvFileConfig" =
        {
            env_file
              | js2n.Nullable String
              | doc m%"
                Allows for passing environment variables from an env file.
                
                These variables will override environment fetched from the remote target.
              "%
              | optional,
            exclude
              | js2n.Nullable
                (std.contract.Sequence
                  [
                    refs."definitions.VecOrSingle_for_String",
                    std.contract.any_of [ Array Dyn, String ]
                  ])
              | doc m%"
                Include the remote environment variables in the local process that are **NOT** specified by this option. Variable names can be matched using `*` and `?` where `?` matches exactly one occurrence of any character and `*` matches arbitrary many (including zero) occurrences of any character.
                
                Some of the variables that are excluded by default: `PATH`, `HOME`, `HOMEPATH`, `CLASSPATH`, `JAVA_EXE`, `JAVA_HOME`, `PYTHONPATH`.
                
                Can be passed as a list or as a semicolon-delimited string (e.g. `"VAR;OTHER_VAR"`).
              "%
              | optional,
            include
              | js2n.Nullable
                (std.contract.Sequence
                  [
                    refs."definitions.VecOrSingle_for_String",
                    std.contract.any_of [ Array Dyn, String ]
                  ])
              | doc m%"
                Include only these remote environment variables in the local process. Variable names can be matched using `*` and `?` where `?` matches exactly one occurrence of any character and `*` matches arbitrary many (including zero) occurrences of any character.
                
                Can be passed as a list or as a semicolon-delimited string (e.g. `"VAR;OTHER_VAR"`).
                
                Some environment variables are excluded by default (`PATH` for example), including these requires specifying them with `include`
              "%
              | optional,
            load_from_process
              | js2n.Nullable Bool
              | doc m%"
                Allows for changing the way mirrord loads remote environment variables. If set, the variables are fetched after the user application is started.
                
                This setting is meant to resolve issues when using mirrord via the IntelliJ plugin on WSL and the remote environment contains a lot of variables.
              "%
              | optional,
            mapping
              | js2n.Nullable ({ _ | String })
              | doc m%"
                Specify map of patterns that if matched will replace the value according to specification.
                
                *Capture groups are allowed.*
                
                Example: ```json { ".+_TIMEOUT": "10000" "LOG_.+_VERBOSITY": "debug" "(\w+)_(\d+)": "magic-value" } ```
                
                Will do the next replacements for environment variables that match:
                
                * `CONNECTION_TIMEOUT: 500` => `CONNECTION_TIMEOUT: 10000`
                
                * `LOG_FILE_VERBOSITY: info` => `LOG_FILE_VERBOSITY: debug`
                
                * `DATA_1234: common-value` => `DATA_1234: magic-value`
              "%
              | optional,
            override
              | js2n.Nullable ({ _ | String })
              | doc m%"
                Allows setting or overriding environment variables (locally) with a custom value.
                
                For example, if the remote pod has an environment variable `REGION=1`, but this is an undesirable value, it's possible to use `override` to set `REGION=2` (locally) instead.
                
                Environment specified here will also override variables passed via the env file.
              "%
              | optional,
            unset
              | js2n.Nullable
                (std.contract.Sequence
                  [
                    refs."definitions.VecOrSingle_for_String",
                    std.contract.any_of [ Array Dyn, String ]
                  ])
              | doc m%"
                Allows unsetting environment variables in the executed process.
                
                This is useful for when some system/user-defined environment like `AWS_PROFILE` make the application behave as if it's running locally, instead of using the remote settings. The unsetting happens from extension (if possible)/CLI and when process initializes. In some cases, such as Go the env might not be able to be modified from the process itself. This is case insensitive, meaning if you'd put `AWS_PROFILE` it'd unset both `AWS_PROFILE` and `Aws_Profile` and other variations.
              "%
              | optional,
          },
      "definitions.ExperimentalFileConfig" =
        {
            disable_reuseaddr
              | js2n.Nullable Bool
              | doc "Disables the `SO_REUSEADDR` socket option on sockets that mirrord steals/mirrors. On macOS the application can use the same address many times but then we don't steal it correctly. This probably should be on by default but we want to gradually roll it out. <https://github.com/metalbear-co/mirrord/issues/2819> This option applies only on macOS."
              | optional,
            enable_exec_hooks_linux
              | js2n.Nullable Bool
              | doc "Enables exec hooks on Linux. Enable Linux hooks can fix issues when the application shares sockets with child commands (e.g Python web servers with reload), but the feature is not stable and may cause other issues."
              | optional,
            hide_ipv6_interfaces
              | js2n.Nullable Bool
              | doc "Enables `getifaddrs` hook that removes IPv6 interfaces from the list returned by libc."
              | optional,
            idle_local_http_connection_timeout
              | js2n.Nullable
                (std.contract.Sequence
                  [ std.number.Integer, js2n.number.Minimum 0 ])
              | doc m%"
                Sets a timeout for idle local HTTP connections (in milliseconds).
                
                HTTP requests stolen with a filter are delivered to the local application from a HTTP connection made from the local machine. Once a request is delivered, the connection is cached for some time, so that it can be reused to deliver the next request.
                
                This timeout determines for how long such connections are cached.
                
                Set to 0 to disable caching local HTTP connections (connections will be dropped as soon as the request is delivered).
                
                Defaults to 3000ms.
              "%
              | optional,
            ignore_system_proxy_config
              | js2n.Nullable Bool
              | doc "Disables any system wide proxy configuration for affecting the running application."
              | optional,
            readlink
              | js2n.Nullable Bool
              | doc "DEPRECATED, WILL BE REMOVED"
              | optional,
            readonly_file_buffer
              | js2n.Nullable
                (std.contract.Sequence
                  [ std.number.Integer, js2n.number.Minimum 0 ])
              | doc "DEPRECATED, WILL BE REMOVED: moved to `feature.fs.readonly_file_buffer` as part of stabilisation. See <https://github.com/metalbear-co/mirrord/issues/2069>."
              | optional,
            tcp_ping4_mock
              | js2n.Nullable Bool
              | doc "<https://github.com/metalbear-co/mirrord/issues/2421#issuecomment-2093200904>"
              | optional,
            trust_any_certificate
              | js2n.Nullable Bool
              | doc "Enables trusting any certificate on macOS, useful for <https://github.com/golang/go/issues/51991#issuecomment-2059588252>"
              | optional,
            use_dev_null
              | js2n.Nullable Bool
              | doc "Uses /dev/null for creating local fake files (should be better than using /tmp)"
              | optional,
          },
      "definitions.ExternalProxyFileConfig" =
        {
            host_ip
              | js2n.Nullable String
              | doc m%"
                Specify a custom host ip addr to listen on.
                
                This address must be accessible from within the container. If not specified, mirrord will try and resolve a local address to use.
              "%
              | optional,
            idle_timeout
              | js2n.Nullable
                (std.contract.Sequence
                  [ std.number.Integer, js2n.number.Minimum 0 ])
              | doc m%"
                How much time to wait while we don't have any active connections before exiting.
                
                Common cases would be running a chain of processes that skip using the layer and don't connect to the proxy.
                
                ```json { "external_proxy": { "idle_timeout": 30 } } ```
              "%
              | optional,
            json_log
              | js2n.Nullable Bool
              | doc m%"
                Whether the proxy should output logs in JSON format. If false, logs are output in human-readable format.
                
                Defaults to true.
              "%
              | optional,
            log_destination
              | js2n.Nullable String
              | doc m%"
                Set the log file destination for the external proxy.
                
                Defaults to a randomized path inside the temporary directory.
              "%
              | optional,
            log_level
              | js2n.Nullable String
              | doc m%"
                Set the log level for the external proxy.
                
                The value should follow the RUST_LOG convention (i.e `mirrord=trace`).
                
                Defaults to `mirrord=info,warn`.
              "%
              | optional,
            start_idle_timeout
              | js2n.Nullable
                (std.contract.Sequence
                  [ std.number.Integer, js2n.number.Minimum 0 ])
              | doc m%"
                How much time to wait for the first connection to the external proxy in seconds.
                
                Common cases would be running with dlv or any other debugger, which sets a breakpoint on process execution, delaying the layer startup and connection to the external proxy.
                
                ```json { "external_proxy": { "start_idle_timeout": 60 } } ```
              "%
              | optional,
            tls_enable
              | js2n.Nullable Bool
              | doc m%"
                <!--${internal}-->
                
                Whether to use TLS or a plain TCP when accepting a connection from the internal proxy sidecar.
              "%
              | optional,
          },
      "definitions.FeatureFileConfig" =
        {
            copy_target
              | js2n.Nullable
                (std.contract.Sequence
                  [
                    refs."definitions.CopyTargetFileConfig",
                    std.contract.any_of [ Bool, { _ | Dyn } ]
                  ])
              | doc m%"
                Creates a new copy of the target. mirrord will use this copy instead of the original target (e.g. intercept network traffic). This feature requires a [mirrord operator](https://metalbear.co/mirrord/docs/overview/teams/?utm_source=copytarget).
                
                This feature is not compatible with rollout targets and running without a target (`targetless` mode).
              "%
              | optional,
            env
              | js2n.Nullable
                refs."definitions.ToggleableConfig_for_EnvFileConfig"
              | optional,
            fs
              | js2n.Nullable
                refs."definitions.ToggleableConfig_for_FsUserConfig"
              | optional,
            hostname
              | js2n.Nullable Bool
              | doc "Should mirrord return the hostname of the target pod when calling `gethostname`"
              | optional,
            network
              | js2n.Nullable
                refs."definitions.ToggleableConfig_for_NetworkFileConfig"
              | optional,
            split_queues
              | js2n.Nullable
                (std.contract.Sequence
                  [ refs."definitions.SplitQueuesConfig", { _ | Dyn } ])
              | doc "Define filters to split queues by, and make your local application consume only messages that match those filters. If you don't specify any filter for a queue that is however declared in the `MirrordWorkloadQueueRegistry` of the target you're using, a match-nothing filter will be used, and your local application will not receive any messages from that queue."
              | optional,
          },
      "definitions.FileAgentDnsConfig" =
        {
            attempts
              | js2n.Nullable
                (std.contract.Sequence
                  [ std.number.Integer, js2n.number.Minimum 0 ])
              | doc "When agent resolves DNS, how many attempts before failing. If the value is too high, it might cause internal proxy to timeout and exit."
              | optional,
            timeout
              | js2n.Nullable
                (std.contract.Sequence
                  [ std.number.Integer, js2n.number.Minimum 0 ])
              | doc "When agent resolves DNS, how long to wait for a response before timeout By default this is set to 1 (in the agent). If the value is too high, it might cause internal proxy to timeout and exit."
              | optional,
          },
      "definitions.FsModeConfig" =
        js2n.OneOf
            [
              std.contract.Sequence [ std.enum.TagOrString, [| 'local |] ],
              std.contract.Sequence
                [ std.enum.TagOrString, [| 'localwithoverrides |] ],
              std.contract.Sequence [ std.enum.TagOrString, [| 'read |] ],
              std.contract.Sequence [ std.enum.TagOrString, [| 'write |] ]
            ],
      "definitions.FsUserConfig" =
        std.contract.any_of
            [
              refs."definitions.FsModeConfig",
              std.contract.Sequence
                [ refs."definitions.AdvancedFsUserConfig", { _ | Dyn } ]
            ],
      "definitions.HttpFilterFileConfig" =
        {
            all_of
              | js2n.Nullable
                (Array (
                  std.contract.Sequence
                    [ refs."definitions.InnerFilter", { _ | Dyn } ]
                ))
              | doc m%"
                An array of HTTP filters.
                
                Each inner filter specifies either header or path regex. Requests must match all of the filters to be stolen.
                
                Cannot be an empty list.
                
                Example: ```json { "all_of": [ { "header": "x-user: my-user$" }, { "path": "^/api/v1/my-endpoint" } ] } ```
              "%
              | optional,
            any_of
              | js2n.Nullable
                (Array (
                  std.contract.Sequence
                    [ refs."definitions.InnerFilter", { _ | Dyn } ]
                ))
              | doc m%"
                An array of HTTP filters.
                
                Each inner filter specifies either header or path regex. Requests must match at least one of the filters to be stolen.
                
                Cannot be an empty list.
                
                Example: ```json { "any_of": [ { "header": "^x-user: my-user$" }, { "path": "^/api/v1/my-endpoint" } ] } ```
              "%
              | optional,
            header_filter
              | js2n.Nullable String
              | doc m%"
                Supports regexes validated by the [`fancy-regex`](https://docs.rs/fancy-regex/latest/fancy_regex/) crate.
                
                The HTTP traffic feature converts the HTTP headers to `HeaderKey: HeaderValue`, case-insensitive.
              "%
              | optional,
            path_filter
              | js2n.Nullable String
              | doc m%"
                Supports regexes validated by the [`fancy-regex`](https://docs.rs/fancy-regex/latest/fancy_regex/) crate.
                
                Case-insensitive. Tries to find match in the path (without query) and path+query. If any of the two matches, the request is stolen.
              "%
              | optional,
            ports
              | js2n.Nullable
                (std.contract.Sequence
                  [
                    refs."definitions.PortList",
                    std.contract.any_of [ Array Dyn, Number ]
                  ])
              | doc m%"
                Activate the HTTP traffic filter only for these ports.
                
                Other ports will *not* be stolen, unless listed in [`feature.network.incoming.ports`](#feature-network-incoming-ports).
                
                We check the pod's health probe ports and automatically add them here, as they're usually the same ports your app might be listening on. If your app ports and the health probe ports don't match, then setting this option will override this behavior.
                
                Set to [80, 8080] by default.
              "%
              | optional,
          },
      "definitions.HttpsDeliveryProtocol" =
        js2n.OneOf
            [
              std.contract.Sequence [ std.enum.TagOrString, [| 'tcp |] ],
              std.contract.Sequence [ std.enum.TagOrString, [| 'tls |] ]
            ],
      "definitions.IncomingAdvancedFileConfig" =
        {
            http_filter
              | js2n.Nullable
                refs."definitions.ToggleableConfig_for_HttpFilterFileConfig"
              | doc m%"
                Sets up the HTTP traffic filter (currently, only useful when `incoming: steal`).
                
                See [`filter`](##filter) for details.
              "%
              | optional,
            https_delivery
              | refs."definitions.LocalHttpsDelivery"
              | { _ | Dyn }
              | doc "(Operator Only): configures how mirrord delivers stolen HTTPS requests to the local application."
              | optional,
            ignore_localhost
              | js2n.Nullable Bool
              | doc "Consider removing when adding <https://github.com/metalbear-co/mirrord/issues/702>"
              | optional,
            ignore_ports
              | js2n.Nullable
                (Array (
                  std.contract.Sequence
                    [ std.number.Integer, js2n.number.Minimum 0 ]
                ))
              | doc m%"
                Ports to ignore when mirroring/stealing traffic. Useful if you want specific ports to be used locally only.
                
                Mutually exclusive with [`ports`](###ports).
              "%
              | optional,
            listen_ports
              | js2n.Nullable
                (Array (
                  std.contract.Sequence
                    [
                      js2n.array.MaxItems 2,
                      js2n.array.MinItems 2,
                      js2n.array.Items
                        [
                          std.contract.Sequence
                            [ std.number.Integer, js2n.number.Minimum 0 ],
                          std.contract.Sequence
                            [ std.number.Integer, js2n.number.Minimum 0 ]
                        ] js2n.Always
                    ]
                ))
              | doc m%"
                Mapping for local ports to actually used local ports. When application listens on a port while steal/mirror is active we fallback to random ports to avoid port conflicts. Using this configuration will always use the specified port. If this configuration doesn't exist, mirrord will try to listen on the original port and if it fails it will assign a random port
                
                This is useful when you want to access ports exposed by your service locally For example, if you have a service that listens on port `80` and you want to access it, you probably can't listen on `80` without sudo, so you can use `[[80, 4480]]` then access it on `4480` while getting traffic from remote `80`. The value of `port_mapping` doesn't affect this.
              "%
              | optional,
            mode
              | js2n.Nullable refs."definitions.IncomingMode"
              | doc m%"
                Allows selecting between mirrorring or stealing traffic.
                
                See [`mode`](##mode (incoming)) for details.
              "%
              | optional,
            on_concurrent_steal
              | js2n.Nullable refs."definitions.ConcurrentSteal"
              | doc "(Operator Only): if value of override will force close any other connections on requested target"
              | optional,
            port_mapping
              | js2n.Nullable
                (Array (
                  std.contract.Sequence
                    [
                      js2n.array.MaxItems 2,
                      js2n.array.MinItems 2,
                      js2n.array.Items
                        [
                          std.contract.Sequence
                            [ std.number.Integer, js2n.number.Minimum 0 ],
                          std.contract.Sequence
                            [ std.number.Integer, js2n.number.Minimum 0 ]
                        ] js2n.Always
                    ]
                ))
              | doc m%"
                Mapping for local ports to remote ports.
                
                This is useful when you want to mirror/steal a port to a different port on the remote machine. For example, your local process listens on port `9333` and the container listens on port `80`. You'd use `[[9333, 80]]`
              "%
              | optional,
            ports
              | js2n.Nullable
                (Array (
                  std.contract.Sequence
                    [ std.number.Integer, js2n.number.Minimum 0 ]
                ))
              | doc m%"
                List of ports to mirror/steal traffic from. Other ports will remain local.
                
                Mutually exclusive with [`ignore_ports`](###ignore_ports).
              "%
              | optional,
          },
      "definitions.IncomingFileConfig" =
        std.contract.any_of
            [
              refs."definitions.IncomingMode",
              js2n.Null,
              std.contract.Sequence
                [ refs."definitions.IncomingAdvancedFileConfig", { _ | Dyn } ]
            ],
      "definitions.IncomingMode" =
        js2n.OneOf
            [
              std.contract.Sequence [ std.enum.TagOrString, [| 'mirror |] ],
              std.contract.Sequence [ std.enum.TagOrString, [| 'steal |] ],
              std.contract.Sequence [ std.enum.TagOrString, [| 'off |] ]
            ],
      "definitions.InnerFilter" =
        std.contract.any_of
            [
              js2n.record.Record
                {
                  additional = 'Some Dyn,
                  patterns = {},
                  properties = { header = String, },
                  required = { header = true, },
                },
              js2n.record.Record
                {
                  additional = 'Some Dyn,
                  patterns = {},
                  properties = { path = String, },
                  required = { path = true, },
                }
            ],
      "definitions.InternalProxyFileConfig" =
        {
            idle_timeout
              | js2n.Nullable
                (std.contract.Sequence
                  [ std.number.Integer, js2n.number.Minimum 0 ])
              | doc m%"
                How much time to wait while we don't have any active connections before exiting.
                
                Common cases would be running a chain of processes that skip using the layer and don't connect to the proxy.
                
                ```json { "internal_proxy": { "idle_timeout": 30 } } ```
              "%
              | optional,
            json_log
              | js2n.Nullable Bool
              | doc m%"
                Whether the proxy should output logs in JSON format. If false, logs are output in human-readable format.
                
                Defaults to true.
              "%
              | optional,
            log_destination
              | js2n.Nullable String
              | doc m%"
                Set the log file destination for the internal proxy.
                
                Defaults to a randomized path inside the temporary directory.
              "%
              | optional,
            log_level
              | js2n.Nullable String
              | doc m%"
                Set the log level for the internal proxy.
                
                The value should follow the RUST_LOG convention (i.e `mirrord=trace`).
                
                Defaults to `mirrord=info,warn`.
              "%
              | optional,
            socket_timeout
              | js2n.Nullable
                (std.contract.Sequence
                  [ std.number.Integer, js2n.number.Minimum 0 ])
              | doc m%"
                <!--${internal}-->
                
                Sometimes the cpu is too busy with other tasks and the internal proxy sockets end up timing out. It's set at a ridiculous high value to prevent this from happening when a user hits a breakpoint while debugging, and stays stopped for a while, which sometimes results in mirrord not working when they resume.
                
                ```json { "internal_proxy": { "socket_timeout": 31536000 } } ```
              "%
              | optional,
            start_idle_timeout
              | js2n.Nullable
                (std.contract.Sequence
                  [ std.number.Integer, js2n.number.Minimum 0 ])
              | doc m%"
                How much time to wait for the first connection to the proxy in seconds.
                
                Common cases would be running with dlv or any other debugger, which sets a breakpoint on process execution, delaying the layer startup and connection to proxy.
                
                ```json { "internal_proxy": { "start_idle_timeout": 60 } } ```
              "%
              | optional,
          },
      "definitions.JobTarget" =
        { container | js2n.Nullable String | optional, job | String, },
      "definitions.LinuxCapability" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [| 'NET_ADMIN, 'NET_RAW, 'SYS_PTRACE, 'SYS_ADMIN |]
            ],
      "definitions.LocalHttpsDelivery" =
        {
            protocol
              | refs."definitions.HttpsDeliveryProtocol"
              | doc "Protocol to use when delivering the HTTPS requests locally.",
            server_cert
              | js2n.Nullable String
              | doc m%"
                Path to a PEM file containing the certificate chain used by the local application's HTTPS server.
                
                This file must contain at least one certificate. It can contain entries of other types, e.g private keys, which are ignored.
              "%
              | optional,
            server_name
              | js2n.Nullable String
              | doc m%"
                Server name to use when making a connection.
                
                Must be a valid DNS name or an IP address.
              "%
              | optional,
            trust_roots
              | js2n.Nullable (Array String)
              | doc m%"
                Paths to PEM files and directories with PEM files containing allowed root certificates.
                
                Directories are not traversed recursively.
                
                Each certificate found in the files is treated as an allowed root. The files can contain entries of other types, e.g private keys, which are ignored.
              "%
              | optional,
            ..
          },
      "definitions.NetworkFileConfig" =
        {
            dns
              | js2n.Nullable
                refs."definitions.ToggleableConfig_for_DnsFileConfig"
              | optional,
            incoming
              | js2n.Nullable
                refs."definitions.ToggleableConfig_for_IncomingFileConfig"
              | optional,
            ipv6
              | js2n.Nullable Bool
              | doc "Enable ipv6 support. Turn on if your application listens to incoming traffic over IPv6, or connects to other services over IPv6."
              | optional,
            outgoing
              | js2n.Nullable
                refs."definitions.ToggleableConfig_for_OutgoingFileConfig"
              | optional,
          },
      "definitions.OutgoingFileConfig" =
        {
            filter
              | js2n.Nullable refs."definitions.OutgoingFilterConfig"
              | doc "Filters that are used to send specific traffic from either the remote pod or the local app"
              | optional,
            ignore_localhost
              | js2n.Nullable Bool
              | doc "Defaults to `false`."
              | optional,
            tcp | js2n.Nullable Bool | doc "Defaults to `true`." | optional,
            udp | js2n.Nullable Bool | doc "Defaults to `true`." | optional,
            unix_streams
              | js2n.Nullable
                (std.contract.Sequence
                  [
                    refs."definitions.VecOrSingle_for_String",
                    std.contract.any_of [ Array Dyn, String ]
                  ])
              | doc m%"
                Connect to these unix streams remotely (and to all other paths locally).
                
                You can either specify a single value or an array of values. Each value is interpreted as a regular expression ([Supported Syntax](https://docs.rs/regex/1.7.1/regex/index.html#syntax)).
                
                When your application connects to a unix socket, the target address will be converted to a string (non-utf8 bytes are replaced by a placeholder character) and matched against the set of regexes specified here. If there is a match, mirrord will connect your application with the target unix socket address on the target pod. Otherwise, it will leave the connection to happen locally on your machine.
              "%
              | optional,
          },
      "definitions.OutgoingFilterConfig" =
        js2n.OneOf
            [
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        remote =
                          std.contract.Sequence
                              [
                                refs."definitions.VecOrSingle_for_String",
                                std.contract.any_of [ Array Dyn, String ]
                              ],
                      },
                  required = { remote = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        local =
                          std.contract.Sequence
                              [
                                refs."definitions.VecOrSingle_for_String",
                                std.contract.any_of [ Array Dyn, String ]
                              ],
                      },
                  required = { local = true, },
                }
            ],
      "definitions.PodTarget" =
        {
            container | js2n.Nullable String | optional,
            pod | String | doc "<!--${internal}--> Pod to mirror.",
          },
      "definitions.PortList" =
        std.contract.Sequence
            [
              refs."definitions.VecOrSingle_for_uint16",
              std.contract.any_of [ Array Dyn, Number ]
            ],
      "definitions.QueueFilter" =
        js2n.OneOf
            [
              js2n.record.Record
                {
                  additional = 'Some Dyn,
                  patterns = {},
                  properties =
                    {
                        message_filter =
                          js2n.record.Record
                              {
                                additional = 'Some String,
                                patterns = {},
                                properties = {},
                                required = {},
                              },
                        queue_type =
                          std.contract.Sequence
                              [ std.enum.TagOrString, [| 'SQS |] ],
                      },
                  required = { message_filter = true, queue_type = true, },
                },
              js2n.record.Record
                {
                  additional = 'Some Dyn,
                  patterns = {},
                  properties =
                    {
                        message_filter =
                          js2n.record.Record
                              {
                                additional = 'Some String,
                                patterns = {},
                                properties = {},
                                required = {},
                              },
                        queue_type =
                          std.contract.Sequence
                              [ std.enum.TagOrString, [| 'Kafka |] ],
                      },
                  required = { message_filter = true, queue_type = true, },
                }
            ],
      "definitions.ReplicaSetTarget" =
        { container | js2n.Nullable String | optional, replica_set | String, },
      "definitions.RolloutTarget" =
        {
            container | js2n.Nullable String | optional,
            rollout | String | doc "<!--${internal}--> Rollout to mirror.",
          },
      "definitions.ServiceTarget" =
        { container | js2n.Nullable String | optional, service | String, },
      "definitions.SplitQueuesConfig" = { _ | refs."definitions.QueueFilter" },
      "definitions.StatefulSetTarget" =
        { container | js2n.Nullable String | optional, stateful_set | String, },
      "definitions.Target" =
        std.contract.any_of
            [
              std.contract.Sequence
                [ refs."definitions.DeploymentTarget", { _ | Dyn } ],
              std.contract.Sequence
                [ refs."definitions.PodTarget", { _ | Dyn } ],
              std.contract.Sequence
                [ refs."definitions.RolloutTarget", { _ | Dyn } ],
              std.contract.Sequence
                [ refs."definitions.JobTarget", { _ | Dyn } ],
              std.contract.Sequence
                [ refs."definitions.CronJobTarget", { _ | Dyn } ],
              std.contract.Sequence
                [ refs."definitions.StatefulSetTarget", { _ | Dyn } ],
              std.contract.Sequence
                [ refs."definitions.ServiceTarget", { _ | Dyn } ],
              std.contract.Sequence
                [ refs."definitions.ReplicaSetTarget", { _ | Dyn } ]
            ],
      "definitions.TargetFileConfig" =
        std.contract.any_of
            [
              refs."definitions.Target",
              js2n.Null,
              String,
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        namespace = js2n.Nullable String,
                        path = js2n.Nullable refs."definitions.Target",
                      },
                  required = {},
                }
            ],
      "definitions.ToggleableConfig_for_DnsFileConfig" =
        std.contract.any_of
            [
              Bool,
              std.contract.Sequence
                [ refs."definitions.DnsFileConfig", { _ | Dyn } ]
            ],
      "definitions.ToggleableConfig_for_EnvFileConfig" =
        std.contract.any_of
            [
              Bool,
              std.contract.Sequence
                [ refs."definitions.EnvFileConfig", { _ | Dyn } ]
            ],
      "definitions.ToggleableConfig_for_FsUserConfig" =
        std.contract.any_of [ Bool, refs."definitions.FsUserConfig" ],
      "definitions.ToggleableConfig_for_HttpFilterFileConfig" =
        std.contract.any_of
            [
              Bool,
              std.contract.Sequence
                [ refs."definitions.HttpFilterFileConfig", { _ | Dyn } ]
            ],
      "definitions.ToggleableConfig_for_IncomingFileConfig" =
        std.contract.any_of [ Bool, refs."definitions.IncomingFileConfig" ],
      "definitions.ToggleableConfig_for_NetworkFileConfig" =
        std.contract.any_of
            [
              Bool,
              std.contract.Sequence
                [ refs."definitions.NetworkFileConfig", { _ | Dyn } ]
            ],
      "definitions.ToggleableConfig_for_OutgoingFileConfig" =
        std.contract.any_of
            [
              Bool,
              std.contract.Sequence
                [ refs."definitions.OutgoingFileConfig", { _ | Dyn } ]
            ],
      "definitions.VecOrSingle_for_String" =
        std.contract.any_of [ String, Array String ],
      "definitions.VecOrSingle_for_uint16" =
        std.contract.any_of
            [
              std.contract.Sequence
                [ std.number.Integer, js2n.number.Minimum 0 ],
              Array (
                std.contract.Sequence
                  [ std.number.Integer, js2n.number.Minimum 0 ]
              )
            ],
      "definitions.io.k8s.api.core.v1.ResourceClaim" =
        {
            name
              | String
              | doc "Name must match the name of one entry in pod.spec.resourceClaims of the Pod where this field is used. It makes that resource available inside a container.",
            ..
          },
      "definitions.io.k8s.api.core.v1.ResourceRequirements" =
        {
            claims
              | Array (
                std.contract.Sequence
                  [
                    refs."definitions.io.k8s.api.core.v1.ResourceClaim",
                    { _ | Dyn }
                  ]
              )
              | doc m%"
                Claims lists the names of resources, defined in spec.resourceClaims, that are used by this container.
                
                This is an alpha field and requires enabling the DynamicResourceAllocation feature gate.
                
                This field is immutable. It can only be set for containers.
              "%
              | optional,
            limits
              | {
                _ | std.contract.Sequence
                  [
                    refs."definitions.io.k8s.apimachinery.pkg.api.resource.Quantity",
                    String
                  ]
              }
              | doc "Limits describes the maximum amount of compute resources allowed. More info: https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/"
              | optional,
            requests
              | {
                _ | std.contract.Sequence
                  [
                    refs."definitions.io.k8s.apimachinery.pkg.api.resource.Quantity",
                    String
                  ]
              }
              | doc "Requests describes the minimum amount of compute resources required. If Requests is omitted for a container, it defaults to Limits if that is explicitly specified, otherwise to an implementation-defined value. Requests cannot exceed Limits. More info: https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/"
              | optional,
            ..
          },
      "definitions.io.k8s.api.core.v1.Toleration" =
        {
            effect
              | String
              | doc "Effect indicates the taint effect to match. Empty means match all taint effects. When specified, allowed values are NoSchedule, PreferNoSchedule and NoExecute."
              | optional,
            key
              | String
              | doc "Key is the taint key that the toleration applies to. Empty means match all taint keys. If the key is empty, operator must be Exists; this combination means to match all values and all keys."
              | optional,
            operator
              | String
              | doc "Operator represents a key's relationship to the value. Valid operators are Exists and Equal. Defaults to Equal. Exists is equivalent to wildcard for value, so that a pod can tolerate all taints of a particular category."
              | optional,
            tolerationSeconds
              | std.number.Integer
              | doc "TolerationSeconds represents the period of time the toleration (which must be of effect NoExecute, otherwise this field is ignored) tolerates the taint. By default, it is not set, which means tolerate the taint forever (do not evict). Zero and negative values will be treated as 0 (evict immediately) by the system."
              | optional,
            value
              | String
              | doc "Value is the taint value the toleration matches to. If the operator is Exists, the value should be empty, otherwise just a regular string."
              | optional,
            ..
          },
      "definitions.io.k8s.apimachinery.pkg.api.resource.Quantity" = String,
    }
    in
  {
      accept_invalid_certificates
        | js2n.Nullable Bool
        | doc m%"
          Controls whether or not mirrord accepts invalid TLS certificates (e.g. self-signed certificates).
          
          If not provided, mirrord will use value from the kubeconfig.
        "%
        | optional,
      agent | js2n.Nullable refs."definitions.AgentFileConfig" | optional,
      container
        | js2n.Nullable refs."definitions.ContainerFileConfig"
        | optional,
      experimental
        | js2n.Nullable refs."definitions.ExperimentalFileConfig"
        | optional,
      external_proxy
        | js2n.Nullable refs."definitions.ExternalProxyFileConfig"
        | optional,
      feature | js2n.Nullable refs."definitions.FeatureFileConfig" | optional,
      internal_proxy
        | js2n.Nullable refs."definitions.InternalProxyFileConfig"
        | optional,
      kube_context
        | js2n.Nullable String
        | doc m%"
          Kube context to use from the kubeconfig file. Will use current context if not specified.
          
          ```json { "kube_context": "mycluster" } ```
        "%
        | optional,
      kubeconfig
        | js2n.Nullable String
        | doc m%"
          Path to a kubeconfig file, if not specified, will use `KUBECONFIG`, or `~/.kube/config`, or the in-cluster config.
          
          ```json { "kubeconfig": "~/bear/kube-config" } ```
        "%
        | optional,
      operator
        | js2n.Nullable Bool
        | doc "Whether mirrord should use the operator. If not set, mirrord will first attempt to use the operator, but continue without it in case of failure."
        | optional,
      profile
        | js2n.Nullable String
        | doc "Name of the mirrord profile to use."
        | optional,
      sip_binaries
        | js2n.Nullable refs."definitions.VecOrSingle_for_String"
        | doc m%"
          Binaries to patch (macOS SIP).
          
          Use this when mirrord isn't loaded to protected binaries that weren't automatically patched.
          
          Runs `endswith` on the binary path (so `bash` would apply to any binary ending with `bash` while `/usr/bin/bash` would apply only for that binary).
          
          ```json { "sip_binaries": ["bash", "python"] } ```
        "%
        | optional,
      skip_build_tools
        | js2n.Nullable Bool
        | doc m%"
          Allows mirrord to skip build tools. Useful when running command lines that build and run the application in a single command.
          
          Defaults to `true`.
          
          Build-Tools: `["as", "cc", "ld", "go", "air", "asm", "cc1", "cgo", "dlv", "gcc", "git", "link", "math", "cargo", "hpack", "rustc", "compile", "collect2", "cargo-watch", "debugserver"]`
        "%
        | optional,
      skip_extra_build_tools
        | js2n.Nullable refs."definitions.VecOrSingle_for_String"
        | doc m%"
          Allows mirrord to skip the specified build tools. Useful when running command lines that build and run the application in a single command.
          
          Must also enable [`skip_build_tools`](#root-skip_build_tools) for this to take an effect.
          
          It's similar to [`skip_processes`](#root-skip_processes), except that here it also skips SIP patching.
          
          Accepts a single value, or an array of values.
          
          ```json { "skip_extra_build_tools": ["bash", "node"] } ```
        "%
        | optional,
      skip_processes
        | js2n.Nullable refs."definitions.VecOrSingle_for_String"
        | doc m%"
          Allows mirrord to skip unwanted processes.
          
          Useful when process A spawns process B, and the user wants mirrord to operate only on process B. Accepts a single value, or an array of values.
          
          ```json { "skip_processes": ["bash", "node"] } ```
        "%
        | optional,
      skip_sip
        | js2n.Nullable refs."definitions.VecOrSingle_for_String"
        | doc m%"
          Allows mirrord to skip patching (macOS SIP) unwanted processes.
          
          When patching is skipped, mirrord will no longer be able to load into the process and its child processes.
          
          Defaults to `{ "skip_sip": "git" }`
          
          When specified, the given value will replace the default list rather than being added to.
        "%
        | optional,
      target | js2n.Nullable refs."definitions.TargetFileConfig" | optional,
      telemetry
        | js2n.Nullable Bool
        | doc "Controls whether or not mirrord sends telemetry data to MetalBear cloud. Telemetry sent doesn't contain personal identifiers or any data that should be considered sensitive. It is used to improve the product. [For more information](https://github.com/metalbear-co/mirrord/blob/main/TELEMETRY.md)"
        | optional,
      use_proxy
        | js2n.Nullable Bool
        | doc "When disabled, mirrord will remove `HTTP[S]_PROXY` env variables before doing any network requests. This is useful when the system sets a proxy but you don't want mirrord to use it. This also applies to the mirrord process (as it just removes the env). If the remote pod sets this env, the mirrord process will still use it."
        | optional,
    }