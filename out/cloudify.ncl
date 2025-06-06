# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.ansiblePlaybookConfig" =
        {
            additional_args
              | refs."definitions.cloudifyStringOrGetInput"
              | doc "Additional args that you want to use, for example, '-c local'."
              | optional,
            additional_playbook_files
              | Array String
              | doc m%"
                A list of string paths blueprint resources that you
                would like to download to the playbook directory.
                If you use this variable, you must list all of the paths
                that you expect to download.
              "%
              | optional,
            ansible_become
              | refs."definitions.cloudifyBooleanOrGetInput"
              | doc m%"
                A boolean value, `true` or `false` whether
                to assume the user privileges.
              "%
              | optional,
            ansible_env_vars
              | {
                ANSIBLE_HOST_KEY_CHECKING | Bool | optional,
                ANSIBLE_INVALID_TASK_ATTRIBUTE_FAILED | Bool | optional,
                ..
              }
              | doc "A dictionary of environment variables to set."
              | optional,
            ansible_playbook_executable_path
              | refs."definitions.cloudifyStringOrGetInput"
              | doc m%"
                A full path to your ansible_playbook executable if user don't want to
                use the included version of executable in the plugin
              "%
              | optional,
            debug_level
              | refs."definitions.cloudifyIntegerOrGetInput"
              | doc "Debug level"
              | optional,
            options_config
              | { _ | Dyn }
              | doc "Command-line options, such as `tags` or `skip_tags`."
              | optional,
            playbook_path
              | refs."definitions.cloudifyStringOrGetInput"
              | doc m%"
                A path to your `site.yaml` or `main.yaml` in your
                Ansible Playbook relative to blueprint or playbook_source_path
                if playbook_source_path is URL to archive File relative inside the archive.
              "%
              | optional,
            playbook_source_path
              | refs."definitions.cloudifyStringOrGetInput"
              | doc m%"
                A full path/URL that contain playbook specified in playbook_path
                or site_yaml_path.
              "%
              | optional,
            remerge_sources
              | refs."definitions.cloudifyBooleanOrGetInput"
              | doc "update sources on target node"
              | optional,
            run_data | { _ | Dyn } | doc "Variable values." | optional,
            save_playbook
              | refs."definitions.cloudifyBooleanOrGetInput"
              | doc "Save playbook after action"
              | optional,
            scp_extra_args
              | refs."definitions.cloudifyStringOrGetInput"
              | doc "Specify extra arguments to pass to scp only (e.g. -l)"
              | optional,
            sensitive_keys
              | Array String
              | doc "keys that you want us to obscure"
              | optional,
            sftp_extra_args
              | refs."definitions.cloudifyStringOrGetInput"
              | doc "Specify extra arguments to pass to sftp only (e.g. -f, -l)"
              | optional,
            site_yaml_path
              | refs."definitions.cloudifyStringOrGetInput"
              | doc m%"
                DEPRECATED.
                A path to your `site.yaml` or `main.yaml` in your
                Ansible Playbook relative to blueprint or playbook_source_path
                if playbook_source_path is URL to archive File relative inside the archive.
              "%
              | optional,
            sources
              | refs."definitions.cloudifyStringOrGetInput"
              | doc m%"
                Your Inventory sources. Either YAML or a path to a file.
                If not provided the inventory will be take from the `sources`
                runtime property.
              "%
              | optional,
            ssh_common_args
              | refs."definitions.cloudifyStringOrGetInput"
              | optional,
            ssh_extra_args
              | refs."definitions.cloudifyStringOrGetInput"
              | doc "Specify extra arguments to pass to ssh only (e.g. -R)"
              | optional,
            start_at_task
              | refs."definitions.cloudifyStringOrGetInput"
              | doc "Start the playbook at the task matching this name"
              | optional,
            timeout
              | refs."definitions.cloudifyStringOrGetInput"
              | doc "Override the connection timeout in seconds (default=10)"
              | optional,
            ..
          },
      "definitions.ansiblePlaybookInputs" =
        {
            additional_args | String | optional,
            ansible_env_vars | String | optional,
            ansible_playbook_executable_path
              | std.contract.any_of [ String, { _ | Dyn } ]
              | optional,
            debug_level | String | optional,
            options_config | String | optional,
            playbook_path | String | optional,
            playbook_source_path
              | std.contract.any_of [ String, { _ | Dyn } ]
              | optional,
            remerge_sources | String | optional,
            run_data | String | optional,
            save_playbook | String | optional,
            scp_extra_args | String | optional,
            sensitive_keys | String | optional,
            sftp_extra_args | String | optional,
            site_yaml_path | String | optional,
            sources | String | optional,
            ssh_common_args | String | optional,
            ssh_extra_args | String | optional,
            start_at_task | String | optional,
            timeout | String | optional,
            ..
          },
      "definitions.awsClientConfig" =
        {
            aws_access_key_id
              | refs."definitions.cloudifyStringOrGetInput"
              | optional,
            aws_secret_access_key
              | refs."definitions.cloudifyStringOrGetInput"
              | optional,
            region_name
              | refs."definitions.cloudifyStringOrGetInput"
              | optional,
            ..
          },
      "definitions.awsConnectionConfig" =
        {
            aws_access_key_id
              | refs."definitions.cloudifyStringOrGetInput"
              | doc "The ID of your AWS ACCESS KEY ID."
              | optional,
            aws_secret_access_key
              | refs."definitions.cloudifyStringOrGetInput"
              | doc "The ID of your AWS SECRET ACCESS KEY."
              | optional,
            region_name
              | refs."definitions.cloudifyGetStringOrAwsRegion"
              | optional,
            ..
          },
      "definitions.awsRegion" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [|
                'us-gov-west-1,
                'us-gov-east-1,
                'sa-east-1,
                'me-south-1,
                'eu-north-1,
                'eu-west-3,
                'eu-south-1,
                'eu-west-2,
                'eu-west-1,
                'eu-central-1,
                'cn-northwest-1,
                'cn-north-1,
                'ca-central-1,
                'ap-southeast-2,
                'ap-northeast-1,
                'ap-northeast-3,
                'ap-northeast-2,
                'ap-southeast-1,
                'ap-south-1,
                'ap-east-1,
                'af-south-1,
                'us-west-2,
                'us-west-1,
                'us-east-2,
                'us-east-1
              |]
            ],
      "definitions.awsResourceId" = String,
      "definitions.cloudifyBooleanOrGetInput" =
        std.contract.any_of
            [ Bool, refs."definitions.cloudifyGetIntrinsicFunction" ],
      "definitions.cloudifyDataTypesAgentConfig" =
        {
            disable_requiretty
              | refs."definitions.cloudifyBooleanOrGetInput"
              | doc "For linux based agents, disables the requiretty setting in the sudoers file. By default, this value will be true."
              | optional,
            env
              | std.contract.any_of
                [ js2n.Null, Bool, Number, String, { _ | Dyn }, Array Dyn ]
              | doc "Optional environment variables that the agent will be started with. (type: dictionary)"
              | optional,
            extra
              | { _ | Dyn }
              | doc "Optional additional low level configuration details. (type: dictionary)"
              | optional,
            heartbeat
              | refs."definitions.cloudifyIntegerOrGetInput"
              | doc m%"
                The interval of the AMQP heartbeats in seconds
                Note: the AMQP heartbeat is only used on Linux.
              "%
              | optional,
            install_method
              | refs."definitions.cloudifyStringOrGetInput"
              | doc m%"
                Specifies how (and if) the cloudify agent should be installed.
                Valid values are:
                * none - No agent will be installed on the host.
                * remote - An agent will be installed using SSH on linux hosts and WinRM on windows hosts.
                * init_script - An agent will be installed via a script that will run on the host when it gets created.
                                This method is only supported for specific IaaS plugins.
                * plugin - An agent will be installed via a plugin which will run a script on the host.
                          This method is only supported for specific IaaS plugins.
                * provided - An agent is assumed to already be installed on the host image.
                            That agent will be configured and started via a script that will run on the host when it gets created.
                            This method is only supported for specific IaaS plugins.
              "%,
            key
              | refs."definitions.cloudifyStringOrGetInput"
              | doc m%"
                For host agents that are installed via SSH, this is the path to the private
                key that will be used to connect to the host.
                In most cases, this value will be derived automatically during bootstrap.
              "%
              | optional,
            max_workers
              | refs."definitions.cloudifyIntegerOrGetInput"
              | doc "Maximum number of agent workers. By default, the value will be 5."
              | optional,
            min_workers
              | refs."definitions.cloudifyIntegerOrGetInput"
              | doc m%"
                Minimum number of agent workers. By default, the value will be 0.
                Note: For windows based agents, this property is ignored and min_workers is set to the value of max_workers.
              "%
              | optional,
            network
              | refs."definitions.cloudifyStringOrGetInput"
              | doc m%"
                The name of the manager network to which the agent should be
                connected. By default, the value will be `default` (which is the
                manager's private IP, by default)
              "%
              | optional,
            password
              | refs."definitions.cloudifyStringOrGetInput"
              | doc m%"
                For host agents that are installed via SSH (on linux) and WinRM (on windows)
                this property can be used to connect to the host.
                For linux hosts, this property is optional in case the key property is properly configured
                (either explicitly or implicitly during bootstrap).
                For windows hosts that are installed via WinRM, this property is also optional
                and depends on whether the password runtime property has been set by the relevant IaaS plugin,
                prior to the agent installation.
              "%
              | optional,
            port
              | refs."definitions.cloudifyIntegerOrGetInput"
              | doc m%"
                For host agents that are installed via SSH (on linux) and WinRM (on windows),
                this is the port used to connect to the host.
                The default values are 22 for linux hosts and 5985 for windows hosts.
              "%
              | optional,
            process_management
              | { _ | Dyn }
              | doc "Process management specific configuration. (type: dictionary)"
              | optional,
            service_name
              | refs."definitions.cloudifyStringOrGetInput"
              | doc m%"
                Used to set the the cloudify agent service name.
                
                If not set, the default value for the service name is:
                - Linux: 'cloudify-worker-<id>'
                - Windows: '<id>'
                
                where 'id' is the instance id of the compute node in which the agent is running.
                
                Note: the value in this field, takes precedence over the deprecated
                'cloudify.nodes.Compute.cloudify_agent.name'.
              "%
              | optional,
            user
              | refs."definitions.cloudifyStringOrGetInput"
              | doc "For host agents, the agent will be installed for this user."
              | optional,
            ..
          },
      "definitions.cloudifyDatatypesAzureComputeAvailabilitySetConfig" =
        {
            platformFaultDomainCount
              | refs."definitions.cloudifyIntegerOrGetInput"
              | optional,
            platformUpdateDomainCount
              | refs."definitions.cloudifyIntegerOrGetInput"
              | optional,
            sku
              | { _ | Dyn }
              | doc "dict to represent sku [for now we only provide name]"
              | optional,
            ..
          },
      "definitions.cloudifyDatatypesAzureComputeManagedClusterConfig" =
        {
            addon_profiles
              | { _ | Dyn }
              | doc "A dict to define addons to the managed cluster"
              | optional,
            agent_pool_profiles
              | Array (
                std.contract.any_of
                  [
                    String,
                    {
                      availabilityZones | Array String | optional,
                      count | Number | optional,
                      enableNodePublicIP | Bool | optional,
                      name | { _ | Dyn } | optional,
                      osType | String | optional,
                      vmSize | String | optional,
                      ..
                    }
                  ]
              )
              | doc "An array to pass an array of dict for agent profile"
              | optional,
            dns_prefix | refs."definitions.cloudifyStringOrGetInput" | optional,
            enable_rbac
              | refs."definitions.cloudifyBooleanOrGetInput"
              | optional,
            kubernetes_version
              | refs."definitions.cloudifyStringOrGetInput"
              | optional,
            linux_profile
              | { _ | Dyn }
              | doc "A dict to define linux profile with user name and public keys"
              | optional,
            location | refs."definitions.cloudifyStringOrGetInput" | optional,
            network_profile
              | { _ | Dyn }
              | doc "A dict to define network profile loadbalancer,outbound,IPs"
              | optional,
            service_principal_profile
              | { _ | Dyn }
              | doc "A dict to define service service_principal_profile [client_id, secret]"
              | optional,
            tags
              | { _ | Dyn }
              | doc "A dict containing resource tags"
              | optional,
            windows_profile
              | { _ | Dyn }
              | doc "A dict to define windows profile with user name and password"
              | optional,
            ..
          },
      "definitions.cloudifyDatatypesAzureComputeVirtualMachineConfig" =
        {
            hardwareProfile
              | refs."definitions.cloudifyStringOrGetInput"
              | optional,
            osProfile | { _ | Dyn } | optional,
            spot_instance
              | refs."definitions.cloudifyDatatypesAzureComputeVirtualMachineSpotConfig"
              | { _ | Dyn }
              | optional,
            storageProfile
              | refs."definitions.cloudifyStringOrGetInput"
              | optional,
            ..
          },
      "definitions.cloudifyDatatypesAzureComputeVirtualMachineSpotConfig" =
        {
            billing_profile | { _ | Dyn } | optional,
            eviction_policy
              | refs."definitions.cloudifyStringOrGetInput"
              | doc "the only supported value is 'Deallocate'"
              | optional,
            is_spot_instance
              | refs."definitions.cloudifyBooleanOrGetInput"
              | doc "set true if you want to consider spot instance params"
              | optional,
            "priority"
              | refs."definitions.cloudifyStringOrGetInput"
              | doc "Possible values include: 'Regular', 'Low', 'Spot'"
              | optional,
            ..
          },
      "definitions.cloudifyDatatypesAzureConfig" =
        {
            certificate
              | refs."definitions.cloudifyStringOrGetInput"
              | doc "Certificate private key."
              | optional,
            client_id
              | refs."definitions.cloudifyStringOrGetInput"
              | doc m%"
                A Microsoft Azure client ID. This can be found in
                the Azure Active Directory dashboard by accessing
                your directory. View the Applications tab and select
                the application used to access Azure APIs.  Your
                client ID can be found by expanding the ACCESS WEB
                APIS IN OTHER APPLICATIONS tab.
              "%
              | optional,
            client_secret
              | refs."definitions.cloudifyStringOrGetInput"
              | doc m%"
                A Microsoft Azure client secret key. This can be found
                or generated in the same location as your client ID.
              "%
              | optional,
            cloud_environment
              | refs."definitions.cloudifyStringOrGetInput"
              | doc "An alternative cloud environment."
              | optional,
            endpoint_resource
              | refs."definitions.cloudifyStringOrGetInput"
              | doc "A Microsoft Azure Active Directory Resource Id."
              | optional,
            endpoint_verify
              | refs."definitions.cloudifyBooleanOrGetInput"
              | doc "Connection certificate verify."
              | optional,
            endpoints_active_directory
              | refs."definitions.cloudifyStringOrGetInput"
              | doc "A Microsoft Azure Active Directory endpoint."
              | optional,
            endpoints_resource_manager
              | refs."definitions.cloudifyStringOrGetInput"
              | doc "A Microsoft Azure Active Directory Resource Manager."
              | optional,
            scale_name_separator
              | refs."definitions.cloudifyStringOrGetInput"
              | doc m%"
                When scaling resources, a unique name must be sent to
                the Azure API. Since names are left to the user to
                manage (the service does not generate unique IDs),
                this plugin will attempt to append characters or
                numbers to the end of the resource name when resources
                are scaled out. This value should be a character, or
                characters, that will separate the base name from the
                generated unique characters.  For instance, if the
                base name of a resource is "myvm", the separator is
                set to "_", and a scale workflow attempts to create
                another resource, the resulting name could be
                something like "myvm_1". This field can be left blank.
              "%
              | optional,
            scale_name_suffix_chars
              | refs."definitions.cloudifyStringOrGetInput"
              | doc m%"
                A string of characters (ASCII) to be used when
                generating unique suffix data when scaling resources.
                See "scale_name_separator" for more information.
              "%
              | optional,
            subscription_id
              | refs."definitions.cloudifyStringOrGetInput"
              | doc m%"
                A Microsoft Azure subscription ID. This is a unique
                user account in Azure. This can be found in the
                Subscriptions tab on your dashboard.
              "%
              | optional,
            tenant_id
              | refs."definitions.cloudifyStringOrGetInput"
              | doc m%"
                A Microsoft Azure tenant ID. This can be found in the Azure Active Directory dashboard by accessing
                your directory. Open the Application Endpoints
                dialog and your tenant ID will be in the URL for
                the OAUTH2.0 TOKEN ENDPOINT.
              "%
              | optional,
            thumbprint
              | refs."definitions.cloudifyStringOrGetInput"
              | doc "Certificate thumbprint."
              | optional,
            ..
          },
      "definitions.cloudifyDatatypesAzureNetworkIPConfigurationConfig" =
        {
            privateIPAddress
              | refs."definitions.cloudifyStringOrGetInput"
              | doc "Static, private IP Address"
              | optional,
            privateIPAllocationMethod
              | refs."definitions.cloudifyStringOrGetInput"
              | doc m%"
                Defines how a private IP address is assigned. Options
                are Static or Dynamic
              "%,
            ..
          },
      "definitions.cloudifyDatatypesAzureNetworkLoadBalancerConfig" =
        {
            backendAddressPools | Array String | optional,
            frontendIPConfigurations | Array String | optional,
            inboundNatRules | Array String | optional,
            loadBalancingRules | Array String | optional,
            probes | Array String | optional,
            ..
          },
      "definitions.cloudifyDatatypesAzureNetworkLoadBalancerIncomingNATRuleConfig" =
        {
            backendPort | refs."definitions.cloudifyIntegerOrGetInput",
            frontendPort | refs."definitions.cloudifyIntegerOrGetInput",
            protocol | refs."definitions.cloudifyStringOrGetInput",
            ..
          },
      "definitions.cloudifyDatatypesAzureNetworkLoadBalancerProbeConfig" =
        {
            intervalInSeconds
              | refs."definitions.cloudifyIntegerOrGetInput"
              | optional,
            numberOfProbes
              | refs."definitions.cloudifyIntegerOrGetInput"
              | optional,
            port | refs."definitions.cloudifyIntegerOrGetInput",
            protocol | refs."definitions.cloudifyStringOrGetInput" | optional,
            requestPath
              | refs."definitions.cloudifyStringOrGetInput"
              | optional,
            ..
          },
      "definitions.cloudifyDatatypesAzureNetworkLoadBalancerRuleConfig" =
        {
            backendPort | refs."definitions.cloudifyIntegerOrGetInput",
            enableFloatingIP
              | refs."definitions.cloudifyBooleanOrGetInput"
              | optional,
            frontendPort | refs."definitions.cloudifyIntegerOrGetInput",
            idleTimeoutInMinutes
              | refs."definitions.cloudifyIntegerOrGetInput"
              | optional,
            loadDistribution
              | refs."definitions.cloudifyStringOrGetInput"
              | optional,
            protocol | refs."definitions.cloudifyStringOrGetInput",
            ..
          },
      "definitions.cloudifyDatatypesAzureNetworkNetworkInterfaceCardConfig" =
        {
            dnsSettings | Array String | optional,
            ipConfigurations | Array String | optional,
            networkSecurityGroups | Array String | optional,
            ..
          },
      "definitions.cloudifyDatatypesAzureNetworkNetworkSecurityGroupConfig" =
        {
            securityRules
              | std.contract.any_of [ { _ | Dyn }, Array ({ _ | Dyn }) ]
              | optional,
            ..
          },
      "definitions.cloudifyDatatypesAzureNetworkNetworkSecurityRuleConfig" =
        {
            access | refs."definitions.cloudifyStringOrGetInput",
            description
              | refs."definitions.cloudifyStringOrGetInput"
              | optional,
            destinationAddressPrefix
              | refs."definitions.cloudifyStringOrGetInput",
            destinationPortRange
              | refs."definitions.cloudifyStringOrGetInput"
              | optional,
            direction | refs."definitions.cloudifyStringOrGetInput",
            "priority" | refs."definitions.cloudifyIntegerOrGetInput",
            protocol | refs."definitions.cloudifyStringOrGetInput",
            sourceAddressPrefix | refs."definitions.cloudifyStringOrGetInput",
            sourcePortRange
              | refs."definitions.cloudifyStringOrGetInput"
              | optional,
            ..
          },
      "definitions.cloudifyDatatypesAzureNetworkPublicIPAddressConfig" =
        {
            domainNameLabel
              | refs."definitions.cloudifyStringOrGetInput"
              | doc m%"
                The concatenation of the domain name label and the regionalized
                DNS zone make up the fully qualified domain name associated
                with the public IP address.
              "%
              | optional,
            idleTimeoutInMinutes
              | refs."definitions.cloudifyIntegerOrGetInput"
              | doc m%"
                Specifies the timeout (in minutes) for the TCP idle connection.
                The value can be set between 4 and 30 minutes
              "%
              | optional,
            publicIPAllocationMethod
              | refs."definitions.cloudifyStringOrGetInput"
              | doc m%"
                Defines whether the IP address is stable or dynamic.
                Options are Static or Dynamic
              "%,
            reverseFqdn
              | refs."definitions.cloudifyStringOrGetInput"
              | doc m%"
                A fully qualified domain name that resolves to this
                public IP address.
              "%
              | optional,
            ..
          },
      "definitions.cloudifyDatatypesAzureNetworkRouteConfig" =
        {
            addressPrefix | std.contract.any_of [ { _ | Dyn }, String ],
            nextHopIpAddress | String | optional,
            nextHopType | String,
            ..
          },
      "definitions.cloudifyDatatypesAzureNetworkRouteTableConfig" =
        { routes | refs."definitions.cloudifyStringOrGetInput" | optional, .. },
      "definitions.cloudifyDatatypesAzureNetworkSubnetConfig" =
        {
            addressPrefix
              | refs."definitions.cloudifyStringOrGetInput"
              | optional,
            networkSecurityGroup
              | refs."definitions.cloudifyIntegerOrGetInput"
              | optional,
            routeTable
              | refs."definitions.cloudifyIntegerOrGetInput"
              | optional,
            ..
          },
      "definitions.cloudifyDatatypesAzureNetworkVirtualNetworkConfig" =
        {
            addressSpace | { _ | Dyn },
            dhcpOptions | { _ | Dyn } | optional,
            subnets | { _ | Dyn } | optional,
            ..
          },
      "definitions.cloudifyDatatypesAzureStorageDataDiskConfig" =
        {
            container_name
              | refs."definitions.cloudifyStringOrGetInput"
              | doc "Container for the resource."
              | optional,
            force_delete
              | refs."definitions.cloudifyBooleanOrGetInput"
              | doc m%"
                If set to true, the resource's "delete" lifecycle will purge the
                Azure Data Disk from the Azure Storage Account. If false, the
                Data Disk is left as-is in the Storage Account.
              "%
              | optional,
            size
              | refs."definitions.cloudifyIntegerOrGetInput"
              | doc "Size of the Page Blob (Azure disk) in GiB. Maximum of 1023 GiB allowed.",
            ..
          },
      "definitions.cloudifyDatatypesAzureStorageFileShareConfig" =
        {
            fail_on_exist
              | refs."definitions.cloudifyBooleanOrGetInput"
              | doc m%"
                If true, causes the operation to raise a NonRecoverableError if
                the file share already exists. If false, issues a warning and
                continues execution.
              "%
              | optional,
            metadata
              | { _ | Dyn }
              | doc "Metadata (dict) for the File Share"
              | optional,
            quota
              | refs."definitions.cloudifyIntegerOrGetInput"
              | doc "Quote, in GiB, for the maximum size of the file share"
              | optional,
            ..
          },
      "definitions.cloudifyDatatypesAzureStorageStorageAccountConfig" =
        {
            accountType
              | refs."definitions.cloudifyStringOrGetInput"
              | doc "An storage account type (case sensitive)"
              | optional,
            encryption | { _ | Dyn } | optional,
            keySource | { _ | Dyn } | optional,
            networkAcls | { _ | Dyn } | optional,
            supportsHttpsTrafficOnly | { _ | Dyn } | optional,
            ..
          },
      "definitions.cloudifyDatatypesBlueprint" =
        {
            blueprint_archive
              | refs."definitions.cloudifyStringOrGetInput"
              | doc "The URL of a .zip to upload to the manager.(Can be skipped if external_resource == True)"
              | optional,
            external_resource
              | refs."definitions.cloudifyBooleanOrGetInput"
              | doc "Use external resource."
              | optional,
            id
              | std.contract.any_of
                [ js2n.Null, Bool, Number, String, { _ | Dyn }, Array Dyn ]
              | doc "This is the blueprint that the deployment node is a proxy to."
              | optional,
            main_file_name
              | refs."definitions.cloudifyStringOrGetInput"
              | doc m%"
                The application blueprint filename. If the blueprint consists many
                imported files this is the main blueprint.
              "%
              | optional,
            ..
          },
      "definitions.cloudifyDatatypesDeployment" =
        {
            all_outputs
              | refs."definitions.cloudifyBooleanOrGetInput"
              | doc m%"
                Ignored if "outputs" is specified.
                Otherwise, if true (the default), then all outputs from the remote
                deployment are exposed. If false, then no output is exposed.
              "%
              | optional,
            external_resource
              | refs."definitions.cloudifyBooleanOrGetInput"
              | doc "Use external resource."
              | optional,
            id
              | refs."definitions.cloudifyStringOrGetInput"
              | doc "This is the deployment that the node is a proxy to."
              | optional,
            inputs
              | { _ | Dyn }
              | doc "The inputs to the deployment."
              | optional,
            logs
              | { _ | Dyn }
              | doc "Logs redirect settings, by default {redirect: true}"
              | optional,
            outputs
              | { _ | Dyn }
              | doc m%"
                A dictionary of "{ key: value, key: value }".
                Get "key" the deployment.
                Set "value" runtime property to the value of the output.
              "%
              | optional,
            ..
          },
      "definitions.cloudifyDatatypesDeploymentProxy" =
        {
            blueprint
              | refs."definitions.cloudifyDatatypesBlueprint"
              | { _ | Dyn },
            deployment
              | refs."definitions.cloudifyDatatypesDeployment"
              | { _ | Dyn },
            executions_start_args
              | { _ | Dyn }
              | doc "Optional params for executions"
              | optional,
            reexecute
              | refs."definitions.cloudifyBooleanOrGetInput"
              | doc "Reexecute workflows, on external deployment"
              | optional,
            ..
          },
      "definitions.cloudifyDatatypesFile" =
        {
            allow_failure
              | refs."definitions.cloudifyBooleanOrGetInput"
              | doc "If the download fails, log the error and continue."
              | optional,
            file_path
              | refs."definitions.cloudifyStringOrGetInput"
              | doc "The path on the machine where the file should be saved.",
            mode
              | refs."definitions.cloudifyIntegerOrGetInput"
              | doc m%"
                The file permissions, such as 777. Must be provided as an integer.
                "0777" and 0777 are not valid. Only 777.
              "%,
            owner
              | refs."definitions.cloudifyStringOrGetInput"
              | doc "The owner string, such as \"centos:wheel\"",
            resource_path
              | refs."definitions.cloudifyStringOrGetInput"
              | doc m%"
                The path relative to the blueprint where the file is stored.
                Currently this must be packaged in the blueprint. An external URI is
                not valid.
              "%,
            template_variables
              | { _ | Dyn }
              | doc "Variables to render Jinja templates."
              | optional,
            use_sudo
              | refs."definitions.cloudifyBooleanOrGetInput"
              | doc m%"
                Whether or not to use sudo to move, rename, delete, chown, chmod,
                the file.
              "%
              | optional,
            ..
          },
      "definitions.cloudifyDatatypesFtpAuth" =
        {
            ignore_host
              | refs."definitions.cloudifyBooleanOrGetInput"
              | doc "optional, ignore host in ftp response"
              | optional,
            ip
              | refs."definitions.cloudifyStringOrGetInput"
              | doc "optional, device ip"
              | optional,
            password
              | refs."definitions.cloudifyStringOrGetInput"
              | doc "optional, ftp password"
              | optional,
            port
              | refs."definitions.cloudifyIntegerOrGetInput"
              | doc "optional, ftp port"
              | optional,
            tls
              | refs."definitions.cloudifyBooleanOrGetInput"
              | doc "optional, use tls connection to ftp"
              | optional,
            user
              | refs."definitions.cloudifyStringOrGetInput"
              | doc "The login credentials for ftp server."
              | optional,
            ..
          },
      "definitions.cloudifyDatatypesHelmApiOptions" =
        {
            api_key
              | refs."definitions.cloudifyStringOrGetInput"
              | doc "Bearer token used for authentication."
              | optional,
            host
              | refs."definitions.cloudifyStringOrGetInput"
              | doc "HTTP/HTTPS URL to Kubernetes API."
              | optional,
            ..
          },
      "definitions.cloudifyDatatypesHelmAuthenticationVariant" =
        {
            gcp_service_account
              | refs."definitions.cloudifyStringOrGetInput"
              | doc " (JSON) Content of Google Cloud Platform Service Account file."
              | optional,
            ..
          },
      "definitions.cloudifyDatatypesHelmClientConfig" =
        {
            authentication
              | refs."definitions.cloudifyDatatypesHelmAuthenticationVariant"
              | { _ | Dyn }
              | optional,
            configuration
              | refs."definitions.cloudifyDatatypesHelmConfigurationVariant"
              | { _ | Dyn }
              | optional,
            ..
          },
      "definitions.cloudifyDatatypesHelmConfig" =
        {
            executable_path
              | refs."definitions.cloudifyStringOrGetInput"
              | doc "Helm binary path."
              | optional,
            ..
          },
      "definitions.cloudifyDatatypesHelmConfigurationVariant" =
        {
            api_options
              | refs."definitions.cloudifyDatatypesHelmApiOptions"
              | { _ | Dyn }
              | doc "Set of basic properties describing Kubernetes API access."
              | optional,
            blueprint_file_name
              | refs."definitions.cloudifyStringOrGetInput"
              | doc "Name of Kubernetes configuration file attached to blueprint(path)."
              | optional,
            file_content
              | refs."definitions.cloudifyStringOrGetInput"
              | doc "Content (YAML) of Kubernetes configuration file. kubeconfig string or dict are supported. "
              | optional,
            manager_file_path
              | refs."definitions.cloudifyStringOrGetInput"
              | doc "Path to Kubernetes configuration file placed on Cloudify Manager VM."
              | optional,
            ..
          },
      "definitions.cloudifyDatatypesHelmReleaseConfig" =
        {
            chart
              | refs."definitions.cloudifyStringOrGetInput"
              | doc "Name of the chart to install.For example: stable/mysql.",
            flags
              | refs."definitions.cloudifyDatatypesHelmSetFlagsList"
              | Array Dyn
              | doc m%"
                List of flags add to both "helm install" and "helm uninstall" commands.
                          For example:
                          - name: namespace
                            value: my_namespace
                          If the flag not requires value, omit "value" and specify only the name as element in the list.
              "%
              | optional,
            name
              | refs."definitions.cloudifyStringOrGetInput"
              | doc "Name of the created release.",
            set_values
              | refs."definitions.cloudifyDatatypesHelmSetFlagsList"
              | Array Dyn
              | doc m%"
                 List of variables names and values to set. For example:
                          - name: x
                            value: y
                          - name: a
                            value: b
                          It equals to --set x=y --set a=b in helm command.
              "%
              | optional,
            values_file
              | refs."definitions.cloudifyStringOrGetInput"
              | doc "Path to values files."
              | optional,
            ..
          },
      "definitions.cloudifyDatatypesHelmRepoConfig" =
        {
            flags
              | refs."definitions.cloudifyDatatypesHelmSetFlagsList"
              | Array Dyn
              | doc "List of flags add to both \"helm repo add\" and \"helm repo remove\" commands."
              | optional,
            name
              | refs."definitions.cloudifyStringOrGetInput"
              | doc "Name of the repo that added/removed.",
            repo_url
              | refs."definitions.cloudifyStringOrGetInput"
              | doc "URL of the repo to add.",
            ..
          },
      "definitions.cloudifyDatatypesHelmSetFlagsList" =
        Array { name | String | optional, value | js2n.Always | optional, .. },
      "definitions.cloudifyDatatypesKey" =
        {
            algorithm | refs."definitions.cloudifyStringOrGetInput" | optional,
            bits | refs."definitions.cloudifyIntegerOrGetInput" | optional,
            comment | refs."definitions.cloudifyStringOrGetInput" | optional,
            key_name | refs."definitions.cloudifyStringOrGetInput" | optional,
            openssh_format
              | refs."definitions.cloudifyBooleanOrGetInput"
              | optional,
            passphrase | refs."definitions.cloudifyStringOrGetInput" | optional,
            private_key_path
              | refs."definitions.cloudifyStringOrGetInput"
              | optional,
            public_key_path
              | refs."definitions.cloudifyStringOrGetInput"
              | optional,
            unvalidated
              | std.contract.any_of
                [ js2n.Null, Bool, Number, String, { _ | Dyn }, Array Dyn ]
              | doc "Unvalidated parameters."
              | optional,
            ..
          },
      "definitions.cloudifyDatatypesNode" =
        { id | refs."definitions.cloudifyStringOrGetInput" | optional, .. },
      "definitions.cloudifyDatatypesNodeInstance" =
        {
            id | refs."definitions.cloudifyStringOrGetInput" | optional,
            node
              | refs."definitions.cloudifyDatatypesNode"
              | { _ | Dyn }
              | optional,
            ..
          },
      "definitions.cloudifyDatatypesNodeInstanceProxy" =
        {
            blueprint
              | refs."definitions.cloudifyDatatypesBlueprint"
              | { _ | Dyn },
            deployment
              | refs."definitions.cloudifyDatatypesDeployment"
              | { _ | Dyn },
            executions_start_args
              | { _ | Dyn }
              | doc "Optional params for executions"
              | optional,
            node_instance
              | refs."definitions.cloudifyDatatypesNodeInstance"
              | { _ | Dyn }
              | optional,
            reexecute
              | refs."definitions.cloudifyBooleanOrGetInput"
              | doc "Reexecute workflows, on external deployment"
              | optional,
            ..
          },
      "definitions.cloudifyDatatypesTerminalAuth" =
        {
            criticals
              | Array String
              | doc "optional, list of possible criticals without new line"
              | optional,
            errors
              | Array String
              | doc "optional, list of possible errors without new line"
              | optional,
            exit_command
              | refs."definitions.cloudifyStringOrGetInput"
              | doc "optional, command for close connection, default 'exit'"
              | optional,
            ip
              | refs."definitions.cloudifyStringOrGetInput"
              | doc "optional, device ip"
              | optional,
            key_content
              | refs."definitions.cloudifyStringOrGetInput"
              | doc "optional, ssh user key"
              | optional,
            password
              | refs."definitions.cloudifyStringOrGetInput"
              | doc "optional, ssh password"
              | optional,
            port
              | refs."definitions.cloudifyIntegerOrGetInput"
              | doc "optional, ssh port"
              | optional,
            promt_check
              | Array String
              | doc "optional, list of prompts accepted from device, default is \"#/$\""
              | optional,
            smart_device
              | refs."definitions.cloudifyBooleanOrGetInput"
              | doc "optional, use shell extension"
              | optional,
            store_logs
              | refs."definitions.cloudifyBooleanOrGetInput"
              | doc "optional, save communication logs"
              | optional,
            user
              | refs."definitions.cloudifyStringOrGetInput"
              | doc "The login credentials for ssh server."
              | optional,
            warnings
              | Array String
              | doc "optional, list of possible warnings without new line"
              | optional,
            ..
          },
      "definitions.cloudifyGetAttribute" =
        {
            get_attribute
              | std.contract.any_of [ String, Array String ]
              | optional,
            ..
          },
      "definitions.cloudifyGetInput" =
        {
            get_input | std.contract.any_of [ String, Array String ] | optional,
            ..
          },
      "definitions.cloudifyGetIntrinsicFunction" =
        std.contract.any_of
            [
              std.contract.Sequence
                [ refs."definitions.cloudifyGetInput", { _ | Dyn } ],
              std.contract.Sequence
                [ refs."definitions.cloudifyGetSecret", { _ | Dyn } ],
              std.contract.Sequence
                [ refs."definitions.cloudifyGetAttribute", { _ | Dyn } ],
              std.contract.Sequence
                [ refs."definitions.cloudifyGetProperty", { _ | Dyn } ]
            ],
      "definitions.cloudifyGetProperty" =
        {
            get_property
              | std.contract.any_of [ String, Array String ]
              | optional,
            ..
          },
      "definitions.cloudifyGetSecret" =
        {
            get_secret
              | std.contract.any_of [ String, Array String ]
              | optional,
            ..
          },
      "definitions.cloudifyGetStringOrAwsRegion" =
        std.contract.any_of
            [
              std.contract.Sequence [ refs."definitions.awsRegion", String ],
              std.contract.Sequence
                [ refs."definitions.cloudifyGetInput", { _ | Dyn } ]
            ],
      "definitions.cloudifyIntegerOrGetInput" =
        std.contract.any_of
            [
              std.number.Integer,
              refs."definitions.cloudifyGetIntrinsicFunction"
            ],
      "definitions.cloudifyStringOrGetInput" =
        std.contract.any_of
            [ String, refs."definitions.cloudifyGetIntrinsicFunction" ],
      "definitions.dataType" =
        {
            derived_from | String | doc "Parent data type." | optional,
            description
              | String
              | doc "Description for the data type."
              | optional,
            properties
              | { _ | Dyn }
              | doc "Dictionary of the data type properties."
              | optional,
          },
      "definitions.dataTypes" =
        js2n.record.Record
            {
              additional = 'Some Dyn,
              patterns =
                {
                    "" =
                      std.contract.Sequence
                          [ refs."definitions.dataType", { _ | Dyn } ],
                  },
              properties = {},
              required = {},
            },
      "definitions.dockerClientConfig" =
        {
            docker_host
              | refs."definitions.cloudifyStringOrGetInput"
              | doc "Docker Machine IP to connect to."
              | optional,
            docker_rest_port
              | refs."definitions.cloudifyIntegerOrGetInput"
              | doc "Docker Machine rest port."
              | optional,
            ..
          },
      "definitions.dockerInstallationConfig" =
        {
            install_script
              | refs."definitions.cloudifyStringOrGetInput"
              | doc "Docker Installation script"
              | optional,
            install_url
              | refs."definitions.cloudifyStringOrGetInput"
              | doc "Docker Installation Link"
              | optional,
            ..
          },
      "definitions.dockerMachine" =
        {
            container_volume
              | refs."definitions.cloudifyStringOrGetInput"
              | doc "Docker Container volume_mapping"
              | optional,
            docker_ip
              | refs."definitions.cloudifyStringOrGetInput"
              | doc "Docker Machine IP"
              | optional,
            docker_key
              | refs."definitions.cloudifyStringOrGetInput"
              | doc "Docker Machine Private Key"
              | optional,
            docker_user
              | refs."definitions.cloudifyStringOrGetInput"
              | doc "Docker Machine User"
              | optional,
            ..
          },
      "definitions.gcpExternalResource" =
        {
            use_external_resource
              | Bool
              | doc m%"
                Indicate whether the resource exists or if Cloudify should create the resource,
                true if you are bringing an existing resource, false if you want cloudify to create it.
              "%
              | optional,
            ..
          },
      "definitions.gcpResourceId" =
        {
            resource_id
              | String
              | doc m%"
                The GCP resource ID of the external resource, if
                use_external_resource is true. Otherwise it is an empty string.
              "%
              | optional,
            ..
          },
      "definitions.inputProperty" =
        {
            constraints
              | refs."definitions.inputPropertyConstraints"
              | optional,
            "default"
              | std.contract.any_of
                [ js2n.Null, Bool, Number, String, { _ | Dyn }, Array Dyn ]
              | doc "An optional default value for the input."
              | optional,
            description
              | String
              | doc "An optional description for the input."
              | optional,
            required
              | Bool
              | doc "a boolean value to indicate whether the input is required must be passed or not."
              | optional,
            type
              | std.contract.any_of
                [
                  String,
                  std.contract.Sequence
                    [
                      std.enum.TagOrString,
                      [|
                        'regex,
                        'dict,
                        'list,
                        'boolean,
                        'float,
                        'integer,
                        'string
                      |]
                    ]
                ]
              | doc "The required data type of the input. Not specifying a data type means the type can be anything, including a list, an array or a dictionary. Valid types: string, integer, float, boolean, list, dict, regex or a custom data type."
              | optional,
          },
      "definitions.inputPropertyConstraints" =
        std.contract.any_of
            [
              js2n.record.Record
                {
                  additional = 'Some Dyn,
                  patterns = {},
                  properties =
                    {
                        equal =
                          std.contract.any_of
                              [ Bool, std.number.Integer, String ],
                        greater_or_equal =
                          std.contract.any_of
                              [ Bool, std.number.Integer, String ],
                        greater_than =
                          std.contract.any_of
                              [ Bool, std.number.Integer, String ],
                        less_or_equal =
                          std.contract.any_of
                              [ Bool, std.number.Integer, String ],
                        less_than =
                          std.contract.any_of
                              [ Bool, std.number.Integer, String ],
                      },
                  required = {},
                },
              js2n.Null,
              Bool,
              Number,
              String,
              { _ | Dyn },
              Array Dyn
            ],
      "definitions.kubernetesTypesAbstractResource" =
        {
            apiVersion
              | refs."definitions.cloudifyStringOrGetInput"
              | doc "Kubernetes API version as a string"
              | optional,
            kind | refs."definitions.cloudifyStringOrGetInput",
            metadata | { _ | Dyn } | optional,
            ..
          },
      "definitions.kubernetesTypesApiMapping" =
        {
            create
              | refs."definitions.kubernetesTypesApiMappingEntry"
              | { _ | Dyn }
              | doc "Python Kubernetes API objects and methods definitions for create operation"
              | optional,
            delete
              | refs."definitions.kubernetesTypesApiMappingEntry"
              | { _ | Dyn }
              | doc "Python Kubernetes API objects and methods definitions for delete operation"
              | optional,
            read
              | refs."definitions.kubernetesTypesApiMappingEntry"
              | { _ | Dyn }
              | doc "Python Kubernetes API objects and methods definitions for read operation"
              | optional,
            update
              | refs."definitions.kubernetesTypesApiMappingEntry"
              | { _ | Dyn }
              | doc "Python Kubernetes API objects and methods definitions for update operation"
              | optional,
            ..
          },
      "definitions.kubernetesTypesApiMappingEntry" =
        {
            api
              | refs."definitions.cloudifyStringOrGetInput"
              | doc "Name of python Kubernetes API object which will be used to as request for particular operation type",
            method
              | refs."definitions.cloudifyStringOrGetInput"
              | doc "Method name of python Kubernetes API object which will be used as request for particular operation type",
            payload
              | refs."definitions.cloudifyStringOrGetInput"
              | doc "Name of python Kubernetes API object which will be used as request data for particular operation type"
              | optional,
            ..
          },
      "definitions.kubernetesTypesAuthenticationVariant" =
        {
            gcp_service_account
              | refs."definitions.cloudifyStringOrGetInput"
              | doc "(JSON) Content of Google Cloud Platform Service Account file"
              | optional,
            ..
          },
      "definitions.kubernetesTypesClientConfig" =
        {
            authentication
              | refs."definitions.kubernetesTypesAuthenticationVariant"
              | { _ | Dyn }
              | doc m%"
                Authentication properties of Kubernetes Cloud providers. Optional.
                Currently supported providers: Google Cloud Platform.
              "%
              | optional,
            configuration
              | refs."definitions.kubernetesTypesConfigurationVariant"
              | { _ | Dyn }
              | doc m%"
                Configuration properties of Kubernetes API. One of four configuration options can be used
                1. Kubernetes config file contained by blueprint archive
                2. Kubernetes config file previously uploaded into Cloudify Manager VM
                3. Content of Kubernetes config file (YAML)
                4. Kubernetes API set o properties
              "%
              | optional,
            ..
          },
      "definitions.kubernetesTypesClusterRoleDefinitio" =
        std.contract.Sequence
            [ refs."definitions.kubernetesTypesAbstractResource", { _ | Dyn } ],
      "definitions.kubernetesTypesConfigClassResourceDefinition" =
        std.contract.Sequence
            [
              refs."definitions.kubernetesTypesResourceDefinition",
              {
                data
                  | { _ | Dyn }
                  | doc "Contains data to store in ConfigMap, Secret.."
                  | optional,
                ..
              }
            ],
      "definitions.kubernetesTypesConfigurationVariant" =
        {
            api_options
              | {
                api_key
                  | refs."definitions.cloudifyStringOrGetInput"
                  | optional,
                cert_file
                  | refs."definitions.cloudifyStringOrGetInput"
                  | optional,
                debug | refs."definitions.cloudifyBooleanOrGetInput" | optional,
                host
                  | refs."definitions.cloudifyStringOrGetInput"
                  | doc "HTTP/HTTPS URL to Kubernetes API"
                  | optional,
                key_file
                  | refs."definitions.cloudifyStringOrGetInput"
                  | optional,
                ssl_ca_cert
                  | refs."definitions.cloudifyStringOrGetInput"
                  | optional,
                verify_ssl
                  | refs."definitions.cloudifyBooleanOrGetInput"
                  | optional,
                ..
              }
              | doc "Set of basic properties describing Kubernetes API access"
              | optional,
            blueprint_file_name
              | refs."definitions.cloudifyStringOrGetInput"
              | doc "Name of Kubernetes configuration file attached to blueprint"
              | optional,
            file_content
              | refs."definitions.cloudifyStringOrGetInput"
              | doc "Content (YAML) of Kubernetes configuration file"
              | optional,
            manager_file_path
              | refs."definitions.cloudifyStringOrGetInput"
              | doc "Path to Kubernetes configuration file placed on Cloudify Manager VM"
              | optional,
            ..
          },
      "definitions.kubernetesTypesFileResource" =
        {
            resource_path
              | refs."definitions.cloudifyStringOrGetInput"
              | doc "File relative to blueprint path."
              | optional,
            target_path
              | refs."definitions.cloudifyStringOrGetInput"
              | doc "Do not use."
              | optional,
            template_variables | { _ | Dyn } | optional,
            ..
          },
      "definitions.kubernetesTypesResourceDefinition" =
        std.contract.Sequence
            [
              refs."definitions.kubernetesTypesAbstractResource",
              {
                spec
                  | { _ | Dyn }
                  | doc "Kubernetes resource object specification"
                  | optional,
                ..
              }
            ],
      "definitions.kubernetesTypesRoleBindingDefinitio" =
        std.contract.Sequence
            [
              refs."definitions.kubernetesTypesAbstractResource",
              {
                roleRef
                  | { _ | Dyn }
                  | doc m%"
                    RoleRef can only reference a ClusterRole in the global namespace.
                    If the RoleRef cannot be resolved, the Authorizer must return an error.
                  "%
                  | optional,
                subjects
                  | Array refs."definitions.cloudifyStringOrGetInput"
                  | doc "Subjects holds references to the objects the role applies to."
                  | optional,
                ..
              }
            ],
      "definitions.kubernetesTypesRoleDefinitio" =
        std.contract.Sequence
            [
              refs."definitions.kubernetesTypesAbstractResource",
              {
                rules
                  | Array refs."definitions.cloudifyStringOrGetInput"
                  | doc "Rules holds all the PolicyRules for this Role."
                  | optional,
                ..
              }
            ],
      "definitions.kubernetesTypesSecretDefinition" =
        std.contract.Sequence
            [
              refs."definitions.kubernetesTypesAbstractResource",
              {
                data
                  | { _ | Dyn }
                  | doc "Data contains the secret data."
                  | optional,
                stringData
                  | { _ | Dyn }
                  | doc m%"
                    stringData allows specifying non-binary secret data in string form.
                    It is provided as a write-only convenience method.
                    All keys and values are merged into the data field on write,
                    overwriting any existing values. It is never output when reading from the API..
                  "%
                  | optional,
                type
                  | refs."definitions.cloudifyStringOrGetInput"
                  | doc "Used to facilitate programmatic handling of secret data."
                  | optional,
                ..
              }
            ],
      "definitions.kubernetesTypesServiceAccountDefinition" =
        std.contract.Sequence
            [
              refs."definitions.kubernetesTypesAbstractResource",
              {
                automountServiceAccountToken
                  | refs."definitions.cloudifyBooleanOrGetInput"
                  | doc m%"
                    AutomountServiceAccountToken indicates whether pods running
                    as this service account should have an API token automatically mounted.
                    Can be overridden at the pod level..
                  "%
                  | optional,
                imagePullSecrets
                  | Array refs."definitions.cloudifyStringOrGetInput"
                  | doc m%"
                    ImagePullSecrets is a list of references to secrets in the same namespace to use for pulling any images
                    in pods that reference this ServiceAccount. ImagePullSecrets are distinct
                    from Secrets because Secrets can be mounted in the pod,
                    but ImagePullSecrets are only accessed by the kubelet
                  "%
                  | optional,
                secrets
                  | Array refs."definitions.cloudifyStringOrGetInput"
                  | doc "Secrets is the list of secrets allowed to be used by pods running using this ServiceAccount."
                  | optional,
                ..
              }
            ],
      "definitions.kubernetesTypesStorageClassResourceDefinition" =
        std.contract.Sequence
            [
              refs."definitions.kubernetesTypesAbstractResource",
              {
                parameters
                  | { _ | Dyn }
                  | doc "Additional parameters for object creation"
                  | optional,
                provisioner
                  | { _ | Dyn }
                  | doc "Class provisioner for object creation"
                  | optional,
                ..
              }
            ],
      "definitions.nodeTemplate" =
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
                          { type = js2n.Const "cloudify.nodes.aws.ec2.Vpc", },
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
                      properties
                        | refs."definitions.nodeTypeAWSEC2VPC"
                        | { _ | Dyn }
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
                                js2n.Const
                                    "cloudify.nodes.aws.ec2.InternetGateway",
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
                      properties
                        | refs."definitions.nodeTypeAWSInternetGateway"
                        | { _ | Dyn }
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
                              type = js2n.Const "cloudify.nodes.aws.ec2.Subnet",
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
                      properties
                        | refs."definitions.nodeTypeAWSEC2Subnet"
                        | { _ | Dyn }
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
                                js2n.Const "cloudify.nodes.aws.ec2.RouteTable",
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
                      properties
                        | refs."definitions.nodeTypeAWSEC2RouteTable"
                        | { _ | Dyn }
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
                          { type = js2n.Const "cloudify.nodes.aws.ec2.Route", },
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
                      properties
                        | refs."definitions.nodeTypeAWSEC2Route"
                        | { _ | Dyn }
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
                                js2n.Const "cloudify.nodes.aws.ec2.ElasticIP",
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
                      properties
                        | refs."definitions.nodeTypeAWSEC2ElasticIP"
                        | { _ | Dyn }
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
                                js2n.Const "cloudify.nodes.aws.ec2.NATGateway",
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
                      properties
                        | refs."definitions.nodeTypeAWSEC2NATGateway"
                        | { _ | Dyn }
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
                                js2n.Const
                                    "cloudify.nodes.aws.ec2.SecurityGroup",
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
                      properties
                        | refs."definitions.nodeTypeAWSEC2SecurityGroup"
                        | { _ | Dyn }
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
                                js2n.Const
                                    "cloudify.nodes.aws.ec2.SecurityGroupRuleIngress",
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
                      properties
                        | refs."definitions.nodeTypeAWSEC2SecurityGroupRuleIngress"
                        | { _ | Dyn }
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
                                js2n.Const "cloudify.nodes.aws.ec2.Interface",
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
                      properties
                        | refs."definitions.nodeTypeAWSEC2Interface"
                        | { _ | Dyn }
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
                          { type = js2n.Const "cloudify.nodes.aws.ec2.Image", },
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
                      properties
                        | refs."definitions.nodeTypeAWSEC2Image"
                        | { _ | Dyn }
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
                                js2n.Const "cloudify.nodes.aws.ec2.Instances",
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
                      properties
                        | refs."definitions.nodeTypeAWSEC2Instances"
                        | { _ | Dyn }
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
                                js2n.Const "cloudify.nodes.aws.ec2.EBSVolume",
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
                      properties
                        | refs."definitions.nodeTypeAWSEC2EBSVolume"
                        | { _ | Dyn }
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
                                js2n.Const
                                    "cloudify.nodes.aws.ec2.EBSAttachment",
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
                      properties
                        | refs."definitions.nodeTypeAWSEC2EBSAttachment"
                        | { _ | Dyn }
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
                          { type = js2n.Const "cloudify.nodes.docker.images", },
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
                      interfaces
                        | refs."definitions.nodeTypeDockerImagesInterfaces"
                        | { _ | Dyn }
                        | optional,
                      properties
                        | refs."definitions.nodeTypeDockerImagesProperties"
                        | { _ | Dyn }
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
                                js2n.Const "cloudify.nodes.docker.containers",
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
                      interfaces
                        | refs."definitions.nodeTypeDockerContainersInterfaces"
                        | { _ | Dyn }
                        | optional,
                      properties
                        | refs."definitions.nodeTypeDockerContainersProperties"
                        | { _ | Dyn }
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
                          { type = js2n.Const "cloudify.nodes.docker.host", },
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
                      interfaces
                        | refs."definitions.nodeTypeDockerHostInterfaces"
                        | { _ | Dyn }
                        | optional,
                      properties
                        | refs."definitions.nodeTypeDockerHostProperties"
                        | { _ | Dyn }
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
                                js2n.Const "cloudify.nodes.docker.host_details",
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
                      interfaces
                        | refs."definitions.nodeTypeDockerHostDetailsInterfaces"
                        | { _ | Dyn }
                        | optional,
                      properties
                        | refs."definitions.nodeTypeDockerHostDetailsProperties"
                        | { _ | Dyn }
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
                          { type = js2n.Const "cloudify.nodes.docker.image", },
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
                      interfaces
                        | refs."definitions.nodeTypeDockerImageInterfaces"
                        | { _ | Dyn }
                        | optional,
                      properties
                        | refs."definitions.nodeTypeDockerImageProperties"
                        | { _ | Dyn }
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
                                js2n.Const "cloudify.nodes.docker.container",
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
                      interfaces
                        | refs."definitions.nodeTypeDockerContainerInterfaces"
                        | { _ | Dyn }
                        | optional,
                      properties
                        | refs."definitions.nodeTypeDockerContainerProperties"
                        | { _ | Dyn }
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
                                js2n.Const
                                    "cloudify.nodes.docker.container_files",
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
                      interfaces
                        | refs."definitions.nodeTypeDockerContainerFilesInterfaces"
                        | { _ | Dyn }
                        | optional,
                      properties
                        | refs."definitions.nodeTypeDockerContainerFilesProperties"
                        | { _ | Dyn }
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
                                js2n.Const
                                    "cloudify.nodes.docker.ansible_playbook",
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
                      interfaces
                        | refs."definitions.nodeTypeDockerAnsiblePlaybookInterfaces"
                        | { _ | Dyn }
                        | optional,
                      properties
                        | refs."definitions.nodeTypeDockerAnsiblePlaybookProperties"
                        | { _ | Dyn }
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
                                js2n.Const
                                    "cloudify.nodes.docker.terraform_module",
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
                      interfaces
                        | refs."definitions.nodeTypeDockerTerraformModuleInterfaces"
                        | { _ | Dyn }
                        | optional,
                      properties
                        | refs."definitions.nodeTypeDockerTerraformModuleProperties"
                        | { _ | Dyn }
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
                                js2n.Const "cloudify.kubernetes.nodes.Master",
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
                      properties
                        | refs."definitions.nodeTypeKubernetesNodesMasterProperties"
                        | { _ | Dyn }
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
                                js2n.Const
                                    "cloudify.kubernetes.resources.ResourceBase",
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
                      properties
                        | refs."definitions.nodeTypeKubernetesResourcesResourceBase"
                        | { _ | Dyn }
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
                                js2n.Const
                                    "cloudify.kubernetes.resources.ResourceWithValidateStatus",
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
                      properties
                        | refs."definitions.nodeTypeKubernetesResourcesResourceWithValidateStatus"
                        | { _ | Dyn }
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
                                js2n.Const
                                    "cloudify.kubernetes.resources.BlueprintDefinedResource",
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
                      interfaces
                        | refs."definitions.nodeTypeKubernetesResourcesBlueprintDefinedResourceInterfaces"
                        | { _ | Dyn }
                        | optional,
                      properties
                        | refs."definitions.nodeTypeKubernetesResourcesBlueprintDefinedResource"
                        | { _ | Dyn }
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
                                js2n.Const
                                    "cloudify.kubernetes.resources.ClusterRoleBinding",
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
                      interfaces
                        | refs."definitions.nodeTypeKubernetesResourcesBlueprintDefinedResourceInterfaces"
                        | { _ | Dyn }
                        | optional,
                      properties
                        | refs."definitions.nodeTypeKubernetesResourcesClusterRoleBindingProperties"
                        | { _ | Dyn }
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
                                js2n.Const
                                    "cloudify.kubernetes.resources.RoleBinding",
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
                      interfaces
                        | refs."definitions.nodeTypeKubernetesResourcesBlueprintDefinedResourceInterfaces"
                        | { _ | Dyn }
                        | optional,
                      properties
                        | refs."definitions.nodeTypeKubernetesResourcesRoleBinding"
                        | { _ | Dyn }
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
                                js2n.Const "cloudify.kubernetes.resources.Role",
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
                      interfaces
                        | refs."definitions.nodeTypeKubernetesResourcesBlueprintDefinedResourceInterfaces"
                        | { _ | Dyn }
                        | optional,
                      properties
                        | refs."definitions.nodeTypeKubernetesResourcesRoleProperties"
                        | { _ | Dyn }
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
                                js2n.Const
                                    "cloudify.kubernetes.resources.ClusterRole",
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
                      interfaces
                        | refs."definitions.nodeTypeKubernetesResourcesBlueprintDefinedResourceInterfaces"
                        | { _ | Dyn }
                        | optional,
                      properties
                        | refs."definitions.nodeTypeKubernetesResourcesClusterRoleProperties"
                        | { _ | Dyn }
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
                                js2n.Const
                                    "cloudify.kubernetes.resources.Secret",
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
                      interfaces
                        | refs."definitions.nodeTypeKubernetesResourcesBlueprintDefinedResourceInterfaces"
                        | { _ | Dyn }
                        | optional,
                      properties
                        | refs."definitions.nodeTypeKubernetesResourcesSecretProperties"
                        | { _ | Dyn }
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
                                js2n.Const
                                    "cloudify.kubernetes.resources.ServiceAccount",
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
                      interfaces
                        | refs."definitions.nodeTypeKubernetesResourcesBlueprintDefinedResourceInterfaces"
                        | { _ | Dyn }
                        | optional,
                      properties
                        | refs."definitions.nodeTypeKubernetesResourcesServiceAccountProperties"
                        | { _ | Dyn }
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
                                js2n.Const
                                    "cloudify.kubernetes.resources.Deployment",
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
                      interfaces
                        | refs."definitions.nodeTypeKubernetesResourcesBlueprintDefinedResourceInterfaces"
                        | { _ | Dyn }
                        | optional,
                      properties
                        | refs."definitions.nodeTypeKubernetesResourcesDeploymentProperties"
                        | { _ | Dyn }
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
                                js2n.Const "cloudify.kubernetes.resources.Node",
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
                      interfaces
                        | refs."definitions.nodeTypeKubernetesResourcesBlueprintDefinedResourceInterfaces"
                        | { _ | Dyn }
                        | optional,
                      properties
                        | refs."definitions.nodeTypeKubernetesResourcesNodeProperties"
                        | { _ | Dyn }
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
                                js2n.Const
                                    "cloudify.kubernetes.resources.Namespace",
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
                      interfaces
                        | refs."definitions.nodeTypeKubernetesResourcesBlueprintDefinedResourceInterfaces"
                        | { _ | Dyn }
                        | optional,
                      properties
                        | refs."definitions.nodeTypeKubernetesResourcesNamespaceProperties"
                        | { _ | Dyn }
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
                                js2n.Const "cloudify.kubernetes.resources.Pod",
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
                      interfaces
                        | refs."definitions.nodeTypeKubernetesResourcesBlueprintDefinedResourceInterfaces"
                        | { _ | Dyn }
                        | optional,
                      properties
                        | refs."definitions.nodeTypeKubernetesResourcesPodProperties"
                        | { _ | Dyn }
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
                                js2n.Const
                                    "cloudify.kubernetes.resources.ReplicaSet",
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
                      interfaces
                        | refs."definitions.nodeTypeKubernetesResourcesBlueprintDefinedResourceInterfaces"
                        | { _ | Dyn }
                        | optional,
                      properties
                        | refs."definitions.nodeTypeKubernetesResourcesReplicaSetProperties"
                        | { _ | Dyn }
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
                                js2n.Const
                                    "cloudify.kubernetes.resources.ReplicationController",
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
                      interfaces
                        | refs."definitions.nodeTypeKubernetesResourcesBlueprintDefinedResourceInterfaces"
                        | { _ | Dyn }
                        | optional,
                      properties
                        | refs."definitions.nodeTypeKubernetesResourcesReplicationControllerProperties"
                        | { _ | Dyn }
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
                                js2n.Const
                                    "cloudify.kubernetes.resources.DaemonSet",
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
                      interfaces
                        | refs."definitions.nodeTypeKubernetesResourcesBlueprintDefinedResourceInterfaces"
                        | { _ | Dyn }
                        | optional,
                      properties
                        | refs."definitions.nodeTypeKubernetesResourcesDaemonSetProperties"
                        | { _ | Dyn }
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
                                js2n.Const
                                    "cloudify.kubernetes.resources.CustomResourceDefinition",
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
                      interfaces
                        | refs."definitions.nodeTypeKubernetesResourcesBlueprintDefinedResourceInterfaces"
                        | { _ | Dyn }
                        | optional,
                      properties
                        | refs."definitions.nodeTypeKubernetesResourcesCustomResourceDefinitionProperties"
                        | { _ | Dyn }
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
                                js2n.Const
                                    "cloudify.kubernetes.resources.Service",
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
                      interfaces
                        | refs."definitions.nodeTypeKubernetesResourcesBlueprintDefinedResourceInterfaces"
                        | { _ | Dyn }
                        | optional,
                      properties
                        | refs."definitions.nodeTypeKubernetesResourcesServiceProperties"
                        | { _ | Dyn }
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
                                js2n.Const
                                    "cloudify.kubernetes.resources.PersistentVolume",
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
                      interfaces
                        | refs."definitions.nodeTypeKubernetesResourcesBlueprintDefinedResourceInterfaces"
                        | { _ | Dyn }
                        | optional,
                      properties
                        | refs."definitions.nodeTypeKubernetesResourcesPersistentVolumeProperties"
                        | { _ | Dyn }
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
                                js2n.Const
                                    "cloudify.kubernetes.resources.ConfigMap",
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
                      interfaces
                        | refs."definitions.nodeTypeKubernetesResourcesBlueprintDefinedResourceInterfaces"
                        | { _ | Dyn }
                        | optional,
                      properties
                        | refs."definitions.nodeTypeKubernetesResourcesConfigMapProperties"
                        | { _ | Dyn }
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
                                js2n.Const
                                    "cloudify.kubernetes.resources.StorageClass",
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
                      interfaces
                        | refs."definitions.nodeTypeKubernetesResourcesBlueprintDefinedResourceInterfaces"
                        | { _ | Dyn }
                        | optional,
                      properties
                        | refs."definitions.nodeTypeKubernetesResourcesStorageClassProperties"
                        | { _ | Dyn }
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
                                js2n.Const
                                    "cloudify.kubernetes.resources.StatefulSet",
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
                      interfaces
                        | refs."definitions.nodeTypeKubernetesResourcesBlueprintDefinedResourceInterfaces"
                        | { _ | Dyn }
                        | optional,
                      properties
                        | refs."definitions.nodeTypeKubernetesResourcesStatefulSetProperties"
                        | { _ | Dyn }
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
                                js2n.Const
                                    "cloudify.kubernetes.resources.PodSecurityPolicy",
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
                      interfaces
                        | refs."definitions.nodeTypeKubernetesResourcesBlueprintDefinedResourceInterfaces"
                        | { _ | Dyn }
                        | optional,
                      properties
                        | refs."definitions.nodeTypeKubernetesResourcesPodSecurityPolicyProperties"
                        | { _ | Dyn }
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
                                js2n.Const
                                    "cloudify.kubernetes.resources.NetworkPolicy",
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
                      interfaces
                        | refs."definitions.nodeTypeKubernetesResourcesBlueprintDefinedResourceInterfaces"
                        | { _ | Dyn }
                        | optional,
                      properties
                        | refs."definitions.nodeTypeKubernetesResourcesNetworkPolicyProperties"
                        | { _ | Dyn }
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
                                js2n.Const
                                    "cloudify.kubernetes.resources.Ingress",
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
                      interfaces
                        | refs."definitions.nodeTypeKubernetesResourcesBlueprintDefinedResourceInterfaces"
                        | { _ | Dyn }
                        | optional,
                      properties
                        | refs."definitions.nodeTypeKubernetesResourcesIngressProperties"
                        | { _ | Dyn }
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
                                js2n.Const
                                    "cloudify.kubernetes.resources.PersistentVolumeClaim",
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
                      interfaces
                        | refs."definitions.nodeTypeKubernetesResourcesBlueprintDefinedResourceInterfaces"
                        | { _ | Dyn }
                        | optional,
                      properties
                        | refs."definitions.nodeTypeKubernetesResourcesPersistentVolumeClaimProperties"
                        | { _ | Dyn }
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
                                js2n.Const
                                    "cloudify.kubernetes.resources.CustomBlueprintDefinedResource",
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
                      interfaces
                        | refs."definitions.nodeTypeKubernetesResourcesCustomBlueprintDefinedResourceInterfaces"
                        | { _ | Dyn }
                        | optional,
                      properties
                        | refs."definitions.nodeTypeKubernetesResourcesCustomBlueprintDefinedResourceProperties"
                        | { _ | Dyn }
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
                                js2n.Const
                                    "cloudify.kubernetes.resources.CustomBlueprintDefinedResource",
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
                      interfaces
                        | refs."definitions.nodeTypeKubernetesResourcesCustomBlueprintDefinedResourceInterfaces"
                        | { _ | Dyn }
                        | optional,
                      properties
                        | refs."definitions.nodeTypeKubernetesResourcesCustomBlueprintDefinedResourceProperties"
                        | { _ | Dyn }
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
                                js2n.Const
                                    "cloudify.kubernetes.resources.FileDefinedResource",
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
                      interfaces
                        | refs."definitions.nodeTypeKubernetesResourcesFileDefinedResourceInterfaces"
                        | { _ | Dyn }
                        | optional,
                      properties
                        | refs."definitions.nodeTypeKubernetesResourcesFileDefinedResourceProperties"
                        | { _ | Dyn }
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
                                js2n.Const
                                    "cloudify.kubernetes.resources.MultipleFileDefinedResources",
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
                      interfaces
                        | refs."definitions.nodeTypeKubernetesResourcesMultipleFileDefinedResourcesInterfaces"
                        | { _ | Dyn }
                        | optional,
                      properties
                        | refs."definitions.nodeTypeKubernetesResourcesMultipleFileDefinedResourcesProperties"
                        | { _ | Dyn }
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
                          { type = js2n.Const "cloudify.nodes.terraform", },
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
                      interfaces
                        | refs."definitions.nodeTypeTerraformInterfaces"
                        | { _ | Dyn }
                        | optional,
                      properties
                        | refs."definitions.nodeTypeTerraformProperties"
                        | { _ | Dyn }
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
                                js2n.Const "cloudify.nodes.terraform.Module",
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
                      interfaces
                        | refs."definitions.nodeTypeTerraformModuleInterfaces"
                        | { _ | Dyn }
                        | optional,
                      properties
                        | refs."definitions.nodeTypeTerraformModuleProperties"
                        | { _ | Dyn }
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
                                js2n.Const "cloudify.nodes.terraform.Module",
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
                      interfaces
                        | refs."definitions.nodeTypeTerraformModuleInterfaces"
                        | { _ | Dyn }
                        | optional,
                      properties
                        | refs."definitions.nodeTypeTerraformModuleProperties"
                        | { _ | Dyn }
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
                                js2n.Const "cloudify.nodes.ansible.Executor",
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
                      interfaces
                        | refs."definitions.nodeTypeAnsibleExecutorInterfaces"
                        | { _ | Dyn }
                        | optional,
                      properties
                        | refs."definitions.nodeTypeAnsibleExecutorProperties"
                        | { _ | Dyn }
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
                                js2n.Const
                                    "cloudify.nodes.openstack.NetworkBase",
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
                      properties
                        | refs."definitions.nodeTypeOpenstackNetworkBaseProperties"
                        | { _ | Dyn }
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
                                js2n.Const "cloudify.nodes.openstack.Network",
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
                      interfaces
                        | refs."definitions.nodeTypeOpenstackNetworkInterfaces"
                        | { _ | Dyn }
                        | optional,
                      properties
                        | refs."definitions.nodeTypeOpenstackNetworkProperties"
                        | { _ | Dyn }
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
                                js2n.Const "cloudify.nodes.openstack.Subnet",
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
                      interfaces
                        | refs."definitions.nodeTypeOpenstackSubnetInterfaces"
                        | { _ | Dyn }
                        | optional,
                      properties
                        | refs."definitions.nodeTypeOpenstackSubnetProperties"
                        | { _ | Dyn }
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
                              type = js2n.Const "cloudify.nodes.openstack.Port",
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
                      interfaces
                        | refs."definitions.nodeTypeOpenstackPortInterfaces"
                        | { _ | Dyn }
                        | optional,
                      properties
                        | refs."definitions.nodeTypeOpenstackPortProperties"
                        | { _ | Dyn }
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
                                js2n.Const "cloudify.nodes.openstack.Router",
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
                      interfaces
                        | refs."definitions.nodeTypeOpenstackRouterInterfaces"
                        | { _ | Dyn }
                        | optional,
                      properties
                        | refs."definitions.nodeTypeOpenstackRouterProperties"
                        | { _ | Dyn }
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
                                js2n.Const
                                    "cloudify.nodes.openstack.FloatingIP",
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
                      interfaces
                        | refs."definitions.nodeTypeOpenstackFloatingIPInterfaces"
                        | { _ | Dyn }
                        | optional,
                      properties
                        | refs."definitions.nodeTypeOpenstackFloatingIPProperties"
                        | { _ | Dyn }
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
                                js2n.Const
                                    "cloudify.nodes.openstack.SecurityGroup",
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
                      interfaces
                        | refs."definitions.nodeTypeOpenstackSecurityGroupInterfaces"
                        | { _ | Dyn }
                        | optional,
                      properties
                        | refs."definitions.nodeTypeOpenstackSecurityGroupProperties"
                        | { _ | Dyn }
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
                                js2n.Const
                                    "cloudify.nodes.openstack.SecurityGroupRule",
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
                      interfaces
                        | refs."definitions.nodeTypeOpenstackSecurityGroupRuleInterfaces"
                        | { _ | Dyn }
                        | optional,
                      properties
                        | refs."definitions.nodeTypeOpenstackSecurityGroupRuleProperties"
                        | { _ | Dyn }
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
                                js2n.Const
                                    "cloudify.nodes.openstack.RBACPolicy",
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
                      properties
                        | refs."definitions.nodeTypeOpenstackRBACPolicyProperties"
                        | { _ | Dyn }
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
                                js2n.Const "cloudify.nodes.openstack.Server",
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
                      properties
                        | refs."definitions.nodeTypeOpenstackServerProperties"
                        | { _ | Dyn }
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
                                js2n.Const
                                    "cloudify.nodes.openstack.WindowsServer",
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
                      properties
                        | refs."definitions.nodeTypeOpenstackWindowsServerProperties"
                        | { _ | Dyn }
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
                                js2n.Const "cloudify.nodes.openstack.KeyPair",
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
                      interfaces
                        | refs."definitions.nodeTypeOpenstackKeyPairInterfaces"
                        | { _ | Dyn }
                        | optional,
                      properties
                        | refs."definitions.nodeTypeOpenstackKeyPairProperties"
                        | { _ | Dyn }
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
                                js2n.Const
                                    "cloudify.nodes.openstack.HostAggregate",
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
                      interfaces
                        | refs."definitions.nodeTypeOpenstackHostAggregateInterfaces"
                        | { _ | Dyn }
                        | optional,
                      properties
                        | refs."definitions.nodeTypeOpenstackHostAggregateProperties"
                        | { _ | Dyn }
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
                                js2n.Const "cloudify.nodes.openstack.Image",
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
                      interfaces
                        | refs."definitions.nodeTypeOpenstackImageInterfaces"
                        | { _ | Dyn }
                        | optional,
                      properties
                        | refs."definitions.nodeTypeOpenstackImageProperties"
                        | { _ | Dyn }
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
                                js2n.Const "cloudify.nodes.openstack.Flavor",
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
                      interfaces
                        | refs."definitions.nodeTypeOpenstackFlavorInterfaces"
                        | { _ | Dyn }
                        | optional,
                      properties
                        | refs."definitions.nodeTypeOpenstackFlavorProperties"
                        | { _ | Dyn }
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
                              type = js2n.Const "cloudify.nodes.openstack.User",
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
                      interfaces
                        | refs."definitions.nodeTypeOpenstackUserInterfaces"
                        | { _ | Dyn }
                        | optional,
                      properties
                        | refs."definitions.nodeTypeOpenstackUserProperties"
                        | { _ | Dyn }
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
                                js2n.Const "cloudify.nodes.openstack.Group",
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
                      interfaces
                        | refs."definitions.nodeTypeOpenstackGroupInterfaces"
                        | { _ | Dyn }
                        | optional,
                      properties
                        | refs."definitions.nodeTypeOpenstackGroupProperties"
                        | { _ | Dyn }
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
                              type = js2n.Const "cloudify.nodes.openstack.Role",
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
                      interfaces
                        | refs."definitions.nodeTypeOpenstackRoleInterfaces"
                        | { _ | Dyn }
                        | optional,
                      properties
                        | refs."definitions.nodeTypeOpenstackRoleProperties"
                        | { _ | Dyn }
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
                                js2n.Const "cloudify.nodes.openstack.Project",
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
                      interfaces
                        | refs."definitions.nodeTypeOpenstackProjectInterfaces"
                        | { _ | Dyn }
                        | optional,
                      properties
                        | refs."definitions.nodeTypeOpenstackProjectProperties"
                        | { _ | Dyn }
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
                                js2n.Const "cloudify.nodes.openstack.Volume",
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
                      interfaces
                        | refs."definitions.nodeTypeOpenstackVolumeInterfaces"
                        | { _ | Dyn }
                        | optional,
                      properties
                        | refs."definitions.nodeTypeOpenstackVolumeProperties"
                        | { _ | Dyn }
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
                                js2n.Const
                                    "cloudify.nodes.openstack.VolumeType",
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
                      interfaces
                        | refs."definitions.nodeTypeOpenstackVolumeTypeInterfaces"
                        | { _ | Dyn }
                        | optional,
                      properties
                        | refs."definitions.nodeTypeOpenstackVolumeTypeProperties"
                        | { _ | Dyn }
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
                              type = js2n.Const "cloudify.nodes.openstack.Zone",
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
                      interfaces
                        | refs."definitions.nodeTypeOpenstackZoneInterfaces"
                        | { _ | Dyn }
                        | optional,
                      properties
                        | refs."definitions.nodeTypeOpenstackZoneProperties"
                        | { _ | Dyn }
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
                                js2n.Const "cloudify.nodes.openstack.RecordSet",
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
                      interfaces
                        | refs."definitions.nodeTypeOpenstackRecordSetInterfaces"
                        | { _ | Dyn }
                        | optional,
                      properties
                        | refs."definitions.nodeTypeOpenstackRecordSetProperties"
                        | { _ | Dyn }
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
                                js2n.Const "cloudify.nodes.DeploymentProxy",
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
                      interfaces
                        | refs."definitions.nodeTypeCloudifyNodesDeploymentProxyInterfaces"
                        | { _ | Dyn }
                        | optional,
                      properties
                        | refs."definitions.nodeTypeCloudifyNodesDeploymentProxyProperties"
                        | { _ | Dyn }
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
                                js2n.Const "cloudify.nodes.NodeInstanceProxy",
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
                      properties
                        | refs."definitions.nodeTypeCloudifyNodesNodeInstanceProxyProperties"
                        | { _ | Dyn }
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
                                js2n.Const
                                    "cloudify.nodes.CloudInit.CloudConfig",
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
                      interfaces
                        | refs."definitions.nodeTypeCloudifyNodesCloudInitCloudConfigInterfaces"
                        | { _ | Dyn }
                        | optional,
                      properties
                        | refs."definitions.nodeTypeCloudifyNodesCloudInitCloudConfigProperties"
                        | { _ | Dyn }
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
                          { type = js2n.Const "cloudify.keys.nodes.RSAKey", },
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
                      interfaces
                        | refs."definitions.nodeTypeCloudifyNodesRSAKeyInterfaces"
                        | { _ | Dyn }
                        | optional,
                      properties
                        | refs."definitions.nodeTypeCloudifyNodesRSAKeyProperties"
                        | { _ | Dyn }
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
                          { type = js2n.Const "cloudify.terminal.raw", },
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
                      interfaces
                        | refs."definitions.nodeTypeCloudifyTerminalRawInterfaces"
                        | { _ | Dyn }
                        | optional,
                      properties
                        | refs."definitions.nodeTypeCloudifyTerminalRawProperties"
                        | { _ | Dyn }
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
                          { type = js2n.Const "cloudify.nodes.File", },
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
                      interfaces
                        | refs."definitions.nodeTypeCloudifyNodesFileInterfaces"
                        | { _ | Dyn }
                        | optional,
                      properties
                        | refs."definitions.nodeTypeCloudifyNodesFileProperties"
                        | { _ | Dyn }
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
                          { type = js2n.Const "cloudify.nodes.ftp", },
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
                      interfaces
                        | refs."definitions.nodeTypeCloudifyNodesFTPInterfaces"
                        | { _ | Dyn }
                        | optional,
                      properties
                        | refs."definitions.nodeTypeCloudifyNodesFTPProperties"
                        | { _ | Dyn }
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
                          { type = js2n.Const "cloudify.rest.Requests", },
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
                      interfaces
                        | refs."definitions.nodeTypeCloudifyRestRequestsInterfaces"
                        | { _ | Dyn }
                        | optional,
                      properties
                        | refs."definitions.nodeTypeCloudifyRestRequestsProperties"
                        | { _ | Dyn }
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
                          { type = js2n.Const "cloudify.rest.BunchRequests", },
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
                      interfaces
                        | refs."definitions.nodeTypeCloudifyRestBunchRequestsInterfaces"
                        | { _ | Dyn }
                        | optional,
                      properties
                        | refs."definitions.nodeTypeCloudifyRestBunchRequestsProperties"
                        | { _ | Dyn }
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
                              type = js2n.Const "cloudify.nodes.secrets.Writer",
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
                      interfaces
                        | refs."definitions.nodeTypeCloudifyNodesSecretsWriterInterfaces"
                        | { _ | Dyn }
                        | optional,
                      properties
                        | refs."definitions.nodeTypeCloudifyNodesSecretsWriterProperties"
                        | { _ | Dyn }
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
                              type = js2n.Const "cloudify.nodes.secrets.Reader",
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
                      interfaces
                        | refs."definitions.nodeTypeCloudifyNodesSecretsReaderInterfaces"
                        | { _ | Dyn }
                        | optional,
                      properties
                        | refs."definitions.nodeTypeCloudifyNodesSecretsReaderProperties"
                        | { _ | Dyn }
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
                                js2n.Const "cloudify.azure.nodes.ResourceGroup",
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
                      interfaces
                        | refs."definitions.nodeTypeCloudifyAzureNodesResourceGroupInterfaces"
                        | { _ | Dyn }
                        | optional,
                      properties
                        | refs."definitions.nodeTypeCloudifyAzureNodesResourceGroupProperties"
                        | { _ | Dyn }
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
                                js2n.Const
                                    "cloudify.azure.nodes.storage.StorageAccount",
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
                      interfaces
                        | refs."definitions.nodeTypeCloudifyAzureNodesStorageStorageAccountInterfaces"
                        | { _ | Dyn }
                        | optional,
                      properties
                        | refs."definitions.nodeTypeCloudifyAzureNodesStorageStorageAccountProperties"
                        | { _ | Dyn }
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
                                js2n.Const
                                    "cloudify.azure.nodes.storage.DataDisk",
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
                      interfaces
                        | refs."definitions.nodeTypeCloudifyAzureNodesStorageDataDisktInterfaces"
                        | { _ | Dyn }
                        | optional,
                      properties
                        | refs."definitions.nodeTypeCloudifyAzureNodesStorageDataDiskProperties"
                        | { _ | Dyn }
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
                                js2n.Const
                                    "cloudify.azure.nodes.storage.FileShare",
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
                      interfaces
                        | refs."definitions.nodeTypeCloudifyAzureNodesStorageFileShareInterfaces"
                        | { _ | Dyn }
                        | optional,
                      properties
                        | refs."definitions.nodeTypeCloudifyAzureNodesStorageFileShareProperties"
                        | { _ | Dyn }
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
                                js2n.Const
                                    "cloudify.azure.nodes.network.VirtualNetwork",
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
                      interfaces
                        | refs."definitions.nodeTypeCloudifyAzureNodesNetworkVirtualNetworkInterfaces"
                        | { _ | Dyn }
                        | optional,
                      properties
                        | refs."definitions.nodeTypeCloudifyAzureNodesNetworkVirtualNetworkProperties"
                        | { _ | Dyn }
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
                                js2n.Const
                                    "cloudify.azure.nodes.network.NetworkSecurityGroup",
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
                      interfaces
                        | refs."definitions.nodeTypeCloudifyAzureNodesNetworkNetworkSecurityGroupInterfaces"
                        | { _ | Dyn }
                        | optional,
                      properties
                        | refs."definitions.nodeTypeCloudifyAzureNodesNetworkNetworkSecurityGroupProperties"
                        | { _ | Dyn }
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
                                js2n.Const
                                    "cloudify.azure.nodes.network.NetworkSecurityRule",
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
                      interfaces
                        | refs."definitions.nodeTypeCloudifyAzureNodesNetworkNetworkSecurityRuleInterfaces"
                        | { _ | Dyn }
                        | optional,
                      properties
                        | refs."definitions.nodeTypeCloudifyAzureNodesNetworkNetworkSecurityRuleProperties"
                        | { _ | Dyn }
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
                                js2n.Const
                                    "cloudify.azure.nodes.network.Subnet",
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
                      interfaces
                        | refs."definitions.nodeTypeCloudifyAzureNodesNetworkSubnetInterfaces"
                        | { _ | Dyn }
                        | optional,
                      properties
                        | refs."definitions.nodeTypeCloudifyAzureNodesNetworkSubnetProperties"
                        | { _ | Dyn }
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
                                js2n.Const
                                    "cloudify.azure.nodes.network.RouteTable",
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
                      interfaces
                        | refs."definitions.nodeTypeCloudifyAzureNodesNetworkRouteTableInterfaces"
                        | { _ | Dyn }
                        | optional,
                      properties
                        | refs."definitions.nodeTypeCloudifyAzureNodesNetworkRouteTableProperties"
                        | { _ | Dyn }
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
                                js2n.Const "cloudify.azure.nodes.network.Route",
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
                      interfaces
                        | refs."definitions.nodeTypeCloudifyAzureNodesNetworkRouteInterfaces"
                        | { _ | Dyn }
                        | optional,
                      properties
                        | refs."definitions.nodeTypeCloudifyAzureNodesNetworkRouteProperties"
                        | { _ | Dyn }
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
                                js2n.Const
                                    "cloudify.azure.nodes.network.NetworkInterfaceCard",
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
                      interfaces
                        | refs."definitions.nodeTypeCloudifyAzureNodesNetworkNetworkInterfaceCardInterfaces"
                        | { _ | Dyn }
                        | optional,
                      properties
                        | refs."definitions.nodeTypeCloudifyAzureNodesNetworkNetworkInterfaceCardProperties"
                        | { _ | Dyn }
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
                                js2n.Const
                                    "cloudify.azure.nodes.network.IPConfiguration",
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
                      properties
                        | refs."definitions.nodeTypeCloudifyAzureNodesNetworkIPConfigurationProperties"
                        | { _ | Dyn }
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
                                js2n.Const
                                    "cloudify.azure.nodes.network.PublicIPAddress",
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
                      interfaces
                        | refs."definitions.nodeTypeCloudifyAzureNodesNetworkPublicIPAddressInterfaces"
                        | { _ | Dyn }
                        | optional,
                      properties
                        | refs."definitions.nodeTypeCloudifyAzureNodesNetworkPublicIPAddressProperties"
                        | { _ | Dyn }
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
                                js2n.Const
                                    "cloudify.azure.nodes.compute.AvailabilitySet",
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
                      interfaces
                        | refs."definitions.nodeTypeCloudifyAzureNodesComputeAvailabilitySetInterfaces"
                        | { _ | Dyn }
                        | optional,
                      properties
                        | refs."definitions.nodeTypeCloudifyAzureNodesComputeAvailabilitySetProperties"
                        | { _ | Dyn }
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
                                js2n.Const
                                    "cloudify.azure.nodes.compute.VirtualMachine",
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
                      interfaces
                        | refs."definitions.nodeTypeCloudifyAzureNodesComputeVirtualMachineInterfaces"
                        | { _ | Dyn }
                        | optional,
                      properties
                        | refs."definitions.nodeTypeCloudifyAzureNodesComputeVirtualMachineProperties"
                        | { _ | Dyn }
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
                                js2n.Const
                                    "cloudify.azure.nodes.compute.WindowsVirtualMachine",
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
                      interfaces
                        | refs."definitions.nodeTypeCloudifyAzureNodesComputeWindowsVirtualMachineInterfaces"
                        | { _ | Dyn }
                        | optional,
                      properties
                        | refs."definitions.nodeTypeCloudifyAzureNodesComputeWindowsVirtualMachineProperties"
                        | { _ | Dyn }
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
                                js2n.Const
                                    "cloudify.azure.nodes.compute.VirtualMachineExtension",
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
                      interfaces
                        | refs."definitions.nodeTypeCloudifyAzureNodesComputeVirtualMachineExtensionInterfaces"
                        | { _ | Dyn }
                        | optional,
                      properties
                        | refs."definitions.nodeTypeCloudifyAzureNodesComputeVirtualMachineExtensionProperties"
                        | { _ | Dyn }
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
                                js2n.Const
                                    "cloudify.azure.nodes.network.LoadBalancer",
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
                      interfaces
                        | refs."definitions.nodeTypeCloudifyAzureNodesNetworkLoadBalancerInterfaces"
                        | { _ | Dyn }
                        | optional,
                      properties
                        | refs."definitions.nodeTypeCloudifyAzureNodesNetworkLoadBalancerProperties"
                        | { _ | Dyn }
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
                                js2n.Const
                                    "cloudify.azure.nodes.network.LoadBalancer.BackendAddressPool",
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
                      interfaces
                        | refs."definitions.nodeTypeCloudifyAzureNodesNetworkLoadBalancerBackendAddressPoolInterfaces"
                        | { _ | Dyn }
                        | optional,
                      properties
                        | refs."definitions.nodeTypeCloudifyAzureNodesNetworkLoadBalancerBackendAddressPoolProperties"
                        | { _ | Dyn }
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
                                js2n.Const
                                    "cloudify.azure.nodes.network.LoadBalancer.Probe",
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
                      interfaces
                        | refs."definitions.nodeTypeCloudifyAzureNodesNetworkLoadBalancerProbeInterfaces"
                        | { _ | Dyn }
                        | optional,
                      properties
                        | refs."definitions.nodeTypeCloudifyAzureNodesNetworkLoadBalancerProbeProperties"
                        | { _ | Dyn }
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
                                js2n.Const
                                    "cloudify.azure.nodes.network.LoadBalancer.IncomingNATRule",
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
                      interfaces
                        | refs."definitions.nodeTypeCloudifyAzureNodesNetworkLoadBalancerIncomingNATRuleInterfaces"
                        | { _ | Dyn }
                        | optional,
                      properties
                        | refs."definitions.nodeTypeCloudifyAzureNodesNetworkLoadBalancerIncomingNATRuleProperties"
                        | { _ | Dyn }
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
                                js2n.Const
                                    "cloudify.azure.nodes.network.LoadBalancer.Rule",
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
                      interfaces
                        | refs."definitions.nodeTypeCloudifyAzureNodesNetworkLoadBalancerRuleInterfaces"
                        | { _ | Dyn }
                        | optional,
                      properties
                        | refs."definitions.nodeTypeCloudifyAzureNodesNetworkLoadBalancerRuleProperties"
                        | { _ | Dyn }
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
                          { type = js2n.Const "cloudify.azure.Deployment", },
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
                      interfaces
                        | refs."definitions.nodeTypeCloudifyAzureDeploymentInterfaces"
                        | { _ | Dyn }
                        | optional,
                      properties
                        | refs."definitions.nodeTypeCloudifyAzureDeploymentProperties"
                        | { _ | Dyn }
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
                                js2n.Const
                                    "cloudify.azure.nodes.compute.ContainerService",
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
                      interfaces
                        | refs."definitions.nodeTypeCloudifyAzureNodesComputeContainerServiceInterfaces"
                        | { _ | Dyn }
                        | optional,
                      properties
                        | refs."definitions.nodeTypeCloudifyAzureNodesComputeContainerServiceProperties"
                        | { _ | Dyn }
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
                          { type = js2n.Const "cloudify.azure.nodes.Plan", },
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
                      interfaces
                        | refs."definitions.nodeTypeCloudifyAzureNodesPlanInterfaces"
                        | { _ | Dyn }
                        | optional,
                      properties
                        | refs."definitions.nodeTypeCloudifyAzureNodesPlanProperties"
                        | { _ | Dyn }
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
                          { type = js2n.Const "cloudify.azure.nodes.WebApp", },
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
                      interfaces
                        | refs."definitions.nodeTypeCloudifyAzureNodesWebAppInterfaces"
                        | { _ | Dyn }
                        | optional,
                      properties
                        | refs."definitions.nodeTypeCloudifyAzureNodesWebAppProperties"
                        | { _ | Dyn }
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
                                js2n.Const
                                    "cloudify.azure.nodes.PublishingUser",
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
                      interfaces
                        | refs."definitions.nodeTypeCloudifyAzureNodesPublishingUserInterfaces"
                        | { _ | Dyn }
                        | optional,
                      properties
                        | refs."definitions.nodeTypeCloudifyAzureNodesPublishingUserProperties"
                        | { _ | Dyn }
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
                                js2n.Const
                                    "cloudify.azure.nodes.compute.ManagedCluster",
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
                      interfaces
                        | refs."definitions.nodeTypeCloudifyAzureNodesComputeManagedClusterInterfaces"
                        | { _ | Dyn }
                        | optional,
                      properties
                        | refs."definitions.nodeTypeCloudifyAzureNodesComputeManagedClusterProperties"
                        | { _ | Dyn }
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
                          { type = js2n.Const "cloudify.gcp.project", },
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
                      interfaces
                        | refs."definitions.nodeTypeCloudifyGCPProjectInterfaces"
                        | { _ | Dyn }
                        | optional,
                      properties
                        | refs."definitions.nodeTypeCloudifyGCPProjectProperties"
                        | { _ | Dyn }
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
                          { type = js2n.Const "cloudify.gcp.nodes.Instance", },
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
                      interfaces
                        | refs."definitions.nodeTypeCloudifyGCPNodesInstanceInterfaces"
                        | { _ | Dyn }
                        | optional,
                      properties
                        | refs."definitions.nodeTypeCloudifyGCPNodesInstanceProperties"
                        | { _ | Dyn }
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
                          { type = js2n.Const "cloudify.nodes.helm.Binary", },
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
                      properties
                        | refs."definitions.nodeTypeHelmBinaryProperties"
                        | { _ | Dyn }
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
                          { type = js2n.Const "cloudify.nodes.helm.Release", },
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
                      interfaces
                        | refs."definitions.nodeTypeHelmReleaseInterfaces"
                        | { _ | Dyn }
                        | optional,
                      properties
                        | refs."definitions.nodeTypeHelmReleaseProperties"
                        | { _ | Dyn }
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
                          { type = js2n.Const "cloudify.nodes.helm.Repo", },
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
                      interfaces
                        | refs."definitions.nodeTypeHelmRepoInterfaces"
                        | { _ | Dyn }
                        | optional,
                      properties
                        | refs."definitions.nodeTypeHelmRepoProperties"
                        | { _ | Dyn }
                        | optional,
                      ..
                    },
                    Array Dyn
                  ]) js2n.Always,
              {
                capabilities
                  | { _ | Dyn }
                  | doc "Used for specifying the node template capabilities (Supported since: cloudify_dsl_1_3.) Only the scalable capability is supported."
                  | optional,
                instances
                  | { _ | Dyn }
                  | doc "Instances configuration. (Deprecated. Replaced with capabilities.scalable)"
                  | optional,
                interfaces
                  | refs."definitions.nodeTemplateInterfaces"
                  | { _ | Dyn }
                  | doc "Used for a mapping plugins to interfaces operation, or for specifying inputs for already-mapped node type operations."
                  | optional,
                properties
                  | { _ | Dyn }
                  | doc "The properties of the node template, matching its node type properties schema."
                  | optional,
                relationships
                  | refs."definitions.nodeTemplateRelationships"
                  | Array Dyn
                  | doc "Used for specifying the relationships that this node template has with other node templates."
                  | optional,
                type
                  | std.contract.any_of
                    [
                      String,
                      std.contract.Sequence
                        [
                          std.enum.TagOrString,
                          [|
                            '"cloudify.nodes.helm.Repo",
                            '"cloudify.nodes.helm.Release",
                            '"cloudify.nodes.helm.Binary",
                            '"cloudify.kubernetes.resources.StatefulSet",
                            '"cloudify.gcp.nodes.Logging.Projects.metrics",
                            '"cloudify.gcp.nodes.Logging.Projects.exclusions",
                            '"cloudify.gcp.nodes.Logging.Organizations.exclusions",
                            '"cloudify.gcp.nodes.Logging.Folders.exclusions",
                            '"cloudify.gcp.nodes.Logging.BillingAccounts.exclusions",
                            '"cloudify.gcp.nodes.Logging.Projects.sinks",
                            '"cloudify.gcp.nodes.Logging.Organizations.sinks",
                            '"cloudify.gcp.nodes.Logging.Folders.sinks",
                            '"cloudify.gcp.nodes.Logging.BillingAccounts.sinks",
                            '"cloudify.gcp.nodes.LoggingExclusion",
                            '"cloudify.gcp.nodes.LoggingSink",
                            '"cloudify.gcp.nodes.StackDriverUpTimeCheckConfig",
                            '"cloudify.gcp.nodes.StackDriverTimeSeries",
                            '"cloudify.gcp.nodes.StackDriverGroup",
                            '"cloudify.gcp.nodes.PullRequest",
                            '"cloudify.gcp.nodes.Acknowledge",
                            '"cloudify.gcp.nodes.SubscriptionPolicy",
                            '"cloudify.gcp.nodes.Subscription",
                            '"cloudify.gcp.nodes.TopicMessage",
                            '"cloudify.gcp.nodes.TopicPolicy",
                            '"cloudify.gcp.nodes.Topic",
                            '"cloudify.gcp.nodes.KubernetesClusterNetworkPolicy",
                            '"cloudify.gcp.nodes.KubernetesClusterlegacyAbac",
                            '"cloudify.gcp.nodes.KubernetesClusterMonitoring",
                            '"cloudify.gcp.nodes.KubernetesNodePool",
                            '"cloudify.gcp.nodes.KubernetesCluster",
                            '"cloudify.gcp.nodes.DNSTXTRecord",
                            '"cloudify.gcp.nodes.DNSNSRecord",
                            '"cloudify.gcp.nodes.DNSMXRecord",
                            '"cloudify.gcp.nodes.DNSAAAARecord",
                            '"cloudify.gcp.nodes.DNSRecord",
                            '"cloudify.gcp.nodes.DNSZone",
                            '"cloudify.gcp.nodes.GlobalForwardingRule",
                            '"cloudify.gcp.nodes.ForwardingRule",
                            '"cloudify.gcp.nodes.SslCertificate",
                            '"cloudify.gcp.nodes.TargetProxy",
                            '"cloudify.gcp.nodes.UrlMap",
                            '"cloudify.gcp.nodes.RegionBackendService",
                            '"cloudify.gcp.nodes.BackendService",
                            '"cloudify.gcp.nodes.HealthCheck",
                            '"cloudify.gcp.nodes.Image",
                            '"cloudify.gcp.nodes.Address",
                            '"cloudify.gcp.nodes.StaticIP",
                            '"cloudify.gcp.nodes.GlobalAddress",
                            '"cloudify.gcp.nodes.ExternalIP",
                            '"cloudify.gcp.nodes.KeyPair",
                            '"cloudify.gcp.nodes.Access",
                            '"cloudify.gcp.nodes.SecurityGroup",
                            '"cloudify.gcp.nodes.FirewallRule",
                            '"cloudify.gcp.nodes.Route",
                            '"cloudify.gcp.nodes.VPCNetworkPeering",
                            '"cloudify.gcp.nodes.SubNetwork",
                            '"cloudify.gcp.nodes.Network",
                            '"cloudify.gcp.nodes.Snapshot",
                            '"cloudify.gcp.nodes.Volume",
                            '"cloudify.gcp.nodes.InstanceGroup",
                            '"cloudify.gcp.nodes.Instance",
                            '"cloudify.gcp.project",
                            '"cloudify.azure.nodes.compute.ManagedCluster",
                            '"cloudify.azure.nodes.PublishingUser",
                            '"cloudify.azure.nodes.WebApp",
                            '"cloudify.azure.nodes.Plan",
                            '"cloudify.azure.nodes.compute.ContainerService",
                            '"cloudify.azure.Deployment",
                            '"cloudify.azure.nodes.network.LoadBalancer.Rule",
                            '"cloudify.azure.nodes.network.LoadBalancer.IncomingNATRule",
                            '"cloudify.azure.nodes.network.LoadBalancer.Probe",
                            '"cloudify.azure.nodes.network.LoadBalancer.BackendAddressPool",
                            '"cloudify.azure.nodes.network.LoadBalancer",
                            '"cloudify.azure.nodes.compute.VirtualMachineExtension",
                            '"cloudify.azure.nodes.compute.WindowsVirtualMachine",
                            '"cloudify.azure.nodes.compute.VirtualMachine",
                            '"cloudify.azure.nodes.compute.AvailabilitySet",
                            '"cloudify.azure.nodes.network.PublicIPAddress",
                            '"cloudify.azure.nodes.network.IPConfiguration",
                            '"cloudify.azure.nodes.network.NetworkInterfaceCard",
                            '"cloudify.azure.nodes.network.Route",
                            '"cloudify.azure.nodes.network.RouteTable",
                            '"cloudify.azure.nodes.network.Subnet",
                            '"cloudify.azure.nodes.network.NetworkSecurityRule",
                            '"cloudify.azure.nodes.network.NetworkSecurityGroup",
                            '"cloudify.azure.nodes.network.VirtualNetwork",
                            '"cloudify.azure.nodes.storage.FileShare",
                            '"cloudify.azure.nodes.storage.DataDisk",
                            '"cloudify.azure.nodes.storage.StorageAccount",
                            '"cloudify.nodes.aws.eks.NodeGroup",
                            '"cloudify.nodes.aws.eks.Cluster",
                            '"cloudify.nodes.swift.s3.BucketObject",
                            '"cloudify.nodes.swift.s3.Bucket",
                            '"cloudify.nodes.aws.ecs.TaskDefinition",
                            '"cloudify.nodes.aws.ecs.Service",
                            '"cloudify.nodes.aws.ecs.Cluster",
                            '"cloudify.nodes.aws.CloudFormation.Stack",
                            '"cloudify.nodes.aws.kms.Grant",
                            '"cloudify.nodes.aws.kms.Alias",
                            '"cloudify.nodes.aws.kms.CustomerMasterKey",
                            '"cloudify.nodes.aws.efs.FileSystemTags",
                            '"cloudify.nodes.aws.efs.MountTarget",
                            '"cloudify.nodes.aws.efs.FileSystem",
                            '"cloudify.nodes.aws.cloudwatch.Target",
                            '"cloudify.nodes.aws.cloudwatch.Event",
                            '"cloudify.nodes.aws.cloudwatch.Rule",
                            '"cloudify.nodes.aws.cloudwatch.Alarm",
                            '"cloudify.nodes.aws.autoscaling.NotificationConfiguration",
                            '"cloudify.nodes.aws.autoscaling.LifecycleHook",
                            '"cloudify.nodes.aws.autoscaling.Policy",
                            '"cloudify.nodes.aws.autoscaling.LaunchConfiguration",
                            '"cloudify.nodes.aws.autoscaling.Group",
                            '"cloudify.nodes.aws.ec2.EBSAttachment",
                            '"cloudify.nodes.aws.ec2.EBSVolume",
                            '"cloudify.nodes.aws.ec2.Tags",
                            '"cloudify.nodes.aws.ec2.Image",
                            '"cloudify.nodes.aws.ec2.Route",
                            '"cloudify.nodes.aws.ec2.RouteTable",
                            '"cloudify.nodes.aws.ec2.InternetGateway",
                            '"cloudify.nodes.aws.ec2.CustomerGateway",
                            '"cloudify.nodes.aws.ec2.VPNConnectionRoute",
                            '"cloudify.nodes.aws.ec2.VPNConnection",
                            '"cloudify.nodes.aws.ec2.VPNGateway",
                            '"cloudify.nodes.aws.ec2.DHCPOptions",
                            '"cloudify.nodes.aws.ec2.NetworkAclEntry",
                            '"cloudify.nodes.aws.ec2.NetworkACL",
                            '"cloudify.nodes.aws.ec2.ElasticIP",
                            '"cloudify.nodes.aws.ec2.Keypair",
                            '"cloudify.nodes.aws.ec2.Instances",
                            '"cloudify.nodes.aws.ec2.Interface",
                            '"cloudify.nodes.aws.ec2.NATGateway",
                            '"cloudify.nodes.aws.ec2.SecurityGroupRuleEgress",
                            '"cloudify.nodes.aws.ec2.SecurityGroupRuleIngress",
                            '"cloudify.nodes.aws.ec2.SecurityGroup",
                            '"cloudify.nodes.aws.ec2.Subnet",
                            '"cloudify.nodes.aws.ec2.VpcPeeringRejectRequest",
                            '"cloudify.nodes.aws.ec2.VpcPeeringAcceptRequest",
                            '"cloudify.nodes.aws.ec2.VpcPeeringRequest",
                            '"cloudify.nodes.aws.ec2.VpcPeering",
                            '"cloudify.nodes.aws.ec2.Vpc",
                            '"cloudify.nodes.aws.ec2.BaseType",
                            '"cloudify.nodes.aws.s3.BucketObject",
                            '"cloudify.nodes.aws.s3.BucketTagging",
                            '"cloudify.nodes.aws.s3.BucketLifecycleConfiguration",
                            '"cloudify.nodes.aws.s3.BucketPolicy",
                            '"cloudify.nodes.aws.s3.Bucket",
                            '"cloudify.nodes.aws.s3.BaseBucketObject",
                            '"cloudify.nodes.aws.s3.BaseBucket",
                            '"cloudify.nodes.aws.elb.Classic.Policy.Stickiness",
                            '"cloudify.nodes.aws.elb.Classic.Policy",
                            '"cloudify.nodes.aws.elb.TargetGroup",
                            '"cloudify.nodes.aws.elb.Rule",
                            '"cloudify.nodes.aws.elb.Classic.Listener",
                            '"cloudify.nodes.aws.elb.Listener",
                            '"cloudify.nodes.aws.elb.Classic.HealthCheck",
                            '"cloudify.nodes.aws.elb.Classic.LoadBalancer",
                            '"cloudify.nodes.aws.elb.LoadBalancer",
                            '"cloudify.nodes.aws.SNS.Subscription",
                            '"cloudify.nodes.aws.SNS.Topic",
                            '"cloudify.nodes.aws.SQS.Queue",
                            '"cloudify.nodes.aws.route53.RecordSet",
                            '"cloudify.nodes.aws.route53.HostedZone",
                            '"cloudify.nodes.aws.rds.Parameter",
                            '"cloudify.nodes.aws.rds.ParameterGroup",
                            '"cloudify.nodes.aws.rds.Option",
                            '"cloudify.nodes.aws.rds.OptionGroup",
                            '"cloudify.nodes.aws.rds.SubnetGroup",
                            '"cloudify.nodes.aws.rds.InstanceReadReplica",
                            '"cloudify.nodes.aws.rds.Instance",
                            '"cloudify.nodes.aws.lambda.Permission",
                            '"cloudify.nodes.aws.lambda.Invoke",
                            '"cloudify.nodes.aws.lambda.Function",
                            '"cloudify.nodes.aws.iam.Policy",
                            '"cloudify.nodes.aws.iam.InstanceProfile",
                            '"cloudify.nodes.aws.iam.RolePolicy",
                            '"cloudify.nodes.aws.iam.Role",
                            '"cloudify.nodes.aws.iam.User",
                            '"cloudify.nodes.aws.iam.LoginProfile",
                            '"cloudify.nodes.aws.iam.AccessKey",
                            '"cloudify.nodes.aws.iam.Group",
                            '"cloudify.nodes.aws.dynamodb.Table",
                            '"cloudify.nodes.SharedResource",
                            '"cloudify.nodes.ServiceComponent",
                            '"cloudify.nodes.Component",
                            '"cloudify.nodes.ApplicationModule",
                            '"cloudify.nodes.MessageBugServer",
                            '"cloudify.nodes.DBMS",
                            '"cloudify.nodes.ApplicationServer",
                            '"cloudify.nodes.WebServer",
                            '"cloudify.nodes.SoftwareComponent",
                            '"cloudify.nodes.ObjectStorage",
                            '"cloudify.nodes.FileSystem",
                            '"cloudify.nodes.Volume",
                            '"cloudify.nodes.LoadBalancer",
                            '"cloudify.nodes.SecurityGroup",
                            '"cloudify.nodes.VirtualIP",
                            '"cloudify.nodes.Port",
                            '"cloudify.nodes.Router",
                            '"cloudify.nodes.Subnet",
                            '"cloudify.nodes.Network",
                            '"cloudify.nodes.Container",
                            '"cloudify.nodes.Compute",
                            '"cloudify.nodes.Tier",
                            '"cloudify.nodes.Root"
                          |]
                        ]
                    ]
                  | doc "The node-type of this node template.",
              }
            ],
      "definitions.nodeTemplateInterface" =
        js2n.record.Record
            {
              additional = 'Some Dyn,
              patterns =
                {
                    "" =
                      std.contract.Sequence
                          [
                            refs."definitions.nodeTemplateInterfaceAction",
                            std.contract.any_of [ { _ | Dyn }, String ]
                          ],
                  },
              properties =
                {
                    configure =
                      std.contract.Sequence
                          [
                            refs."definitions.nodeTemplateInterfaceAction",
                            std.contract.any_of [ { _ | Dyn }, String ]
                          ],
                    delete =
                      std.contract.Sequence
                          [
                            refs."definitions.nodeTemplateInterfaceAction",
                            std.contract.any_of [ { _ | Dyn }, String ]
                          ],
                  },
              required = {},
            },
      "definitions.nodeTemplateInterfaceAction" =
        std.contract.any_of
            [
              String,
              {
                executor
                  | std.enum.TagOrString
                  | [| 'host_agent, 'central_deployment_agent |]
                  | doc "Valid values: central_deployment_agent, host_agent. See the Plugins Specification for more info."
                  | optional,
                implementation
                  | String
                  | doc "The script or plugin task name to execute."
                  | optional,
                inputs
                  | { _ | Dyn }
                  | doc "Schema of inputs to be passed to the implementation as kwargs."
                  | optional,
                max_retries
                  | Number
                  | doc "Maximum number of retries for a task. -1 means infinite retries (Default: task_retries in the Cloudify Manager config.yaml file for remote workflows, and task_retries workflow configuration for local workflows)."
                  | optional,
                retry_interval
                  | Number
                  | doc "Minimum wait time (in seconds) between task retries (Default: task_retry_interval in the Cloudify Manager config.yaml file for remote workflows and task_retry_interval workflow configuration for local workflows)."
                  | optional,
                timeone
                  | Number
                  | doc "Number of seconds to wait before the operation is terminated by the orchestrator. A value of 0 (or no value at all, which is the default) means no timeout."
                  | optional,
                timeout_recoverable
                  | Bool
                  | doc "If true (the default), and a timeout occurred, then, the operation will raise a RecoverableError, resulting in the operation being retried. Otherwise, a NonRecoverableError is raised, ending the execution with a failure."
                  | optional,
              }
            ],
      "definitions.nodeTemplateInterfaces" =
        js2n.record.Record
            {
              additional = 'Some Dyn,
              patterns =
                {
                    "" =
                      std.contract.Sequence
                          [
                            refs."definitions.nodeTemplateInterface",
                            { _ | Dyn }
                          ],
                  },
              properties = {},
              required = {},
            },
      "definitions.nodeTemplateRelationship" =
        {
            connection_type
              | std.enum.TagOrString
              | [| 'all_to_one, 'all_to_all |]
              | doc "Valid values: all_to_all and all_to_one (See explanation below.)"
              | optional,
            source_interfaces
              | { _ | Dyn }
              | doc "A dictionary of interfaces."
              | optional,
            target
              | String
              | doc "The name of the node to which the current node is related."
              | optional,
            target_interfaces
              | { _ | Dyn }
              | doc "A dictionary of interfaces."
              | optional,
            type
              | String
              | doc "Either a newly-declared relationship type or one of the relationship types provided by default when importing the types.yaml file.",
          },
      "definitions.nodeTemplateRelationships" =
        Array (
            std.contract.Sequence
              [ refs."definitions.nodeTemplateRelationship", { _ | Dyn } ]
          ),
      "definitions.nodeTemplates" =
        js2n.record.Record
            {
              additional = 'Some Dyn,
              patterns =
                {
                    "" =
                      std.contract.Sequence
                          [ refs."definitions.nodeTemplate", { _ | Dyn } ],
                  },
              properties = {},
              required = {},
            },
      "definitions.nodeType" =
        {
            derived_from
              | String
              | doc "A string referencing a parent type."
              | optional,
            interfaces
              | { _ | Dyn }
              | doc "A dictionary of node interfaces."
              | optional,
            properties
              | { _ | Dyn }
              | doc "A dictionary of node properties."
              | optional,
            ..
          },
      "definitions.nodeTypeAWSEC2Base" =
        {
            Tags | refs."definitions.tags" | Array Dyn | optional,
            client_config
              | refs."definitions.awsConnectionConfig"
              | { _ | Dyn }
              | optional,
            resource_id | refs."definitions.awsResourceId" | String | optional,
            use_external_resource
              | Bool
              | doc m%"
                Indicate whether the resource exists or if Cloudify should create the resource,
                true if you are bringing an existing resource, false if you want cloudify to create it.
              "%
              | optional,
            ..
          },
      "definitions.nodeTypeAWSEC2EBSAttachment" =
        {
            client_config
              | refs."definitions.awsConnectionConfig"
              | { _ | Dyn }
              | optional,
            resource_config
              | {
                kwargs
                  | {
                    Device
                      | refs."definitions.cloudifyStringOrGetInput"
                      | doc "The device name (for example, /dev/sdh or xvdh )",
                    DryRun
                      | refs."definitions.cloudifyBooleanOrGetInput"
                      | doc "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation . Otherwise, it is UnauthorizedOperation ."
                      | optional,
                    InstanceId
                      | refs."definitions.cloudifyStringOrGetInput"
                      | doc "The ID of the instance.",
                    VolumeId
                      | refs."definitions.cloudifyStringOrGetInput"
                      | doc "The ID of the EBS volume. The volume and instance must be within the same Availability Zone",
                    ..
                  }
                  | optional,
                ..
              }
              | doc m%"
                Configuration key-value data to be passed as-is to the corresponding
                Boto3 method. Key names must match the case that Boto3 requires.
              "%
              | optional,
            resource_id | refs."definitions.awsResourceId" | String | optional,
            use_external_resource
              | Bool
              | doc m%"
                Indicate whether the resource exists or if Cloudify should create the resource,
                true if you are bringing an existing resource, false if you want cloudify to create it.
              "%
              | optional,
            ..
          },
      "definitions.nodeTypeAWSEC2EBSVolume" =
        std.contract.Sequence
            [
              refs."definitions.nodeTypeAWSEC2Base",
              {
                resource_config
                  | {
                    AvailabilityZone
                      | refs."definitions.cloudifyStringOrGetInput"
                      | doc "The Availability Zone in which to create the volume.",
                    Size
                      | refs."definitions.cloudifyIntegerOrGetInput"
                      | doc "The size of the volume, in GiBs."
                      | optional,
                    kwargs
                      | {
                        DryRun
                          | refs."definitions.cloudifyBooleanOrGetInput"
                          | doc "Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is DryRunOperation . Otherwise, it is UnauthorizedOperation."
                          | optional,
                        Encrypted
                          | refs."definitions.cloudifyBooleanOrGetInput"
                          | doc m%"
                            Specifies whether the volume should be encrypted. The effect of setting the encryption state to true depends on the volume origin (new or from a snapshot), starting encryption state, ownership, and whether encryption by default is enabled. For more information, see Encryption by Default in the Amazon Elastic Compute Cloud User Guide.
                            Encrypted Amazon EBS volumes must be attached to instances that support Amazon EBS encryption. For more information, see Supported Instance Types .
                          "%
                          | optional,
                        Iops
                          | refs."definitions.cloudifyIntegerOrGetInput"
                          | doc m%"
                            The number of I/O operations per second (IOPS) to provision for the volume, with a maximum ratio of 50 IOPS/GiB. Range is 100 to 64,000 IOPS for volumes in most Regions. Maximum IOPS of 64,000 is guaranteed only on Nitro-based instances . Other instance families guarantee performance up to 32,000 IOPS. For more information, see Amazon EBS Volume Types in the Amazon Elastic Compute Cloud User Guide.
                            This parameter is valid only for Provisioned IOPS SSD (io1) volumes.
                          "%
                          | optional,
                        KmsKeyId
                          | refs."definitions.cloudifyStringOrGetInput"
                          | doc m%"
                            The identifier of the AWS Key Management Service (AWS KMS) customer master key (CMK) to use for Amazon EBS encryption. If this parameter is not specified, your AWS managed CMK for EBS is used. If KmsKeyId is specified, the encrypted state must be true.
                            
                            You can specify the CMK using any of the following:
                            
                            Key ID. For example, key/1234abcd-12ab-34cd-56ef-1234567890ab.
                            Key alias. For example, alias/ExampleAlias.
                            Key ARN. For example, arn:aws:kms:us-east-1 :012345678910 :key/abcd1234-a123-456a-a12b-a123b4cd56ef .
                            Alias ARN. For example, arn:aws:kms:us-east-1 :012345678910 :alias/ExampleAlias .
                            AWS authenticates the CMK asynchronously. Therefore, if you specify an ID, alias, or ARN that is not valid, the action can appear to complete, but eventually fails.
                          "%
                          | optional,
                        OutpostArn
                          | refs."definitions.cloudifyStringOrGetInput"
                          | doc "The Amazon Resource Name (ARN) of the Outpost."
                          | optional,
                        Size
                          | refs."definitions.cloudifyIntegerOrGetInput"
                          | doc m%"
                            The size of the volume, in GiBs. You must specify either a snapshot ID or a volume size.
                            
                            Constraints: 1-16,384 for gp2 , 4-16,384 for io1 , 500-16,384 for st1 , 500-16,384 for sc1 , and 1-1,024 for standard . If you specify a snapshot, the volume size must be equal to or larger than the snapshot size.
                            
                            Default: If you're creating the volume from a snapshot and don't specify a volume size, the default is the snapshot size.
                          "%
                          | optional,
                        SnapshotId
                          | refs."definitions.cloudifyStringOrGetInput"
                          | doc "The snapshot from which to create the volume. You must specify either a snapshot ID or a volume size."
                          | optional,
                        TagSpecifications
                          | Array
                            {
                              ResourceType
                                | refs."definitions.cloudifyStringOrGetInput"
                                | doc "The type of resource to tag. Currently, the resource types that support tagging on creation are: capacity-reservation | client-vpn-endpoint | customer-gateway | dedicated-host | dhcp-options | export-image-task | export-instance-task | fleet | fpga-image | host-reservation | import-image-task | import-snapshot-task | instance | internet-gateway | ipv4pool-ec2 | ipv6pool-ec2 | key-pair | launch-template | placement-group | prefix-list | natgateway | network-acl | route-table | security-group | spot-fleet-request | spot-instances-request | snapshot | subnet | traffic-mirror-filter | traffic-mirror-session | traffic-mirror-target | transit-gateway | transit-gateway-attachment | transit-gateway-route-table | volume |vpc | vpc-peering-connection | vpc-endpoint (for interface and gateway endpoints) | vpc-endpoint-service (for AWS PrivateLink) | vpc-flow-log | vpn-connection | vpn-gateway."
                                | optional,
                              Tags
                                | Array
                                  {
                                    Key
                                      | refs."definitions.cloudifyStringOrGetInput"
                                      | optional,
                                    Value
                                      | refs."definitions.cloudifyStringOrGetInput"
                                      | optional,
                                    ..
                                  }
                                | optional,
                              ..
                            }
                          | optional,
                        VolumeType
                          | refs."definitions.cloudifyStringOrGetInput"
                          | doc m%"
                            The volume type. This can be gp2 for General Purpose SSD, io1 for Provisioned IOPS SSD, st1 for Throughput Optimized HDD, sc1 for Cold HDD, or standard for Magnetic volumes.
                            
                            Default: gp2
                          "%
                          | optional,
                        ..
                      }
                      | optional,
                    ..
                  }
                  | doc m%"
                    Configuration key-value data to be passed as-is to the corresponding
                    Boto3 method. Key names must match the case that Boto3 requires.
                  "%
                  | optional,
                use_available_zones
                  | Bool
                  | doc "A boolean to choose another available zone if the one provided is not available."
                  | optional,
                ..
              }
            ],
      "definitions.nodeTypeAWSEC2ElasticIP" =
        {
            client_config
              | refs."definitions.awsClientConfig"
              | { _ | Dyn }
              | optional,
            ..
          },
      "definitions.nodeTypeAWSEC2Image" =
        std.contract.Sequence
            [
              refs."definitions.nodeTypeAWSEC2Base",
              {
                resource_config
                  | {
                    kwargs
                      | {
                        Filters
                          | Array
                            {
                              Name | String | optional,
                              Values | Array String | optional,
                              ..
                            }
                          | optional,
                        ..
                      }
                      | doc "https://boto3.amazonaws.com/v1/documentation/api/latest/reference/services/ec2.html#EC2.Client.describe_images"
                      | optional,
                    ..
                  }
                  | doc m%"
                    Configuration key-value data to be passed as-is to the corresponding
                    Boto3 method. Key names must match the case that Boto3 requires.
                  "%
                  | optional,
                ..
              }
            ],
      "definitions.nodeTypeAWSEC2Instances" =
        std.contract.Sequence
            [
              refs."definitions.nodeTypeAWSEC2Base",
              {
                agent_config
                  | { install_method | String | optional, .. }
                  | optional,
                resource_config
                  | {
                    ImageId
                      | refs."definitions.cloudifyStringOrGetInput"
                      | doc "The ID of the AMI. An AMI ID is required to launch an instance and must be specified here or in a launch template"
                      | optional,
                    InstanceType
                      | refs."definitions.cloudifyStringOrGetInput"
                      | doc m%"
                        The instance type. For more information, see Instance types in the Amazon Elastic Compute Cloud User Guide.
                        https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html
                        Default: m1.small
                      "%
                      | optional,
                    LaunchTemplate
                      | {
                        LaunchTemplateId
                          | refs."definitions.cloudifyStringOrGetInput"
                          | optional,
                        LaunchTemplateName
                          | refs."definitions.cloudifyStringOrGetInput"
                          | optional,
                        Version
                          | refs."definitions.cloudifyStringOrGetInput"
                          | optional,
                        ..
                      }
                      | optional,
                    MaxCount | refs."definitions.cloudifyIntegerOrGetInput",
                    MinCount | refs."definitions.cloudifyIntegerOrGetInput",
                    kwargs
                      | {
                        BlockDeviceMappings
                          | { _ | Dyn }
                          | doc "The block device mapping entries."
                          | optional,
                        Ipv6AddressCount
                          | refs."definitions.cloudifyIntegerOrGetInput"
                          | doc m%"
                            [EC2-VPC] The number of IPv6 addresses to associate with the primary network interface. Amazon EC2 chooses the IPv6 addresses from the range of your subnet. You cannot specify this option and the option to assign specific IPv6 addresses in the same request. You can specify this option if you've specified a minimum number of instances to launch.
                            
                            You cannot specify this option and the network interfaces option in the same request.
                          "%
                          | optional,
                        KernelId
                          | refs."definitions.cloudifyStringOrGetInput"
                          | doc "The ID of the kernel."
                          | optional,
                        KeyName
                          | refs."definitions.cloudifyStringOrGetInput"
                          | doc "The name of the key pair. You can create a key pair using CreateKeyPair or ImportKeyPair "
                          | optional,
                        SecondaryPrivateIpAddressCount
                          | refs."definitions.cloudifyIntegerOrGetInput"
                          | doc "The number of secondary private IPv4 addresses to assign to a network interface."
                          | optional,
                        SecurityGroupIds
                          | Array refs."definitions.cloudifyStringOrGetInput"
                          | doc m%"
                            The IDs of the security groups. You can create a security group using CreateSecurityGroup.
                            
                            If you specify a network interface, you must specify any security groups as part of the network interface.
                          "%
                          | optional,
                        SubnetId
                          | refs."definitions.cloudifyStringOrGetInput"
                          | doc "The ID of the subnet for the network interface."
                          | optional,
                        ..
                      }
                      | doc "http://boto3.readthedocs.io/en/latest/reference/services/ec2.html#EC2.Client.run_instances"
                      | optional,
                    ..
                  }
                  | doc m%"
                    Configuration key-value data to be passed as-is to the corresponding
                    Boto3 method. Key names must match the case that Boto3 requires.
                  "%
                  | optional,
                use_ipv6_ip | Bool | optional,
                ..
              }
            ],
      "definitions.nodeTypeAWSEC2Interface" =
        std.contract.Sequence
            [
              refs."definitions.nodeTypeAWSEC2Base",
              {
                resource_config
                  | {
                    kwargs
                      | {
                        Description
                          | refs."definitions.cloudifyStringOrGetInput"
                          | doc "A description for the network interface."
                          | optional,
                        Groups
                          | Array refs."definitions.cloudifyStringOrGetInput"
                          | doc "The IDs of one or more security groups."
                          | optional,
                        InterfaceType
                          | refs."definitions.cloudifyStringOrGetInput"
                          | doc "Indicates the type of network interface. To create an Elastic Fabric Adapter (EFA), specify efa . For more information, see Elastic Fabric Adapter in the Amazon Elastic Compute Cloud User Guide."
                          | optional,
                        Ipv6AddressCount
                          | refs."definitions.cloudifyIntegerOrGetInput"
                          | doc "The number of IPv6 addresses to assign to a network interface. Amazon EC2 automatically selects the IPv6 addresses from the subnet range. You can't use this option if specifying specific IPv6 addresses. If your subnet has the AssignIpv6AddressOnCreation attribute set to true , you can specify 0 to override this setting."
                          | optional,
                        PrivateIpAddress
                          | refs."definitions.cloudifyStringOrGetInput"
                          | doc "The primary private IPv4 address of the network interface. If you don't specify an IPv4 address, Amazon EC2 selects one for you from the subnet's IPv4 CIDR range. If you specify an IP address, you cannot indicate any IP addresses specified in privateIpAddresses as primary (only one IP address can be designated as primary)."
                          | optional,
                        SecondaryPrivateIpAddressCount
                          | refs."definitions.cloudifyIntegerOrGetInput"
                          | doc m%"
                            The number of secondary private IPv4 addresses to assign to a network interface. When you specify a number of secondary IPv4 addresses, Amazon EC2 selects these IP addresses within the subnet's IPv4 CIDR range. You can't specify this option and specify more than one private IP address using privateIpAddresses .
                            
                            The number of IP addresses you can assign to a network interface varies by instance type. For more information, see IP Addresses Per ENI Per Instance Type in the Amazon Virtual Private Cloud User Guide .
                          "%
                          | optional,
                        SubnetId
                          | refs."definitions.cloudifyStringOrGetInput"
                          | doc "The ID of the subnet to associate with the network interface.",
                        ..
                      }
                      | doc "http://boto3.readthedocs.io/en/latest/reference/services/ec2.html#EC2.Client.create_network_interface"
                      | optional,
                    ..
                  }
                  | doc m%"
                    Configuration key-value data to be passed as-is to the corresponding
                    Boto3 method. Key names must match the case that Boto3 requires.
                  "%
                  | optional,
                ..
              }
            ],
      "definitions.nodeTypeAWSEC2NATGateway" =
        {
            Tags | refs."definitions.tags" | Array Dyn | optional,
            client_config
              | refs."definitions.awsClientConfig"
              | { _ | Dyn }
              | optional,
            ..
          },
      "definitions.nodeTypeAWSEC2Route" =
        {
            client_config
              | refs."definitions.awsClientConfig"
              | { _ | Dyn }
              | optional,
            resource_config
              | {
                kwargs
                  | {
                    DestinationCidrBlock
                      | refs."definitions.cloudifyStringOrGetInput"
                      | optional,
                    ..
                  }
                  | optional,
                ..
              }
              | optional,
            ..
          },
      "definitions.nodeTypeAWSEC2RouteTable" =
        {
            Tags | refs."definitions.tags" | Array Dyn | optional,
            client_config
              | refs."definitions.awsClientConfig"
              | { _ | Dyn }
              | optional,
            ..
          },
      "definitions.nodeTypeAWSEC2SecurityGroup" =
        std.contract.Sequence
            [
              refs."definitions.nodeTypeAWSEC2Base",
              {
                resource_config
                  | {
                    Description
                      | refs."definitions.cloudifyStringOrGetInput"
                      | doc "The description for the security group.",
                    GroupName
                      | refs."definitions.cloudifyStringOrGetInput"
                      | doc "The name of the security group.",
                    VpcId
                      | refs."definitions.cloudifyStringOrGetInput"
                      | doc "The ID of the VPC. Required for EC2-VPC."
                      | optional,
                    kwargs
                      | { _ | Dyn }
                      | doc "http://boto3.readthedocs.io/en/latest/reference/services/ec2.html#EC2.Client.create_security_group"
                      | optional,
                    ..
                  }
                  | doc m%"
                    Configuration key-value data to be passed as-is to the corresponding
                    Boto3 method. Key names must match the case that Boto3 requires.
                  "%
                  | optional,
                ..
              }
            ],
      "definitions.nodeTypeAWSEC2SecurityGroupRuleIngress" =
        std.contract.Sequence
            [
              refs."definitions.nodeTypeAWSEC2Base",
              {
                resource_config
                  | {
                    IpPermissions
                      | Array
                        {
                          FromPort | std.number.Integer | optional,
                          IpProtocol | String | optional,
                          IpRanges | Array Dyn | optional,
                          ToPort | std.number.Integer | optional,
                          ..
                        }
                      | optional,
                    kwargs
                      | { _ | Dyn }
                      | doc m%"
                        http://boto3.readthedocs.io/en/latest/reference/services/ec2.html#EC2.Client.authorize_security_group_ingress
                        http://boto3.readthedocs.io/en/latest/reference/services/ec2.html#EC2.Client.authorize_security_group_egress
                      "%
                      | optional,
                    ..
                  }
                  | doc m%"
                    Configuration key-value data to be passed as-is to the corresponding
                    Boto3 method. Key names must match the case that Boto3 requires.
                  "%
                  | optional,
                ..
              }
            ],
      "definitions.nodeTypeAWSEC2Subnet" =
        {
            Tags | refs."definitions.tags" | Array Dyn | optional,
            client_config
              | refs."definitions.awsClientConfig"
              | { _ | Dyn }
              | optional,
            resource_config
              | {
                AvailabilityZone
                  | refs."definitions.cloudifyStringOrGetInput"
                  | optional,
                CidrBlock
                  | refs."definitions.cloudifyStringOrGetInput"
                  | optional,
                kwargs
                  | {
                    Ipv6CidrBlock
                      | refs."definitions.cloudifyStringOrGetInput"
                      | optional,
                    ..
                  }
                  | optional,
                ..
              }
              | optional,
            ..
          },
      "definitions.nodeTypeAWSEC2VPC" =
        {
            Tags | refs."definitions.tags" | Array Dyn | optional,
            client_config
              | refs."definitions.awsClientConfig"
              | { _ | Dyn }
              | optional,
            resource_config
              | {
                CidrBlock
                  | refs."definitions.cloudifyStringOrGetInput"
                  | optional,
                kwargs
                  | {
                    AmazonProvidedIpv6CidrBlock
                      | refs."definitions.cloudifyBooleanOrGetInput"
                      | optional,
                    ..
                  }
                  | optional,
                ..
              }
              | optional,
            ..
          },
      "definitions.nodeTypeAWSInternetGateway" =
        {
            client_config
              | refs."definitions.awsClientConfig"
              | { _ | Dyn }
              | optional,
            ..
          },
      "definitions.nodeTypeAnsibleExecutorInterfaces" =
        {
            "cloudify.interfaces.lifecycle"
              | {
                delete
                  | {
                    implementation
                      | std.enum.TagOrString
                      | [| '"ansible.cloudify_ansible.tasks.cleanup" |]
                      | optional,
                    ..
                  }
                  | optional,
                start
                  | {
                    implementation
                      | std.enum.TagOrString
                      | [| '"ansible.cloudify_ansible.tasks.run" |]
                      | optional,
                    inputs
                      | refs."definitions.ansiblePlaybookInputs"
                      | { _ | Dyn }
                      | optional,
                    ..
                  }
                  | optional,
                ..
              }
              | optional,
            ..
          },
      "definitions.nodeTypeAnsibleExecutorProperties" =
        std.contract.Sequence
            [ refs."definitions.ansiblePlaybookConfig", { _ | Dyn } ],
      "definitions.nodeTypeCloudifyAzureDeploymentInterfaces" =
        {
            "cloudify.interfaces.lifecycle"
              | {
                create
                  | std.enum.TagOrString
                  | [| '"azure.cloudify_azure.resources.deployment.create" |]
                  | optional,
                delete
                  | std.enum.TagOrString
                  | [| '"azure.cloudify_azure.resources.deployment.delete" |]
                  | optional,
                ..
              }
              | optional,
            ..
          },
      "definitions.nodeTypeCloudifyAzureDeploymentProperties" =
        {
            azure_config
              | refs."definitions.cloudifyDatatypesAzureConfig"
              | { _ | Dyn }
              | doc "A dictionary of values to pass to authenticate with the Azure API"
              | optional,
            client_config
              | refs."definitions.cloudifyDatatypesAzureConfig"
              | { _ | Dyn }
              | doc "A dictionary of values to pass to authenticate with the Azure API"
              | optional,
            location | refs."definitions.cloudifyStringOrGetInput",
            name | refs."definitions.cloudifyStringOrGetInput",
            params | { _ | Dyn } | doc "Deployment params" | optional,
            template
              | std.contract.any_of
                [ refs."definitions.cloudifyStringOrGetInput", { _ | Dyn } ]
              | doc m%"
                Deployment template. Can be either a string (which will be parsed as
                JSON) or a dict (which will be passed as-is to the Azure SDK).
              "%
              | optional,
            template_file
              | refs."definitions.cloudifyStringOrGetInput"
              | doc "Path or URL to template file. Ignored if `template` is specified."
              | optional,
            use_external_resource
              | refs."definitions.cloudifyBooleanOrGetInput"
              | doc "Indicate whether the resource exists or if Cloudify should create the resource"
              | optional,
            ..
          },
      "definitions.nodeTypeCloudifyAzureNodesComputeAvailabilitySetInterfaces" =
        {
            "cloudify.interfaces.lifecycle"
              | {
                create
                  | std.enum.TagOrString
                  | [|
                    '"azure.cloudify_azure.resources.compute.availabilityset.create"
                  |]
                  | optional,
                delete
                  | std.enum.TagOrString
                  | [|
                    '"azure.cloudify_azure.resources.compute.availabilityset.delete"
                  |]
                  | optional,
                ..
              }
              | optional,
            ..
          },
      "definitions.nodeTypeCloudifyAzureNodesComputeAvailabilitySetProperties" =
        {
            api_version
              | refs."definitions.cloudifyStringOrGetInput"
              | doc "Compute API Version"
              | optional,
            azure_config
              | refs."definitions.cloudifyDatatypesAzureConfig"
              | { _ | Dyn }
              | doc "A dictionary of values to pass to authenticate with the Azure API"
              | optional,
            client_config
              | refs."definitions.cloudifyDatatypesAzureConfig"
              | { _ | Dyn }
              | doc "A dictionary of values to pass to authenticate with the Azure API"
              | optional,
            location
              | refs."definitions.cloudifyStringOrGetInput"
              | doc "Specifies the supported Azure location for the resource"
              | optional,
            name
              | refs."definitions.cloudifyStringOrGetInput"
              | doc "Name for the resource."
              | optional,
            resource_config
              | refs."definitions.cloudifyDatatypesAzureComputeAvailabilitySetConfig"
              | { _ | Dyn }
              | doc "A dictionary of values to pass as properties when creating the resource"
              | optional,
            resource_group_name
              | refs."definitions.cloudifyStringOrGetInput"
              | doc m%"
                Name of the Resource Group that the existing resource belongs to
                (this is only useful when not using a relationship between a resource
                node and a Resource Group node)
              "%
              | optional,
            retry_after
              | refs."definitions.cloudifyIntegerOrGetInput"
              | doc m%"
                Overrides the Azure-specified "retry_after" response. This property
                will set the number of seconds for each task retry interval (in the
                case of iteratively checking the status of an asynchronous operation)
              "%
              | optional,
            tags
              | { _ | Dyn }
              | doc "Specifies a dictionary of one or more name and value pairs that describe a tag"
              | optional,
            use_external_resource
              | refs."definitions.cloudifyBooleanOrGetInput"
              | doc "Indicate whether the resource exists or if Cloudify should create the resource"
              | optional,
            ..
          },
      "definitions.nodeTypeCloudifyAzureNodesComputeContainerServiceInterfaces" =
        {
            "cloudify.interfaces.lifecycle"
              | {
                create
                  | {
                    implementation
                      | std.enum.TagOrString
                      | [|
                        '"azure.cloudify_azure.resources.compute.container_service.create"
                      |]
                      | optional,
                    inputs
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
                  }
                  | optional,
                delete | String | optional,
                ..
              }
              | optional,
            ..
          },
      "definitions.nodeTypeCloudifyAzureNodesComputeContainerServiceProperties" =
        {
            azure_config
              | refs."definitions.cloudifyDatatypesAzureConfig"
              | { _ | Dyn }
              | doc "A dictionary of values to pass to authenticate with the Azure API"
              | optional,
            client_config
              | refs."definitions.cloudifyDatatypesAzureConfig"
              | { _ | Dyn }
              | doc "A dictionary of values to pass to authenticate with the Azure API"
              | optional,
            container_service_config
              | refs."definitions.cloudifyStringOrGetInput"
              | doc "Container service config details"
              | optional,
            name | refs."definitions.cloudifyStringOrGetInput",
            resource_group | refs."definitions.cloudifyStringOrGetInput",
            ..
          },
      "definitions.nodeTypeCloudifyAzureNodesComputeManagedClusterInterfaces" =
        {
            "cloudify.interfaces.lifecycle"
              | {
                create
                  | {
                    implementation
                      | std.enum.TagOrString
                      | [|
                        '"azure.cloudify_azure.resources.compute.managed_cluster.create"
                      |]
                      | optional,
                    inputs
                      | {
                        azure_config
                          | refs."definitions.cloudifyDatatypesAzureConfig"
                          | { _ | Dyn }
                          | optional,
                        client_config
                          | refs."definitions.cloudifyDatatypesAzureConfig"
                          | { _ | Dyn }
                          | optional,
                        cluster_name | String | optional,
                        resource_config
                          | refs."definitions.cloudifyDatatypesAzureComputeManagedClusterConfig"
                          | { _ | Dyn }
                          | optional,
                        resource_group | String | optional,
                        ..
                      }
                      | optional,
                    ..
                  }
                  | optional,
                delete
                  | {
                    implementation
                      | std.enum.TagOrString
                      | [|
                        '"azure.cloudify_azure.resources.compute.managed_cluster.delete"
                      |]
                      | optional,
                    ..
                  }
                  | optional,
                ..
              }
              | optional,
            ..
          },
      "definitions.nodeTypeCloudifyAzureNodesComputeManagedClusterProperties" =
        {
            azure_config
              | refs."definitions.cloudifyDatatypesAzureConfig"
              | { _ | Dyn }
              | doc "A dictionary of values to pass to authenticate with the Azure API"
              | optional,
            client_config
              | refs."definitions.cloudifyDatatypesAzureConfig"
              | { _ | Dyn }
              | doc "A dictionary of values to pass to authenticate with the Azure API"
              | optional,
            cluster_name | refs."definitions.cloudifyStringOrGetInput",
            resource_config
              | refs."definitions.cloudifyDatatypesAzureComputeManagedClusterConfig"
              | { _ | Dyn }
              | doc "Managed Cluster config details, including location, profiles",
            resource_group | refs."definitions.cloudifyStringOrGetInput",
            store_kube_config_in_runtime
              | refs."definitions.cloudifyBooleanOrGetInput"
              | doc m%"
                it will store the kubernetes configuration into a runtime property ['kubeconf'] to
                use later to interact with the cluster
              "%,
            ..
          },
      "definitions.nodeTypeCloudifyAzureNodesComputeVirtualMachineExtensionInterfaces" =
        {
            "cloudify.interfaces.lifecycle"
              | {
                "create:"
                  | {
                    implementation
                      | std.enum.TagOrString
                      | [|
                        '"azure.cloudify_azure.resources.compute.virtualmachineextension.create"
                      |]
                      | optional,
                    inputs
                      | { resource_config | { _ | Dyn } | optional, .. }
                      | optional,
                    ..
                  }
                  | optional,
                delete
                  | std.enum.TagOrString
                  | [|
                    '"azure.cloudify_azure.resources.compute.virtualmachineextension.delete"
                  |]
                  | optional,
                ..
              }
              | optional,
            ..
          },
      "definitions.nodeTypeCloudifyAzureNodesComputeVirtualMachineExtensionProperties" =
        {
            api_version
              | refs."definitions.cloudifyStringOrGetInput"
              | doc "Compute API Version"
              | optional,
            azure_config
              | refs."definitions.cloudifyDatatypesAzureConfig"
              | { _ | Dyn }
              | doc "A dictionary of values to pass to authenticate with the Azure API"
              | optional,
            client_config
              | refs."definitions.cloudifyDatatypesAzureConfig"
              | { _ | Dyn }
              | doc "A dictionary of values to pass to authenticate with the Azure API"
              | optional,
            location
              | refs."definitions.cloudifyStringOrGetInput"
              | doc "Specifies the supported Azure location for the resource"
              | optional,
            name
              | refs."definitions.cloudifyStringOrGetInput"
              | doc "Name for the resource."
              | optional,
            resource_group_name
              | refs."definitions.cloudifyStringOrGetInput"
              | doc m%"
                Name of the Resource Group that the existing resource belongs to
                (this is only useful when not using a relationship between a resource
                node and a Resource Group node)
              "%
              | optional,
            retry_after
              | refs."definitions.cloudifyIntegerOrGetInput"
              | doc m%"
                Overrides the Azure-specified "retry_after" response. This property
                will set the number of seconds for each task retry interval (in the
                case of iteratively checking the status of an asynchronous operation)
              "%
              | optional,
            tags
              | { _ | Dyn }
              | doc "Specifies a dictionary of one or more name and value pairs that describe a tag"
              | optional,
            use_external_resource
              | refs."definitions.cloudifyBooleanOrGetInput"
              | doc "Indicate whether the resource exists or if Cloudify should create the resource"
              | optional,
            virtual_machine_name
              | refs."definitions.cloudifyStringOrGetInput"
              | doc m%"
                Name of the Virtual Machine that the existing resource belongs to
                (this is only useful when not using a relationship between a resource
                node and a Virtual Machine node)
              "%
              | optional,
            ..
          },
      "definitions.nodeTypeCloudifyAzureNodesComputeVirtualMachineInterfaces" =
        {
            "cloudify.interfaces.lifecycle"
              | {
                configure
                  | {
                    implementation
                      | std.enum.TagOrString
                      | [|
                        '"azure.cloudify_azure.resources.compute.virtualmachine.configure"
                      |]
                      | optional,
                    inputs
                      | {
                        command_to_execute
                          | refs."definitions.cloudifyStringOrGetInput"
                          | optional,
                        file_uris | Array String | optional,
                        ..
                      }
                      | optional,
                    ..
                  }
                  | optional,
                ..
              }
              | optional,
            ..
          },
      "definitions.nodeTypeCloudifyAzureNodesComputeVirtualMachineProperties" =
        {
            agent_config
              | refs."definitions.cloudifyDataTypesAgentConfig"
              | { _ | Dyn }
              | optional,
            api_version
              | refs."definitions.cloudifyStringOrGetInput"
              | doc "Compute API Version"
              | optional,
            azure_config
              | refs."definitions.cloudifyDatatypesAzureConfig"
              | { _ | Dyn }
              | doc "A dictionary of values to pass to authenticate with the Azure API"
              | optional,
            client_config
              | refs."definitions.cloudifyDatatypesAzureConfig"
              | { _ | Dyn }
              | doc "A dictionary of values to pass to authenticate with the Azure API"
              | optional,
            ip
              | refs."definitions.cloudifyStringOrGetInput"
              | doc m%"
                Property specifying the IP address of the resource to
                use for the agent installer.
              "%
              | optional,
            location
              | refs."definitions.cloudifyStringOrGetInput"
              | doc "Specifies the supported Azure location for the resource"
              | optional,
            name
              | refs."definitions.cloudifyStringOrGetInput"
              | doc "Name for the resource."
              | optional,
            os_family
              | refs."definitions.cloudifyStringOrGetInput"
              | doc m%"
                Property specifying what type of operating system family
                this compute node will run.
              "%
              | optional,
            plan
              | { _ | Dyn }
              | doc m%"
                Specifies information about the marketplace image used to create the virtual
                machine. This element is only used for marketplace images.
              "%
              | optional,
            resource_config
              | refs."definitions.cloudifyDatatypesAzureComputeVirtualMachineConfig"
              | { _ | Dyn }
              | doc "A dictionary of values to pass as properties when creating the resource",
            resource_group_name
              | refs."definitions.cloudifyStringOrGetInput"
              | doc m%"
                Name of the Resource Group that the existing resource belongs to
                (this is only useful when not using a relationship between a resource
                node and a Resource Group node)
              "%
              | optional,
            retry_after
              | refs."definitions.cloudifyIntegerOrGetInput"
              | doc m%"
                Overrides the Azure-specified "retry_after" response. This property
                will set the number of seconds for each task retry interval (in the
                case of iteratively checking the status of an asynchronous operation)
              "%
              | optional,
            storage_endpoint
              | refs."definitions.cloudifyStringOrGetInput"
              | doc "This is the suffix for the storage endpoint. Supported values are core.windows.net or local.azurestack.external."
              | optional,
            tags
              | { _ | Dyn }
              | doc "Specifies a dictionary of one or more name and value pairs that describe a tag"
              | optional,
            use_external_resource
              | refs."definitions.cloudifyBooleanOrGetInput"
              | doc "Indicate whether the resource exists or if Cloudify should create the resource"
              | optional,
            use_public_ip
              | refs."definitions.cloudifyBooleanOrGetInput"
              | doc m%"
                Tells the deployment to use the public IP (if available) of the resource
                for Cloudify Agent connections
              "%
              | optional,
            ..
          },
      "definitions.nodeTypeCloudifyAzureNodesComputeWindowsVirtualMachineInterfaces" =
        {
            "cloudify.interfaces.lifecycle"
              | {
                configure
                  | {
                    implementation
                      | std.enum.TagOrString
                      | [|
                        '"azure.cloudify_azure.resources.compute.virtualmachine.configure"
                      |]
                      | optional,
                    inputs
                      | {
                        command_to_execute
                          | refs."definitions.cloudifyStringOrGetInput"
                          | optional,
                        file_uris | Array String | optional,
                        ..
                      }
                      | optional,
                    ..
                  }
                  | optional,
                ..
              }
              | optional,
            ..
          },
      "definitions.nodeTypeCloudifyAzureNodesComputeWindowsVirtualMachineProperties" =
        std.contract.Sequence
            [
              js2n.Always,
              {
                agent_config | { _ | Dyn } | optional,
                os_family
                  | refs."definitions.cloudifyStringOrGetInput"
                  | optional,
                ..
              }
            ],
      "definitions.nodeTypeCloudifyAzureNodesNetworkIPConfigurationProperties" =
        {
            api_version
              | refs."definitions.cloudifyStringOrGetInput"
              | doc "Network API Version"
              | optional,
            azure_config
              | refs."definitions.cloudifyDatatypesAzureConfig"
              | { _ | Dyn }
              | doc "A dictionary of values to pass to authenticate with the Azure API"
              | optional,
            client_config
              | refs."definitions.cloudifyDatatypesAzureConfig"
              | { _ | Dyn }
              | doc "A dictionary of values to pass to authenticate with the Azure API"
              | optional,
            location
              | refs."definitions.cloudifyStringOrGetInput"
              | doc "Specifies the supported Azure location for the resource"
              | optional,
            name
              | refs."definitions.cloudifyStringOrGetInput"
              | doc "Name for the resource."
              | optional,
            resource_config
              | refs."definitions.cloudifyDatatypesAzureNetworkIPConfigurationConfig"
              | { _ | Dyn }
              | doc "A dictionary of values to pass as properties when creating the resource"
              | optional,
            resource_group_name
              | refs."definitions.cloudifyStringOrGetInput"
              | doc m%"
                Name of the Resource Group that the existing resource belongs to
                (this is only useful when not using a relationship between a resource
                node and a Resource Group node)
              "%
              | optional,
            retry_after
              | refs."definitions.cloudifyIntegerOrGetInput"
              | doc m%"
                Overrides the Azure-specified "retry_after" response. This property
                will set the number of seconds for each task retry interval (in the
                case of iteratively checking the status of an asynchronous operation)
              "%
              | optional,
            tags
              | { _ | Dyn }
              | doc "Specifies a dictionary of one or more name and value pairs that describe a tag"
              | optional,
            use_external_resource
              | refs."definitions.cloudifyBooleanOrGetInput"
              | doc "Indicate whether the resource exists or if Cloudify should create the resource"
              | optional,
            ..
          },
      "definitions.nodeTypeCloudifyAzureNodesNetworkLoadBalancerBackendAddressPoolInterfaces" =
        {
            "cloudify.interfaces.lifecycle"
              | {
                create
                  | std.enum.TagOrString
                  | [|
                    '"azure.cloudify_azure.resources.network.loadbalancer.create_backend_pool"
                  |]
                  | optional,
                delete
                  | std.enum.TagOrString
                  | [|
                    '"azure.cloudify_azure.resources.network.loadbalancer.delete_backend_pool"
                  |]
                  | optional,
                ..
              }
              | optional,
            ..
          },
      "definitions.nodeTypeCloudifyAzureNodesNetworkLoadBalancerBackendAddressPoolProperties" =
        {
            api_version
              | refs."definitions.cloudifyStringOrGetInput"
              | doc "Network API Version"
              | optional,
            azure_config
              | refs."definitions.cloudifyDatatypesAzureConfig"
              | { _ | Dyn }
              | doc "A dictionary of values to pass to authenticate with the Azure API"
              | optional,
            client_config
              | refs."definitions.cloudifyDatatypesAzureConfig"
              | { _ | Dyn }
              | doc "A dictionary of values to pass to authenticate with the Azure API"
              | optional,
            load_balancer_name
              | refs."definitions.cloudifyStringOrGetInput"
              | optional,
            location
              | refs."definitions.cloudifyStringOrGetInput"
              | doc "Specifies the supported Azure location for the resource"
              | optional,
            name
              | refs."definitions.cloudifyStringOrGetInput"
              | doc "Name for the resource."
              | optional,
            resource_group_name
              | refs."definitions.cloudifyStringOrGetInput"
              | doc m%"
                Name of the Resource Group that the existing resource belongs to
                (this is only useful when not using a relationship between a resource
                node and a Resource Group node)
              "%
              | optional,
            retry_after
              | refs."definitions.cloudifyIntegerOrGetInput"
              | doc m%"
                Overrides the Azure-specified "retry_after" response. This property
                will set the number of seconds for each task retry interval (in the
                case of iteratively checking the status of an asynchronous operation)
              "%
              | optional,
            tags
              | std.contract.any_of
                [ js2n.Null, Bool, Number, String, { _ | Dyn }, Array Dyn ]
              | doc "Specifies a dictionary of one or more name and value pairs that describe a tag"
              | optional,
            use_external_resource
              | refs."definitions.cloudifyBooleanOrGetInput"
              | doc "Indicate whether the resource exists or if Cloudify should create the resource"
              | optional,
            ..
          },
      "definitions.nodeTypeCloudifyAzureNodesNetworkLoadBalancerIncomingNATRuleInterfaces" =
        {
            "cloudify.interfaces.lifecycle"
              | {
                create
                  | std.enum.TagOrString
                  | [|
                    '"azure.cloudify_azure.resources.network.loadbalancer.create_incoming_nat_rule"
                  |]
                  | optional,
                delete
                  | std.enum.TagOrString
                  | [|
                    '"azure.cloudify_azure.resources.network.loadbalancer.delete_incoming_nat_rule"
                  |]
                  | optional,
                ..
              }
              | optional,
            ..
          },
      "definitions.nodeTypeCloudifyAzureNodesNetworkLoadBalancerIncomingNATRuleProperties" =
        {
            api_version
              | refs."definitions.cloudifyStringOrGetInput"
              | doc "Network API Version"
              | optional,
            azure_config
              | refs."definitions.cloudifyDatatypesAzureConfig"
              | { _ | Dyn }
              | doc "A dictionary of values to pass to authenticate with the Azure API"
              | optional,
            client_config
              | refs."definitions.cloudifyDatatypesAzureConfig"
              | { _ | Dyn }
              | doc "A dictionary of values to pass to authenticate with the Azure API"
              | optional,
            load_balancer_name
              | refs."definitions.cloudifyStringOrGetInput"
              | optional,
            location
              | refs."definitions.cloudifyStringOrGetInput"
              | doc "Specifies the supported Azure location for the resource"
              | optional,
            name
              | refs."definitions.cloudifyStringOrGetInput"
              | doc "Name for the resource."
              | optional,
            resource_config
              | refs."definitions.cloudifyDatatypesAzureNetworkLoadBalancerIncomingNATRuleConfig"
              | { _ | Dyn }
              | doc "A dictionary of values to pass as properties when creating the resource"
              | optional,
            resource_group_name
              | refs."definitions.cloudifyStringOrGetInput"
              | doc m%"
                Name of the Resource Group that the existing resource belongs to
                (this is only useful when not using a relationship between a resource
                node and a Resource Group node)
              "%
              | optional,
            retry_after
              | refs."definitions.cloudifyIntegerOrGetInput"
              | doc m%"
                Overrides the Azure-specified "retry_after" response. This property
                will set the number of seconds for each task retry interval (in the
                case of iteratively checking the status of an asynchronous operation)
              "%
              | optional,
            tags
              | { _ | Dyn }
              | doc "Specifies a dictionary of one or more name and value pairs that describe a tag"
              | optional,
            use_external_resource
              | refs."definitions.cloudifyBooleanOrGetInput"
              | doc "Indicate whether the resource exists or if Cloudify should create the resource"
              | optional,
            ..
          },
      "definitions.nodeTypeCloudifyAzureNodesNetworkLoadBalancerInterfaces" =
        {
            "cloudify.interfaces.lifecycle"
              | {
                configure
                  | std.enum.TagOrString
                  | [|
                    '"azure.cloudify_azure.resources.network.loadbalancer.configure"
                  |]
                  | optional,
                create
                  | std.enum.TagOrString
                  | [|
                    '"azure.cloudify_azure.resources.network.loadbalancer.create"
                  |]
                  | optional,
                delete
                  | std.enum.TagOrString
                  | [|
                    '"azure.cloudify_azure.resources.network.loadbalancer.delete"
                  |]
                  | optional,
                ..
              }
              | optional,
            ..
          },
      "definitions.nodeTypeCloudifyAzureNodesNetworkLoadBalancerProbeInterfaces" =
        {
            "cloudify.interfaces.lifecycle"
              | {
                create
                  | std.enum.TagOrString
                  | [|
                    '"azure.cloudify_azure.resources.network.loadbalancer.create_probe"
                  |]
                  | optional,
                delete | js2n.Never | optional,
                ..
              }
              | optional,
            ..
          },
      "definitions.nodeTypeCloudifyAzureNodesNetworkLoadBalancerProbeProperties" =
        {
            api_version
              | refs."definitions.cloudifyStringOrGetInput"
              | doc "Network API Version"
              | optional,
            azure_config
              | refs."definitions.cloudifyDatatypesAzureConfig"
              | { _ | Dyn }
              | doc "A dictionary of values to pass to authenticate with the Azure API"
              | optional,
            client_config
              | refs."definitions.cloudifyDatatypesAzureConfig"
              | { _ | Dyn }
              | doc "A dictionary of values to pass to authenticate with the Azure API"
              | optional,
            load_balancer_name
              | refs."definitions.cloudifyStringOrGetInput"
              | optional,
            location
              | refs."definitions.cloudifyStringOrGetInput"
              | doc "Specifies the supported Azure location for the resource"
              | optional,
            name
              | refs."definitions.cloudifyStringOrGetInput"
              | doc "Name for the resource."
              | optional,
            resource_config
              | refs."definitions.cloudifyDatatypesAzureNetworkLoadBalancerProbeConfig"
              | { _ | Dyn }
              | doc "A dictionary of values to pass as properties when creating the resource"
              | optional,
            resource_group_name
              | refs."definitions.cloudifyStringOrGetInput"
              | doc m%"
                Name of the Resource Group that the existing resource belongs to
                (this is only useful when not using a relationship between a resource
                node and a Resource Group node)
              "%
              | optional,
            retry_after
              | refs."definitions.cloudifyIntegerOrGetInput"
              | doc m%"
                Overrides the Azure-specified "retry_after" response. This property
                will set the number of seconds for each task retry interval (in the
                case of iteratively checking the status of an asynchronous operation)
              "%
              | optional,
            tags
              | { _ | Dyn }
              | doc "Specifies a dictionary of one or more name and value pairs that describe a tag"
              | optional,
            use_external_resource
              | refs."definitions.cloudifyBooleanOrGetInput"
              | doc "Indicate whether the resource exists or if Cloudify should create the resource"
              | optional,
            ..
          },
      "definitions.nodeTypeCloudifyAzureNodesNetworkLoadBalancerProperties" =
        {
            api_version
              | refs."definitions.cloudifyStringOrGetInput"
              | doc "Network API Version"
              | optional,
            azure_config
              | refs."definitions.cloudifyDatatypesAzureConfig"
              | { _ | Dyn }
              | doc "A dictionary of values to pass to authenticate with the Azure API"
              | optional,
            client_config
              | refs."definitions.cloudifyDatatypesAzureConfig"
              | { _ | Dyn }
              | doc "A dictionary of values to pass to authenticate with the Azure API"
              | optional,
            location
              | refs."definitions.cloudifyStringOrGetInput"
              | doc "Specifies the supported Azure location for the resource"
              | optional,
            name
              | refs."definitions.cloudifyStringOrGetInput"
              | doc "Name for the resource."
              | optional,
            resource_config
              | refs."definitions.cloudifyDatatypesAzureNetworkLoadBalancerConfig"
              | { _ | Dyn }
              | doc "A dictionary of values to pass as properties when creating the resource"
              | optional,
            resource_group_name
              | refs."definitions.cloudifyStringOrGetInput"
              | doc m%"
                Name of the Resource Group that the existing resource belongs to
                (this is only useful when not using a relationship between a resource
                node and a Resource Group node)
              "%
              | optional,
            retry_after
              | refs."definitions.cloudifyIntegerOrGetInput"
              | doc m%"
                Overrides the Azure-specified "retry_after" response. This property
                will set the number of seconds for each task retry interval (in the
                case of iteratively checking the status of an asynchronous operation)
              "%
              | optional,
            tags
              | { _ | Dyn }
              | doc "Specifies a dictionary of one or more name and value pairs that describe a tag"
              | optional,
            use_external_resource
              | refs."definitions.cloudifyBooleanOrGetInput"
              | doc "Indicate whether the resource exists or if Cloudify should create the resource"
              | optional,
            ..
          },
      "definitions.nodeTypeCloudifyAzureNodesNetworkLoadBalancerRuleInterfaces" =
        {
            "cloudify.interfaces.lifecycle"
              | {
                create
                  | std.enum.TagOrString
                  | [|
                    '"azure.cloudify_azure.resources.network.loadbalancer.create_rule"
                  |]
                  | optional,
                delete
                  | std.enum.TagOrString
                  | [|
                    '"azure.cloudify_azure.resources.network.loadbalancer.delete_rule"
                  |]
                  | optional,
                ..
              }
              | optional,
            ..
          },
      "definitions.nodeTypeCloudifyAzureNodesNetworkLoadBalancerRuleProperties" =
        {
            api_version
              | refs."definitions.cloudifyStringOrGetInput"
              | doc "Network API Version"
              | optional,
            azure_config
              | refs."definitions.cloudifyDatatypesAzureConfig"
              | { _ | Dyn }
              | doc "A dictionary of values to pass to authenticate with the Azure API"
              | optional,
            client_config
              | refs."definitions.cloudifyDatatypesAzureConfig"
              | { _ | Dyn }
              | doc "A dictionary of values to pass to authenticate with the Azure API"
              | optional,
            load_balancer_name
              | refs."definitions.cloudifyStringOrGetInput"
              | optional,
            location
              | refs."definitions.cloudifyStringOrGetInput"
              | doc "Specifies the supported Azure location for the resource"
              | optional,
            name
              | refs."definitions.cloudifyStringOrGetInput"
              | doc "Name for the resource."
              | optional,
            resource_config
              | refs."definitions.cloudifyDatatypesAzureNetworkLoadBalancerRuleConfig"
              | { _ | Dyn }
              | doc "A dictionary of values to pass as properties when creating the resource"
              | optional,
            resource_group_name
              | refs."definitions.cloudifyStringOrGetInput"
              | doc m%"
                Name of the Resource Group that the existing resource belongs to
                (this is only useful when not using a relationship between a resource
                node and a Resource Group node)
              "%
              | optional,
            retry_after
              | refs."definitions.cloudifyIntegerOrGetInput"
              | doc m%"
                Overrides the Azure-specified "retry_after" response. This property
                will set the number of seconds for each task retry interval (in the
                case of iteratively checking the status of an asynchronous operation)
              "%
              | optional,
            tags
              | { _ | Dyn }
              | doc "Specifies a dictionary of one or more name and value pairs that describe a tag"
              | optional,
            use_external_resource
              | refs."definitions.cloudifyBooleanOrGetInput"
              | doc "Indicate whether the resource exists or if Cloudify should create the resource"
              | optional,
            ..
          },
      "definitions.nodeTypeCloudifyAzureNodesNetworkNetworkInterfaceCardInterfaces" =
        {
            "cloudify.interfaces.lifecycle"
              | {
                configure
                  | std.enum.TagOrString
                  | [|
                    '"azure.cloudify_azure.resources.network.networkinterfacecard.configure"
                  |]
                  | optional,
                create
                  | std.enum.TagOrString
                  | [|
                    '"azure.cloudify_azure.resources.network.networkinterfacecard.create"
                  |]
                  | optional,
                delete
                  | std.enum.TagOrString
                  | [|
                    '"azure.cloudify_azure.resources.network.networkinterfacecard.delete"
                  |]
                  | optional,
                start
                  | std.enum.TagOrString
                  | [|
                    '"azure.cloudify_azure.resources.network.networkinterfacecard.start"
                  |]
                  | optional,
                ..
              }
              | optional,
            ..
          },
      "definitions.nodeTypeCloudifyAzureNodesNetworkNetworkInterfaceCardProperties" =
        {
            api_version
              | refs."definitions.cloudifyStringOrGetInput"
              | doc "Network API Version"
              | optional,
            azure_config
              | refs."definitions.cloudifyDatatypesAzureConfig"
              | { _ | Dyn }
              | doc "A dictionary of values to pass to authenticate with the Azure API"
              | optional,
            client_config
              | refs."definitions.cloudifyDatatypesAzureConfig"
              | { _ | Dyn }
              | doc "A dictionary of values to pass to authenticate with the Azure API"
              | optional,
            location
              | refs."definitions.cloudifyStringOrGetInput"
              | doc "Specifies the supported Azure location for the resource"
              | optional,
            name
              | refs."definitions.cloudifyStringOrGetInput"
              | doc "Name for the resource."
              | optional,
            primary
              | std.contract.any_of
                [ js2n.Null, Bool, Number, String, { _ | Dyn }, Array Dyn ]
              | doc "When using multiple Network Interfaces, a primary must be set"
              | optional,
            resource_config
              | refs."definitions.cloudifyDatatypesAzureNetworkNetworkInterfaceCardConfig"
              | { _ | Dyn }
              | doc "A dictionary of values to pass as properties when creating the resource"
              | optional,
            resource_group_name
              | refs."definitions.cloudifyStringOrGetInput"
              | doc m%"
                Name of the Resource Group that the existing resource belongs to
                (this is only useful when not using a relationship between a resource
                node and a Resource Group node)
              "%
              | optional,
            retry_after
              | refs."definitions.cloudifyIntegerOrGetInput"
              | doc m%"
                Overrides the Azure-specified "retry_after" response. This property
                will set the number of seconds for each task retry interval (in the
                case of iteratively checking the status of an asynchronous operation)
              "%
              | optional,
            tags
              | { _ | Dyn }
              | doc "Specifies a dictionary of one or more name and value pairs that describe a tag"
              | optional,
            use_external_resource
              | refs."definitions.cloudifyBooleanOrGetInput"
              | doc "Indicate whether the resource exists or if Cloudify should create the resource"
              | optional,
            ..
          },
      "definitions.nodeTypeCloudifyAzureNodesNetworkNetworkSecurityGroupInterfaces" =
        {
            "cloudify.interfaces.lifecycle"
              | {
                create
                  | std.enum.TagOrString
                  | [|
                    '"azure.cloudify_azure.resources.network.networksecuritygroup.create"
                  |]
                  | optional,
                delete
                  | std.enum.TagOrString
                  | [|
                    '"azure.cloudify_azure.resources.network.networksecuritygroup.delete"
                  |]
                  | optional,
                ..
              }
              | optional,
            ..
          },
      "definitions.nodeTypeCloudifyAzureNodesNetworkNetworkSecurityGroupProperties" =
        {
            api_version
              | refs."definitions.cloudifyStringOrGetInput"
              | doc "Network API Version"
              | optional,
            azure_config
              | refs."definitions.cloudifyDatatypesAzureConfig"
              | { _ | Dyn }
              | doc "A dictionary of values to pass to authenticate with the Azure API"
              | optional,
            client_config
              | refs."definitions.cloudifyDatatypesAzureConfig"
              | { _ | Dyn }
              | doc "A dictionary of values to pass to authenticate with the Azure API"
              | optional,
            location
              | refs."definitions.cloudifyStringOrGetInput"
              | doc "Specifies the supported Azure location for the resource"
              | optional,
            name
              | refs."definitions.cloudifyStringOrGetInput"
              | doc "Name for the resource."
              | optional,
            resource_config
              | refs."definitions.cloudifyDatatypesAzureNetworkNetworkSecurityGroupConfig"
              | { _ | Dyn }
              | doc "A dictionary of values to pass as properties when creating the resource"
              | optional,
            resource_group_name
              | refs."definitions.cloudifyStringOrGetInput"
              | doc m%"
                Name of the Resource Group that the existing resource belongs to
                (this is only useful when not using a relationship between a resource
                node and a Resource Group node)
              "%
              | optional,
            retry_after
              | refs."definitions.cloudifyIntegerOrGetInput"
              | doc m%"
                Overrides the Azure-specified "retry_after" response. This property
                will set the number of seconds for each task retry interval (in the
                case of iteratively checking the status of an asynchronous operation)
              "%
              | optional,
            tags
              | { _ | Dyn }
              | doc "Specifies a dictionary of one or more name and value pairs that describe a tag"
              | optional,
            use_external_resource
              | refs."definitions.cloudifyBooleanOrGetInput"
              | doc "Indicate whether the resource exists or if Cloudify should create the resource"
              | optional,
            ..
          },
      "definitions.nodeTypeCloudifyAzureNodesNetworkNetworkSecurityRuleInterfaces" =
        {
            "cloudify.interfaces.lifecycle"
              | {
                create
                  | std.enum.TagOrString
                  | [|
                    '"azure.cloudify_azure.resources.network.networksecurityrule.create"
                  |]
                  | optional,
                delete
                  | std.enum.TagOrString
                  | [|
                    '"azure.cloudify_azure.resources.network.networksecurityrule.delete"
                  |]
                  | optional,
                ..
              }
              | optional,
            ..
          },
      "definitions.nodeTypeCloudifyAzureNodesNetworkNetworkSecurityRuleProperties" =
        {
            api_version
              | refs."definitions.cloudifyStringOrGetInput"
              | doc "Network API Version"
              | optional,
            azure_config
              | refs."definitions.cloudifyDatatypesAzureConfig"
              | { _ | Dyn }
              | doc "A dictionary of values to pass to authenticate with the Azure API"
              | optional,
            client_config
              | refs."definitions.cloudifyDatatypesAzureConfig"
              | { _ | Dyn }
              | doc "A dictionary of values to pass to authenticate with the Azure API"
              | optional,
            location
              | refs."definitions.cloudifyStringOrGetInput"
              | doc "Specifies the supported Azure location for the resource"
              | optional,
            name
              | refs."definitions.cloudifyStringOrGetInput"
              | doc "Name for the resource."
              | optional,
            network_security_group_name
              | refs."definitions.cloudifyStringOrGetInput"
              | doc m%"
                Name of the Network Security Group that the existing resource belongs to
                (this is only useful when not using a relationship between a resource
                node and a Network Security Groupnode)
              "%
              | optional,
            resource_config
              | refs."definitions.cloudifyDatatypesAzureNetworkNetworkSecurityRuleConfig"
              | { _ | Dyn }
              | doc "A dictionary of values to pass as properties when creating the resource"
              | optional,
            resource_group_name
              | refs."definitions.cloudifyStringOrGetInput"
              | doc m%"
                Name of the Resource Group that the existing resource belongs to
                (this is only useful when not using a relationship between a resource
                node and a Resource Group node)
              "%
              | optional,
            retry_after
              | refs."definitions.cloudifyIntegerOrGetInput"
              | doc m%"
                Overrides the Azure-specified "retry_after" response. This property
                will set the number of seconds for each task retry interval (in the
                case of iteratively checking the status of an asynchronous operation)
              "%
              | optional,
            tags
              | { _ | Dyn }
              | doc "Specifies a dictionary of one or more name and value pairs that describe a tag"
              | optional,
            use_external_resource
              | refs."definitions.cloudifyBooleanOrGetInput"
              | doc "Indicate whether the resource exists or if Cloudify should create the resource"
              | optional,
            ..
          },
      "definitions.nodeTypeCloudifyAzureNodesNetworkPublicIPAddressInterfaces" =
        {
            "cloudify.interfaces.lifecycle"
              | {
                create
                  | std.enum.TagOrString
                  | [|
                    '"azure.cloudify_azure.resources.network.publicipaddress.create"
                  |]
                  | optional,
                delete
                  | std.enum.TagOrString
                  | [|
                    '"azure.cloudify_azure.resources.network.publicipaddress.delete"
                  |]
                  | optional,
                start
                  | std.enum.TagOrString
                  | [|
                    '"azure.cloudify_azure.resources.network.publicipaddress.start"
                  |]
                  | optional,
                ..
              }
              | optional,
            ..
          },
      "definitions.nodeTypeCloudifyAzureNodesNetworkPublicIPAddressProperties" =
        {
            api_version
              | refs."definitions.cloudifyStringOrGetInput"
              | doc "Network API Version"
              | optional,
            azure_config
              | refs."definitions.cloudifyDatatypesAzureConfig"
              | { _ | Dyn }
              | doc "A dictionary of values to pass to authenticate with the Azure API"
              | optional,
            client_config
              | refs."definitions.cloudifyDatatypesAzureConfig"
              | { _ | Dyn }
              | doc "A dictionary of values to pass to authenticate with the Azure API"
              | optional,
            location
              | refs."definitions.cloudifyStringOrGetInput"
              | doc "Specifies the supported Azure location for the resource"
              | optional,
            name
              | refs."definitions.cloudifyStringOrGetInput"
              | doc "Name for the resource."
              | optional,
            resource_config
              | refs."definitions.cloudifyDatatypesAzureNetworkPublicIPAddressConfig"
              | { _ | Dyn }
              | doc "A dictionary of values to pass as properties when creating the resource"
              | optional,
            resource_group_name
              | refs."definitions.cloudifyStringOrGetInput"
              | doc m%"
                Name of the Resource Group that the existing resource belongs to
                (this is only useful when not using a relationship between a resource
                node and a Resource Group node)
              "%
              | optional,
            retry_after
              | refs."definitions.cloudifyIntegerOrGetInput"
              | doc m%"
                Overrides the Azure-specified "retry_after" response. This property
                will set the number of seconds for each task retry interval (in the
                case of iteratively checking the status of an asynchronous operation)
              "%
              | optional,
            tags
              | { _ | Dyn }
              | doc "Specifies a dictionary of one or more name and value pairs that describe a tag"
              | optional,
            use_external_resource
              | refs."definitions.cloudifyBooleanOrGetInput"
              | doc "Indicate whether the resource exists or if Cloudify should create the resource"
              | optional,
            ..
          },
      "definitions.nodeTypeCloudifyAzureNodesNetworkRouteInterfaces" =
        {
            "cloudify.interfaces.lifecycle"
              | {
                create
                  | std.enum.TagOrString
                  | [| '"azure.cloudify_azure.resources.network.route.create" |]
                  | optional,
                delete
                  | std.enum.TagOrString
                  | [| '"azure.cloudify_azure.resources.network.route.delete" |]
                  | optional,
                ..
              }
              | optional,
            ..
          },
      "definitions.nodeTypeCloudifyAzureNodesNetworkRouteProperties" =
        {
            api_version
              | refs."definitions.cloudifyStringOrGetInput"
              | doc "Network API Version"
              | optional,
            azure_config
              | refs."definitions.cloudifyDatatypesAzureConfig"
              | { _ | Dyn }
              | doc "A dictionary of values to pass to authenticate with the Azure API"
              | optional,
            client_config
              | refs."definitions.cloudifyDatatypesAzureConfig"
              | { _ | Dyn }
              | doc "A dictionary of values to pass to authenticate with the Azure API"
              | optional,
            location
              | refs."definitions.cloudifyStringOrGetInput"
              | doc "Specifies the supported Azure location for the resource"
              | optional,
            name
              | refs."definitions.cloudifyStringOrGetInput"
              | doc "Name for the resource."
              | optional,
            resource_config
              | refs."definitions.cloudifyDatatypesAzureNetworkRouteConfig"
              | { _ | Dyn }
              | doc "A dictionary of values to pass as properties when creating the resource"
              | optional,
            resource_group_name
              | refs."definitions.cloudifyStringOrGetInput"
              | doc m%"
                Name of the Resource Group that the existing resource belongs to
                (this is only useful when not using a relationship between a resource
                node and a Resource Group node)
              "%
              | optional,
            retry_after
              | refs."definitions.cloudifyIntegerOrGetInput"
              | doc m%"
                Overrides the Azure-specified "retry_after" response. This property
                will set the number of seconds for each task retry interval (in the
                case of iteratively checking the status of an asynchronous operation)
              "%
              | optional,
            route_table_name
              | refs."definitions.cloudifyStringOrGetInput"
              | doc m%"
                Name of the Network Security Group that the existing resource belongs to
                (this is only useful when not using a relationship between a resource
                node and a Virtual Network node)
              "%
              | optional,
            tags
              | { _ | Dyn }
              | doc "Specifies a dictionary of one or more name and value pairs that describe a tag"
              | optional,
            use_external_resource
              | refs."definitions.cloudifyBooleanOrGetInput"
              | doc "Indicate whether the resource exists or if Cloudify should create the resource"
              | optional,
            ..
          },
      "definitions.nodeTypeCloudifyAzureNodesNetworkRouteTableInterfaces" =
        {
            "cloudify.interfaces.lifecycle"
              | {
                create
                  | std.enum.TagOrString
                  | [|
                    '"azure.cloudify_azure.resources.network.routetable.create"
                  |]
                  | optional,
                delete
                  | std.enum.TagOrString
                  | [|
                    '"azure.cloudify_azure.resources.network.routetable.delete"
                  |]
                  | optional,
                ..
              }
              | optional,
            ..
          },
      "definitions.nodeTypeCloudifyAzureNodesNetworkRouteTableProperties" =
        {
            api_version
              | refs."definitions.cloudifyStringOrGetInput"
              | doc "Network API Version"
              | optional,
            azure_config
              | refs."definitions.cloudifyDatatypesAzureConfig"
              | { _ | Dyn }
              | doc "A dictionary of values to pass to authenticate with the Azure API"
              | optional,
            client_config
              | refs."definitions.cloudifyDatatypesAzureConfig"
              | { _ | Dyn }
              | doc "A dictionary of values to pass to authenticate with the Azure API"
              | optional,
            "location:"
              | refs."definitions.cloudifyStringOrGetInput"
              | doc "Specifies the supported Azure location for the resource"
              | optional,
            name
              | refs."definitions.cloudifyStringOrGetInput"
              | doc "Name for the resource."
              | optional,
            resource_config
              | refs."definitions.cloudifyDatatypesAzureNetworkRouteTableConfig"
              | { _ | Dyn }
              | doc "A dictionary of values to pass as properties when creating the resource"
              | optional,
            resource_group_name
              | refs."definitions.cloudifyStringOrGetInput"
              | doc m%"
                Name of the Resource Group that the existing resource belongs to
                (this is only useful when not using a relationship between a resource
                node and a Resource Group node)
              "%
              | optional,
            retry_after
              | refs."definitions.cloudifyIntegerOrGetInput"
              | doc m%"
                Overrides the Azure-specified "retry_after" response. This property
                will set the number of seconds for each task retry interval (in the
                case of iteratively checking the status of an asynchronous operation)
              "%
              | optional,
            tags
              | { _ | Dyn }
              | doc "Specifies a dictionary of one or more name and value pairs that describe a tag"
              | optional,
            use_external_resource
              | refs."definitions.cloudifyBooleanOrGetInput"
              | doc "Indicate whether the resource exists or if Cloudify should create the resource"
              | optional,
            ..
          },
      "definitions.nodeTypeCloudifyAzureNodesNetworkSubnetInterfaces" =
        {
            "cloudify.interfaces.lifecycle"
              | std.contract.any_of
                [ js2n.Null, Bool, Number, String, { _ | Dyn }, Array Dyn ]
              | optional,
            ..
          },
      "definitions.nodeTypeCloudifyAzureNodesNetworkSubnetProperties" =
        {
            api_version
              | refs."definitions.cloudifyStringOrGetInput"
              | doc "Network API Version"
              | optional,
            azure_config
              | refs."definitions.cloudifyDatatypesAzureConfig"
              | { _ | Dyn }
              | doc "A dictionary of values to pass to authenticate with the Azure API"
              | optional,
            client_config
              | refs."definitions.cloudifyDatatypesAzureConfig"
              | { _ | Dyn }
              | doc "A dictionary of values to pass to authenticate with the Azure API"
              | optional,
            location
              | refs."definitions.cloudifyStringOrGetInput"
              | doc "Specifies the supported Azure location for the resource"
              | optional,
            name
              | refs."definitions.cloudifyStringOrGetInput"
              | doc "Name for the resource."
              | optional,
            resource_config
              | refs."definitions.cloudifyDatatypesAzureNetworkSubnetConfig"
              | { _ | Dyn }
              | doc "A dictionary of values to pass as properties when creating the resource"
              | optional,
            resource_group_name
              | refs."definitions.cloudifyStringOrGetInput"
              | doc m%"
                Name of the Resource Group that the existing resource belongs to
                (this is only useful when not using a relationship between a resource
                node and a Resource Group node)
              "%
              | optional,
            retry_after
              | refs."definitions.cloudifyIntegerOrGetInput"
              | doc m%"
                Overrides the Azure-specified "retry_after" response. This property
                will set the number of seconds for each task retry interval (in the
                case of iteratively checking the status of an asynchronous operation)
              "%
              | optional,
            tags
              | std.contract.any_of
                [ js2n.Null, Bool, Number, String, { _ | Dyn }, Array Dyn ]
              | doc "Specifies a dictionary of one or more name and value pairs that describe a tag"
              | optional,
            use_external_resource
              | refs."definitions.cloudifyBooleanOrGetInput"
              | doc "Indicate whether the resource exists or if Cloudify should create the resource"
              | optional,
            virtual_network_name
              | refs."definitions.cloudifyStringOrGetInput"
              | doc m%"
                Name of the Virtual Network that the existing resource belongs to
                (this is only useful when not using a relationship between a resource
                node and a Virtual Network node)
              "%
              | optional,
            ..
          },
      "definitions.nodeTypeCloudifyAzureNodesNetworkVirtualNetworkInterfaces" =
        {
            "cloudify.interfaces.lifecycle"
              | {
                create
                  | std.enum.TagOrString
                  | [|
                    '"azure.cloudify_azure.resources.network.virtualnetwork.create"
                  |]
                  | optional,
                delete
                  | std.enum.TagOrString
                  | [|
                    '"azure.cloudify_azure.resources.network.virtualnetwork.delete"
                  |]
                  | optional,
                ..
              }
              | optional,
            ..
          },
      "definitions.nodeTypeCloudifyAzureNodesNetworkVirtualNetworkProperties" =
        {
            api_version
              | refs."definitions.cloudifyStringOrGetInput"
              | doc "Network API Version"
              | optional,
            azure_config
              | refs."definitions.cloudifyDatatypesAzureConfig"
              | { _ | Dyn }
              | doc "A dictionary of values to pass to authenticate with the Azure API"
              | optional,
            client_config
              | refs."definitions.cloudifyDatatypesAzureConfig"
              | { _ | Dyn }
              | doc "A dictionary of values to pass to authenticate with the Azure API"
              | optional,
            location
              | refs."definitions.cloudifyStringOrGetInput"
              | doc "Specifies the supported Azure location for the resource"
              | optional,
            name
              | refs."definitions.cloudifyStringOrGetInput"
              | doc "Name for the resource."
              | optional,
            resource_config
              | refs."definitions.cloudifyDatatypesAzureNetworkVirtualNetworkConfig"
              | { _ | Dyn }
              | doc "A dictionary of values to pass as properties when creating the resource"
              | optional,
            resource_group_name
              | refs."definitions.cloudifyStringOrGetInput"
              | doc m%"
                Name of the Resource Group that the existing resource belongs to
                (this is only useful when not using a relationship between a resource
                node and a Resource Group node)
              "%
              | optional,
            retry_after
              | refs."definitions.cloudifyIntegerOrGetInput"
              | doc m%"
                Overrides the Azure-specified "retry_after" response. This property
                will set the number of seconds for each task retry interval (in the
                case of iteratively checking the status of an asynchronous operation)
              "%
              | optional,
            tags
              | { _ | Dyn }
              | doc "Specifies a dictionary of one or more name and value pairs that describe a tag"
              | optional,
            use_external_resource
              | refs."definitions.cloudifyBooleanOrGetInput"
              | doc "Indicate whether the resource exists or if Cloudify should create the resource"
              | optional,
            ..
          },
      "definitions.nodeTypeCloudifyAzureNodesPlanInterfaces" =
        {
            "cloudify.interfaces.lifecycle"
              | {
                create
                  | {
                    implementation
                      | std.enum.TagOrString
                      | [|
                        '"azure.cloudify_azure.resources.app_service.plan.create"
                      |]
                      | optional,
                    inputs
                      | {
                        azure_config
                          | refs."definitions.cloudifyDatatypesAzureConfig"
                          | { _ | Dyn }
                          | optional,
                        client_config
                          | refs."definitions.cloudifyDatatypesAzureConfig"
                          | { _ | Dyn }
                          | optional,
                        name
                          | refs."definitions.cloudifyStringOrGetInput"
                          | optional,
                        resource_group
                          | refs."definitions.cloudifyStringOrGetInput"
                          | optional,
                        sku
                          | refs."definitions.cloudifyStringOrGetInput"
                          | optional,
                        ..
                      }
                      | optional,
                    ..
                  }
                  | optional,
                delete
                  | {
                    implementation
                      | std.enum.TagOrString
                      | [|
                        '"azure.cloudify_azure.resources.app_service.plan.delete"
                      |]
                      | optional,
                    ..
                  }
                  | optional,
                ..
              }
              | optional,
            ..
          },
      "definitions.nodeTypeCloudifyAzureNodesPlanProperties" =
        {
            azure_config
              | refs."definitions.cloudifyDatatypesAzureConfig"
              | { _ | Dyn }
              | doc "A dictionary of values to pass to authenticate with the Azure API"
              | optional,
            client_config
              | refs."definitions.cloudifyDatatypesAzureConfig"
              | { _ | Dyn }
              | doc "A dictionary of values to pass to authenticate with the Azure API"
              | optional,
            name | refs."definitions.cloudifyStringOrGetInput",
            resource_group | refs."definitions.cloudifyStringOrGetInput",
            sku
              | refs."definitions.cloudifyStringOrGetInput"
              | doc "SKU details, including location, name, capacity and tier"
              | optional,
            use_external_resource
              | Bool
              | doc "Indicate whether the resource exists or if Cloudify should create the resource"
              | optional,
            ..
          },
      "definitions.nodeTypeCloudifyAzureNodesPublishingUserInterfaces" =
        {
            "cloudify.interfaces.lifecycle"
              | {
                create
                  | {
                    implementation
                      | std.enum.TagOrString
                      | [|
                        '"azure.cloudify_azure.resources.app_service.publishing_user.set_user"
                      |]
                      | optional,
                    inputs
                      | {
                        azure_config
                          | refs."definitions.cloudifyDatatypesAzureConfig"
                          | { _ | Dyn }
                          | optional,
                        client_config
                          | refs."definitions.cloudifyDatatypesAzureConfig"
                          | { _ | Dyn }
                          | optional,
                        user_details | { _ | Dyn } | optional,
                        ..
                      }
                      | optional,
                    ..
                  }
                  | optional,
                ..
              }
              | optional,
            ..
          },
      "definitions.nodeTypeCloudifyAzureNodesPublishingUserProperties" =
        {
            azure_config
              | refs."definitions.cloudifyDatatypesAzureConfig"
              | { _ | Dyn }
              | doc "A dictionary of values to pass to authenticate with the Azure API"
              | optional,
            client_config
              | refs."definitions.cloudifyDatatypesAzureConfig"
              | { _ | Dyn }
              | doc "A dictionary of values to pass to authenticate with the Azure API"
              | optional,
            user_details
              | { _ | Dyn }
              | doc "User details including location, name, kind, user_name,...",
            ..
          },
      "definitions.nodeTypeCloudifyAzureNodesResourceGroupInterfaces" =
        {
            "cloudify.interfaces.lifecycle"
              | {
                create
                  | std.enum.TagOrString
                  | [| '"azure.cloudify_azure.resources.resourcegroup.create" |]
                  | optional,
                delete
                  | std.enum.TagOrString
                  | [| '"azure.cloudify_azure.resources.resourcegroup.delete" |]
                  | optional,
                ..
              }
              | optional,
            ..
          },
      "definitions.nodeTypeCloudifyAzureNodesResourceGroupProperties" =
        {
            api_version
              | refs."definitions.cloudifyStringOrGetInput"
              | doc "Resources API Version"
              | optional,
            azure_config
              | refs."definitions.cloudifyDatatypesAzureConfig"
              | { _ | Dyn }
              | doc "A dictionary of values to pass to authenticate with the Azure API"
              | optional,
            client_config
              | refs."definitions.cloudifyDatatypesAzureConfig"
              | { _ | Dyn }
              | doc "A dictionary of values to pass to authenticate with the Azure API"
              | optional,
            location
              | refs."definitions.cloudifyStringOrGetInput"
              | doc "Specifies the supported Azure location for the resource"
              | optional,
            name
              | refs."definitions.cloudifyStringOrGetInput"
              | doc m%"
                Name for the resource. Resource group name must be no longer than
                80 characters long. It can contain only alphanumeric characters,
                dash, underscore, opening parenthesis, closing parenthesis,
                and period. The name cannot end with a period.
              "%
              | optional,
            retry_after
              | refs."definitions.cloudifyIntegerOrGetInput"
              | doc m%"
                Overrides the Azure-specified "retry_after" response. This property
                will set the number of seconds for each task retry interval (in the
                case of iteratively checking the status of an asynchronous operation)
              "%
              | optional,
            tags
              | { _ | Dyn }
              | doc "Specifies a dictionary of one or more name and value pairs that describe a tag"
              | optional,
            use_external_resource
              | refs."definitions.cloudifyBooleanOrGetInput"
              | doc "Indicate whether the resource exists or if Cloudify should create the resource"
              | optional,
            ..
          },
      "definitions.nodeTypeCloudifyAzureNodesStorageDataDiskProperties" =
        {
            azure_config
              | refs."definitions.cloudifyDatatypesAzureConfig"
              | { _ | Dyn }
              | doc "A dictionary of values to pass to authenticate with the Azure API"
              | optional,
            client_config
              | refs."definitions.cloudifyDatatypesAzureConfig"
              | { _ | Dyn }
              | doc "A dictionary of values to pass to authenticate with the Azure API"
              | optional,
            location
              | refs."definitions.cloudifyStringOrGetInput"
              | doc "Specifies the supported Azure location for the resource"
              | optional,
            name
              | refs."definitions.cloudifyStringOrGetInput"
              | doc m%"
                Name for the resource (include any extension, such as .vhd).
                Can be up to 80 characters in length and
                contain lowercase letters, numbers, ".", and "_". Must start
                with a number or lowercase letter and cannot end with
                either "_" or "."
              "%
              | optional,
            resource_config
              | refs."definitions.cloudifyDatatypesAzureStorageDataDiskConfig"
              | { _ | Dyn }
              | doc "A dictionary of values to pass as properties when creating the resource"
              | optional,
            retry_after
              | refs."definitions.cloudifyIntegerOrGetInput"
              | doc m%"
                Overrides the Azure-specified "retry_after" response. This property
                will set the number of seconds for each task retry interval (in the
                case of iteratively checking the status of an asynchronous operation)
              "%
              | optional,
            use_external_resource
              | refs."definitions.cloudifyBooleanOrGetInput"
              | doc "Indicate whether the resource exists or if Cloudify should create the resource"
              | optional,
            ..
          },
      "definitions.nodeTypeCloudifyAzureNodesStorageDataDisktInterfaces" =
        {
            "cloudify.interfaces.lifecycle"
              | {
                create
                  | std.enum.TagOrString
                  | [|
                    '"azure.cloudify_azure.resources.storage.disk.create_data_disk"
                  |]
                  | optional,
                delete
                  | std.enum.TagOrString
                  | [|
                    '"azure.cloudify_azure.resources.storage.disk.delete_data_disk"
                  |]
                  | optional,
                ..
              }
              | optional,
            ..
          },
      "definitions.nodeTypeCloudifyAzureNodesStorageFileShareInterfaces" =
        {
            "cloudify.interfaces.lifecycle"
              | std.contract.any_of
                [ js2n.Null, Bool, Number, String, { _ | Dyn }, Array Dyn ]
              | optional,
            ..
          },
      "definitions.nodeTypeCloudifyAzureNodesStorageFileShareProperties" =
        {
            azure_config
              | refs."definitions.cloudifyDatatypesAzureConfig"
              | { _ | Dyn }
              | doc "A dictionary of values to pass to authenticate with the Azure API"
              | optional,
            client_config
              | refs."definitions.cloudifyDatatypesAzureConfig"
              | { _ | Dyn }
              | doc "A dictionary of values to pass to authenticate with the Azure API"
              | optional,
            location
              | refs."definitions.cloudifyStringOrGetInput"
              | doc "Specifies the supported Azure location for the resource"
              | optional,
            name
              | refs."definitions.cloudifyStringOrGetInput"
              | doc m%"
                Name for the resource. Can be up to 63 characters in length and
                contain lowercase letters, numbers, and dashes. Must start
                with a number or lowercase letter and cannot contain
                two consecutive dashes.
              "%
              | optional,
            resource_config
              | refs."definitions.cloudifyDatatypesAzureStorageFileShareConfig"
              | { _ | Dyn }
              | doc "A dictionary of values to pass as properties when creating the resource"
              | optional,
            retry_after
              | refs."definitions.cloudifyIntegerOrGetInput"
              | doc m%"
                Overrides the Azure-specified "retry_after" response. This property
                will set the number of seconds for each task retry interval (in the
                case of iteratively checking the status of an asynchronous operation)
              "%
              | optional,
            use_external_resource
              | refs."definitions.cloudifyBooleanOrGetInput"
              | doc "Indicate whether the resource exists or if Cloudify should create the resource"
              | optional,
            ..
          },
      "definitions.nodeTypeCloudifyAzureNodesStorageStorageAccountInterfaces" =
        {
            "cloudify.interfaces.lifecycle"
              | {
                create
                  | std.enum.TagOrString
                  | [|
                    '"azure.cloudify_azure.resources.storage.storageaccount.create"
                  |]
                  | optional,
                ..
              }
              | optional,
            ..
          },
      "definitions.nodeTypeCloudifyAzureNodesStorageStorageAccountProperties" =
        {
            api_version
              | refs."definitions.cloudifyStringOrGetInput"
              | doc "Storage API Version"
              | optional,
            azure_config
              | refs."definitions.cloudifyDatatypesAzureConfig"
              | { _ | Dyn }
              | doc "A dictionary of values to pass to authenticate with the Azure API"
              | optional,
            client_config
              | refs."definitions.cloudifyDatatypesAzureConfig"
              | { _ | Dyn }
              | doc "A dictionary of values to pass to authenticate with the Azure API"
              | optional,
            location
              | refs."definitions.cloudifyStringOrGetInput"
              | doc "Specifies the supported Azure location for the resource"
              | optional,
            name
              | refs."definitions.cloudifyStringOrGetInput"
              | doc m%"
                Name for the resource. Storage account name must be between
                3 and 24 characters in length and use numbers and lower-case
                letters only.
              "%
              | optional,
            resource_config
              | refs."definitions.cloudifyDatatypesAzureStorageStorageAccountConfig"
              | { _ | Dyn }
              | doc "A dictionary of values to pass as properties when creating the resource"
              | optional,
            resource_group_name
              | refs."definitions.cloudifyStringOrGetInput"
              | doc m%"
                Name of the Resource Group that the existing resource belongs to
                (this is only useful when not using a relationship between a resource
                node and a Resource Group node)
              "%
              | optional,
            retry_after
              | refs."definitions.cloudifyIntegerOrGetInput"
              | doc m%"
                Overrides the Azure-specified "retry_after" response. This propertynwill set the number of seconds for each task retry interval (in the
                case of iteratively checking the status of an asynchronous operation)
              "%
              | optional,
            sku
              | refs."definitions.cloudifyStringOrGetInput"
              | doc "A Storage account SKU if needed."
              | optional,
            tags
              | { _ | Dyn }
              | doc "Specifies a dictionary of one or more name and value pairs that describe a tag"
              | optional,
            use_external_resource
              | refs."definitions.cloudifyBooleanOrGetInput"
              | doc "Indicate whether the resource exists or if Cloudify should create the resource"
              | optional,
            ..
          },
      "definitions.nodeTypeCloudifyAzureNodesWebAppInterfaces" =
        {
            "cloudify.interfaces.lifecycle"
              | {
                create
                  | {
                    implementation
                      | std.enum.TagOrString
                      | [|
                        '"azure.cloudify_azure.resources.app_service.webapp.create"
                      |]
                      | optional,
                    inputs
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
                  }
                  | optional,
                delete
                  | {
                    implementation
                      | std.enum.TagOrString
                      | [|
                        '"azure.cloudify_azure.resources.app_service.webapp.delete"
                      |]
                      | optional,
                    ..
                  }
                  | optional,
                ..
              }
              | optional,
            ..
          },
      "definitions.nodeTypeCloudifyAzureNodesWebAppProperties" =
        {
            app_config
              | refs."definitions.cloudifyStringOrGetInput"
              | doc "App config details, including location and plan"
              | optional,
            azure_config
              | refs."definitions.cloudifyDatatypesAzureConfig"
              | { _ | Dyn }
              | doc "A dictionary of values to pass to authenticate with the Azure API"
              | optional,
            client_config
              | refs."definitions.cloudifyDatatypesAzureConfig"
              | { _ | Dyn }
              | doc "A dictionary of values to pass to authenticate with the Azure API"
              | optional,
            name | refs."definitions.cloudifyStringOrGetInput",
            resource_group | refs."definitions.cloudifyStringOrGetInput",
            ..
          },
      "definitions.nodeTypeCloudifyGCPNodesInstanceInterfaces" =
        {
            "cloudify.interfaces.lifecycle"
              | {
                configure
                  | {
                    implementation
                      | std.enum.TagOrString
                      | [| '"gcp_plugin.cloudify_gcp.compute.instance.create" |]
                      | optional,
                    inputs
                      | {
                        additional_settings | { _ | Dyn } | optional,
                        can_ip_forward | Bool | optional,
                        external_ip | Bool | optional,
                        image_id | String | optional,
                        instance_type | String | optional,
                        name | String | optional,
                        scopes | Array String | optional,
                        startup_script | String | optional,
                        tags | String | optional,
                        zone | String | optional,
                        ..
                      }
                      | optional,
                    ..
                  }
                  | optional,
                delete
                  | {
                    implementation
                      | std.enum.TagOrString
                      | [| '"gcp_plugin.cloudify_gcp.compute.instance.delete" |]
                      | optional,
                    inputs
                      | {
                        name | String | optional,
                        zone | String | optional,
                        ..
                      }
                      | optional,
                    ..
                  }
                  | optional,
                start
                  | {
                    implementation
                      | std.enum.TagOrString
                      | [| '"gcp_plugin.cloudify_gcp.compute.instance.start" |]
                      | optional,
                    inputs | { name | String | optional, .. } | optional,
                    ..
                  }
                  | optional,
                ..
              }
              | optional,
            ..
          },
      "definitions.nodeTypeCloudifyGCPNodesInstanceProperties" =
        std.contract.Sequence
            [
              refs."definitions.gcpExternalResource",
              refs."definitions.gcpResourceId",
              {
                additional_settings
                  | { _ | Dyn }
                  | doc "Additional instance settings."
                  | optional,
                block_project_ssh_keys
                  | Bool
                  | doc " Disable project-wide ssh keys for this Instance"
                  | optional,
                can_ip_forward
                  | Bool
                  | doc "Is the VM allowed to send packets with source address different to its own?"
                  | optional,
                external_ip
                  | Bool
                  | doc m%"
                    Should the Instance be created with an externally-accessible
                    IP address. This will be an ephemeral IP.
                    If you would like to use an IP address which can be transferred
                    to another Instance then connect this Instance to an `Address`
                    node using the
                    `cloudify.gcp.relationships.instance_connected_to_ip`
                    relationship.
                  "%
                  | optional,
                gcp_config
                  | { _ | Dyn }
                  | doc "A dictionary of values to pass to authenticate with the GCP API."
                  | optional,
                image_id
                  | String
                  | doc "The ID of the image in your GCP account."
                  | optional,
                instance_type
                  | String
                  | doc m%"
                    The instance's type. All available instance types can be found here:
                    https://cloud.google.com/compute/docs/machine-types
                  "%
                  | optional,
                name
                  | String
                  | doc "Optional instance name. By default it will be instance id."
                  | optional,
                scopes
                  | Array String
                  | doc m%"
                    Optional scopes. If not will set by default:
                    'https://www.googleapis.com/auth/devstorage.read_write',
                    'https://www.googleapis.com/auth/logging.write'
                  "%
                  | optional,
                startup_script
                  | String
                  | doc m%"
                    A script which will be run when the Instance is first started
                    example:
                      type: string
                      script: |
                        yum install some stuff
                        systemctl start it
                    or:
                      type: file
                      script: <path to script file>
                  "%
                  | optional,
                tags
                  | String
                  | doc m%"
                    Optional tags. If not given, this instance will have a tag only with
                    its name.
                  "%
                  | optional,
                use_public_ip
                  | Bool
                  | doc m%"
                    Tells the deployment to use the public IP (if available) of the resource
                    for Cloudify Agent connections
                  "%
                  | optional,
                zone
                  | String
                  | doc "Optional zone name. If not given, this instance will be deployedin default zone."
                  | optional,
                ..
              }
            ],
      "definitions.nodeTypeCloudifyGCPProjectInterfaces" =
        {
            "cloudify.interfaces.lifecycle"
              | {
                create
                  | {
                    implementation
                      | std.enum.TagOrString
                      | [| '"gcp_plugin.cloudify_gcp.admin.projects.create" |]
                      | optional,
                    ..
                  }
                  | optional,
                delete
                  | {
                    implementation
                      | std.enum.TagOrString
                      | [| '"gcp_plugin.cloudify_gcp.admin.projects.delete" |]
                      | optional,
                    ..
                  }
                  | optional,
                ..
              }
              | optional,
            ..
          },
      "definitions.nodeTypeCloudifyGCPProjectProperties" =
        std.contract.Sequence
            [
              refs."definitions.gcpExternalResource",
              refs."definitions.gcpResourceId",
              {
                gcp_config
                  | { _ | Dyn }
                  | doc "A dictionary of values to pass to authenticate with the GCP API."
                  | optional,
                name
                  | String
                  | doc "Optional project name. By default it will be instance id."
                  | optional,
                ..
              }
            ],
      "definitions.nodeTypeCloudifyNodesCloudInitCloudConfigInterfaces" =
        {
            "cloudify.interfaces.lifecycle"
              | {
                configure
                  | {
                    implementation
                      | std.enum.TagOrString
                      | [| '"cloudinit.cloudify_cloudinit.tasks.update" |]
                      | optional,
                    ..
                  }
                  | optional,
                create
                  | {
                    implementation
                      | std.enum.TagOrString
                      | [| '"cloudinit.cloudify_cloudinit.tasks.update" |]
                      | optional,
                    ..
                  }
                  | optional,
                delete
                  | {
                    implementation
                      | std.enum.TagOrString
                      | [| '"cloudinit.cloudify_cloudinit.tasks.delete" |]
                      | optional,
                    ..
                  }
                  | optional,
                start
                  | {
                    implementation
                      | std.enum.TagOrString
                      | [| '"cloudinit.cloudify_cloudinit.tasks.update" |]
                      | optional,
                    ..
                  }
                  | optional,
                stop
                  | {
                    implementation
                      | std.enum.TagOrString
                      | [| '"cloudinit.cloudify_cloudinit.tasks.update" |]
                      | optional,
                    ..
                  }
                  | optional,
                ..
              }
              | optional,
            ..
          },
      "definitions.nodeTypeCloudifyNodesCloudInitCloudConfigProperties" =
        {
            encode_base64
              | refs."definitions.cloudifyBooleanOrGetInput"
              | optional,
            header | refs."definitions.cloudifyStringOrGetInput" | optional,
            resource_config | { _ | Dyn } | optional,
            ..
          },
      "definitions.nodeTypeCloudifyNodesDeploymentProxyInterfaces" =
        {
            "cloudify.interfaces.lifecycle"
              | {
                configure
                  | { implementation | js2n.Never | optional, .. }
                  | optional,
                create
                  | {
                    implementation
                      | std.enum.TagOrString
                      | [|
                        '"cfy_util.cloudify_deployment_proxy.tasks.upload_blueprint"
                      |]
                      | optional,
                    ..
                  }
                  | optional,
                delete
                  | {
                    implementation
                      | std.enum.TagOrString
                      | [|
                        '"cfy_util.cloudify_deployment_proxy.tasks.delete_deployment"
                      |]
                      | optional,
                    ..
                  }
                  | optional,
                start
                  | {
                    implementation
                      | std.enum.TagOrString
                      | [|
                        '"cfy_util.cloudify_deployment_proxy.tasks.execute_start"
                      |]
                      | optional,
                    inputs
                      | {
                        interval
                          | std.number.Integer
                          | doc "Polling interval (seconds)"
                          | optional,
                        timeout
                          | std.number.Integer
                          | doc "How long (in seconds) to wait for execution to finish before timing out"
                          | optional,
                        workflow_id | String | optional,
                        ..
                      }
                      | optional,
                    ..
                  }
                  | optional,
                stop
                  | {
                    implementation
                      | std.enum.TagOrString
                      | [|
                        '"cfy_util.cloudify_deployment_proxy.tasks.execute_start"
                      |]
                      | optional,
                    inputs
                      | {
                        resource_config
                          | refs."definitions.cloudifyDatatypesDeploymentProxy"
                          | { _ | Dyn }
                          | optional,
                        workflow_id | String | optional,
                        ..
                      }
                      | optional,
                    ..
                  }
                  | optional,
                ..
              }
              | optional,
            ..
          },
      "definitions.nodeTypeCloudifyNodesDeploymentProxyProperties" =
        {
            client
              | {
                host | String | optional,
                password | String | optional,
                tenant | String | optional,
                username | String | optional,
                ..
              }
              | doc m%"
                Client configuration, if empty will be reused manager client:
                  host: Host of Cloudify's management machine.
                  port: Port of REST API service on management machine.
                  protocol: Protocol of REST API service on management machine,
                            defaults to http.
                  api_version: version of REST API service on management machine.
                  headers: Headers to be added to request.
                  query_params: Query parameters to be added to the request.
                  cert: Path to a copy of the server's self-signed certificate.
                  trust_all: if `False`, the server's certificate
                            (self-signed or not) will be verified.
                  username: Cloudify User username.
                  password: Cloudify User password.
                  token: Cloudify User token.
                  tenant: Cloudify Tenant name.
              "%
              | optional,
            plugins
              | Array String
              | doc m%"
                Optional, list of plugins for upload.
                  wagon_path: Url for plugin wagon file.
                  plugin_yaml_path: Url for plugin yaml file.
              "%
              | optional,
            resource_config
              | refs."definitions.cloudifyDatatypesDeploymentProxy"
              | { _ | Dyn }
              | optional,
            secrets
              | { _ | Dyn }
              | doc "Optional, dictionary of secrets for set before run deployments."
              | optional,
            ..
          },
      "definitions.nodeTypeCloudifyNodesFTPInterfaces" =
        {
            "cloudify.interfaces.lifecycle"
              | {
                create
                  | {
                    implementation
                      | std.enum.TagOrString
                      | [| '"cfy_ftp.cloudify_ftp.tasks.create" |]
                      | optional,
                    inputs
                      | {
                        files
                          | { _ | Dyn }
                          | doc "list files with content from blueprint to upload"
                          | optional,
                        raw_files
                          | { _ | Dyn }
                          | doc "list files from blueprint to upload"
                          | optional,
                        resource_config
                          | refs."definitions.cloudifyDatatypesFtpAuth"
                          | { _ | Dyn }
                          | optional,
                        ..
                      }
                      | optional,
                    ..
                  }
                  | optional,
                delete
                  | {
                    implementation
                      | std.enum.TagOrString
                      | [| '"cfy_ftp.cloudify_ftp.tasks.delete" |]
                      | optional,
                    inputs
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
                  }
                  | optional,
                ..
              }
              | optional,
            ..
          },
      "definitions.nodeTypeCloudifyNodesFTPProperties" =
        {
            files
              | { _ | Dyn }
              | doc "list files with content from blueprint to upload"
              | optional,
            raw_files
              | { _ | Dyn }
              | doc "list files from blueprint to upload"
              | optional,
            resource_config
              | refs."definitions.cloudifyDatatypesFtpAuth"
              | { _ | Dyn }
              | optional,
            ..
          },
      "definitions.nodeTypeCloudifyNodesFileInterfaces" =
        {
            "cloudify.interfaces.lifecycle"
              | {
                create
                  | {
                    implementation
                      | std.enum.TagOrString
                      | [| '"cfy_files.cloudify_files.tasks.create" |]
                      | optional,
                    ..
                  }
                  | optional,
                delete
                  | {
                    implementation
                      | std.enum.TagOrString
                      | [| '"cfy_files.cloudify_files.tasks.delete" |]
                      | optional,
                    ..
                  }
                  | optional,
                ..
              }
              | optional,
            ..
          },
      "definitions.nodeTypeCloudifyNodesFileProperties" =
        {
            resource_config
              | refs."definitions.cloudifyDatatypesFile"
              | { _ | Dyn }
              | optional,
            ..
          },
      "definitions.nodeTypeCloudifyNodesNodeInstanceProxyProperties" =
        std.contract.Sequence
            [
              refs."definitions.nodeTypeCloudifyNodesDeploymentProxyProperties",
              {
                resource_config
                  | refs."definitions.cloudifyDatatypesNodeInstanceProxy"
                  | { _ | Dyn }
                  | optional,
                ..
              }
            ],
      "definitions.nodeTypeCloudifyNodesRSAKeyInterfaces" =
        {
            "cloudify.interfaces.lifecycle"
              | {
                create
                  | {
                    implementation
                      | std.enum.TagOrString
                      | [| '"keys.cloudify_ssh_key.operations.create" |]
                      | optional,
                    inputs
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
                  }
                  | optional,
                delete
                  | {
                    implementation
                      | std.enum.TagOrString
                      | [| '"keys.cloudify_ssh_key.operations.delete" |]
                      | optional,
                    ..
                  }
                  | optional,
                ..
              }
              | optional,
            ..
          },
      "definitions.nodeTypeCloudifyNodesRSAKeyProperties" =
        {
            key_name
              | refs."definitions.cloudifyStringOrGetInput"
              | doc "Deprecated. Use resource_config.key_name."
              | optional,
            resource_config
              | refs."definitions.cloudifyDatatypesKey"
              | { _ | Dyn }
              | doc "A dictionary of values to pass to configure the key."
              | optional,
            use_secret_store
              | refs."definitions.cloudifyBooleanOrGetInput"
              | optional,
            use_secrets_if_exist
              | refs."definitions.cloudifyBooleanOrGetInput"
              | doc m%"
                this flag is able to be true only if use_secret_store is true
                if this property is false the secret for the key value will be
                created, if true then the existing secrets of an existing node
                with same key_name will be used as a key, if this property is true
                and the secrets does not exist they will be created.
              "%
              | optional,
            ..
          },
      "definitions.nodeTypeCloudifyNodesSecretsReaderInterfaces" =
        {
            "cloudify.interfaces.lifecycle"
              | {
                create
                  | {
                    implementation
                      | std.enum.TagOrString
                      | [| '"secrets.cloudify_secrets.tasks.read" |]
                      | optional,
                    ..
                  }
                  | optional,
                ..
              }
              | optional,
            "cloudify.interfaces.operations"
              | {
                update
                  | {
                    implementation
                      | std.enum.TagOrString
                      | [| '"secrets.cloudify_secrets.tasks.read" |]
                      | optional,
                    ..
                  }
                  | optional,
                ..
              }
              | optional,
            ..
          },
      "definitions.nodeTypeCloudifyNodesSecretsReaderProperties" =
        {
            keys | Array String | optional,
            separator | refs."definitions.cloudifyStringOrGetInput" | optional,
            variant | refs."definitions.cloudifyStringOrGetInput" | optional,
            ..
          },
      "definitions.nodeTypeCloudifyNodesSecretsWriterInterfaces" =
        {
            "cloudify.interfaces.lifecycle"
              | {
                create
                  | {
                    implementation
                      | std.enum.TagOrString
                      | [| '"secrets.cloudify_secrets.tasks.create" |]
                      | optional,
                    ..
                  }
                  | optional,
                delete
                  | {
                    implementation
                      | std.enum.TagOrString
                      | [| '"secrets.cloudify_secrets.tasks.delete" |]
                      | optional,
                    ..
                  }
                  | optional,
                ..
              }
              | optional,
            "cloudify.interfaces.operations"
              | {
                update
                  | {
                    implementation
                      | std.enum.TagOrString
                      | [| '"secrets.cloudify_secrets.tasks.update" |]
                      | optional,
                    ..
                  }
                  | optional,
                ..
              }
              | optional,
            ..
          },
      "definitions.nodeTypeCloudifyNodesSecretsWriterProperties" =
        {
            do_not_delete
              | refs."definitions.cloudifyBooleanOrGetInput"
              | optional,
            entries | { _ | Dyn } | optional,
            separator | refs."definitions.cloudifyStringOrGetInput" | optional,
            variant | refs."definitions.cloudifyStringOrGetInput" | optional,
            ..
          },
      "definitions.nodeTypeCloudifyRestBunchRequestsInterfaces" =
        {
            "cloudify.interfaces.lifecycle"
              | {
                configure
                  | {
                    implementation
                      | std.enum.TagOrString
                      | [| '"rest.cloudify_rest.tasks.bunch_execute" |]
                      | optional,
                    inputs
                      | {
                        auth | { _ | Dyn } | optional,
                        templates | { _ | Dyn } | optional,
                        ..
                      }
                      | optional,
                    ..
                  }
                  | optional,
                create
                  | {
                    implementation
                      | std.enum.TagOrString
                      | [| '"rest.cloudify_rest.tasks.bunch_execute" |]
                      | optional,
                    inputs
                      | {
                        auth | { _ | Dyn } | optional,
                        templates | { _ | Dyn } | optional,
                        ..
                      }
                      | optional,
                    ..
                  }
                  | optional,
                delete
                  | {
                    implementation
                      | std.enum.TagOrString
                      | [| '"rest.cloudify_rest.tasks.bunch_execute" |]
                      | optional,
                    inputs
                      | {
                        auth | { _ | Dyn } | optional,
                        templates | { _ | Dyn } | optional,
                        ..
                      }
                      | optional,
                    ..
                  }
                  | optional,
                start
                  | {
                    implementation
                      | std.enum.TagOrString
                      | [| '"rest.cloudify_rest.tasks.bunch_execute" |]
                      | optional,
                    inputs
                      | {
                        auth | { _ | Dyn } | optional,
                        templates | { _ | Dyn } | optional,
                        ..
                      }
                      | optional,
                    ..
                  }
                  | optional,
                stop
                  | {
                    implementation
                      | std.enum.TagOrString
                      | [| '"rest.cloudify_rest.tasks.bunch_execute" |]
                      | optional,
                    inputs
                      | {
                        auth | { _ | Dyn } | optional,
                        templates | { _ | Dyn } | optional,
                        ..
                      }
                      | optional,
                    ..
                  }
                  | optional,
                ..
              }
              | optional,
            ..
          },
      "definitions.nodeTypeCloudifyRestBunchRequestsProperties" =
        {
            cert
              | refs."definitions.cloudifyStringOrGetInput"
              | doc m%"
                Supported such values:
                * `None`: default value, ignore client certificates,
                * `<file path>`: path to certificate on local system,
                * `<certificate content>`: certificate content.
              "%
              | optional,
            host
              | Array String
              | doc m%"
                host name or IP addresses of Rest Servers
                if list of hosts is not needed single host can be provided by this
                property. NOTE: the 'hosts' property overwrite the 'host' property
              "%
              | optional,
            hosts
              | Array String
              | doc "list of hosts name or IP addresses of Rest Servers"
              | optional,
            params
              | { _ | Dyn }
              | doc "Template parameters. Default is empty dictionary."
              | optional,
            port
              | refs."definitions.cloudifyIntegerOrGetInput"
              | doc m%"
                port number. When -1 default ports are used
                (80 for ssl = false and 443 for ssl = true)
              "%
              | optional,
            proxies | { _ | Dyn } | doc "List of proxies." | optional,
            ssl
              | refs."definitions.cloudifyBooleanOrGetInput"
              | doc "http or https"
              | optional,
            timeout
              | refs."definitions.cloudifyIntegerOrGetInput"
              | doc "Timeout value for requests."
              | optional,
            verify
              | refs."definitions.cloudifyBooleanOrGetInput"
              | doc m%"
                A boolean which controls whether we verify the server's TLS
                certificate. Supported such values:
                * `True`: default value, check certificates,
                * `False`: ignore server certificates,
                * `<file path>`: path to certificate on local system,
                * `<certificate content>`: certificate content.
              "%
              | optional,
            ..
          },
      "definitions.nodeTypeCloudifyRestRequestsInterfaces" =
        {
            "cloudify.interfaces.lifecycle"
              | {
                configure
                  | {
                    implementation
                      | std.enum.TagOrString
                      | [| '"rest.cloudify_rest.tasks.execute" |]
                      | optional,
                    inputs
                      | refs."definitions.restTemplateInputs"
                      | { _ | Dyn }
                      | optional,
                    ..
                  }
                  | optional,
                create
                  | {
                    implementation
                      | std.enum.TagOrString
                      | [| '"rest.cloudify_rest.tasks.execute" |]
                      | optional,
                    inputs
                      | refs."definitions.restTemplateInputs"
                      | { _ | Dyn }
                      | optional,
                    ..
                  }
                  | optional,
                delete
                  | {
                    implementation
                      | std.enum.TagOrString
                      | [| '"rest.cloudify_rest.tasks.execute" |]
                      | optional,
                    inputs
                      | refs."definitions.restTemplateInputs"
                      | { _ | Dyn }
                      | optional,
                    ..
                  }
                  | optional,
                start
                  | {
                    implementation
                      | std.enum.TagOrString
                      | [| '"rest.cloudify_rest.tasks.execute" |]
                      | optional,
                    inputs
                      | refs."definitions.restTemplateInputs"
                      | { _ | Dyn }
                      | optional,
                    ..
                  }
                  | optional,
                stop
                  | {
                    implementation
                      | std.enum.TagOrString
                      | [| '"rest.cloudify_rest.tasks.execute" |]
                      | optional,
                    inputs
                      | refs."definitions.restTemplateInputs"
                      | { _ | Dyn }
                      | optional,
                    ..
                  }
                  | optional,
                ..
              }
              | optional,
            ..
          },
      "definitions.nodeTypeCloudifyRestRequestsProperties" =
        {
            cert
              | refs."definitions.cloudifyStringOrGetInput"
              | doc m%"
                Supported such values:
                * `None`: default value, ignore client certificates,
                * `<file path>`: path to certificate on local system,
                * `<certificate content>`: certificate content.
              "%
              | optional,
            host
              | Array String
              | doc m%"
                host name or IP addresses of Rest Servers
                if list of hosts is not needed single host can be provided by this
                property. NOTE: the 'hosts' property overwrite the 'host' property
              "%
              | optional,
            hosts
              | Array String
              | doc "list of hosts name or IP addresses of Rest Servers"
              | optional,
            params
              | { _ | Dyn }
              | doc "Template parameters. Default is empty dictionary."
              | optional,
            port
              | refs."definitions.cloudifyIntegerOrGetInput"
              | doc m%"
                port number. When -1 default ports are used
                (80 for ssl = false and 443 for ssl = true)
              "%
              | optional,
            proxies | { _ | Dyn } | doc "List of proxies." | optional,
            ssl
              | refs."definitions.cloudifyBooleanOrGetInput"
              | doc "http or https"
              | optional,
            timeout
              | refs."definitions.cloudifyIntegerOrGetInput"
              | doc "Timeout value for requests."
              | optional,
            verify
              | refs."definitions.cloudifyBooleanOrGetInput"
              | doc m%"
                A boolean which controls whether we verify the server's TLS
                certificate. Supported such values:
                * `True`: default value, check certificates,
                * `False`: ignore server certificates,
                * `<file path>`: path to certificate on local system,
                * `<certificate content>`: certificate content.
              "%
              | optional,
            ..
          },
      "definitions.nodeTypeCloudifyTerminalRawInterfaces" =
        {
            "cloudify.interfaces.lifecycle"
              | {
                configure
                  | {
                    implementation
                      | std.enum.TagOrString
                      | [| '"terminal.cloudify_terminal.tasks.run" |]
                      | optional,
                    inputs | { _ | Dyn } | optional,
                    ..
                  }
                  | optional,
                create
                  | {
                    implementation
                      | std.enum.TagOrString
                      | [| '"terminal.cloudify_terminal.tasks.run" |]
                      | optional,
                    inputs | { _ | Dyn } | optional,
                    ..
                  }
                  | optional,
                delete
                  | {
                    implementation
                      | std.enum.TagOrString
                      | [| '"terminal.cloudify_terminal.tasks.run" |]
                      | optional,
                    inputs | { _ | Dyn } | optional,
                    ..
                  }
                  | optional,
                start
                  | {
                    implementation
                      | std.enum.TagOrString
                      | [| '"terminal.cloudify_terminal.tasks.run" |]
                      | optional,
                    inputs | { _ | Dyn } | optional,
                    ..
                  }
                  | optional,
                stop
                  | {
                    implementation
                      | std.enum.TagOrString
                      | [| '"terminal.cloudify_terminal.tasks.run" |]
                      | optional,
                    inputs | { _ | Dyn } | optional,
                    ..
                  }
                  | optional,
                ..
              }
              | optional,
            ..
          },
      "definitions.nodeTypeCloudifyTerminalRawProperties" =
        {
            terminal_auth
              | refs."definitions.cloudifyDatatypesTerminalAuth"
              | { _ | Dyn }
              | doc m%"
                terminal credentials, like example:
                  user: <user name>
                  password: <user password>
                  ip: <host name>
              "%
              | optional,
            ..
          },
      "definitions.nodeTypeDockerAnsiblePlaybookInterfaces" =
        {
            "cloudify.interfaces.lifecycle"
              | {
                create
                  | {
                    implementation
                      | std.enum.TagOrString
                      | [|
                        '"docker.cloudify_docker.ansible.create_ansible_playbook"
                      |]
                      | optional,
                    ..
                  }
                  | optional,
                delete
                  | {
                    implementation
                      | std.enum.TagOrString
                      | [|
                        '"docker.cloudify_docker.ansible.remove_ansible_playbook"
                      |]
                      | optional,
                    ..
                  }
                  | optional,
                precreate
                  | {
                    implementation
                      | std.enum.TagOrString
                      | [|
                        '"docker.cloudify_docker.ansible.set_playbook_config"
                      |]
                      | optional,
                    inputs
                      | {
                        additional_args | String | optional,
                        ansible_env_vars | { _ | Dyn } | optional,
                        ansible_playbook_executable_path | String | optional,
                        debug_level | std.number.Integer | optional,
                        options_config | { _ | Dyn } | optional,
                        playbook_path | String | optional,
                        playbook_source_path | String | optional,
                        remerge_sources | Bool | optional,
                        run_data | { _ | Dyn } | optional,
                        save_playbook | Bool | optional,
                        sensitive_keys | Array String | optional,
                        site_yaml_path | String | optional,
                        sources | { _ | Dyn } | optional,
                        ..
                      }
                      | optional,
                    ..
                  }
                  | optional,
                ..
              }
              | optional,
            ..
          },
      "definitions.nodeTypeDockerAnsiblePlaybookProperties" =
        {
            additional_args
              | String
              | doc "Additional args that you want to use, for example, '-c local'."
              | optional,
            additional_playbook_files
              | Array String
              | doc m%"
                A list of string paths blueprint resources that you
                would like to download to the playbook directory.
                If you use this variable, you must list all of the paths
                that you expect to download.
              "%
              | optional,
            ansible_become
              | Bool
              | doc m%"
                A boolean value, `true` or `false` whether
                to assume the user privileges.
              "%
              | optional,
            ansible_env_vars
              | {
                ANSIBLE_HOST_KEY_CHECKING
                  | std.enum.TagOrString
                  | [| 'False, 'True |]
                  | optional,
                ANSIBLE_INVALID_TASK_ATTRIBUTE_FAILED
                  | std.enum.TagOrString
                  | [| 'False, 'True |]
                  | optional,
                ..
              }
              | doc "A dictionary of environment variables to set."
              | optional,
            ansible_playbook_executable_path
              | String
              | doc m%"
                A full path to your ansible_playbook executable if user don't want to
                use the included version of executable in the plugin
              "%
              | optional,
            debug_level | std.number.Integer | doc "Debug level" | optional,
            docker_machine
              | refs."definitions.dockerMachine"
              | { _ | Dyn }
              | doc "Docker Machine IP,User,Private_key"
              | optional,
            options_config
              | { _ | Dyn }
              | doc "Command-line options, such as `tags` or `skip_tags`."
              | optional,
            playbook_path
              | String
              | doc m%"
                A path to your `site.yaml` or `main.yaml` in your
                Ansible Playbook relative to blueprint or playbook_source_path
                if playbook_source_path is URL to archive File relative inside the archive.
              "%
              | optional,
            playbook_source_path
              | String
              | doc m%"
                A full path/URL that contain playbook specified in playbook_path
                or site_yaml_path.
              "%
              | optional,
            remerge_sources
              | Bool
              | doc "update sources on target node"
              | optional,
            run_data | { _ | Dyn } | doc "Variable values." | optional,
            save_playbook | Bool | doc "Save playbook after action" | optional,
            sensitive_keys
              | Array String
              | doc "keys that you want us to obscure"
              | optional,
            site_yaml_path
              | String
              | doc m%"
                DEPRECATED.
                A path to your `site.yaml` or `main.yaml` in your
                Ansible Playbook relative to blueprint or playbook_source_path
                if playbook_source_path is URL to archive File relative inside the archive.
              "%
              | optional,
            sources
              | { _ | Dyn }
              | doc m%"
                Your Inventory sources. Either YAML or a path to a file.
                If not provided the inventory will be take from the `sources`
                runtime property.
              "%
              | optional,
            ..
          },
      "definitions.nodeTypeDockerContainerFilesInterfaces" =
        {
            "cloudify.interfaces.lifecycle"
              | {
                create
                  | {
                    implementation
                      | std.enum.TagOrString
                      | [|
                        '"docker.cloudify_docker.tasks.prepare_container_files"
                      |]
                      | optional,
                    ..
                  }
                  | optional,
                delete
                  | {
                    implementation
                      | std.enum.TagOrString
                      | [|
                        '"docker.cloudify_docker.tasks.remove_container_files"
                      |]
                      | optional,
                    ..
                  }
                  | optional,
                ..
              }
              | optional,
            ..
          },
      "definitions.nodeTypeDockerContainerFilesProperties" =
        {
            resource_config
              | std.contract.any_of
                [
                  js2n.Null,
                  Bool,
                  Number,
                  String,
                  {
                    ansible_sources
                      | { _ | Dyn }
                      | doc "special case for ansible sources"
                      | optional,
                    destination
                      | String
                      | doc m%"
                        Location to extract the files into,
                        that will be mapped to container volume later
                      "%
                      | optional,
                    docker_machine
                      | {
                        ansible_sources
                          | { _ | Dyn }
                          | doc "special case for ansible sources"
                          | optional,
                        destination
                          | String
                          | doc m%"
                            Location to extract the files into,
                            that will be mapped to container volume later
                          "%
                          | optional,
                        docker_machine
                          | refs."definitions.dockerMachine"
                          | { _ | Dyn }
                          | doc "Docker Machine IP,User,Private_keys"
                          | optional,
                        extra_files
                          | String
                          | doc "More files to add to source before it goes to destination"
                          | optional,
                        source
                          | String
                          | doc "Files location that will be mapped to container"
                          | optional,
                        terraform_sources
                          | { _ | Dyn }
                          | doc "special case for terraform sources"
                          | optional,
                        ..
                      }
                      | doc "Docker Machine IP,User,Private_key"
                      | optional,
                    extra_files
                      | Array String
                      | doc "More files to add to source before it goes to destination"
                      | optional,
                    source
                      | String
                      | doc "Files location that will be mapped to container"
                      | optional,
                    terraform_sources
                      | { _ | Dyn }
                      | doc "special case for terraform sources"
                      | optional,
                    ..
                  },
                  Array Dyn
                ]
              | doc "Docker Container Files type"
              | optional,
            ..
          },
      "definitions.nodeTypeDockerContainerInterfaces" =
        {
            "cloudify.interfaces.lifecycle"
              | {
                create
                  | {
                    implementation
                      | std.enum.TagOrString
                      | [| '"docker.cloudify_docker.tasks.create_container" |]
                      | optional,
                    ..
                  }
                  | optional,
                delete
                  | {
                    implementation
                      | std.enum.TagOrString
                      | [| '"docker.cloudify_docker.tasks.remove_container" |]
                      | optional,
                    ..
                  }
                  | optional,
                stop
                  | {
                    implementation
                      | std.enum.TagOrString
                      | [| '"docker.cloudify_docker.tasks.remove_container" |]
                      | optional,
                    inputs
                      | {
                        stop_command
                          | std.contract.any_of [ String, { _ | Dyn } ]
                          | optional,
                        ..
                      }
                      | optional,
                    ..
                  }
                  | optional,
                ..
              }
              | optional,
            ..
          },
      "definitions.nodeTypeDockerContainerProperties" =
        {
            client_config
              | refs."definitions.dockerClientConfig"
              | { _ | Dyn }
              | optional,
            resource_config
              | {
                container_args
                  | { _ | Dyn }
                  | doc m%"
                    dict of arguments to pass to container when run
                    check this URL for details: https://tinyurl.com/v8url54
                  "%
                  | optional,
                image_tag
                  | refs."definitions.cloudifyStringOrGetInput"
                  | doc "Docker image tag to build container"
                  | optional,
                ..
              }
              | doc "Docker Container type"
              | optional,
            ..
          },
      "definitions.nodeTypeDockerContainersInterfaces" =
        {
            "cloudify.interfaces.lifecycle"
              | {
                create
                  | {
                    implementation
                      | std.enum.TagOrString
                      | [| '"docker.cloudify_docker.tasks.list_containers" |]
                      | optional,
                    ..
                  }
                  | optional,
                ..
              }
              | optional,
            ..
          },
      "definitions.nodeTypeDockerContainersProperties" =
        {
            client_config
              | refs."definitions.dockerClientConfig"
              | { _ | Dyn }
              | optional,
            ..
          },
      "definitions.nodeTypeDockerHostDetailsInterfaces" =
        {
            "cloudify.interfaces.lifecycle"
              | {
                create
                  | {
                    implementation
                      | std.enum.TagOrString
                      | [| '"docker.cloudify_docker.tasks.list_host_details" |]
                      | optional,
                    ..
                  }
                  | optional,
                ..
              }
              | optional,
            ..
          },
      "definitions.nodeTypeDockerHostDetailsProperties" =
        {
            client_config
              | refs."definitions.dockerClientConfig"
              | { _ | Dyn }
              | optional,
            ..
          },
      "definitions.nodeTypeDockerHostInterfaces" =
        {
            "cloudify.interfaces.lifecycle"
              | {
                create
                  | {
                    implementation
                      | std.enum.TagOrString
                      | [| '"docker.cloudify_docker.tasks.install_docker" |]
                      | optional,
                    ..
                  }
                  | optional,
                delete
                  | {
                    implementation
                      | std.enum.TagOrString
                      | [| '"docker.cloudify_docker.tasks.uninstall_docker" |]
                      | optional,
                    ..
                  }
                  | optional,
                ..
              }
              | optional,
            ..
          },
      "definitions.nodeTypeDockerHostProperties" =
        {
            docker_machine
              | refs."definitions.dockerMachine"
              | { _ | Dyn }
              | optional,
            resource_config
              | refs."definitions.dockerInstallationConfig"
              | { _ | Dyn }
              | optional,
            ..
          },
      "definitions.nodeTypeDockerImageInterfaces" =
        {
            "cloudify.interfaces.lifecycle"
              | {
                create
                  | {
                    implementation
                      | std.enum.TagOrString
                      | [| '"docker.cloudify_docker.tasks.build_image" |]
                      | optional,
                    ..
                  }
                  | optional,
                delete
                  | {
                    implementation
                      | std.enum.TagOrString
                      | [| '"docker.cloudify_docker.tasks.remove_image" |]
                      | optional,
                    ..
                  }
                  | optional,
                ..
              }
              | optional,
            ..
          },
      "definitions.nodeTypeDockerImageProperties" =
        {
            client_config
              | refs."definitions.dockerClientConfig"
              | { _ | Dyn }
              | optional,
            resource_config
              | {
                image_content
                  | refs."definitions.cloudifyStringOrGetInput"
                  | doc "Docker image to build"
                  | optional,
                tag
                  | refs."definitions.cloudifyStringOrGetInput"
                  | doc "Docker image tag"
                  | optional,
                ..
              }
              | doc "Docker Image type"
              | optional,
            ..
          },
      "definitions.nodeTypeDockerImagesInterfaces" =
        {
            "cloudify.interfaces.lifecycle"
              | {
                create
                  | {
                    implementation
                      | std.enum.TagOrString
                      | [| '"docker.cloudify_docker.tasks.list_images" |]
                      | optional,
                    ..
                  }
                  | optional,
                ..
              }
              | optional,
            ..
          },
      "definitions.nodeTypeDockerImagesProperties" =
        {
            client_config
              | refs."definitions.dockerClientConfig"
              | { _ | Dyn }
              | optional,
            ..
          },
      "definitions.nodeTypeDockerTerraformModuleInterfaces" =
        {
            "cloudify.interfaces.lifecycle"
              | {
                create
                  | {
                    implementation
                      | std.enum.TagOrString
                      | [|
                        '"docker.cloudify_docker.terraform.prepare_terraform_files"
                      |]
                      | optional,
                    ..
                  }
                  | optional,
                delete
                  | {
                    implementation
                      | std.enum.TagOrString
                      | [|
                        '"docker.cloudify_docker.terraform.remove_terraform_files"
                      |]
                      | optional,
                    ..
                  }
                  | optional,
                ..
              }
              | optional,
            ..
          },
      "definitions.nodeTypeDockerTerraformModuleProperties" =
        {
            docker_machine
              | refs."definitions.dockerMachine"
              | { _ | Dyn }
              | optional,
            resource_config
              | {
                backend
                  | {
                    name | String | doc "Some name." | optional,
                    options
                      | { _ | Dyn }
                      | doc "Should be a dictionary of key/values."
                      | optional,
                    ..
                  }
                  | doc m%"
                    If a backend is not defined in source,
                    and you want to use a specific backend, define that here.
                  "%
                  | optional,
                environment_variables
                  | { _ | Dyn }
                  | doc "A dictionary of environment variables."
                  | optional,
                source
                  | std.contract.any_of
                    [
                      String,
                      {
                        location
                          | String
                          | doc "A path, or the URL of a ZIP or Git repository. If this is a path, then it must be relative to the blueprint's root.",
                        password
                          | String
                          | doc "The username to authenticate with basic auth."
                          | optional,
                        username
                          | String
                          | doc "The username to authenticate with basic auth."
                          | optional,
                        ..
                      }
                    ],
                variables
                  | { _ | Dyn }
                  | doc "A dictionary of variables."
                  | optional,
                ..
              },
            terraform_plugins
              | Array String
              | doc "Terraform Plugins to install",
            ..
          },
      "definitions.nodeTypeHelmBinaryProperties" =
        {
            helm_config
              | refs."definitions.cloudifyDatatypesHelmConfig"
              | { _ | Dyn }
              | optional,
            installation_source
              | refs."definitions.cloudifyStringOrGetInput"
              | doc "Location to download the Helm installation from. Ignored if 'use_existing_resource' is true."
              | optional,
            use_existing_resource
              | refs."definitions.cloudifyBooleanOrGetInput"
              | doc "If true, use an existing helm installation rather than installing it."
              | optional,
            ..
          },
      "definitions.nodeTypeHelmReleaseInterfaces" =
        {
            "cloudify.interfaces.lifecycle"
              | {
                delete
                  | {
                    implementation
                      | std.enum.TagOrString
                      | [| '"helm.cloudify_helm.tasks.uninstall_release" |]
                      | optional,
                    inputs
                      | {
                        flags
                          | refs."definitions.cloudifyDatatypesHelmSetFlagsList"
                          | Array Dyn
                          | doc " Flags to add only to `helm uninstall` command.The format is the same as \"flags\"."
                          | optional,
                        ..
                      }
                      | optional,
                    ..
                  }
                  | optional,
                start
                  | {
                    implementation
                      | std.enum.TagOrString
                      | [| '"helm.cloudify_helm.tasks.install_release" |]
                      | optional,
                    inputs
                      | {
                        flags
                          | refs."definitions.cloudifyDatatypesHelmSetFlagsList"
                          | Array Dyn
                          | doc " Flags to add only to `helm install` command.The format is the same as \"flags\"."
                          | optional,
                        ..
                      }
                      | optional,
                    ..
                  }
                  | optional,
                ..
              }
              | optional,
            ..
          },
      "definitions.nodeTypeHelmReleaseProperties" =
        {
            client_config
              | refs."definitions.cloudifyDatatypesHelmClientConfig"
              | { _ | Dyn },
            helm_config
              | refs."definitions.cloudifyDatatypesHelmConfig"
              | { _ | Dyn }
              | optional,
            resource_config
              | refs."definitions.cloudifyDatatypesHelmReleaseConfig"
              | { _ | Dyn },
            use_external_resource
              | refs."definitions.cloudifyBooleanOrGetInput"
              | doc m%"
                Indicate whether the resource exists or if Cloudify should create the resource,
                true if you are bringing an existing resource, false if you want cloudify to create it.
              "%
              | optional,
            ..
          },
      "definitions.nodeTypeHelmRepoInterfaces" =
        {
            "cloudify.interfaces.lifecycle"
              | {
                delete
                  | {
                    implementation
                      | std.enum.TagOrString
                      | [| '"helm.cloudify_helm.tasks.remove_repo" |]
                      | optional,
                    inputs
                      | {
                        flags
                          | refs."definitions.cloudifyDatatypesHelmSetFlagsList"
                          | Array Dyn
                          | doc " Flags to add only to `helm repo remove` command.The format is the same as \"flags\"."
                          | optional,
                        ..
                      }
                      | optional,
                    ..
                  }
                  | optional,
                start
                  | {
                    implementation
                      | std.enum.TagOrString
                      | [| '"helm.cloudify_helm.tasks.add_repo" |]
                      | optional,
                    inputs
                      | {
                        flags
                          | refs."definitions.cloudifyDatatypesHelmSetFlagsList"
                          | Array Dyn
                          | doc " Flags to add only to `helm repo add` command.The format is the same as \"flags\"."
                          | optional,
                        ..
                      }
                      | optional,
                    ..
                  }
                  | optional,
                ..
              }
              | optional,
            ..
          },
      "definitions.nodeTypeHelmRepoProperties" =
        {
            helm_config
              | refs."definitions.cloudifyDatatypesHelmConfig"
              | { _ | Dyn }
              | optional,
            resource_config
              | refs."definitions.cloudifyDatatypesHelmRepoConfig"
              | { _ | Dyn }
              | optional,
            use_external_resource
              | refs."definitions.cloudifyBooleanOrGetInput"
              | doc m%"
                Indicate whether the resource exists or if Cloudify should create the resource,
                true if you are bringing an existing resource, false if you want cloudify to create it.
              "%
              | optional,
            ..
          },
      "definitions.nodeTypeKubernetesNodesMasterProperties" =
        {
            authentication
              | refs."definitions.kubernetesTypesAuthenticationVariant"
              | { _ | Dyn }
              | doc m%"
                Authentication properties of Kubernetes Cloud providers. Optional.
                Currently supported providers: Google Cloud Platform.
              "%
              | optional,
            configuration
              | refs."definitions.kubernetesTypesConfigurationVariant"
              | { _ | Dyn }
              | doc m%"
                Configuration properties of Kubernetes API. One of four configuration options can be used
                1. Kubernetes config file contained by blueprint archive
                2. Kubernetes config file previously uploaded into Cloudify Manager VM
                3. Content of Kubernetes config file (YAML)
                4. Kubernetes API set o properties
              "%
              | optional,
            ..
          },
      "definitions.nodeTypeKubernetesResourcesBlueprintDefinedResource" =
        std.contract.Sequence
            [
              refs."definitions.nodeTypeKubernetesResourcesResourceWithValidateStatus",
              {
                definition
                  | refs."definitions.kubernetesTypesResourceDefinition"
                  | { _ | Dyn }
                  | doc "Definition of resource object using native Kubernetes YAML spec"
                  | optional,
                options
                  | { _ | Dyn }
                  | doc "API options depending on API operations execution"
                  | optional,
                use_external_resource
                  | refs."definitions.cloudifyBooleanOrGetInput"
                  | doc "Indicates that you want to use an existing resource in Kubernetes."
                  | optional,
                ..
              }
            ],
      "definitions.nodeTypeKubernetesResourcesBlueprintDefinedResourceInterfaces" =
        {
            "cloudify.interfaces.lifecycle"
              | {
                create
                  | {
                    implementation
                      | std.enum.TagOrString
                      | [|
                        '"kubernetes.cloudify_kubernetes.tasks.resource_create"
                      |]
                      | refs."definitions.cloudifyStringOrGetInput"
                      | optional,
                    ..
                  }
                  | optional,
                delete
                  | {
                    implementation
                      | std.enum.TagOrString
                      | [|
                        '"kubernetes.cloudify_kubernetes.tasks.resource_delete"
                      |]
                      | refs."definitions.cloudifyStringOrGetInput"
                      | optional,
                    ..
                  }
                  | optional,
                poststart
                  | {
                    implementation
                      | std.enum.TagOrString
                      | [|
                        '"kubernetes.cloudify_kubernetes.tasks.resource_read"
                      |]
                      | refs."definitions.cloudifyStringOrGetInput"
                      | optional,
                    ..
                  }
                  | optional,
                update
                  | {
                    implementation
                      | std.enum.TagOrString
                      | [|
                        '"kubernetes.cloudify_kubernetes.tasks.resource_update"
                      |]
                      | refs."definitions.cloudifyStringOrGetInput"
                      | optional,
                    ..
                  }
                  | optional,
                ..
              }
              | optional,
            ..
          },
      "definitions.nodeTypeKubernetesResourcesClusterRoleBindingProperties" =
        std.contract.Sequence
            [
              refs."definitions.nodeTypeKubernetesResourcesBlueprintDefinedResource",
              {
                definition
                  | refs."definitions.kubernetesTypesRoleBindingDefinitio"
                  | { _ | Dyn }
                  | doc "Definition of role binding using native Kubernetes YAML spec"
                  | optional,
                ..
              }
            ],
      "definitions.nodeTypeKubernetesResourcesClusterRoleProperties" =
        std.contract.Sequence
            [
              refs."definitions.nodeTypeKubernetesResourcesRoleProperties",
              {
                definition
                  | refs."definitions.kubernetesTypesClusterRoleDefinitio"
                  | { _ | Dyn }
                  | doc "Definition of role binding using native Kubernetes YAML spec"
                  | optional,
                ..
              }
            ],
      "definitions.nodeTypeKubernetesResourcesConfigMapProperties" =
        std.contract.Sequence
            [
              refs."definitions.nodeTypeKubernetesResourcesBlueprintDefinedResource",
              {
                definition
                  | refs."definitions.kubernetesTypesConfigClassResourceDefinition"
                  | { _ | Dyn }
                  | optional,
                ..
              }
            ],
      "definitions.nodeTypeKubernetesResourcesCustomBlueprintDefinedResourceInterfaces" =
        std.contract.Sequence
            [
              refs."definitions.nodeTypeKubernetesResourcesBlueprintDefinedResourceInterfaces",
              {
                "cloudify.interfaces.lifecycle"
                  | {
                    create
                      | {
                        implementation
                          | std.enum.TagOrString
                          | [|
                            '"kubernetes.cloudify_kubernetes.tasks.custom_resource_create"
                          |]
                          | refs."definitions.cloudifyStringOrGetInput"
                          | optional,
                        ..
                      }
                      | optional,
                    delete
                      | {
                        implementation
                          | std.enum.TagOrString
                          | [|
                            '"kubernetes.cloudify_kubernetes.tasks.custom_resource_delete"
                          |]
                          | refs."definitions.cloudifyStringOrGetInput"
                          | optional,
                        ..
                      }
                      | optional,
                    ..
                  }
                  | optional,
                ..
              }
            ],
      "definitions.nodeTypeKubernetesResourcesCustomBlueprintDefinedResourceProperties" =
        std.contract.Sequence
            [
              refs."definitions.nodeTypeKubernetesResourcesBlueprintDefinedResource",
              {
                api_mapping
                  | refs."definitions.kubernetesTypesApiMapping"
                  | { _ | Dyn }
                  | doc "Python Kubernetes API objects and methods definitions used for given resource type"
                  | optional,
                ..
              }
            ],
      "definitions.nodeTypeKubernetesResourcesCustomResourceDefinitionProperties" =
        std.contract.Sequence
            [
              refs."definitions.nodeTypeKubernetesResourcesBlueprintDefinedResource",
              { _ | Dyn }
            ],
      "definitions.nodeTypeKubernetesResourcesDaemonSetProperties" =
        std.contract.Sequence
            [
              refs."definitions.nodeTypeKubernetesResourcesBlueprintDefinedResource",
              { _ | Dyn }
            ],
      "definitions.nodeTypeKubernetesResourcesDeploymentProperties" =
        std.contract.Sequence
            [
              refs."definitions.nodeTypeKubernetesResourcesBlueprintDefinedResource",
              {
                validate_resource_status
                  | refs."definitions.cloudifyBooleanOrGetInput"
                  | optional,
                ..
              }
            ],
      "definitions.nodeTypeKubernetesResourcesFileDefinedResourceInterfaces" =
        {
            "cloudify.interfaces.lifecycle"
              | {
                create
                  | {
                    implementation
                      | std.enum.TagOrString
                      | [|
                        '"kubernetes.cloudify_kubernetes.tasks.file_resource_create"
                      |]
                      | refs."definitions.cloudifyStringOrGetInput"
                      | optional,
                    ..
                  }
                  | optional,
                delete
                  | {
                    implementation
                      | std.enum.TagOrString
                      | [|
                        '"kubernetes.cloudify_kubernetes.tasks.file_resource_delete"
                      |]
                      | refs."definitions.cloudifyStringOrGetInput"
                      | optional,
                    ..
                  }
                  | optional,
                poststart
                  | {
                    implementation
                      | std.enum.TagOrString
                      | [|
                        '"kubernetes.cloudify_kubernetes.tasks.file_resource_read"
                      |]
                      | refs."definitions.cloudifyStringOrGetInput"
                      | optional,
                    ..
                  }
                  | optional,
                ..
              }
              | optional,
            ..
          },
      "definitions.nodeTypeKubernetesResourcesFileDefinedResourceProperties" =
        std.contract.Sequence
            [
              refs."definitions.nodeTypeKubernetesResourcesResourceWithValidateStatus",
              {
                allow_node_redefinition
                  | refs."definitions.cloudifyBooleanOrGetInput"
                  | doc "Permit changing the name and kind and number of resources defined in file."
                  | optional,
                file
                  | refs."definitions.kubernetesTypesFileResource"
                  | { _ | Dyn }
                  | doc "A path to YAML file containing the resource definition."
                  | optional,
                ..
              }
            ],
      "definitions.nodeTypeKubernetesResourcesIngressProperties" =
        std.contract.Sequence
            [
              refs."definitions.nodeTypeKubernetesResourcesBlueprintDefinedResource",
              {
                definition
                  | { _ | Dyn }
                  | doc "Definition of resource object using native Kubernetes YAML spec"
                  | optional,
                ..
              }
            ],
      "definitions.nodeTypeKubernetesResourcesMultipleFileDefinedResourcesInterfaces" =
        {
            "cloudify.interfaces.lifecycle"
              | {
                create
                  | {
                    implementation
                      | std.enum.TagOrString
                      | [|
                        '"kubernetes.cloudify_kubernetes.tasks.multiple_file_resource_create"
                      |]
                      | optional,
                    ..
                  }
                  | optional,
                delete
                  | {
                    implementation
                      | std.enum.TagOrString
                      | [|
                        '"kubernetes.cloudify_kubernetes.tasks.custom_resource_delete"
                      |]
                      | optional,
                    ..
                  }
                  | optional,
                poststart
                  | {
                    implementation
                      | std.enum.TagOrString
                      | [|
                        '"kubernetes.cloudify_kubernetes.tasks.multiple_file_resource_delete"
                      |]
                      | optional,
                    ..
                  }
                  | optional,
                ..
              }
              | optional,
            ..
          },
      "definitions.nodeTypeKubernetesResourcesMultipleFileDefinedResourcesProperties" =
        std.contract.Sequence
            [
              refs."definitions.nodeTypeKubernetesResourcesResourceWithValidateStatus",
              {
                allow_node_redefinition
                  | refs."definitions.cloudifyBooleanOrGetInput"
                  | doc "Permit changing the name and kind and number of resources defined in file."
                  | optional,
                files
                  | refs."definitions.cloudifyStringOrGetInput"
                  | doc "A list of paths to YAML files containing the resources definition."
                  | optional,
                ..
              }
            ],
      "definitions.nodeTypeKubernetesResourcesNamespaceProperties" =
        std.contract.Sequence
            [
              refs."definitions.nodeTypeKubernetesResourcesBlueprintDefinedResource",
              {
                use_external_resource
                  | refs."definitions.cloudifyBooleanOrGetInput"
                  | optional,
                ..
              }
            ],
      "definitions.nodeTypeKubernetesResourcesNetworkPolicyProperties" =
        std.contract.Sequence
            [
              refs."definitions.nodeTypeKubernetesResourcesBlueprintDefinedResource",
              {
                definition
                  | { _ | Dyn }
                  | doc "Definition of resource object using native Kubernetes YAML spec"
                  | optional,
                ..
              }
            ],
      "definitions.nodeTypeKubernetesResourcesNodeProperties" =
        std.contract.Sequence
            [
              refs."definitions.nodeTypeKubernetesResourcesBlueprintDefinedResource",
              {
                use_external_resource
                  | refs."definitions.cloudifyBooleanOrGetInput"
                  | optional,
                ..
              }
            ],
      "definitions.nodeTypeKubernetesResourcesPersistentVolumeClaimProperties" =
        std.contract.Sequence
            [
              refs."definitions.nodeTypeKubernetesResourcesBlueprintDefinedResource",
              {
                definition
                  | { _ | Dyn }
                  | doc "Definition of resource object using native Kubernetes YAML spec"
                  | optional,
                ..
              }
            ],
      "definitions.nodeTypeKubernetesResourcesPersistentVolumeProperties" =
        std.contract.Sequence
            [
              refs."definitions.nodeTypeKubernetesResourcesBlueprintDefinedResource",
              {
                validate_resource_status
                  | refs."definitions.cloudifyBooleanOrGetInput"
                  | optional,
                ..
              }
            ],
      "definitions.nodeTypeKubernetesResourcesPodProperties" =
        std.contract.Sequence
            [
              refs."definitions.nodeTypeKubernetesResourcesBlueprintDefinedResource",
              {
                use_external_resource
                  | refs."definitions.cloudifyBooleanOrGetInput"
                  | optional,
                ..
              }
            ],
      "definitions.nodeTypeKubernetesResourcesPodSecurityPolicyProperties" =
        std.contract.Sequence
            [
              refs."definitions.nodeTypeKubernetesResourcesBlueprintDefinedResource",
              {
                definition
                  | { _ | Dyn }
                  | doc "Definition of resource object using native Kubernetes YAML spec"
                  | optional,
                ..
              }
            ],
      "definitions.nodeTypeKubernetesResourcesReplicaSetProperties" =
        std.contract.Sequence
            [
              refs."definitions.nodeTypeKubernetesResourcesBlueprintDefinedResource",
              {
                use_external_resource
                  | refs."definitions.cloudifyBooleanOrGetInput"
                  | optional,
                ..
              }
            ],
      "definitions.nodeTypeKubernetesResourcesReplicationControllerProperties" =
        std.contract.Sequence
            [
              refs."definitions.nodeTypeKubernetesResourcesBlueprintDefinedResource",
              {
                use_external_resource
                  | refs."definitions.cloudifyBooleanOrGetInput"
                  | optional,
                ..
              }
            ],
      "definitions.nodeTypeKubernetesResourcesResourceBase" =
        {
            allow_node_redefinition
              | refs."definitions.cloudifyBooleanOrGetInput"
              | doc "Permit changing the name and kind and number of resources defined in file."
              | optional,
            client_config
              | refs."definitions.kubernetesTypesClientConfig"
              | { _ | Dyn }
              | doc m%"
                Configuration properties of kubernetes API and
                authentication properties of Kubernetes Cloud providers.
              "%
              | optional,
            ..
          },
      "definitions.nodeTypeKubernetesResourcesResourceWithValidateStatus" =
        std.contract.Sequence
            [
              refs."definitions.nodeTypeKubernetesResourcesResourceBase",
              {
                validate_resource_status
                  | refs."definitions.cloudifyBooleanOrGetInput"
                  | doc "Set this to \"true\" if you want Cloudify to wait for a predetermined state."
                  | optional,
                ..
              }
            ],
      "definitions.nodeTypeKubernetesResourcesRoleBinding" =
        std.contract.Sequence
            [
              refs."definitions.nodeTypeKubernetesResourcesBlueprintDefinedResource",
              {
                definition
                  | refs."definitions.kubernetesTypesRoleBindingDefinitio"
                  | { _ | Dyn }
                  | doc "Definition of role binding using native Kubernetes YAML spec"
                  | optional,
                ..
              }
            ],
      "definitions.nodeTypeKubernetesResourcesRoleProperties" =
        std.contract.Sequence
            [
              refs."definitions.nodeTypeKubernetesResourcesBlueprintDefinedResource",
              {
                definition
                  | refs."definitions.kubernetesTypesRoleDefinitio"
                  | { _ | Dyn }
                  | doc "Definition of role using native Kubernetes YAML spec"
                  | optional,
                ..
              }
            ],
      "definitions.nodeTypeKubernetesResourcesSecretProperties" =
        std.contract.Sequence
            [
              refs."definitions.nodeTypeKubernetesResourcesBlueprintDefinedResource",
              {
                definitions
                  | refs."definitions.kubernetesTypesSecretDefinition"
                  | { _ | Dyn }
                  | doc "Definition of secret using native Kubernetes YAML spec"
                  | optional,
                ..
              }
            ],
      "definitions.nodeTypeKubernetesResourcesServiceAccountProperties" =
        std.contract.Sequence
            [
              refs."definitions.nodeTypeKubernetesResourcesBlueprintDefinedResource",
              {
                definitions
                  | refs."definitions.kubernetesTypesServiceAccountDefinition"
                  | { _ | Dyn }
                  | doc "Definition of service account using native Kubernetes YAML spec"
                  | optional,
                ..
              }
            ],
      "definitions.nodeTypeKubernetesResourcesServiceProperties" =
        std.contract.Sequence
            [
              refs."definitions.nodeTypeKubernetesResourcesBlueprintDefinedResource",
              {
                validate_resource_status
                  | refs."definitions.cloudifyBooleanOrGetInput"
                  | optional,
                ..
              }
            ],
      "definitions.nodeTypeKubernetesResourcesStatefulSetProperties" =
        std.contract.Sequence
            [
              refs."definitions.nodeTypeKubernetesResourcesBlueprintDefinedResource",
              {
                definition
                  | { _ | Dyn }
                  | doc "Definition of resource object using native Kubernetes YAML spec"
                  | optional,
                ..
              }
            ],
      "definitions.nodeTypeKubernetesResourcesStorageClassProperties" =
        std.contract.Sequence
            [
              refs."definitions.nodeTypeKubernetesResourcesBlueprintDefinedResource",
              {
                definition
                  | refs."definitions.kubernetesTypesStorageClassResourceDefinition"
                  | { _ | Dyn }
                  | doc "Definition of resource object using native Kubernetes YAML spec"
                  | optional,
                ..
              }
            ],
      "definitions.nodeTypeOpenstackFlavorInterfaces" =
        {
            "cloudify.interfaces.lifecycle"
              | {
                create
                  | {
                    implementation
                      | std.enum.TagOrString
                      | [|
                        '"openstack.openstack_plugin.resources.compute.flavor.create"
                      |]
                      | optional,
                    ..
                  }
                  | optional,
                delete
                  | {
                    implementation
                      | std.enum.TagOrString
                      | [|
                        '"openstack.openstack_plugin.resources.compute.flavor.delete"
                      |]
                      | optional,
                    ..
                  }
                  | optional,
                ..
              }
              | optional,
            "cloudify.interfaces.operations"
              | {
                list
                  | {
                    implementation
                      | std.enum.TagOrString
                      | [|
                        '"openstack.openstack_plugin.resources.compute.flavor.list_flavors"
                      |]
                      | optional,
                    inputs
                      | {
                        details | Bool | optional,
                        query | { _ | Dyn } | optional,
                        ..
                      }
                      | optional,
                    ..
                  }
                  | optional,
                update
                  | {
                    implementation
                      | std.enum.TagOrString
                      | [|
                        '"openstack.openstack_plugin.resources.compute.flavor.update"
                      |]
                      | optional,
                    inputs | { args | { _ | Dyn } | optional, .. } | optional,
                    ..
                  }
                  | optional,
                ..
              }
              | optional,
            ..
          },
      "definitions.nodeTypeOpenstackFlavorProperties" =
        std.contract.Sequence
            [
              refs."definitions.openstackExternalResource",
              refs."definitions.openstackCreateIfMissing",
              refs."definitions.openstackClientConfig",
              {
                extra_specs
                  | { _ | Dyn }
                  | doc m%"
                    key-value user configuration, according to:
                    https://developer.openstack.org/api-ref/compute/#create-extra-specs-for-a-flavor
                  "%
                  | optional,
                resource_config
                  | refs."definitions.openstackTypesFlavor"
                  | { _ | Dyn }
                  | doc "https://developer.openstack.org/api-ref/compute/?expanded=create-flavor-detail"
                  | optional,
                tenants
                  | Array String
                  | doc "List of tenants to add to flavor access"
                  | optional,
                ..
              }
            ],
      "definitions.nodeTypeOpenstackFloatingIPInterfaces" =
        {
            "cloudify.interfaces.lifecycle"
              | {
                create
                  | {
                    implementation
                      | std.enum.TagOrString
                      | [|
                        '"openstack.openstack_plugin.resources.network.floating_ip.create"
                      |]
                      | optional,
                    ..
                  }
                  | optional,
                delete
                  | {
                    implementation
                      | std.enum.TagOrString
                      | [|
                        '"openstack.openstack_plugin.resources.network.floating_ip.delete"
                      |]
                      | optional,
                    ..
                  }
                  | optional,
                ..
              }
              | optional,
            "cloudify.interfaces.operations"
              | {
                list
                  | {
                    implementation
                      | std.enum.TagOrString
                      | [|
                        '"openstack.openstack_plugin.resources.network.floating_ip.list_floating_ips"
                      |]
                      | optional,
                    inputs | { query | { _ | Dyn } | optional, .. } | optional,
                    ..
                  }
                  | optional,
                update
                  | {
                    implementation
                      | std.enum.TagOrString
                      | [|
                        '"openstack.openstack_plugin.resources.network.floating_ip.update"
                      |]
                      | optional,
                    inputs | { args | { _ | Dyn } | optional, .. } | optional,
                    ..
                  }
                  | optional,
                ..
              }
              | optional,
            "cloudify.interfaces.validation"
              | {
                creation
                  | {
                    implementation
                      | std.enum.TagOrString
                      | [|
                        '"openstack.openstack_plugin.resources.network.floating_ip.creation_validation"
                      |]
                      | optional,
                    ..
                  }
                  | optional,
                ..
              }
              | optional,
            ..
          },
      "definitions.nodeTypeOpenstackFloatingIPProperties" =
        std.contract.Sequence
            [
              refs."definitions.openstackExternalResource",
              refs."definitions.openstackCreateIfMissing",
              refs."definitions.openstackClientConfig",
              {
                allow_reallocation
                  | refs."definitions.cloudifyBooleanOrGetInput"
                  | doc m%"
                    (Applicable only when use_external_resource is true)
                    If true, then allow using this floating IP even if it has already been allocated to
                    another instance. If false, and the floating IP is already allocated (that is, it is
                    in 'ACTIVE' state), a recoverable error is raised.
                  "%
                  | optional,
                resource_config
                  | refs."definitions.openstackTypesFloatingIP"
                  | { _ | Dyn }
                  | doc "A dictionary that may contain these keys https://developer.openstack.org/api-ref/network/v2/#create-floating-ip."
                  | optional,
                ..
              }
            ],
      "definitions.nodeTypeOpenstackGroupInterfaces" =
        {
            "cloudify.interfaces.lifecycle"
              | {
                create
                  | {
                    implementation
                      | std.enum.TagOrString
                      | [|
                        '"openstack.openstack_plugin.resources.identity.group.create"
                      |]
                      | optional,
                    ..
                  }
                  | optional,
                delete
                  | {
                    implementation
                      | std.enum.TagOrString
                      | [|
                        '"openstack.openstack_plugin.resources.identity.group.delete"
                      |]
                      | optional,
                    ..
                  }
                  | optional,
                ..
              }
              | optional,
            "cloudify.interfaces.operations"
              | {
                list
                  | {
                    implementation
                      | std.enum.TagOrString
                      | [|
                        '"openstack.openstack_plugin.resources.identity.group.list_groups"
                      |]
                      | optional,
                    inputs | { query | { _ | Dyn } | optional, .. } | optional,
                    ..
                  }
                  | optional,
                update
                  | {
                    implementation
                      | std.enum.TagOrString
                      | [|
                        '"openstack.openstack_plugin.resources.identity.group.update"
                      |]
                      | optional,
                    inputs | { args | { _ | Dyn } | optional, .. } | optional,
                    ..
                  }
                  | optional,
                ..
              }
              | optional,
            ..
          },
      "definitions.nodeTypeOpenstackGroupProperties" =
        std.contract.Sequence
            [
              refs."definitions.openstackExternalResource",
              refs."definitions.openstackCreateIfMissing",
              refs."definitions.openstackClientConfig",
              {
                resource_config
                  | refs."definitions.openstackTypesGroup"
                  | { _ | Dyn }
                  | doc "https://docs.openstack.org/api-ref/identity/v3/?expanded=update-user.yaml-detail,create-user.yaml-detail,update-project-detail#groups"
                  | optional,
                ..
              }
            ],
      "definitions.nodeTypeOpenstackHostAggregateInterfaces" =
        {
            "cloudify.interfaces.lifecycle"
              | {
                configure
                  | {
                    implementation
                      | std.enum.TagOrString
                      | [|
                        '"openstack.openstack_plugin.resources.compute.host_aggregate.configure"
                      |]
                      | optional,
                    ..
                  }
                  | optional,
                create
                  | {
                    implementation
                      | std.enum.TagOrString
                      | [|
                        '"openstack.openstack_plugin.resources.compute.host_aggregate.create"
                      |]
                      | optional,
                    ..
                  }
                  | optional,
                delete
                  | {
                    implementation
                      | std.enum.TagOrString
                      | [|
                        '"openstack.openstack_plugin.resources.compute.host_aggregate.delete"
                      |]
                      | optional,
                    ..
                  }
                  | optional,
                ..
              }
              | optional,
            "cloudify.interfaces.operations"
              | {
                add_hosts
                  | {
                    implementation
                      | std.enum.TagOrString
                      | [|
                        '"openstack.openstack_plugin.resources.compute.host_aggregate.add_hosts"
                      |]
                      | optional,
                    inputs | { hosts | Array String | optional, .. } | optional,
                    ..
                  }
                  | optional,
                list
                  | {
                    implementation
                      | std.enum.TagOrString
                      | [|
                        '"openstack.openstack_plugin.resources.compute.host_aggregate.list_aggregates"
                      |]
                      | optional,
                    ..
                  }
                  | optional,
                remove_hosts
                  | {
                    implementation
                      | std.enum.TagOrString
                      | [|
                        '"openstack.openstack_plugin.resources.compute.host_aggregate.remove_hosts"
                      |]
                      | optional,
                    inputs | { hosts | Array String | optional, .. } | optional,
                    ..
                  }
                  | optional,
                update
                  | {
                    implementation | js2n.Never | optional,
                    inputs | { args | { _ | Dyn } | optional, .. } | optional,
                    ..
                  }
                  | optional,
                ..
              }
              | optional,
            ..
          },
      "definitions.nodeTypeOpenstackHostAggregateProperties" =
        std.contract.Sequence
            [
              refs."definitions.openstackExternalResource",
              refs."definitions.openstackCreateIfMissing",
              refs."definitions.openstackClientConfig",
              {
                hosts
                  | Array String
                  | doc "list of hosts IDs, which will be a members of host aggregate"
                  | optional,
                metadata
                  | { _ | Dyn }
                  | doc m%"
                    Metadata key and value pairs. The maximum size for each metadata key and value pair is 255 bytes
                    All keys values should be provided as string
                    Example
                    metadata:
                      ssd: 'True'
                      max_number: '1233'
                  "%
                  | optional,
                resource_config
                  | refs."definitions.openstackTypesHostAggregate"
                  | { _ | Dyn }
                  | doc "https://developer.openstack.org/api-ref/compute/?expanded=create-aggregate-detail"
                  | optional,
                ..
              }
            ],
      "definitions.nodeTypeOpenstackImageInterfaces" =
        {
            "cloudify.interfaces.lifecycle"
              | {
                create
                  | {
                    implementation
                      | std.enum.TagOrString
                      | [|
                        '"openstack.openstack_plugin.resources.compute.image.create"
                      |]
                      | optional,
                    ..
                  }
                  | optional,
                delete
                  | {
                    implementation
                      | std.enum.TagOrString
                      | [|
                        '"openstack.openstack_plugin.resources.compute.image.delete"
                      |]
                      | optional,
                    ..
                  }
                  | optional,
                start
                  | {
                    implementation
                      | std.enum.TagOrString
                      | [|
                        '"openstack.openstack_plugin.resources.compute.image.start"
                      |]
                      | optional,
                    ..
                  }
                  | optional,
                ..
              }
              | optional,
            "cloudify.interfaces.operations"
              | {
                list
                  | {
                    implementation
                      | std.enum.TagOrString
                      | [|
                        '"openstack.openstack_plugin.resources.compute.image.list_images"
                      |]
                      | optional,
                    inputs | { query | { _ | Dyn } | optional, .. } | optional,
                    ..
                  }
                  | optional,
                update
                  | {
                    implementation
                      | std.enum.TagOrString
                      | [|
                        '"openstack.openstack_plugin.resources.compute.image.update"
                      |]
                      | optional,
                    inputs | { args | { _ | Dyn } | optional, .. } | optional,
                    ..
                  }
                  | optional,
                ..
              }
              | optional,
            "cloudify.interfaces.validation"
              | {
                creation
                  | {
                    implementation
                      | std.enum.TagOrString
                      | [|
                        '"openstack.openstack_plugin.resources.compute.image.creation_validation"
                      |]
                      | optional,
                    ..
                  }
                  | optional,
                ..
              }
              | optional,
            ..
          },
      "definitions.nodeTypeOpenstackImageProperties" =
        std.contract.Sequence
            [
              refs."definitions.openstackExternalResource",
              refs."definitions.openstackCreateIfMissing",
              refs."definitions.openstackClientConfig",
              {
                image_url
                  | refs."definitions.cloudifyStringOrGetInput"
                  | doc "The openstack resource URL for the image."
                  | optional,
                resource_config
                  | refs."definitions.openstackTypesImage"
                  | { _ | Dyn }
                  | doc "https://developer.openstack.org/api-ref/image/v2/index.html?expanded=show-image-detail,create-image-detail#create-image"
                  | optional,
                ..
              }
            ],
      "definitions.nodeTypeOpenstackKeyPairInterfaces" =
        {
            "cloudify.interfaces.lifecycle"
              | {
                create
                  | {
                    implementation
                      | std.enum.TagOrString
                      | [|
                        '"openstack.openstack_plugin.resources.compute.keypair.create"
                      |]
                      | optional,
                    ..
                  }
                  | optional,
                delete
                  | {
                    implementation
                      | std.enum.TagOrString
                      | [|
                        '"openstack.openstack_plugin.resources.compute.keypair.delete"
                      |]
                      | optional,
                    ..
                  }
                  | optional,
                ..
              }
              | optional,
            "cloudify.interfaces.operations"
              | {
                list
                  | {
                    implementation
                      | std.enum.TagOrString
                      | [|
                        '"openstack.openstack_plugin.resources.compute.keypair.list_keypairs"
                      |]
                      | optional,
                    ..
                  }
                  | optional,
                ..
              }
              | optional,
            "cloudify.interfaces.validation"
              | {
                creation
                  | {
                    implementation
                      | std.enum.TagOrString
                      | [|
                        '"openstack.openstack_plugin.resources.compute.keypair.creation_validation"
                      |]
                      | optional,
                    ..
                  }
                  | optional,
                ..
              }
              | optional,
            ..
          },
      "definitions.nodeTypeOpenstackKeyPairProperties" =
        std.contract.Sequence
            [
              refs."definitions.openstackExternalResource",
              refs."definitions.openstackCreateIfMissing",
              refs."definitions.openstackClientConfig",
              {
                resource_config
                  | refs."definitions.openstackTypesKeyPair"
                  | { _ | Dyn }
                  | doc "https://developer.openstack.org/api-ref/compute/?expanded=create-or-import-keypair-detail"
                  | optional,
                ..
              }
            ],
      "definitions.nodeTypeOpenstackNetworkBaseProperties" =
        std.contract.Sequence
            [
              refs."definitions.openstackExternalResource",
              refs."definitions.openstackCreateIfMissing",
              refs."definitions.openstackClientConfig",
              { _ | Dyn }
            ],
      "definitions.nodeTypeOpenstackNetworkInterfaces" =
        {
            "cloudify.interfaces.lifecycle"
              | {
                create
                  | {
                    implementation
                      | std.enum.TagOrString
                      | [|
                        '"openstack.openstack_plugin.resources.network.network.create"
                      |]
                      | optional,
                    ..
                  }
                  | optional,
                delete
                  | {
                    implementation
                      | std.enum.TagOrString
                      | [|
                        '"openstack.openstack_plugin.resources.network.network.delete"
                      |]
                      | optional,
                    ..
                  }
                  | optional,
                ..
              }
              | optional,
            "cloudify.interfaces.operations"
              | {
                list
                  | {
                    implementation
                      | std.enum.TagOrString
                      | [|
                        '"openstack.openstack_plugin.resources.network.network.list_networks"
                      |]
                      | optional,
                    inputs | { query | { _ | Dyn } | optional, .. } | optional,
                    ..
                  }
                  | optional,
                update
                  | {
                    implementation
                      | std.enum.TagOrString
                      | [|
                        '"openstack.openstack_plugin.resources.network.network.update"
                      |]
                      | optional,
                    inputs | { args | { _ | Dyn } | optional, .. } | optional,
                    ..
                  }
                  | optional,
                ..
              }
              | optional,
            "cloudify.interfaces.validation"
              | {
                creation
                  | {
                    implementation
                      | std.enum.TagOrString
                      | [|
                        '"openstack.openstack_plugin.resources.network.network.creation_validation"
                      |]
                      | optional,
                    ..
                  }
                  | optional,
                ..
              }
              | optional,
            ..
          },
      "definitions.nodeTypeOpenstackNetworkProperties" =
        std.contract.Sequence
            [
              refs."definitions.nodeTypeOpenstackNetworkBaseProperties",
              {
                resource_config
                  | refs."definitions.openstackTypesNetwork"
                  | { _ | Dyn }
                  | doc "A dictionary that may contain these keys https://developer.openstack.org/api-ref/network/v2/#create-network."
                  | optional,
                ..
              }
            ],
      "definitions.nodeTypeOpenstackPortInterfaces" =
        {
            "cloudify.interfaces.lifecycle"
              | {
                create
                  | {
                    implementation
                      | std.enum.TagOrString
                      | [|
                        '"openstack.openstack_plugin.resources.network.port.create"
                      |]
                      | optional,
                    ..
                  }
                  | optional,
                delete
                  | {
                    implementation
                      | std.enum.TagOrString
                      | [|
                        '"openstack.openstack_plugin.resources.network.port.delete"
                      |]
                      | optional,
                    ..
                  }
                  | optional,
                ..
              }
              | optional,
            "cloudify.interfaces.operations"
              | {
                list
                  | {
                    implementation
                      | std.enum.TagOrString
                      | [|
                        '"openstack.openstack_plugin.resources.network.port.list_ports"
                      |]
                      | optional,
                    inputs | { query | { _ | Dyn } | optional, .. } | optional,
                    ..
                  }
                  | optional,
                update
                  | {
                    implementation
                      | std.enum.TagOrString
                      | [|
                        '"openstack.openstack_plugin.resources.network.port.update"
                      |]
                      | optional,
                    inputs | { args | { _ | Dyn } | optional, .. } | optional,
                    ..
                  }
                  | optional,
                ..
              }
              | optional,
            "cloudify.interfaces.validation"
              | {
                creation
                  | {
                    implementation
                      | std.enum.TagOrString
                      | [|
                        '"openstack.openstack_plugin.resources.network.port.creation_validation"
                      |]
                      | optional,
                    ..
                  }
                  | optional,
                ..
              }
              | optional,
            ..
          },
      "definitions.nodeTypeOpenstackPortProperties" =
        std.contract.Sequence
            [
              refs."definitions.openstackExternalResource",
              refs."definitions.openstackCreateIfMissing",
              refs."definitions.openstackClientConfig",
              {
                fixed_ip
                  | refs."definitions.cloudifyStringOrGetInput"
                  | doc m%"
                    may be used to request a specific fixed IP for the port.
                    If the IP is unavailable
                    (either already taken or does not belong to a subnet the port is on)
                    an error will be raised.
                  "%
                  | optional,
                resource_config
                  | refs."definitions.openstackTypesPort"
                  | { _ | Dyn }
                  | doc "A dictionary that may contain these keys https://developer.openstack.org/api-ref/network/v2/#create-port."
                  | optional,
                ..
              }
            ],
      "definitions.nodeTypeOpenstackProjectInterfaces" =
        {
            "cloudify.interfaces.lifecycle"
              | {
                create
                  | {
                    implementation
                      | std.enum.TagOrString
                      | [|
                        '"openstack.openstack_plugin.resources.identity.project.create"
                      |]
                      | optional,
                    ..
                  }
                  | optional,
                delete
                  | {
                    implementation
                      | std.enum.TagOrString
                      | [|
                        '"openstack.openstack_plugin.resources.identity.project.delete"
                      |]
                      | optional,
                    ..
                  }
                  | optional,
                start
                  | {
                    implementation
                      | std.enum.TagOrString
                      | [|
                        '"openstack.openstack_plugin.resources.identity.project.start"
                      |]
                      | optional,
                    inputs
                      | { quota_dict | { _ | Dyn } | optional, .. }
                      | optional,
                    ..
                  }
                  | optional,
                ..
              }
              | optional,
            "cloudify.interfaces.operations"
              | {
                get_quota
                  | {
                    implementation
                      | std.enum.TagOrString
                      | [|
                        '"openstack.openstack_plugin.resources.identity.project.get_project_quota"
                      |]
                      | optional,
                    ..
                  }
                  | optional,
                list
                  | {
                    implementation
                      | std.enum.TagOrString
                      | [|
                        '"openstack.openstack_plugin.resources.identity.project.list_projects"
                      |]
                      | optional,
                    inputs | { query | { _ | Dyn } | optional, .. } | optional,
                    ..
                  }
                  | optional,
                update_project
                  | {
                    implementation
                      | std.enum.TagOrString
                      | [|
                        '"openstack.openstack_plugin.resources.identity.project.update"
                      |]
                      | optional,
                    inputs | { args | { _ | Dyn } | optional, .. } | optional,
                    ..
                  }
                  | optional,
                update_quota
                  | {
                    implementation
                      | std.enum.TagOrString
                      | [|
                        '"openstack.openstack_plugin.resources.identity.project.update_project_quota"
                      |]
                      | optional,
                    inputs | { quota | { _ | Dyn } | optional, .. } | optional,
                    ..
                  }
                  | optional,
                ..
              }
              | optional,
            "cloudify.interfaces.validation"
              | {
                creation
                  | std.enum.TagOrString
                  | [|
                    '"openstack.openstack_plugin.resources.identity.project.creation_validation"
                  |]
                  | optional,
                ..
              }
              | optional,
            ..
          },
      "definitions.nodeTypeOpenstackProjectProperties" =
        std.contract.Sequence
            [
              refs."definitions.openstackExternalResource",
              refs."definitions.openstackCreateIfMissing",
              refs."definitions.openstackClientConfig",
              {
                groups
                  | Array String
                  | doc m%"
                    List of groups assigned to this project in the following format:
                      { name: string, roles: [string] }
                  "%
                  | optional,
                quota
                  | { _ | Dyn }
                  | doc m%"
                    A dictionary mapping service names to quota definitions for a project
                    e.g:
                      quota:
                        compute: <quota>
                        network: <quota>
                        volume: <quota>
                  "%
                  | optional,
                resource_config
                  | refs."definitions.openstackTypesProject"
                  | { _ | Dyn }
                  | doc "https://developer.openstack.org/api-ref/identity/v3/?expanded=update-user.yaml-detail,create-user.yaml-detail,update-project-detail#projects"
                  | optional,
                users
                  | Array String
                  | doc m%"
                    List of users assigned to this project in the following format:
                      { name: string, roles: [string] }
                  "%
                  | optional,
                ..
              }
            ],
      "definitions.nodeTypeOpenstackRBACPolicyProperties" =
        std.contract.Sequence
            [
              refs."definitions.openstackDataTypeId",
              {
                action
                  | refs."definitions.cloudifyStringOrGetInput"
                  | doc "Action for the RBAC policy which is access_as_external or access_as_shared."
                  | optional,
                object_id
                  | refs."definitions.cloudifyStringOrGetInput"
                  | doc m%"
                    The ID of the object_type resource. An object_type of
                    network returns a network ID and an object_type of qos-policy returns a QoS ID.
                  "%
                  | optional,
                object_type
                  | refs."definitions.cloudifyStringOrGetInput"
                  | doc m%"
                    The type of the object that the RBAC policy affects.
                    Types include qos-policy or network.
                  "%
                  | optional,
                target_tenant
                  | refs."definitions.cloudifyStringOrGetInput"
                  | doc "The ID of the tenant to which the RBAC policy will be enforced."
                  | optional,
                ..
              }
            ],
      "definitions.nodeTypeOpenstackRecordSetInterfaces" =
        {
            "cloudify.interfaces.lifecycle"
              | {
                create
                  | {
                    implementation
                      | std.enum.TagOrString
                      | [|
                        '"openstack.openstack_plugin.resources.dns_service.record_set.create"
                      |]
                      | optional,
                    ..
                  }
                  | optional,
                delete
                  | {
                    implementation
                      | std.enum.TagOrString
                      | [|
                        '"openstack.openstack_plugin.resources.dns_service.record_set.delete"
                      |]
                      | optional,
                    ..
                  }
                  | optional,
                ..
              }
              | optional,
            ..
          },
      "definitions.nodeTypeOpenstackRecordSetProperties" =
        std.contract.Sequence
            [
              refs."definitions.openstackClientConfig",
              {
                resource_config
                  | refs."definitions.openstackRecordSetType"
                  | { _ | Dyn }
                  | doc "https://docs.openstack.org/api-ref/dns/?expanded=create-zone-detail"
                  | optional,
                ..
              }
            ],
      "definitions.nodeTypeOpenstackRoleInterfaces" =
        {
            "cloudify.interfaces.lifecycle"
              | {
                create
                  | {
                    implementation
                      | std.enum.TagOrString
                      | [|
                        '"openstack.openstack_plugin.resources.identity.role.create"
                      |]
                      | optional,
                    ..
                  }
                  | optional,
                delete
                  | {
                    implementation
                      | std.enum.TagOrString
                      | [|
                        '"openstack.openstack_plugin.resources.identity.role.delete"
                      |]
                      | optional,
                    ..
                  }
                  | optional,
                ..
              }
              | optional,
            "cloudify.interfaces.operations"
              | {
                list
                  | {
                    implementation
                      | std.enum.TagOrString
                      | [|
                        '"openstack.openstack_plugin.resources.identity.role.list_roles"
                      |]
                      | optional,
                    inputs | { query | { _ | Dyn } | optional, .. } | optional,
                    ..
                  }
                  | optional,
                update
                  | {
                    implementation
                      | std.enum.TagOrString
                      | [|
                        '"openstack.openstack_plugin.resources.identity.role.update"
                      |]
                      | optional,
                    inputs | { args | { _ | Dyn } | optional, .. } | optional,
                    ..
                  }
                  | optional,
                ..
              }
              | optional,
            ..
          },
      "definitions.nodeTypeOpenstackRoleProperties" =
        std.contract.Sequence
            [
              refs."definitions.openstackExternalResource",
              refs."definitions.openstackCreateIfMissing",
              refs."definitions.openstackClientConfig",
              {
                resource_config
                  | refs."definitions.openstackTypesRole"
                  | { _ | Dyn }
                  | doc "https://docs.openstack.org/api-ref/identity/v3/?expanded=update-project-detail,create-group-detail#roles"
                  | optional,
                ..
              }
            ],
      "definitions.nodeTypeOpenstackRouterInterfaces" =
        {
            "cloudify.interfaces.lifecycle"
              | {
                create
                  | {
                    implementation
                      | std.enum.TagOrString
                      | [|
                        '"openstack.openstack_plugin.resources.network.router.create"
                      |]
                      | optional,
                    ..
                  }
                  | optional,
                delete
                  | {
                    implementation
                      | std.enum.TagOrString
                      | [|
                        '"openstack.openstack_plugin.resources.network.router.delete"
                      |]
                      | optional,
                    ..
                  }
                  | optional,
                start
                  | {
                    implementation
                      | std.enum.TagOrString
                      | [|
                        '"openstack.openstack_plugin.resources.network.router.start"
                      |]
                      | optional,
                    inputs | { routes | { _ | Dyn } | optional, .. } | optional,
                    ..
                  }
                  | optional,
                stop
                  | {
                    implementation
                      | std.enum.TagOrString
                      | [|
                        '"openstack.openstack_plugin.resources.network.router.stop"
                      |]
                      | optional,
                    ..
                  }
                  | optional,
                ..
              }
              | optional,
            "cloudify.interfaces.operations"
              | {
                list
                  | {
                    implementation
                      | std.enum.TagOrString
                      | [|
                        '"openstack.openstack_plugin.resources.network.router.list_routers"
                      |]
                      | optional,
                    inputs | { query | { _ | Dyn } | optional, .. } | optional,
                    ..
                  }
                  | optional,
                update
                  | {
                    implementation
                      | std.enum.TagOrString
                      | [|
                        '"openstack.openstack_plugin.resources.network.router.update"
                      |]
                      | optional,
                    inputs | { args | { _ | Dyn } | optional, .. } | optional,
                    ..
                  }
                  | optional,
                ..
              }
              | optional,
            "cloudify.interfaces.validation"
              | {
                creation
                  | {
                    implementation
                      | std.enum.TagOrString
                      | [|
                        '"openstack.openstack_plugin.resources.network.router.creation_validation"
                      |]
                      | optional,
                    ..
                  }
                  | optional,
                ..
              }
              | optional,
            ..
          },
      "definitions.nodeTypeOpenstackRouterProperties" =
        std.contract.Sequence
            [
              refs."definitions.openstackExternalResource",
              refs."definitions.openstackCreateIfMissing",
              refs."definitions.openstackClientConfig",
              {
                external_network
                  | refs."definitions.cloudifyStringOrGetInput"
                  | doc m%"
                    An external network name or ID.
                    If given, the router will use this external network as a gateway.
                  "%
                  | optional,
                resource_config
                  | refs."definitions.openstackTypesRouter"
                  | { _ | Dyn }
                  | doc "A dictionary that may contain these keys https://developer.openstack.org/api-ref/network/v2/#create-router."
                  | optional,
                ..
              }
            ],
      "definitions.nodeTypeOpenstackSecurityGroupInterfaces" =
        {
            "cloudify.interfaces.lifecycle"
              | {
                configure
                  | {
                    implementation
                      | std.enum.TagOrString
                      | [|
                        '"openstack.openstack_plugin.resources.network.security_group.configure"
                      |]
                      | optional,
                    inputs
                      | {
                        security_group_rules
                          | std.contract.any_of [ { _ | Dyn }, Array Dyn ]
                          | optional,
                        ..
                      }
                      | optional,
                    ..
                  }
                  | optional,
                create
                  | {
                    implementation
                      | std.enum.TagOrString
                      | [|
                        '"openstack.openstack_plugin.resources.network.security_group.create"
                      |]
                      | optional,
                    ..
                  }
                  | optional,
                delete
                  | {
                    implementation
                      | std.enum.TagOrString
                      | [|
                        '"openstack.openstack_plugin.resources.network.security_group.delete"
                      |]
                      | optional,
                    ..
                  }
                  | optional,
                ..
              }
              | optional,
            "cloudify.interfaces.operations"
              | {
                list
                  | {
                    implementation
                      | std.enum.TagOrString
                      | [|
                        '"openstack.openstack_plugin.resources.network.security_group.list_security_groups"
                      |]
                      | optional,
                    inputs | { query | { _ | Dyn } | optional, .. } | optional,
                    ..
                  }
                  | optional,
                update
                  | {
                    implementation
                      | std.enum.TagOrString
                      | [|
                        '"openstack.openstack_plugin.resources.network.security_group.update"
                      |]
                      | optional,
                    inputs | { args | { _ | Dyn } | optional, .. } | optional,
                    ..
                  }
                  | optional,
                ..
              }
              | optional,
            "cloudify.interfaces.validation"
              | {
                creation
                  | {
                    implementation
                      | std.enum.TagOrString
                      | [|
                        '"openstack.openstack_plugin.resources.network.security_group.creation_validation"
                      |]
                      | optional,
                    ..
                  }
                  | optional,
                ..
              }
              | optional,
            ..
          },
      "definitions.nodeTypeOpenstackSecurityGroupProperties" =
        std.contract.Sequence
            [
              refs."definitions.openstackExternalResource",
              refs."definitions.openstackCreateIfMissing",
              refs."definitions.openstackClientConfig",
              {
                disable_default_egress_rules
                  | refs."definitions.cloudifyBooleanOrGetInput"
                  | doc m%"
                    a flag for removing the default rules. If not set to `true`,
                    these rules will remain, and exist alongside any additional rules passed using the `rules` property.
                  "%
                  | optional,
                resource_config
                  | refs."definitions.openstackTypesSecurityGroup"
                  | { _ | Dyn }
                  | doc "A dictionary that may contain these keys https://developer.openstack.org/api-ref/network/v2/#create-security-group."
                  | optional,
                security_group_rules
                  | Array String
                  | doc "List of security groups rule."
                  | optional,
                ..
              }
            ],
      "definitions.nodeTypeOpenstackSecurityGroupRuleInterfaces" =
        std.contract.Sequence
            [
              refs."definitions.nodeTypeOpenstackSecurityGroupInterfaces",
              {
                "cloudify.interfaces.lifecycle"
                  | {
                    create
                      | {
                        implementation
                          | std.enum.TagOrString
                          | [|
                            '"openstack.openstack_plugin.resources.network.security_group_rule.create"
                          |]
                          | optional,
                        ..
                      }
                      | optional,
                    delete
                      | {
                        implementation
                          | std.enum.TagOrString
                          | [|
                            '"openstack.openstack_plugin.resources.network.security_group_rule.delete"
                          |]
                          | optional,
                        ..
                      }
                      | optional,
                    ..
                  }
                  | optional,
                "cloudify.interfaces.operations"
                  | {
                    list
                      | {
                        implementation
                          | std.enum.TagOrString
                          | [|
                            '"openstack.openstack_plugin.resources.network.security_group_rule.list_security_group_rules"
                          |]
                          | optional,
                        inputs
                          | { query | { _ | Dyn } | optional, .. }
                          | optional,
                        ..
                      }
                      | optional,
                    ..
                  }
                  | optional,
                "cloudify.interfaces.validation"
                  | {
                    creation
                      | {
                        implementation
                          | std.enum.TagOrString
                          | [|
                            '"openstack.openstack_plugin.resources.network.security_group_rule.creation_validation"
                          |]
                          | optional,
                        ..
                      }
                      | optional,
                    ..
                  }
                  | optional,
                ..
              }
            ],
      "definitions.nodeTypeOpenstackSecurityGroupRuleProperties" =
        std.contract.Sequence
            [
              refs."definitions.nodeTypeOpenstackSecurityGroupProperties",
              refs."definitions.openstackExternalResource",
              refs."definitions.openstackCreateIfMissing",
              refs."definitions.openstackClientConfig",
              {
                resource_config
                  | refs."definitions.openstackTypesSecurityGroupRule"
                  | { _ | Dyn }
                  | doc "A dictionary that may contain these keys https://developer.openstack.org/api-ref/network/v2/#create-security-group-rule"
                  | optional,
                ..
              }
            ],
      "definitions.nodeTypeOpenstackServerProperties" =
        std.contract.Sequence
            [
              refs."definitions.openstackDataTypeKwargs",
              refs."definitions.openstackDataTypeName",
              refs."definitions.openstackDataTypeId",
              refs."definitions.openstackDataTypeDescription",
              {
                availability_zone
                  | refs."definitions.cloudifyStringOrGetInput"
                  | doc m%"
                    The availability zone from which to launch the server.
                    When you provision resources, you specify from which availability
                    zone you want your instance to be built. Typically,
                    an admin user will use availability zones to arrange
                    OpenStack compute hosts into logical groups.
                    An availability zone provides a form of physical isolation
                    and redundancy from other availability zones.
                    For instance, if some racks in your data center are
                    on a separate power source, you can put servers in those racks
                    in their own availability zone. Availability zones can
                    also help separate different classes of hardware.
                    By segregating resources into availability zones,
                    you can ensure that your application resources are spread across
                    disparate machines to achieve high availability
                    in the event of hardware or other failure.
                    You can list the available availability zones
                    by calling the os-availability-zone API,
                    but you should avoid using the default availability zone when
                    booting the instance. In general,
                    the default availability zone is named nova.
                    This AZ is only shown when listing the availability zones as an admin
                  "%
                  | optional,
                flavor_id
                  | refs."definitions.cloudifyStringOrGetInput"
                  | doc m%"
                    The flavor reference, as an ID (including a UUID) or
                    full URL, for the flavor for your server instance.
                  "%
                  | optional,
                image_id
                  | refs."definitions.cloudifyStringOrGetInput"
                  | doc m%"
                    The UUID of the image to use for your server instance.
                    This is not required in case of boot from volume.
                    In all other cases it is required
                    and must be a valid UUID otherwise API will return 400
                  "%
                  | optional,
                key_name
                  | refs."definitions.cloudifyStringOrGetInput"
                  | doc "Key pair name."
                  | optional,
                metadata
                  | { _ | Dyn }
                  | doc m%"
                    Metadata key and value pairs.
                    The maximum size of the metadata key and value is 255 bytes each.
                  "%
                  | optional,
                networks
                  | Array String
                  | doc m%"
                    A list of network object.
                    Required parameter when there are multiple networks
                    defined for the tenant. When you do not specify the networks parameter,
                    the server attaches to the only network created for the current tenant.
                  "%
                  | optional,
                security_groups
                  | Array String
                  | doc m%"
                    One or more security groups.
                    Specify the name of the security group in the name attribute.
                    If you omit this attribute, the API creates the server
                    in the default security group. Requested security groups are not
                    applied to pre-existing ports
                  "%
                  | optional,
                user_data
                  | refs."definitions.cloudifyStringOrGetInput"
                  | doc m%"
                    Configuration information or scripts to use upon launch.
                    Must be Base64 encoded. Restricted to 65535 bytes.
                  "%
                  | optional,
                ..
              }
            ],
      "definitions.nodeTypeOpenstackSubnetInterfaces" =
        {
            "cloudify.interfaces.lifecycle"
              | {
                create
                  | {
                    implementation
                      | std.enum.TagOrString
                      | [|
                        '"openstack.openstack_plugin.resources.network.subnet.create"
                      |]
                      | optional,
                    ..
                  }
                  | optional,
                delete
                  | {
                    implementation
                      | std.enum.TagOrString
                      | [|
                        '"openstack.openstack_plugin.resources.network.subnet.delete"
                      |]
                      | optional,
                    ..
                  }
                  | optional,
                ..
              }
              | optional,
            "cloudify.interfaces.operations"
              | {
                list
                  | {
                    implementation
                      | std.enum.TagOrString
                      | [|
                        '"openstack.openstack_plugin.resources.network.subnet.list_subnets"
                      |]
                      | optional,
                    inputs | { query | { _ | Dyn } | optional, .. } | optional,
                    ..
                  }
                  | optional,
                update
                  | {
                    implementation
                      | std.enum.TagOrString
                      | [|
                        '"openstack.openstack_plugin.resources.network.subnet.update"
                      |]
                      | optional,
                    inputs | { args | { _ | Dyn } | optional, .. } | optional,
                    ..
                  }
                  | optional,
                ..
              }
              | optional,
            "cloudify.interfaces.validation"
              | {
                creation
                  | {
                    implementation
                      | std.enum.TagOrString
                      | [|
                        '"openstack.openstack_plugin.resources.network.subnet.creation_validation"
                      |]
                      | optional,
                    inputs | { args | { _ | Dyn } | optional, .. } | optional,
                    ..
                  }
                  | optional,
                ..
              }
              | optional,
            ..
          },
      "definitions.nodeTypeOpenstackSubnetProperties" =
        std.contract.Sequence
            [
              refs."definitions.nodeTypeOpenstackNetworkBaseProperties",
              {
                resource_config
                  | refs."definitions.openstackTypesSubnet"
                  | { _ | Dyn }
                  | doc "A dictionary that may contain these keys https://developer.openstack.org/api-ref/network/v2/#create-subnet. This is not a list of cloudify."
                  | optional,
                ..
              }
            ],
      "definitions.nodeTypeOpenstackUserInterfaces" =
        {
            "cloudify.interfaces.lifecycle"
              | {
                create
                  | {
                    implementation
                      | std.enum.TagOrString
                      | [|
                        '"openstack.openstack_plugin.resources.identity.user.create"
                      |]
                      | optional,
                    ..
                  }
                  | optional,
                delete
                  | {
                    implementation
                      | std.enum.TagOrString
                      | [|
                        '"openstack.openstack_plugin.resources.identity.user.delete"
                      |]
                      | optional,
                    ..
                  }
                  | optional,
                ..
              }
              | optional,
            "cloudify.interfaces.operations"
              | {
                list
                  | {
                    implementation
                      | std.enum.TagOrString
                      | [|
                        '"openstack.openstack_plugin.resources.identity.user.list_users"
                      |]
                      | optional,
                    inputs | { query | { _ | Dyn } | optional, .. } | optional,
                    ..
                  }
                  | optional,
                update
                  | {
                    implementation
                      | std.enum.TagOrString
                      | [|
                        '"openstack.openstack_plugin.resources.identity.user.update"
                      |]
                      | optional,
                    inputs | { args | { _ | Dyn } | optional, .. } | optional,
                    ..
                  }
                  | optional,
                ..
              }
              | optional,
            ..
          },
      "definitions.nodeTypeOpenstackUserProperties" =
        std.contract.Sequence
            [
              refs."definitions.openstackExternalResource",
              refs."definitions.openstackCreateIfMissing",
              refs."definitions.openstackClientConfig",
              {
                resource_config
                  | refs."definitions.openstackTypesUser"
                  | { _ | Dyn }
                  | doc "https://developer.openstack.org/api-ref/identity/v3/?expanded=update-user.yaml-detail,create-user.yaml-detail,update-project-detail#users"
                  | optional,
                ..
              }
            ],
      "definitions.nodeTypeOpenstackVolumeInterfaces" =
        {
            "cloudify.interfaces.lifecycle"
              | {
                create
                  | {
                    implementation
                      | std.enum.TagOrString
                      | [|
                        '"openstack.openstack_plugin.resources.volume.volume.create"
                      |]
                      | optional,
                    inputs | { args | { _ | Dyn } | optional, .. } | optional,
                    ..
                  }
                  | optional,
                delete
                  | {
                    implementation
                      | std.enum.TagOrString
                      | [|
                        '"openstack.openstack_plugin.resources.volume.volume.delete"
                      |]
                      | optional,
                    ..
                  }
                  | optional,
                start
                  | {
                    implementation
                      | std.enum.TagOrString
                      | [|
                        '"openstack.openstack_plugin.resources.volume.volume.start"
                      |]
                      | optional,
                    inputs | { _ | Dyn } | optional,
                    ..
                  }
                  | optional,
                ..
              }
              | optional,
            "cloudify.interfaces.operations"
              | {
                list
                  | {
                    implementation
                      | std.enum.TagOrString
                      | [|
                        '"openstack.openstack_plugin.resources.volume.volume.list_volumes"
                      |]
                      | optional,
                    inputs | { query | { _ | Dyn } | optional, .. } | optional,
                    ..
                  }
                  | optional,
                ..
              }
              | optional,
            "cloudify.interfaces.snapshot"
              | {
                apply
                  | {
                    implementation
                      | std.enum.TagOrString
                      | [|
                        '"openstack.openstack_plugin.resources.volume.volume.snapshot_apply"
                      |]
                      | optional,
                    inputs | { _ | Dyn } | optional,
                    ..
                  }
                  | optional,
                create
                  | {
                    implementation
                      | std.enum.TagOrString
                      | [|
                        '"openstack.openstack_plugin.resources.volume.volume.snapshot_create"
                      |]
                      | optional,
                    inputs | { _ | Dyn } | optional,
                    ..
                  }
                  | optional,
                delete
                  | {
                    implementation
                      | std.enum.TagOrString
                      | [|
                        '"openstack.openstack_plugin.resources.volume.volume.snapshot_delete"
                      |]
                      | optional,
                    inputs | { _ | Dyn } | optional,
                    ..
                  }
                  | optional,
                ..
              }
              | optional,
            "cloudify.interfaces.validation"
              | {
                creation
                  | {
                    implementation
                      | std.enum.TagOrString
                      | [|
                        '"openstack.openstack_plugin.resources.volume.volume.creation_validation"
                      |]
                      | optional,
                    ..
                  }
                  | optional,
                ..
              }
              | optional,
            ..
          },
      "definitions.nodeTypeOpenstackVolumeProperties" =
        std.contract.Sequence
            [
              refs."definitions.openstackExternalResource",
              refs."definitions.openstackCreateIfMissing",
              refs."definitions.openstackClientConfig",
              {
                device_name
                  | refs."definitions.cloudifyStringOrGetInput"
                  | doc m%"
                    The device name this volume will be attached to.
                    Default value is *auto*,
                    which means openstack will auto-assign a device.
                    Note that if you do explicitly set a value,
                    this value may not be the actual device name assigned.
                    Sometimes the device requested will not be available and openstack will assign it to a different device,n	his is why we recommend using *auto*.
                  "%
                  | optional,
                resource_config
                  | refs."definitions.openstackTypesVolume"
                  | { _ | Dyn }
                  | doc "https://developer.openstack.org/api-ref/block-storage/v2/index.html?expanded=create-volume-detail#volumes-volumes"
                  | optional,
                ..
              }
            ],
      "definitions.nodeTypeOpenstackVolumeTypeInterfaces" =
        {
            "cloudify.interfaces.lifecycle"
              | {
                create
                  | {
                    implementation
                      | std.enum.TagOrString
                      | [|
                        '"openstack.openstack_plugin.resources.volume.volume_type.create"
                      |]
                      | optional,
                    ..
                  }
                  | optional,
                delete
                  | {
                    implementation
                      | std.enum.TagOrString
                      | [|
                        '"openstack.openstack_plugin.resources.volume.volume_type.delete"
                      |]
                      | optional,
                    ..
                  }
                  | optional,
                ..
              }
              | optional,
            ..
          },
      "definitions.nodeTypeOpenstackVolumeTypeProperties" =
        std.contract.Sequence
            [
              refs."definitions.openstackExternalResource",
              refs."definitions.openstackCreateIfMissing",
              refs."definitions.openstackClientConfig",
              {
                resource_config
                  | refs."definitions.openstackTypesVolumeType"
                  | { _ | Dyn }
                  | doc "https://developer.openstack.org/api-ref/block-storage/v3/index.html?expanded=create-a-volume-type-detail#volume-types-types"
                  | optional,
                ..
              }
            ],
      "definitions.nodeTypeOpenstackWindowsServerProperties" =
        std.contract.Sequence
            [
              refs."definitions.nodeTypeOpenstackServerProperties",
              {
                agent_config
                  | refs."definitions.cloudifyDataTypesAgentConfig"
                  | { _ | Dyn }
                  | doc "updates the defaults for the agent_config for Windows)"
                  | optional,
                os_family
                  | refs."definitions.cloudifyStringOrGetInput"
                  | doc "updates the os_family default as a convenience"
                  | optional,
                ..
              }
            ],
      "definitions.nodeTypeOpenstackZoneInterfaces" =
        {
            "cloudify.interfaces.lifecycle"
              | {
                create
                  | {
                    implementation
                      | std.enum.TagOrString
                      | [|
                        '"openstack.openstack_plugin.resources.dns_service.zone.create"
                      |]
                      | optional,
                    ..
                  }
                  | optional,
                delete
                  | {
                    implementation
                      | std.enum.TagOrString
                      | [|
                        '"openstack.openstack_plugin.resources.dns_service.zone.delete"
                      |]
                      | optional,
                    ..
                  }
                  | optional,
                ..
              }
              | optional,
            ..
          },
      "definitions.nodeTypeOpenstackZoneProperties" =
        std.contract.Sequence
            [
              refs."definitions.openstackClientConfig",
              {
                resource_config
                  | refs."definitions.openstackTypesZoneType"
                  | { _ | Dyn }
                  | doc "https://docs.openstack.org/api-ref/dns/?expanded=create-zone-detail"
                  | optional,
                ..
              }
            ],
      "definitions.nodeTypeTerraformDirectoryConfig" =
        {
            executable_path
              | refs."definitions.cloudifyStringOrGetInput"
              | doc "The path to the terraform binary executable."
              | optional,
            plugins_dir
              | refs."definitions.cloudifyStringOrGetInput"
              | doc m%"
                Location where Terraform plugins are located. If a value is provided, then
                the Terraform plugin uses '--plugin-dir' with that value, ensuring that
                no plugins are downloaded on-the-fly, for increased stability.
                If a value is not provided, plugins will be downloaded on-the-fly. This is
                not recommended in production environments.
              "%
              | optional,
            storage_path
              | refs."definitions.cloudifyStringOrGetInput"
              | doc m%"
                Directory to store downloaded Terraform templates. The directory must
                either already exist and be writable by 'cfyuser', or alternatively
                be create-able by 'cfyuser'.
                The default is an empty string, which prompts the plugin to use the OS
                temporary directory.
              "%
              | optional,
            ..
          },
      "definitions.nodeTypeTerraformInstallConfig" =
        {
            installation_source
              | refs."definitions.cloudifyStringOrGetInput"
              | doc "Location to download the Terraform installation from. Ignored if 'use_existing' is true."
              | optional,
            plugins
              | Array String
              | doc "List of plugins to download and install."
              | optional,
            use_existing_resource
              | refs."definitions.cloudifyBooleanOrGetInput"
              | doc "If true, use an existing Terraform installation rather than installing it",
            ..
          },
      "definitions.nodeTypeTerraformInterfaces" =
        {
            "cloudify.interfaces.lifecycle"
              | {
                create
                  | {
                    implementation
                      | std.enum.TagOrString
                      | [| '"tf.cloudify_tf.tasks.install" |]
                      | optional,
                    ..
                  }
                  | optional,
                delete
                  | {
                    implementation
                      | std.enum.TagOrString
                      | [| '"tf.cloudify_tf.tasks.uninstall" |]
                      | optional,
                    ..
                  }
                  | optional,
                ..
              }
              | optional,
            ..
          },
      "definitions.nodeTypeTerraformModuleInterfaces" =
        {
            "cloudify.interfaces.lifecycle"
              | {
                delete
                  | {
                    implementation
                      | std.enum.TagOrString
                      | [| '"tf.cloudify_tf.tasks.destroy" |]
                      | optional,
                    ..
                  }
                  | optional,
                start
                  | {
                    implementation
                      | std.enum.TagOrString
                      | [| '"tf.cloudify_tf.tasks.apply" |]
                      | optional,
                    ..
                  }
                  | optional,
                ..
              }
              | optional,
            terraform
              | {
                refresh
                  | {
                    implementation
                      | std.enum.TagOrString
                      | [| '"tf.cloudify_tf.tasks.state_pull" |]
                      | optional,
                    ..
                  }
                  | optional,
                reload
                  | {
                    implementation
                      | std.enum.TagOrString
                      | [| '"tf.cloudify_tf.tasks.reload_template" |]
                      | optional,
                    inputs
                      | {
                        destroy_previous
                          | Bool
                          | doc m%"
                            If true, then the plugin destroys the existing Terraform
                            topology before applying the new one.
                          "%
                          | optional,
                        source
                          | String
                          | doc m%"
                            URL or path to a ZIP/tar.gz file or a Git repository to obtain
                            new module source from. If omitted, then the module is reloaded
                            from its last location.
                          "%
                          | optional,
                        ..
                      }
                      | optional,
                    ..
                  }
                  | optional,
                ..
              }
              | optional,
            ..
          },
      "definitions.nodeTypeTerraformModuleProperties" =
        {
            resource_config
              | refs."definitions.terraformTypesRootModule"
              | { _ | Dyn }
              | optional,
            ..
          },
      "definitions.nodeTypeTerraformProperties" =
        std.contract.Sequence
            [
              refs."definitions.terraformConfig",
              {
                resource_config
                  | refs."definitions.nodeTypeTerraformInstallConfig"
                  | { _ | Dyn }
                  | optional,
                ..
              }
            ],
      "definitions.nodeTypes" =
        js2n.record.Record
            {
              additional = 'Some Dyn,
              patterns =
                {
                    "" =
                      std.contract.Sequence
                          [ refs."definitions.nodeType", { _ | Dyn } ],
                  },
              properties = {},
              required = {},
            },
      "definitions.openstackClientConfig" =
        {
            client_config
              | refs."definitions.openstackTypeClientConfig"
              | { _ | Dyn }
              | doc "Your OpenStack client configuration."
              | optional,
            ..
          },
      "definitions.openstackCreateIfMissing" =
        {
            create_if_missing
              | refs."definitions.cloudifyIntegerOrGetInput"
              | doc "If use_external_resource is ``true`` and the resource is missing,create it instead of failing."
              | optional,
            ..
          },
      "definitions.openstackDataTypeDescription" =
        {
            description
              | refs."definitions.cloudifyStringOrGetInput"
              | doc "Resource description."
              | optional,
            ..
          },
      "definitions.openstackDataTypeId" =
        {
            id
              | refs."definitions.cloudifyStringOrGetInput"
              | doc "Resource id"
              | optional,
            ..
          },
      "definitions.openstackDataTypeKwargs" =
        {
            "kwargs:"
              | { _ | Dyn }
              | doc "A dictionary of keys and values that is not validated but will override other values in the resource config."
              | optional,
            ..
          },
      "definitions.openstackDataTypeName" =
        {
            name
              | refs."definitions.cloudifyStringOrGetInput"
              | doc "Resource name."
              | optional,
            ..
          },
      "definitions.openstackExternalResource" =
        {
            use_external_resource
              | refs."definitions.cloudifyIntegerOrGetInput"
              | doc "Indicate whether the resource exists or if Cloudify should create the resource, true if you are bringing an existing resource, false if you want cloudify to create it."
              | optional,
            ..
          },
      "definitions.openstackRecordSetType" =
        std.contract.Sequence
            [
              refs."definitions.openstackDataTypeKwargs",
              refs."definitions.openstackDataTypeName",
              refs."definitions.openstackDataTypeDescription",
              {
                records
                  | Array String
                  | doc m%"
                    A list of data for this recordset.
                    Each item will be a separate record in Designate
                    These items should conform to the DNS spec for
                    the record type - e.g. A records must be IPv4 addresses,
                    CNAME records must be a hostname.
                  "%,
                ttl
                  | refs."definitions.cloudifyIntegerOrGetInput"
                  | doc "TTL (Time to Live) for the recordset."
                  | optional,
                type
                  | refs."definitions.cloudifyStringOrGetInput"
                  | doc "They RRTYPE of the recordset."
                  | optional,
                zone_id
                  | refs."definitions.cloudifyStringOrGetInput"
                  | doc "ID for the zone",
                ..
              }
            ],
      "definitions.openstackTypeClientConfig" =
        {
            auth_url
              | refs."definitions.cloudifyStringOrGetInput"
              | doc "Your OpenStack Client Authorization URL."
              | optional,
            ca_cert
              | refs."definitions.cloudifyStringOrGetInput"
              | doc "Path to CA certificate to validate OpenStack's endpoint with."
              | optional,
            insecure
              | refs."definitions.cloudifyIntegerOrGetInput"
              | doc "If true, SSL validation is skipped."
              | optional,
            kwargs
              | { _ | Dyn }
              | doc m%"
                A dictionary of keys and values that is not validated
                but will override other values in the client config.
              "%
              | optional,
            logging
              | refs."definitions.openstackTypesLogging"
              | doc "Logging configuration."
              | optional,
            password
              | refs."definitions.cloudifyStringOrGetInput"
              | doc "Your OpenStack password."
              | optional,
            project_domain_id
              | refs."definitions.cloudifyStringOrGetInput"
              | doc "The Project domain id"
              | optional,
            project_domain_name
              | refs."definitions.cloudifyStringOrGetInput"
              | doc "Project domain name to operate on."
              | optional,
            project_name
              | refs."definitions.cloudifyStringOrGetInput"
              | doc "The name of your OpenStack project."
              | optional,
            region_name
              | refs."definitions.cloudifyStringOrGetInput"
              | doc "The region where you want this particular resource to be created."
              | optional,
            tenant_name
              | refs."definitions.cloudifyStringOrGetInput"
              | doc "The name of your OpenStack tenant."
              | optional,
            user_domain_id
              | refs."definitions.cloudifyStringOrGetInput"
              | doc "The user domain id"
              | optional,
            user_domain_name
              | refs."definitions.cloudifyStringOrGetInput"
              | doc "Domain name to operate on."
              | optional,
            username
              | refs."definitions.cloudifyStringOrGetInput"
              | doc "Your OpenStack username."
              | optional,
            ..
          },
      "definitions.openstackTypesFlavor" =
        std.contract.Sequence
            [
              refs."definitions.openstackDataTypeKwargs",
              refs."definitions.openstackDataTypeName",
              refs."definitions.openstackDataTypeId",
              {
                disk
                  | refs."definitions.cloudifyIntegerOrGetInput"
                  | doc m%"
                    The size of the root disk that will be created in GiB.
                    If 0 the root disk will be set to exactly the size of the image used
                    to deploy the instance. However, in this case filter scheduler cannot
                    select the compute host based on the virtual image size.
                    Therefore, 0 should only be used for volume booted instances or for testing purposes.
                  "%
                  | optional,
                ram
                  | refs."definitions.cloudifyIntegerOrGetInput"
                  | doc "The amount of RAM a flavor has, in MiB"
                  | optional,
                vcpus
                  | refs."definitions.cloudifyIntegerOrGetInput"
                  | doc "The number of virtual CPUs that will be allocated to the server."
                  | optional,
                ..
              }
            ],
      "definitions.openstackTypesFloatingIP" =
        std.contract.Sequence
            [
              refs."definitions.openstackDataTypeKwargs",
              refs."definitions.openstackDataTypeName",
              refs."definitions.openstackDataTypeId",
              {
                dns_domain
                  | refs."definitions.cloudifyStringOrGetInput"
                  | doc "A valid DNS domain."
                  | optional,
                dns_name
                  | refs."definitions.cloudifyStringOrGetInput"
                  | doc "A valid DNS name."
                  | optional,
                fixed_ip_address
                  | refs."definitions.cloudifyStringOrGetInput"
                  | doc "The fixed IP address that is associated with the floating IP. If an internal port has multiple associated IP addresses, the service chooses the first IP address unless you explicitly define a fixed IP address in the fixed_ip_address parameter."
                  | optional,
                floating_ip_address
                  | refs."definitions.cloudifyStringOrGetInput"
                  | doc "The floating IP address."
                  | optional,
                floating_network_id
                  | refs."definitions.cloudifyStringOrGetInput"
                  | doc "The ID of the network associated with the floating IP."
                  | optional,
                floating_network_name
                  | refs."definitions.cloudifyStringOrGetInput"
                  | doc "The Name of the network associated with the floating IP."
                  | optional,
                port_id
                  | refs."definitions.cloudifyStringOrGetInput"
                  | doc "The ID of a port associated with the floating IP. To associate the floating IP with a fixed IP at creation time, you must specify the identifier of the internal port."
                  | optional,
                subnet_id
                  | refs."definitions.cloudifyStringOrGetInput"
                  | doc "The subnet ID on which you want to create the floating IP."
                  | optional,
                ..
              }
            ],
      "definitions.openstackTypesGroup" =
        std.contract.Sequence
            [
              refs."definitions.openstackDataTypeKwargs",
              refs."definitions.openstackDataTypeName",
              refs."definitions.openstackDataTypeId",
              refs."definitions.openstackDataTypeDescription",
              {
                domain_id
                  | refs."definitions.cloudifyStringOrGetInput"
                  | doc m%"
                    The ID of the domain of the group. If the domain ID is not provided
                    in the request, the Identity service will attempt to pull the
                    domain ID from the token used in the request.Note that this requires the use of a domain-scoped token.
                  "%
                  | optional,
                ..
              }
            ],
      "definitions.openstackTypesHostAggregate" =
        std.contract.Sequence
            [
              refs."definitions.openstackDataTypeName",
              refs."definitions.openstackDataTypeId",
              {
                availability_zone
                  | refs."definitions.cloudifyStringOrGetInput"
                  | doc "The name of the host aggregate."
                  | optional,
                ..
              }
            ],
      "definitions.openstackTypesImage" =
        std.contract.Sequence
            [
              refs."definitions.openstackDataTypeKwargs",
              refs."definitions.openstackDataTypeName",
              refs."definitions.openstackDataTypeId",
              {
                container_format
                  | refs."definitions.cloudifyStringOrGetInput"
                  | doc "Format of the image container."
                  | optional,
                disk_format
                  | refs."definitions.cloudifyStringOrGetInput"
                  | doc "The format of the disk."
                  | optional,
                tags
                  | Array String
                  | doc m%"
                    List of tags for this image. Each tag is a string of at most 255 chars.
                    The maximum number of tags allowed on an image is set by the operator.
                  "%
                  | optional,
                ..
              }
            ],
      "definitions.openstackTypesKeyPair" =
        std.contract.Sequence
            [
              refs."definitions.openstackDataTypeKwargs",
              refs."definitions.openstackDataTypeName",
              refs."definitions.openstackDataTypeId",
              {
                public_key
                  | refs."definitions.cloudifyStringOrGetInput"
                  | doc m%"
                    The public ssh key to import. If you omit this value,
                    a keypair is generated for you
                  "%
                  | optional,
                ..
              }
            ],
      "definitions.openstackTypesLogging" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                openstack
                  | refs."definitions.cloudifyStringOrGetInput"
                  | doc "Default logging level for openstack component."
                  | optional,
                ..
              },
              Array Dyn
            ],
      "definitions.openstackTypesNetwork" =
        std.contract.Sequence
            [
              refs."definitions.openstackDataTypeKwargs",
              refs."definitions.openstackDataTypeName",
              refs."definitions.openstackDataTypeId",
              {
                admin_state_up
                  | refs."definitions.cloudifyBooleanOrGetInput"
                  | doc "The administrative state of the network, which is up (true) or down (false)."
                  | optional,
                ..
              }
            ],
      "definitions.openstackTypesPort" =
        std.contract.Sequence
            [
              refs."definitions.openstackDataTypeKwargs",
              refs."definitions.openstackDataTypeName",
              refs."definitions.openstackDataTypeId",
              {
                allowed_address_pairs
                  | Array String
                  | doc "A set of zero or more allowed address pair objects each where address pair object contains an ip_address and mac_address. While the ip_address is required, the mac_address will be taken from the port if not specified. The value of ip_address can be an IP Address or a CIDR (if supported by the underlying extension plugin). A server connected to the port can send a packet with source address which matches one of the specified allowed address pairs."
                  | optional,
                device_id
                  | refs."definitions.cloudifyStringOrGetInput"
                  | doc "The ID of the device that uses this port. For example, a server instance or a logical router."
                  | optional,
                device_owner
                  | refs."definitions.cloudifyStringOrGetInput"
                  | doc "The entity type that uses this port. For example, compute:nova (server instance), network:dhcp (DHCP agent) or network:router_interface (router interface)."
                  | optional,
                fixed_ips
                  | Array String
                  | doc m%"
                    list.
                    The IP addresses for the port. If you would like to assign multiple IP addresses for the port, specify multiple entries in this field. Each entry consists of IP address (ip_address) and the subnet ID from which the IP address is assigned (subnet_id).
                    - If you specify both a subnet ID and an IP address, OpenStack Networking tries to allocate the IP address on that subnet to the port.
                    - If you specify only a subnet ID, OpenStack Networking allocates an available IP from that subnet to the port.
                    - If you specify only an IP address, OpenStack Networking tries to allocate the IP address if the address is a valid IP for any of the subnets on the specified network.
                  "%
                  | optional,
                network_id
                  | refs."definitions.cloudifyStringOrGetInput"
                  | doc "The ID of the network to which the subnet belongs."
                  | optional,
                security_groups
                  | Array String
                  | doc "list. The IDs of security groups applied to the port."
                  | optional,
                ..
              }
            ],
      "definitions.openstackTypesProject" =
        std.contract.Sequence
            [
              refs."definitions.openstackDataTypeKwargs",
              refs."definitions.openstackDataTypeName",
              refs."definitions.openstackDataTypeId",
              refs."definitions.openstackDataTypeDescription",
              {
                domain_id
                  | refs."definitions.cloudifyStringOrGetInput"
                  | doc m%"
                    The ID of the domain for the project.
                    For projects acting as a domain, the domain_id must not be specified, it will be generated by the Identity service implementation.
                  "%
                  | optional,
                is_domain
                  | refs."definitions.cloudifyBooleanOrGetInput"
                  | doc m%"
                    Indicates whether the project also acts as a domain.
                    If set to true, this project acts as both a project and domain.
                  "%
                  | optional,
                parent_id
                  | refs."definitions.cloudifyStringOrGetInput"
                  | doc "The ID of the parent of the project.."
                  | optional,
                tags
                  | { _ | Dyn }
                  | doc "A list of simple strings assigned to a project. Tags can be used to classify projects into groups."
                  | optional,
                ..
              }
            ],
      "definitions.openstackTypesRole" =
        std.contract.Sequence
            [
              refs."definitions.openstackDataTypeKwargs",
              refs."definitions.openstackDataTypeName",
              refs."definitions.openstackDataTypeId",
              refs."definitions.openstackDataTypeDescription",
              {
                domain_id
                  | refs."definitions.cloudifyStringOrGetInput"
                  | doc m%"
                    The ID of the domain of the role. If the domain ID is not provided
                    in the request, the Identity service will attempt to pull the
                    domain ID from the token used in the request.Note that this requires the use of a domain-scoped token.
                  "%
                  | optional,
                ..
              }
            ],
      "definitions.openstackTypesRouter" =
        std.contract.Sequence
            [
              refs."definitions.openstackDataTypeKwargs",
              refs."definitions.openstackDataTypeName",
              refs."definitions.openstackDataTypeId",
              { _ | Dyn }
            ],
      "definitions.openstackTypesSecurityGroup" =
        std.contract.Sequence
            [
              refs."definitions.openstackDataTypeKwargs",
              refs."definitions.openstackDataTypeName",
              refs."definitions.openstackDataTypeId",
              refs."definitions.openstackDataTypeDescription",
              { _ | Dyn }
            ],
      "definitions.openstackTypesSecurityGroupRule" =
        std.contract.Sequence
            [
              refs."definitions.openstackDataTypeKwargs",
              refs."definitions.openstackDataTypeId",
              {
                direction
                  | refs."definitions.cloudifyStringOrGetInput"
                  | doc "Ingress or egress, which is the direction in which the security group rule is applied."
                  | optional,
                port_range_max
                  | refs."definitions.cloudifyIntegerOrGetInput"
                  | doc "The maximum port number in the range that is matched by the security group rule. If the protocol is TCP, UDP, DCCP, SCTP or UDP-Lite this value must be greater than or equal to the port_range_min attribute value. If the protocol is ICMP, this value must be an ICMP type."
                  | optional,
                port_range_min
                  | refs."definitions.cloudifyIntegerOrGetInput"
                  | doc " The minimum port number in the range that is matched by the security group rule. If the protocol is TCP, UDP, DCCP, SCTP or UDP-Lite this value must be less than or equal to the port_range_max attribute value. If the protocol is ICMP, this value must be an ICMP type."
                  | optional,
                protocol
                  | refs."definitions.cloudifyStringOrGetInput"
                  | doc "The IP protocol of the security group rule."
                  | optional,
                remote_group_id
                  | refs."definitions.cloudifyStringOrGetInput"
                  | doc "The remote group UUID to associate with this security group rule. You can specify either the remote_group_id or remote_ip_prefix attribute in the request body."
                  | optional,
                remote_ip_prefix
                  | refs."definitions.cloudifyStringOrGetInput"
                  | doc "The remote IP prefix that is matched by this security group rule."
                  | optional,
                security_group_id
                  | refs."definitions.cloudifyStringOrGetInput"
                  | doc "The security group ID to associate with this security group rule."
                  | optional,
                ..
              }
            ],
      "definitions.openstackTypesSubnet" =
        std.contract.Sequence
            [
              refs."definitions.openstackDataTypeKwargs",
              refs."definitions.openstackDataTypeName",
              refs."definitions.openstackDataTypeId",
              {
                allocation_pools
                  | Array String
                  | doc "Allocation pools with start and end IP addresses for this subnet. If allocation_pools are not specified, OpenStack Networking automatically allocates pools for covering all IP addresses in the CIDR, excluding the address reserved for the subnet gateway by default."
                  | optional,
                cidr
                  | refs."definitions.cloudifyStringOrGetInput"
                  | doc "The CIDR of the subnet."
                  | optional,
                dns_nameservers
                  | Array String
                  | doc "List of dns name servers associated with the subnet. Default is an empty list."
                  | optional,
                enable_dhcp
                  | refs."definitions.cloudifyBooleanOrGetInput"
                  | doc "Indicates whether dhcp is enabled or disabled for the subnet. Default is true."
                  | optional,
                gateway_ip
                  | refs."definitions.cloudifyStringOrGetInput"
                  | doc "Gateway IP of this subnet. If the value is null that implies no gateway is associated with the subnet. If the gateway_ip is not specified, OpenStack Networking allocates an address from the CIDR for the gateway for the subnet by default."
                  | optional,
                host_routes
                  | Array String
                  | doc "Additional routes for the subnet. A list of dictionaries with destination and nexthop parameters. Default value is an empty list."
                  | optional,
                ip_version
                  | refs."definitions.cloudifyStringOrGetInput"
                  | doc "The IP protocol version. Value is 4 or 6."
                  | optional,
                ipv6_address_mode
                  | refs."definitions.cloudifyStringOrGetInput"
                  | doc "The IPv6 address modes specifies mechanisms for assigning IP addresses. Value is slaac, dhcpv6-stateful, dhcpv6-stateless."
                  | optional,
                ipv6_ra_mode
                  | refs."definitions.cloudifyStringOrGetInput"
                  | doc "The IPv6 router advertisement specifies whether the networking service should transmit ICMPv6 packets, for a subnet. Value is slaac, dhcpv6-stateful, dhcpv6-stateless."
                  | optional,
                network_id
                  | refs."definitions.cloudifyStringOrGetInput"
                  | doc "The ID of the network to which the subnet belongs."
                  | optional,
                prefixlen
                  | refs."definitions.cloudifyIntegerOrGetInput"
                  | doc "The prefix length to use for subnet allocation from a subnet pool. If not specified, the default_prefixlen value of the subnet pool will be used."
                  | optional,
                ..
              }
            ],
      "definitions.openstackTypesUser" =
        std.contract.Sequence
            [
              refs."definitions.openstackDataTypeKwargs",
              refs."definitions.openstackDataTypeName",
              refs."definitions.openstackDataTypeId",
              {
                default_project_id
                  | refs."definitions.cloudifyStringOrGetInput"
                  | doc m%"
                    The ID of the default project for the user.
                    A user's default project must not be a domain.
                    Setting this attribute does not grant any actual authorization
                    on the project, and is merely provided for convenience.
                    Therefore, the referenced project does not need to exist within the user domain. Since v3.1.
                    If the user does not have authorization to their default project,
                    the default project is ignored at token creation. Since v3.1.
                    Additionally, if your default project is not valid, a token is issued without an explicit scope of authorization
                  "%
                  | optional,
                domain_id
                  | refs."definitions.cloudifyStringOrGetInput"
                  | doc m%"
                    The ID of the domain of the user. If the domain ID is not provided
                    in the request, the Identity service will attempt to pull the
                    domain ID from the token used in the request.Note that this requires the use of a domain-scoped token.
                  "%
                  | optional,
                email
                  | refs."definitions.cloudifyStringOrGetInput"
                  | doc "The email for the user."
                  | optional,
                enabled
                  | refs."definitions.cloudifyBooleanOrGetInput"
                  | doc "If the user is enabled, this value is true. If the user is disabled, this value is false"
                  | optional,
                password
                  | refs."definitions.cloudifyStringOrGetInput"
                  | doc "The password for the user."
                  | optional,
                ..
              }
            ],
      "definitions.openstackTypesVolume" =
        std.contract.Sequence
            [
              refs."definitions.openstackDataTypeKwargs",
              refs."definitions.openstackDataTypeName",
              refs."definitions.openstackDataTypeId",
              refs."definitions.openstackDataTypeDescription",
              {
                availability_zone
                  | refs."definitions.cloudifyStringOrGetInput"
                  | doc "The name of the availability zone."
                  | optional,
                imageRef
                  | refs."definitions.cloudifyStringOrGetInput"
                  | doc m%"
                    The UUID of the image from which you want to create the volume.
                    Required to create a bootable volume.
                  "%
                  | optional,
                project_id
                  | refs."definitions.cloudifyStringOrGetInput"
                  | doc "The UUID of the project in a multi-tenancy cloud."
                  | optional,
                size
                  | refs."definitions.cloudifyIntegerOrGetInput"
                  | doc "The size of the volume, in gibibytes (GiB)."
                  | optional,
                snapshot_id
                  | refs."definitions.cloudifyStringOrGetInput"
                  | doc m%"
                    To create a volume from an existing snapshot,
                    specify the UUID of the volume snapshot.
                    The volume is created in same availability zone and with same size as the snapshot.
                  "%
                  | optional,
                volume_type
                  | refs."definitions.cloudifyStringOrGetInput"
                  | doc m%"
                    The volume type (either name or ID).
                    To create an environment with multiple-storage back ends, you
                    must specify a volume type. Block Storage volume back ends are
                    spawned as children to cinder- volume, and they are keyed from a
                    unique queue. They are named cinder- volume.HOST.BACKEND. For
                    example, cinder- volume.ubuntu.lvmdriver. When a volume is
                    created, the scheduler chooses an appropriate back end to handle
                    the request based on the volume type. Default is None. For
                    information about how to use volume types to create multiple-
                    storage back ends,
                  "%
                  | optional,
                ..
              }
            ],
      "definitions.openstackTypesVolumeType" =
        std.contract.Sequence
            [
              refs."definitions.openstackDataTypeKwargs",
              refs."definitions.openstackDataTypeName",
              refs."definitions.openstackDataTypeId",
              refs."definitions.openstackDataTypeDescription",
              {
                extra_specs
                  | { _ | Dyn }
                  | doc m%"
                    A key and value pair that contains additional specifications
                    that are associated with the volume type.
                    Examples include capabilities, capacity, compression,
                    and so on, depending on the storage driver in use.
                  "%
                  | optional,
                project_id
                  | refs."definitions.cloudifyStringOrGetInput"
                  | doc "The UUID of the project in a multi-tenancy cloud.."
                  | optional,
                ..
              }
            ],
      "definitions.openstackTypesZoneType" =
        std.contract.Sequence
            [
              refs."definitions.openstackDataTypeKwargs",
              refs."definitions.openstackDataTypeName",
              refs."definitions.openstackDataTypeDescription",
              {
                attributes
                  | { _ | Dyn }
                  | doc m%"
                    Key:Value pairs of information about this zone,nand the pool the user would like to place the zone in.
                    This information can be used by the scheduler to placenzones on the correct pool.
                  "%
                  | optional,
                email
                  | refs."definitions.cloudifyStringOrGetInput"
                  | doc "e-mail for the zone. Used in SOA records for the zone"
                  | optional,
                masters
                  | refs."definitions.cloudifyStringOrGetInput"
                  | doc m%"
                    Mandatory for secondary zones.
                    The servers to slave from to get DNS information
                  "%
                  | optional,
                ttl
                  | refs."definitions.cloudifyIntegerOrGetInput"
                  | doc "TTL (Time to Live) for the zone."
                  | optional,
                type
                  | refs."definitions.cloudifyStringOrGetInput"
                  | doc m%"
                    Type of zone. PRIMARY is controlled by Designate,
                    SECONDARY zones are slaved from another DNS Server.
                    Defaults to PRIMARY
                  "%
                  | optional,
                ..
              }
            ],
      "definitions.restTemplateInputs" =
        {
            force_rerun
              | refs."definitions.cloudifyBooleanOrGetInput"
              | doc "Rerun operation if on next operation rerun"
              | optional,
            params
              | { _ | Dyn }
              | doc m%"
                Template parameters. Default is empty dictionary. Merged
                with params from node properties and has 'ctx' key for
                current action context.
              "%
              | optional,
            prerender
              | refs."definitions.cloudifyBooleanOrGetInput"
              | doc m%"
                Prerender template before run calls jinja render=>yaml parse.
                Default is yaml parse=>jinja render.
              "%
              | optional,
            remove_calls
              | refs."definitions.cloudifyBooleanOrGetInput"
              | doc m%"
                Remove calls list from results. Default: save calls in
                runtime properties.
              "%
              | optional,
            retry_count
              | refs."definitions.cloudifyIntegerOrGetInput"
              | doc "Rerun count on warning on caught warnings"
              | optional,
            retry_sleep
              | refs."definitions.cloudifyIntegerOrGetInput"
              | doc "Sleep between rerun"
              | optional,
            save_path
              | refs."definitions.cloudifyBooleanOrGetInput"
              | doc m%"
                Save result to runtime properties key. Default is directly
                save to runtime properties.
              "%
              | optional,
            template_file
              | refs."definitions.cloudifyStringOrGetInput"
              | doc "Template path in blueprint directory"
              | optional,
            ..
          },
      "definitions.tags" =
        Array
            {
              Key | refs."definitions.cloudifyStringOrGetInput" | optional,
              Value | refs."definitions.cloudifyStringOrGetInput" | optional,
              ..
            },
      "definitions.terraformConfig" =
        std.contract.Sequence
            [
              refs."definitions.nodeTypeTerraformDirectoryConfig",
              { _ | Dyn }
            ],
      "definitions.terraformTypesBackend" =
        {
            name
              | refs."definitions.cloudifyStringOrGetInput"
              | doc "Some name."
              | optional,
            options
              | { _ | Dyn }
              | doc "Should be a dictionary of key/values."
              | optional,
            ..
          },
      "definitions.terraformTypesRootModule" =
        {
            backend
              | refs."definitions.terraformTypesBackend"
              | { _ | Dyn }
              | doc m%"
                If a backend is not defined in source,
                and you want to use a specific backend, define that here.
              "%
              | optional,
            environment_variables
              | { _ | Dyn }
              | doc "A dictionary of environment variables."
              | optional,
            source
              | refs."definitions.cloudifyStringOrGetInput"
              | doc m%"
                Path or URL to the ZIP file containing the Terraform project.
                If this is a path, then it must be relative to the blueprint's root.
              "%,
            variables
              | { _ | Dyn }
              | doc "A dictionary of variables."
              | optional,
            ..
          },
    }
    in
  {
      data_types | refs."definitions.dataTypes" | optional,
      dsl_definitions | { _ | Dyn } | optional,
      imports
        | Array (
          std.contract.any_of
            [
              String,
              std.contract.Sequence
                [
                  std.enum.TagOrString,
                  [|
                    '"plugin:cloudify-helm-plugin",
                    '"plugin:cloudify-terraform-plugin",
                    '"plugin:cloudify-vsphere-plugin",
                    '"plugin:cloudify-utilities-plugin",
                    '"plugin:cloudify-openstack-plugin",
                    '"plugin:cloudify-kubernetes-plugin",
                    '"plugin:cloudify-host-pool-plugin",
                    '"plugin:cloudify-gcp-plugin",
                    '"plugin:cloudify-fabric-plugin",
                    '"plugin:cloudify-diamond-plugin",
                    '"plugin:cloudify-cloudstack-plugin",
                    '"plugin:cloudify-azure-plugin",
                    '"plugin:cloudify-aws-plugin",
                    '"plugin:cloudify-ansible-plugin",
                    '"http://www.getcloudify.org/spec/cloudify/4.5/types.yaml"
                  |]
                ]
            ]
        )
        | doc "imports enable the author of a blueprint to reuse blueprint files, or parts of them, and to use predefined types (e.g. from the types.yaml file)."
        | optional,
      inputs
        | js2n.record.Record
          {
            additional = 'Some Dyn,
            patterns = { "" = refs."definitions.inputProperty", },
            properties =
              {
                  aws_access_key_id = refs."definitions.inputProperty",
                  aws_account_id = refs."definitions.inputProperty",
                  aws_cloudwatch_log_arn = refs."definitions.inputProperty",
                  aws_region_name = refs."definitions.inputProperty",
                  aws_region_zone1 = refs."definitions.inputProperty",
                  aws_region_zone2 = refs."definitions.inputProperty",
                  aws_secret_access_key = refs."definitions.inputProperty",
                },
            required = {},
          }
        | doc "inputs are parameters that are injected into a blueprint when a deployment is created. These parameters can be referenced by using the get_input intrinsic function."
        | optional,
      node_templates | refs."definitions.nodeTemplates" | optional,
      node_types | refs."definitions.nodeTypes" | optional,
      tosca_definitions_version
        | std.enum.TagOrString
        | [|
          'cloudify_dsl_1_3,
          'cloudify_dsl_1_2,
          'cloudify_dsl_1_1,
          'cloudify_dsl_1_0
        |]
        | doc "tosca_definitions_version is a top level property of the blueprint which is used to specify the DSL version used. For Cloudify, the versions that are currently defined are cloudify_dsl_1_0, cloudify_dsl_1_1, cloudify_dsl_1_2 and cloudify_dsl_1_3."
        | optional,
      ..
    }