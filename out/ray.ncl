# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = { "definitions.commands" = Array String, }
    in
  {
      auth
        | {
          ssh_private_key | String | optional,
          ssh_proxy_command
            | String
            | doc "A value for ProxyCommand ssh option, for connecting through proxies. Example: nc -x proxy.example.com:1234 %h %p"
            | optional,
          ssh_public_key | String | optional,
          ssh_user | String | optional,
        }
        | doc "How Ray will authenticate with newly launched nodes."
        | optional,
      available_node_types
        | {
          _ | {
            docker
              | {
                pull_before_run
                  | Bool
                  | doc "run `docker pull` first"
                  | optional,
                worker_image
                  | String
                  | doc "analogous to head_image"
                  | optional,
                worker_run_options
                  | Array Dyn
                  | doc "analogous to head_run_options, merged with the global docker run_options."
                  | optional,
              }
              | doc "Configuration of Worker nodes."
              | optional,
            idle_timeout_s | Number | optional,
            initialization_commands
              | refs."definitions.commands"
              | doc "List of commands that will be run before `setup_commands`. If docker is enabled, these commands will run outside the container and before docker is setup."
              | optional,
            labels
              | js2n.record.Record
                {
                  additional = 'Some Dyn,
                  patterns = { ".*" = String, },
                  properties = {},
                  required = {},
                }
              | optional,
            max_workers | std.number.Integer | optional,
            min_workers | std.number.Integer | optional,
            node_config
              | { _ | Dyn }
              | doc "Provider-specific config for the node, e.g. instance type.",
            resources
              | js2n.record.Record
                {
                  additional = 'Some Dyn,
                  patterns =
                    {
                        ".*" =
                          std.contract.Sequence
                              [ std.number.Integer, js2n.number.Minimum 0 ],
                      },
                  properties = {},
                  required = {},
                },
            worker_setup_commands
              | refs."definitions.commands"
              | doc "List of common shell commands to run to setup nodes. This node specfic list will override the global setup_commands and worker_setup_commands."
              | optional,
          }
        }
        | js2n.record.FieldsMatch ".*"
        | doc "A list of node types for multi-node-type autoscaling."
        | optional,
      cluster_name
        | String
        | doc "A unique identifier for the head node and workers of this cluster.",
      cluster_synced_files
        | Array Dyn
        | doc "List of paths on the head node which should sync to the worker nodes, e.g. [\"/some/data/somehwere\"]"
        | optional,
      docker
        | {
          container_name | String | optional,
          disable_automatic_runtime_detection
            | Bool
            | doc "disable Ray from automatically using the NVIDIA runtime if available"
            | optional,
          disable_shm_size_detection
            | Bool
            | doc "disable Ray from automatically detecting /dev/shm size for the container"
            | optional,
          head_image
            | String
            | doc "image for head node, takes precedence over 'image' if specified"
            | optional,
          head_run_options
            | Array Dyn
            | doc "head specific run options, appended to run_options"
            | optional,
          image | String | doc "the docker image name" | optional,
          pull_before_run | Bool | doc "run `docker pull` first" | optional,
          run_options
            | Array Dyn
            | doc "shared options for starting head/worker docker"
            | optional,
          use_podman
            | Bool
            | doc "Use 'podman' command in place of 'docker'"
            | optional,
          worker_image | String | doc "analogous to head_image" | optional,
          worker_run_options
            | Array Dyn
            | doc "analogous to head_run_options"
            | optional,
        }
        | doc "Docker configuration. If this is specified, all setup and start commands will be executed in the container."
        | optional,
      file_mounts
        | { _ | Dyn }
        | doc "Map of remote paths to local paths, e.g. {\"/tmp/data\": \"/my/local/data\"}"
        | optional,
      file_mounts_sync_continuously
        | Bool
        | doc "If enabled, file mounts will sync continously between the head node and the worker nodes. The nodes will not re-run setup commands if only the contents of the file mounts folders change."
        | optional,
      head_node_type
        | String
        | doc "If using multiple node types, specifies the head node type."
        | optional,
      head_setup_commands
        | refs."definitions.commands"
        | doc "Commands that will be run on the head node after common setup."
        | optional,
      head_start_ray_commands
        | refs."definitions.commands"
        | doc "Command to start ray on the head node. You shouldn't need to modify this."
        | optional,
      idle_timeout_minutes
        | js2n.number.Minimum 0
        | doc "If a node is idle for this many minutes, it will be removed."
        | optional,
      initialization_commands
        | refs."definitions.commands"
        | doc "List of commands that will be run before `setup_commands`. If docker is enabled, these commands will run outside the container and before docker is setup."
        | optional,
      max_workers
        | std.number.Integer
        | js2n.number.Minimum 0
        | doc "The maximum number of workers nodes to launch in addition to the head node. This should be no larger than the sum of min_workers for all available node types."
        | optional,
      metadata
        | { _ | Dyn }
        | doc "Metadata field that can be used to store user-defined data in the cluster config. Ray does not interpret these fields."
        | optional,
      no_restart
        | std.contract.any_of
          [ js2n.Null, Bool, Number, String, { _ | Dyn }, Array Dyn ]
        | doc "Whether to avoid restarting the cluster during updates. This field is controlled by the ray --no-restart flag and cannot be set by the user."
        | optional,
      provider
        | {
          autoscaler_role
            | { _ | Dyn }
            | doc "k8s autoscaler permissions, if using k8s"
            | optional,
          autoscaler_role_binding
            | { _ | Dyn }
            | doc "k8s autoscaler permissions, if using k8s"
            | optional,
          autoscaler_service_account
            | { _ | Dyn }
            | doc "k8s autoscaler permissions, if using k8s"
            | optional,
          availability_zone | String | doc "GCP availability zone" | optional,
          cache_stopped_nodes
            | Bool
            | doc " Whether to try to reuse previously stopped nodes instead of launching nodes. This will also cause the autoscaler to stop nodes instead of terminating them. Only implemented for AWS."
            | optional,
          cloudwatch
            | std.contract.any_of
              [ js2n.Null, Bool, Number, String, { _ | Dyn }, Array Dyn ]
            | optional,
          disable_node_updaters
            | Bool
            | doc "Disables node updaters if set to True. Default is False. (For Kubernetes operator usage.)"
            | optional,
          gcp_credentials
            | {
              credentials
                | String
                | doc "Oauth token or JSON string constituting service account credentials"
                | optional,
              type
                | std.enum.TagOrString
                | [| 'service_account, 'credentials_token |]
                | doc "Credentials type: either temporary OAuth 2.0 token or permanent service account credentials blob.",
            }
            | doc "Credentials for authenticating with the GCP client"
            | optional,
          head_ip | String | doc "gcp project id, if using gcp" | optional,
          location | String | doc "Azure location" | optional,
          module
            | String
            | doc "module, if using external node provider"
            | optional,
          msi_identity_id
            | String
            | doc "User-defined managed identity (generated by config)"
            | optional,
          msi_identity_principal_id
            | String
            | doc "User-defined managed identity principal id (generated by config)"
            | optional,
          namespace | String | doc "k8s namespace, if using k8s" | optional,
          project_id
            | js2n.Nullable String
            | doc "GCP globally unique project id"
            | optional,
          region | String | doc "e.g. us-east-1" | optional,
          resource_group | String | doc "Azure resource group" | optional,
          security_group
            | {
              GroupName | String | doc "Security group name" | optional,
              IpPermissions
                | Array Dyn
                | doc "Security group in bound rules"
                | optional,
            }
            | doc "AWS security group"
            | optional,
          subnet_id | String | doc "Network subnet id" | optional,
          subscription_id | String | doc "Azure subscription id" | optional,
          tags | { _ | Dyn } | doc "Azure user-defined tags" | optional,
          type | String | doc "e.g. aws, azure, gcp,...",
          use_internal_ips | Bool | doc "don't require public ips" | optional,
          worker_ips | Array Dyn | doc "local cluster head node" | optional,
          ..
        }
        | doc "Cloud-provider specific configuration.",
      rsync_exclude
        | Array Dyn
        | doc "File pattern to not sync up or down when using the rsync command. Matches the format of rsync's --exclude param."
        | optional,
      rsync_filter
        | Array Dyn
        | doc "Pattern files to lookup patterns to exclude when using rsync up or rsync down. This file is checked for recursively in all directories. For example, if .gitignore is provided here, the behavior will match git's .gitignore behavior."
        | optional,
      setup_commands
        | refs."definitions.commands"
        | doc "List of common shell commands to run to setup nodes."
        | optional,
      upscaling_speed
        | js2n.number.Minimum 0
        | doc "The autoscaler will scale up the cluster faster with higher upscaling speed. E.g., if the task requires adding more nodes then autoscaler will gradually scale up the cluster in chunks of upscaling_speed*currently_running_nodes. This number should be > 0."
        | optional,
      worker_setup_commands
        | refs."definitions.commands"
        | doc "Commands that will be run on worker nodes after common setup."
        | optional,
      worker_start_ray_commands
        | refs."definitions.commands"
        | doc "Command to start ray on worker nodes. You shouldn't need to modify this."
        | optional,
    }