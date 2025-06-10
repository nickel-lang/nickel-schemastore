# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.ACMGatewayCertificateRequest" =
        {
            arn
              | String
              | doc "The ARN of the wildcard ACM certificate for the domain",
            type
              | std.enum.TagOrString
              | [| 'acm |]
              | doc "Certificates by AWS Certificate Manager (ACM)"
              | optional,
          },
      "definitions.AcceleratorVendor" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [| 'tenstorrent, 'intel, 'google, 'amd, 'nvidia |]
            ],
      "definitions.BackendType" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [|
                'vultr,
                'vastai,
                'tensordock,
                'runpod,
                'oci,
                'nebius,
                'remote,
                'local,
                'lambda,
                'kubernetes,
                'gcp,
                'dstack,
                'datacrunch,
                'cudo,
                'azure,
                'aws
              |]
            ],
      "definitions.CPUArchitecture" =
        std.contract.Sequence [ std.enum.TagOrString, [| 'arm, 'x86 |] ],
      "definitions.CPUSpecRequest" =
        {
            arch
              | refs."definitions.CPUArchitecture"
              | String
              | doc "The CPU architecture, one of: `x86`, `arm`"
              | optional,
            count
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [ refs."definitions.Range_int_", { _ | Dyn } ],
                  std.number.Integer,
                  String
                ]
              | doc "The number of CPU cores"
              | optional,
          },
      "definitions.CreationPolicy" =
        std.contract.Sequence
            [ std.enum.TagOrString, [| 'reuse-or-create, 'reuse |] ],
      "definitions.DevEnvironmentConfigurationRequest" =
        {
            availability_zones
              | Array String
              | doc "The availability zones to consider for provisioning (e.g., `[eu-west-1a, us-west4-a]`)"
              | optional,
            backends
              | Array (
                std.contract.Sequence [ refs."definitions.BackendType", String ]
              )
              | doc "The backends to consider for provisioning (e.g., `[aws, gcp]`)"
              | optional,
            creation_policy
              | refs."definitions.CreationPolicy"
              | String
              | doc "The policy for using instances from fleets: `reuse`, `reuse-or-create`. Defaults to `reuse-or-create`"
              | optional,
            entrypoint | String | doc "The Docker entrypoint" | optional,
            env
              | refs."definitions.Env"
              | std.contract.any_of [ { _ | Dyn }, Array Dyn ]
              | doc "The mapping or the list of environment variables"
              | optional,
            fleets
              | Array String
              | doc "The fleets considered for reuse"
              | optional,
            home_dir | String | optional,
            ide
              | std.contract.any_of
                [
                  std.contract.Sequence [ std.enum.TagOrString, [| 'vscode |] ],
                  std.contract.Sequence [ std.enum.TagOrString, [| 'cursor |] ]
                ]
              | doc "The IDE to run. Supported values include `vscode` and `cursor`",
            idle_duration
              | std.contract.any_of
                [
                  std.contract.Sequence [ std.enum.TagOrString, [| 'off |] ],
                  String,
                  std.number.Integer,
                  Bool
                ]
              | doc "Time to wait before terminating idle instances. Defaults to `5m` for runs and `3d` for fleets. Use `off` for unlimited duration"
              | optional,
            image
              | String
              | doc "The name of the Docker image to run"
              | optional,
            inactivity_duration
              | std.contract.any_of
                [
                  std.contract.Sequence [ std.enum.TagOrString, [| 'off |] ],
                  std.number.Integer,
                  Bool,
                  String
                ]
              | doc "The maximum amount of time the dev environment can be inactive (e.g., `2h`, `1d`, etc). After it elapses, the dev environment is automatically stopped. Inactivity is defined as the absence of SSH connections to the dev environment, including VS Code connections, `ssh <run name>` shells, and attached `dstack apply` or `dstack attach` commands. Use `off` for unlimited duration. Can be updated in-place. Defaults to `off`"
              | optional,
            init
              | Array String
              | doc "The shell commands to run on startup"
              | optional,
            instance_types
              | Array String
              | doc "The cloud-specific instance types to consider for provisioning (e.g., `[p3.8xlarge, n1-standard-4]`)"
              | optional,
            max_duration
              | std.contract.any_of
                [
                  std.contract.Sequence [ std.enum.TagOrString, [| 'off |] ],
                  String,
                  std.number.Integer,
                  Bool
                ]
              | doc "The maximum duration of a run (e.g., `2h`, `1d`, etc). After it elapses, the run is automatically stopped. Use `off` for unlimited duration. Defaults to `off`"
              | optional,
            max_price
              | js2n.number.ExclusiveMinimum 0
              | doc "The maximum instance price per hour, in dollars"
              | optional,
            name
              | String
              | doc "The run name. If not specified, a random name is generated"
              | optional,
            nvcc
              | Bool
              | doc "Use image with NVIDIA CUDA Compiler (NVCC) included. Mutually exclusive with `image`"
              | optional,
            ports
              | Array (
                std.contract.any_of
                  [
                    std.contract.Sequence
                      [
                        std.number.Integer,
                        js2n.number.Maximum 65536,
                        js2n.number.ExclusiveMinimum 0
                      ],
                    js2n.string.Matches "^(?:[0-9]+|\\*):[0-9]+$",
                    std.contract.Sequence
                      [ refs."definitions.PortMappingRequest", { _ | Dyn } ]
                  ]
              )
              | doc "Port numbers/mapping to expose"
              | optional,
            "priority"
              | std.number.Integer
              | js2n.number.Maximum 100
              | js2n.number.Minimum 0
              | doc "The priority of the run, an integer between `0` and `100`. `dstack` tries to provision runs with higher priority first. Defaults to `0`"
              | optional,
            privileged
              | Bool
              | doc "Run the container in privileged mode"
              | optional,
            python
              | refs."definitions.PythonVersion"
              | String
              | doc "The major version of Python. Mutually exclusive with `image`"
              | optional,
            regions
              | Array String
              | doc "The regions to consider for provisioning (e.g., `[eu-west-1, us-west4, westeurope]`)"
              | optional,
            registry_auth
              | refs."definitions.RegistryAuthRequest"
              | { _ | Dyn }
              | doc "Credentials for pulling a private Docker image"
              | optional,
            reservation
              | String
              | doc "The existing reservation to use for instance provisioning. Supports AWS Capacity Reservations and Capacity Blocks"
              | optional,
            resources
              | refs."definitions.ResourcesSpecRequest"
              | { _ | Dyn }
              | doc "The resources requirements to run the configuration"
              | optional,
            retry
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [ refs."definitions.ProfileRetryRequest", { _ | Dyn } ],
                  Bool
                ]
              | doc "The policy for resubmitting the run. Defaults to `false`"
              | optional,
            setup | Array String | optional,
            shell
              | String
              | doc "The shell used to run commands. Allowed values are `sh`, `bash`, or an absolute path, e.g., `/usr/bin/zsh`. Defaults to `/bin/sh` if the `image` is specified, `/bin/bash` otherwise"
              | optional,
            single_branch
              | Bool
              | doc "Whether to clone and track only the current branch or all remote branches. Relevant only when using remote Git repos. Defaults to `false` for dev environments and to `true` for tasks and services"
              | optional,
            spot_policy
              | refs."definitions.SpotPolicy"
              | String
              | doc "The policy for provisioning spot or on-demand instances: `spot`, `on-demand`, `auto`. Defaults to `on-demand`"
              | optional,
            startup_order
              | refs."definitions.StartupOrder"
              | String
              | doc "The order in which master and workers jobs are started: `any`, `master-first`, `workers-first`. Defaults to `any`"
              | optional,
            stop_criteria
              | refs."definitions.StopCriteria"
              | String
              | doc "The criteria determining when a multi-node run should be considered finished: `all-done`, `master-done`. Defaults to `all-done`"
              | optional,
            stop_duration
              | std.contract.any_of
                [
                  std.contract.Sequence [ std.enum.TagOrString, [| 'off |] ],
                  String,
                  std.number.Integer,
                  Bool
                ]
              | doc "The maximum duration of a run graceful stopping. After it elapses, the run is automatically forced stopped. This includes force detaching volumes used by the run. Use `off` for unlimited duration. Defaults to `5m`"
              | optional,
            tags
              | { _ | String }
              | doc "The custom tags to associate with the resource. The tags are also propagated to the underlying backend resources. If there is a conflict with backend-level tags, does not override them"
              | optional,
            type | std.enum.TagOrString | [| 'dev-environment |] | optional,
            user
              | String
              | doc "The user inside the container, `user_name_or_id[:group_name_or_id]` (e.g., `ubuntu`, `1000:1000`). Defaults to the default `image` user"
              | optional,
            utilization_policy
              | refs."definitions.UtilizationPolicyRequest"
              | { _ | Dyn }
              | doc "Run termination policy based on utilization"
              | optional,
            version | String | doc "The version of the IDE" | optional,
            volumes
              | Array (
                std.contract.any_of
                  [
                    std.contract.Sequence
                      [
                        refs."definitions.VolumeMountPointRequest",
                        { _ | Dyn }
                      ],
                    std.contract.Sequence
                      [
                        refs."definitions.InstanceMountPointRequest",
                        { _ | Dyn }
                      ],
                    String
                  ]
              )
              | doc "The volumes mount points"
              | optional,
            working_dir
              | String
              | doc "The path to the working directory inside the container. It's specified relative to the repository directory (`/workflow`) and should be inside it. Defaults to `\".\"` "
              | optional,
          },
      "definitions.DiskSpecRequest" =
        {
            size
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [ refs."definitions.Range_Memory_", { _ | Dyn } ],
                  std.number.Integer,
                  String
                ]
              | doc "Disk size",
          },
      "definitions.Env" =
        std.contract.any_of
            [
              Array String,
              {
                _ | std.contract.any_of
                  [
                    String,
                    std.contract.Sequence
                      [ refs."definitions.EnvSentinelRequest", { _ | Dyn } ]
                  ]
              }
            ],
      "definitions.EnvSentinelRequest" = { key | String, },
      "definitions.FleetConfigurationRequest" =
        {
            availability_zones
              | Array String
              | doc "The availability zones to consider for provisioning (e.g., `[eu-west-1a, us-west4-a]`)"
              | optional,
            backends
              | Array (
                std.contract.Sequence [ refs."definitions.BackendType", String ]
              )
              | doc "The backends to consider for provisioning (e.g., `[aws, gcp]`)"
              | optional,
            blocks
              | std.contract.any_of
                [
                  std.contract.Sequence [ std.enum.TagOrString, [| 'auto |] ],
                  std.contract.Sequence
                    [ std.number.Integer, js2n.number.Minimum 1 ]
                ]
              | doc "The amount of blocks to split the instance into, a number or `auto`. `auto` means as many as possible. The number of GPUs and CPUs must be divisible by the number of blocks. Defaults to `1`, i.e. do not split"
              | optional,
            env
              | refs."definitions.Env"
              | std.contract.any_of [ { _ | Dyn }, Array Dyn ]
              | doc "The mapping or the list of environment variables"
              | optional,
            idle_duration
              | std.contract.any_of
                [
                  std.contract.Sequence [ std.enum.TagOrString, [| 'off |] ],
                  String,
                  std.number.Integer
                ]
              | doc "Time to wait before terminating idle instances. Defaults to `5m` for runs and `3d` for fleets. Use `off` for unlimited duration"
              | optional,
            instance_types
              | Array String
              | doc "The cloud-specific instance types to consider for provisioning (e.g., `[p3.8xlarge, n1-standard-4]`)"
              | optional,
            max_price
              | js2n.number.ExclusiveMinimum 0
              | doc "The maximum instance price per hour, in dollars"
              | optional,
            name | String | doc "The fleet name" | optional,
            nodes
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [ refs."definitions.Range_int_", { _ | Dyn } ],
                  std.number.Integer,
                  String
                ]
              | doc "The number of instances"
              | optional,
            placement
              | refs."definitions.InstanceGroupPlacement"
              | String
              | doc "The placement of instances: `any` or `cluster`"
              | optional,
            regions
              | Array String
              | doc "The regions to consider for provisioning (e.g., `[eu-west-1, us-west4, westeurope]`)"
              | optional,
            reservation
              | String
              | doc "The existing reservation to use for instance provisioning. Supports AWS Capacity Reservations and Capacity Blocks"
              | optional,
            resources
              | refs."definitions.ResourcesSpecRequest"
              | { _ | Dyn }
              | doc "The resources requirements"
              | optional,
            retry
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [ refs."definitions.ProfileRetryRequest", { _ | Dyn } ],
                  Bool
                ]
              | doc "The policy for provisioning retry. Defaults to `false`"
              | optional,
            spot_policy
              | refs."definitions.SpotPolicy"
              | String
              | doc "The policy for provisioning spot or on-demand instances: `spot`, `on-demand`, `auto`. Defaults to `on-demand`"
              | optional,
            ssh_config
              | refs."definitions.SSHParamsRequest"
              | { _ | Dyn }
              | doc "The parameters for adding instances via SSH"
              | optional,
            tags
              | { _ | String }
              | doc "The custom tags to associate with the resource. The tags are also propagated to the underlying backend resources. If there is a conflict with backend-level tags, does not override them"
              | optional,
            type | std.enum.TagOrString | [| 'fleet |] | optional,
          },
      "definitions.GPUSpecRequest" =
        {
            compute_capability
              | Array js2n.Always
              | doc "The minimum compute capability of the GPU (e.g., `7.5`)"
              | optional,
            count
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [ refs."definitions.Range_int_", { _ | Dyn } ],
                  std.number.Integer,
                  String
                ]
              | doc "The number of GPUs"
              | optional,
            memory
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [ refs."definitions.Range_Memory_", { _ | Dyn } ],
                  std.number.Integer,
                  String
                ]
              | doc "The RAM size (e.g., `16GB`). Can be set to a range (e.g. `16GB..`, or `16GB..80GB`)"
              | optional,
            name
              | Array String
              | doc "The name of the GPU (e.g., `A100` or `H100`)"
              | optional,
            total_memory
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [ refs."definitions.Range_Memory_", { _ | Dyn } ],
                  std.number.Integer,
                  String
                ]
              | doc "The total RAM size (e.g., `32GB`). Can be set to a range (e.g. `16GB..`, or `16GB..80GB`)"
              | optional,
            vendor
              | refs."definitions.AcceleratorVendor"
              | String
              | doc "The vendor of the GPU/accelerator, one of: `nvidia`, `amd`, `google` (alias: `tpu`), `intel`"
              | optional,
          },
      "definitions.GatewayConfigurationRequest" =
        {
            backend
              | refs."definitions.BackendType"
              | String
              | doc "The gateway backend",
            certificate
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [
                      refs."definitions.LetsEncryptGatewayCertificateRequest",
                      { _ | Dyn }
                    ],
                  std.contract.Sequence
                    [
                      refs."definitions.ACMGatewayCertificateRequest",
                      { _ | Dyn }
                    ]
                ]
              | doc "The SSL certificate configuration. Defaults to `type: lets-encrypt`"
              | optional,
            "default" | Bool | doc "Make the gateway default" | optional,
            domain
              | String
              | doc "The gateway domain, e.g. `example.com`"
              | optional,
            name | String | doc "The gateway name" | optional,
            public_ip
              | Bool
              | doc "Allocate public IP for the gateway"
              | optional,
            region | String | doc "The gateway region",
            tags
              | { _ | String }
              | doc "The custom tags to associate with the gateway. The tags are also propagated to the underlying backend resources. If there is a conflict with backend-level tags, does not override them"
              | optional,
            type | std.enum.TagOrString | [| 'gateway |] | optional,
          },
      "definitions.HeaderPartitioningKeyRequest" =
        {
            header
              | js2n.string.MaxLength 500
              | js2n.string.Matches "^[a-zA-Z0-9-_]+$"
              | doc "Name of the header to use for partitioning",
            type
              | std.enum.TagOrString
              | [| 'header |]
              | doc "Partitioning type"
              | optional,
          },
      "definitions.IPAddressPartitioningKeyRequest" =
        {
            type
              | std.enum.TagOrString
              | [| 'ip_address |]
              | doc "Partitioning type"
              | optional,
          },
      "definitions.InstanceGroupPlacement" =
        std.contract.Sequence [ std.enum.TagOrString, [| 'cluster, 'any |] ],
      "definitions.InstanceMountPointRequest" =
        {
            instance_path
              | String
              | doc "The absolute path on the instance (host)",
            "optional"
              | Bool
              | doc "Allow running without this volume in backends that do not support instance volumes"
              | optional,
            path | String | doc "The absolute path in the container",
          },
      "definitions.LetsEncryptGatewayCertificateRequest" =
        {
            type
              | std.enum.TagOrString
              | [| 'lets-encrypt |]
              | doc "Automatic certificates by Let's Encrypt"
              | optional,
          },
      "definitions.OpenAIChatModelRequest" =
        {
            format
              | std.enum.TagOrString
              | [| 'openai |]
              | doc "The serving format. Must be set to `openai`",
            name | String | doc "The name of the model",
            prefix
              | String
              | doc "The `base_url` prefix (after hostname)"
              | optional,
            type
              | std.enum.TagOrString
              | [| 'chat |]
              | doc "The type of the model"
              | optional,
          },
      "definitions.PortMappingRequest" =
        {
            container_port
              | std.number.Integer
              | js2n.number.Maximum 65536
              | js2n.number.ExclusiveMinimum 0,
            local_port
              | std.number.Integer
              | js2n.number.Maximum 65536
              | js2n.number.ExclusiveMinimum 0
              | optional,
          },
      "definitions.ProfileRetryRequest" =
        {
            duration
              | std.contract.any_of [ std.number.Integer, String ]
              | doc "The maximum period of retrying the run, e.g., `4h` or `1d`"
              | optional,
            on_events
              | Array (
                std.contract.Sequence [ refs."definitions.RetryEvent", String ]
              )
              | doc "The list of events that should be handled with retry. Supported events are `no-capacity`, `interruption`, `error`. Omit to retry on all events"
              | optional,
          },
      "definitions.PythonVersion" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [| '"3.13", '"3.12", '"3.11", '"3.10", '"3.9" |]
            ],
      "definitions.Range_Memory_" =
        { max | Number | optional, min | Number | optional, },
      "definitions.Range_int_" =
        {
            max | std.number.Integer | optional,
            min | std.number.Integer | optional,
          },
      "definitions.RateLimitRequest" =
        {
            burst
              | std.number.Integer
              | js2n.number.Maximum 9.223372036854776e18
              | js2n.number.Minimum 0
              | doc "Max number of requests that can be passed to the service ahead of the rate limit"
              | optional,
            key
              | js2n.OneOf
                [
                  std.contract.Sequence
                    [
                      refs."definitions.IPAddressPartitioningKeyRequest",
                      { _ | Dyn }
                    ],
                  std.contract.Sequence
                    [
                      refs."definitions.HeaderPartitioningKeyRequest",
                      { _ | Dyn }
                    ]
                ]
              | doc "The partitioning key. Each incoming request belongs to a partition and rate limits are applied per partition. Defaults to partitioning by client IP address"
              | optional,
            prefix
              | js2n.string.MaxLength 4094
              | js2n.string.Matches "^/[^\\s\\\\{}]*$"
              | doc "URL path prefix to which this limit is applied. If an incoming request matches several prefixes, the longest prefix is applied"
              | optional,
            rps
              | js2n.number.Maximum 1.537228672809129e17
              | js2n.number.Minimum 0.01666666666666667
              | doc "Max allowed number of requests per second. Requests are tracked at millisecond granularity. For example, `rps: 10` means at most 1 request per 100ms",
          },
      "definitions.RegistryAuthRequest" =
        {
            password | String | doc "The password or access token",
            username | String | doc "The username",
          },
      "definitions.ResourcesSpecRequest" =
        {
            cpu
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [ refs."definitions.CPUSpecRequest", { _ | Dyn } ],
                  std.contract.Sequence
                    [ refs."definitions.Range_int_", { _ | Dyn } ],
                  std.number.Integer,
                  String
                ]
              | doc "The CPU requirements"
              | optional,
            disk
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [ refs."definitions.DiskSpecRequest", { _ | Dyn } ],
                  std.number.Integer,
                  String
                ]
              | doc "The disk resources"
              | optional,
            gpu
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [ refs."definitions.GPUSpecRequest", { _ | Dyn } ],
                  std.number.Integer,
                  String
                ]
              | doc "The GPU requirements"
              | optional,
            memory
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [ refs."definitions.Range_Memory_", { _ | Dyn } ],
                  std.number.Integer,
                  String
                ]
              | doc "The RAM size (e.g., `8GB`)"
              | optional,
            shm_size
              | std.contract.any_of [ Number, std.number.Integer, String ]
              | doc "The size of shared memory (e.g., `8GB`). If you are using parallel communicating processes (e.g., dataloaders in PyTorch), you may need to configure this"
              | optional,
          },
      "definitions.RetryEvent" =
        std.contract.Sequence
            [ std.enum.TagOrString, [| 'error, 'interruption, 'no-capacity |] ],
      "definitions.SSHHostParamsRequest" =
        {
            blocks
              | std.contract.any_of
                [
                  std.contract.Sequence [ std.enum.TagOrString, [| 'auto |] ],
                  std.contract.Sequence
                    [ std.number.Integer, js2n.number.Minimum 1 ]
                ]
              | doc "The amount of blocks to split the instance into, a number or `auto`. `auto` means as many as possible. The number of GPUs and CPUs must be divisible by the number of blocks. Defaults to `1`, i.e. do not split"
              | optional,
            hostname | String | doc "The IP address or domain to connect to",
            identity_file
              | String
              | doc "The private key to use for this host"
              | optional,
            internal_ip
              | String
              | doc "The internal IP of the host used for communication inside the cluster. If not specified, `dstack` will use the IP address from `network` or from the first found internal network."
              | optional,
            port
              | std.number.Integer
              | doc "The SSH port to connect to for this host"
              | optional,
            proxy_jump
              | refs."definitions.SSHProxyParamsRequest"
              | { _ | Dyn }
              | doc "The SSH proxy configuration for this host"
              | optional,
            ssh_key | refs."definitions.SSHKeyRequest" | { _ | Dyn } | optional,
            user
              | String
              | doc "The user to log in with for this host"
              | optional,
          },
      "definitions.SSHKeyRequest" =
        { private | String | optional, public | String, },
      "definitions.SSHParamsRequest" =
        {
            hosts
              | Array (
                std.contract.any_of
                  [
                    std.contract.Sequence
                      [ refs."definitions.SSHHostParamsRequest", { _ | Dyn } ],
                    String
                  ]
              )
              | doc "The per host connection parameters: a hostname or an object that overrides default ssh parameters",
            identity_file
              | String
              | doc "The private key to use for all hosts"
              | optional,
            network
              | String
              | doc "The network address for cluster setup in the format `<ip>/<netmask>`. `dstack` will use IP addresses from this network for communication between hosts. If not specified, `dstack` will use IPs from the first found internal network."
              | optional,
            port
              | std.number.Integer
              | doc "The SSH port to connect to"
              | optional,
            proxy_jump
              | refs."definitions.SSHProxyParamsRequest"
              | { _ | Dyn }
              | doc "The SSH proxy configuration for all hosts"
              | optional,
            ssh_key | refs."definitions.SSHKeyRequest" | { _ | Dyn } | optional,
            user
              | String
              | doc "The user to log in with on all hosts"
              | optional,
          },
      "definitions.SSHProxyParamsRequest" =
        {
            hostname | String | doc "The IP address or domain of proxy host",
            identity_file
              | String
              | doc "The private key to use for proxy host",
            port
              | std.number.Integer
              | doc "The SSH port of proxy host"
              | optional,
            ssh_key | refs."definitions.SSHKeyRequest" | { _ | Dyn } | optional,
            user | String | doc "The user to log in with for proxy host",
          },
      "definitions.ScalingSpecRequest" =
        {
            metric
              | std.enum.TagOrString
              | [| 'rps |]
              | doc "The target metric to track. Currently, the only supported value is `rps` (meaning requests per second)",
            scale_down_delay
              | std.number.Integer
              | doc "The delay in seconds before scaling down"
              | optional,
            scale_up_delay
              | std.number.Integer
              | doc "The delay in seconds before scaling up"
              | optional,
            target
              | js2n.number.ExclusiveMinimum 0
              | doc "The target value of the metric. The number of replicas is calculated based on this number and automatically adjusts (scales up or down) as this metric changes",
          },
      "definitions.ServiceConfigurationRequest" =
        {
            auth | Bool | doc "Enable the authorization" | optional,
            availability_zones
              | Array String
              | doc "The availability zones to consider for provisioning (e.g., `[eu-west-1a, us-west4-a]`)"
              | optional,
            backends
              | Array (
                std.contract.Sequence [ refs."definitions.BackendType", String ]
              )
              | doc "The backends to consider for provisioning (e.g., `[aws, gcp]`)"
              | optional,
            commands
              | Array String
              | doc "The shell commands to run"
              | optional,
            creation_policy
              | refs."definitions.CreationPolicy"
              | String
              | doc "The policy for using instances from fleets: `reuse`, `reuse-or-create`. Defaults to `reuse-or-create`"
              | optional,
            entrypoint | String | doc "The Docker entrypoint" | optional,
            env
              | refs."definitions.Env"
              | std.contract.any_of [ { _ | Dyn }, Array Dyn ]
              | doc "The mapping or the list of environment variables"
              | optional,
            fleets
              | Array String
              | doc "The fleets considered for reuse"
              | optional,
            gateway
              | std.contract.any_of [ Bool, String ]
              | doc "The name of the gateway. Specify boolean `false` to run without a gateway. Omit to run with the default gateway"
              | optional,
            home_dir | String | optional,
            https
              | Bool
              | doc "Enable HTTPS if running with a gateway"
              | optional,
            idle_duration
              | std.contract.any_of
                [
                  std.contract.Sequence [ std.enum.TagOrString, [| 'off |] ],
                  String,
                  std.number.Integer,
                  Bool
                ]
              | doc "Time to wait before terminating idle instances. Defaults to `5m` for runs and `3d` for fleets. Use `off` for unlimited duration"
              | optional,
            image
              | String
              | doc "The name of the Docker image to run"
              | optional,
            instance_types
              | Array String
              | doc "The cloud-specific instance types to consider for provisioning (e.g., `[p3.8xlarge, n1-standard-4]`)"
              | optional,
            max_duration
              | std.contract.any_of
                [
                  std.contract.Sequence [ std.enum.TagOrString, [| 'off |] ],
                  String,
                  std.number.Integer,
                  Bool
                ]
              | doc "The maximum duration of a run (e.g., `2h`, `1d`, etc). After it elapses, the run is automatically stopped. Use `off` for unlimited duration. Defaults to `off`"
              | optional,
            max_price
              | js2n.number.ExclusiveMinimum 0
              | doc "The maximum instance price per hour, in dollars"
              | optional,
            model
              | std.contract.any_of
                [
                  js2n.OneOf
                    [
                      std.contract.Sequence
                        [ refs."definitions.TGIChatModelRequest", { _ | Dyn } ],
                      std.contract.Sequence
                        [
                          refs."definitions.OpenAIChatModelRequest",
                          { _ | Dyn }
                        ]
                    ],
                  String
                ]
              | doc "Mapping of the model for the OpenAI-compatible endpoint provided by `dstack`. Can be a full model format definition or just a model name. If it's a name, the service is expected to expose an OpenAI-compatible API at the `/v1` path"
              | optional,
            name
              | String
              | doc "The run name. If not specified, a random name is generated"
              | optional,
            nvcc
              | Bool
              | doc "Use image with NVIDIA CUDA Compiler (NVCC) included. Mutually exclusive with `image`"
              | optional,
            port
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [
                      std.number.Integer,
                      js2n.number.Maximum 65536,
                      js2n.number.ExclusiveMinimum 0
                    ],
                  js2n.string.Matches "^[0-9]+:[0-9]+$",
                  std.contract.Sequence
                    [ refs."definitions.PortMappingRequest", { _ | Dyn } ]
                ]
              | doc "The port, that application listens on or the mapping",
            "priority"
              | std.number.Integer
              | js2n.number.Maximum 100
              | js2n.number.Minimum 0
              | doc "The priority of the run, an integer between `0` and `100`. `dstack` tries to provision runs with higher priority first. Defaults to `0`"
              | optional,
            privileged
              | Bool
              | doc "Run the container in privileged mode"
              | optional,
            python
              | refs."definitions.PythonVersion"
              | String
              | doc "The major version of Python. Mutually exclusive with `image`"
              | optional,
            rate_limits
              | Array (
                std.contract.Sequence
                  [ refs."definitions.RateLimitRequest", { _ | Dyn } ]
              )
              | doc "Rate limiting rules"
              | optional,
            regions
              | Array String
              | doc "The regions to consider for provisioning (e.g., `[eu-west-1, us-west4, westeurope]`)"
              | optional,
            registry_auth
              | refs."definitions.RegistryAuthRequest"
              | { _ | Dyn }
              | doc "Credentials for pulling a private Docker image"
              | optional,
            replicas
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [ std.number.Integer, js2n.number.Minimum 1 ],
                  js2n.string.Matches "^[0-9]+..[1-9][0-9]*$",
                  std.contract.Sequence
                    [ refs."definitions.Range_int_", { _ | Dyn } ]
                ]
              | doc "The number of replicas. Can be a number (e.g. `2`) or a range (`0..4` or `1..8`). If it's a range, the `scaling` property is required"
              | optional,
            reservation
              | String
              | doc "The existing reservation to use for instance provisioning. Supports AWS Capacity Reservations and Capacity Blocks"
              | optional,
            resources
              | refs."definitions.ResourcesSpecRequest"
              | { _ | Dyn }
              | doc "The resources requirements to run the configuration"
              | optional,
            retry
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [ refs."definitions.ProfileRetryRequest", { _ | Dyn } ],
                  Bool
                ]
              | doc "The policy for resubmitting the run. Defaults to `false`"
              | optional,
            scaling
              | refs."definitions.ScalingSpecRequest"
              | { _ | Dyn }
              | doc "The auto-scaling rules. Required if `replicas` is set to a range"
              | optional,
            setup | Array String | optional,
            shell
              | String
              | doc "The shell used to run commands. Allowed values are `sh`, `bash`, or an absolute path, e.g., `/usr/bin/zsh`. Defaults to `/bin/sh` if the `image` is specified, `/bin/bash` otherwise"
              | optional,
            single_branch
              | Bool
              | doc "Whether to clone and track only the current branch or all remote branches. Relevant only when using remote Git repos. Defaults to `false` for dev environments and to `true` for tasks and services"
              | optional,
            spot_policy
              | refs."definitions.SpotPolicy"
              | String
              | doc "The policy for provisioning spot or on-demand instances: `spot`, `on-demand`, `auto`. Defaults to `on-demand`"
              | optional,
            startup_order
              | refs."definitions.StartupOrder"
              | String
              | doc "The order in which master and workers jobs are started: `any`, `master-first`, `workers-first`. Defaults to `any`"
              | optional,
            stop_criteria
              | refs."definitions.StopCriteria"
              | String
              | doc "The criteria determining when a multi-node run should be considered finished: `all-done`, `master-done`. Defaults to `all-done`"
              | optional,
            stop_duration
              | std.contract.any_of
                [
                  std.contract.Sequence [ std.enum.TagOrString, [| 'off |] ],
                  String,
                  std.number.Integer,
                  Bool
                ]
              | doc "The maximum duration of a run graceful stopping. After it elapses, the run is automatically forced stopped. This includes force detaching volumes used by the run. Use `off` for unlimited duration. Defaults to `5m`"
              | optional,
            strip_prefix
              | Bool
              | doc "Strip the `/proxy/services/<project name>/<run name>/` path prefix when forwarding requests to the service. Only takes effect when running the service without a gateway"
              | optional,
            tags
              | { _ | String }
              | doc "The custom tags to associate with the resource. The tags are also propagated to the underlying backend resources. If there is a conflict with backend-level tags, does not override them"
              | optional,
            type | std.enum.TagOrString | [| 'service |] | optional,
            user
              | String
              | doc "The user inside the container, `user_name_or_id[:group_name_or_id]` (e.g., `ubuntu`, `1000:1000`). Defaults to the default `image` user"
              | optional,
            utilization_policy
              | refs."definitions.UtilizationPolicyRequest"
              | { _ | Dyn }
              | doc "Run termination policy based on utilization"
              | optional,
            volumes
              | Array (
                std.contract.any_of
                  [
                    std.contract.Sequence
                      [
                        refs."definitions.VolumeMountPointRequest",
                        { _ | Dyn }
                      ],
                    std.contract.Sequence
                      [
                        refs."definitions.InstanceMountPointRequest",
                        { _ | Dyn }
                      ],
                    String
                  ]
              )
              | doc "The volumes mount points"
              | optional,
            working_dir
              | String
              | doc "The path to the working directory inside the container. It's specified relative to the repository directory (`/workflow`) and should be inside it. Defaults to `\".\"` "
              | optional,
          },
      "definitions.SpotPolicy" =
        std.contract.Sequence
            [ std.enum.TagOrString, [| 'auto, 'on-demand, 'spot |] ],
      "definitions.StartupOrder" =
        std.contract.Sequence
            [ std.enum.TagOrString, [| 'workers-first, 'master-first, 'any |] ],
      "definitions.StopCriteria" =
        std.contract.Sequence
            [ std.enum.TagOrString, [| 'master-done, 'all-done |] ],
      "definitions.TGIChatModelRequest" =
        {
            chat_template
              | String
              | doc "The custom prompt template for the model. If not specified, the default prompt template from the HuggingFace Hub configuration will be used"
              | optional,
            eos_token
              | String
              | doc "The custom end of sentence token. If not specified, the default end of sentence token from the HuggingFace Hub configuration will be used"
              | optional,
            format
              | std.enum.TagOrString
              | [| 'tgi |]
              | doc "The serving format. Must be set to `tgi`",
            name | String | doc "The name of the model",
            type
              | std.enum.TagOrString
              | [| 'chat |]
              | doc "The type of the model"
              | optional,
          },
      "definitions.TaskConfigurationRequest" =
        {
            availability_zones
              | Array String
              | doc "The availability zones to consider for provisioning (e.g., `[eu-west-1a, us-west4-a]`)"
              | optional,
            backends
              | Array (
                std.contract.Sequence [ refs."definitions.BackendType", String ]
              )
              | doc "The backends to consider for provisioning (e.g., `[aws, gcp]`)"
              | optional,
            commands
              | Array String
              | doc "The shell commands to run"
              | optional,
            creation_policy
              | refs."definitions.CreationPolicy"
              | String
              | doc "The policy for using instances from fleets: `reuse`, `reuse-or-create`. Defaults to `reuse-or-create`"
              | optional,
            entrypoint | String | doc "The Docker entrypoint" | optional,
            env
              | refs."definitions.Env"
              | std.contract.any_of [ { _ | Dyn }, Array Dyn ]
              | doc "The mapping or the list of environment variables"
              | optional,
            fleets
              | Array String
              | doc "The fleets considered for reuse"
              | optional,
            home_dir | String | optional,
            idle_duration
              | std.contract.any_of
                [
                  std.contract.Sequence [ std.enum.TagOrString, [| 'off |] ],
                  String,
                  std.number.Integer,
                  Bool
                ]
              | doc "Time to wait before terminating idle instances. Defaults to `5m` for runs and `3d` for fleets. Use `off` for unlimited duration"
              | optional,
            image
              | String
              | doc "The name of the Docker image to run"
              | optional,
            instance_types
              | Array String
              | doc "The cloud-specific instance types to consider for provisioning (e.g., `[p3.8xlarge, n1-standard-4]`)"
              | optional,
            max_duration
              | std.contract.any_of
                [
                  std.contract.Sequence [ std.enum.TagOrString, [| 'off |] ],
                  String,
                  std.number.Integer,
                  Bool
                ]
              | doc "The maximum duration of a run (e.g., `2h`, `1d`, etc). After it elapses, the run is automatically stopped. Use `off` for unlimited duration. Defaults to `off`"
              | optional,
            max_price
              | js2n.number.ExclusiveMinimum 0
              | doc "The maximum instance price per hour, in dollars"
              | optional,
            name
              | String
              | doc "The run name. If not specified, a random name is generated"
              | optional,
            nodes
              | std.number.Integer
              | js2n.number.Minimum 1
              | doc "Number of nodes"
              | optional,
            nvcc
              | Bool
              | doc "Use image with NVIDIA CUDA Compiler (NVCC) included. Mutually exclusive with `image`"
              | optional,
            ports
              | Array (
                std.contract.any_of
                  [
                    std.contract.Sequence
                      [
                        std.number.Integer,
                        js2n.number.Maximum 65536,
                        js2n.number.ExclusiveMinimum 0
                      ],
                    js2n.string.Matches "^(?:[0-9]+|\\*):[0-9]+$",
                    std.contract.Sequence
                      [ refs."definitions.PortMappingRequest", { _ | Dyn } ]
                  ]
              )
              | doc "Port numbers/mapping to expose"
              | optional,
            "priority"
              | std.number.Integer
              | js2n.number.Maximum 100
              | js2n.number.Minimum 0
              | doc "The priority of the run, an integer between `0` and `100`. `dstack` tries to provision runs with higher priority first. Defaults to `0`"
              | optional,
            privileged
              | Bool
              | doc "Run the container in privileged mode"
              | optional,
            python
              | refs."definitions.PythonVersion"
              | String
              | doc "The major version of Python. Mutually exclusive with `image`"
              | optional,
            regions
              | Array String
              | doc "The regions to consider for provisioning (e.g., `[eu-west-1, us-west4, westeurope]`)"
              | optional,
            registry_auth
              | refs."definitions.RegistryAuthRequest"
              | { _ | Dyn }
              | doc "Credentials for pulling a private Docker image"
              | optional,
            reservation
              | String
              | doc "The existing reservation to use for instance provisioning. Supports AWS Capacity Reservations and Capacity Blocks"
              | optional,
            resources
              | refs."definitions.ResourcesSpecRequest"
              | { _ | Dyn }
              | doc "The resources requirements to run the configuration"
              | optional,
            retry
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [ refs."definitions.ProfileRetryRequest", { _ | Dyn } ],
                  Bool
                ]
              | doc "The policy for resubmitting the run. Defaults to `false`"
              | optional,
            setup | Array String | optional,
            shell
              | String
              | doc "The shell used to run commands. Allowed values are `sh`, `bash`, or an absolute path, e.g., `/usr/bin/zsh`. Defaults to `/bin/sh` if the `image` is specified, `/bin/bash` otherwise"
              | optional,
            single_branch
              | Bool
              | doc "Whether to clone and track only the current branch or all remote branches. Relevant only when using remote Git repos. Defaults to `false` for dev environments and to `true` for tasks and services"
              | optional,
            spot_policy
              | refs."definitions.SpotPolicy"
              | String
              | doc "The policy for provisioning spot or on-demand instances: `spot`, `on-demand`, `auto`. Defaults to `on-demand`"
              | optional,
            startup_order
              | refs."definitions.StartupOrder"
              | String
              | doc "The order in which master and workers jobs are started: `any`, `master-first`, `workers-first`. Defaults to `any`"
              | optional,
            stop_criteria
              | refs."definitions.StopCriteria"
              | String
              | doc "The criteria determining when a multi-node run should be considered finished: `all-done`, `master-done`. Defaults to `all-done`"
              | optional,
            stop_duration
              | std.contract.any_of
                [
                  std.contract.Sequence [ std.enum.TagOrString, [| 'off |] ],
                  String,
                  std.number.Integer,
                  Bool
                ]
              | doc "The maximum duration of a run graceful stopping. After it elapses, the run is automatically forced stopped. This includes force detaching volumes used by the run. Use `off` for unlimited duration. Defaults to `5m`"
              | optional,
            tags
              | { _ | String }
              | doc "The custom tags to associate with the resource. The tags are also propagated to the underlying backend resources. If there is a conflict with backend-level tags, does not override them"
              | optional,
            type | std.enum.TagOrString | [| 'task |] | optional,
            user
              | String
              | doc "The user inside the container, `user_name_or_id[:group_name_or_id]` (e.g., `ubuntu`, `1000:1000`). Defaults to the default `image` user"
              | optional,
            utilization_policy
              | refs."definitions.UtilizationPolicyRequest"
              | { _ | Dyn }
              | doc "Run termination policy based on utilization"
              | optional,
            volumes
              | Array (
                std.contract.any_of
                  [
                    std.contract.Sequence
                      [
                        refs."definitions.VolumeMountPointRequest",
                        { _ | Dyn }
                      ],
                    std.contract.Sequence
                      [
                        refs."definitions.InstanceMountPointRequest",
                        { _ | Dyn }
                      ],
                    String
                  ]
              )
              | doc "The volumes mount points"
              | optional,
            working_dir
              | String
              | doc "The path to the working directory inside the container. It's specified relative to the repository directory (`/workflow`) and should be inside it. Defaults to `\".\"` "
              | optional,
          },
      "definitions.UtilizationPolicyRequest" =
        {
            min_gpu_utilization
              | std.number.Integer
              | js2n.number.Maximum 100
              | js2n.number.Minimum 0
              | doc "Minimum required GPU utilization, percent. If any GPU has utilization below specified value during the whole time window, the run is terminated",
            time_window
              | std.contract.any_of [ std.number.Integer, String ]
              | doc "The time window of metric samples taking into account to measure utilization (e.g., `30m`, `1h`). Minimum is `5m`",
          },
      "definitions.VolumeConfigurationRequest" =
        {
            availability_zone
              | String
              | doc "The volume availability zone"
              | optional,
            backend
              | refs."definitions.BackendType"
              | String
              | doc "The volume backend",
            name | String | doc "The volume name" | optional,
            region | String | doc "The volume region",
            size
              | Number
              | doc "The volume size. Must be specified when creating new volumes"
              | optional,
            tags
              | { _ | String }
              | doc "The custom tags to associate with the volume. The tags are also propagated to the underlying backend resources. If there is a conflict with backend-level tags, does not override them"
              | optional,
            type | std.enum.TagOrString | [| 'volume |] | optional,
            volume_id
              | String
              | doc "The volume ID. Must be specified when registering external volumes"
              | optional,
          },
      "definitions.VolumeMountPointRequest" =
        {
            name
              | std.contract.any_of [ String, Array String ]
              | doc "The network volume name or the list of network volume names to mount. If a list is specified, one of the volumes in the list will be mounted. Specify volumes from different backends/regions to increase availability",
            path
              | String
              | doc "The absolute container path to mount the volume at",
          },
    }
    in
  std.contract.Sequence
      [
        std.contract.any_of
          [ js2n.Null, Bool, Number, String, {  .. }, Array Dyn ],
        js2n.OneOf
          [
            refs."definitions.DevEnvironmentConfigurationRequest",
            refs."definitions.TaskConfigurationRequest",
            refs."definitions.ServiceConfigurationRequest",
            refs."definitions.FleetConfigurationRequest",
            refs."definitions.GatewayConfigurationRequest",
            refs."definitions.VolumeConfigurationRequest"
          ]
      ]