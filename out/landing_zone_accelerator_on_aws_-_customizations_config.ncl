# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.AlbListenerProtocolEnum" =
        std.contract.Sequence [ std.enum.TagOrString, [| 'HTTPS, 'HTTP |] ],
      "definitions.AlbListenerTypeEnum" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [| 'redirect, 'forward, 'fixed-response |]
            ],
      "definitions.AlbRoutingHttpConfigMitigationModeEnum" =
        std.contract.Sequence
            [ std.enum.TagOrString, [| 'strictest, 'defensive, 'monitor |] ],
      "definitions.AlbSchemeEnum" =
        std.contract.Sequence
            [ std.enum.TagOrString, [| 'internal, 'internet-facing |] ],
      "definitions.AlpnPolicyEnum" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [|
                'None,
                'HTTP2Preferred,
                'HTTP2Optional,
                'HTTP2Only,
                'HTTP1Only
              |]
            ],
      "definitions.AutoScalingHealthCheckTypeEnum" =
        std.contract.Sequence [ std.enum.TagOrString, [| 'ELB, 'EC2 |] ],
      "definitions.IAlbAttributesConfig" =
        {
            deletionProtection
              | Bool
              | doc "Enable or disable deletion protection."
              | optional,
            http2Enabled
              | Bool
              | doc "Indicates whether HTTP/2 is enabled. The possible values are true and false. The default is true. Elastic Load Balancing requires that message header names contain only alphanumeric characters and hyphens."
              | optional,
            idleTimeout
              | Number
              | doc "The idle timeout value, in seconds. The valid range is 1-4000 seconds. The default is 60 seconds."
              | optional,
            routingHttpDesyncMitigationMode
              | refs."definitions.AlbRoutingHttpConfigMitigationModeEnum"
              | String
              | doc "Determines how the load balancer handles requests that might pose a security risk to your application. The possible values are `monitor` , `defensive` , and `strictest` . The default is `defensive`."
              | optional,
            routingHttpDropInvalidHeader
              | Bool
              | doc "Indicates whether HTTP headers with invalid header fields are removed by the load balancer ( true ) or routed to targets ( false ). The default is false."
              | optional,
            routingHttpXAmznTlsCipherEnable
              | Bool
              | doc "Indicates whether the two headers ( x-amzn-tls-version and x-amzn-tls-cipher-suite ), which contain information about the negotiated TLS version and cipher suite, are added to the client request before sending it to the target. The x-amzn-tls-version header has information about the TLS protocol version negotiated with the client, and the x-amzn-tls-cipher-suite header has information about the cipher suite negotiated with the client. Both headers are in OpenSSL format. The possible values for the attribute are true and false . The default is false."
              | optional,
            routingHttpXffClientPort
              | Bool
              | doc "Indicates whether the X-Forwarded-For header should preserve the source port that the client used to connect to the load balancer. The possible values are true and false . The default is false."
              | optional,
            routingHttpXffHeaderProcessingMode
              | refs."definitions.RoutingHttpXffHeaderProcessingModeEnum"
              | String
              | doc "Enables you to modify, preserve, or remove the X-Forwarded-For header in the HTTP request before the Application Load Balancer sends the request to the target. The possible values are append, preserve, and remove. The default is append."
              | optional,
            wafFailOpen
              | Bool
              | doc "Indicates whether to allow a WAF-enabled load balancer to route requests to targets if it is unable to forward the request to AWS WAF. The possible values are true and false. The default is false."
              | optional,
          },
      "definitions.IAlbListenerConfig" =
        {
            certificate
              | refs."definitions.NonEmptyString"
              | String
              | doc "Applies to HTTPS listeners. The default certificate for the listener. You must provide exactly one certificate arn or a certificate name which was created by LZA"
              | optional,
            fixedResponseConfig
              | refs."definitions.IAlbListenerFixedResponseConfig"
              | { _ | Dyn }
              | doc "Information for creating an action that returns a custom HTTP response. Specify only when type is `fixed-response`."
              | optional,
            forwardConfig
              | refs."definitions.IAlbListenerForwardConfig"
              | { _ | Dyn }
              | doc "Information for creating an action that distributes requests to targetGroup. Stickiness for targetGroup can be set here."
              | optional,
            name
              | refs."definitions.NonEmptyString"
              | String
              | doc "The name of the application load balancer listener",
            order
              | Number
              | doc "The order for the action. This value is required for rules with multiple actions. The action with the lowest value for order is performed first"
              | optional,
            port
              | Number
              | doc "Port of the application load balancer listener",
            protocol
              | refs."definitions.AlbListenerProtocolEnum"
              | String
              | doc "Protocol of the application load balancer listener. The supported protocols are HTTP and HTTPS",
            redirectConfig
              | refs."definitions.IAlbListenerRedirectConfig"
              | { _ | Dyn }
              | doc "Information for creating a redirect action. Specify only when type is `redirect`."
              | optional,
            sslPolicy
              | refs."definitions.SslPolicyAlbEnum"
              | String
              | doc "The security policy that defines which protocols and ciphers are supported."
              | optional,
            targetGroup
              | refs."definitions.NonEmptyString"
              | String
              | doc "Target Group name to which traffic will be forwarded to. This name should be same as  {@link  ApplicationLoadBalancerTargetGroupConfig targetGroup }  name.",
            type
              | refs."definitions.AlbListenerTypeEnum"
              | String
              | doc "Type of the application load balancer listener",
          },
      "definitions.IAlbListenerFixedResponseConfig" =
        {
            contentType
              | refs."definitions.NonEmptyString"
              | String
              | doc "The message to send back."
              | optional,
            messageBody
              | refs."definitions.NonEmptyString"
              | String
              | doc "The HTTP response code (2XX, 4XX, or 5XX)."
              | optional,
            statusCode
              | refs."definitions.NonEmptyString"
              | String
              | doc "The content type. Valid Values: text/plain | text/css | text/html | application/javascript | application/json",
          },
      "definitions.IAlbListenerForwardConfig" =
        {
            targetGroupStickinessConfig
              | refs."definitions.IAlbListenerTargetGroupStickinessConfig"
              | { _ | Dyn }
              | optional,
          },
      "definitions.IAlbListenerRedirectConfig" =
        {
            host | refs."definitions.NonEmptyString" | String | optional,
            path | refs."definitions.NonEmptyString" | String | optional,
            port | Number | optional,
            protocol | refs."definitions.NonEmptyString" | String | optional,
            query | refs."definitions.NonEmptyString" | String | optional,
            statusCode | refs."definitions.NonEmptyString" | String | optional,
          },
      "definitions.IAlbListenerTargetGroupStickinessConfig" =
        {
            durationSeconds
              | Number
              | doc "The time period, in seconds, during which requests from a client should be routed to the same target group. The range is 1-604800 seconds (7 days)."
              | optional,
            enabled
              | Bool
              | doc "Indicates whether target group stickiness is enabled."
              | optional,
          },
      "definitions.IAppConfigItem" =
        {
            applicationLoadBalancer
              | refs."definitions.IApplicationLoadBalancerConfig"
              | { _ | Dyn }
              | doc "Application Load Balancer for the application"
              | optional,
            autoscaling
              | refs."definitions.IAutoScalingConfig"
              | { _ | Dyn }
              | doc "AutoScalingGroup for the application"
              | optional,
            deploymentTargets
              | refs."definitions.IDeploymentTargets"
              | { _ | Dyn }
              | doc "The location where the application will be deployed.",
            launchTemplate
              | refs."definitions.ILaunchTemplateConfig"
              | { _ | Dyn }
              | doc "Launch Template for the application"
              | optional,
            name
              | refs."definitions.NonEmptyString"
              | String
              | doc "The name of the application. This should be unique per application.",
            networkLoadBalancer
              | refs."definitions.INetworkLoadBalancerConfig"
              | { _ | Dyn }
              | doc "Network Load Balancer for the application"
              | optional,
            targetGroups
              | Array (
                std.contract.Sequence
                  [ refs."definitions.ITargetGroupItem", { _ | Dyn } ]
              )
              | doc "Target groups for the application"
              | optional,
            vpc
              | refs."definitions.NonEmptyString"
              | String
              | doc "VPC where the application will be deployed. The value should be a reference to the vpc in the network config under `vpcs:`.",
          },
      "definitions.IApplicationLoadBalancerConfig" =
        {
            attributes
              | refs."definitions.IAlbAttributesConfig"
              | { _ | Dyn }
              | doc "Attributes for Application Load Balancer."
              | optional,
            listeners
              | Array (
                std.contract.Sequence
                  [ refs."definitions.IAlbListenerConfig", { _ | Dyn } ]
              )
              | doc "Listeners for Application Load Balancer."
              | optional,
            name
              | refs."definitions.NonEmptyString"
              | String
              | doc "The name of the application load balancer",
            scheme
              | refs."definitions.AlbSchemeEnum"
              | String
              | doc "Internal or internet facing scheme for Application Load Balancer."
              | optional,
            securityGroups
              | Array (
                std.contract.Sequence
                  [ refs."definitions.NonEmptyString", String ]
              )
              | doc "Security Groups to attach to the Application Load Balancer.",
            shareTargets
              | refs."definitions.IShareTargets"
              | { _ | Dyn }
              | doc m%"
                The location where the Application Load Balancer(s) will be deployed to.
                *
              "%
              | optional,
            subnets
              | Array (
                std.contract.Sequence
                  [ refs."definitions.NonEmptyString", String ]
              )
              | doc "Subnets to launch the Application Load Balancer in.",
          },
      "definitions.IAutoScalingConfig" =
        {
            desiredSize
              | Number
              | doc "The desired capacity is the initial capacity of the Auto Scaling group at the time of its creation and the capacity it attempts to maintain. It can scale beyond this capacity if you configure auto scaling. This number must be greater than or equal to the minimum size of the group and less than or equal to the maximum size of the group.",
            healthCheckGracePeriod
              | Number
              | doc "The amount of time, in seconds, that Amazon EC2 Auto Scaling waits before checking the health status of an EC2 instance that has come into service and marking it unhealthy due to a failed Elastic Load Balancing or custom health check. This is useful if your instances do not immediately pass these health checks after they enter the `InService` state. Defaults to 0 if unspecified."
              | optional,
            healthCheckType
              | refs."definitions.AutoScalingHealthCheckTypeEnum"
              | String
              | doc "The service to use for the health checks. The valid values are EC2 (default) and ELB. If you configure an Auto Scaling group to use load balancer (ELB) health checks, it considers the instance unhealthy if it fails either the EC2 status checks or the load balancer health checks."
              | optional,
            launchTemplate
              | refs."definitions.NonEmptyString"
              | String
              | doc "Information used to specify the launch template and version to use to launch instances.",
            maxInstanceLifetime
              | Number
              | doc "The maximum instance lifetime specifies the maximum amount of time (in seconds) that an instance can be in service before it is terminated and replaced. A common use case might be a requirement to replace your instances on a schedule because of internal security policies or external compliance controls. You must specify a value of at least 86,400 seconds (one day). To clear a previously set value, specify a new value of 0. This setting applies to all current and future instances in your Auto Scaling group"
              | optional,
            maxSize | Number | doc "The maximum size of the group.",
            minSize | Number | doc "The minimum size of the group.",
            name
              | refs."definitions.NonEmptyString"
              | String
              | doc m%"
                The name of the Auto Scaling group. This name must be unique per Region per account. The name can contain any ASCII character 33 to 126 including most punctuation characters, digits, and upper and lowercased letters.
                *Note* You cannot use a colon (:) in the name.
              "%,
            subnets
              | Array (
                std.contract.Sequence
                  [ refs."definitions.NonEmptyString", String ]
              )
              | doc "List of subnet names for a virtual private cloud (VPC) where instances in the Auto Scaling group can be created. These subnets should  be created under the VPC in network-config.yaml.",
            targetGroups
              | Array (
                std.contract.Sequence
                  [ refs."definitions.NonEmptyString", String ]
              )
              | doc "Target group name array to associate with the Auto Scaling group. These names are from the  {@link  TargetGroupItemConfig target group }  set in the application. Instances are registered as targets with the target groups. The target groups receive incoming traffic and route requests to one or more registered targets."
              | optional,
          },
      "definitions.IBlockDeviceMappingItem" =
        {
            deviceName
              | refs."definitions.NonEmptyString"
              | String
              | doc "The device name (for example, /dev/sdh or xvdh).",
            ebs
              | refs."definitions.IEbsItem"
              | { _ | Dyn }
              | doc "Parameters used to automatically set up EBS volumes when the instance is launched."
              | optional,
          },
      "definitions.ICfnParameter" = { name | String, value | String, },
      "definitions.ICloudFormationStack" =
        {
            deploymentTargets
              | refs."definitions.IDeploymentTargets"
              | { _ | Dyn }
              | doc "CloudFormation Stack deployment targets",
            description
              | refs."definitions.NonEmptyString"
              | String
              | doc "The description is to used to provide more information about the stack."
              | optional,
            name
              | refs."definitions.NonEmptyString"
              | String
              | doc "The friendly name that will be used as a base for the created CloudFormation Stack Name. The name should not contain any spaces as this isn't supported by the Accelerator.",
            parameters
              | Array (
                std.contract.Sequence
                  [ refs."definitions.ICfnParameter", { _ | Dyn } ]
              )
              | doc "The parameters to pass to the stack."
              | optional,
            regions
              | Array (
                std.contract.Sequence [ refs."definitions.Region", String ]
              )
              | doc "A list of AWS regions to deploy the stack to.",
            runOrder
              | Number
              | doc "The order to deploy the stack relative to the other stacks. Must be a positive integer. To deploy stacks in parallel, set runOrder of each stack to 1.",
            template
              | refs."definitions.NonEmptyString"
              | String
              | doc "The file path to the template file defining the stack.",
            terminationProtection
              | Bool
              | doc "This determines whether to enable termination protection for the stack.",
          },
      "definitions.ICloudFormationStackSet" =
        {
            administrationRoleArn
              | String
              | doc "The Amazon Resource Name (ARN) of the IAM role to use when creating this stack set. This field is optional. If specified, it allows you to set a custom IAM role for stack set operations. If left blank, the default permissions associated with your account will be used."
              | optional,
            capabilities
              | Array (
                std.contract.Sequence
                  [
                    std.enum.TagOrString,
                    [|
                      'CAPABILITY_AUTO_EXPAND,
                      'CAPABILITY_NAMED_IAM,
                      'CAPABILITY_IAM
                    |]
                  ]
              )
              | doc "The CloudFormation capabilities enabled to deploy the stackset."
              | optional,
            dependsOn
              | Array String
              | doc "The other StackSets this StackSet depends on. For stackset names you define here, a CloudFormation DependsOn attribute will be added between the resources. Please note this does not guarantee the deployment order of the stack instances within the StackSet."
              | optional,
            deploymentTargets
              | refs."definitions.IDeploymentTargets"
              | { _ | Dyn }
              | doc "CloudFormation StackSet deployment targets",
            description
              | refs."definitions.NonEmptyString"
              | String
              | doc "The description is to used to provide more information about the stackset."
              | optional,
            executionRoleName
              | String
              | doc "The name of the IAM execution role to use when creating the stack set. This field is optional. If provided, it allows you to specify a custom execution role for stack set operations. If omitted, the default execution role associated with your account will be used."
              | optional,
            name
              | refs."definitions.NonEmptyString"
              | String
              | doc "The friendly name that will be used as a base for the created CloudFormation StackSet Name. The name should not contain any spaces as this isn't supported by the Accelerator.",
            operationPreferences
              | refs."definitions.IOperationPreferences"
              | { _ | Dyn }
              | doc "The operational preferences of current stackset"
              | optional,
            parameters
              | Array (
                std.contract.Sequence
                  [ refs."definitions.ICfnParameter", { _ | Dyn } ]
              )
              | doc "The parameters to be passed to the stackset."
              | optional,
            regions
              | Array (
                std.contract.Sequence [ refs."definitions.Region", String ]
              )
              | doc "A list of regions to deploy the stackset.",
            template
              | refs."definitions.NonEmptyString"
              | String
              | doc "The file path to the template file used for deployment.",
          },
      "definitions.ICustomizationConfig" =
        {
            cloudFormationStackSets
              | Array (
                std.contract.Sequence
                  [ refs."definitions.ICloudFormationStackSet", { _ | Dyn } ]
              )
              | optional,
            cloudFormationStacks
              | Array (
                std.contract.Sequence
                  [ refs."definitions.ICloudFormationStack", { _ | Dyn } ]
              )
              | optional,
            createCfnStackSetExecutionRole | Bool | optional,
            serviceCatalogPortfolios
              | Array (
                std.contract.Sequence
                  [ refs."definitions.IPortfolioConfig", { _ | Dyn } ]
              )
              | optional,
          },
      "definitions.ICustomizationsConfig" =
        {
            applications
              | Array (
                std.contract.Sequence
                  [ refs."definitions.IAppConfigItem", { _ | Dyn } ]
              )
              | optional,
            createCfnStackSetExecutionRole
              | Bool
              | doc m%"
                Defines whether or not the StackSetExecution role is created in all workload accounts and if the StackSetAdmin role is created in the management account. If you are using stacksets and set the value to false, you will need to ensure that the roles are created.
                
                Default value is true.
              "%
              | optional,
            customizations
              | refs."definitions.ICustomizationConfig"
              | { _ | Dyn }
              | optional,
            firewalls
              | refs."definitions.IEc2FirewallConfig"
              | { _ | Dyn }
              | optional,
          },
      "definitions.IDeploymentTargets" =
        {
            accounts | Array String | optional,
            excludedAccounts | Array String | optional,
            excludedRegions | Array String | optional,
            organizationalUnits | Array String | optional,
          },
      "definitions.IEbsItem" =
        {
            deleteOnTermination
              | Bool
              | doc "Indicates whether the EBS volume is deleted on instance termination."
              | optional,
            encrypted
              | Bool
              | doc "Indicates whether the EBS volume is encrypted. Encrypted volumes can only be attached to instances that support Amazon EBS encryption. If you are creating a volume from a snapshot, you can't specify an encryption value. If encrypted is `true` and kmsKeyId is not provided, then accelerator checks for  {@link  EbsDefaultVolumeEncryptionConfig default ebs encryption }  in the config."
              | optional,
            iops
              | Number
              | doc "The number of I/O operations per second (IOPS). For gp3, io1, and io2 volumes, this represents the number of IOPS that are provisioned for the volume. For gp2 volumes, this represents the baseline performance of the volume and the rate at which the volume accumulates I/O credits for bursting. This parameter is supported for io1, io2, and gp3 volumes only. This parameter is not supported for gp2, st1, sc1, or standard volumes."
              | optional,
            kmsKeyId
              | refs."definitions.NonEmptyString"
              | String
              | doc "The ARN of the symmetric AWS Key Management Service (AWS KMS) CMK used for encryption."
              | optional,
            snapshotId
              | refs."definitions.NonEmptyString"
              | String
              | doc "The ID of the snapshot."
              | optional,
            throughput
              | Number
              | doc "The throughput to provision for a gp3 volume, with a maximum of 1,000 MiB/s. Valid Range: Minimum value of 125. Maximum value of 1000."
              | optional,
            volumeSize
              | Number
              | doc m%"
                The size of the volume, in GiBs. You must specify either a snapshot ID or a volume size. The following are the supported volumes sizes for each volume type:
                - gp2 and gp3: 1-16,384
                - io1 and io2: 4-16,384
                - st1 and sc1: 125-16,384
                - standard: 1-1,024
              "%
              | optional,
            volumeType
              | refs."definitions.NonEmptyString"
              | String
              | doc "The volume type. Valid Values: `standard | io1 | io2 | gp2 | sc1 | st1 | gp3`"
              | optional,
          },
      "definitions.IEc2FirewallAutoScalingGroupConfig" =
        {
            account
              | refs."definitions.NonEmptyString"
              | String
              | doc "(OPTIONAL) The logical name of the account to deploy the firewall autoscaling group to"
              | optional,
            autoscaling
              | refs."definitions.IAutoScalingConfig"
              | { _ | Dyn }
              | doc "An AutoScaling Group configuration",
            configDir
              | refs."definitions.NonEmptyString"
              | String
              | doc m%"
                (OPTIONAL) Specify a relative S3 directory path to pull a firewall configuration directory.
                
                Either configFile or configDir can be set but not both.
                
                For example, if your S3 folder path is `s3://path/to/config`, specify `path/to/config` for this property.
                
                **NOTE:** The custom resource backing this feature does not force update on every core pipeline run. To update the resource, update the name of the configuration directory.
              "%
              | optional,
            configFile
              | refs."definitions.NonEmptyString"
              | String
              | doc m%"
                (OPTIONAL) Specify a relative S3 object path to pull a firewall configuration file from.
                
                For example, if your S3 object path is `s3://path/to/config.txt`, specify `path/to/config.txt` for this property.
                
                **NOTE:** The custom resource backing this feature does not force update on every core pipeline run. To update the resource, update the name of the configuration file.
              "%
              | optional,
            launchTemplate
              | refs."definitions.ILaunchTemplateConfig"
              | { _ | Dyn }
              | doc "The launch template for the firewall instance",
            licenseFile
              | refs."definitions.NonEmptyString"
              | String
              | doc m%"
                (OPTIONAL) Specify a relative S3 object path to pull a firewall license file from.
                
                For example, if your S3 object path is `s3://path/to/license.lic`, specify `path/to/license.lic` for this property.
                
                **NOTE:** The custom resource backing this feature does not force update on every core pipeline run. To update the resource, update the name of the license file.
              "%
              | optional,
            name
              | refs."definitions.NonEmptyString"
              | String
              | doc "The friendly name of the firewall instance",
            staticReplacements
              | Array (
                std.contract.Sequence
                  [
                    refs."definitions.IFirewallStaticReplacementsConfig",
                    { _ | Dyn }
                  ]
              )
              | doc "(OPTIONAL) Static firewall configuration replacements definition."
              | optional,
            tags
              | Array (
                std.contract.Sequence [ refs."definitions.ITag", { _ | Dyn } ]
              )
              | doc "(OPTIONAL) An array of tags"
              | optional,
            vpc
              | refs."definitions.NonEmptyString"
              | String
              | doc "The friendly name of the VPC to deploy the firewall instance to",
          },
      "definitions.IEc2FirewallConfig" =
        {
            autoscalingGroups
              | Array (
                std.contract.Sequence
                  [
                    refs."definitions.IEc2FirewallAutoScalingGroupConfig",
                    { _ | Dyn }
                  ]
              )
              | doc "Define EC2-based firewall instances in autoscaling groups"
              | optional,
            instances
              | Array (
                std.contract.Sequence
                  [ refs."definitions.IEc2FirewallInstanceConfig", { _ | Dyn } ]
              )
              | doc "Define EC2-based firewall standalone instances"
              | optional,
            managerInstances
              | Array (
                std.contract.Sequence
                  [ refs."definitions.IEc2FirewallInstanceConfig", { _ | Dyn } ]
              )
              | doc "Define EC2-based firewall management instances"
              | optional,
            targetGroups
              | Array (
                std.contract.Sequence
                  [ refs."definitions.ITargetGroupItem", { _ | Dyn } ]
              )
              | doc "Define target groups for EC2-based firewalls"
              | optional,
          },
      "definitions.IEc2FirewallInstanceConfig" =
        {
            account
              | refs."definitions.NonEmptyString"
              | String
              | doc "(OPTIONAL) The logical name of the account to deploy the firewall instance to"
              | optional,
            configDir
              | refs."definitions.NonEmptyString"
              | String
              | doc m%"
                (OPTIONAL) Specify a relative S3 directory path to pull a firewall configuration directory.
                
                Either configFile or configDir can be set but not both.
                
                For example, if your S3 folder path is `s3://path/to/config`, specify `path/to/config` for this property.
                
                **NOTE:** The custom resource backing this feature does not force update on every core pipeline run. To update the resource, update the name of the configuration directory.
              "%
              | optional,
            configFile
              | refs."definitions.NonEmptyString"
              | String
              | doc m%"
                (OPTIONAL) Specify a relative S3 object path to pull a firewall configuration file from.
                
                For example, if your S3 object path is `s3://path/to/config.txt`, specify `path/to/config.txt` for this property.
                
                **NOTE:** The custom resource backing this feature does not force update on every core pipeline run. To update the resource, update the name of the configuration file.
              "%
              | optional,
            detailedMonitoring
              | Bool
              | doc "(OPTIONAL) Specify true to enable detailed monitoring. Otherwise, basic monitoring is enabled."
              | optional,
            launchTemplate
              | refs."definitions.ILaunchTemplateConfig"
              | { _ | Dyn }
              | doc "The launch template for the firewall instance",
            licenseFile
              | refs."definitions.NonEmptyString"
              | String
              | doc m%"
                (OPTIONAL) Specify a relative S3 object path to pull a firewall license file from.
                
                For example, if your S3 object path is `s3://path/to/license.lic`, specify `path/to/license.lic` for this property.
                
                **NOTE:** The custom resource backing this feature does not force update on every core pipeline run. To update the resource, update the name of the license file.
              "%
              | optional,
            name
              | refs."definitions.NonEmptyString"
              | String
              | doc "The friendly name of the firewall instance",
            staticReplacements
              | Array (
                std.contract.Sequence
                  [
                    refs."definitions.IFirewallStaticReplacementsConfig",
                    { _ | Dyn }
                  ]
              )
              | doc "(OPTIONAL) Static firewall configuration replacements definition."
              | optional,
            tags
              | Array (
                std.contract.Sequence [ refs."definitions.ITag", { _ | Dyn } ]
              )
              | doc "(OPTIONAL) An array of tags"
              | optional,
            terminationProtection
              | Bool
              | doc m%"
                (OPTIONAL) If you set this parameter to true , you can't terminate the instance using the Amazon EC2 console, CLI, or API.
                
                More information: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/terminating-instances.html#Using_ChangingDisableAPITermination
              "%
              | optional,
            vpc
              | refs."definitions.NonEmptyString"
              | String
              | doc "The friendly name of the VPC to deploy the firewall instance to",
          },
      "definitions.IFirewallStaticReplacementsConfig" =
        {
            key
              | refs."definitions.NonEmptyString"
              | String
              | doc "The key name for the static replacement",
            value
              | refs."definitions.NonEmptyString"
              | String
              | doc "The value of the static replacement",
          },
      "definitions.ILaunchTemplateConfig" =
        {
            blockDeviceMappings
              | Array (
                std.contract.Sequence
                  [ refs."definitions.IBlockDeviceMappingItem", { _ | Dyn } ]
              )
              | optional,
            enforceImdsv2
              | Bool
              | doc "By default,  {@link  https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/configuring-instance-metadata-service.html IMDSv2 }   is enabled. Disable it by setting this to false."
              | optional,
            iamInstanceProfile
              | refs."definitions.NonEmptyString"
              | String
              | doc "Name of the instance profile created by accelerator in iam-config.yaml under roleSets"
              | optional,
            imageId
              | refs."definitions.NonEmptyString"
              | String
              | doc m%"
                Valid AMI ID or a reference to ssm parameter store to get AMI ID. If ssm parameter is referenced it should follow the pattern ${ACCEL_LOOKUP::ImageId:/path/to/ssm/parameter/for/ami}
                
                For example to get the latest x86_64 amazon linux 2 ami, the value would be `${ACCEL_LOOKUP::ImageId:/aws/service/ami-amazon-linux-latest/amzn2-ami-hvm-x86_64-gp2}`
              "%,
            instanceType
              | refs."definitions.NonEmptyString"
              | String
              | doc "Valid instance type which can be launched in the target account and region.",
            keyPair
              | refs."definitions.NonEmptyString"
              | String
              | doc "The name of the key pair. LZA does not create keypair. This should exist in the account/region or else deployment will fail."
              | optional,
            name | refs."definitions.NonEmptyString" | String,
            networkInterfaces
              | Array (
                std.contract.Sequence
                  [ refs."definitions.INetworkInterfaceItem", { _ | Dyn } ]
              )
              | doc "One or more network interfaces. If you specify a network interface, you must specify any security groups and subnets as part of the network interface."
              | optional,
            securityGroups
              | Array (
                std.contract.Sequence
                  [ refs."definitions.NonEmptyString", String ]
              )
              | doc "One or more security group names. These should be created under the VPC in network-config.yaml"
              | optional,
            userData
              | refs."definitions.NonEmptyString"
              | String
              | doc "Path to user data. The path is relative to the config repository and the content should be in regular text. It is encoded in base64 before passing in to Launch Template"
              | optional,
          },
      "definitions.INetworkInterfaceItem" =
        {
            associateCarrierIpAddress
              | Bool
              | doc "Associates a Carrier IP address with eth0 for a new network interface. Use this option when you launch an instance in a Wavelength Zone and want to associate a Carrier IP address with the network interface."
              | optional,
            associateElasticIp
              | Bool
              | doc "Associate an elastic IP with the interface"
              | optional,
            associatePublicIpAddress
              | Bool
              | doc "Associates a public IPv4 address with eth0 for a new network interface."
              | optional,
            deleteOnTermination
              | Bool
              | doc "Indicates whether the network interface is deleted when the instance is terminated."
              | optional,
            description
              | refs."definitions.NonEmptyString"
              | String
              | doc "A description for the network interface."
              | optional,
            deviceIndex
              | Number
              | doc "The device index for the network interface attachment."
              | optional,
            groups
              | Array (
                std.contract.Sequence
                  [ refs."definitions.NonEmptyString", String ]
              )
              | doc "Security group names to associate with this network interface."
              | optional,
            interfaceType
              | refs."definitions.NonEmptyString"
              | String
              | doc "The type of network interface. To create an Elastic Fabric Adapter (EFA), specify efa. If you are not creating an EFA, specify interface or omit this parameter. Valid values: `interface | efa`"
              | optional,
            networkCardIndex
              | Number
              | doc "The index of the network card. Some instance types support multiple network cards. The primary network interface must be assigned to network card index 0. The default is network card index 0."
              | optional,
            networkInterfaceId
              | refs."definitions.NonEmptyString"
              | String
              | doc "The ID of the network interface."
              | optional,
            privateIpAddress
              | refs."definitions.NonEmptyString"
              | String
              | doc "The primary private IPv4 address of the network interface."
              | optional,
            privateIpAddresses
              | Array (
                std.contract.Sequence
                  [ refs."definitions.IPrivateIpAddressItem", { _ | Dyn } ]
              )
              | doc "One or more private IPv4 addresses."
              | optional,
            secondaryPrivateIpAddressCount
              | Number
              | doc "The number of secondary private IPv4 addresses to assign to a network interface."
              | optional,
            sourceDestCheck
              | Bool
              | doc "If the value is true , source/destination checks are enabled; otherwise, they are disabled. The default value is true. You must disable source/destination checks if the instance runs services such as network address translation, routing, or firewalls."
              | optional,
            subnetId
              | refs."definitions.NonEmptyString"
              | String
              | doc "Valid subnet name from network-config.yaml under the same vpc"
              | optional,
          },
      "definitions.INetworkLoadBalancerConfig" =
        {
            crossZoneLoadBalancing
              | Bool
              | doc "Cross Zone load balancing for Network Load Balancer."
              | optional,
            deletionProtection
              | Bool
              | doc "Deletion protection for Network Load Balancer."
              | optional,
            listeners
              | Array (
                std.contract.Sequence
                  [ refs."definitions.INlbListenerConfig", { _ | Dyn } ]
              )
              | doc "Listeners for Network Load Balancer."
              | optional,
            name
              | refs."definitions.NonEmptyString"
              | String
              | doc "Name for Network Load Balancer.",
            scheme
              | refs."definitions.LoadBalancerSchemeEnum"
              | String
              | doc "Load Balancer scheme. If undefined, the default of  {@link  https://docs.aws.amazon.com/elasticloadbalancing/latest/APIReference/API_CreateLoadBalancer.html ELBv2 CreateLoadBalancer API }  is used."
              | optional,
            subnets
              | Array (
                std.contract.Sequence
                  [ refs."definitions.NonEmptyString", String ]
              )
              | doc "Subnets to launch the Network Load Balancer in.",
          },
      "definitions.INlbListenerConfig" =
        {
            alpnPolicy
              | refs."definitions.AlpnPolicyEnum"
              | String
              | doc "Application-Layer Protocol Negotiation (ALPN) policy} for TLS encrypted traffic"
              | optional,
            certificate
              | refs."definitions.NonEmptyString"
              | String
              | doc "ACM ARN of the certificate to be associated with the listener."
              | optional,
            name
              | refs."definitions.NonEmptyString"
              | String
              | doc "Name for Listener.",
            port
              | Number
              | doc "Port where the traffic is directed to."
              | optional,
            protocol
              | refs."definitions.NlbProtocolEnum"
              | String
              | doc "Protocol used for the traffic. The supported protocols are TCP, TLS, UDP, or TCP_UDP."
              | optional,
            sslPolicy
              | refs."definitions.SslPolicyNlbEnum"
              | String
              | doc "SSL policy for TLS encrypted traffic"
              | optional,
            targetGroup
              | refs."definitions.NonEmptyString"
              | String
              | doc "Target Group to direct the traffic to.",
          },
      "definitions.INlbTargetType" =
        {
            account
              | refs."definitions.NonEmptyString"
              | String
              | doc "Friendly Account Name where the NLB is deployed",
            nlbName
              | refs."definitions.NonEmptyString"
              | String
              | doc "Friendly name of the NLB",
            region
              | refs."definitions.NonEmptyString"
              | String
              | doc "Region where the NLB is deployed",
          },
      "definitions.IOperationPreferences" =
        {
            failureToleranceCount | Number | optional,
            failureTolerancePercentage | Number | optional,
            maxConcurrentCount | Number | optional,
            maxConcurrentPercentage | Number | optional,
            regionConcurrencyType | String | optional,
            regionOrder | Array String | optional,
          },
      "definitions.IPortfolioAssociatoinConfig" =
        {
            name
              | refs."definitions.NonEmptyString"
              | String
              | doc "Indicates the name of the principal to associate the portfolio with.",
            propagateAssociation
              | Bool
              | doc "Indicates whether the principal association should be created in accounts the portfolio is shared with. Verify the IAM principal exists in all accounts the portfolio is shared with before enabling."
              | optional,
            type
              | refs."definitions.PortfolioAssociationType"
              | String
              | doc "Indicates the type of portfolio association, valid values are: Group, User, and Role.",
          },
      "definitions.IPortfolioConfig" =
        {
            account
              | refs."definitions.NonEmptyString"
              | String
              | doc "The name of the account to deploy the portfolio.",
            name
              | refs."definitions.NonEmptyString"
              | String
              | doc "The name of the portfolio",
            portfolioAssociations
              | Array (
                std.contract.Sequence
                  [
                    refs."definitions.IPortfolioAssociatoinConfig",
                    { _ | Dyn }
                  ]
              )
              | doc "Configuration of portfolio associations to give access to IAM principals."
              | optional,
            products
              | Array (
                std.contract.Sequence
                  [ refs."definitions.IProductConfig", { _ | Dyn } ]
              )
              | doc "Product Configuration"
              | optional,
            provider
              | refs."definitions.NonEmptyString"
              | String
              | doc "The provider of the portfolio",
            regions
              | Array (
                std.contract.Sequence [ refs."definitions.Region", String ]
              )
              | doc "The region names to deploy the portfolio.",
            shareTagOptions
              | Bool
              | doc "Whether or not to share TagOptions with other account(s)/OU(s)"
              | optional,
            shareTargets
              | refs."definitions.IShareTargets"
              | { _ | Dyn }
              | doc "Portfolio share target. Sharing portfolios to Organizational Units is only supported for portfolios in the Management account."
              | optional,
            tagOptions
              | Array (
                std.contract.Sequence
                  [ refs."definitions.ITagOptionsConfig", { _ | Dyn } ]
              )
              | doc "Portfolio TagOptions configuration"
              | optional,
          },
      "definitions.IPrivateIpAddressItem" =
        {
            primary
              | Bool
              | doc "Indicates whether the private IPv4 address is the primary private IPv4 address. Only one IPv4 address can be designated as primary."
              | optional,
            privateIpAddress
              | refs."definitions.NonEmptyString"
              | String
              | doc "The private IPv4 address."
              | optional,
          },
      "definitions.IProductConfig" =
        {
            constraints
              | refs."definitions.IProductConstraintConfig"
              | { _ | Dyn }
              | doc "Product Constraint configuration"
              | optional,
            description
              | refs."definitions.NonEmptyString"
              | String
              | doc "Product description"
              | optional,
            distributor
              | refs."definitions.NonEmptyString"
              | String
              | doc "The name of the product's publisher."
              | optional,
            name
              | refs."definitions.NonEmptyString"
              | String
              | doc "The name of the product",
            owner
              | refs."definitions.NonEmptyString"
              | String
              | doc "The owner of the product",
            support
              | refs."definitions.IProductSupportConfig"
              | { _ | Dyn }
              | doc "Product support details."
              | optional,
            tagOptions
              | Array (
                std.contract.Sequence
                  [ refs."definitions.ITagOptionsConfig", { _ | Dyn } ]
              )
              | doc "Product TagOptions configuration"
              | optional,
            versions
              | Array (
                std.contract.Sequence
                  [ refs."definitions.IProductVersionConfig", { _ | Dyn } ]
              )
              | doc "Product version configuration",
          },
      "definitions.IProductConstraintConfig" =
        {
            launch
              | refs."definitions.IProductLaunchConstraintConfig"
              | { _ | Dyn }
              | doc "Launch constraint role name and type, supports LocalRole or Role."
              | optional,
            notifications
              | Array (
                std.contract.Sequence
                  [ refs."definitions.NonEmptyString", String ]
              )
              | doc "A list of SNS topic names to stream product notifications to"
              | optional,
            tagUpdate
              | Bool
              | doc "Determines if Service Catalog Tag Update constraint is enabled"
              | optional,
          },
      "definitions.IProductLaunchConstraintConfig" =
        {
            role
              | refs."definitions.NonEmptyString"
              | String
              | doc "The name of the IAM Role.",
            type
              | refs."definitions.ProductLaunchConstraintType"
              | String
              | doc "The type of launch constraint, either Role or LocalRole. For more information, see https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-launchroleconstraint.html",
          },
      "definitions.IProductSupportConfig" =
        {
            description
              | refs."definitions.NonEmptyString"
              | String
              | doc "Support description of how users should use email contact and support link."
              | optional,
            email
              | refs."definitions.NonEmptyString"
              | String
              | doc "The email address to report issues with the product"
              | optional,
            url
              | refs."definitions.NonEmptyString"
              | String
              | doc "The url to the site where users can find support information or file tickets."
              | optional,
          },
      "definitions.IProductVersionConfig" =
        {
            description
              | refs."definitions.NonEmptyString"
              | String
              | doc "The version description"
              | optional,
            name
              | refs."definitions.NonEmptyString"
              | String
              | doc "Name of the version of the product",
            template
              | refs."definitions.NonEmptyString"
              | String
              | doc "The product template.",
          },
      "definitions.IShareTargets" =
        {
            accounts | Array String | optional,
            organizationalUnits | Array String | optional,
          },
      "definitions.ITag" = { key | String, value | String, },
      "definitions.ITagOptionsConfig" =
        {
            key
              | refs."definitions.NonEmptyString"
              | String
              | doc "The tag key",
            values
              | Array (
                std.contract.Sequence
                  [ refs."definitions.NonEmptyString", String ]
              )
              | doc "An array of values that can be used for the tag key",
          },
      "definitions.ITargetGroupAttributeTypes" =
        {
            algorithm
              | refs."definitions.TargetGroupAttributeAlgorithm"
              | String
              | doc "The load balancing algorithm determines how the load balancer selects targets when routing requests. The value is round_robin or least_outstanding_requests. The default is round_robin. The following attribute is supported only if the load balancer is an Application Load Balancer and the target is an instance or an IP address."
              | optional,
            appCookieDuration
              | Number
              | doc "The time period, in seconds, during which requests from a client should be routed to the same target. After this time period expires, the application-based cookie is considered stale. The range is 1 second to 1 week (604800 seconds). The default value is 1 day (86400 seconds). The following attribute is supported only if the load balancer is an Application Load Balancer and the target is an instance or an IP address."
              | optional,
            appCookieName
              | refs."definitions.NonEmptyString"
              | String
              | doc "Indicates the name of the application-based cookie. Names that start with the following prefixes are not allowed: AWSALB, AWSALBAPP, and AWSALBTG; they're reserved for use by the load balancer. The following attribute is supported only if the load balancer is an Application Load Balancer and the target is an instance or an IP address."
              | optional,
            connectionTermination
              | Bool
              | doc "Indicates whether the load balancer terminates connections at the end of the deregistration timeout. The value is true or false. The default is false. The following attribute is supported only by Network Load Balancers."
              | optional,
            deregistrationDelay
              | Number
              | doc "The amount of time, in seconds, for Elastic Load Balancing to wait before changing the state of a deregistering target from draining to unused. The range is 0-3600 seconds. The default value is 300 seconds."
              | optional,
            lbCookieDuration
              | Number
              | doc "The time period, in seconds, during which requests from a client should be routed to the same target. After this time period expires, the load balancer-generated cookie is considered stale. The range is 1 second to 1 week (604800 seconds). The default value is 1 day (86400 seconds). The following attribute is supported only if the load balancer is an Application Load Balancer and the target is an instance or an IP address."
              | optional,
            preserveClientIp
              | Bool
              | doc "Indicates whether client IP preservation is enabled. The value is true or false. The default is disabled if the target group type is IP address and the target group protocol is TCP or TLS. Otherwise, the default is enabled. Client IP preservation cannot be disabled for UDP and TCP_UDP target groups. The following attribute is supported only by Network Load Balancers."
              | optional,
            proxyProtocolV2
              | Bool
              | doc "Indicates whether Proxy Protocol version 2 is enabled. The value is true or false. The default is false. The following attribute is supported only by Network Load Balancers."
              | optional,
            slowStart
              | Number
              | doc "The time period, in seconds, during which a newly registered target receives an increasing share of the traffic to the target group. After this time period ends, the target receives its full share of traffic. The range is 30-900 seconds (15 minutes). The default is 0 seconds (disabled). The following attribute is supported only if the load balancer is an Application Load Balancer and the target is an instance or an IP address."
              | optional,
            stickiness
              | Bool
              | doc "Indicates whether target stickiness is enabled. The value is true or false. The default is false."
              | optional,
            stickinessType
              | refs."definitions.TargetGroupAttributeStickinessType"
              | String
              | doc "Indicates the type of stickiness. The possible values are:  - lb_cookie and app_cookie for Application Load Balancers.  - source_ip for Network Load Balancers.  - source_ip_dest_ip and source_ip_dest_ip_proto for Gateway Load Balancers"
              | optional,
            targetFailover
              | refs."definitions.TargetGroupTargetFailoverType"
              | String
              | doc "Indicates how the Gateway Load Balancer handles existing flows when a target is deregistered or becomes unhealthy. The possible values are rebalance and no_rebalance. The default is no_rebalance"
              | optional,
          },
      "definitions.ITargetGroupHealthCheckType" =
        {
            interval
              | Number
              | doc "The approximate amount of time, in seconds, between health checks of an individual target. The range is 5-300. If the target group protocol is TCP, TLS, UDP, TCP_UDP, HTTP or HTTPS, the default is 30 seconds. If the target group protocol is GENEVE, the default is 10 seconds."
              | optional,
            path
              | refs."definitions.NonEmptyString"
              | String
              | doc "[HTTP/HTTPS health checks] The destination for health checks on the targets. [HTTP1 or HTTP2 protocol version] The ping path. The default is /. [GRPC protocol version] The path of a custom health check method with the format /package.service/method. The default is /AWS.ALB/healthcheck."
              | optional,
            port
              | Number
              | doc "The port the load balancer uses when performing health checks on targets. If the protocol is HTTP, HTTPS, TCP, TLS, UDP, or TCP_UDP, the default is `traffic-port`, which is the port on which each target receives traffic from the load balancer. If the protocol is GENEVE, the default is port 80."
              | optional,
            protocol
              | refs."definitions.TargetGroupHealthCheckProtocolType"
              | String
              | doc "The protocol the load balancer uses when performing health checks on targets. For Application Load Balancers, the default is HTTP. For Network Load Balancers and Gateway Load Balancers, the default is TCP. The TCP protocol is not supported for health checks if the protocol of the target group is HTTP or HTTPS. GENEVE, TLS, UDP, and TCP_UDP protocols are not supported for health checks."
              | optional,
            timeout
              | Number
              | doc "The amount of time, in seconds, during which no response from a target means a failed health check. The range is 2–120 seconds. For target groups with a protocol of HTTP, the default is 6 seconds. For target groups with a protocol of TCP, TLS or HTTPS, the default is 10 seconds. For target groups with a protocol of GENEVE, the default is 5 seconds."
              | optional,
          },
      "definitions.ITargetGroupItem" =
        {
            attributes
              | refs."definitions.ITargetGroupAttributeTypes"
              | { _ | Dyn }
              | doc "Target Group Attributes."
              | optional,
            healthCheck
              | refs."definitions.ITargetGroupHealthCheckType"
              | { _ | Dyn }
              | doc "Target Group HealthCheck."
              | optional,
            matcher
              | refs."definitions.ITargetGroupMatcherType"
              | { _ | Dyn }
              | doc "The HTTP or gRPC codes to use when checking for a successful response from a target. For target groups with a protocol of TCP, TCP_UDP, UDP or TLS the range is 200-599. For target groups with a protocol of HTTP or HTTPS, the range is 200-499."
              | optional,
            name
              | refs."definitions.NonEmptyString"
              | String
              | doc "The name of the target group. This value is used in  {@link  ApplicationLoadBalancerListenerConfig Application Load Balancer listeners } ,  {@link  NetworkLoadBalancerListenerConfig Network Load Balancer listeners } , and  {@link  AutoScalingConfig Autoscaling config } .",
            port
              | Number
              | doc "The port on which the targets receive traffic.",
            protocol
              | refs."definitions.TargetGroupProtocolType"
              | String
              | doc "Target group protocol version. Should be one of HTTP, HTTPS, GENEVE, TCP, UDP, TCP_UDP or TLS The protocol to use for routing traffic to the targets. For Application Load Balancers, the supported protocols are HTTP and HTTPS. For Network Load Balancers, the supported protocols are TCP, TLS, UDP, or TCP_UDP. A TCP_UDP listener must be associated with a TCP_UDP target group. For Gateway Load Balancers, the supported protocol is GENEVE.",
            protocolVersion
              | refs."definitions.TargetGroupProtocolVersionType"
              | String
              | doc "The protocol version. Should be one of 'GRPC', 'HTTP1', 'HTTP2'. Specify GRPC to send requests to targets using gRPC. Specify HTTP2 to send requests to targets using HTTP/2. The default is HTTP1, which sends requests to targets using HTTP/1.1."
              | optional,
            shareTargets
              | refs."definitions.IShareTargets"
              | { _ | Dyn }
              | doc "The accounts/OUs location where the Target Group will be deployed to."
              | optional,
            targets
              | Array (
                std.contract.any_of
                  [
                    std.contract.Sequence
                      [ refs."definitions.NonEmptyString", String ],
                    std.contract.Sequence
                      [ refs."definitions.INlbTargetType", { _ | Dyn } ]
                  ]
              )
              | doc "Target group targets. These targets should be the friendly names assigned to firewall instances."
              | optional,
            threshold
              | refs."definitions.ITargetGroupThresholdType"
              | { _ | Dyn }
              | doc "Target Group Threshold."
              | optional,
            type
              | refs."definitions.TargetGroupType"
              | String
              | doc m%"
                The type of target that you must specify when registering targets with this target group. You can't specify targets for a target group using more than one target type.
                - `instance` - Register targets by instance ID. This is the default value.
                - `ip` - Register targets by IP address. You can specify IP addresses from the subnets of the virtual private cloud (VPC) for the target group, the RFC 1918 range (10.0.0.0/8, 172.16.0.0/12, and 192.168.0.0/16), and the RFC 6598 range (100.64.0.0/10). You can't specify publicly routable IP addresses. `alb` - Register a single Application Load Balancer as a target.
              "%,
          },
      "definitions.ITargetGroupMatcherType" =
        {
            grpcCode
              | refs."definitions.NonEmptyString"
              | String
              | doc "You can specify values between 0 and 99. You can specify multiple values (for example, \"0,1\") or a range of values (for example, \"0-5\"). The default value is 12."
              | optional,
            httpCode
              | refs."definitions.NonEmptyString"
              | String
              | doc "For Application Load Balancers, you can specify values between 200 and 499, with the default value being 200. You can specify multiple values (for example, \"200,202\") or a range of values (for example, \"200-299\"). For Network Load Balancers, you can specify values between 200 and 599, with the default value being 200-399. You can specify multiple values (for example, \"200,202\") or a range of values (for example, \"200-299\"). Note that when using shorthand syntax, some values such as commas need to be escaped."
              | optional,
          },
      "definitions.ITargetGroupThresholdType" =
        {
            healthy
              | Number
              | doc "The number of consecutive health check successes required before considering a target healthy. The range is 2-10. If the target group protocol is TCP, TCP_UDP, UDP, TLS, HTTP or HTTPS, the default is 5. For target groups with a protocol of GENEVE, the default is 3."
              | optional,
            unhealthy
              | Number
              | doc "The number of consecutive health check failures required before considering a target unhealthy. The range is 2-10. If the target group protocol is TCP, TCP_UDP, UDP, TLS, HTTP or HTTPS, the default is 2. For target groups with a protocol of GENEVE, the default is 3."
              | optional,
          },
      "definitions.LoadBalancerSchemeEnum" =
        std.contract.Sequence
            [ std.enum.TagOrString, [| 'internal, 'internet-facing |] ],
      "definitions.NlbProtocolEnum" =
        std.contract.Sequence
            [ std.enum.TagOrString, [| 'TCP_UDP, 'TLS, 'UDP, 'TCP |] ],
      "definitions.NonEmptyString" = js2n.string.MinLength 1,
      "definitions.PortfolioAssociationType" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [| 'PermissionSet, 'Role, 'Group, 'User |]
            ],
      "definitions.ProductLaunchConstraintType" =
        std.contract.Sequence [ std.enum.TagOrString, [| 'LocalRole, 'Role |] ],
      "definitions.Region" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [|
                'us-west-2,
                'us-west-1,
                'us-isof-east-1,
                'us-isof-south-1,
                'us-iso-west-1,
                'us-isob-east-1,
                'us-iso-east-1,
                'us-gov-east-1,
                'us-gov-west-1,
                'us-east-2,
                'us-east-1,
                'sa-east-1,
                'me-south-1,
                'me-central-1,
                'il-central-1,
                'eu-isoe-west-1,
                'eu-west-3,
                'eu-west-2,
                'eu-west-1,
                'eu-south-2,
                'eu-south-1,
                'eu-north-1,
                'eu-central-2,
                'eu-central-1,
                'cn-northwest-1,
                'cn-north-1,
                'ca-west-1,
                'ca-central-1,
                'ap-southeast-5,
                'ap-southeast-4,
                'ap-southeast-3,
                'ap-southeast-2,
                'ap-southeast-1,
                'ap-south-2,
                'ap-south-1,
                'ap-northeast-3,
                'ap-northeast-2,
                'ap-northeast-1,
                'ap-east-1,
                'af-south-1
              |]
            ],
      "definitions.RoutingHttpXffHeaderProcessingModeEnum" =
        std.contract.Sequence
            [ std.enum.TagOrString, [| 'remove, 'preserve, 'append |] ],
      "definitions.SslPolicyAlbEnum" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [|
                'ELBSecurityPolicy-2016-08,
                'ELBSecurityPolicy-FS-1-2-Res-2020-10,
                'ELBSecurityPolicy-2015-05,
                'ELBSecurityPolicy-FS-1-2-Res-2019-08,
                'ELBSecurityPolicy-FS-1-2-2019-08,
                'ELBSecurityPolicy-FS-1-1-2019-08,
                'ELBSecurityPolicy-FS-2018-06,
                'ELBSecurityPolicy-TLS-1-2-Ext-2018-06,
                'ELBSecurityPolicy-TLS-1-2-2017-01,
                'ELBSecurityPolicy-TLS-1-1-2017-01,
                'ELBSecurityPolicy-TLS-1-0-2015-04,
                'ELBSecurityPolicy-TLS13-1-3-FIPS-2023-04,
                'ELBSecurityPolicy-TLS13-1-0-FIPS-2023-04,
                'ELBSecurityPolicy-TLS13-1-1-FIPS-2023-04,
                'ELBSecurityPolicy-TLS13-1-2-Ext2-FIPS-2023-04,
                'ELBSecurityPolicy-TLS13-1-2-Ext1-FIPS-2023-04,
                'ELBSecurityPolicy-TLS13-1-2-Ext0-FIPS-2023-04,
                'ELBSecurityPolicy-TLS13-1-2-Res-FIPS-2023-04,
                'ELBSecurityPolicy-TLS13-1-2-FIPS-2023-04,
                'ELBSecurityPolicy-TLS13-1-3-2021-06,
                'ELBSecurityPolicy-TLS13-1-0-2021-06,
                'ELBSecurityPolicy-TLS13-1-1-2021-06,
                'ELBSecurityPolicy-TLS13-1-2-Ext2-2021-06,
                'ELBSecurityPolicy-TLS13-1-2-Ext1-2021-06,
                'ELBSecurityPolicy-TLS13-1-2-Res-2021-06,
                'ELBSecurityPolicy-TLS13-1-2-2021-06
              |]
            ],
      "definitions.SslPolicyNlbEnum" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [|
                'ELBSecurityPolicy-2016-08,
                'ELBSecurityPolicy-FS-1-2-Res-2020-10,
                'ELBSecurityPolicy-2015-05,
                'ELBSecurityPolicy-FS-1-2-Res-2019-08,
                'ELBSecurityPolicy-FS-1-2-2019-08,
                'ELBSecurityPolicy-FS-1-1-2019-08,
                'ELBSecurityPolicy-FS-2018-06,
                'ELBSecurityPolicy-TLS-1-2-Ext-2018-06,
                'ELBSecurityPolicy-TLS-1-2-2017-01,
                'ELBSecurityPolicy-TLS-1-1-2017-01,
                'ELBSecurityPolicy-TLS-1-0-2015-04,
                'ELBSecurityPolicy-TLS13-1-3-FIPS-2023-04,
                'ELBSecurityPolicy-TLS13-1-0-FIPS-2023-04,
                'ELBSecurityPolicy-TLS13-1-1-FIPS-2023-04,
                'ELBSecurityPolicy-TLS13-1-2-Ext2-FIPS-2023-04,
                'ELBSecurityPolicy-TLS13-1-2-Ext1-FIPS-2023-04,
                'ELBSecurityPolicy-TLS13-1-2-Ext0-FIPS-2023-04,
                'ELBSecurityPolicy-TLS13-1-2-Res-FIPS-2023-04,
                'ELBSecurityPolicy-TLS13-1-2-FIPS-2023-04,
                'ELBSecurityPolicy-TLS13-1-3-2021-06,
                'ELBSecurityPolicy-TLS13-1-0-2021-06,
                'ELBSecurityPolicy-TLS13-1-1-2021-06,
                'ELBSecurityPolicy-TLS13-1-2-Ext2-2021-06,
                'ELBSecurityPolicy-TLS13-1-2-Ext1-2021-06,
                'ELBSecurityPolicy-TLS13-1-2-Res-2021-06,
                'ELBSecurityPolicy-TLS13-1-2-2021-06
              |]
            ],
      "definitions.TargetGroupAttributeAlgorithm" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [| 'least_outstanding_requests, 'round_robin |]
            ],
      "definitions.TargetGroupAttributeStickinessType" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [|
                'source_ip_dest_ip_proto,
                'source_ip_dest_ip,
                'source_ip,
                'app_cookie,
                'lb_cookie
              |]
            ],
      "definitions.TargetGroupHealthCheckProtocolType" =
        std.contract.Sequence
            [ std.enum.TagOrString, [| 'TCP, 'HTTPS, 'HTTP |] ],
      "definitions.TargetGroupProtocolType" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [| 'GENEVE, 'HTTPS, 'HTTP, 'TCP_UDP, 'UDP, 'TLS, 'TCP |]
            ],
      "definitions.TargetGroupProtocolVersionType" =
        std.contract.Sequence
            [ std.enum.TagOrString, [| 'HTTP2, 'HTTP1, 'GRPC |] ],
      "definitions.TargetGroupTargetFailoverType" =
        std.contract.Sequence
            [ std.enum.TagOrString, [| 'rebalance, 'no_rebalance |] ],
      "definitions.TargetGroupType" =
        std.contract.Sequence
            [ std.enum.TagOrString, [| 'lambda, 'alb, 'ip, 'instance |] ],
    }
    in
  refs."definitions.ICustomizationsConfig"