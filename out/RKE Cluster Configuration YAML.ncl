# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.AESConfiguration" =
        {
            Keys
              | Array (
                std.contract.Sequence [ refs."definitions.Key", { _ | Dyn } ]
              ),
          },
      "definitions.AWSCloudProvider" =
        {
            global | refs."definitions.GlobalAwsOpts" | { _ | Dyn },
            service_override
              | js2n.record.Record
                {
                  additional = 'Some Dyn,
                  patterns =
                    {
                        ".*" =
                          std.contract.Sequence
                              [
                                refs."definitions.ServiceOverride",
                                { _ | Dyn }
                              ],
                      },
                  properties = {},
                  required = {},
                }
              | optional,
          },
      "definitions.AWSElasticBlockStoreVolumeSource" =
        {
            FSType | String,
            Partition | std.number.Integer,
            ReadOnly | Bool,
            VolumeID | String,
          },
      "definitions.AciNetworkProvider" =
        {
            aep | String | optional,
            apic_hosts | Array String | optional,
            apic_refresh_time | String | optional,
            apic_user_crt | String | optional,
            apic_user_key | String | optional,
            apic_user_name | String | optional,
            capic | String | optional,
            controller_log_level | String | optional,
            drop_log_enable | String | optional,
            enable_endpoint_slice | String | optional,
            encap_type | String | optional,
            ep_registry | String | optional,
            extern_dynamic | String | optional,
            extern_static | String | optional,
            gbp_pod_subnet | String | optional,
            host_agent_log_level | String | optional,
            image_pull_policy | String | optional,
            image_pull_secret | String | optional,
            infra_vlan | String | optional,
            install_istio | String | optional,
            istio_profile | String | optional,
            kafka_brokers | Array String | optional,
            kafka_client_crt | String | optional,
            kafka_client_key | String | optional,
            kube_api_vlan | String | optional,
            l3out | String | optional,
            l3out_external_networks | Array String | optional,
            max_nodes_svc_graph | String | optional,
            mcast_range_end | String | optional,
            mcast_range_start | String | optional,
            no_priority_class | String | optional,
            node_subnet | String | optional,
            node_svc_subnet | String | optional,
            opflex_client_ssl | String | optional,
            opflex_log_level | String | optional,
            opflex_mode | String | optional,
            opflex_server_port
              | std.contract.any_of [ Number, String ]
              | optional,
            overlay_vrf_name | String | optional,
            ovs_memory_limit | String | optional,
            pbr_tracking_non_snat | String | optional,
            pod_subnet_chunk_size | String | optional,
            run_gbp_container | String | optional,
            run_opflex_server_container | String | optional,
            service_monitor_interval | String | optional,
            service_vlan | String | optional,
            snat_contract_scope | String | optional,
            snat_namespace | String | optional,
            snat_port_range_end
              | std.contract.any_of [ Number, String ]
              | optional,
            snat_port_range_start
              | std.contract.any_of [ Number, String ]
              | optional,
            snat_ports_per_node
              | std.contract.any_of [ Number, String ]
              | optional,
            subnet_domain_name | String | optional,
            system_id | String | optional,
            tenant | String | optional,
            token | String | optional,
            use_aci_anywhere_crd | String | optional,
            use_aci_cni_priority_class | String | optional,
            use_host_netns_volume | String | optional,
            use_opflex_server_volume | String | optional,
            use_privileged_container | String | optional,
            vmm_controller | String | optional,
            vmm_domain | String | optional,
            vrf_name | String | optional,
            vrf_tenant | String | optional,
          },
      "definitions.AdmissionConfiguration" =
        {
            APIVersion | String,
            Kind | String,
            Plugins
              | Array (
                std.contract.Sequence
                  [
                    refs."definitions.AdmissionPluginConfiguration",
                    { _ | Dyn }
                  ]
              ),
          },
      "definitions.AdmissionPluginConfiguration" =
        {
            Configuration | refs."definitions.Unknown" | { _ | Dyn },
            Name | String,
            Path | String,
          },
      "definitions.AuditLog" =
        {
            configuration
              | refs."definitions.AuditLogConfig"
              | { _ | Dyn }
              | optional,
            enabled | Bool | optional,
          },
      "definitions.AuditLogConfig" =
        {
            format | String | optional,
            max_age | std.number.Integer | optional,
            max_backup | std.number.Integer | optional,
            max_size | std.number.Integer | optional,
            path | String | optional,
            policy | refs."definitions.Policy" | { _ | Dyn } | optional,
          },
      "definitions.AuthWebhookConfig" =
        {
            cache_timeout
              | String
              | doc "CacheTimeout controls how long to cache authentication decisions"
              | optional,
            config_file
              | String
              | doc "ConfigFile is a multiline string that represent a custom webhook config file"
              | optional,
          },
      "definitions.AuthnConfig" =
        {
            sans
              | Array String
              | doc "List of additional hostnames and IPs to include in the api server PKI cert"
              | optional,
            strategy
              | String
              | doc "Authentication strategy that will be used in kubernetes cluster"
              | optional,
            webhook
              | refs."definitions.AuthWebhookConfig"
              | { _ | Dyn }
              | doc "Webhook configuration options"
              | optional,
          },
      "definitions.AuthzConfig" =
        {
            mode
              | String
              | doc "Authorization mode used by kubernetes"
              | optional,
            options
              | js2n.record.Record
                {
                  additional = 'Some Dyn,
                  patterns = { ".*" = std.contract.any_of [ Number, String ], },
                  properties = {},
                  required = {},
                }
              | doc "Authorization mode options"
              | optional,
          },
      "definitions.AzureCloudProvider" =
        {
            aadClientCertPassword
              | String
              | doc m%"
                The password of the client certificate for an AAD application with RBAC access to talk to Azure RM APIs
                This's used for client certificate authentication: https://docs.microsoft.com/en-us/azure/active-directory/develop/active-directory-protocols-oauth-service-to-service
              "%,
            aadClientCertPath
              | String
              | doc m%"
                The path of a client certificate for an AAD application with RBAC access to talk to Azure RM APIs
                This's used for client certificate authentication: https://docs.microsoft.com/en-us/azure/active-directory/develop/active-directory-protocols-oauth-service-to-service
              "%,
            aadClientId
              | String
              | doc m%"
                The ClientID for an AAD application with RBAC access to talk to Azure RM APIs
                This's used for service principal authentication: https://github.com/Azure/aks-engine/blob/master/docs/topics/service-principals.md
              "%,
            aadClientSecret
              | String
              | doc m%"
                The ClientSecret for an AAD application with RBAC access to talk to Azure RM APIs
                This's used for service principal authentication: https://github.com/Azure/aks-engine/blob/master/docs/topics/service-principals.md
              "%,
            cloud
              | String
              | doc "The cloud environment identifier. Takes values from https://github.com/Azure/go-autorest/blob/ec5f4903f77ed9927ac95b19ab8e44ada64c1356/autorest/azure/environments.go#L13",
            cloudProviderBackoff
              | Bool
              | doc "Enable exponential backoff to manage resource request retries",
            cloudProviderBackoffDuration
              | std.number.Integer
              | doc "Backoff duration",
            cloudProviderBackoffExponent
              | std.number.Integer
              | doc "Backoff exponent",
            cloudProviderBackoffJitter
              | std.number.Integer
              | doc "Backoff jitter",
            cloudProviderBackoffRetries
              | std.number.Integer
              | doc "Backoff retry limit",
            cloudProviderRateLimit | Bool | doc "Enable rate limiting",
            cloudProviderRateLimitBucket
              | std.number.Integer
              | doc "Rate limit Bucket Size",
            cloudProviderRateLimitQPS
              | std.number.Integer
              | doc "Rate limit QPS",
            excludeMasterFromStandardLB
              | Bool
              | doc m%"
                Excludes master nodes (labeled with `node-role.kubernetes.io/master`) from the backend pool of Azure standard loadbalancer, default(nil) to `true`
                If want adding the master nodes to ALB, this should be set to `false` and remove the `node-role.kubernetes.io/master` label from master nodes
              "%
              | optional,
            loadBalancerSku
              | String
              | doc "Sku of Load Balancer and Public IP: `basic` or `standard`, default(blank) to `basic`"
              | optional,
            location
              | String
              | doc "The location of the resource group that the cluster is deployed in",
            maximumLoadBalancerRuleCount
              | std.number.Integer
              | doc "Maximum allowed LoadBalancer Rule Count is the limit enforced by Azure Load balancer, default(0) to 148",
            primaryAvailabilitySetName
              | String
              | doc m%"
                (Optional) The name of the availability set that should be used as the load balancer backend
                If this is set, the Azure cloudprovider will only add nodes from that availability set to the load
                balancer backend pool. If this is not set, and multiple agent pools (availability sets) are used, then
                the cloudprovider will try to add all nodes to a single backend pool which is forbidden.
                In other words, if you use multiple agent pools (availability sets), you MUST set this field.
              "%,
            primaryScaleSetName
              | String
              | doc m%"
                The name of the scale set that should be used as the load balancer backend.
                If this is set, the Azure cloudprovider will only add nodes from that scale set to the load
                balancer backend pool. If this is not set, and multiple agent pools (scale sets) are used, then
                the cloudprovider will try to add all nodes to a single backend pool which is forbidden.
                In other words, if you use multiple agent pools (scale sets), you MUST set this field.
              "%,
            resourceGroup
              | String
              | doc "The name of the resource group that the cluster is deployed in",
            routeTableName
              | String
              | doc "(Optional in 1.6) The name of the route table attached to the subnet that the cluster is deployed in",
            securityGroupName
              | String
              | doc "The name of the security group attached to the cluster's subnet",
            subnetName
              | String
              | doc "The name of the subnet that the cluster is deployed in",
            subscriptionId
              | String
              | doc "The ID of the Azure Subscription that the cluster is deployed in",
            tenantId
              | String
              | doc "The AAD Tenant ID for the Subscription that the cluster is deployed in",
            useInstanceMetadata
              | Bool
              | doc "Use instance metadata service where possible",
            useManagedIdentityExtension
              | Bool
              | doc m%"
                Use managed service identity for the virtual machine to access Azure ARM APIs
                This's used for managed identity authentication: https://docs.microsoft.com/en-us/azure/active-directory/managed-service-identity/overview
                For user-assigned managed identity, need to set the below UserAssignedIdentityID
              "%,
            userAssignedIdentityID
              | String
              | doc m%"
                The Client ID of the user assigned MSI which is assigned to the underlying VMs
                This's used for managed identity authentication: https://docs.microsoft.com/en-us/azure/active-directory/managed-service-identity/overview
              "%
              | optional,
            vmType
              | String
              | doc m%"
                The type of azure nodes. Candidate valudes are: vmss and standard.
                If not set, it will be default to standard.
              "%,
            vnetName
              | String
              | doc "The name of the VNet that the cluster is deployed in",
            vnetResourceGroup
              | String
              | doc "The name of the resource group that the Vnet is deployed in",
          },
      "definitions.AzureDiskVolumeSource" =
        {
            CachingMode | String,
            DataDiskURI | String,
            DiskName | String,
            FSType | String,
            Kind | String,
            ReadOnly | Bool,
          },
      "definitions.AzureFileVolumeSource" =
        { ReadOnly | Bool, SecretName | String, ShareName | String, },
      "definitions.BackupConfig" =
        {
            S3BackupConfig
              | refs."definitions.S3BackupConfig"
              | { _ | Dyn }
              | optional,
            enabled | Bool,
            interval_hours | std.number.Integer,
            retention | std.number.Integer,
            safe_timestamp | Bool,
            timeout | std.number.Integer,
          },
      "definitions.BastionHost" =
        {
            address | String | doc "Address of Bastion Host" | optional,
            ignore_proxy_env_vars
              | Bool
              | doc "Ignore proxy environment variables"
              | optional,
            port
              | std.contract.any_of [ Number, String ]
              | doc "SSH Port of Bastion Host"
              | optional,
            ssh_agent_auth | Bool | doc "SSH Agent Auth enable" | optional,
            ssh_cert | String | doc "SSH Certificate" | optional,
            ssh_cert_path | String | doc "SSH Certificate Path" | optional,
            ssh_key | String | doc "SSH Private Key" | optional,
            ssh_key_path | String | doc "SSH Private Key Path" | optional,
            user | String | doc "ssh User to Bastion Host" | optional,
          },
      "definitions.BlockStorageOpenstackOpts" =
        {
            bs-version
              | String
              | doc "overrides autodetection. v1 or v2. Defaults to auto",
            ignore-volume-az | Bool,
            trust-device-path | Bool | doc "See Issue #33128",
          },
      "definitions.CSIVolumeSource" =
        {
            Driver | String,
            FSType | String,
            NodePublishSecretRef
              | refs."definitions.LocalObjectReference"
              | { _ | Dyn },
            ReadOnly | Bool,
            VolumeAttributes
              | js2n.record.Record
                {
                  additional = 'Some Dyn,
                  patterns = { ".*" = std.contract.any_of [ Number, String ], },
                  properties = {},
                  required = {},
                },
          },
      "definitions.CalicoNetworkProvider" =
        {
            CloudProvider | String | doc "Cloud provider type used with calico",
          },
      "definitions.CanalNetworkProvider" = { Iface | String, },
      "definitions.CephFSVolumeSource" =
        {
            Monitors | Array String,
            Path | String,
            ReadOnly | Bool,
            SecretFile | String,
            SecretRef | refs."definitions.LocalObjectReference" | { _ | Dyn },
            User | String,
          },
      "definitions.CinderVolumeSource" =
        {
            FSType | String,
            ReadOnly | Bool,
            SecretRef | refs."definitions.LocalObjectReference" | { _ | Dyn },
            VolumeID | String,
          },
      "definitions.CloudProvider" =
        {
            awsCloudProvider
              | refs."definitions.AWSCloudProvider"
              | { _ | Dyn }
              | doc "AWSCloudProvider"
              | optional,
            azureCloudProvider
              | refs."definitions.AzureCloudProvider"
              | { _ | Dyn }
              | doc "AzureCloudProvider"
              | optional,
            customCloudProvider
              | String
              | doc "CustomCloudProvider is a multiline string that represent a custom cloud config file"
              | optional,
            name | String | doc "Name of the Cloud Provider" | optional,
            openstackCloudProvider
              | refs."definitions.OpenstackCloudProvider"
              | { _ | Dyn }
              | doc "OpenstackCloudProvider"
              | optional,
            vsphereCloudProvider
              | refs."definitions.VsphereCloudProvider"
              | { _ | Dyn }
              | doc "VsphereCloudProvider"
              | optional,
          },
      "definitions.ConfigMapKeySelector" =
        { Key | String, Name | String, Optional | Bool, },
      "definitions.ConfigMapProjection" =
        {
            Items
              | Array (
                std.contract.Sequence
                  [ refs."definitions.KeyToPath", { _ | Dyn } ]
              ),
            Name | String,
            Optional | Bool,
          },
      "definitions.ConfigMapVolumeSource" =
        {
            DefaultMode | std.number.Integer,
            Items
              | Array (
                std.contract.Sequence
                  [ refs."definitions.KeyToPath", { _ | Dyn } ]
              ),
            Name | String,
            Optional | Bool,
          },
      "definitions.Configuration" =
        {
            APIVersion | String,
            Kind | String,
            Limits
              | Array (
                std.contract.Sequence [ refs."definitions.Limit", { _ | Dyn } ]
              ),
          },
      "definitions.DNSConfig" =
        {
            linear_autoscaler_params
              | refs."definitions.LinearAutoscalerParams"
              | { _ | Dyn }
              | doc "Autoscaler fields to determine number of dns replicas"
              | optional,
            node_selector
              | js2n.record.Record
                {
                  additional = 'Some Dyn,
                  patterns = { ".*" = std.contract.any_of [ Number, String ], },
                  properties = {},
                  required = {},
                }
              | doc "NodeSelector key pair"
              | optional,
            nodelocal
              | refs."definitions.Nodelocal"
              | { _ | Dyn }
              | doc "Nodelocal DNS"
              | optional,
            options
              | js2n.record.Record
                {
                  additional = 'Some Dyn,
                  patterns = { ".*" = std.contract.any_of [ Number, String ], },
                  properties = {},
                  required = {},
                }
              | doc "DNS config options"
              | optional,
            provider | String | doc "DNS provider" | optional,
            reversecidrs | Array String | doc "ReverseCIDRs" | optional,
            stubdomains
              | js2n.record.Record
                {
                  additional = 'Some Dyn,
                  patterns = { ".*" = Array String, },
                  properties = {},
                  required = {},
                }
              | doc "Stubdomains"
              | optional,
            tolerations
              | Array (
                std.contract.Sequence
                  [ refs."definitions.Toleration", { _ | Dyn } ]
              )
              | doc "Tolerations for Deployments"
              | optional,
            update_strategy
              | refs."definitions.DeploymentStrategy"
              | { _ | Dyn }
              | doc "Update strategy"
              | optional,
            upstreamnameservers
              | Array String
              | doc "Upstream nameservers"
              | optional,
          },
      "definitions.DaemonSetUpdateStrategy" =
        {
            RollingUpdate
              | refs."definitions.RollingUpdateDaemonSet"
              | { _ | Dyn },
            Strategy | String,
          },
      "definitions.DeploymentStrategy" =
        {
            RollingUpdate
              | refs."definitions.RollingUpdateDeployment"
              | { _ | Dyn },
            Strategy | String,
          },
      "definitions.DiskVsphereOpts" =
        { scsicontrollertype | String | optional, },
      "definitions.DownwardAPIProjection" =
        {
            Items
              | Array (
                std.contract.Sequence
                  [ refs."definitions.DownwardAPIVolumeFile", { _ | Dyn } ]
              ),
          },
      "definitions.DownwardAPIVolumeFile" =
        {
            FieldRef | refs."definitions.ObjectFieldSelector" | { _ | Dyn },
            Mode | std.number.Integer,
            Path | String,
            ResourceFieldRef
              | refs."definitions.ResourceFieldSelector"
              | { _ | Dyn },
          },
      "definitions.DownwardAPIVolumeSource" =
        {
            DefaultMode | std.number.Integer,
            Items
              | Array (
                std.contract.Sequence
                  [ refs."definitions.DownwardAPIVolumeFile", { _ | Dyn } ]
              ),
          },
      "definitions.Duration" = {},
      "definitions.ECRCredentialPlugin" =
        {
            aws_access_key_id | String,
            aws_secret_access_key | String,
            aws_session_token | String,
          },
      "definitions.ETCDService" =
        {
            backup_config
              | refs."definitions.BackupConfig"
              | { _ | Dyn }
              | doc "Backup backend for etcd snapshots"
              | optional,
            ca_cert | String | doc "External CA certificate" | optional,
            cert | String | doc "External Client certificate" | optional,
            creation | String | doc "Etcd snapshot Creation period" | optional,
            external_urls | Array String | doc "List of etcd urls" | optional,
            extra_args
              | js2n.record.Record
                {
                  additional = 'Some Dyn,
                  patterns = { ".*" = std.contract.any_of [ Number, String ], },
                  properties = {},
                  required = {},
                }
              | optional,
            extra_binds | Array String | optional,
            extra_env | Array String | optional,
            gid
              | std.number.Integer
              | doc "GID to run etcd container as"
              | optional,
            image | String | optional,
            key | String | doc "External Client key" | optional,
            path | String | doc "External etcd prefix" | optional,
            retention
              | String
              | doc "Etcd snapshot Retention period"
              | optional,
            snapshot
              | Bool
              | doc "Etcd Recurring snapshot Service, used by rke only"
              | optional,
            uid
              | std.number.Integer
              | doc "UID to run etcd container as"
              | optional,
            win_extra_args
              | js2n.record.Record
                {
                  additional = 'Some Dyn,
                  patterns = { ".*" = std.contract.any_of [ Number, String ], },
                  properties = {},
                  required = {},
                }
              | optional,
            win_extra_binds | Array String | optional,
            win_extra_env | Array String | optional,
          },
      "definitions.EmptyDirVolumeSource" =
        {
            Medium | String,
            SizeLimit | refs."definitions.Quantity" | { _ | Dyn },
          },
      "definitions.EncryptionConfiguration" =
        {
            APIVersion | String,
            Kind | String,
            Resources
              | Array (
                std.contract.Sequence
                  [ refs."definitions.ResourceConfiguration", { _ | Dyn } ]
              ),
          },
      "definitions.EnvVarSource" =
        {
            ConfigMapKeyRef
              | refs."definitions.ConfigMapKeySelector"
              | { _ | Dyn },
            FieldRef | refs."definitions.ObjectFieldSelector" | { _ | Dyn },
            ResourceFieldRef
              | refs."definitions.ResourceFieldSelector"
              | { _ | Dyn },
            SecretKeyRef | refs."definitions.SecretKeySelector" | { _ | Dyn },
          },
      "definitions.EphemeralVolumeSource" =
        {
            VolumeClaimTemplate
              | refs."definitions.PersistentVolumeClaimTemplate"
              | { _ | Dyn },
          },
      "definitions.EventRateLimit" =
        {
            configuration
              | refs."definitions.Configuration"
              | { _ | Dyn }
              | optional,
            enabled | Bool | optional,
          },
      "definitions.ExtraEnv" =
        {
            Name | String,
            Value | String,
            ValueFrom | refs."definitions.EnvVarSource" | { _ | Dyn },
          },
      "definitions.ExtraVolume" =
        {
            AWSElasticBlockStore
              | refs."definitions.AWSElasticBlockStoreVolumeSource"
              | { _ | Dyn },
            AzureDisk | refs."definitions.AzureDiskVolumeSource" | { _ | Dyn },
            AzureFile | refs."definitions.AzureFileVolumeSource" | { _ | Dyn },
            CSI | refs."definitions.CSIVolumeSource" | { _ | Dyn },
            CephFS | refs."definitions.CephFSVolumeSource" | { _ | Dyn },
            Cinder | refs."definitions.CinderVolumeSource" | { _ | Dyn },
            ConfigMap | refs."definitions.ConfigMapVolumeSource" | { _ | Dyn },
            DownwardAPI
              | refs."definitions.DownwardAPIVolumeSource"
              | { _ | Dyn },
            EmptyDir | refs."definitions.EmptyDirVolumeSource" | { _ | Dyn },
            Ephemeral | refs."definitions.EphemeralVolumeSource" | { _ | Dyn },
            FC | refs."definitions.FCVolumeSource" | { _ | Dyn },
            FlexVolume | refs."definitions.FlexVolumeSource" | { _ | Dyn },
            Flocker | refs."definitions.FlockerVolumeSource" | { _ | Dyn },
            GCEPersistentDisk
              | refs."definitions.GCEPersistentDiskVolumeSource"
              | { _ | Dyn },
            GitRepo | refs."definitions.GitRepoVolumeSource" | { _ | Dyn },
            Glusterfs | refs."definitions.GlusterfsVolumeSource" | { _ | Dyn },
            HostPath | refs."definitions.HostPathVolumeSource" | { _ | Dyn },
            ISCSI | refs."definitions.ISCSIVolumeSource" | { _ | Dyn },
            NFS | refs."definitions.NFSVolumeSource" | { _ | Dyn },
            Name | String,
            PersistentVolumeClaim
              | refs."definitions.PersistentVolumeClaimVolumeSource"
              | { _ | Dyn },
            PhotonPersistentDisk
              | refs."definitions.PhotonPersistentDiskVolumeSource"
              | { _ | Dyn },
            PortworxVolume
              | refs."definitions.PortworxVolumeSource"
              | { _ | Dyn },
            Projected | refs."definitions.ProjectedVolumeSource" | { _ | Dyn },
            Quobyte | refs."definitions.QuobyteVolumeSource" | { _ | Dyn },
            RBD | refs."definitions.RBDVolumeSource" | { _ | Dyn },
            ScaleIO | refs."definitions.ScaleIOVolumeSource" | { _ | Dyn },
            Secret | refs."definitions.SecretVolumeSource" | { _ | Dyn },
            StorageOS | refs."definitions.StorageOSVolumeSource" | { _ | Dyn },
            VsphereVolume
              | refs."definitions.VsphereVirtualDiskVolumeSource"
              | { _ | Dyn },
          },
      "definitions.ExtraVolumeMount" =
        {
            MountPath | String,
            MountPropagation | String,
            Name | String,
            ReadOnly | Bool,
            SubPath | String,
            SubPathExpr | String,
          },
      "definitions.FCVolumeSource" =
        {
            FSType | String,
            Lun | std.number.Integer,
            ReadOnly | Bool,
            TargetWWNs | Array String,
            WWIDs | Array String,
          },
      "definitions.FieldsV1" = { Raw | String, },
      "definitions.FlannelNetworkProvider" =
        { Iface | String | doc "Alternate cloud interface for flannel", },
      "definitions.FlexVolumeSource" =
        {
            Driver | String,
            FSType | String,
            Options
              | js2n.record.Record
                {
                  additional = 'Some Dyn,
                  patterns = { ".*" = std.contract.any_of [ Number, String ], },
                  properties = {},
                  required = {},
                },
            ReadOnly | Bool,
            SecretRef | refs."definitions.LocalObjectReference" | { _ | Dyn },
          },
      "definitions.FlockerVolumeSource" =
        { DatasetName | String, DatasetUUID | String, },
      "definitions.GCEPersistentDiskVolumeSource" =
        {
            FSType | String,
            PDName | String,
            Partition | std.number.Integer,
            ReadOnly | Bool,
          },
      "definitions.GitRepoVolumeSource" =
        { Directory | String, Repository | String, Revision | String, },
      "definitions.GlobalAwsOpts" =
        {
            disable-security-group-ingress
              | Bool
              | doc m%"
                The aws provider creates an inbound rule per load balancer on the node security
                group. However, this can run into the AWS security group rule limit of 50 if
                many LoadBalancers are created.
                
                This flag disables the automatic ingress creation. It requires that the user
                has setup a rule that allows inbound traffic on kubelet ports from the
                local VPC subnet (so load balancers can access it). E.g. 10.82.0.0/16 30000-32000.
              "%,
            disable-strict-zone-check
              | Bool
              | doc m%"
                During the instantiation of an new AWS cloud provider, the detected region
                is validated against a known set of regions.
                
                In a non-standard, AWS like environment (e.g. Eucalyptus), this check may
                be undesirable.  Setting this to true will disable the check and provide
                a warning that the check was skipped.  Please note that this is an
                experimental feature and work-in-progress for the moment.  If you find
                yourself in an non-AWS cloud and open an issue, please indicate that in the
                issue body.
              "%,
            elb-security-group
              | String
              | doc m%"
                AWS has a hard limit of 500 security groups. For large clusters creating a security group for each ELB
                can cause the max number of security groups to be reached. If this is set instead of creating a new
                Security group for each ELB this security group will be used instead.
              "%,
            kubernetes-cluster-id
              | String
              | doc "KubernetesClusterID is the cluster id we'll use to identify our cluster resources",
            kubernetes-cluster-tag
              | String
              | doc "KubernetesClusterTag is the legacy cluster id we'll use to identify our cluster resources",
            role-arn
              | String
              | doc "RoleARN is the IAM role to assume when interaction with AWS APIs.",
            routetable-id
              | String
              | doc "RouteTableID enables using a specific RouteTable",
            subnet-id
              | String
              | doc "SubnetID enables using a specific subnet to use for ELB's",
            vpc
              | String
              | doc m%"
                The AWS VPC flag enables the possibility to run the master components
                on a different aws account, on a different cloud provider or on-premises.
                If the flag is set also the KubernetesClusterTag must be provided
              "%,
            zone
              | String
              | doc m%"
                TODO: Is there any use for this?  We can get it from the instance metadata service
                Maybe if we're not running on AWS, e.g. bootstrap; for now it is not very useful
              "%,
          },
      "definitions.GlobalOpenstackOpts" =
        {
            auth-url | String,
            ca-file | String,
            domain-id | String,
            domain-name | String,
            password | String,
            region | String,
            tenant-id | String,
            tenant-name | String,
            trust-id | String,
            user-id | String,
            username | String,
          },
      "definitions.GlobalVsphereOpts" =
        {
            datacenter | String | optional,
            datacenters | String | optional,
            datastore | String | optional,
            insecure-flag | Bool | optional,
            password | String | optional,
            port | std.contract.any_of [ Number, String ] | optional,
            server | String | optional,
            soap-roundtrip-count | std.number.Integer | optional,
            user | String | optional,
            vm-name | String | optional,
            vm-uuid | String | optional,
            working-dir | String | optional,
          },
      "definitions.GlusterfsVolumeSource" =
        { EndpointsName | String, Path | String, ReadOnly | Bool, },
      "definitions.GroupResources" =
        {
            Group | String,
            ResourceNames | Array String,
            Resources | Array String,
          },
      "definitions.HostPathVolumeSource" = { Path | String, Type | String, },
      "definitions.ISCSIVolumeSource" =
        {
            DiscoveryCHAPAuth | Bool,
            FSType | String,
            IQN | String,
            ISCSIInterface | String,
            InitiatorName | String,
            Lun | std.number.Integer,
            Portals | Array String,
            ReadOnly | Bool,
            SecretRef | refs."definitions.LocalObjectReference" | { _ | Dyn },
            SessionCHAPAuth | Bool,
            TargetPortal | String,
          },
      "definitions.IdentityConfiguration" = {},
      "definitions.IngressConfig" =
        {
            default_backend
              | Bool
              | doc "Enable or disable nginx default-http-backend"
              | optional,
            default_http_backend_priority_class_name
              | String
              | doc "Priority class name for Nginx-Ingress's \"default-http-backend\" deployment"
              | optional,
            dns_policy | String | doc "DNS Policy" | optional,
            extra_args
              | js2n.record.Record
                {
                  additional = 'Some Dyn,
                  patterns = { ".*" = std.contract.any_of [ Number, String ], },
                  properties = {},
                  required = {},
                }
              | doc "Ingress controller extra arguments"
              | optional,
            extra_envs
              | Array (
                std.contract.Sequence
                  [ refs."definitions.ExtraEnv", { _ | Dyn } ]
              )
              | doc "Extra Env vars"
              | optional,
            extra_volume_mounts
              | Array (
                std.contract.Sequence
                  [ refs."definitions.ExtraVolumeMount", { _ | Dyn } ]
              )
              | doc "Extra volume mounts"
              | optional,
            extra_volumes
              | Array (
                std.contract.Sequence
                  [ refs."definitions.ExtraVolume", { _ | Dyn } ]
              )
              | doc "Extra volumes"
              | optional,
            http_port
              | std.contract.any_of [ Number, String ]
              | doc "Http port for ingress controller daemonset"
              | optional,
            https_port
              | std.contract.any_of [ Number, String ]
              | doc "Https port for ingress controller daemonset"
              | optional,
            network_mode
              | String
              | doc "NetworkMode selector for ingress controller pods. Default is HostNetwork"
              | optional,
            nginx_ingress_controller_priority_class_name
              | String
              | doc "Priority class name for Nginx-Ingress's \"nginx-ingress-controller\" daemonset"
              | optional,
            node_selector
              | js2n.record.Record
                {
                  additional = 'Some Dyn,
                  patterns = { ".*" = std.contract.any_of [ Number, String ], },
                  properties = {},
                  required = {},
                }
              | doc "NodeSelector key pair"
              | optional,
            options
              | js2n.record.Record
                {
                  additional = 'Some Dyn,
                  patterns = { ".*" = std.contract.any_of [ Number, String ], },
                  properties = {},
                  required = {},
                }
              | doc m%"
                These options are NOT for configuring Ingress's addon template.
                They are used for its ConfigMap options specifically.
              "%
              | optional,
            provider
              | String
              | doc "Ingress controller type used by kubernetes"
              | optional,
            tolerations
              | Array (
                std.contract.Sequence
                  [ refs."definitions.Toleration", { _ | Dyn } ]
              )
              | doc "Tolerations for Deployments"
              | optional,
            update_strategy
              | refs."definitions.DaemonSetUpdateStrategy"
              | { _ | Dyn }
              | doc "nginx daemonset upgrade strategy"
              | optional,
          },
      "definitions.IntOrString" =
        {
            IntVal | std.number.Integer,
            StrVal | String,
            Type | std.number.Integer,
          },
      "definitions.KMSConfiguration" =
        {
            CacheSize | std.number.Integer,
            Endpoint | String,
            Name | String,
            Timeout | refs."definitions.Duration" | { _ | Dyn },
          },
      "definitions.Key" = { Name | String, Secret | String, },
      "definitions.KeyToPath" =
        { Key | String, Mode | std.number.Integer, Path | String, },
      "definitions.KubeAPIService" =
        {
            admission_configuration
              | refs."definitions.AdmissionConfiguration"
              | { _ | Dyn }
              | doc "AdmissionConfiguration"
              | optional,
            always_pull_images
              | Bool
              | doc "Enable/Disable AlwaysPullImages admissions plugin"
              | optional,
            audit_log
              | refs."definitions.AuditLog"
              | { _ | Dyn }
              | doc "Audit Log Configuration"
              | optional,
            event_rate_limit
              | refs."definitions.EventRateLimit"
              | { _ | Dyn }
              | doc "Event Rate Limit configuration"
              | optional,
            extra_args
              | js2n.record.Record
                {
                  additional = 'Some Dyn,
                  patterns = { ".*" = std.contract.any_of [ Number, String ], },
                  properties = {},
                  required = {},
                }
              | optional,
            extra_binds | Array String | optional,
            extra_env | Array String | optional,
            image | String | optional,
            pod_security_policy
              | Bool
              | doc "Enabled/Disable PodSecurityPolicy"
              | optional,
            secrets_encryption_config
              | refs."definitions.SecretsEncryptionConfig"
              | { _ | Dyn }
              | doc "Secrets encryption provider config"
              | optional,
            service_cluster_ip_range
              | String
              | doc "Virtual IP range that will be used by Kubernetes services"
              | optional,
            service_node_port_range
              | String
              | doc "Port range for services defined with NodePort type"
              | optional,
            win_extra_args
              | js2n.record.Record
                {
                  additional = 'Some Dyn,
                  patterns = { ".*" = std.contract.any_of [ Number, String ], },
                  properties = {},
                  required = {},
                }
              | optional,
            win_extra_binds | Array String | optional,
            win_extra_env | Array String | optional,
          },
      "definitions.KubeControllerService" =
        {
            cluster_cidr
              | String
              | doc "CIDR Range for Pods in cluster"
              | optional,
            extra_args
              | js2n.record.Record
                {
                  additional = 'Some Dyn,
                  patterns = { ".*" = std.contract.any_of [ Number, String ], },
                  properties = {},
                  required = {},
                }
              | optional,
            extra_binds | Array String | optional,
            extra_env | Array String | optional,
            image | String | optional,
            service_cluster_ip_range
              | String
              | doc "Virtual IP range that will be used by Kubernetes services"
              | optional,
            win_extra_args
              | js2n.record.Record
                {
                  additional = 'Some Dyn,
                  patterns = { ".*" = std.contract.any_of [ Number, String ], },
                  properties = {},
                  required = {},
                }
              | optional,
            win_extra_binds | Array String | optional,
            win_extra_env | Array String | optional,
          },
      "definitions.KubeletService" =
        {
            cluster_dns_server
              | String
              | doc "Cluster DNS service ip"
              | optional,
            cluster_domain
              | String
              | doc "Domain of the cluster (default: \"cluster.local\")"
              | optional,
            extra_args
              | js2n.record.Record
                {
                  additional = 'Some Dyn,
                  patterns = { ".*" = std.contract.any_of [ Number, String ], },
                  properties = {},
                  required = {},
                }
              | optional,
            extra_binds | Array String | optional,
            extra_env | Array String | optional,
            fail_swap_on | Bool | doc "Fail if swap is enabled" | optional,
            generate_serving_certificate
              | Bool
              | doc "Generate per node kubelet serving certificates created using kube-ca"
              | optional,
            image | String | optional,
            infra_container_image
              | String
              | doc "The image whose network/ipc namespaces containers in each pod will use"
              | optional,
            win_extra_args
              | js2n.record.Record
                {
                  additional = 'Some Dyn,
                  patterns = { ".*" = std.contract.any_of [ Number, String ], },
                  properties = {},
                  required = {},
                }
              | optional,
            win_extra_binds | Array String | optional,
            win_extra_env | Array String | optional,
          },
      "definitions.KubeproxyService" =
        {
            extra_args
              | js2n.record.Record
                {
                  additional = 'Some Dyn,
                  patterns = { ".*" = std.contract.any_of [ Number, String ], },
                  properties = {},
                  required = {},
                }
              | optional,
            extra_binds | Array String | optional,
            extra_env | Array String | optional,
            image | String | optional,
            win_extra_args
              | js2n.record.Record
                {
                  additional = 'Some Dyn,
                  patterns = { ".*" = std.contract.any_of [ Number, String ], },
                  properties = {},
                  required = {},
                }
              | optional,
            win_extra_binds | Array String | optional,
            win_extra_env | Array String | optional,
          },
      "definitions.LabelSelector" =
        {
            MatchExpressions
              | Array (
                std.contract.Sequence
                  [ refs."definitions.LabelSelectorRequirement", { _ | Dyn } ]
              ),
            MatchLabels
              | js2n.record.Record
                {
                  additional = 'Some Dyn,
                  patterns = { ".*" = std.contract.any_of [ Number, String ], },
                  properties = {},
                  required = {},
                },
          },
      "definitions.LabelSelectorRequirement" =
        { Key | String, Operator | String, Values | Array String, },
      "definitions.Limit" =
        {
            Burst | std.number.Integer,
            CacheSize | std.number.Integer,
            QPS | std.number.Integer,
            Type | String,
          },
      "definitions.LinearAutoscalerParams" =
        {
            cores_per_replica | Number | optional,
            max | std.number.Integer,
            min | std.number.Integer,
            nodes_per_replica | Number | optional,
            prevent_single_point_failure | Bool | optional,
          },
      "definitions.LoadBalancerOpenstackOpts" =
        {
            create-monitor | Bool,
            floating-network-id
              | String
              | doc "If specified, will create floating ip for loadbalancer, or do not create floating ip.",
            lb-method | String | doc "default to ROUND_ROBIN.",
            lb-provider | String,
            lb-version
              | String
              | doc "overrides autodetection. Only support v2.",
            manage-security-groups | Bool,
            monitor-delay | String,
            monitor-max-retries | std.number.Integer,
            monitor-timeout | String,
            subnet-id | String | doc "overrides autodetection.",
            use-octavia | Bool | doc "uses Octavia V2 service catalog endpoint",
          },
      "definitions.LocalObjectReference" = { Name | String, },
      "definitions.ManagedFieldsEntry" =
        {
            APIVersion | String,
            FieldsType | String,
            FieldsV1 | refs."definitions.FieldsV1" | { _ | Dyn },
            Manager | String,
            Operation | String,
            Time | String,
          },
      "definitions.MetadataOpenstackOpts" =
        { request-timeout | std.number.Integer, search-order | String, },
      "definitions.MonitoringConfig" =
        {
            metrics_server_priority_class_name
              | String
              | doc "Priority class name for Metrics-Server's \"metrics-server\" deployment"
              | optional,
            node_selector
              | js2n.record.Record
                {
                  additional = 'Some Dyn,
                  patterns = { ".*" = std.contract.any_of [ Number, String ], },
                  properties = {},
                  required = {},
                }
              | doc "NodeSelector key pair"
              | optional,
            options
              | js2n.record.Record
                {
                  additional = 'Some Dyn,
                  patterns = { ".*" = std.contract.any_of [ Number, String ], },
                  properties = {},
                  required = {},
                }
              | doc m%"
                These options are NOT for configuring the Metrics-Server's addon template.
                They are used to pass command args to the metric-server's deployment containers specifically.
              "%
              | optional,
            provider | String | doc "Monitoring server provider" | optional,
            replicas
              | std.number.Integer
              | doc "Number of monitoring addon pods",
            tolerations
              | Array (
                std.contract.Sequence
                  [ refs."definitions.Toleration", { _ | Dyn } ]
              )
              | doc "Tolerations for Deployments"
              | optional,
            update_strategy
              | refs."definitions.DeploymentStrategy"
              | { _ | Dyn }
              | doc "Update strategy"
              | optional,
          },
      "definitions.NFSVolumeSource" =
        { Path | String, ReadOnly | Bool, Server | String, },
      "definitions.NetworkConfig" =
        {
            aci_network_provider
              | refs."definitions.AciNetworkProvider"
              | { _ | Dyn }
              | doc "AciNetworkProvider"
              | optional,
            calico_network_provider
              | refs."definitions.CalicoNetworkProvider"
              | { _ | Dyn }
              | doc "CalicoNetworkProvider"
              | optional,
            canal_network_provider
              | refs."definitions.CanalNetworkProvider"
              | { _ | Dyn }
              | doc "CanalNetworkProvider"
              | optional,
            flannel_network_provider
              | refs."definitions.FlannelNetworkProvider"
              | { _ | Dyn }
              | doc "FlannelNetworkProvider"
              | optional,
            mtu
              | std.number.Integer
              | doc "Set MTU for CNI provider"
              | optional,
            node_selector
              | js2n.record.Record
                {
                  additional = 'Some Dyn,
                  patterns = { ".*" = std.contract.any_of [ Number, String ], },
                  properties = {},
                  required = {},
                }
              | doc "NodeSelector key pair"
              | optional,
            options
              | js2n.record.Record
                {
                  additional = 'Some Dyn,
                  patterns = { ".*" = std.contract.any_of [ Number, String ], },
                  properties = {},
                  required = {},
                }
              | doc "Plugin options to configure network properties"
              | optional,
            plugin
              | String
              | doc "Network Plugin That will be used in kubernetes cluster"
              | optional,
            tolerations
              | Array (
                std.contract.Sequence
                  [ refs."definitions.Toleration", { _ | Dyn } ]
              )
              | doc "Tolerations for Deployments"
              | optional,
            update_strategy
              | refs."definitions.DaemonSetUpdateStrategy"
              | { _ | Dyn }
              | doc "Network plugin daemonset upgrade strategy"
              | optional,
            weave_network_provider
              | refs."definitions.WeaveNetworkProvider"
              | { _ | Dyn }
              | doc "WeaveNetworkProvider"
              | optional,
          },
      "definitions.NetworkVshpereOpts" =
        { public-network | String | optional, },
      "definitions.NodeDrainInput" =
        {
            delete_local_data
              | Bool
              | doc "Continue even if there are pods using emptyDir"
              | optional,
            "force"
              | Bool
              | doc m%"
                Drain node even if there are pods not managed by a ReplicationController, Job, or DaemonSet
                Drain will not proceed without Force set to true if there are such pods
              "%
              | optional,
            grace_period
              | std.number.Integer
              | doc m%"
                Period of time in seconds given to each pod to terminate gracefully.
                If negative, the default value specified in the pod will be used
              "%
              | optional,
            ignore_daemonsets
              | Bool
              | doc m%"
                If there are DaemonSet-managed pods, drain will not proceed without IgnoreDaemonSets set to true
                (even when set to true, kubectl won't delete pods - so setting default to true)
              "%
              | optional,
            timeout
              | std.number.Integer
              | doc "Time to wait (in seconds) before giving up for one try",
          },
      "definitions.NodeUpgradeStrategy" =
        {
            drain | Bool | optional,
            max_unavailable_controlplane
              | String
              | doc "MaxUnavailableControlplane input can be a number of nodes or a percentage of nodes"
              | optional,
            max_unavailable_worker
              | String
              | doc "MaxUnavailableWorker input can be a number of nodes or a percentage of nodes (example, max_unavailable_worker: 2 OR max_unavailable_worker: 20%)"
              | optional,
            node_drain_input
              | refs."definitions.NodeDrainInput"
              | { _ | Dyn }
              | optional,
          },
      "definitions.Nodelocal" =
        {
            ip_address
              | String
              | doc "link-local IP for nodelocal DNS"
              | optional,
            node_local_dns_priority_class_name
              | String
              | doc "Priority class name for NodeLocal's \"node-local-dns\" daemonset"
              | optional,
            node_selector
              | js2n.record.Record
                {
                  additional = 'Some Dyn,
                  patterns = { ".*" = std.contract.any_of [ Number, String ], },
                  properties = {},
                  required = {},
                }
              | doc "NodeSelector key pair"
              | optional,
            update_strategy
              | refs."definitions.DaemonSetUpdateStrategy"
              | { _ | Dyn }
              | doc "Nodelocal DNS daemonset upgrade strategy"
              | optional,
          },
      "definitions.ObjectFieldSelector" =
        { APIVersion | String, FieldPath | String, },
      "definitions.OpenstackCloudProvider" =
        {
            block_storage
              | refs."definitions.BlockStorageOpenstackOpts"
              | { _ | Dyn },
            global | refs."definitions.GlobalOpenstackOpts" | { _ | Dyn },
            load_balancer
              | refs."definitions.LoadBalancerOpenstackOpts"
              | { _ | Dyn },
            metadata | refs."definitions.MetadataOpenstackOpts" | { _ | Dyn },
            route | refs."definitions.RouteOpenstackOpts" | { _ | Dyn },
          },
      "definitions.OwnerReference" =
        {
            APIVersion | String,
            BlockOwnerDeletion | Bool,
            Controller | Bool,
            Kind | String,
            Name | String,
            UID | String,
          },
      "definitions.PersistentVolumeClaimSpec" =
        {
            AccessModes | Array String,
            DataSource
              | refs."definitions.TypedLocalObjectReference"
              | { _ | Dyn },
            Resources | refs."definitions.ResourceRequirements" | { _ | Dyn },
            Selector | refs."definitions.LabelSelector" | { _ | Dyn },
            StorageClassName | String,
            VolumeMode | String,
            VolumeName | String,
          },
      "definitions.PersistentVolumeClaimTemplate" =
        {
            Annotations
              | js2n.record.Record
                {
                  additional = 'Some Dyn,
                  patterns = { ".*" = std.contract.any_of [ Number, String ], },
                  properties = {},
                  required = {},
                },
            ClusterName | String,
            CreationTimestamp | refs."definitions.Time" | { _ | Dyn },
            DeletionGracePeriodSeconds | std.number.Integer,
            DeletionTimestamp | String,
            Finalizers | Array String,
            GenerateName | String,
            Generation | std.number.Integer,
            Labels
              | js2n.record.Record
                {
                  additional = 'Some Dyn,
                  patterns = { ".*" = std.contract.any_of [ Number, String ], },
                  properties = {},
                  required = {},
                },
            ManagedFields
              | Array (
                std.contract.Sequence
                  [ refs."definitions.ManagedFieldsEntry", { _ | Dyn } ]
              ),
            Name | String,
            Namespace | String,
            OwnerReferences
              | Array (
                std.contract.Sequence
                  [ refs."definitions.OwnerReference", { _ | Dyn } ]
              ),
            ResourceVersion | String,
            SelfLink | String,
            Spec | refs."definitions.PersistentVolumeClaimSpec" | { _ | Dyn },
            UID | String,
          },
      "definitions.PersistentVolumeClaimVolumeSource" =
        { ClaimName | String, ReadOnly | Bool, },
      "definitions.PhotonPersistentDiskVolumeSource" =
        { FSType | String, PdID | String, },
      "definitions.Policy" =
        {
            APIVersion | String,
            Annotations
              | js2n.record.Record
                {
                  additional = 'Some Dyn,
                  patterns = { ".*" = std.contract.any_of [ Number, String ], },
                  properties = {},
                  required = {},
                },
            ClusterName | String,
            CreationTimestamp | refs."definitions.Time" | { _ | Dyn },
            DeletionGracePeriodSeconds | std.number.Integer,
            DeletionTimestamp | String,
            Finalizers | Array String,
            GenerateName | String,
            Generation | std.number.Integer,
            Kind | String,
            Labels
              | js2n.record.Record
                {
                  additional = 'Some Dyn,
                  patterns = { ".*" = std.contract.any_of [ Number, String ], },
                  properties = {},
                  required = {},
                },
            ManagedFields
              | Array (
                std.contract.Sequence
                  [ refs."definitions.ManagedFieldsEntry", { _ | Dyn } ]
              ),
            Name | String,
            Namespace | String,
            OmitStages | Array String,
            OwnerReferences
              | Array (
                std.contract.Sequence
                  [ refs."definitions.OwnerReference", { _ | Dyn } ]
              ),
            ResourceVersion | String,
            Rules
              | Array (
                std.contract.Sequence
                  [ refs."definitions.PolicyRule", { _ | Dyn } ]
              ),
            SelfLink | String,
            UID | String,
          },
      "definitions.PolicyRule" =
        {
            Level | String,
            Namespaces | Array String,
            NonResourceURLs | Array String,
            OmitStages | Array String,
            Resources
              | Array (
                std.contract.Sequence
                  [ refs."definitions.GroupResources", { _ | Dyn } ]
              ),
            UserGroups | Array String,
            Users | Array String,
            Verbs | Array String,
          },
      "definitions.PortworxVolumeSource" =
        { FSType | String, ReadOnly | Bool, VolumeID | String, },
      "definitions.PrivateRegistry" =
        {
            ecr_credential_plugin
              | refs."definitions.ECRCredentialPlugin"
              | { _ | Dyn }
              | doc "ECRCredentialPlugin"
              | optional,
            is_default | Bool | doc "Default registry" | optional,
            password | String | doc "Password for registry access" | optional,
            url | String | doc "URL for the registry" | optional,
            user | String | doc "User name for registry acces" | optional,
          },
      "definitions.ProjectedVolumeSource" =
        {
            DefaultMode | std.number.Integer,
            Sources
              | Array (
                std.contract.Sequence
                  [ refs."definitions.VolumeProjection", { _ | Dyn } ]
              ),
          },
      "definitions.ProviderConfiguration" =
        {
            AESCBC | refs."definitions.AESConfiguration" | { _ | Dyn },
            AESGCM | refs."definitions.AESConfiguration" | { _ | Dyn },
            Identity | refs."definitions.IdentityConfiguration" | { _ | Dyn },
            KMS | refs."definitions.KMSConfiguration" | { _ | Dyn },
            Secretbox | refs."definitions.SecretboxConfiguration" | { _ | Dyn },
          },
      "definitions.Quantity" = {},
      "definitions.QuobyteVolumeSource" =
        {
            Group | String,
            ReadOnly | Bool,
            Registry | String,
            Tenant | String,
            User | String,
            Volume | String,
          },
      "definitions.RBDVolumeSource" =
        {
            CephMonitors | Array String,
            FSType | String,
            Keyring | String,
            RBDImage | String,
            RBDPool | String,
            RadosUser | String,
            ReadOnly | Bool,
            SecretRef | refs."definitions.LocalObjectReference" | { _ | Dyn },
          },
      "definitions.RKEConfigNode" =
        {
            address
              | String
              | doc "IP or FQDN that is fully resolvable and used for SSH communication"
              | optional,
            docker_socket
              | String
              | doc "Optional - Docker socket on the node that will be used in tunneling"
              | optional,
            hostname_override
              | String
              | doc "Optional - Hostname of the node"
              | optional,
            internal_address
              | String
              | doc "Optional - Internal address that will be used for components communication"
              | optional,
            labels
              | js2n.record.Record
                {
                  additional = 'Some Dyn,
                  patterns = { ".*" = std.contract.any_of [ Number, String ], },
                  properties = {},
                  required = {},
                }
              | doc "Node Labels"
              | optional,
            nodeName
              | String
              | doc "Name of the host provisioned via docker machine"
              | optional,
            port
              | std.contract.any_of [ Number, String ]
              | doc "Port used for SSH communication"
              | optional,
            role
              | Array String
              | doc "Node role in kubernetes cluster (controlplane, worker, or etcd)"
              | optional,
            ssh_agent_auth | Bool | doc "SSH Agent Auth enable" | optional,
            ssh_cert | String | doc "SSH Certificate" | optional,
            ssh_cert_path | String | doc "SSH Certificate Path" | optional,
            ssh_key | String | doc "SSH Private Key" | optional,
            ssh_key_path | String | doc "SSH Private Key Path" | optional,
            taints
              | Array (
                std.contract.Sequence
                  [ refs."definitions.RKETaint", { _ | Dyn } ]
              )
              | doc "Node Taints"
              | optional,
            user | String | doc "SSH usesr that will be used by RKE" | optional,
          },
      "definitions.RKEConfigServices" =
        {
            etcd
              | refs."definitions.ETCDService"
              | { _ | Dyn }
              | doc "Etcd Service"
              | optional,
            kube-api
              | refs."definitions.KubeAPIService"
              | { _ | Dyn }
              | doc "KubeAPI Service"
              | optional,
            kube-controller
              | refs."definitions.KubeControllerService"
              | { _ | Dyn }
              | doc "KubeController Service"
              | optional,
            kubelet
              | refs."definitions.KubeletService"
              | { _ | Dyn }
              | doc "Kubelet Service"
              | optional,
            kubeproxy
              | refs."definitions.KubeproxyService"
              | { _ | Dyn }
              | doc "KubeProxy Service"
              | optional,
            scheduler
              | refs."definitions.SchedulerService"
              | { _ | Dyn }
              | doc "Scheduler Service"
              | optional,
          },
      "definitions.RKESystemImages" =
        {
            aci_cni_deploy_container
              | String
              | doc "Cni deployer container image for Cisco ACI"
              | optional,
            aci_controller_container
              | String
              | doc "Controller container image for Cisco ACI"
              | optional,
            aci_gbp_server_container
              | String
              | doc "GBP Server container image for Cisco ACI"
              | optional,
            aci_host_container
              | String
              | doc "host container image for Cisco ACI"
              | optional,
            aci_mcast_container
              | String
              | doc "mcast daemon container image for Cisco ACI"
              | optional,
            aci_opflex_container
              | String
              | doc "opflex agent container image for Cisco ACI"
              | optional,
            aci_opflex_server_container
              | String
              | doc "Opflex Server container image for Cisco ACI"
              | optional,
            aci_ovs_container
              | String
              | doc "OpenvSwitch container image for Cisco ACI"
              | optional,
            alpine | String | doc "Alpine image" | optional,
            calico_cni | String | doc "Calico CNI image" | optional,
            calico_controllers
              | String
              | doc "Calico Controllers image"
              | optional,
            calico_ctl | String | doc "Calicoctl image" | optional,
            calico_flexvol | String | doc "CalicoFlexVol image" | optional,
            calico_node | String | doc "Calico Node image" | optional,
            canal_cni | String | doc "Canal CNI image" | optional,
            canal_controllers
              | String
              | doc "Canal Controllers Image needed for Calico/Canal v3.14.0+"
              | optional,
            canal_flannel | String | doc "CanalFlannel image" | optional,
            canal_flexvol | String | doc "CanalFlexVol image" | optional,
            canal_node | String | doc "Canal Node Image" | optional,
            cert_downloader | String | doc "rke-cert-deployer image" | optional,
            coredns | String | doc "CoreDNS image" | optional,
            coredns_autoscaler
              | String
              | doc "CoreDNS autoscaler image"
              | optional,
            dnsmasq | String | doc "DNSMasq image" | optional,
            etcd | String | doc "etcd image" | optional,
            flannel | String | doc "Flannel image" | optional,
            flannel_cni | String | doc "Flannel CNI image" | optional,
            ingress | String | doc "Ingress Controller image" | optional,
            ingress_backend
              | String
              | doc "Ingress Controller Backend image"
              | optional,
            ingress_webhook | String | doc "Ingress Webhook image" | optional,
            kubedns | String | doc "KubeDNS image" | optional,
            kubedns_autoscaler
              | String
              | doc "KubeDNS autoscaler image"
              | optional,
            kubedns_sidecar | String | doc "KubeDNS side car image" | optional,
            kubernetes | String | doc "Kubernetes image" | optional,
            kubernetes_services_sidecar
              | String
              | doc "rke-service-sidekick image"
              | optional,
            metrics_server | String | doc "Metrics Server image" | optional,
            nginx_proxy | String | doc "rke-nginx-proxy image" | optional,
            nodelocal | String | doc "Nodelocal image" | optional,
            pod_infra_container
              | String
              | doc "Pod infra container image"
              | optional,
            weave_cni | String | doc "Weave CNI image" | optional,
            weave_node | String | doc "Weave Node image" | optional,
            windows_pod_infra_container
              | String
              | doc "Pod infra container image for Windows"
              | optional,
          },
      "definitions.RKETaint" =
        {
            effect | String | optional,
            key | String | optional,
            timeAdded | String | optional,
            value | String | optional,
          },
      "definitions.RancherKubernetesEngineConfig" =
        {
            addon_job_timeout
              | std.number.Integer
              | doc "Timeout in seconds for status check on addon deployment jobs"
              | optional,
            addons
              | String
              | doc "YAML manifest for user provided addons to be deployed on the cluster"
              | optional,
            addons_include
              | Array String
              | doc "List of urls or paths for addons"
              | optional,
            authentication
              | refs."definitions.AuthnConfig"
              | { _ | Dyn }
              | doc "Authentication configuration used in the cluster (default: x509)"
              | optional,
            authorization
              | refs."definitions.AuthzConfig"
              | { _ | Dyn }
              | doc "Authorization mode configuration used in the cluster"
              | optional,
            bastion_host
              | refs."definitions.BastionHost"
              | { _ | Dyn }
              | doc "Bastion/Jump Host configuration"
              | optional,
            cloud_provider
              | refs."definitions.CloudProvider"
              | { _ | Dyn }
              | doc "Cloud Provider options"
              | optional,
            cluster_name
              | String
              | doc "Cluster Name used in the kube config"
              | optional,
            dns
              | refs."definitions.DNSConfig"
              | { _ | Dyn }
              | doc "DNS Config"
              | optional,
            enable_cri_dockerd
              | Bool
              | doc "Enable/disable using cri-dockerd"
              | optional,
            ignore_docker_version
              | Bool
              | doc "Enable/disable strict docker version checking"
              | optional,
            ingress
              | refs."definitions.IngressConfig"
              | { _ | Dyn }
              | doc "Ingress controller used in the cluster"
              | optional,
            kubernetes_version
              | String
              | doc "Kubernetes version to use (if kubernetes image is specified, image version takes precedence)"
              | optional,
            monitoring
              | refs."definitions.MonitoringConfig"
              | { _ | Dyn }
              | doc "Monitoring Config"
              | optional,
            network
              | refs."definitions.NetworkConfig"
              | { _ | Dyn }
              | doc "Network configuration used in the kubernetes cluster (flannel, calico)"
              | optional,
            nodes
              | Array (
                std.contract.Sequence
                  [ refs."definitions.RKEConfigNode", { _ | Dyn } ]
              )
              | doc "Kubernetes nodes"
              | optional,
            prefix_path | String | doc "kubernetes directory path" | optional,
            private_registries
              | Array (
                std.contract.Sequence
                  [ refs."definitions.PrivateRegistry", { _ | Dyn } ]
              )
              | doc "List of private registries and their credentials"
              | optional,
            restore
              | refs."definitions.RestoreConfig"
              | { _ | Dyn }
              | doc "RestoreCluster flag"
              | optional,
            rotate_certificates
              | refs."definitions.RotateCertificates"
              | { _ | Dyn }
              | doc "Rotating Certificates Option"
              | optional,
            rotate_encryption_key
              | Bool
              | doc "Rotate Encryption Key Option"
              | optional,
            services
              | refs."definitions.RKEConfigServices"
              | { _ | Dyn }
              | doc "Kubernetes components"
              | optional,
            ssh_agent_auth | Bool | doc "SSH Agent Auth enable" | optional,
            ssh_cert_path | String | doc "SSH Certificate Path" | optional,
            ssh_key_path | String | doc "SSH Private Key Path" | optional,
            system_images
              | refs."definitions.RKESystemImages"
              | { _ | Dyn }
              | doc "List of images used internally for proxy, cert download and kubedns"
              | optional,
            upgrade_strategy
              | refs."definitions.NodeUpgradeStrategy"
              | { _ | Dyn }
              | doc "Upgrade Strategy for the cluster"
              | optional,
            win_prefix_path
              | String
              | doc "kubernetes directory path for windows"
              | optional,
          },
      "definitions.ResourceConfiguration" =
        {
            Providers
              | Array (
                std.contract.Sequence
                  [ refs."definitions.ProviderConfiguration", { _ | Dyn } ]
              ),
            Resources | Array String,
          },
      "definitions.ResourceFieldSelector" =
        {
            ContainerName | String,
            Divisor | refs."definitions.Quantity" | { _ | Dyn },
            Resource | String,
          },
      "definitions.ResourceRequirements" =
        {
            Limits
              | js2n.record.Record
                {
                  additional = 'Some Dyn,
                  patterns =
                    {
                        ".*" =
                          std.contract.Sequence
                              [ refs."definitions.Quantity", { _ | Dyn } ],
                      },
                  properties = {},
                  required = {},
                },
            Requests
              | js2n.record.Record
                {
                  additional = 'Some Dyn,
                  patterns =
                    {
                        ".*" =
                          std.contract.Sequence
                              [ refs."definitions.Quantity", { _ | Dyn } ],
                      },
                  properties = {},
                  required = {},
                },
          },
      "definitions.RestoreConfig" =
        { restore | Bool | optional, snapshot_name | String | optional, },
      "definitions.RollingUpdateDaemonSet" =
        {
            MaxSurge | refs."definitions.IntOrString" | { _ | Dyn },
            MaxUnavailable | refs."definitions.IntOrString" | { _ | Dyn },
          },
      "definitions.RollingUpdateDeployment" =
        {
            MaxSurge | refs."definitions.IntOrString" | { _ | Dyn },
            MaxUnavailable | refs."definitions.IntOrString" | { _ | Dyn },
          },
      "definitions.RotateCertificates" =
        {
            CACertificates | Bool | doc "Rotate CA Certificates",
            Services | Array String | doc "Services to rotate their certs",
          },
      "definitions.RouteOpenstackOpts" =
        { router-id | String | doc "required", },
      "definitions.S3BackupConfig" =
        {
            access_key | String,
            bucket_name | String,
            custom_ca | String,
            endpoint | String,
            folder | String,
            region | String,
            secret_key | String,
          },
      "definitions.ScaleIOVolumeSource" =
        {
            FSType | String,
            Gateway | String,
            ProtectionDomain | String,
            ReadOnly | Bool,
            SSLEnabled | Bool,
            SecretRef | refs."definitions.LocalObjectReference" | { _ | Dyn },
            StorageMode | String,
            StoragePool | String,
            System | String,
            VolumeName | String,
          },
      "definitions.SchedulerService" =
        {
            extra_args
              | js2n.record.Record
                {
                  additional = 'Some Dyn,
                  patterns = { ".*" = std.contract.any_of [ Number, String ], },
                  properties = {},
                  required = {},
                }
              | optional,
            extra_binds | Array String | optional,
            extra_env | Array String | optional,
            image | String | optional,
            win_extra_args
              | js2n.record.Record
                {
                  additional = 'Some Dyn,
                  patterns = { ".*" = std.contract.any_of [ Number, String ], },
                  properties = {},
                  required = {},
                }
              | optional,
            win_extra_binds | Array String | optional,
            win_extra_env | Array String | optional,
          },
      "definitions.SecretKeySelector" =
        { Key | String, Name | String, Optional | Bool, },
      "definitions.SecretProjection" =
        {
            Items
              | Array (
                std.contract.Sequence
                  [ refs."definitions.KeyToPath", { _ | Dyn } ]
              ),
            Name | String,
            Optional | Bool,
          },
      "definitions.SecretVolumeSource" =
        {
            DefaultMode | std.number.Integer,
            Items
              | Array (
                std.contract.Sequence
                  [ refs."definitions.KeyToPath", { _ | Dyn } ]
              ),
            Optional | Bool,
            SecretName | String,
          },
      "definitions.SecretboxConfiguration" =
        {
            Keys
              | Array (
                std.contract.Sequence [ refs."definitions.Key", { _ | Dyn } ]
              ),
          },
      "definitions.SecretsEncryptionConfig" =
        {
            custom_config
              | refs."definitions.EncryptionConfiguration"
              | { _ | Dyn }
              | doc "Custom Encryption Provider configuration object",
            enabled
              | Bool
              | doc "Enable/disable secrets encryption provider config"
              | optional,
          },
      "definitions.ServiceAccountTokenProjection" =
        {
            Audience | String,
            ExpirationSeconds | std.number.Integer,
            Path | String,
          },
      "definitions.ServiceOverride" =
        {
            region | String,
            service | String,
            signing-method | String,
            signing-name | String,
            signing-region | String,
            url | String,
          },
      "definitions.StorageOSVolumeSource" =
        {
            FSType | String,
            ReadOnly | Bool,
            SecretRef | refs."definitions.LocalObjectReference" | { _ | Dyn },
            VolumeName | String,
            VolumeNamespace | String,
          },
      "definitions.Time" = {},
      "definitions.Toleration" =
        {
            Effect | String,
            Key | String,
            Operator | String,
            TolerationSeconds | std.number.Integer,
            Value | String,
          },
      "definitions.TypedLocalObjectReference" =
        { APIGroup | String, Kind | String, Name | String, },
      "definitions.Unknown" =
        {
            ContentEncoding | String,
            ContentType | String,
            Raw | String,
            apiVersion | String | optional,
            kind | String | optional,
          },
      "definitions.VirtualCenterConfig" =
        {
            datacenters | String | optional,
            password | String | optional,
            port | std.contract.any_of [ Number, String ] | optional,
            soap-roundtrip-count | std.number.Integer | optional,
            user | String | optional,
          },
      "definitions.VolumeProjection" =
        {
            ConfigMap | refs."definitions.ConfigMapProjection" | { _ | Dyn },
            DownwardAPI
              | refs."definitions.DownwardAPIProjection"
              | { _ | Dyn },
            Secret | refs."definitions.SecretProjection" | { _ | Dyn },
            ServiceAccountToken
              | refs."definitions.ServiceAccountTokenProjection"
              | { _ | Dyn },
          },
      "definitions.VsphereCloudProvider" =
        {
            disk | refs."definitions.DiskVsphereOpts" | { _ | Dyn } | optional,
            global
              | refs."definitions.GlobalVsphereOpts"
              | { _ | Dyn }
              | optional,
            network
              | refs."definitions.NetworkVshpereOpts"
              | { _ | Dyn }
              | optional,
            virtual_center
              | js2n.record.Record
                {
                  additional = 'Some Dyn,
                  patterns =
                    {
                        ".*" =
                          std.contract.Sequence
                              [
                                refs."definitions.VirtualCenterConfig",
                                { _ | Dyn }
                              ],
                      },
                  properties = {},
                  required = {},
                }
              | optional,
            workspace
              | refs."definitions.WorkspaceVsphereOpts"
              | { _ | Dyn }
              | optional,
          },
      "definitions.VsphereVirtualDiskVolumeSource" =
        {
            FSType | String,
            StoragePolicyID | String,
            StoragePolicyName | String,
            VolumePath | String,
          },
      "definitions.WeaveNetworkProvider" = { password | String | optional, },
      "definitions.WorkspaceVsphereOpts" =
        {
            datacenter | String | optional,
            default-datastore | String | optional,
            folder | String | optional,
            resourcepool-path | String | optional,
            server | String | optional,
          },
    }
    in
  refs."definitions.RancherKubernetesEngineConfig"