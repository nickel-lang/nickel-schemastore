# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.ARN" = js2n.Always,
      "definitions.AZSubnetMapping" = { _ | refs."definitions.AZSubnetSpec" },
      "definitions.AZSubnetSpec" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                az
                  | String
                  | doc "zone name for this subnet, it can either be an availability zone name or a local zone name. AZ can be omitted if the key is an AZ."
                  | optional,
                cidr | js2n.Always | optional,
                id | String | optional,
              },
              Array Dyn
            ],
      "definitions.AccessConfig" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                accessEntries
                  | Array refs."definitions.AccessEntry"
                  | doc "specifies a list of access entries for the cluster."
                  | optional,
                authenticationMode
                  | js2n.Always
                  | doc "specifies the authentication mode for a cluster."
                  | optional,
                bootstrapClusterCreatorAdminPermissions
                  | Bool
                  | doc "specifies whether the cluster creator IAM principal was set as a cluster admin access entry during cluster creation time."
                  | optional,
              },
              Array Dyn
            ],
      "definitions.AccessEntry" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                accessPolicies
                  | Array refs."definitions.AccessPolicy"
                  | doc "set of policies to associate with an access entry"
                  | optional,
                kubernetesGroups
                  | Array String
                  | doc "set of Kubernetes groups to map to the principal ARN"
                  | optional,
                kubernetesUsername
                  | String
                  | doc "username to map to the principal ARN"
                  | optional,
                principalARN
                  | refs."definitions.ARN"
                  | doc "existing IAM principal ARN to associate with an access entry"
                  | optional,
                type
                  | String
                  | doc "`EC2_LINUX`, `EC2_WINDOWS`, `FARGATE_LINUX` or `STANDARD`"
                  | optional,
              },
              Array Dyn
            ],
      "definitions.AccessPolicy" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                accessScope | refs."definitions.AccessScope" | optional,
                policyARN | refs."definitions.ARN" | optional,
              },
              Array Dyn
            ],
      "definitions.AccessScope" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                namespaces
                  | Array String
                  | doc "Scope access to namespace(s)"
                  | optional,
                type | js2n.Always | doc "`namespace` or `cluster`" | optional,
              },
              Array Dyn
            ],
      "definitions.Addon" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                attachPolicy
                  | refs."definitions.InlineDocument"
                  | { _ | Dyn }
                  | doc "holds a policy document to attach"
                  | optional,
                attachPolicyARNs
                  | Array String
                  | doc "list of ARNs of the IAM policies to attach"
                  | optional,
                configurationValues
                  | String
                  | doc "defines the set of configuration properties for add-ons. For now, all properties will be specified as a JSON string and have to respect the schema from DescribeAddonConfiguration."
                  | optional,
                name | String,
                owners | Array String | optional,
                permissionsBoundary
                  | String
                  | doc "ARN of the permissions' boundary to associate"
                  | optional,
                podIdentityAssociations
                  | Array refs."definitions.PodIdentityAssociation"
                  | doc "holds a list of associations to be configured for the addon"
                  | optional,
                publishers | Array String | optional,
                resolveConflicts
                  | js2n.Always
                  | doc "determines how to resolve field value conflicts for an EKS add-on if a value was changed from default"
                  | optional,
                serviceAccountRoleARN | String | optional,
                tags
                  | { _ | String }
                  | doc "The metadata to apply to the cluster to assist with categorization and organization. Each tag consists of a key and an optional value, both of which you define."
                  | optional,
                types | Array String | optional,
                useDefaultPodIdentityAssociations
                  | Bool
                  | doc "uses the pod identity associations recommended by the EKS API. Defaults to false."
                  | optional,
                version | String | optional,
                wellKnownPolicies
                  | refs."definitions.WellKnownPolicies"
                  | doc "for attaching common IAM policies"
                  | optional,
              },
              Array Dyn
            ],
      "definitions.AddonsConfig" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                autoApplyPodIdentityAssociations
                  | Bool
                  | doc "specifies whether to automatically apply pod identity associations for supported addons that require IAM permissions."
                  | optional,
                disableDefaultAddons
                  | Bool
                  | doc "enables or disables creation of default networking addons when the cluster is created. By default, all default addons are installed as EKS addons."
                  | optional,
              },
              Array Dyn
            ],
      "definitions.AutoModeConfig" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                enabled
                  | Bool
                  | doc "enables or disables Auto Mode."
                  | optional,
                nodePools
                  | Array String
                  | doc "a list of node pools to create."
                  | optional,
                nodeRoleARN
                  | refs."definitions.ARN"
                  | doc "node role to use for nodes launched by Auto Mode."
                  | optional,
                permissionsBoundaryARN
                  | refs."definitions.ARN"
                  | doc "permissions boundary to use when creating the Auto Mode node role."
                  | optional,
              },
              Array Dyn
            ],
      "definitions.CapacityReservation" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                capacityReservationPreference
                  | String
                  | doc "defines a nodegroup's Capacity Reservation preferences (either 'open' or 'none')"
                  | optional,
                capacityReservationTarget
                  | refs."definitions.CapacityReservationTarget"
                  | doc "defines a nodegroup's target Capacity Reservation or Capacity Reservation group (not both at the same time)."
                  | optional,
              },
              Array Dyn
            ],
      "definitions.CapacityReservationTarget" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                capacityReservationID | String | optional,
                capacityReservationResourceGroupARN | String | optional,
              },
              Array Dyn
            ],
      "definitions.ClusterCloudWatch" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                clusterLogging
                  | refs."definitions.ClusterCloudWatchLogging"
                  | optional,
              },
              Array Dyn
            ],
      "definitions.ClusterCloudWatchLogging" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                enableTypes
                  | Array (
                    std.contract.Sequence
                      [
                        std.enum.TagOrString,
                        [|
                          '"*",
                          'all,
                          'scheduler,
                          'controllerManager,
                          'authenticator,
                          'audit,
                          'api
                        |]
                      ]
                  )
                  | doc "Types of logging to enable (see [CloudWatch docs](/usage/cloudwatch-cluster-logging/#clusterconfig-examples)). Valid entries are: `\"api\"`, `\"audit\"`, `\"authenticator\"`, `\"controllerManager\"`, `\"scheduler\"`, `\"all\"`, `\"*\"`."
                  | optional,
                logRetentionInDays
                  | std.number.Integer
                  | doc "sets the number of days to retain the logs for (see [CloudWatch docs](https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_PutRetentionPolicy.html#API_PutRetentionPolicy_RequestSyntax)) . Valid values are: 1, 3, 5, 7, 14, 30, 60, 90, 120, 150, 180, 365, 400, 545, 731, 1827, and 3653."
                  | optional,
              },
              Array Dyn
            ],
      "definitions.ClusterConfig" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                accessConfig
                  | refs."definitions.AccessConfig"
                  | doc "specifies the access config for a cluster."
                  | optional,
                addons | Array refs."definitions.Addon" | optional,
                addonsConfig
                  | refs."definitions.AddonsConfig"
                  | doc "specifies the configuration for addons."
                  | optional,
                apiVersion | std.enum.TagOrString | [| '"eksctl.io/v1alpha5" |],
                autoModeConfig
                  | refs."definitions.AutoModeConfig"
                  | doc "holds the config for Auto Mode."
                  | optional,
                availabilityZones | Array String | optional,
                cloudWatch
                  | refs."definitions.ClusterCloudWatch"
                  | doc "See [CloudWatch support](/usage/cloudwatch-cluster-logging/)"
                  | optional,
                fargateProfiles
                  | Array refs."definitions.FargateProfile"
                  | optional,
                gitops
                  | refs."definitions.GitOps"
                  | doc "future gitops plans, replacing the Git configuration above"
                  | optional,
                iam | refs."definitions.ClusterIAM" | optional,
                iamIdentityMappings
                  | Array refs."definitions.IAMIdentityMapping"
                  | optional,
                identityProviders
                  | Array refs."definitions.IdentityProvider"
                  | optional,
                karpenter
                  | refs."definitions.Karpenter"
                  | doc "specific configuration options."
                  | optional,
                kind | std.enum.TagOrString | [| 'ClusterConfig |],
                kubernetesNetworkConfig
                  | refs."definitions.KubernetesNetworkConfig"
                  | optional,
                localZones
                  | Array String
                  | doc "specifies a list of local zones where the subnets should be created. Only self-managed nodegroups can be launched in local zones. These subnets are not passed to EKS."
                  | optional,
                managedNodeGroups
                  | Array refs."definitions.ManagedNodeGroup"
                  | doc "See [Nodegroups usage](/usage/managing-nodegroups) and [managed nodegroups](/usage/eks-managed-nodes/)"
                  | optional,
                metadata | refs."definitions.ClusterMeta",
                nodeGroups
                  | Array refs."definitions.NodeGroup"
                  | doc "For information and examples see [nodegroups](/usage/managing-nodegroups)"
                  | optional,
                outpost
                  | refs."definitions.Outpost"
                  | doc "specifies the Outpost configuration."
                  | optional,
                privateCluster
                  | refs."definitions.PrivateCluster"
                  | doc "allows configuring a fully-private cluster in which no node has outbound internet access, and private access to AWS services is enabled via VPC endpoints"
                  | optional,
                remoteNetworkConfig
                  | refs."definitions.RemoteNetworkConfig"
                  | optional,
                secretsEncryption
                  | refs."definitions.SecretsEncryption"
                  | optional,
                vpc | refs."definitions.ClusterVPC" | optional,
                zonalShiftConfig
                  | refs."definitions.ZonalShiftConfig"
                  | doc "specifies the zonal shift configuration."
                  | optional,
              },
              Array Dyn
            ],
      "definitions.ClusterEndpoints" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                privateAccess | Bool | optional,
                publicAccess | Bool | optional,
              },
              Array Dyn
            ],
      "definitions.ClusterIAM" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                fargatePodExecutionRoleARN
                  | String
                  | doc "role used by pods to access AWS APIs. This role is added to the Kubernetes RBAC for authorization. See [Pod Execution Role](https://docs.aws.amazon.com/eks/latest/userguide/pod-execution-role.html)"
                  | optional,
                fargatePodExecutionRolePermissionsBoundary
                  | String
                  | doc "permissions boundary for the fargate pod execution role`. See [EKS Fargate Support](/usage/fargate-support/)"
                  | optional,
                podIdentityAssociations
                  | Array refs."definitions.PodIdentityAssociation"
                  | doc "pod identity associations to create in the cluster. See [Pod Identity Associations](/usage/pod-identity-associations)"
                  | optional,
                serviceAccounts
                  | Array refs."definitions.ClusterIAMServiceAccount"
                  | doc "service accounts to create in the cluster. See [IAM Service Accounts](/usage/iamserviceaccounts/#usage-with-config-files)"
                  | optional,
                serviceRoleARN | String | optional,
                serviceRolePermissionsBoundary
                  | String
                  | doc "permissions boundary for all identity-based entities created by eksctl. See [AWS Permission Boundary](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_boundaries.html)"
                  | optional,
                vpcResourceControllerPolicy
                  | Bool
                  | doc "attaches the IAM policy necessary to run the VPC controller in the control plane"
                  | optional,
                withOIDC
                  | Bool
                  | doc "enables the IAM OIDC provider as well as IRSA for the Amazon CNI plugin"
                  | optional,
              },
              Array Dyn
            ],
      "definitions.ClusterIAMMeta" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                annotations | { _ | String } | optional,
                labels | { _ | String } | optional,
                name | String | optional,
                namespace | String | optional,
              },
              Array Dyn
            ],
      "definitions.ClusterIAMServiceAccount" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                attachPolicy
                  | refs."definitions.InlineDocument"
                  | { _ | Dyn }
                  | doc "holds a policy document to attach to this service account"
                  | optional,
                attachPolicyARNs
                  | Array String
                  | doc "list of ARNs of the IAM policies to attach"
                  | optional,
                attachRoleARN
                  | String
                  | doc "ARN of the role to attach to the service account"
                  | optional,
                metadata | refs."definitions.ClusterIAMMeta" | optional,
                permissionsBoundary
                  | String
                  | doc "ARN of the permissions boundary to associate with the service account"
                  | optional,
                roleName
                  | String
                  | doc "Specific role name instead of the Cloudformation-generated role name"
                  | optional,
                roleOnly
                  | Bool
                  | doc "Specify if only the IAM Service Account role should be created without creating/annotating the service account"
                  | optional,
                status
                  | refs."definitions.ClusterIAMServiceAccountStatus"
                  | optional,
                tags
                  | { _ | String }
                  | doc "AWS tags for the service account"
                  | optional,
                wellKnownPolicies
                  | refs."definitions.WellKnownPolicies"
                  | optional,
              },
              Array Dyn
            ],
      "definitions.ClusterIAMServiceAccountStatus" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                capabilities | Array String | optional,
                roleARN | String | optional,
                stackName | String | optional,
                tags | { _ | String } | optional,
              },
              Array Dyn
            ],
      "definitions.ClusterMeta" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                annotations
                  | { _ | String }
                  | doc "arbitrary metadata ignored by `eksctl`."
                  | optional,
                forceUpdateVersion
                  | Bool
                  | doc "When updating cluster version, provide the force flag to override upgrade-blocking insights"
                  | optional,
                name | String | doc "of the cluster",
                region | String | doc "the AWS region hosting this cluster",
                tags
                  | { _ | String }
                  | doc "used to tag AWS resources created by eksctl"
                  | optional,
                version
                  | String
                  | doc "use `./eksctl utils describe-cluster-versions` to get the list of supported versions"
                  | optional,
              },
              Array Dyn
            ],
      "definitions.ClusterNAT" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                gateway
                  | std.enum.TagOrString
                  | [| 'Disable, 'Single, 'HighlyAvailable |]
                  | doc "Valid variants are: `\"HighlyAvailable\"` configures a highly available NAT gateway, `\"Single\"` configures a single NAT gateway (default), `\"Disable\"` disables NAT."
                  | optional,
              },
              Array Dyn
            ],
      "definitions.ClusterSubnets" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                private
                  | refs."definitions.AZSubnetMapping"
                  | { _ | Dyn }
                  | optional,
                public
                  | refs."definitions.AZSubnetMapping"
                  | { _ | Dyn }
                  | optional,
              },
              Array Dyn
            ],
      "definitions.ClusterVPC" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                autoAllocateIPv6
                  | Bool
                  | doc "AutoAllocateIPV6 requests an IPv6 CIDR block with /56 prefix for the VPC"
                  | optional,
                cidr | js2n.Always | optional,
                clusterEndpoints
                  | refs."definitions.ClusterEndpoints"
                  | doc "See [managing access to API](/usage/vpc-networking/#managing-access-to-the-kubernetes-api-server-endpoints)"
                  | optional,
                controlPlaneSecurityGroupIDs
                  | Array String
                  | doc "configures the security groups for the control plane."
                  | optional,
                controlPlaneSubnetIDs
                  | Array String
                  | doc "configures the subnets for the control plane."
                  | optional,
                extraCIDRs
                  | Array String
                  | doc "for additional CIDR associations, e.g. a CIDR for private subnets or any ad-hoc subnets"
                  | optional,
                extraIPv6CIDRs
                  | Array String
                  | doc "for additional IPv6 CIDR associations, e.g. a CIDR for private subnets or any ad-hoc subnets"
                  | optional,
                hostnameType
                  | String
                  | doc "type of hostname to use for EC2 instances."
                  | optional,
                id | String | optional,
                ipv6Cidr | String | optional,
                ipv6Pool | String | optional,
                manageSharedNodeSecurityGroupRules
                  | Bool
                  | doc "Automatically add security group rules to and from the default cluster security group and the shared node security group. This allows unmanaged nodes to communicate with the control plane and managed nodes. This option cannot be disabled when using eksctl created security groups."
                  | optional,
                nat | refs."definitions.ClusterNAT" | optional,
                publicAccessCIDRs
                  | Array String
                  | doc "which CIDR blocks to allow access to public k8s API endpoint"
                  | optional,
                securityGroup
                  | String
                  | doc "(aka the ControlPlaneSecurityGroup) for communication between control plane and nodes"
                  | optional,
                sharedNodeSecurityGroup
                  | String
                  | doc "for pre-defined shared node SG"
                  | optional,
                subnets
                  | refs."definitions.ClusterSubnets"
                  | doc "keyed by AZ for convenience. See [this example](/examples/reusing-iam-and-vpc/) as well as [using existing VPCs](/usage/vpc-networking/#use-existing-vpc-other-custom-configuration)."
                  | optional,
              },
              Array Dyn
            ],
      "definitions.FargateProfile" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                name | String | doc "of the Fargate profile.",
                podExecutionRoleARN
                  | String
                  | doc "IAM role's ARN to use to run pods onto Fargate."
                  | optional,
                selectors
                  | Array refs."definitions.FargateProfileSelector"
                  | doc "define the rules to select workload to schedule onto Fargate."
                  | optional,
                status
                  | String
                  | doc "The current status of the Fargate profile."
                  | optional,
                subnets
                  | Array String
                  | doc "which Fargate should use to do network placement of the selected workload. If none provided, all subnets for the cluster will be used."
                  | optional,
                tags
                  | { _ | String }
                  | doc "Used to tag the AWS resources"
                  | optional,
              },
              Array Dyn
            ],
      "definitions.FargateProfileSelector" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                labels
                  | { _ | String }
                  | doc "Kubernetes label selectors to use to select workload."
                  | optional,
                namespace
                  | String
                  | doc "Kubernetes namespace from which to select workload.",
              },
              Array Dyn
            ],
      "definitions.Flux" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                flags
                  | refs."definitions.FluxFlags"
                  | { _ | Dyn }
                  | doc "an arbitrary map of string to string to pass any flags to Flux bootstrap via eksctl see https://fluxcd.io/docs/ for information on all flags"
                  | optional,
                gitProvider
                  | String
                  | doc "The repository hosting service. Can be either Github or Gitlab."
                  | optional,
              },
              Array Dyn
            ],
      "definitions.FluxFlags" = { _ | String },
      "definitions.GitOps" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                flux
                  | refs."definitions.Flux"
                  | doc "holds options to enable Flux v2 on your cluster"
                  | optional,
              },
              Array Dyn
            ],
      "definitions.IAMIdentityMapping" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                account | String | optional,
                arn | String | optional,
                groups | Array String | optional,
                namespace | String | optional,
                noDuplicateARNs | Bool | optional,
                serviceName | String | optional,
                username | String | optional,
              },
              Array Dyn
            ],
      "definitions.IdentityProvider" =
        std.contract.Sequence
            [
              std.contract.any_of
                [
                  js2n.Null,
                  Bool,
                  Number,
                  String,
                  {
                    type
                      | std.enum.TagOrString
                      | [| 'oidc |]
                      | doc "Valid variants are: `\"oidc\"`: OIDC identity provider",
                    ..
                  },
                  Array Dyn
                ],
              refs."definitions.OIDCIdentityProvider"
            ],
      "definitions.InlineDocument" = {  .. },
      "definitions.InstanceMarketOptions" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                marketType
                  | String
                  | doc "specifies the market type for the instances"
                  | optional,
              },
              Array Dyn
            ],
      "definitions.InstanceSelector" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                allow
                  | String
                  | doc "List of allowed instance types to select from w/ regex syntax (Example: m[3-5]\\\\.*)"
                  | optional,
                cpuArchitecture
                  | std.enum.TagOrString
                  | [| 'arm64, 'amd64, 'x86_64 |]
                  | doc "CPU Architecture of the EC2 instance type. Valid variants are: `\"x86_64\"` `\"amd64\"` `\"arm64\"`"
                  | optional,
                deny
                  | String
                  | doc "List of instance types which should be excluded w/ regex syntax (Example: m[1-2]\\\\.*)"
                  | optional,
                gpus
                  | std.number.Integer
                  | doc "specifies the number of GPUs. It can be set to 0 to select non-GPU instance types."
                  | optional,
                memory
                  | String
                  | doc "specifies the memory The unit defaults to GiB"
                  | optional,
                neuron_devices
                  | std.number.Integer
                  | doc "specifies the number of Neuron device Accelerators. It can be set to 0 to select non-Accelerator instance types."
                  | optional,
                vCPUs
                  | std.number.Integer
                  | doc "specifies the number of vCPUs"
                  | optional,
              },
              Array Dyn
            ],
      "definitions.Karpenter" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                createServiceAccount
                  | Bool
                  | doc "create a service account or not."
                  | optional,
                defaultInstanceProfile
                  | String
                  | doc "override the default IAM instance profile"
                  | optional,
                version
                  | String
                  | doc "defines the Karpenter version to install",
                withSpotInterruptionQueue
                  | Bool
                  | doc "if true, adds all required policies and rules for supporting Spot Interruption Queue on Karpenter deployments"
                  | optional,
              },
              Array Dyn
            ],
      "definitions.KubernetesNetworkConfig" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                ipFamily
                  | std.enum.TagOrString
                  | [| 'IPv6, 'IPv4 |]
                  | doc "Valid variants are: `\"IPv4\"` defines an IP family of v4 to be used when creating a new VPC and cluster., `\"IPv6\"` defines an IP family of v6 to be used when creating a new VPC and cluster.."
                  | optional,
                serviceIPv4CIDR
                  | String
                  | doc "IPv4 CIDR range from where `ClusterIP`s are assigned"
                  | optional,
                serviceIPv6CIDR
                  | String
                  | doc "IPv6 CIDR range from where `ClusterIP`s are assigned"
                  | optional,
              },
              Array Dyn
            ],
      "definitions.LaunchTemplate" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                id | String | doc "Launch template ID",
                version
                  | String
                  | doc "Launch template version Defaults to the default launch template version TODO support $Default, $Latest"
                  | optional,
              },
              Array Dyn
            ],
      "definitions.ManagedNodeGroup" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                additionalVolumes
                  | Array refs."definitions.VolumeMapping"
                  | doc "Additional Volume Configurations"
                  | optional,
                ami
                  | String
                  | doc "Specify [custom AMIs](/usage/custom-ami-support/), `auto-ssm`, `auto`, or `static`"
                  | optional,
                amiFamily
                  | std.enum.TagOrString
                  | [|
                    'WindowsServer2022FullContainer,
                    'WindowsServer2022CoreContainer,
                    'WindowsServer2019FullContainer,
                    'WindowsServer2019CoreContainer,
                    'Bottlerocket,
                    'Ubuntu2004,
                    'UbuntuPro2004,
                    'Ubuntu2204,
                    'UbuntuPro2204,
                    'Ubuntu2404,
                    'UbuntuPro2404,
                    'AmazonLinux2023,
                    'AmazonLinux2
                  |]
                  | doc "Valid variants are: `\"AmazonLinux2\"` (default), `\"AmazonLinux2023\"`, `\"UbuntuPro2404\"`, `\"Ubuntu2404\"`, `\"UbuntuPro2204\"`, `\"Ubuntu2204\"`, `\"UbuntuPro2004\"`, `\"Ubuntu2004\"`, `\"Bottlerocket\"`, `\"WindowsServer2019CoreContainer\"`, `\"WindowsServer2019FullContainer\"`, `\"WindowsServer2022CoreContainer\"`, `\"WindowsServer2022FullContainer\"`."
                  | optional,
                asgSuspendProcesses
                  | Array String
                  | doc "See [relevant AWS docs](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-attribute-updatepolicy.html#cfn-attributes-updatepolicy-rollingupdate-suspendprocesses)"
                  | optional,
                availabilityZones
                  | Array String
                  | doc "Limit [nodes to specific AZs](/usage/autoscaling/#zone-aware-auto-scaling)"
                  | optional,
                bottlerocket
                  | refs."definitions.NodeGroupBottlerocket"
                  | doc "specifies settings for Bottlerocket nodes"
                  | optional,
                capacityReservation
                  | refs."definitions.CapacityReservation"
                  | doc "defines reservation policy for a nodegroup"
                  | optional,
                desiredCapacity | std.number.Integer | optional,
                disableIMDSv1
                  | Bool
                  | doc "requires requests to the metadata service to use IMDSv2 tokens"
                  | optional,
                disablePodIMDS
                  | Bool
                  | doc "blocks all IMDS requests from non-host networking pods"
                  | optional,
                ebsOptimized
                  | Bool
                  | doc "enables [EBS optimization](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-optimized.html)"
                  | optional,
                efaEnabled
                  | Bool
                  | doc "creates the maximum allowed number of EFA-enabled network cards on nodes in this group."
                  | optional,
                enableDetailedMonitoring
                  | Bool
                  | doc "Enable EC2 detailed monitoring"
                  | optional,
                iam | refs."definitions.NodeGroupIAM" | optional,
                instanceMarketOptions
                  | refs."definitions.InstanceMarketOptions"
                  | doc "describes the market (purchasing) option for the instances"
                  | optional,
                instanceName | String | optional,
                instancePrefix | String | optional,
                instanceSelector
                  | refs."definitions.InstanceSelector"
                  | doc "specifies options for EC2 instance selector"
                  | optional,
                instanceType | String | optional,
                instanceTypes
                  | Array String
                  | doc "specifies a list of instance types"
                  | optional,
                labels | { _ | String } | optional,
                launchTemplate
                  | refs."definitions.LaunchTemplate"
                  | doc "specifies an existing launch template to use for the nodegroup"
                  | optional,
                maxPodsPerNode | std.number.Integer | optional,
                maxSize | std.number.Integer | optional,
                minSize | std.number.Integer | optional,
                name | String,
                nodeRepairConfig
                  | refs."definitions.NodeGroupNodeRepairConfig"
                  | doc "configures the auto repair feature of the nodegroup"
                  | optional,
                outpostARN
                  | String
                  | doc "specifies the Outpost ARN in which the nodegroup should be created."
                  | optional,
                overrideBootstrapCommand
                  | String
                  | doc "Override `eksctl`'s bootstrapping script"
                  | optional,
                placement
                  | refs."definitions.Placement"
                  | doc "specifies the placement group in which nodes should be spawned"
                  | optional,
                preBootstrapCommands
                  | Array String
                  | doc "executed before bootstrapping instances to the cluster"
                  | optional,
                privateNetworking
                  | Bool
                  | doc "Enable [private networking](/usage/vpc-networking/#use-private-subnets-for-initial-nodegroup) for nodegroup"
                  | optional,
                propagateASGTags
                  | Bool
                  | doc "Propagate all taints and labels to the ASG automatically."
                  | optional,
                releaseVersion
                  | String
                  | doc "the AMI version of the EKS optimized AMI to use"
                  | optional,
                securityGroups | refs."definitions.NodeGroupSGs" | optional,
                spot | Bool | doc "creates a spot nodegroup" | optional,
                ssh
                  | refs."definitions.NodeGroupSSH"
                  | doc "configures ssh access for this nodegroup"
                  | optional,
                subnets
                  | Array String
                  | doc "Limit nodes to specific subnets"
                  | optional,
                tags
                  | { _ | String }
                  | doc "Applied to the Autoscaling Group and to the EC2 instances (unmanaged), Applied to the EKS Nodegroup resource and to the EC2 instances (managed)"
                  | optional,
                taints
                  | Array refs."definitions.NodeGroupTaint"
                  | doc "taints to apply to the nodegroup"
                  | optional,
                updateConfig
                  | refs."definitions.NodeGroupUpdateConfig"
                  | doc "configures how to update NodeGroups."
                  | optional,
                volumeEncrypted | Bool | optional,
                volumeIOPS | std.number.Integer | optional,
                volumeKmsKeyID | String | optional,
                volumeName | String | optional,
                volumeSize | std.number.Integer | doc "gigabytes" | optional,
                volumeThroughput | std.number.Integer | optional,
                volumeType
                  | std.enum.TagOrString
                  | [| 'st1, 'sc1, 'io2, 'io1, 'gp3, 'gp2 |]
                  | doc "Valid variants are: `\"gp2\"` is General Purpose SSD, `\"gp3\"` is General Purpose SSD which can be optimised for high throughput (default), `\"io1\"` is Provisioned IOPS SSD, `\"io2\"` is Provisioned IOPS SSD, `\"sc1\"` is Cold HDD, `\"st1\"` is Throughput Optimized HDD."
                  | optional,
              },
              Array Dyn
            ],
      "definitions.MetricsCollection" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              { granularity | String, metrics | Array String | optional, },
              Array Dyn
            ],
      "definitions.NodeGroup" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                additionalVolumes
                  | Array refs."definitions.VolumeMapping"
                  | doc "Additional Volume Configurations"
                  | optional,
                ami
                  | String
                  | doc "Specify [custom AMIs](/usage/custom-ami-support/), `auto-ssm`, `auto`, or `static`"
                  | optional,
                amiFamily
                  | std.enum.TagOrString
                  | [|
                    'WindowsServer2022FullContainer,
                    'WindowsServer2022CoreContainer,
                    'WindowsServer2019FullContainer,
                    'WindowsServer2019CoreContainer,
                    'Bottlerocket,
                    'Ubuntu2004,
                    'UbuntuPro2004,
                    'Ubuntu2204,
                    'UbuntuPro2204,
                    'Ubuntu2404,
                    'UbuntuPro2404,
                    'AmazonLinux2023,
                    'AmazonLinux2
                  |]
                  | doc "Valid variants are: `\"AmazonLinux2\"` (default), `\"AmazonLinux2023\"`, `\"UbuntuPro2404\"`, `\"Ubuntu2404\"`, `\"UbuntuPro2204\"`, `\"Ubuntu2204\"`, `\"UbuntuPro2004\"`, `\"Ubuntu2004\"`, `\"Bottlerocket\"`, `\"WindowsServer2019CoreContainer\"`, `\"WindowsServer2019FullContainer\"`, `\"WindowsServer2022CoreContainer\"`, `\"WindowsServer2022FullContainer\"`."
                  | optional,
                asgMetricsCollection
                  | Array refs."definitions.MetricsCollection"
                  | optional,
                asgSuspendProcesses
                  | Array String
                  | doc "See [relevant AWS docs](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-attribute-updatepolicy.html#cfn-attributes-updatepolicy-rollingupdate-suspendprocesses)"
                  | optional,
                availabilityZones
                  | Array String
                  | doc "Limit [nodes to specific AZs](/usage/autoscaling/#zone-aware-auto-scaling)"
                  | optional,
                bottlerocket
                  | refs."definitions.NodeGroupBottlerocket"
                  | doc "specifies settings for Bottlerocket nodes"
                  | optional,
                capacityReservation
                  | refs."definitions.CapacityReservation"
                  | doc "defines reservation policy for a nodegroup"
                  | optional,
                classicLoadBalancerNames
                  | Array String
                  | doc "Associate load balancers with auto scaling group"
                  | optional,
                clusterDNS
                  | String
                  | doc "[Custom address](/usage/vpc-networking/#custom-cluster-dns-address) used for DNS lookups"
                  | optional,
                containerRuntime
                  | String
                  | doc "defines the runtime (CRI) to use for containers on the node"
                  | optional,
                cpuCredits
                  | String
                  | doc "configures [T3 Unlimited](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/burstable-performance-instances-unlimited-mode.html), valid only for T-type instances"
                  | optional,
                desiredCapacity | std.number.Integer | optional,
                disableIMDSv1
                  | Bool
                  | doc "requires requests to the metadata service to use IMDSv2 tokens"
                  | optional,
                disablePodIMDS
                  | Bool
                  | doc "blocks all IMDS requests from non-host networking pods"
                  | optional,
                ebsOptimized
                  | Bool
                  | doc "enables [EBS optimization](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-optimized.html)"
                  | optional,
                efaEnabled
                  | Bool
                  | doc "creates the maximum allowed number of EFA-enabled network cards on nodes in this group."
                  | optional,
                enableDetailedMonitoring
                  | Bool
                  | doc "Enable EC2 detailed monitoring"
                  | optional,
                enclaveEnabled
                  | Bool
                  | doc "determines if the EC2 instance will be Nitro enclave enabled"
                  | optional,
                iam | refs."definitions.NodeGroupIAM" | optional,
                instanceMarketOptions
                  | refs."definitions.InstanceMarketOptions"
                  | doc "describes the market (purchasing) option for the instances"
                  | optional,
                instanceName | String | optional,
                instancePrefix | String | optional,
                instanceSelector
                  | refs."definitions.InstanceSelector"
                  | doc "specifies options for EC2 instance selector"
                  | optional,
                instanceType | String | optional,
                instancesDistribution
                  | refs."definitions.NodeGroupInstancesDistribution"
                  | optional,
                kubeletExtraConfig
                  | refs."definitions.InlineDocument"
                  | { _ | Dyn }
                  | doc "[Customize `kubelet` config](/usage/customizing-the-kubelet/)"
                  | optional,
                labels | { _ | String } | optional,
                localZones
                  | Array String
                  | doc "specifies a list of local zones where the nodegroup should be launched. The cluster should have been created with all of the local zones specified in this field."
                  | optional,
                maxInstanceLifetime
                  | std.number.Integer
                  | doc "defines the maximum amount of time in seconds an instance stays alive."
                  | optional,
                maxPodsPerNode | std.number.Integer | optional,
                maxSize | std.number.Integer | optional,
                minSize | std.number.Integer | optional,
                name | String,
                outpostARN
                  | String
                  | doc "specifies the Outpost ARN in which the nodegroup should be created."
                  | optional,
                overrideBootstrapCommand
                  | String
                  | doc "Override `eksctl`'s bootstrapping script"
                  | optional,
                placement
                  | refs."definitions.Placement"
                  | doc "specifies the placement group in which nodes should be spawned"
                  | optional,
                preBootstrapCommands
                  | Array String
                  | doc "executed before bootstrapping instances to the cluster"
                  | optional,
                privateNetworking
                  | Bool
                  | doc "Enable [private networking](/usage/vpc-networking/#use-private-subnets-for-initial-nodegroup) for nodegroup"
                  | optional,
                propagateASGTags
                  | Bool
                  | doc "Propagate all taints and labels to the ASG automatically."
                  | optional,
                securityGroups | refs."definitions.NodeGroupSGs" | optional,
                ssh
                  | refs."definitions.NodeGroupSSH"
                  | doc "configures ssh access for this nodegroup"
                  | optional,
                subnets
                  | Array String
                  | doc "Limit nodes to specific subnets"
                  | optional,
                tags
                  | { _ | String }
                  | doc "Applied to the Autoscaling Group and to the EC2 instances (unmanaged), Applied to the EKS Nodegroup resource and to the EC2 instances (managed)"
                  | optional,
                taints
                  | refs."definitions.taintsWrapper"
                  | Array Dyn
                  | doc "taints to apply to the nodegroup"
                  | optional,
                targetGroupARNs
                  | Array String
                  | doc "Associate target group with auto scaling group"
                  | optional,
                updateConfig
                  | refs."definitions.NodeGroupUpdateConfig"
                  | doc "configures how to update NodeGroups."
                  | optional,
                volumeEncrypted | Bool | optional,
                volumeIOPS | std.number.Integer | optional,
                volumeKmsKeyID | String | optional,
                volumeName | String | optional,
                volumeSize | std.number.Integer | doc "gigabytes" | optional,
                volumeThroughput | std.number.Integer | optional,
                volumeType
                  | std.enum.TagOrString
                  | [| 'st1, 'sc1, 'io2, 'io1, 'gp3, 'gp2 |]
                  | doc "Valid variants are: `\"gp2\"` is General Purpose SSD, `\"gp3\"` is General Purpose SSD which can be optimised for high throughput (default), `\"io1\"` is Provisioned IOPS SSD, `\"io2\"` is Provisioned IOPS SSD, `\"sc1\"` is Cold HDD, `\"st1\"` is Throughput Optimized HDD."
                  | optional,
              },
              Array Dyn
            ],
      "definitions.NodeGroupBottlerocket" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                enableAdminContainer | Bool | optional,
                settings
                  | refs."definitions.InlineDocument"
                  | { _ | Dyn }
                  | doc "contains any [bottlerocket settings](https://bottlerocket.dev/en/os/latest/#/api/settings/)"
                  | optional,
              },
              Array Dyn
            ],
      "definitions.NodeGroupIAM" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                attachPolicy
                  | refs."definitions.InlineDocument"
                  | { _ | Dyn }
                  | doc "holds a policy document to attach"
                  | optional,
                attachPolicyARNs
                  | Array String
                  | doc "list of ARNs of the IAM policies to attach"
                  | optional,
                instanceProfileARN
                  | String
                  | doc "holds the ARN of instance profile, not supported for Managed NodeGroups"
                  | optional,
                instanceRoleARN | String | optional,
                instanceRoleName | String | optional,
                instanceRolePermissionsBoundary | String | optional,
                withAddonPolicies
                  | refs."definitions.NodeGroupIAMAddonPolicies"
                  | optional,
              },
              Array Dyn
            ],
      "definitions.NodeGroupIAMAddonPolicies" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                albIngress | Bool | optional,
                appMesh
                  | Bool
                  | doc "enables full access to AppMesh"
                  | optional,
                appMeshPreview
                  | Bool
                  | doc "enables full access to AppMesh Preview"
                  | optional,
                autoScaler
                  | Bool
                  | doc "enables IAM policy for cluster-autoscaler"
                  | optional,
                awsLoadBalancerController | Bool | optional,
                certManager
                  | Bool
                  | doc "enables the ability to add records to Route 53 in order to solve the DNS01 challenge. More information can be found [here](https://cert-manager.io/docs/configuration/acme/dns01/route53/#set-up-a-iam-role)"
                  | optional,
                cloudWatch | Bool | optional,
                ebs
                  | Bool
                  | doc "enables the new EBS CSI (Elastic Block Store Container Storage Interface) driver"
                  | optional,
                efs | Bool | optional,
                externalDNS
                  | Bool
                  | doc "adds the external-dns project policies for Amazon Route 53"
                  | optional,
                fsx | Bool | optional,
                imageBuilder
                  | Bool
                  | doc "allows for full ECR (Elastic Container Registry) access. This is useful for building, for example, a CI server that needs to push images to ECR"
                  | optional,
                xRay | Bool | optional,
              },
              Array Dyn
            ],
      "definitions.NodeGroupInstancesDistribution" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                capacityRebalance
                  | Bool
                  | doc "Enable [capacity rebalancing](https://docs.aws.amazon.com/autoscaling/ec2/userguide/capacity-rebalance.html) for spot instances"
                  | optional,
                instanceTypes | Array String,
                maxPrice | Number | optional,
                onDemandBaseCapacity | std.number.Integer | optional,
                onDemandPercentageAboveBaseCapacity
                  | std.number.Integer
                  | doc "Range [0-100]"
                  | optional,
                spotAllocationStrategy | String | optional,
                spotInstancePools
                  | std.number.Integer
                  | doc "Range [1-20]"
                  | optional,
              },
              Array Dyn
            ],
      "definitions.NodeGroupNodeRepairConfig" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                enabled
                  | Bool
                  | doc "Enables the auto repair feature for the nodegroup"
                  | optional,
              },
              Array Dyn
            ],
      "definitions.NodeGroupSGs" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                attachIDs
                  | Array String
                  | doc "attaches additional security groups to the nodegroup"
                  | optional,
                withLocal
                  | Bool
                  | doc "attach a security group local to this nodegroup Not supported for managed nodegroups"
                  | optional,
                withShared
                  | Bool
                  | doc "attach the security group shared among all nodegroups in the cluster Not supported for managed nodegroups"
                  | optional,
              },
              Array Dyn
            ],
      "definitions.NodeGroupSSH" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                allow
                  | Bool
                  | doc "If Allow is true the SSH configuration provided is used, otherwise it is ignored. Only one of PublicKeyPath, PublicKey and PublicKeyName can be configured"
                  | optional,
                enableSsm
                  | Bool
                  | doc "Enables the ability to [SSH onto nodes using SSM](/introduction#ssh-access)"
                  | optional,
                publicKey
                  | String
                  | doc "Public key to be added to the nodes SSH keychain. If Allow is false this value is ignored."
                  | optional,
                publicKeyName
                  | String
                  | doc "Public key name in EC2 to be added to the nodes SSH keychain. If Allow is false this value is ignored."
                  | optional,
                publicKeyPath
                  | String
                  | doc "The path to the SSH public key to be added to the nodes SSH keychain. If Allow is true this value defaults to \"~/.ssh/id_rsa.pub\", otherwise the value is ignored."
                  | optional,
                sourceSecurityGroupIds | Array String | optional,
              },
              Array Dyn
            ],
      "definitions.NodeGroupTaint" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                effect | js2n.Always | optional,
                key | String | optional,
                value | String | optional,
              },
              Array Dyn
            ],
      "definitions.NodeGroupUpdateConfig" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                maxUnavailable
                  | std.number.Integer
                  | doc "sets the max number of nodes that can become unavailable when updating a nodegroup (specified as number)"
                  | optional,
                maxUnavailablePercentage
                  | std.number.Integer
                  | doc "sets the max number of nodes that can become unavailable when updating a nodegroup (specified as percentage)"
                  | optional,
              },
              Array Dyn
            ],
      "definitions.OIDCIdentityProvider" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                clientID | String,
                groupsClaim | String | optional,
                groupsPrefix | String | optional,
                issuerURL | String,
                name | String,
                requiredClaims | { _ | String } | optional,
                tags | { _ | String } | optional,
                usernameClaim | String | optional,
                usernamePrefix | String | optional,
              },
              Array Dyn
            ],
      "definitions.Outpost" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                controlPlaneInstanceType
                  | String
                  | doc "specifies the instance type to use for creating the control plane instances."
                  | optional,
                controlPlaneOutpostARN
                  | String
                  | doc "specifies the Outpost ARN in which the control plane should be created."
                  | optional,
                controlPlanePlacement
                  | refs."definitions.Placement"
                  | doc "specifies the placement configuration for control plane instances on Outposts."
                  | optional,
              },
              Array Dyn
            ],
      "definitions.Placement" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              { groupName | String | optional, },
              Array Dyn
            ],
      "definitions.PodIdentityAssociation" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                createServiceAccount | Bool | optional,
                namespace | String | optional,
                permissionPolicy
                  | refs."definitions.InlineDocument"
                  | { _ | Dyn }
                  | optional,
                permissionPolicyARNs | Array String | optional,
                permissionsBoundaryARN | String | optional,
                roleARN | String | optional,
                roleName | String | optional,
                serviceAccountName | String | optional,
                tags | { _ | String } | optional,
                wellKnownPolicies
                  | refs."definitions.WellKnownPolicies"
                  | optional,
              },
              Array Dyn
            ],
      "definitions.PrivateCluster" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                additionalEndpointServices
                  | Array String
                  | doc "specifies additional endpoint services that must be enabled for private access. Valid entries are \"cloudformation\", \"autoscaling\" and \"logs\"."
                  | optional,
                enabled
                  | Bool
                  | doc "enables creation of a fully-private cluster."
                  | optional,
                skipEndpointCreation
                  | Bool
                  | doc "skips the creation process for endpoints completely. This is only used in case of an already provided VPC and if the user decided to set it to true."
                  | optional,
              },
              Array Dyn
            ],
      "definitions.RemoteNetwork" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              { cidrs | Array String | optional, },
              Array Dyn
            ],
      "definitions.RemoteNetworkConfig" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                iam | refs."definitions.RemoteNodesIAM" | optional,
                remoteNodeNetworks | Array refs."definitions.RemoteNetwork",
                remotePodNetworks
                  | Array refs."definitions.RemoteNetwork"
                  | optional,
                vpcGatewayID | refs."definitions.VPCGateway" | String,
              },
              Array Dyn
            ],
      "definitions.RemoteNodesIAM" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                caBundleCert
                  | String
                  | doc "the CA bundle certificate used by IRA trust anchor. Can't be set if Provider is SSM."
                  | optional,
                provider
                  | String
                  | doc "the AWS service responsible for provisioning IAM credentials to remote nodes. Valid options are `SSM` (System Manager), default, and `IRA` (IAM Roles anywhere). Required IRA config (i.e. TrustAnchor, AnywhereProfile) will be created by eksctl behind the scenes."
                  | optional,
                roleARN
                  | String
                  | doc "the IAM Role ARN to be added to aws-auth configmap for remote nodes. If not set, eksctl creates the role behind the scenes, adds an entry into the configmap and sets up any other SSM/IRA config. If set, eksctl will only add the configmap entry, while creating any required SSM/IRA config falls under user's responsibility."
                  | optional,
              },
              Array Dyn
            ],
      "definitions.SecretsEncryption" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              { keyARN | String, },
              Array Dyn
            ],
      "definitions.VPCGateway" = String,
      "definitions.VolumeMapping" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                snapshotID | String | optional,
                volumeEncrypted | Bool | optional,
                volumeIOPS | std.number.Integer | optional,
                volumeKmsKeyID | String | optional,
                volumeName | String | optional,
                volumeSize | std.number.Integer | doc "gigabytes" | optional,
                volumeThroughput | std.number.Integer | optional,
                volumeType
                  | std.enum.TagOrString
                  | [| 'st1, 'sc1, 'io2, 'io1, 'gp3, 'gp2 |]
                  | doc "Valid variants are: `\"gp2\"` is General Purpose SSD, `\"gp3\"` is General Purpose SSD which can be optimised for high throughput (default), `\"io1\"` is Provisioned IOPS SSD, `\"io2\"` is Provisioned IOPS SSD, `\"sc1\"` is Cold HDD, `\"st1\"` is Throughput Optimized HDD."
                  | optional,
              },
              Array Dyn
            ],
      "definitions.WellKnownPolicies" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                autoScaler
                  | Bool
                  | doc "adds policies for cluster-autoscaler. See [autoscaler AWS docs](https://docs.aws.amazon.com/eks/latest/userguide/cluster-autoscaler.html)."
                  | optional,
                awsLoadBalancerController
                  | Bool
                  | doc "adds policies for using the aws-load-balancer-controller. See [Load Balancer docs](https://docs.aws.amazon.com/eks/latest/userguide/aws-load-balancer-controller.html)."
                  | optional,
                certManager
                  | Bool
                  | doc "adds cert-manager policies. See [cert-manager docs](https://cert-manager.io/docs/configuration/acme/dns01/route53)."
                  | optional,
                ebsCSIController
                  | Bool
                  | doc "adds policies for using the ebs-csi-controller. See [aws-ebs-csi-driver docs](https://github.com/kubernetes-sigs/aws-ebs-csi-driver#set-up-driver-permission)."
                  | optional,
                efsCSIController
                  | Bool
                  | doc "adds policies for using the efs-csi-controller. See [aws-efs-csi-driver docs](https://aws.amazon.com/blogs/containers/introducing-efs-csi-dynamic-provisioning)."
                  | optional,
                externalDNS
                  | Bool
                  | doc "adds external-dns policies for Amazon Route 53. See [external-dns docs](https://github.com/kubernetes-sigs/external-dns/blob/master/docs/tutorials/aws.md)."
                  | optional,
                imageBuilder
                  | Bool
                  | doc "allows for full ECR (Elastic Container Registry) access."
                  | optional,
              },
              Array Dyn
            ],
      "definitions.ZonalShiftConfig" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                enabled
                  | Bool
                  | doc "enables or disables zonal shift."
                  | optional,
              },
              Array Dyn
            ],
      "definitions.taintsWrapper" = Array refs."definitions.NodeGroupTaint",
    }
    in
  std.contract.Sequence [ refs."definitions.ClusterConfig", { _ | Dyn } ]