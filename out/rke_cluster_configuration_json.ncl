# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.AESConfiguration" =
        {
            keys
              | Array (
                std.contract.Sequence [ refs."definitions.Key", { _ | Dyn } ]
              ),
          },
      "definitions.AWSCloudProvider" =
        {
            global | refs."definitions.GlobalAwsOpts" | { _ | Dyn },
            serviceOverride
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
            fsType | String | optional,
            partition | std.number.Integer | optional,
            readOnly | Bool | optional,
            volumeID | String,
          },
      "definitions.AciNetworkProvider" =
        {
            aep | String | optional,
            apicHosts | Array String | optional,
            apicRefreshTime | String | optional,
            apicUserCrt | String | optional,
            apicUserKey | String | optional,
            apicUserName | String | optional,
            capic | String | optional,
            controllerLogLevel | String | optional,
            dropLogEnable | String | optional,
            enableEndpointSlice | String | optional,
            encapType | String | optional,
            epRegistry | String | optional,
            externDynamic | String | optional,
            externStatic | String | optional,
            gbpPodSubnet | String | optional,
            hostAgentLogLevel | String | optional,
            imagePullPolicy | String | optional,
            imagePullSecret | String | optional,
            infraVlan | String | optional,
            installIstio | String | optional,
            istioProfile | String | optional,
            kafkaBrokers | Array String | optional,
            kafkaClientCrt | String | optional,
            kafkaClientKey | String | optional,
            kubeApiVlan | String | optional,
            l3out | String | optional,
            l3outExternalNetworks | Array String | optional,
            maxNodesSvcGraph | String | optional,
            mcastRangeEnd | String | optional,
            mcastRangeStart | String | optional,
            noPriorityClass | String | optional,
            nodeSubnet | String | optional,
            nodeSvcSubnet | String | optional,
            opflexClientSsl | String | optional,
            opflexLogLevel | String | optional,
            opflexMode | String | optional,
            opflexServerPort
              | std.contract.any_of [ Number, String ]
              | optional,
            overlayVrfName | String | optional,
            ovsMemoryLimit | String | optional,
            pbrTrackingNonSnat | String | optional,
            podSubnetChunkSize | String | optional,
            runGbpContainer | String | optional,
            runOpflexServerContainer | String | optional,
            serviceMonitorInterval | String | optional,
            serviceVlan | String | optional,
            snatContractScope | String | optional,
            snatNamespace | String | optional,
            snatPortRangeEnd
              | std.contract.any_of [ Number, String ]
              | optional,
            snatPortRangeStart
              | std.contract.any_of [ Number, String ]
              | optional,
            snatPortsPerNode
              | std.contract.any_of [ Number, String ]
              | optional,
            subnetDomainName | String | optional,
            systemId | String | optional,
            tenant | String | optional,
            token | String | optional,
            useAciAnywhereCrd | String | optional,
            useAciCniPriorityClass | String | optional,
            useHostNetnsVolume | String | optional,
            useOpflexServerVolume | String | optional,
            usePrivilegedContainer | String | optional,
            vmmController | String | optional,
            vmmDomain | String | optional,
            vrfName | String | optional,
            vrfTenant | String | optional,
          },
      "definitions.AdmissionConfiguration" =
        {
            TypeMeta | refs."definitions.TypeMeta" | { _ | Dyn },
            plugins
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
            configuration | refs."definitions.Unknown" | { _ | Dyn },
            name | String,
            path | String,
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
            maxAge | std.number.Integer | optional,
            maxBackup | std.number.Integer | optional,
            maxSize | std.number.Integer | optional,
            path | String | optional,
            policy | refs."definitions.Policy" | { _ | Dyn } | optional,
          },
      "definitions.AuthWebhookConfig" =
        {
            cacheTimeout
              | String
              | doc "CacheTimeout controls how long to cache authentication decisions"
              | optional,
            configFile
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
            cachingMode | String | optional,
            diskName | String,
            diskURI | String,
            fsType | String | optional,
            kind | String | optional,
            readOnly | Bool | optional,
          },
      "definitions.AzureFileVolumeSource" =
        {
            readOnly | Bool | optional,
            secretName | String,
            shareName | String,
          },
      "definitions.BackupConfig" =
        {
            enabled | Bool | optional,
            intervalHours | std.number.Integer | optional,
            retention | std.number.Integer | optional,
            s3BackupConfig | refs."definitions.S3BackupConfig" | { _ | Dyn },
            safeTimestamp | Bool | optional,
            timeout | std.number.Integer | optional,
          },
      "definitions.BastionHost" =
        {
            address | String | doc "Address of Bastion Host" | optional,
            ignoreProxyEnvVars
              | Bool
              | doc "Ignore proxy environment variables"
              | optional,
            port
              | std.contract.any_of [ Number, String ]
              | doc "SSH Port of Bastion Host"
              | optional,
            sshAgentAuth | Bool | doc "SSH Agent Auth enable" | optional,
            sshCert | String | doc "SSH Certificate" | optional,
            sshCertPath | String | doc "SSH Certificate Path" | optional,
            sshKey | String | doc "SSH Private Key" | optional,
            sshKeyPath | String | doc "SSH Private Key Path" | optional,
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
            driver | String,
            fsType | String | optional,
            nodePublishSecretRef
              | refs."definitions.LocalObjectReference"
              | { _ | Dyn }
              | optional,
            readOnly | Bool | optional,
            volumeAttributes
              | js2n.record.Record
                {
                  additional = 'Some Dyn,
                  patterns = { ".*" = std.contract.any_of [ Number, String ], },
                  properties = {},
                  required = {},
                }
              | optional,
          },
      "definitions.CalicoNetworkProvider" =
        {
            cloudProvider | String | doc "Cloud provider type used with calico",
          },
      "definitions.CanalNetworkProvider" = { iface | String, },
      "definitions.CephFSVolumeSource" =
        {
            monitors | Array String,
            path | String | optional,
            readOnly | Bool | optional,
            secretFile | String | optional,
            secretRef
              | refs."definitions.LocalObjectReference"
              | { _ | Dyn }
              | optional,
            user | String | optional,
          },
      "definitions.CinderVolumeSource" =
        {
            fsType | String | optional,
            readOnly | Bool | optional,
            secretRef
              | refs."definitions.LocalObjectReference"
              | { _ | Dyn }
              | optional,
            volumeID | String,
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
        {
            LocalObjectReference
              | refs."definitions.LocalObjectReference"
              | { _ | Dyn },
            key | String,
            "optional" | Bool | optional,
          },
      "definitions.ConfigMapProjection" =
        {
            LocalObjectReference
              | refs."definitions.LocalObjectReference"
              | { _ | Dyn },
            items
              | Array (
                std.contract.Sequence
                  [ refs."definitions.KeyToPath", { _ | Dyn } ]
              )
              | optional,
            "optional" | Bool | optional,
          },
      "definitions.ConfigMapVolumeSource" =
        {
            LocalObjectReference
              | refs."definitions.LocalObjectReference"
              | { _ | Dyn },
            defaultMode | std.number.Integer | optional,
            items
              | Array (
                std.contract.Sequence
                  [ refs."definitions.KeyToPath", { _ | Dyn } ]
              )
              | optional,
            "optional" | Bool | optional,
          },
      "definitions.Configuration" =
        {
            TypeMeta | refs."definitions.TypeMeta" | { _ | Dyn },
            limits
              | Array (
                std.contract.Sequence [ refs."definitions.Limit", { _ | Dyn } ]
              ),
          },
      "definitions.DNSConfig" =
        {
            linearAutoscalerParams
              | refs."definitions.LinearAutoscalerParams"
              | { _ | Dyn }
              | doc "Autoscaler fields to determine number of dns replicas"
              | optional,
            nodeSelector
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
            updateStrategy
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
            rollingUpdate
              | refs."definitions.RollingUpdateDaemonSet"
              | { _ | Dyn }
              | optional,
            strategy | String | optional,
          },
      "definitions.DeploymentStrategy" =
        {
            rollingUpdate
              | refs."definitions.RollingUpdateDeployment"
              | { _ | Dyn }
              | optional,
            strategy | String | optional,
          },
      "definitions.DiskVsphereOpts" =
        { scsicontrollertype | String | optional, },
      "definitions.DownwardAPIProjection" =
        {
            items
              | Array (
                std.contract.Sequence
                  [ refs."definitions.DownwardAPIVolumeFile", { _ | Dyn } ]
              )
              | optional,
          },
      "definitions.DownwardAPIVolumeFile" =
        {
            fieldRef
              | refs."definitions.ObjectFieldSelector"
              | { _ | Dyn }
              | optional,
            mode | std.number.Integer | optional,
            path | String,
            resourceFieldRef
              | refs."definitions.ResourceFieldSelector"
              | { _ | Dyn }
              | optional,
          },
      "definitions.DownwardAPIVolumeSource" =
        {
            defaultMode | std.number.Integer | optional,
            items
              | Array (
                std.contract.Sequence
                  [ refs."definitions.DownwardAPIVolumeFile", { _ | Dyn } ]
              )
              | optional,
          },
      "definitions.Duration" = {},
      "definitions.ECRCredentialPlugin" =
        {
            awsAccessKeyId | String | optional,
            awsAccessToken | String | optional,
            awsSecretAccessKey | String | optional,
          },
      "definitions.ETCDService" =
        {
            backupConfig
              | refs."definitions.BackupConfig"
              | { _ | Dyn }
              | doc "Backup backend for etcd snapshots"
              | optional,
            caCert | String | doc "External CA certificate" | optional,
            cert | String | doc "External Client certificate" | optional,
            creation | String | doc "Etcd snapshot Creation period" | optional,
            externalUrls | Array String | doc "List of etcd urls" | optional,
            extraArgs
              | js2n.record.Record
                {
                  additional = 'Some Dyn,
                  patterns = { ".*" = std.contract.any_of [ Number, String ], },
                  properties = {},
                  required = {},
                }
              | optional,
            extraBinds | Array String | optional,
            extraEnv | Array String | optional,
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
            winExtraArgs
              | js2n.record.Record
                {
                  additional = 'Some Dyn,
                  patterns = { ".*" = std.contract.any_of [ Number, String ], },
                  properties = {},
                  required = {},
                }
              | optional,
            winExtraBinds | Array String | optional,
            winExtraEnv | Array String | optional,
          },
      "definitions.EmptyDirVolumeSource" =
        {
            medium | String | optional,
            sizeLimit | refs."definitions.Quantity" | { _ | Dyn } | optional,
          },
      "definitions.EncryptionConfiguration" =
        {
            apiVersion | String | optional,
            kind | String | optional,
            resources
              | Array (
                std.contract.Sequence
                  [ refs."definitions.ResourceConfiguration", { _ | Dyn } ]
              ),
          },
      "definitions.EnvVarSource" =
        {
            configMapKeyRef
              | refs."definitions.ConfigMapKeySelector"
              | { _ | Dyn }
              | optional,
            fieldRef
              | refs."definitions.ObjectFieldSelector"
              | { _ | Dyn }
              | optional,
            resourceFieldRef
              | refs."definitions.ResourceFieldSelector"
              | { _ | Dyn }
              | optional,
            secretKeyRef
              | refs."definitions.SecretKeySelector"
              | { _ | Dyn }
              | optional,
          },
      "definitions.EphemeralVolumeSource" =
        {
            volumeClaimTemplate
              | refs."definitions.PersistentVolumeClaimTemplate"
              | { _ | Dyn }
              | optional,
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
            name | String,
            value | String | optional,
            valueFrom
              | refs."definitions.EnvVarSource"
              | { _ | Dyn }
              | optional,
          },
      "definitions.ExtraVolume" =
        {
            VolumeSource | refs."definitions.VolumeSource" | { _ | Dyn },
            name | String,
          },
      "definitions.ExtraVolumeMount" =
        {
            mountPath | String,
            mountPropagation | String | optional,
            name | String,
            readOnly | Bool | optional,
            subPath | String | optional,
            subPathExpr | String | optional,
          },
      "definitions.FCVolumeSource" =
        {
            fsType | String | optional,
            lun | std.number.Integer | optional,
            readOnly | Bool | optional,
            targetWWNs | Array String | optional,
            wwids | Array String | optional,
          },
      "definitions.FieldsV1" = {},
      "definitions.FlannelNetworkProvider" =
        { iface | String | doc "Alternate cloud interface for flannel", },
      "definitions.FlexVolumeSource" =
        {
            driver | String,
            fsType | String | optional,
            options
              | js2n.record.Record
                {
                  additional = 'Some Dyn,
                  patterns = { ".*" = std.contract.any_of [ Number, String ], },
                  properties = {},
                  required = {},
                }
              | optional,
            readOnly | Bool | optional,
            secretRef
              | refs."definitions.LocalObjectReference"
              | { _ | Dyn }
              | optional,
          },
      "definitions.FlockerVolumeSource" =
        { datasetName | String | optional, datasetUUID | String | optional, },
      "definitions.GCEPersistentDiskVolumeSource" =
        {
            fsType | String | optional,
            partition | std.number.Integer | optional,
            pdName | String,
            readOnly | Bool | optional,
          },
      "definitions.GitRepoVolumeSource" =
        {
            directory | String | optional,
            repository | String,
            revision | String | optional,
          },
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
        { endpoints | String, path | String, readOnly | Bool | optional, },
      "definitions.GroupResources" =
        {
            group | String | optional,
            resourceNames | Array String | optional,
            resources | Array String | optional,
          },
      "definitions.HostPathVolumeSource" =
        { path | String, type | String | optional, },
      "definitions.ISCSIVolumeSource" =
        {
            chapAuthDiscovery | Bool | optional,
            chapAuthSession | Bool | optional,
            fsType | String | optional,
            initiatorName | String | optional,
            iqn | String,
            iscsiInterface | String | optional,
            lun | std.number.Integer,
            portals | Array String | optional,
            readOnly | Bool | optional,
            secretRef
              | refs."definitions.LocalObjectReference"
              | { _ | Dyn }
              | optional,
            targetPortal | String,
          },
      "definitions.IdentityConfiguration" = {},
      "definitions.IngressConfig" =
        {
            defaultBackend
              | Bool
              | doc "Enable or disable nginx default-http-backend"
              | optional,
            defaultHttpBackendPriorityClassName
              | String
              | doc "Priority class name for Nginx-Ingress's \"default-http-backend\" deployment"
              | optional,
            dnsPolicy | String | doc "DNS Policy" | optional,
            extraArgs
              | js2n.record.Record
                {
                  additional = 'Some Dyn,
                  patterns = { ".*" = std.contract.any_of [ Number, String ], },
                  properties = {},
                  required = {},
                }
              | doc "Ingress controller extra arguments"
              | optional,
            extraEnvs
              | Array (
                std.contract.Sequence
                  [ refs."definitions.ExtraEnv", { _ | Dyn } ]
              )
              | doc "Extra Env vars"
              | optional,
            extraVolumeMounts
              | Array (
                std.contract.Sequence
                  [ refs."definitions.ExtraVolumeMount", { _ | Dyn } ]
              )
              | doc "Extra volume mounts"
              | optional,
            extraVolumes
              | Array (
                std.contract.Sequence
                  [ refs."definitions.ExtraVolume", { _ | Dyn } ]
              )
              | doc "Extra volumes"
              | optional,
            httpPort
              | std.contract.any_of [ Number, String ]
              | doc "Http port for ingress controller daemonset"
              | optional,
            httpsPort
              | std.contract.any_of [ Number, String ]
              | doc "Https port for ingress controller daemonset"
              | optional,
            networkMode
              | String
              | doc "NetworkMode selector for ingress controller pods. Default is HostNetwork"
              | optional,
            nginxIngressControllerPriorityClassName
              | String
              | doc "Priority class name for Nginx-Ingress's \"nginx-ingress-controller\" daemonset"
              | optional,
            nodeSelector
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
            updateStrategy
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
            cachesize | std.number.Integer | optional,
            endpoint | String,
            name | String,
            timeout | refs."definitions.Duration" | { _ | Dyn } | optional,
          },
      "definitions.Key" = { name | String, secret | String, },
      "definitions.KeyToPath" =
        { key | String, mode | std.number.Integer | optional, path | String, },
      "definitions.KubeAPIService" =
        {
            admissionConfiguration
              | refs."definitions.AdmissionConfiguration"
              | { _ | Dyn }
              | doc "AdmissionConfiguration"
              | optional,
            alwaysPullImages
              | Bool
              | doc "Enable/Disable AlwaysPullImages admissions plugin"
              | optional,
            auditLog
              | refs."definitions.AuditLog"
              | { _ | Dyn }
              | doc "Audit Log Configuration"
              | optional,
            eventRateLimit
              | refs."definitions.EventRateLimit"
              | { _ | Dyn }
              | doc "Event Rate Limit configuration"
              | optional,
            extraArgs
              | js2n.record.Record
                {
                  additional = 'Some Dyn,
                  patterns = { ".*" = std.contract.any_of [ Number, String ], },
                  properties = {},
                  required = {},
                }
              | optional,
            extraBinds | Array String | optional,
            extraEnv | Array String | optional,
            image | String | optional,
            podSecurityPolicy
              | Bool
              | doc "Enabled/Disable PodSecurityPolicy"
              | optional,
            secretsEncryptionConfig
              | refs."definitions.SecretsEncryptionConfig"
              | { _ | Dyn }
              | doc "Secrets encryption provider config"
              | optional,
            serviceClusterIpRange
              | String
              | doc "Virtual IP range that will be used by Kubernetes services"
              | optional,
            serviceNodePortRange
              | String
              | doc "Port range for services defined with NodePort type"
              | optional,
            winExtraArgs
              | js2n.record.Record
                {
                  additional = 'Some Dyn,
                  patterns = { ".*" = std.contract.any_of [ Number, String ], },
                  properties = {},
                  required = {},
                }
              | optional,
            winExtraBinds | Array String | optional,
            winExtraEnv | Array String | optional,
          },
      "definitions.KubeControllerService" =
        {
            clusterCidr
              | String
              | doc "CIDR Range for Pods in cluster"
              | optional,
            extraArgs
              | js2n.record.Record
                {
                  additional = 'Some Dyn,
                  patterns = { ".*" = std.contract.any_of [ Number, String ], },
                  properties = {},
                  required = {},
                }
              | optional,
            extraBinds | Array String | optional,
            extraEnv | Array String | optional,
            image | String | optional,
            serviceClusterIpRange
              | String
              | doc "Virtual IP range that will be used by Kubernetes services"
              | optional,
            winExtraArgs
              | js2n.record.Record
                {
                  additional = 'Some Dyn,
                  patterns = { ".*" = std.contract.any_of [ Number, String ], },
                  properties = {},
                  required = {},
                }
              | optional,
            winExtraBinds | Array String | optional,
            winExtraEnv | Array String | optional,
          },
      "definitions.KubeletService" =
        {
            clusterDnsServer | String | doc "Cluster DNS service ip" | optional,
            clusterDomain
              | String
              | doc "Domain of the cluster (default: \"cluster.local\")"
              | optional,
            extraArgs
              | js2n.record.Record
                {
                  additional = 'Some Dyn,
                  patterns = { ".*" = std.contract.any_of [ Number, String ], },
                  properties = {},
                  required = {},
                }
              | optional,
            extraBinds | Array String | optional,
            extraEnv | Array String | optional,
            failSwapOn | Bool | doc "Fail if swap is enabled" | optional,
            generateServingCertificate
              | Bool
              | doc "Generate per node kubelet serving certificates created using kube-ca"
              | optional,
            image | String | optional,
            infraContainerImage
              | String
              | doc "The image whose network/ipc namespaces containers in each pod will use"
              | optional,
            winExtraArgs
              | js2n.record.Record
                {
                  additional = 'Some Dyn,
                  patterns = { ".*" = std.contract.any_of [ Number, String ], },
                  properties = {},
                  required = {},
                }
              | optional,
            winExtraBinds | Array String | optional,
            winExtraEnv | Array String | optional,
          },
      "definitions.KubeproxyService" =
        {
            extraArgs
              | js2n.record.Record
                {
                  additional = 'Some Dyn,
                  patterns = { ".*" = std.contract.any_of [ Number, String ], },
                  properties = {},
                  required = {},
                }
              | optional,
            extraBinds | Array String | optional,
            extraEnv | Array String | optional,
            image | String | optional,
            winExtraArgs
              | js2n.record.Record
                {
                  additional = 'Some Dyn,
                  patterns = { ".*" = std.contract.any_of [ Number, String ], },
                  properties = {},
                  required = {},
                }
              | optional,
            winExtraBinds | Array String | optional,
            winExtraEnv | Array String | optional,
          },
      "definitions.LabelSelector" =
        {
            matchExpressions
              | Array (
                std.contract.Sequence
                  [ refs."definitions.LabelSelectorRequirement", { _ | Dyn } ]
              )
              | optional,
            matchLabels
              | js2n.record.Record
                {
                  additional = 'Some Dyn,
                  patterns = { ".*" = std.contract.any_of [ Number, String ], },
                  properties = {},
                  required = {},
                }
              | optional,
          },
      "definitions.LabelSelectorRequirement" =
        { key | String, operator | String, values | Array String | optional, },
      "definitions.Limit" =
        {
            burst | std.number.Integer,
            cacheSize | std.number.Integer | optional,
            qps | std.number.Integer,
            type | String,
          },
      "definitions.LinearAutoscalerParams" =
        {
            coresPerReplica | Number | optional,
            max | std.number.Integer | optional,
            min | std.number.Integer | optional,
            nodesPerReplica | Number | optional,
            preventSinglePointFailure | Bool | optional,
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
      "definitions.LocalObjectReference" = { name | String | optional, },
      "definitions.ManagedFieldsEntry" =
        {
            apiVersion | String | optional,
            fieldsType | String | optional,
            fieldsV1 | refs."definitions.FieldsV1" | { _ | Dyn } | optional,
            manager | String | optional,
            operation | String | optional,
            time | String | optional,
          },
      "definitions.MetadataOpenstackOpts" =
        { request-timeout | std.number.Integer, search-order | String, },
      "definitions.MonitoringConfig" =
        {
            metricsServerPriorityClassName
              | String
              | doc "Priority class name for Metrics-Server's \"metrics-server\" deployment"
              | optional,
            nodeSelector
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
              | doc "Number of monitoring addon pods"
              | optional,
            tolerations
              | Array (
                std.contract.Sequence
                  [ refs."definitions.Toleration", { _ | Dyn } ]
              )
              | doc "Tolerations for Deployments"
              | optional,
            updateStrategy
              | refs."definitions.DeploymentStrategy"
              | { _ | Dyn }
              | doc "Update strategy"
              | optional,
          },
      "definitions.NFSVolumeSource" =
        { path | String, readOnly | Bool | optional, server | String, },
      "definitions.NetworkConfig" =
        {
            aciNetworkProvider
              | refs."definitions.AciNetworkProvider"
              | { _ | Dyn }
              | doc "AciNetworkProvider"
              | optional,
            calicoNetworkProvider
              | refs."definitions.CalicoNetworkProvider"
              | { _ | Dyn }
              | doc "CalicoNetworkProvider"
              | optional,
            canalNetworkProvider
              | refs."definitions.CanalNetworkProvider"
              | { _ | Dyn }
              | doc "CanalNetworkProvider"
              | optional,
            flannelNetworkProvider
              | refs."definitions.FlannelNetworkProvider"
              | { _ | Dyn }
              | doc "FlannelNetworkProvider"
              | optional,
            mtu
              | std.number.Integer
              | doc "Set MTU for CNI provider"
              | optional,
            nodeSelector
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
            updateStrategy
              | refs."definitions.DaemonSetUpdateStrategy"
              | { _ | Dyn }
              | doc "Network plugin daemonset upgrade strategy"
              | optional,
            weaveNetworkProvider
              | refs."definitions.WeaveNetworkProvider"
              | { _ | Dyn }
              | doc "WeaveNetworkProvider"
              | optional,
          },
      "definitions.NetworkVshpereOpts" =
        { public-network | String | optional, },
      "definitions.NodeDrainInput" =
        {
            deleteLocalData
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
            gracePeriod
              | std.number.Integer
              | doc m%"
                Period of time in seconds given to each pod to terminate gracefully.
                If negative, the default value specified in the pod will be used
              "%
              | optional,
            ignoreDaemonSets
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
            maxUnavailableControlplane
              | String
              | doc "MaxUnavailableControlplane input can be a number of nodes or a percentage of nodes"
              | optional,
            maxUnavailableWorker
              | String
              | doc "MaxUnavailableWorker input can be a number of nodes or a percentage of nodes (example, max_unavailable_worker: 2 OR max_unavailable_worker: 20%)"
              | optional,
            nodeDrainInput
              | refs."definitions.NodeDrainInput"
              | { _ | Dyn }
              | optional,
          },
      "definitions.Nodelocal" =
        {
            ipAddress
              | String
              | doc "link-local IP for nodelocal DNS"
              | optional,
            nodeLocalDnsPriorityClassName
              | String
              | doc "Priority class name for NodeLocal's \"node-local-dns\" daemonset"
              | optional,
            nodeSelector
              | js2n.record.Record
                {
                  additional = 'Some Dyn,
                  patterns = { ".*" = std.contract.any_of [ Number, String ], },
                  properties = {},
                  required = {},
                }
              | doc "NodeSelector key pair"
              | optional,
            updateStrategy
              | refs."definitions.DaemonSetUpdateStrategy"
              | { _ | Dyn }
              | doc "Nodelocal DNS daemonset upgrade strategy"
              | optional,
          },
      "definitions.ObjectFieldSelector" =
        { apiVersion | String | optional, fieldPath | String, },
      "definitions.ObjectMeta" =
        {
            annotations
              | js2n.record.Record
                {
                  additional = 'Some Dyn,
                  patterns = { ".*" = std.contract.any_of [ Number, String ], },
                  properties = {},
                  required = {},
                }
              | optional,
            clusterName | String | optional,
            creationTimestamp
              | refs."definitions.Time"
              | { _ | Dyn }
              | optional,
            deletionGracePeriodSeconds | std.number.Integer | optional,
            deletionTimestamp | String | optional,
            finalizers | Array String | optional,
            generateName | String | optional,
            generation | std.number.Integer | optional,
            labels
              | js2n.record.Record
                {
                  additional = 'Some Dyn,
                  patterns = { ".*" = std.contract.any_of [ Number, String ], },
                  properties = {},
                  required = {},
                }
              | optional,
            managedFields
              | Array (
                std.contract.Sequence
                  [ refs."definitions.ManagedFieldsEntry", { _ | Dyn } ]
              )
              | optional,
            name | String | optional,
            namespace | String | optional,
            ownerReferences
              | Array (
                std.contract.Sequence
                  [ refs."definitions.OwnerReference", { _ | Dyn } ]
              )
              | optional,
            resourceVersion | String | optional,
            selfLink | String | optional,
            uid | String | optional,
          },
      "definitions.OpenstackCloudProvider" =
        {
            blockStorage
              | refs."definitions.BlockStorageOpenstackOpts"
              | { _ | Dyn },
            global | refs."definitions.GlobalOpenstackOpts" | { _ | Dyn },
            loadBalancer
              | refs."definitions.LoadBalancerOpenstackOpts"
              | { _ | Dyn },
            metadata | refs."definitions.MetadataOpenstackOpts" | { _ | Dyn },
            route | refs."definitions.RouteOpenstackOpts" | { _ | Dyn },
          },
      "definitions.OwnerReference" =
        {
            apiVersion | String,
            blockOwnerDeletion | Bool | optional,
            controller | Bool | optional,
            kind | String,
            name | String,
            uid | String,
          },
      "definitions.PersistentVolumeClaimSpec" =
        {
            accessModes | Array String | optional,
            dataSource
              | refs."definitions.TypedLocalObjectReference"
              | { _ | Dyn }
              | optional,
            resources
              | refs."definitions.ResourceRequirements"
              | { _ | Dyn }
              | optional,
            selector
              | refs."definitions.LabelSelector"
              | { _ | Dyn }
              | optional,
            storageClassName | String | optional,
            volumeMode | String | optional,
            volumeName | String | optional,
          },
      "definitions.PersistentVolumeClaimTemplate" =
        {
            metadata | refs."definitions.ObjectMeta" | { _ | Dyn } | optional,
            spec | refs."definitions.PersistentVolumeClaimSpec" | { _ | Dyn },
          },
      "definitions.PersistentVolumeClaimVolumeSource" =
        { claimName | String, readOnly | Bool | optional, },
      "definitions.PhotonPersistentDiskVolumeSource" =
        { fsType | String | optional, pdID | String, },
      "definitions.Policy" =
        {
            TypeMeta | refs."definitions.TypeMeta" | { _ | Dyn },
            metadata | refs."definitions.ObjectMeta" | { _ | Dyn } | optional,
            omitStages | Array String | optional,
            rules
              | Array (
                std.contract.Sequence
                  [ refs."definitions.PolicyRule", { _ | Dyn } ]
              ),
          },
      "definitions.PolicyRule" =
        {
            level | String,
            namespaces | Array String | optional,
            nonResourceURLs | Array String | optional,
            omitStages | Array String | optional,
            resources
              | Array (
                std.contract.Sequence
                  [ refs."definitions.GroupResources", { _ | Dyn } ]
              )
              | optional,
            userGroups | Array String | optional,
            users | Array String | optional,
            verbs | Array String | optional,
          },
      "definitions.PortworxVolumeSource" =
        {
            fsType | String | optional,
            readOnly | Bool | optional,
            volumeID | String,
          },
      "definitions.PrivateRegistry" =
        {
            ecrCredentialPlugin
              | refs."definitions.ECRCredentialPlugin"
              | { _ | Dyn }
              | doc "ECRCredentialPlugin"
              | optional,
            isDefault | Bool | doc "Default registry" | optional,
            password | String | doc "Password for registry access" | optional,
            url | String | doc "URL for the registry" | optional,
            user | String | doc "User name for registry acces" | optional,
          },
      "definitions.ProjectedVolumeSource" =
        {
            defaultMode | std.number.Integer | optional,
            sources
              | Array (
                std.contract.Sequence
                  [ refs."definitions.VolumeProjection", { _ | Dyn } ]
              ),
          },
      "definitions.ProviderConfiguration" =
        {
            aescbc
              | refs."definitions.AESConfiguration"
              | { _ | Dyn }
              | optional,
            aesgcm
              | refs."definitions.AESConfiguration"
              | { _ | Dyn }
              | optional,
            identity
              | refs."definitions.IdentityConfiguration"
              | { _ | Dyn }
              | optional,
            kms | refs."definitions.KMSConfiguration" | { _ | Dyn } | optional,
            secretbox
              | refs."definitions.SecretboxConfiguration"
              | { _ | Dyn }
              | optional,
          },
      "definitions.Quantity" = {},
      "definitions.QuobyteVolumeSource" =
        {
            group | String | optional,
            readOnly | Bool | optional,
            registry | String,
            tenant | String | optional,
            user | String | optional,
            volume | String,
          },
      "definitions.RBDVolumeSource" =
        {
            fsType | String | optional,
            image | String,
            keyring | String | optional,
            monitors | Array String,
            pool | String | optional,
            readOnly | Bool | optional,
            secretRef
              | refs."definitions.LocalObjectReference"
              | { _ | Dyn }
              | optional,
            user | String | optional,
          },
      "definitions.RKEConfigNode" =
        {
            address
              | String
              | doc "IP or FQDN that is fully resolvable and used for SSH communication"
              | optional,
            dockerSocket
              | String
              | doc "Optional - Docker socket on the node that will be used in tunneling"
              | optional,
            hostnameOverride
              | String
              | doc "Optional - Hostname of the node"
              | optional,
            internalAddress
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
            sshAgentAuth | Bool | doc "SSH Agent Auth enable" | optional,
            sshCert | String | doc "SSH Certificate" | optional,
            sshCertPath | String | doc "SSH Certificate Path" | optional,
            sshKey | String | doc "SSH Private Key" | optional,
            sshKeyPath | String | doc "SSH Private Key Path" | optional,
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
            kubeApi
              | refs."definitions.KubeAPIService"
              | { _ | Dyn }
              | doc "KubeAPI Service"
              | optional,
            kubeController
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
            aciCniDeployContainer
              | String
              | doc "Cni deployer container image for Cisco ACI"
              | optional,
            aciControllerContainer
              | String
              | doc "Controller container image for Cisco ACI"
              | optional,
            aciGbpServerContainer
              | String
              | doc "GBP Server container image for Cisco ACI"
              | optional,
            aciHostContainer
              | String
              | doc "host container image for Cisco ACI"
              | optional,
            aciMcastContainer
              | String
              | doc "mcast daemon container image for Cisco ACI"
              | optional,
            aciOpflexContainer
              | String
              | doc "opflex agent container image for Cisco ACI"
              | optional,
            aciOpflexServerContainer
              | String
              | doc "Opflex Server container image for Cisco ACI"
              | optional,
            aciOvsContainer
              | String
              | doc "OpenvSwitch container image for Cisco ACI"
              | optional,
            alpine | String | doc "Alpine image" | optional,
            calicoCni | String | doc "Calico CNI image" | optional,
            calicoControllers
              | String
              | doc "Calico Controllers image"
              | optional,
            calicoCtl | String | doc "Calicoctl image" | optional,
            calicoFlexVol | String | doc "CalicoFlexVol image" | optional,
            calicoNode | String | doc "Calico Node image" | optional,
            canalCni | String | doc "Canal CNI image" | optional,
            canalControllers
              | String
              | doc "Canal Controllers Image needed for Calico/Canal v3.14.0+"
              | optional,
            canalFlannel | String | doc "CanalFlannel image" | optional,
            canalFlexVol | String | doc "CanalFlexVol image" | optional,
            canalNode | String | doc "Canal Node Image" | optional,
            certDownloader | String | doc "rke-cert-deployer image" | optional,
            coredns | String | doc "CoreDNS image" | optional,
            corednsAutoscaler
              | String
              | doc "CoreDNS autoscaler image"
              | optional,
            dnsmasq | String | doc "DNSMasq image" | optional,
            etcd | String | doc "etcd image" | optional,
            flannel | String | doc "Flannel image" | optional,
            flannelCni | String | doc "Flannel CNI image" | optional,
            ingress | String | doc "Ingress Controller image" | optional,
            ingressBackend
              | String
              | doc "Ingress Controller Backend image"
              | optional,
            ingressWebhook | String | doc "Ingress Webhook image" | optional,
            kubedns | String | doc "KubeDNS image" | optional,
            kubednsAutoscaler
              | String
              | doc "KubeDNS autoscaler image"
              | optional,
            kubednsSidecar | String | doc "KubeDNS side car image" | optional,
            kubernetes | String | doc "Kubernetes image" | optional,
            kubernetesServicesSidecar
              | String
              | doc "rke-service-sidekick image"
              | optional,
            metricsServer | String | doc "Metrics Server image" | optional,
            nginxProxy | String | doc "rke-nginx-proxy image" | optional,
            nodelocal | String | doc "Nodelocal image" | optional,
            podInfraContainer
              | String
              | doc "Pod infra container image"
              | optional,
            weaveCni | String | doc "Weave CNI image" | optional,
            weaveNode | String | doc "Weave Node image" | optional,
            windowsPodInfraContainer
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
            addonJobTimeout
              | std.number.Integer
              | doc "Timeout in seconds for status check on addon deployment jobs"
              | optional,
            addons
              | String
              | doc "YAML manifest for user provided addons to be deployed on the cluster"
              | optional,
            addonsInclude
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
            bastionHost
              | refs."definitions.BastionHost"
              | { _ | Dyn }
              | doc "Bastion/Jump Host configuration"
              | optional,
            cloudProvider
              | refs."definitions.CloudProvider"
              | { _ | Dyn }
              | doc "Cloud Provider options"
              | optional,
            clusterName
              | String
              | doc "Cluster Name used in the kube config"
              | optional,
            dns
              | refs."definitions.DNSConfig"
              | { _ | Dyn }
              | doc "DNS Config"
              | optional,
            enableCriDockerd
              | Bool
              | doc "Enable/disable using cri-dockerd"
              | optional,
            ignoreDockerVersion
              | Bool
              | doc "Enable/disable strict docker version checking"
              | optional,
            ingress
              | refs."definitions.IngressConfig"
              | { _ | Dyn }
              | doc "Ingress controller used in the cluster"
              | optional,
            kubernetesVersion
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
            prefixPath | String | doc "kubernetes directory path" | optional,
            privateRegistries
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
            rotateCertificates
              | refs."definitions.RotateCertificates"
              | { _ | Dyn }
              | doc "Rotating Certificates Option"
              | optional,
            rotateEncryptionKey
              | Bool
              | doc "Rotate Encryption Key Option"
              | optional,
            services
              | refs."definitions.RKEConfigServices"
              | { _ | Dyn }
              | doc "Kubernetes components"
              | optional,
            sshAgentAuth | Bool | doc "SSH Agent Auth enable" | optional,
            sshCertPath | String | doc "SSH Certificate Path" | optional,
            sshKeyPath | String | doc "SSH Private Key Path" | optional,
            systemImages
              | refs."definitions.RKESystemImages"
              | { _ | Dyn }
              | doc "List of images used internally for proxy, cert download and kubedns"
              | optional,
            upgradeStrategy
              | refs."definitions.NodeUpgradeStrategy"
              | { _ | Dyn }
              | doc "Upgrade Strategy for the cluster"
              | optional,
            winPrefixPath
              | String
              | doc "kubernetes directory path for windows"
              | optional,
          },
      "definitions.ResourceConfiguration" =
        {
            providers
              | Array (
                std.contract.Sequence
                  [ refs."definitions.ProviderConfiguration", { _ | Dyn } ]
              ),
            resources | Array String,
          },
      "definitions.ResourceFieldSelector" =
        {
            containerName | String | optional,
            divisor | refs."definitions.Quantity" | { _ | Dyn } | optional,
            resource | String,
          },
      "definitions.ResourceRequirements" =
        {
            limits
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
                }
              | optional,
            requests
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
                }
              | optional,
          },
      "definitions.RestoreConfig" =
        { restore | Bool | optional, snapshotName | String | optional, },
      "definitions.RollingUpdateDaemonSet" =
        {
            maxSurge | refs."definitions.IntOrString" | { _ | Dyn } | optional,
            maxUnavailable
              | refs."definitions.IntOrString"
              | { _ | Dyn }
              | optional,
          },
      "definitions.RollingUpdateDeployment" =
        {
            maxSurge | refs."definitions.IntOrString" | { _ | Dyn } | optional,
            maxUnavailable
              | refs."definitions.IntOrString"
              | { _ | Dyn }
              | optional,
          },
      "definitions.RotateCertificates" =
        {
            caCertificates | Bool | doc "Rotate CA Certificates" | optional,
            services
              | Array String
              | doc "Services to rotate their certs"
              | optional,
          },
      "definitions.RouteOpenstackOpts" =
        { router-id | String | doc "required", },
      "definitions.S3BackupConfig" =
        {
            accessKey | String | optional,
            bucketName | String | optional,
            customCa | String | optional,
            endpoint | String,
            folder | String | optional,
            region | String | optional,
            secretKey | String | optional,
          },
      "definitions.ScaleIOVolumeSource" =
        {
            fsType | String | optional,
            gateway | String,
            protectionDomain | String | optional,
            readOnly | Bool | optional,
            secretRef | refs."definitions.LocalObjectReference" | { _ | Dyn },
            sslEnabled | Bool | optional,
            storageMode | String | optional,
            storagePool | String | optional,
            system | String,
            volumeName | String | optional,
          },
      "definitions.SchedulerService" =
        {
            extraArgs
              | js2n.record.Record
                {
                  additional = 'Some Dyn,
                  patterns = { ".*" = std.contract.any_of [ Number, String ], },
                  properties = {},
                  required = {},
                }
              | optional,
            extraBinds | Array String | optional,
            extraEnv | Array String | optional,
            image | String | optional,
            winExtraArgs
              | js2n.record.Record
                {
                  additional = 'Some Dyn,
                  patterns = { ".*" = std.contract.any_of [ Number, String ], },
                  properties = {},
                  required = {},
                }
              | optional,
            winExtraBinds | Array String | optional,
            winExtraEnv | Array String | optional,
          },
      "definitions.SecretKeySelector" =
        {
            LocalObjectReference
              | refs."definitions.LocalObjectReference"
              | { _ | Dyn },
            key | String,
            "optional" | Bool | optional,
          },
      "definitions.SecretProjection" =
        {
            LocalObjectReference
              | refs."definitions.LocalObjectReference"
              | { _ | Dyn },
            items
              | Array (
                std.contract.Sequence
                  [ refs."definitions.KeyToPath", { _ | Dyn } ]
              )
              | optional,
            "optional" | Bool | optional,
          },
      "definitions.SecretVolumeSource" =
        {
            defaultMode | std.number.Integer | optional,
            items
              | Array (
                std.contract.Sequence
                  [ refs."definitions.KeyToPath", { _ | Dyn } ]
              )
              | optional,
            "optional" | Bool | optional,
            secretName | String | optional,
          },
      "definitions.SecretboxConfiguration" =
        {
            keys
              | Array (
                std.contract.Sequence [ refs."definitions.Key", { _ | Dyn } ]
              ),
          },
      "definitions.SecretsEncryptionConfig" =
        {
            customConfig
              | refs."definitions.EncryptionConfiguration"
              | { _ | Dyn }
              | doc "Custom Encryption Provider configuration object"
              | optional,
            enabled
              | Bool
              | doc "Enable/disable secrets encryption provider config"
              | optional,
          },
      "definitions.ServiceAccountTokenProjection" =
        {
            audience | String | optional,
            expirationSeconds | std.number.Integer | optional,
            path | String,
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
            fsType | String | optional,
            readOnly | Bool | optional,
            secretRef
              | refs."definitions.LocalObjectReference"
              | { _ | Dyn }
              | optional,
            volumeName | String | optional,
            volumeNamespace | String | optional,
          },
      "definitions.Time" = {},
      "definitions.Toleration" =
        {
            effect | String | optional,
            key | String | optional,
            operator | String | optional,
            tolerationSeconds | std.number.Integer | optional,
            value | String | optional,
          },
      "definitions.TypeMeta" =
        { apiVersion | String | optional, kind | String | optional, },
      "definitions.TypedLocalObjectReference" =
        { apiGroup | String, kind | String, name | String, },
      "definitions.Unknown" =
        {
            ContentEncoding | String,
            ContentType | String,
            Raw | String,
            TypeMeta | refs."definitions.TypeMeta" | { _ | Dyn },
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
            configMap
              | refs."definitions.ConfigMapProjection"
              | { _ | Dyn }
              | optional,
            downwardAPI
              | refs."definitions.DownwardAPIProjection"
              | { _ | Dyn }
              | optional,
            secret
              | refs."definitions.SecretProjection"
              | { _ | Dyn }
              | optional,
            serviceAccountToken
              | refs."definitions.ServiceAccountTokenProjection"
              | { _ | Dyn }
              | optional,
          },
      "definitions.VolumeSource" =
        {
            awsElasticBlockStore
              | refs."definitions.AWSElasticBlockStoreVolumeSource"
              | { _ | Dyn }
              | optional,
            azureDisk
              | refs."definitions.AzureDiskVolumeSource"
              | { _ | Dyn }
              | optional,
            azureFile
              | refs."definitions.AzureFileVolumeSource"
              | { _ | Dyn }
              | optional,
            cephfs
              | refs."definitions.CephFSVolumeSource"
              | { _ | Dyn }
              | optional,
            cinder
              | refs."definitions.CinderVolumeSource"
              | { _ | Dyn }
              | optional,
            configMap
              | refs."definitions.ConfigMapVolumeSource"
              | { _ | Dyn }
              | optional,
            csi | refs."definitions.CSIVolumeSource" | { _ | Dyn } | optional,
            downwardAPI
              | refs."definitions.DownwardAPIVolumeSource"
              | { _ | Dyn }
              | optional,
            emptyDir
              | refs."definitions.EmptyDirVolumeSource"
              | { _ | Dyn }
              | optional,
            ephemeral
              | refs."definitions.EphemeralVolumeSource"
              | { _ | Dyn }
              | optional,
            fc | refs."definitions.FCVolumeSource" | { _ | Dyn } | optional,
            flexVolume
              | refs."definitions.FlexVolumeSource"
              | { _ | Dyn }
              | optional,
            flocker
              | refs."definitions.FlockerVolumeSource"
              | { _ | Dyn }
              | optional,
            gcePersistentDisk
              | refs."definitions.GCEPersistentDiskVolumeSource"
              | { _ | Dyn }
              | optional,
            gitRepo
              | refs."definitions.GitRepoVolumeSource"
              | { _ | Dyn }
              | optional,
            glusterfs
              | refs."definitions.GlusterfsVolumeSource"
              | { _ | Dyn }
              | optional,
            hostPath
              | refs."definitions.HostPathVolumeSource"
              | { _ | Dyn }
              | optional,
            iscsi
              | refs."definitions.ISCSIVolumeSource"
              | { _ | Dyn }
              | optional,
            nfs | refs."definitions.NFSVolumeSource" | { _ | Dyn } | optional,
            persistentVolumeClaim
              | refs."definitions.PersistentVolumeClaimVolumeSource"
              | { _ | Dyn }
              | optional,
            photonPersistentDisk
              | refs."definitions.PhotonPersistentDiskVolumeSource"
              | { _ | Dyn }
              | optional,
            portworxVolume
              | refs."definitions.PortworxVolumeSource"
              | { _ | Dyn }
              | optional,
            projected
              | refs."definitions.ProjectedVolumeSource"
              | { _ | Dyn }
              | optional,
            quobyte
              | refs."definitions.QuobyteVolumeSource"
              | { _ | Dyn }
              | optional,
            rbd | refs."definitions.RBDVolumeSource" | { _ | Dyn } | optional,
            scaleIO
              | refs."definitions.ScaleIOVolumeSource"
              | { _ | Dyn }
              | optional,
            secret
              | refs."definitions.SecretVolumeSource"
              | { _ | Dyn }
              | optional,
            storageos
              | refs."definitions.StorageOSVolumeSource"
              | { _ | Dyn }
              | optional,
            vsphereVolume
              | refs."definitions.VsphereVirtualDiskVolumeSource"
              | { _ | Dyn }
              | optional,
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
            virtualCenter
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
            fsType | String | optional,
            storagePolicyID | String | optional,
            storagePolicyName | String | optional,
            volumePath | String,
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