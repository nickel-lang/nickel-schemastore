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
      "definitions.AllowDeny" =
        std.contract.Sequence [ std.enum.TagOrString, [| 'deny, 'allow |] ],
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
      "definitions.CertificateConfigType" =
        std.contract.Sequence
            [ std.enum.TagOrString, [| 'request, '"import" |] ],
      "definitions.CertificateValidationType" =
        std.contract.Sequence [ std.enum.TagOrString, [| 'DNS, 'EMAIL |] ],
      "definitions.DnsFirewallBlockResponseType" =
        std.contract.Sequence
            [ std.enum.TagOrString, [| 'OVERRIDE, 'NXDOMAIN, 'NODATA |] ],
      "definitions.DnsFirewallManagedDomainListsType" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [|
                'AWSManagedDomainsMalwareDomainList,
                'AWSManagedDomainsBotnetCommandandControl,
                'AWSManagedDomainsAggregateThreatList
              |]
            ],
      "definitions.DnsFirewallRuleActionType" =
        std.contract.Sequence
            [ std.enum.TagOrString, [| 'BLOCK, 'ALERT, 'ALLOW |] ],
      "definitions.DpdTimeoutActionType" =
        std.contract.Sequence
            [ std.enum.TagOrString, [| 'restart, 'none, 'clear |] ],
      "definitions.DxVirtualInterfaceType" =
        std.contract.Sequence
            [ std.enum.TagOrString, [| 'transit, 'private |] ],
      "definitions.EnableDisable" =
        std.contract.Sequence [ std.enum.TagOrString, [| 'disable, 'enable |] ],
      "definitions.EncryptionAlgorithmType" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [| 'AES256-GCM-16, 'AES128-GCM-16, 'AES256, 'AES128 |]
            ],
      "definitions.GatewayEndpointType" =
        std.contract.Sequence [ std.enum.TagOrString, [| 'dynamodb, 's3 |] ],
      "definitions.GatewayRouteTableType" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [| 'virtualPrivateGateway, 'internetGateway |]
            ],
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
      "definitions.ICentralNetworkServicesConfig" =
        {
            delegatedAdminAccount
              | refs."definitions.NonEmptyString"
              | String
              | doc "The friendly name of the delegated administrator account for network services. Resources configured under `centralNetworkServices` will be created in this account.",
            gatewayLoadBalancers
              | Array (
                std.contract.Sequence
                  [ refs."definitions.IGwlbConfig", { _ | Dyn } ]
              )
              | doc "An array of Gateway Load Balancer configurations."
              | optional,
            ipams
              | Array (
                std.contract.Sequence
                  [ refs."definitions.IIpamConfig", { _ | Dyn } ]
              )
              | doc "An array of IPAM configurations."
              | optional,
            networkFirewall
              | refs."definitions.INfwConfig"
              | { _ | Dyn }
              | doc "A Network Firewall configuration."
              | optional,
            route53Resolver
              | refs."definitions.IResolverConfig"
              | { _ | Dyn }
              | doc "A Route 53 resolver configuration."
              | optional,
          },
      "definitions.ICertificateConfig" =
        {
            cert
              | refs."definitions.NonEmptyString"
              | String
              | doc "Path to certificate in S3 assets bucket. The bucket value is in the outputs of Pipeline stack in home region. Path should be given relative to the bucket. The certificate to import. This value should be provided when type is set to import or else validation fails."
              | optional,
            chain
              | refs."definitions.NonEmptyString"
              | String
              | doc "Path to the PEM encoded certificate chain in S3 assets bucket. The bucket value is in the outputs of Pipeline stack in home region. Path should be given relative to the bucket. This value is optional when type is set to import."
              | optional,
            deploymentTargets
              | refs."definitions.IDeploymentTargets"
              | { _ | Dyn }
              | doc "ACM deployment target. This should be provided to deploy ACM into OUs or account."
              | optional,
            domain
              | refs."definitions.NonEmptyString"
              | String
              | doc "Fully qualified domain name (FQDN), such as www.example.com, that you want to secure with an ACM certificate. Use an asterisk (*) to create a wildcard certificate that protects several sites in the same domain. For example, *.example.com protects www.example.com, site.example.com, and images.example.com. In compliance with RFC 5280, the length of the domain name (technically, the Common Name) that you provide cannot exceed 64 octets (characters), including periods. To add a longer domain name, specify it in the Subject Alternative Name field, which supports names up to 253 octets in length. This value should be provided when type is set to request or else validation fails."
              | optional,
            name
              | refs."definitions.NonEmptyString"
              | String
              | doc "Name of the certificate. This should be unique in the certificates array. Duplicate names will fail the validation.",
            privKey
              | refs."definitions.NonEmptyString"
              | String
              | doc "Path to the private key in S3 assets bucket. The bucket value is in the outputs of Pipeline stack in home region. Path should be given relative to the bucket. The private key that matches the public key in the certificate. This value should be provided when type is set to import or else validation fails."
              | optional,
            san
              | Array (
                std.contract.Sequence
                  [ refs."definitions.NonEmptyString", String ]
              )
              | doc "Additional FQDNs to be included in the Subject Alternative Name extension of the ACM certificate. For example, add the name www.example.net to a certificate for which the DomainName field is www.example.com if users can reach your site by using either name."
              | optional,
            type
              | refs."definitions.CertificateConfigType"
              | String
              | doc "Type of ACM cert. Valid values are `import` or `request`",
            validation
              | refs."definitions.CertificateValidationType"
              | String
              | doc "The method you want to use if you are requesting a public certificate to validate that you own or control domain. You can validate with DNS or validate with email. Valid values are 'DNS' or 'EMAIL'. This value should be provided when type is set to request or else validation fails."
              | optional,
          },
      "definitions.ICustomerGatewayConfig" =
        {
            account
              | refs."definitions.NonEmptyString"
              | String
              | doc "The logical name of the account to deploy the Customer Gateway to. This value should match the name of the account recorded in the accounts-config.yaml file.",
            asn | Number | doc "Define the ASN used for the Customer Gateway",
            ipAddress
              | refs."definitions.NonEmptyString"
              | String
              | doc "Defines the IP address of the Customer Gateway",
            name
              | refs."definitions.NonEmptyString"
              | String
              | doc m%"
                The name of the CGW.
                
                The value of this property will be utilized as the logical id for this resource. Any references to this object should specify this value.
              "%,
            region
              | refs."definitions.Region"
              | String
              | doc "The AWS region to provision the customer gateway in",
            tags
              | Array (
                std.contract.Sequence [ refs."definitions.ITag", { _ | Dyn } ]
              )
              | doc "Define tags for the Customer Gateway"
              | optional,
            vpnConnections
              | Array (
                std.contract.Sequence
                  [ refs."definitions.IVpnConnectionConfig", { _ | Dyn } ]
              )
              | doc "Define the optional VPN Connection configuration"
              | optional,
          },
      "definitions.IDefaultVpcsConfig" =
        {
            delete | Bool | doc "Enable to delete default VPCs.",
            excludeAccounts
              | Array String
              | doc "(OPTIONAL) Include an array of friendly account names to exclude from default VPC deletion."
              | optional,
            excludeRegions
              | Array (
                std.contract.Sequence [ refs."definitions.Region", String ]
              )
              | doc "(OPTIONAL) Include an array of AWS regions to exclude from default VPC deletion."
              | optional,
          },
      "definitions.IDeploymentTargets" =
        {
            accounts | Array String | optional,
            excludedAccounts | Array String | optional,
            excludedRegions | Array String | optional,
            organizationalUnits | Array String | optional,
          },
      "definitions.IDhcpOptsConfig" =
        {
            accounts
              | Array (
                std.contract.Sequence
                  [ refs."definitions.NonEmptyString", String ]
              )
              | doc "An array of friendly account names to deploy the options set.",
            domainName
              | refs."definitions.NonEmptyString"
              | String
              | doc "(OPTIONAL) A domain name to assign to hosts using the options set."
              | optional,
            domainNameServers
              | Array (
                std.contract.Sequence
                  [ refs."definitions.NonEmptyString", String ]
              )
              | doc "(OPTIONAL) An array of IP addresses for domain name servers."
              | optional,
            name
              | refs."definitions.NonEmptyString"
              | String
              | doc "A friendly name for the DHCP options set.",
            netbiosNameServers
              | Array (
                std.contract.Sequence
                  [ refs."definitions.NonEmptyString", String ]
              )
              | doc "(OPTIONAL An array of IP addresses for NetBIOS servers."
              | optional,
            netbiosNodeType
              | refs."definitions.NetbiosNodeType"
              | Number
              | doc "(OPTIONAL) The NetBIOS node type number."
              | optional,
            ntpServers
              | Array (
                std.contract.Sequence
                  [ refs."definitions.NonEmptyString", String ]
              )
              | doc "(OPTIONAL) An array of IP addresses for NTP servers."
              | optional,
            regions
              | Array (
                std.contract.Sequence [ refs."definitions.Region", String ]
              )
              | doc "An array of regions to deploy the options set.",
            tags
              | Array (
                std.contract.Sequence [ refs."definitions.ITag", { _ | Dyn } ]
              )
              | doc "(OPTIONAL) An array of tags for the options set."
              | optional,
          },
      "definitions.IDnsFirewallRuleGroupConfig" =
        {
            name
              | refs."definitions.NonEmptyString"
              | String
              | doc "A friendly name for the DNS firewall rule group.",
            regions
              | Array (
                std.contract.Sequence [ refs."definitions.Region", String ]
              )
              | doc "The regions to deploy the rule group to.",
            rules
              | Array (
                std.contract.Sequence
                  [ refs."definitions.IDnsFirewallRulesConfig", { _ | Dyn } ]
              )
              | doc "An array of DNS firewall rule configurations.",
            shareTargets
              | refs."definitions.IShareTargets"
              | { _ | Dyn }
              | doc "(OPTIONAL) Resource Access Manager (RAM) share targets."
              | optional,
            tags
              | Array (
                std.contract.Sequence [ refs."definitions.ITag", { _ | Dyn } ]
              )
              | doc "An array of tags for the rule group."
              | optional,
          },
      "definitions.IDnsFirewallRulesConfig" =
        {
            action
              | refs."definitions.DnsFirewallRuleActionType"
              | String
              | doc "An action for the DNS firewall rule to take on matching requests.",
            blockOverrideDomain
              | refs."definitions.NonEmptyString"
              | String
              | doc "(OPTIONAL) Configure an override domain for BLOCK actions. This is a custom DNS record to send back in response to the query."
              | optional,
            blockOverrideTtl
              | Number
              | doc "(OPTIONAL) Configure a time-to-live (TTL) for the override domain. This is the recommended amount of time for the DNS resolver or web browser to cache the override record and use it in response to this query, if it is received again. By default, this is zero, and the record isn't cached."
              | optional,
            blockResponse
              | refs."definitions.DnsFirewallBlockResponseType"
              | String
              | doc "Configure a specific response type for BLOCK actions. Block response types are defined here:  {@link  https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/resolver-dns-firewall-rule-actions.html }"
              | optional,
            customDomainList
              | refs."definitions.NonEmptyString"
              | String
              | doc "A file containing a custom domain list in TXT format."
              | optional,
            managedDomainList
              | refs."definitions.DnsFirewallManagedDomainListsType"
              | String
              | doc "Configure a rule that uses an AWS-managed domain list. AWS-managed domain lists are defined here:  {@link  https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/resolver-dns-firewall-managed-domain-lists.html } ."
              | optional,
            name
              | refs."definitions.NonEmptyString"
              | String
              | doc "A friendly name for the DNS firewall rule.",
            "priority" | Number | doc "The priority of the DNS firewall rule.",
          },
      "definitions.IDnsQueryLogsConfig" =
        {
            destinations
              | Array (
                std.contract.Sequence
                  [ refs."definitions.LogDestinationType", String ]
              )
              | doc "An array of destination services used to store the logs.",
            excludedRegions
              | Array (
                std.contract.Sequence [ refs."definitions.Region", String ]
              )
              | optional,
            name
              | refs."definitions.NonEmptyString"
              | String
              | doc "The friendly name of the query logging config.",
            shareTargets
              | refs."definitions.IShareTargets"
              | { _ | Dyn }
              | doc "Resource Access Manager (RAM) share targets."
              | optional,
          },
      "definitions.IDxGatewayConfig" =
        {
            account
              | refs."definitions.NonEmptyString"
              | String
              | doc "The friendly name of the account to deploy the DX Gateway.",
            asn
              | Number
              | doc "A Border Gateway Protocol (BGP) Autonomous System Number (ASN).",
            gatewayName
              | refs."definitions.NonEmptyString"
              | String
              | doc "The name of the Direct Connect Gateway. This name will show as the name of the resource in the AWS console and API.",
            name
              | refs."definitions.NonEmptyString"
              | String
              | doc "A friendly name for the DX Gateway. This name is used as a logical reference for the resource in the accelerator.",
            transitGatewayAssociations
              | Array (
                std.contract.Sequence
                  [
                    refs."definitions.IDxTransitGatewayAssociationConfig",
                    { _ | Dyn }
                  ]
              )
              | doc "(OPTIONAL) An array of transit gateway association configurations. Creates transit gateway attachments for this DX gateway."
              | optional,
            virtualInterfaces
              | Array (
                std.contract.Sequence
                  [ refs."definitions.IDxVirtualInterfaceConfig", { _ | Dyn } ]
              )
              | doc "(OPTIONAL) An array of virtual interface configurations. Creates virtual interfaces on the DX gateway."
              | optional,
          },
      "definitions.IDxTransitGatewayAssociationConfig" =
        {
            account
              | refs."definitions.NonEmptyString"
              | String
              | doc "The friendly name of the account the transit gateway is deployed to.",
            allowedPrefixes
              | Array (
                std.contract.Sequence
                  [ refs."definitions.NonEmptyString", String ]
              )
              | doc "An array of CIDR prefixes that are allowed to advertise over this transit gateway association.",
            name
              | refs."definitions.NonEmptyString"
              | String
              | doc "The friendly name of the transit gateway to associate.",
            routeTableAssociations
              | Array (
                std.contract.Sequence
                  [ refs."definitions.NonEmptyString", String ]
              )
              | doc "(OPTIONAL) The friendly name of TGW route table(s) to associate with this attachment."
              | optional,
            routeTablePropagations
              | Array (
                std.contract.Sequence
                  [ refs."definitions.NonEmptyString", String ]
              )
              | doc "(OPTIONAL) The friendly name of TGW route table(s) to propagate routes from this attachment."
              | optional,
          },
      "definitions.IDxVirtualInterfaceConfig" =
        {
            addressFamily
              | refs."definitions.IpVersionType"
              | String
              | doc m%"
                (OPTIONAL) The address family to use for this virtual interface.
                
                Default - ipv4
              "%
              | optional,
            amazonAddress
              | refs."definitions.NonEmptyString"
              | String
              | doc m%"
                (OPTIONAL) The peer IP address to use for Amazon's side of the virtual interface.
                
                Default - randomly-generated by Amazon
              "%
              | optional,
            authKey
              | refs."definitions.NonEmptyString"
              | String
              | doc "(OPTIONAL): The Secrets Manager name that stores the BGP Authentication Key, that exists in the same account and region that the Direct Connect Virtual Interface will be created in."
              | optional,
            connectionId
              | refs."definitions.NonEmptyString"
              | String
              | doc "The resource ID of the  {@link  https://docs.aws.amazon.com/directconnect/latest/UserGuide/Welcome.html#overview-components DX connection }  the virtual interface will be created on",
            customerAddress
              | refs."definitions.NonEmptyString"
              | String
              | doc m%"
                (OPTIONAL) The peer IP address to use for customer's side of the virtual interface.
                
                Default - randomly-generated by Amazon
              "%
              | optional,
            customerAsn
              | Number
              | doc "A Border Gateway Protocol (BGP) Autonomous System Number (ASN) for the customer side of the connection.",
            enableSiteLink
              | Bool
              | doc m%"
                (OPTIONAL) Enable SiteLink for this virtual interface.
                
                Default - false
              "%
              | optional,
            interfaceName
              | refs."definitions.NonEmptyString"
              | String
              | doc "The name of the virtual interface. This name will show as the name of the resource in the AWS console and API.",
            jumboFrames
              | Bool
              | doc m%"
                (OPTIONAL) Enable jumbo frames for the virtual interface.
                
                Default - standard 1500 MTU frame size
              "%
              | optional,
            name
              | refs."definitions.NonEmptyString"
              | String
              | doc "A friendly name for the virtual interface. This name is used as a logical reference for the resource in the accelerator.",
            ownerAccount
              | refs."definitions.NonEmptyString"
              | String
              | doc "The friendly name of the owning account of the DX connection.",
            region
              | refs."definitions.Region"
              | String
              | doc "The region of the virtual interface.",
            tags
              | Array (
                std.contract.Sequence [ refs."definitions.ITag", { _ | Dyn } ]
              )
              | doc "(OPTIONAL) An array of tags to apply to the virtual interface."
              | optional,
            type
              | refs."definitions.DxVirtualInterfaceType"
              | String
              | doc "The type of the virtual interface",
            vlan
              | Number
              | doc "The virtual local area network (VLAN) tag to use for this virtual interface.",
          },
      "definitions.IElbAccountIdsConfig" =
        {
            accountId | refs."definitions.NonEmptyString" | String,
            region | refs."definitions.NonEmptyString" | String,
          },
      "definitions.IEndpointPolicyConfig" =
        {
            document
              | refs."definitions.NonEmptyString"
              | String
              | doc "A file path for a JSON-formatted policy document.",
            name
              | refs."definitions.NonEmptyString"
              | String
              | doc "A friendly name for the endpoint policy.",
          },
      "definitions.IFirewallManagerNotificationChannelConfig" =
        {
            region
              | refs."definitions.NonEmptyString"
              | String
              | doc "Enables the FMS notification channel. Defaults to enabled.",
            snsTopic
              | refs."definitions.NonEmptyString"
              | String
              | doc "The SNS Topic Name to publish to.",
          },
      "definitions.IFirewallManagerServiceConfig" =
        {
            delegatedAdminAccount
              | refs."definitions.NonEmptyString"
              | String
              | doc "The friendly account name to deploy the FMS configuration",
            notificationChannels
              | Array (
                std.contract.Sequence
                  [
                    refs."definitions.IFirewallManagerNotificationChannelConfig",
                    { _ | Dyn }
                  ]
              )
              | doc "The FMS Notification Channel Configuration"
              | optional,
          },
      "definitions.IGatewayEndpointConfig" =
        {
            defaultPolicy
              | refs."definitions.NonEmptyString"
              | String
              | doc "The friendly name of the default policy for the gateway endpoints.",
            endpoints
              | Array (
                std.contract.Sequence
                  [
                    refs."definitions.IGatewayEndpointServiceConfig",
                    { _ | Dyn }
                  ]
              )
              | doc "An array of endpoints to create.",
          },
      "definitions.IGatewayEndpointServiceConfig" =
        {
            applyPolicy
              | Bool
              | doc "(OPTIONAL) Specify whether or not a policy is applied to the endpoint. By default, if no policy is specified in the `policy` property, a default policy is applied. Specifying this option as `false` will ensure no policy is applied to the endpoint. This property defaults to `true` if not specified."
              | optional,
            policy
              | refs."definitions.NonEmptyString"
              | String
              | doc "(OPTIONAL) The friendly name of a policy for the gateway endpoint. If left undefined, the default policy will be used."
              | optional,
            service
              | refs."definitions.GatewayEndpointType"
              | String
              | doc "The name of the service to create the endpoint for",
            serviceName
              | refs."definitions.NonEmptyString"
              | String
              | doc "(OPTIONAL) The full name of the service to create the endpoint for."
              | optional,
          },
      "definitions.IGwlbConfig" =
        {
            account
              | refs."definitions.NonEmptyString"
              | String
              | doc "(OPTIONAL) Set an override for the account the Gateway Load Balancer is deployed to."
              | optional,
            crossZoneLoadBalancing
              | Bool
              | doc "(OPTIONAL) Whether to enable cross-zone load balancing."
              | optional,
            deletionProtection
              | Bool
              | doc "(OPTIONAL) Whether to enable deletion protection."
              | optional,
            endpoints
              | Array (
                std.contract.Sequence
                  [ refs."definitions.IGwlbEndpointConfig", { _ | Dyn } ]
              )
              | doc "An array of Gateway Load Balancer endpoint configurations.",
            name
              | refs."definitions.NonEmptyString"
              | String
              | doc "The friendly name of the Gateway Load Balancer.",
            subnets
              | Array (
                std.contract.Sequence
                  [ refs."definitions.NonEmptyString", String ]
              )
              | doc "An array of friendly names of subnets to deploy the Gateway Load Balancer to.",
            tags
              | Array (
                std.contract.Sequence [ refs."definitions.ITag", { _ | Dyn } ]
              )
              | doc "(OPTIONAL) An array of CloudFormation tag objects."
              | optional,
            targetGroup
              | refs."definitions.NonEmptyString"
              | String
              | doc "(OPTIONAL) The friendly name of a target group to forward traffic to"
              | optional,
            vpc
              | refs."definitions.NonEmptyString"
              | String
              | doc "The friendly name of the VPC to deploy the Gateway Load Balancer to.",
          },
      "definitions.IGwlbEndpointConfig" =
        {
            account
              | refs."definitions.NonEmptyString"
              | String
              | doc "The friendly name of the account to deploy the endpoint to.",
            name
              | refs."definitions.NonEmptyString"
              | String
              | doc "The friendly name of the Gateway Load Balancer endpoint.",
            subnet
              | refs."definitions.NonEmptyString"
              | String
              | doc "The friendly name of the subnet to deploy the Gateway Load Balancer endpoint to.",
            vpc
              | refs."definitions.NonEmptyString"
              | String
              | doc "The friendly name of the VPC to deploy the Gateway Load Balancer endpoint to.",
          },
      "definitions.IInterfaceEndpointConfig" =
        {
            allowedCidrs
              | Array (
                std.contract.Sequence
                  [ refs."definitions.NonEmptyString", String ]
              )
              | doc "(OPTIONAL) An array of source CIDRs allowed to communicate with the endpoints."
              | optional,
            central
              | Bool
              | doc "(OPTIONAL) Enable to define interface endpoints as centralized endpoints."
              | optional,
            defaultPolicy
              | refs."definitions.NonEmptyString"
              | String
              | doc "The friendly name of the default policy for the interface endpoints.",
            endpoints
              | Array (
                std.contract.Sequence
                  [
                    refs."definitions.IInterfaceEndpointServiceConfig",
                    { _ | Dyn }
                  ]
              )
              | doc "An array of VPC interface endpoint services to be deployed.",
            subnets
              | Array (
                std.contract.Sequence
                  [ refs."definitions.NonEmptyString", String ]
              )
              | doc "An array of the friendly names of VPC subnets for the endpoints to be deployed.",
            tags
              | Array (
                std.contract.Sequence [ refs."definitions.ITag", { _ | Dyn } ]
              )
              | doc "(OPTIONAL) An array of tag objects for the private hosted zones associated with the VPC Interface endpoints."
              | optional,
          },
      "definitions.IInterfaceEndpointServiceConfig" =
        {
            applyPolicy
              | Bool
              | doc "(OPTIONAL) Specify whether or not a policy is applied to the endpoint. By default, if no policy is specified in the `policy` property, a default policy is applied. Specifying this option as `false` will ensure no policy is applied to the endpoint. This property defaults to `true` if not specified."
              | optional,
            policy
              | refs."definitions.NonEmptyString"
              | String
              | doc "(OPTIONAL) The friendly name of a policy for the interface endpoint. If left undefined, the default policy will be used."
              | optional,
            securityGroup
              | refs."definitions.NonEmptyString"
              | String
              | doc "(OPTIONAL) Apply the provided security group for this interface endpoint."
              | optional,
            service
              | refs."definitions.NonEmptyString"
              | String
              | doc "The name of the service to create the endpoint for.",
            serviceName
              | refs."definitions.NonEmptyString"
              | String
              | doc "(OPTIONAL) The full name of the service to create the endpoint for."
              | optional,
          },
      "definitions.IIpamAllocationConfig" =
        {
            ipamPoolName
              | refs."definitions.NonEmptyString"
              | String
              | doc "The IPAM pool name to request the allocation from.",
            netmaskLength | Number | doc "The subnet mask length to request.",
          },
      "definitions.IIpamConfig" =
        {
            description
              | refs."definitions.NonEmptyString"
              | String
              | doc "(OPTIONAL) A description for the IPAM."
              | optional,
            name
              | refs."definitions.NonEmptyString"
              | String
              | doc "A friendly name for the IPAM.",
            operatingRegions
              | Array (
                std.contract.Sequence [ refs."definitions.Region", String ]
              )
              | doc "(OPTIONAL) An array of regions that the IPAM will manage."
              | optional,
            pools
              | Array (
                std.contract.Sequence
                  [ refs."definitions.IIpamPoolConfig", { _ | Dyn } ]
              )
              | doc "An optional array of IPAM pool configurations to create under the IPAM."
              | optional,
            region
              | refs."definitions.Region"
              | String
              | doc "The region to deploy the IPAM.",
            scopes
              | Array (
                std.contract.Sequence
                  [ refs."definitions.IIpamScopeConfig", { _ | Dyn } ]
              )
              | doc "(OPTIONAL) An array of IPAM scope configurations to create under the IPAM."
              | optional,
            tags
              | Array (
                std.contract.Sequence [ refs."definitions.ITag", { _ | Dyn } ]
              )
              | doc "(OPTIONAL) An array of tag objects for the IPAM."
              | optional,
          },
      "definitions.IIpamPoolConfig" =
        {
            addressFamily
              | refs."definitions.IpVersionType"
              | String
              | doc "The address family for the IPAM pool."
              | optional,
            allocationDefaultNetmaskLength
              | Number
              | doc "(OPTIONAL) The default netmask length of IPAM allocations for this pool."
              | optional,
            allocationMaxNetmaskLength
              | Number
              | doc "(OPTIONAL) The maximum netmask length of IPAM allocations for this pool."
              | optional,
            allocationMinNetmaskLength
              | Number
              | doc "(OPTIONAL) The minimum netmask length of IPAM allocations for this pool."
              | optional,
            allocationResourceTags
              | Array (
                std.contract.Sequence [ refs."definitions.ITag", { _ | Dyn } ]
              )
              | doc "(OPTIONAL) An array of tags that are required for resources that use CIDRs from this IPAM pool."
              | optional,
            autoImport
              | Bool
              | doc "(OPTIONAL) If set to `true`, IPAM will continuously look for resources within the CIDR range of this pool and automatically import them as allocations into your IPAM."
              | optional,
            description
              | refs."definitions.NonEmptyString"
              | String
              | doc "(OPTIONAL) A description for the IPAM pool."
              | optional,
            locale
              | refs."definitions.Region"
              | String
              | doc "(OPTIONAL) The AWS Region where you want to make an IPAM pool available for allocations."
              | optional,
            name
              | refs."definitions.NonEmptyString"
              | String
              | doc "A friendly name for the IPAM pool.",
            provisionedCidrs
              | Array (
                std.contract.Sequence
                  [ refs."definitions.NonEmptyString", String ]
              )
              | doc "An array of CIDR ranges to provision for the IPAM pool."
              | optional,
            publiclyAdvertisable
              | Bool
              | doc "(OPTIONAL) Determines if a pool is publicly advertisable."
              | optional,
            scope
              | refs."definitions.NonEmptyString"
              | String
              | doc "(OPTIONAL) The friendly name of the IPAM scope to assign the IPAM pool to."
              | optional,
            shareTargets
              | refs."definitions.IShareTargets"
              | { _ | Dyn }
              | doc "(OPTIONAL) Resource Access Manager (RAM) share targets."
              | optional,
            sourceIpamPool
              | refs."definitions.NonEmptyString"
              | String
              | doc "(OPTIONAL) The friendly name of the source IPAM pool to create this IPAM pool from."
              | optional,
            tags
              | Array (
                std.contract.Sequence [ refs."definitions.ITag", { _ | Dyn } ]
              )
              | doc "(OPTIONAL) An array of tag objects for the IPAM pool."
              | optional,
          },
      "definitions.IIpamScopeConfig" =
        {
            description
              | refs."definitions.NonEmptyString"
              | String
              | doc "(OPTIONAL) Description for the IPAM scope."
              | optional,
            name
              | refs."definitions.NonEmptyString"
              | String
              | doc "A friendly name for the IPAM scope.",
            tags
              | Array (
                std.contract.Sequence [ refs."definitions.ITag", { _ | Dyn } ]
              )
              | doc "(OPTIONAL) An array of tag objects for the IPAM scope."
              | optional,
          },
      "definitions.ILifecycleRule" =
        {
            abortIncompleteMultipartUpload
              | Number
              | doc "Specifies a lifecycle rule that aborts incomplete multipart uploads to an Amazon S3 bucket."
              | optional,
            enabled | Bool | doc "Whether this rule is enabled." | optional,
            expiration
              | Number
              | doc "Indicates the number of days after creation when objects are deleted from Amazon S3 and Amazon Glacier."
              | optional,
            expiredObjectDeleteMarker
              | Bool
              | doc "Indicates whether Amazon S3 will remove a delete marker with no noncurrent versions. If set to true, the delete marker will be expired."
              | optional,
            id
              | String
              | doc "Friendly name for the rule. Rule name must be unique."
              | optional,
            noncurrentVersionExpiration
              | Number
              | doc "Time between when a new version of the object is uploaded to the bucket and when old versions of the object expire."
              | optional,
            noncurrentVersionTransitions
              | Array (
                std.contract.Sequence
                  [ refs."definitions.ITransition", { _ | Dyn } ]
              )
              | doc "One or more transition rules that specify when non-current objects transition to a specified storage class."
              | optional,
            prefix
              | refs."definitions.NonEmptyString"
              | String
              | doc "Object key prefix that identifies one or more objects to which this rule applies."
              | optional,
            transitions
              | Array (
                std.contract.Sequence
                  [ refs."definitions.ITransition", { _ | Dyn } ]
              )
              | doc "One or more transition rules that specify when an object transitions to a specified storage class."
              | optional,
          },
      "definitions.ILoadBalancersConfig" =
        {
            applicationLoadBalancers
              | Array (
                std.contract.Sequence
                  [
                    refs."definitions.IApplicationLoadBalancerConfig",
                    { _ | Dyn }
                  ]
              )
              | doc "(OPTIONAL) An array of Application Load Balancer (ALB) configurations. Use this property to define ALBs to be deployed in the specified VPC subnets."
              | optional,
            networkLoadBalancers
              | Array (
                std.contract.Sequence
                  [ refs."definitions.INetworkLoadBalancerConfig", { _ | Dyn } ]
              )
              | doc "(OPTIONAL) An array of Network Load Balancer (NLB) configurations. Use this property to define NLBs to be deployed in the specified VPC subnets."
              | optional,
          },
      "definitions.ILocalGatewayConfig" =
        {
            id
              | refs."definitions.NonEmptyString"
              | String
              | doc "The id for the Local Gateway",
            name
              | refs."definitions.NonEmptyString"
              | String
              | doc "A friendly name for the Local Gateway",
            routeTables
              | Array (
                std.contract.Sequence
                  [
                    refs."definitions.ILocalGatewayRouteTableConfig",
                    { _ | Dyn }
                  ]
              )
              | doc "The route tables for the Local Gateway",
          },
      "definitions.ILocalGatewayRouteTableConfig" =
        {
            id
              | refs."definitions.NonEmptyString"
              | String
              | doc "The id for the Route Table",
            name
              | refs."definitions.NonEmptyString"
              | String
              | doc "A friendly name for the Route Table",
          },
      "definitions.INatGatewayConfig" =
        {
            allocationId
              | refs."definitions.NonEmptyString"
              | String
              | doc "(OPTIONAL) The allocation ID of the Elastic IP address that's associated with the NAT gateway. This allocation ID must exist in the target account the NAT gateway is deployed to."
              | optional,
            name
              | refs."definitions.NonEmptyString"
              | String
              | doc "A friendly name for the NAT Gateway.",
            private
              | Bool
              | doc "(OPTIONAL) Set `true` to define a NAT gateway with private connectivity type"
              | optional,
            subnet
              | refs."definitions.NonEmptyString"
              | String
              | doc "The friendly name of the subnet for the NAT Gateway to be deployed.",
            tags
              | Array (
                std.contract.Sequence [ refs."definitions.ITag", { _ | Dyn } ]
              )
              | doc "(OPTIONAL) An array of tag objects for the NAT Gateway."
              | optional,
          },
      "definitions.INetworkAclConfig" =
        {
            inboundRules
              | Array (
                std.contract.Sequence
                  [
                    refs."definitions.INetworkAclInboundRuleConfig",
                    { _ | Dyn }
                  ]
              )
              | doc "(OPTIONAL) A list of inbound rules to define for the Network ACL"
              | optional,
            name
              | refs."definitions.NonEmptyString"
              | String
              | doc "The name of the Network ACL.",
            outboundRules
              | Array (
                std.contract.Sequence
                  [
                    refs."definitions.INetworkAclOutboundRuleConfig",
                    { _ | Dyn }
                  ]
              )
              | doc "(OPTIONAL) A list of outbound rules to define for the Network ACL"
              | optional,
            subnetAssociations
              | Array (
                std.contract.Sequence
                  [ refs."definitions.NonEmptyString", String ]
              )
              | doc "A list of subnets to associate with the Network ACL",
            tags
              | Array (
                std.contract.Sequence [ refs."definitions.ITag", { _ | Dyn } ]
              )
              | doc "(OPTIONAL) A list of tags to attach to the Network ACL"
              | optional,
          },
      "definitions.INetworkAclInboundRuleConfig" =
        {
            action
              | refs."definitions.AllowDeny"
              | String
              | doc "The action for the network ACL rule.",
            fromPort
              | Number
              | doc "The port to start from in the network ACL rule.",
            protocol
              | Number
              | doc "The  {@link  https://www.iana.org/assignments/protocol-numbers/protocol-numbers.xhtml IANA protocol number }  for the network ACL rule. You may also specify -1 for all protocols.",
            rule | Number | doc "The rule ID number for the rule.",
            source
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [ refs."definitions.NonEmptyString", String ],
                  std.contract.Sequence
                    [
                      refs."definitions.INetworkAclSubnetSelection",
                      { _ | Dyn }
                    ]
                ]
              | doc "The source of the network ACL rule.",
            toPort
              | Number
              | doc "The port to end with in the network ACL rule.",
          },
      "definitions.INetworkAclOutboundRuleConfig" =
        {
            action
              | refs."definitions.AllowDeny"
              | String
              | doc "The action for the network ACL rule.",
            destination
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [ refs."definitions.NonEmptyString", String ],
                  std.contract.Sequence
                    [
                      refs."definitions.INetworkAclSubnetSelection",
                      { _ | Dyn }
                    ]
                ]
              | doc "The destination of the network ACL rule.",
            fromPort
              | Number
              | doc "The port to start from in the network ACL rule.",
            protocol
              | Number
              | doc "The  {@link  https://www.iana.org/assignments/protocol-numbers/protocol-numbers.xhtml IANA protocol number }  for the network ACL rule. You may also specify -1 for all protocols.",
            rule | Number | doc "The rule ID number for the rule.",
            toPort
              | Number
              | doc "The port to end with in the network ACL rule.",
          },
      "definitions.INetworkAclSubnetSelection" =
        {
            account
              | refs."definitions.NonEmptyString"
              | String
              | doc "The friendly name of the account of the subnet."
              | optional,
            ipv6
              | Bool
              | doc "(OPTIONAL) Indicates whether to target the IPv6 CIDR associated with a subnet."
              | optional,
            region
              | refs."definitions.Region"
              | String
              | doc "(OPTIONAL) The region that the subnet is located in."
              | optional,
            subnet
              | refs."definitions.NonEmptyString"
              | String
              | doc "The friendly name of the subnet.",
            vpc
              | refs."definitions.NonEmptyString"
              | String
              | doc "The friendly name of the VPC of the subnet.",
          },
      "definitions.INetworkConfig" =
        {
            accountVpcEndpointIds
              | {
                _ | Array (
                  std.contract.Sequence
                    [ refs."definitions.NonEmptyString", String ]
                )
              }
              | doc m%"
                A map between account Id and all the VPC Endpoint IDs in the account.
                
                Currently, the dynamic values will only be loaded in FinalizeStack for SCP finalization. Only the account VPC Endpoints referred by ACCEL_LOOKUP in SCPs will be loaded.
              "%
              | optional,
            accountVpcIds
              | {
                _ | Array (
                  std.contract.Sequence
                    [ refs."definitions.NonEmptyString", String ]
                )
              }
              | doc m%"
                A map between account Id and all the VPC IDs in the account.
                
                Currently, the dynamic values will only be loaded in FinalizeStack for SCP finalization. Only the account VPCs referred in SCPs by ACCEL_LOOKUP will be loaded.
              "%
              | optional,
            centralNetworkServices
              | refs."definitions.ICentralNetworkServicesConfig"
              | { _ | Dyn }
              | doc "An optional Central Network services configuration."
              | optional,
            certificates
              | Array (
                std.contract.Sequence
                  [ refs."definitions.ICertificateConfig", { _ | Dyn } ]
              )
              | doc "Certificate manager configuration"
              | optional,
            customerGateways
              | Array (
                std.contract.Sequence
                  [ refs."definitions.ICustomerGatewayConfig", { _ | Dyn } ]
              )
              | doc "An array of Customer Gateway configurations."
              | optional,
            defaultVpc
              | refs."definitions.IDefaultVpcsConfig"
              | { _ | Dyn }
              | doc "A default VPC configuration.",
            dhcpOptions
              | Array (
                std.contract.Sequence
                  [ refs."definitions.IDhcpOptsConfig", { _ | Dyn } ]
              )
              | doc "An optional list of DHCP options set configurations."
              | optional,
            directConnectGateways
              | Array (
                std.contract.Sequence
                  [ refs."definitions.IDxGatewayConfig", { _ | Dyn } ]
              )
              | doc "An optional array of Direct Connect Gateway configurations."
              | optional,
            elbAccountIds
              | Array (
                std.contract.Sequence
                  [ refs."definitions.IElbAccountIdsConfig", { _ | Dyn } ]
              )
              | doc "An optional ELB root account ID"
              | optional,
            endpointPolicies
              | Array (
                std.contract.Sequence
                  [ refs."definitions.IEndpointPolicyConfig", { _ | Dyn } ]
              )
              | doc "A list of VPC configurations. An array of VPC endpoint policies.",
            firewallManagerService
              | refs."definitions.IFirewallManagerServiceConfig"
              | { _ | Dyn }
              | doc "Firewall manager service configuration"
              | optional,
            homeRegion
              | refs."definitions.Region"
              | String
              | doc "Accelerator home region name."
              | optional,
            prefixLists
              | Array (
                std.contract.Sequence
                  [ refs."definitions.IPrefixListConfig", { _ | Dyn } ]
              )
              | doc "An optional list of prefix list set configurations."
              | optional,
            transitGatewayConnects
              | Array (
                std.contract.Sequence
                  [
                    refs."definitions.ITransitGatewayConnectConfig",
                    { _ | Dyn }
                  ]
              )
              | doc "An array of Transit Gateway Connect configurations."
              | optional,
            transitGatewayPeering
              | Array (
                std.contract.Sequence
                  [
                    refs."definitions.ITransitGatewayPeeringConfig",
                    { _ | Dyn }
                  ]
              )
              | doc "Transit Gateway peering configuration."
              | optional,
            transitGateways
              | Array (
                std.contract.Sequence
                  [ refs."definitions.ITransitGatewayConfig", { _ | Dyn } ]
              )
              | doc "An array of Transit Gateway configurations.",
            vpcFlowLogs
              | refs."definitions.IVpcFlowLogsConfig"
              | { _ | Dyn }
              | doc "A VPC flow logs configuration."
              | optional,
            vpcPeering
              | Array (
                std.contract.Sequence
                  [ refs."definitions.IVpcPeeringConfig", { _ | Dyn } ]
              )
              | doc "An optional list of VPC peering configurations"
              | optional,
            vpcTemplates
              | Array (
                std.contract.Sequence
                  [ refs."definitions.IVpcTemplatesConfig", { _ | Dyn } ]
              )
              | doc "An optional list of VPC template configurations"
              | optional,
            vpcs
              | Array (
                std.contract.Sequence
                  [ refs."definitions.IVpcConfig", { _ | Dyn } ]
              )
              | doc "An array of VPC configurations.",
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
      "definitions.INfwConfig" =
        {
            firewalls
              | Array (
                std.contract.Sequence
                  [ refs."definitions.INfwFirewallConfig", { _ | Dyn } ]
              )
              | doc "An array of Network Firewall firewall configurations.",
            policies
              | Array (
                std.contract.Sequence
                  [ refs."definitions.INfwFirewallPolicyConfig", { _ | Dyn } ]
              )
              | doc "An array of Network Firewall policy configurations.",
            rules
              | Array (
                std.contract.Sequence
                  [ refs."definitions.INfwRuleGroupConfig", { _ | Dyn } ]
              )
              | doc "An array of Network Firewall rule group configurations.",
          },
      "definitions.INfwFirewallConfig" =
        {
            deleteProtection
              | Bool
              | doc "(OPTIONAL) Enable for deletion protection on the firewall."
              | optional,
            description
              | refs."definitions.NonEmptyString"
              | String
              | doc "(OPTIONAL) A description for the firewall."
              | optional,
            firewallPolicy
              | refs."definitions.NonEmptyString"
              | String
              | doc "The friendly name of the Network Firewall policy or ARN for an existing network firewall policy.",
            firewallPolicyChangeProtection
              | Bool
              | doc "(OPTIONAL) Enable to disallow firewall policy changes."
              | optional,
            loggingConfiguration
              | Array (
                std.contract.Sequence
                  [ refs."definitions.INfwLoggingConfig", { _ | Dyn } ]
              )
              | doc "(OPTIONAL) An array of Network Firewall logging configurations."
              | optional,
            name
              | refs."definitions.NonEmptyString"
              | String
              | doc "A friendly name for the firewall.",
            subnetChangeProtection
              | Bool
              | doc "(OPTIONAL) Enable to disallow firewall subnet changes."
              | optional,
            subnets
              | Array (
                std.contract.Sequence
                  [ refs."definitions.NonEmptyString", String ]
              )
              | doc "An array of the friendly names of subnets to deploy Network Firewall to.",
            tags
              | Array (
                std.contract.Sequence [ refs."definitions.ITag", { _ | Dyn } ]
              )
              | doc "(OPTIONAL) An array of tags for the firewall."
              | optional,
            vpc
              | refs."definitions.NonEmptyString"
              | String
              | doc "The friendly name of the VPC to deploy Network Firewall to.",
          },
      "definitions.INfwFirewallPolicyConfig" =
        {
            description
              | refs."definitions.NonEmptyString"
              | String
              | doc "(OPTIONAL) A description for the policy."
              | optional,
            firewallPolicy
              | refs."definitions.INfwFirewallPolicyPolicyConfig"
              | { _ | Dyn }
              | doc "Use this property to define specific behaviors and rule groups to associate with the policy.",
            name
              | refs."definitions.NonEmptyString"
              | String
              | doc "A friendly name for the policy.",
            regions
              | Array (
                std.contract.Sequence [ refs."definitions.Region", String ]
              )
              | doc "The regions to deploy the policy to.",
            shareTargets
              | refs."definitions.IShareTargets"
              | { _ | Dyn }
              | doc "(OPTIONAL) Resource Access Manager (RAM) share targets."
              | optional,
            tags
              | Array (
                std.contract.Sequence [ refs."definitions.ITag", { _ | Dyn } ]
              )
              | doc "(OPTIONAL) An array of tags for the policy."
              | optional,
          },
      "definitions.INfwFirewallPolicyPolicyConfig" =
        {
            statefulDefaultActions
              | Array (
                std.contract.Sequence
                  [ refs."definitions.NfwStatefulDefaultActionType", String ]
              )
              | doc "(OPTIONAL) An array of default actions to take on packets evaluated by the stateful engine."
              | optional,
            statefulEngineOptions
              | refs."definitions.NfwStatefulRuleOptionsType"
              | String
              | doc "(OPTIONAL) Define how the stateful engine will evaluate packets."
              | optional,
            statefulRuleGroups
              | Array (
                std.contract.Sequence
                  [
                    refs."definitions.INfwStatefulRuleGroupReferenceConfig",
                    { _ | Dyn }
                  ]
              )
              | doc "{OPTIONAL) An array of Network Firewall stateful rule group reference configurations."
              | optional,
            statelessCustomActions
              | Array (
                std.contract.Sequence
                  [
                    refs."definitions.INfwRuleSourceCustomActionConfig",
                    { _ | Dyn }
                  ]
              )
              | doc "(OPTIONAL) An array of Network Firewall custom action configurations."
              | optional,
            statelessDefaultActions
              | Array (
                std.contract.any_of
                  [
                    std.contract.Sequence
                      [ refs."definitions.NfwStatelessRuleActionType", String ],
                    std.contract.Sequence
                      [ refs."definitions.NonEmptyString", String ]
                  ]
              )
              | doc "An array of default actions to take on packets evaluated by the stateless engine.",
            statelessFragmentDefaultActions
              | Array (
                std.contract.any_of
                  [
                    std.contract.Sequence
                      [ refs."definitions.NfwStatelessRuleActionType", String ],
                    std.contract.Sequence
                      [ refs."definitions.NonEmptyString", String ]
                  ]
              )
              | doc "An array of default actions to take on fragmented packets.",
            statelessRuleGroups
              | Array (
                std.contract.Sequence
                  [
                    refs."definitions.INfwStatelessRuleGroupReferenceConfig",
                    { _ | Dyn }
                  ]
              )
              | doc "(OPTIONAL) An array of Network Firewall stateless rule group reference configurations."
              | optional,
          },
      "definitions.INfwLoggingConfig" =
        {
            destination
              | refs."definitions.LogDestinationType"
              | String
              | doc "The destination service to log to.",
            type
              | refs."definitions.NfwLogType"
              | String
              | doc "The type of actions to log.",
          },
      "definitions.INfwRuleGroupConfig" =
        {
            capacity | Number | doc "The capacity of the rule group.",
            description
              | refs."definitions.NonEmptyString"
              | String
              | doc "(OPTIONAL) A description for the rule group."
              | optional,
            name
              | refs."definitions.NonEmptyString"
              | String
              | doc "A friendly name for the rule group.",
            regions
              | Array (
                std.contract.Sequence [ refs."definitions.Region", String ]
              )
              | doc "The regions to deploy the rule group to.",
            ruleGroup
              | refs."definitions.INfwRuleGroupRuleConfig"
              | { _ | Dyn }
              | doc "(OPTIONAL) A Network Firewall rule configuration."
              | optional,
            shareTargets
              | refs."definitions.IShareTargets"
              | { _ | Dyn }
              | doc "(OPTIONAL) Resource Access Manager (RAM) share targets."
              | optional,
            tags
              | Array (
                std.contract.Sequence [ refs."definitions.ITag", { _ | Dyn } ]
              )
              | doc "(OPTIONAL) An array of tags for the rule group."
              | optional,
            type
              | refs."definitions.NfwRuleType"
              | String
              | doc "The type of rules in the rule group.",
          },
      "definitions.INfwRuleGroupRuleConfig" =
        {
            ruleVariables
              | refs."definitions.INfwRuleVariableConfig"
              | { _ | Dyn }
              | doc "A Network Firewall rule variable configuration."
              | optional,
            rulesSource
              | refs."definitions.INfwRuleSourceConfig"
              | { _ | Dyn }
              | doc "A Network Firewall rule source configuration.",
            statefulRuleOptions
              | refs."definitions.NfwStatefulRuleOptionsType"
              | String
              | doc "A stateful rule option for the rule group."
              | optional,
          },
      "definitions.INfwRuleSourceConfig" =
        {
            rulesFile
              | refs."definitions.NonEmptyString"
              | String
              | doc "(OPTIONAL) Suricata rules file. Use this property to define a Suricata-compatible rules file for Network Firewall."
              | optional,
            rulesSourceList
              | refs."definitions.INfwRuleSourceListConfig"
              | { _ | Dyn }
              | doc "(OPTIONAL) A Network Firewall rule source list configuration. Use this property to define a domain list for Network Firewall."
              | optional,
            rulesString
              | refs."definitions.NonEmptyString"
              | String
              | doc "(OPTIONAL) A Suricata-compatible stateful rule string. Use this property to define a single Suricata-compatible rule for Network Firewall."
              | optional,
            statefulRules
              | Array (
                std.contract.Sequence
                  [
                    refs."definitions.INfwRuleSourceStatefulRuleConfig",
                    { _ | Dyn }
                  ]
              )
              | doc "(OPTIONAL) An array of Network Firewall stateful rule IP header configurations. Use this property to define a stateful rule in IP header format for Network Firewall."
              | optional,
            statelessRulesAndCustomActions
              | refs."definitions.INfwStatelessRulesAndCustomActionsConfig"
              | { _ | Dyn }
              | doc "(OPTIONAL) A Network Firewall stateless rules and custom action configuration. Use this property to define stateless rules and custom actions for Network Firewall."
              | optional,
          },
      "definitions.INfwRuleSourceCustomActionConfig" =
        {
            actionDefinition
              | refs."definitions.INfwRuleSourceCustomActionDefinitionConfig"
              | { _ | Dyn }
              | doc "A Network Firewall custom action definition configuration.",
            actionName
              | refs."definitions.NonEmptyString"
              | String
              | doc "A friendly name for the custom action.",
          },
      "definitions.INfwRuleSourceCustomActionDefinitionConfig" =
        {
            publishMetricAction
              | refs."definitions.INfwRuleSourceCustomActionDimensionConfig"
              | { _ | Dyn }
              | doc "A Network Firewall custom action dimensions configuration.",
          },
      "definitions.INfwRuleSourceCustomActionDimensionConfig" =
        {
            dimensions
              | Array (
                std.contract.Sequence
                  [ refs."definitions.NonEmptyString", String ]
              )
              | doc "An array of values of the custom metric dimensions to log.",
          },
      "definitions.INfwRuleSourceListConfig" =
        {
            generatedRulesType
              | refs."definitions.NfwGeneratedRulesType"
              | String
              | doc "The type of rules to generate from the source list.",
            targetTypes
              | Array (
                std.contract.Sequence
                  [ refs."definitions.NfwTargetType", String ]
              )
              | doc "An array of protocol types to inspect.",
            targets
              | Array (
                std.contract.Sequence
                  [ refs."definitions.NonEmptyString", String ]
              )
              | doc "An array of target domain names.",
          },
      "definitions.INfwRuleSourceStatefulRuleConfig" =
        {
            action
              | refs."definitions.NfwStatefulRuleActionType"
              | String
              | doc "The action type for the stateful rule.",
            header
              | refs."definitions.INfwRuleSourceStatefulRuleHeaderConfig"
              | { _ | Dyn }
              | doc "A Network Firewall stateful rule header configuration.",
            ruleOptions
              | Array (
                std.contract.Sequence
                  [
                    refs."definitions.INfwRuleSourceStatefulRuleOptionsConfig",
                    { _ | Dyn }
                  ]
              )
              | doc "An array of Network Firewall stateful rule options configurations.",
          },
      "definitions.INfwRuleSourceStatefulRuleHeaderConfig" =
        {
            destination
              | refs."definitions.NonEmptyString"
              | String
              | doc "The destination CIDR range to inspect for.",
            destinationPort
              | refs."definitions.NonEmptyString"
              | String
              | doc "The destination port or port range to inspect.",
            direction
              | refs."definitions.NfwStatefulRuleDirectionType"
              | String
              | doc "The direction of the traffic flow to inspect.",
            protocol
              | refs."definitions.NfwStatefulRuleProtocolType"
              | String
              | doc "The protocol to inspect.",
            source
              | refs."definitions.NonEmptyString"
              | String
              | doc "The source CIDR range to inspect for.",
            sourcePort
              | refs."definitions.NonEmptyString"
              | String
              | doc "The source port or port range to inspect.",
          },
      "definitions.INfwRuleSourceStatefulRuleOptionsConfig" =
        {
            keyword
              | refs."definitions.NonEmptyString"
              | String
              | doc "A Suricata-compatible keyword.",
            settings
              | Array (
                std.contract.Sequence
                  [ refs."definitions.NonEmptyString", String ]
              )
              | doc "An array of values for the keyword."
              | optional,
          },
      "definitions.INfwRuleSourceStatelessMatchAttributesConfig" =
        {
            destinationPorts
              | Array (
                std.contract.Sequence
                  [
                    refs."definitions.INfwRuleSourceStatelessPortRangeConfig",
                    { _ | Dyn }
                  ]
              )
              | doc "(OPTIONAL) An array of Network Firewall stateless port range configurations."
              | optional,
            destinations
              | Array (
                std.contract.Sequence
                  [ refs."definitions.NonEmptyString", String ]
              )
              | doc "(OPTIONAL) An array of destination CIDR ranges to inspect for."
              | optional,
            protocols
              | Array Number
              | doc "(OPTIONAL) An array of IP protocol numbers to inspect for."
              | optional,
            sourcePorts
              | Array (
                std.contract.Sequence
                  [
                    refs."definitions.INfwRuleSourceStatelessPortRangeConfig",
                    { _ | Dyn }
                  ]
              )
              | doc "(OPTIONAL) An array of Network Firewall stateless port range configurations."
              | optional,
            sources
              | Array (
                std.contract.Sequence
                  [ refs."definitions.NonEmptyString", String ]
              )
              | doc "(OPTIONAL) An array of source CIDR ranges to inspect for."
              | optional,
            tcpFlags
              | Array (
                std.contract.Sequence
                  [
                    refs."definitions.INfwRuleSourceStatelessTcpFlagsConfig",
                    { _ | Dyn }
                  ]
              )
              | doc "(OPTIONAL) An array of Network Firewall stateless TCP flag configurations."
              | optional,
          },
      "definitions.INfwRuleSourceStatelessPortRangeConfig" =
        {
            fromPort | Number | doc "The port to start from in the range.",
            toPort | Number | doc "The port to end with in the range.",
          },
      "definitions.INfwRuleSourceStatelessRuleConfig" =
        {
            "priority" | Number | doc "The priority number for the rule.",
            ruleDefinition
              | refs."definitions.INfwRuleSourceStatelessRuleDefinitionConfig"
              | { _ | Dyn }
              | doc "A Network Firewall stateless rule definition configuration.",
          },
      "definitions.INfwRuleSourceStatelessRuleDefinitionConfig" =
        {
            actions
              | Array (
                std.contract.any_of
                  [
                    std.contract.Sequence
                      [ refs."definitions.NonEmptyString", String ],
                    std.contract.Sequence
                      [ refs."definitions.NfwStatelessRuleActionType", String ]
                  ]
              )
              | doc "An array of actions to take using the stateless rule engine.",
            matchAttributes
              | refs."definitions.INfwRuleSourceStatelessMatchAttributesConfig"
              | { _ | Dyn }
              | doc "A Network Firewall stateless rule match attributes configuration.",
          },
      "definitions.INfwRuleSourceStatelessTcpFlagsConfig" =
        {
            flags
              | Array (
                std.contract.Sequence
                  [ refs."definitions.NfwStatelessRuleTcpFlagType", String ]
              )
              | doc "An array of TCP flags.",
            masks
              | Array (
                std.contract.Sequence
                  [ refs."definitions.NfwStatelessRuleTcpFlagType", String ]
              )
              | doc "The set of flags to consider in the inspection.",
          },
      "definitions.INfwRuleVariableConfig" =
        {
            ipSets
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [
                      refs."definitions.INfwRuleVariableDefinitionConfig",
                      { _ | Dyn }
                    ],
                  Array (
                    std.contract.Sequence
                      [
                        refs."definitions.INfwRuleVariableDefinitionConfig",
                        { _ | Dyn }
                      ]
                  )
                ]
              | doc "A Network Firewall rule variable definition configuration.",
            portSets
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [
                      refs."definitions.INfwRuleVariableDefinitionConfig",
                      { _ | Dyn }
                    ],
                  Array (
                    std.contract.Sequence
                      [
                        refs."definitions.INfwRuleVariableDefinitionConfig",
                        { _ | Dyn }
                      ]
                  )
                ]
              | doc "A Network Firewall rule variable definition configuration.",
          },
      "definitions.INfwRuleVariableDefinitionConfig" =
        {
            definition
              | Array (
                std.contract.Sequence
                  [ refs."definitions.NonEmptyString", String ]
              )
              | doc "An array of values for the rule variable.",
            name
              | refs."definitions.NonEmptyString"
              | String
              | doc "A name for the rule variable.",
          },
      "definitions.INfwStatefulRuleGroupReferenceConfig" =
        {
            name
              | refs."definitions.NonEmptyString"
              | String
              | doc "The friendly name of the rule group.",
            "priority"
              | Number
              | doc "(OPTIONAL) If using strict ordering, a priority number for the rule."
              | optional,
          },
      "definitions.INfwStatelessRuleGroupReferenceConfig" =
        {
            name
              | refs."definitions.NonEmptyString"
              | String
              | doc "The friendly name of the rule group.",
            "priority" | Number | doc "A priority number for the rule.",
          },
      "definitions.INfwStatelessRulesAndCustomActionsConfig" =
        {
            customActions
              | Array (
                std.contract.Sequence
                  [
                    refs."definitions.INfwRuleSourceCustomActionConfig",
                    { _ | Dyn }
                  ]
              )
              | doc "An array of Network Firewall custom action configurations."
              | optional,
            statelessRules
              | Array (
                std.contract.Sequence
                  [
                    refs."definitions.INfwRuleSourceStatelessRuleConfig",
                    { _ | Dyn }
                  ]
              )
              | doc "An array of Network Firewall stateless rule configurations.",
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
      "definitions.IOutpostsConfig" =
        {
            arn
              | refs."definitions.NonEmptyString"
              | String
              | doc "The ARN for the Outpost",
            availabilityZone
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [ refs."definitions.NonEmptyString", String ],
                  Number
                ]
              | doc "The availability zone where the Outpost resides",
            localGateway
              | refs."definitions.ILocalGatewayConfig"
              | { _ | Dyn }
              | doc "The Local Gateway configuration for the Outpost"
              | optional,
            name
              | refs."definitions.NonEmptyString"
              | String
              | doc "A friendly name for the Outpost",
          },
      "definitions.IPhase1Config" =
        {
            dhGroups
              | Array (
                std.contract.Sequence
                  [ refs."definitions.Phase1DhGroupType", Number ]
              )
              | doc m%"
                (OPTIONAL) An array of permitted Diffie-Hellman group numbers used in the IKE Phase 1 for initial authentication.
                
                Default - `[2, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24]`
              "%
              | optional,
            encryptionAlgorithms
              | Array (
                std.contract.Sequence
                  [ refs."definitions.EncryptionAlgorithmType", String ]
              )
              | doc m%"
                (OPTIONAL) An array of encryption algorithms permitted for IKE Phase 1 negotiations.
                
                Default - `[AES128, AES256, AES128-GCM-16, AES256-GCM-16]`
              "%
              | optional,
            integrityAlgorithms
              | Array (
                std.contract.Sequence
                  [ refs."definitions.IntegrityAlgorithmType", String ]
              )
              | doc m%"
                (OPTIONAL) An array of integrity algorithms permitted for IKE Phase 1 negotiations.
                
                Default - `[SHA1, SHA2-256, SHA2-384, SHA2-512]`
              "%
              | optional,
            lifetimeSeconds
              | Number
              | doc m%"
                (OPTIONAL) The IKE Phase 1 lifetime (in seconds) for the VPN tunnel.
                
                Default: `28800` (8 hours)
              "%
              | optional,
          },
      "definitions.IPhase2Config" =
        {
            dhGroups
              | Array (
                std.contract.Sequence
                  [ refs."definitions.Phase2DhGroupType", Number ]
              )
              | doc m%"
                (OPTIONAL) An array of permitted Diffie-Hellman group numbers used in the IKE Phase 2 negotiations.
                
                Default - `[2, 5, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24]`
              "%
              | optional,
            encryptionAlgorithms
              | Array (
                std.contract.Sequence
                  [ refs."definitions.EncryptionAlgorithmType", String ]
              )
              | doc m%"
                (OPTIONAL) An array of encryption algorithms permitted for IKE Phase 2 negotiations.
                
                Default - `[AES128, AES256, AES128-GCM-16, AES256-GCM-16]`
              "%
              | optional,
            integrityAlgorithms
              | Array (
                std.contract.Sequence
                  [ refs."definitions.IntegrityAlgorithmType", String ]
              )
              | doc m%"
                (OPTIONAL) An array of integrity algorithms permitted for IKE Phase 2 negotiations.
                
                Default - `[SHA1, SHA2-256, SHA2-384, SHA2-512]`
              "%
              | optional,
            lifetimeSeconds
              | Number
              | doc m%"
                (OPTIONAL) The IKE Phase 2 lifetime (in seconds) for the VPN tunnel.
                
                Default: `3600` (1 hour)
              "%
              | optional,
          },
      "definitions.IPrefixListConfig" =
        {
            accounts
              | Array (
                std.contract.Sequence
                  [ refs."definitions.NonEmptyString", String ]
              )
              | doc "(DEPRECATED) An array of friendly names for the accounts the prefix list is deployed."
              | optional,
            addressFamily
              | refs."definitions.IpAddressFamilyType"
              | String
              | doc "The IP address family of the prefix list.",
            deploymentTargets
              | refs."definitions.IDeploymentTargets"
              | { _ | Dyn }
              | doc "Prefix List deployment targets"
              | optional,
            entries
              | Array (
                std.contract.Sequence
                  [ refs."definitions.NonEmptyString", String ]
              )
              | doc "An array of CIDR entries for the prefix list.",
            maxEntries
              | Number
              | doc "The maximum allowed entries in the prefix list.",
            name
              | refs."definitions.NonEmptyString"
              | String
              | doc "A friendly name for the prefix list.",
            regions
              | Array (
                std.contract.Sequence [ refs."definitions.Region", String ]
              )
              | doc "(DEPRECATED) An array of region names for the prefix list to be deployed."
              | optional,
            tags
              | Array (
                std.contract.Sequence [ refs."definitions.ITag", { _ | Dyn } ]
              )
              | doc "(OPTIONAL) An array of tag objects for the prefix list."
              | optional,
          },
      "definitions.IPrefixListSourceConfig" =
        {
            prefixLists
              | Array (
                std.contract.Sequence
                  [ refs."definitions.NonEmptyString", String ]
              )
              | doc "An array of the friendly names of prefix lists to reference.",
          },
      "definitions.IResolverConfig" =
        {
            endpoints
              | Array (
                std.contract.Sequence
                  [ refs."definitions.IResolverEndpointConfig", { _ | Dyn } ]
              )
              | doc "(OPTIONAL) An array of Route 53 resolver endpoint configurations."
              | optional,
            firewallRuleGroups
              | Array (
                std.contract.Sequence
                  [
                    refs."definitions.IDnsFirewallRuleGroupConfig",
                    { _ | Dyn }
                  ]
              )
              | doc "(OPTIONAL) An array of Route 53 DNS firewall rule group configurations."
              | optional,
            queryLogs
              | refs."definitions.IDnsQueryLogsConfig"
              | { _ | Dyn }
              | doc "(OPTIONAL) A Route 53 resolver DNS query logging configuration."
              | optional,
            rules
              | Array (
                std.contract.Sequence
                  [ refs."definitions.IResolverRuleConfig", { _ | Dyn } ]
              )
              | doc "(OPTIONAL) An array of Route 53 resolver rules."
              | optional,
          },
      "definitions.IResolverEndpointConfig" =
        {
            allowedCidrs
              | Array (
                std.contract.Sequence
                  [ refs."definitions.NonEmptyString", String ]
              )
              | doc "(OPTIONAL) The allowed ingress/egress CIDRs for the resolver endpoint security group."
              | optional,
            name
              | refs."definitions.NonEmptyString"
              | String
              | doc "The friendly name of the resolver endpoint.",
            rules
              | Array (
                std.contract.Sequence
                  [ refs."definitions.IResolverRuleConfig", { _ | Dyn } ]
              )
              | doc "(OPTIONAL) An array of resolver rule configurations for the endpoint."
              | optional,
            subnets
              | Array (
                std.contract.Sequence
                  [ refs."definitions.NonEmptyString", String ]
              )
              | doc "An array of friendly names for subnets to deploy the resolver endpoint to.",
            tags
              | Array (
                std.contract.Sequence [ refs."definitions.ITag", { _ | Dyn } ]
              )
              | doc "(OPTIONAL) An array of tags for the resolver endpoint."
              | optional,
            type
              | refs."definitions.ResolverEndpointType"
              | String
              | doc m%"
                The type of resolver endpoint to deploy.
                
                INBOUND: allows DNS queries to your VPC from your network
                
                OUTBOUND: allows DNS queries from your VPC to your network
              "%,
            vpc
              | refs."definitions.NonEmptyString"
              | String
              | doc "The friendly name of the VPC to deploy the resolver endpoint to.",
          },
      "definitions.IResolverRuleConfig" =
        {
            domainName
              | refs."definitions.NonEmptyString"
              | String
              | doc "The domain name for the resolver rule.",
            excludedRegions
              | Array (
                std.contract.Sequence [ refs."definitions.Region", String ]
              )
              | doc "(OPTIONAL) Regions to exclude from SYSTEM rule deployment."
              | optional,
            inboundEndpointTarget
              | refs."definitions.NonEmptyString"
              | String
              | doc "(OPTIONAL) The friendly name of an inbound endpoint to target."
              | optional,
            name
              | refs."definitions.NonEmptyString"
              | String
              | doc "A friendly name for the resolver rule.",
            ruleType
              | refs."definitions.RuleType"
              | String
              | doc "(OPTIONAL) The type of rule to create."
              | optional,
            shareTargets
              | refs."definitions.IShareTargets"
              | { _ | Dyn }
              | doc "(OPTIONAL) Resource Access Manager (RAM) share targets."
              | optional,
            tags
              | Array (
                std.contract.Sequence [ refs."definitions.ITag", { _ | Dyn } ]
              )
              | doc "(OPTIONAL) An array of tags for the resolver rule."
              | optional,
            targetIps
              | Array (
                std.contract.Sequence
                  [ refs."definitions.IRuleTargetIps", { _ | Dyn } ]
              )
              | doc "(OPTIONAL) An array of target IP configurations for the resolver rule."
              | optional,
          },
      "definitions.IRouteTableConfig" =
        {
            gatewayAssociation
              | refs."definitions.GatewayRouteTableType"
              | String
              | doc "Designate a gateway to associate this route table with."
              | optional,
            name
              | refs."definitions.NonEmptyString"
              | String
              | doc "A friendly name for the VPC route table.",
            routes
              | Array (
                std.contract.Sequence
                  [ refs."definitions.IRouteTableEntryConfig", { _ | Dyn } ]
              )
              | doc "An array of VPC route table entry configuration objects."
              | optional,
            tags
              | Array (
                std.contract.Sequence [ refs."definitions.ITag", { _ | Dyn } ]
              )
              | doc "(OPTIONAL) An array of tag objects for the VPC route table."
              | optional,
          },
      "definitions.IRouteTableEntryConfig" =
        {
            destination
              | refs."definitions.NonEmptyString"
              | String
              | doc "(OPTIONAL) The destination IPv4 CIDR block or dynamic subnet reference for the route table entry."
              | optional,
            destinationPrefixList
              | refs."definitions.NonEmptyString"
              | String
              | doc "The friendly name of the destination prefix list for the route table entry."
              | optional,
            ipv6Destination
              | refs."definitions.NonEmptyString"
              | String
              | doc "(OPTIONAL) The destination IPv6 CIDR block or dynamic subnet reference for the route table entry."
              | optional,
            name
              | refs."definitions.NonEmptyString"
              | String
              | doc "A friendly name for the route table.",
            target
              | refs."definitions.NonEmptyString"
              | String
              | doc "The friendly name of the destination target."
              | optional,
            targetAvailabilityZone
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [ refs."definitions.NonEmptyString", String ],
                  Number
                ]
              | doc "The Availability Zone (AZ) the target resides in."
              | optional,
            type
              | refs."definitions.RouteTableEntryType"
              | String
              | doc "The destination type of route table entry."
              | optional,
          },
      "definitions.IRuleTargetIps" =
        {
            ip | refs."definitions.NonEmptyString" | String,
            port | refs."definitions.NonEmptyString" | String | optional,
          },
      "definitions.ISecurityGroupConfig" =
        {
            description
              | refs."definitions.NonEmptyString"
              | String
              | doc "(OPTIONAL) A description for the security group."
              | optional,
            inboundRules
              | Array (
                std.contract.Sequence
                  [ refs."definitions.ISecurityGroupRuleConfig", { _ | Dyn } ]
              )
              | doc "An array of security group rule configurations for ingress rules.",
            name
              | refs."definitions.NonEmptyString"
              | String
              | doc "The friendly name of the security group.",
            outboundRules
              | Array (
                std.contract.Sequence
                  [ refs."definitions.ISecurityGroupRuleConfig", { _ | Dyn } ]
              )
              | doc "An array of security group rule configurations for egress rules.",
            tags
              | Array (
                std.contract.Sequence [ refs."definitions.ITag", { _ | Dyn } ]
              )
              | doc "(OPTIONAL) An array of tag objects for the security group."
              | optional,
          },
      "definitions.ISecurityGroupRuleConfig" =
        {
            description
              | refs."definitions.NonEmptyString"
              | String
              | doc "A description for the security group rule.",
            fromPort
              | Number
              | doc "(OPTIONAL) The port to start from in the security group rule."
              | optional,
            ipProtocols
              | Array String
              | doc "(OPTIONAL) An array of custom IP Protocols for the security group rule"
              | optional,
            sources
              | Array (
                std.contract.any_of
                  [
                    std.contract.Sequence
                      [ refs."definitions.NonEmptyString", String ],
                    std.contract.Sequence
                      [ refs."definitions.ISubnetSourceConfig", { _ | Dyn } ],
                    std.contract.Sequence
                      [
                        refs."definitions.ISecurityGroupSourceConfig",
                        { _ | Dyn }
                      ],
                    std.contract.Sequence
                      [
                        refs."definitions.IPrefixListSourceConfig",
                        { _ | Dyn }
                      ]
                  ]
              )
              | doc "An array of sources for the security group rule.",
            tcpPorts
              | Array Number
              | doc "(OPTIONAL) An array of TCP ports to include in the security group rule."
              | optional,
            toPort
              | Number
              | doc "(OPTIONAL) The port to end with in the security group rule."
              | optional,
            types
              | Array (
                std.contract.Sequence
                  [ refs."definitions.SecurityGroupRuleType", String ]
              )
              | doc "(OPTIONAL) An array of port/protocol types to include in the security group rule."
              | optional,
            udpPorts
              | Array Number
              | doc "(OPTIONAL) An array of UDP ports to include in the security group rule."
              | optional,
          },
      "definitions.ISecurityGroupSourceConfig" =
        {
            securityGroups
              | Array (
                std.contract.Sequence
                  [ refs."definitions.NonEmptyString", String ]
              )
              | doc "An array of the friendly names of security group rules to reference.",
          },
      "definitions.IShareTargets" =
        {
            accounts | Array String | optional,
            organizationalUnits | Array String | optional,
          },
      "definitions.ISubnetConfig" =
        {
            assignIpv6OnCreation
              | Bool
              | doc "(OPTIONAL) Indicates whether a network interface created in this subnet receives an IPv6 address on creation."
              | optional,
            availabilityZone
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [ refs."definitions.NonEmptyString", String ],
                  Number
                ]
              | doc "The Availability Zone (AZ) the subnet resides in."
              | optional,
            enableDns64
              | Bool
              | doc m%"
                (OPTIONAL) Indicates whether DNS queries made to the Amazon-provided DNS Resolver in this subnet should return synthetic IPv6 addresses for IPv4-only destinations.
                
                For more information, see  {@link  https://docs.aws.amazon.com/vpc/latest/userguide/vpc-nat-gateway.html#nat-gateway-nat64-dns64 DNS64 and NAT64 }  in the Amazon Virtual Private Cloud User Guide.
              "%
              | optional,
            ipamAllocation
              | refs."definitions.IIpamAllocationConfig"
              | { _ | Dyn }
              | doc "The IPAM pool configuration for the subnet."
              | optional,
            ipv4CidrBlock
              | refs."definitions.NonEmptyString"
              | String
              | doc "The IPv4 CIDR block to associate with the subnet."
              | optional,
            ipv6CidrBlock
              | refs."definitions.NonEmptyString"
              | String
              | doc "(OPTIONAL) The IPv6 CIDR block to associate with the subnet."
              | optional,
            localZone
              | refs."definitions.NonEmptyString"
              | String
              | doc "The Zone ID of the local zone."
              | optional,
            mapPublicIpOnLaunch
              | Bool
              | doc "(OPTIONAL) Configure automatic mapping of public IPs."
              | optional,
            name
              | refs."definitions.NonEmptyString"
              | String
              | doc "A friendly name for the VPC subnet.",
            outpost
              | refs."definitions.NonEmptyString"
              | String
              | doc "(OPTIONAL) The friendly name for the outpost to attach to the subnet"
              | optional,
            privateDnsOptions
              | refs."definitions.ISubnetPrivateDnsConfig"
              | { _ | Dyn }
              | doc "(OPTIONAL) Private DNS name options for the subnet."
              | optional,
            routeTable
              | refs."definitions.NonEmptyString"
              | String
              | doc "The friendly name of the route table to associate with the subnet."
              | optional,
            shareTargets
              | refs."definitions.IShareTargets"
              | { _ | Dyn }
              | doc "(OPTIONAL) Resource Access Manager (RAM) share targets."
              | optional,
            tags
              | Array (
                std.contract.Sequence [ refs."definitions.ITag", { _ | Dyn } ]
              )
              | doc "(OPTIONAL) An array of tag objects for the VPC subnet."
              | optional,
          },
      "definitions.ISubnetPrivateDnsConfig" =
        {
            enableDnsAAAARecord
              | Bool
              | doc "(OPTIONAL) Indicates whether to respond to DNS queries for instance hostname with DNS AAAA records."
              | optional,
            enableDnsARecord
              | Bool
              | doc "(OPTIONAL) Indicates whether to respond to DNS queries for instance hostnames with DNS A records."
              | optional,
            hostnameType
              | std.enum.TagOrString
              | [| 'resource-name, 'ip-name |]
              | doc "The type of hostname for EC2 instances."
              | optional,
          },
      "definitions.ISubnetSourceConfig" =
        {
            account
              | refs."definitions.NonEmptyString"
              | String
              | doc "The friendly name of the account in which the VPC subnet resides.",
            ipv6
              | Bool
              | doc "(OPTIONAL) Indicates whether to target the IPv6 CIDR associated with a subnet."
              | optional,
            subnets
              | Array (
                std.contract.Sequence
                  [ refs."definitions.NonEmptyString", String ]
              )
              | doc "An array of the friendly names of subnets to reference.",
            vpc
              | refs."definitions.NonEmptyString"
              | String
              | doc "The friendly name of the VPC in which the subnet resides.",
          },
      "definitions.ITag" = { key | String, value | String, },
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
      "definitions.ITransitGatewayAttachmentConfig" =
        {
            name
              | refs."definitions.NonEmptyString"
              | String
              | doc "A friendly name for the Transit Gateway attachment.",
            options
              | refs."definitions.ITransitGatewayAttachmentOptionsConfig"
              | { _ | Dyn }
              | doc "(OPTIONAL) A Transit Gateway attachment options configuration."
              | optional,
            routeTableAssociations
              | Array (
                std.contract.Sequence
                  [ refs."definitions.NonEmptyString", String ]
              )
              | doc "The friendly name of a Transit Gateway route table to associate the attachment to."
              | optional,
            routeTablePropagations
              | Array (
                std.contract.Sequence
                  [ refs."definitions.NonEmptyString", String ]
              )
              | doc "An array of friendly names of Transit Gateway route tables to propagate the attachment."
              | optional,
            subnets
              | Array (
                std.contract.Sequence
                  [ refs."definitions.NonEmptyString", String ]
              )
              | doc "An array of the friendly names of VPC subnets for the attachment to be deployed.",
            tags
              | Array (
                std.contract.Sequence [ refs."definitions.ITag", { _ | Dyn } ]
              )
              | doc "(OPTIONAL) An array of tag objects for the Transit Gateway attachment."
              | optional,
            transitGateway
              | refs."definitions.ITransitGatewayAttachmentTargetConfig"
              | { _ | Dyn }
              | doc "A Transit Gateway attachment target configuration object.",
          },
      "definitions.ITransitGatewayAttachmentOptionsConfig" =
        {
            applianceModeSupport
              | refs."definitions.EnableDisable"
              | String
              | doc "(OPTIONAL) Enable to configure appliance mode for the attachment. This option is disabled by default."
              | optional,
            dnsSupport
              | refs."definitions.EnableDisable"
              | String
              | doc "(OPTIONAL) Enable to configure DNS support for the attachment. This option is enabled by default."
              | optional,
            ipv6Support
              | refs."definitions.EnableDisable"
              | String
              | doc "(OPTIONAL) Enable to configure IPv6 support for the attachment. This option is disabled by default."
              | optional,
          },
      "definitions.ITransitGatewayAttachmentTargetConfig" =
        {
            account
              | refs."definitions.NonEmptyString"
              | String
              | doc "The friendly name of the account for the attachment target Transit Gateway.",
            name
              | refs."definitions.NonEmptyString"
              | String
              | doc "A friendly name for the attachment target Transit Gateway.",
          },
      "definitions.ITransitGatewayConfig" =
        {
            account
              | refs."definitions.NonEmptyString"
              | String
              | doc "The friendly name of the account to deploy the Transit Gateway.",
            asn
              | Number
              | doc "A Border Gateway Protocol (BGP) Autonomous System Number (ASN).",
            autoAcceptSharingAttachments
              | refs."definitions.EnableDisable"
              | String
              | doc "Enable this option to automatically accept cross-account attachments.",
            defaultRouteTableAssociation
              | refs."definitions.EnableDisable"
              | String
              | doc "Configure default route table association.",
            defaultRouteTablePropagation
              | refs."definitions.EnableDisable"
              | String
              | doc "Configure default route table propagation.",
            dnsSupport
              | refs."definitions.EnableDisable"
              | String
              | doc "Configure DNS support between VPCs.",
            name
              | refs."definitions.NonEmptyString"
              | String
              | doc "A friendly name for the Transit Gateway.",
            region
              | refs."definitions.Region"
              | String
              | doc "The region name to deploy the Transit Gateway.",
            routeTables
              | Array (
                std.contract.Sequence
                  [
                    refs."definitions.ITransitGatewayRouteTableConfig",
                    { _ | Dyn }
                  ]
              )
              | doc "An array of Transit Gateway route table configuration objects.",
            shareTargets
              | refs."definitions.IShareTargets"
              | { _ | Dyn }
              | doc "(OPTIONAL) Resource Access Manager (RAM) share targets."
              | optional,
            tags
              | Array (
                std.contract.Sequence [ refs."definitions.ITag", { _ | Dyn } ]
              )
              | doc "(OPTIONAL) An array of tag objects for the Transit Gateway."
              | optional,
            transitGatewayCidrBlocks
              | Array (
                std.contract.Sequence
                  [ refs."definitions.NonEmptyString", String ]
              )
              | doc "(OPTIONAL) A list of transit gateway IPv4 CIDR blocks."
              | optional,
            transitGatewayIpv6CidrBlocks
              | Array (
                std.contract.Sequence
                  [ refs."definitions.NonEmptyString", String ]
              )
              | doc "(OPTIONAL) A list of transit gateway IPv6 CIDR blocks."
              | optional,
            vpnEcmpSupport
              | refs."definitions.EnableDisable"
              | String
              | doc "Equal Cost Multipath (ECMP) routing support between VPN tunnels.",
          },
      "definitions.ITransitGatewayConnectConfig" =
        {
            directConnect
              | refs."definitions.NonEmptyString"
              | String
              | doc "(OPTIONAL) The Direct Connect Gateway Attachment that belongs to the Transit Gateway that a Transit Gateway Connect Attachment is being made for."
              | optional,
            name
              | refs."definitions.NonEmptyString"
              | String
              | doc "A friendly name for the Transit Gateway Connect attachment.",
            options
              | refs."definitions.ITransitGatewayConnectOptionsConfig"
              | { _ | Dyn }
              | doc "(OPTIONAL) Options around the Transit Gateway Connect"
              | optional,
            region
              | refs."definitions.NonEmptyString"
              | String
              | doc "The AWS Region for the attachment.",
            tags
              | Array (
                std.contract.Sequence [ refs."definitions.ITag", { _ | Dyn } ]
              )
              | doc "(OPTIONAL) An array of tag objects for the Transit Gateway attachment."
              | optional,
            transitGateway
              | refs."definitions.ITransitGatewayAttachmentTargetConfig"
              | { _ | Dyn }
              | doc "The Transit Gateway configuration object to set the Transit Gateway Connect.",
            vpc
              | refs."definitions.ITransitGatewayConnectVpcConfig"
              | { _ | Dyn }
              | doc "The VPC Attachment that belongs to the Transit Gateway that a Transit Gateway Connect Attachment is being made for."
              | optional,
          },
      "definitions.ITransitGatewayConnectOptionsConfig" =
        {
            protocol
              | refs."definitions.TransitGatewayConnectProtocol"
              | String
              | doc "The tunnel protocl for the Transit Gateway Connect",
          },
      "definitions.ITransitGatewayConnectVpcConfig" =
        {
            vpcAttachment
              | refs."definitions.NonEmptyString"
              | String
              | doc "The name of the VPC attachment",
            vpcName
              | refs."definitions.NonEmptyString"
              | String
              | doc "The name of the VPC",
          },
      "definitions.ITransitGatewayPeeringAccepterConfig" =
        {
            account
              | refs."definitions.NonEmptyString"
              | String
              | doc "The friendly name of the account of the accepter transit gateway",
            applyTags
              | Bool
              | doc "(OPTIONAL) Peering request apply tags flag. Note: When this flag is set to `true`, the requester attachment tags are replicated to the accepter attachment."
              | optional,
            autoAccept
              | Bool
              | doc "(OPTIONAL) Peering request auto accept flag. Note: When this flag is set to `true`, the peering request will be automatically accepted by the accelerator."
              | optional,
            region
              | refs."definitions.Region"
              | String
              | doc "The name of the region the accepter transit gateway resides in",
            routeTableAssociations
              | refs."definitions.NonEmptyString"
              | String
              | doc "The friendly name of TGW route table to associate with this peering attachment.",
            transitGatewayName
              | refs."definitions.NonEmptyString"
              | String
              | doc "The friendly name of the accepter transit gateway",
          },
      "definitions.ITransitGatewayPeeringConfig" =
        {
            accepter
              | refs."definitions.ITransitGatewayPeeringAccepterConfig"
              | { _ | Dyn }
              | doc "Peering attachment accepter configuration",
            name
              | refs."definitions.NonEmptyString"
              | String
              | doc "The friendly name of TGW peering.",
            requester
              | refs."definitions.ITransitGatewayPeeringRequesterConfig"
              | { _ | Dyn }
              | doc "Peering attachment requester configuration.",
          },
      "definitions.ITransitGatewayPeeringRequesterConfig" =
        {
            account
              | refs."definitions.NonEmptyString"
              | String
              | doc "The friendly name of the account of the requester transit gateway",
            region
              | refs."definitions.Region"
              | String
              | doc "The name of the region the accepter transit gateway resides in",
            routeTableAssociations
              | refs."definitions.NonEmptyString"
              | String
              | doc "The friendly name of TGW route table to associate with this peering attachment.",
            tags
              | Array (
                std.contract.Sequence [ refs."definitions.ITag", { _ | Dyn } ]
              )
              | doc "(OPTIONAL) An array of tag objects for the Transit Gateway Peering."
              | optional,
            transitGatewayName
              | refs."definitions.NonEmptyString"
              | String
              | doc "The friendly name of the requester transit gateway",
          },
      "definitions.ITransitGatewayRouteEntryConfig" =
        {
            attachment
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [
                      refs."definitions.ITransitGatewayRouteTableVpcEntryConfig",
                      { _ | Dyn }
                    ],
                  std.contract.Sequence
                    [
                      refs."definitions.ITransitGatewayRouteTableDxGatewayEntryConfig",
                      { _ | Dyn }
                    ],
                  std.contract.Sequence
                    [
                      refs."definitions.ITransitGatewayRouteTableVpnEntryConfig",
                      { _ | Dyn }
                    ],
                  std.contract.Sequence
                    [
                      refs."definitions.ITransitGatewayRouteTableTgwPeeringEntryConfig",
                      { _ | Dyn }
                    ]
                ]
              | doc m%"
                The target  {@link  https://docs.aws.amazon.com/vpc/latest/tgw/working-with-transit-gateways.html Transit Gateway attachment }  for the route table entry. Supported attachment types include:
                
                - VPC
                - Direct Connect Gateway
                - VPN
                - Transit Gateway Peering
              "%
              | optional,
            blackhole
              | Bool
              | doc "(OPTIONAL) Enable to create a blackhole for the destination CIDR. Leave undefined if specifying a VPC destination."
              | optional,
            destinationCidrBlock
              | refs."definitions.NonEmptyString"
              | String
              | doc "The destination IPv4/v6 CIDR block for the route table entry."
              | optional,
            destinationPrefixList
              | refs."definitions.NonEmptyString"
              | String
              | doc "The friendly name of a prefix list for the route table entry."
              | optional,
          },
      "definitions.ITransitGatewayRouteTableConfig" =
        {
            name
              | refs."definitions.NonEmptyString"
              | String
              | doc "A friendly name for the Transit Gateway route table.",
            routes
              | Array (
                std.contract.Sequence
                  [
                    refs."definitions.ITransitGatewayRouteEntryConfig",
                    { _ | Dyn }
                  ]
              )
              | doc "An array of Transit Gateway route entry configuration objects.",
            tags
              | Array (
                std.contract.Sequence [ refs."definitions.ITag", { _ | Dyn } ]
              )
              | doc "(OPTIONAL) An array of tag objects for the Transit Gateway route table."
              | optional,
          },
      "definitions.ITransitGatewayRouteTableDxGatewayEntryConfig" =
        {
            directConnectGatewayName
              | refs."definitions.NonEmptyString"
              | String
              | doc "The name of the Direct Connect Gateway",
          },
      "definitions.ITransitGatewayRouteTableTgwPeeringEntryConfig" =
        {
            transitGatewayPeeringName
              | refs."definitions.NonEmptyString"
              | String
              | doc "The name of the Transit Gateway peering connection",
          },
      "definitions.ITransitGatewayRouteTableVpcEntryConfig" =
        {
            account
              | refs."definitions.NonEmptyString"
              | String
              | doc "The friendly name of the account where the VPC resides.",
            vpcName
              | refs."definitions.NonEmptyString"
              | String
              | doc "The friendly name of the VPC.",
          },
      "definitions.ITransitGatewayRouteTableVpnEntryConfig" =
        {
            vpnConnectionName
              | refs."definitions.NonEmptyString"
              | String
              | doc "The name of the VPN connection",
          },
      "definitions.ITransition" =
        {
            storageClass | refs."definitions.StorageClass" | String,
            transitionAfter | Number,
          },
      "definitions.IVirtualPrivateGatewayConfig" =
        {
            asn
              | Number
              | doc "Define the ASN (Amazon Side) used for the Virtual Private Gateway",
          },
      "definitions.IVpcConfig" =
        {
            account
              | refs."definitions.NonEmptyString"
              | String
              | doc "The logical name of the account to deploy the VPC to",
            cidrs
              | Array (
                std.contract.Sequence
                  [ refs."definitions.NonEmptyString", String ]
              )
              | doc "(OPTIONAL) A list of IPv4 CIDRs to associate with the VPC."
              | optional,
            defaultSecurityGroupRulesDeletion
              | Bool
              | doc "(OPTIONAL) Determine if the all traffic ingress and egress rules are deleted in the default security group of a VPC."
              | optional,
            dhcpOptions
              | refs."definitions.NonEmptyString"
              | String
              | doc "(OPTIONAL) The friendly name of a custom DHCP options set."
              | optional,
            dnsFirewallRuleGroups
              | Array (
                std.contract.Sequence
                  [
                    refs."definitions.IVpcDnsFirewallAssociationConfig",
                    { _ | Dyn }
                  ]
              )
              | doc "(OPTIONAL) An array of DNS firewall VPC association configurations. Use this property to associate Route 53 resolver DNS firewall rule groups with the VPC."
              | optional,
            egressOnlyIgw
              | Bool
              | doc "(OPTIONAL) Create an  {@link  https://docs.aws.amazon.com/vpc/latest/userguide/egress-only-internet-gateway.html Egress-only internet gateway (EIGW) }  for the VPC"
              | optional,
            enableDnsHostnames
              | Bool
              | doc "Enable DNS hostname support for the VPC."
              | optional,
            enableDnsSupport
              | Bool
              | doc "Enable DNS support for the VPC."
              | optional,
            gatewayEndpoints
              | refs."definitions.IGatewayEndpointConfig"
              | { _ | Dyn }
              | doc "(OPTIONAL) An array of gateway endpoints for the VPC. Use this property to define S3 or DynamoDB gateway endpoints for the VPC."
              | optional,
            instanceTenancy
              | refs."definitions.InstanceTenancyType"
              | String
              | doc "(OPTIONAL) Define instance tenancy for the VPC. The default value is `default`."
              | optional,
            interfaceEndpoints
              | refs."definitions.IInterfaceEndpointConfig"
              | { _ | Dyn }
              | doc "(OPTIONAL) A list of VPC interface endpoints. Use this property to define VPC interface endpoints for the VPC."
              | optional,
            internetGateway
              | Bool
              | doc "Defines if an  {@link  https://docs.aws.amazon.com/vpc/latest/userguide/VPC_Internet_Gateway.html internet gateway }  should be added to the VPC"
              | optional,
            ipamAllocations
              | Array (
                std.contract.Sequence
                  [ refs."definitions.IIpamAllocationConfig", { _ | Dyn } ]
              )
              | doc "(OPTIONAL) An array of IPAM allocation configurations."
              | optional,
            ipv6Cidrs
              | Array (
                std.contract.Sequence
                  [ refs."definitions.IVpcIpv6Config", { _ | Dyn } ]
              )
              | doc "(OPTIONAL) An array of IPv6 CIDR block configurations."
              | optional,
            loadBalancers
              | refs."definitions.ILoadBalancersConfig"
              | { _ | Dyn }
              | doc "Elastic Load Balancing configuration. Use this property to define Elastic Load Balancers for this VPC."
              | optional,
            name
              | refs."definitions.NonEmptyString"
              | String
              | doc m%"
                The friendly name of the VPC.
                
                The value of this property will be utilized as the logical id for this resource. Any references to this object should specify this value.
              "%,
            natGateways
              | Array (
                std.contract.Sequence
                  [ refs."definitions.INatGatewayConfig", { _ | Dyn } ]
              )
              | doc "(OPTIONAL) An array of NAT gateway configurations for the VPC. Use this property to configure the NAT gateways for the VPC."
              | optional,
            networkAcls
              | Array (
                std.contract.Sequence
                  [ refs."definitions.INetworkAclConfig", { _ | Dyn } ]
              )
              | doc "(OPTIONAL) A list of Network Access Control Lists (ACLs) to deploy for this VPC"
              | optional,
            outposts
              | Array (
                std.contract.Sequence
                  [ refs."definitions.IOutpostsConfig", { _ | Dyn } ]
              )
              | doc "(OPTIONAL) An array of Local Gateway Route table configurations. Use this configuration to associate Outposts Local Gateway Route tables with the VPC."
              | optional,
            queryLogs
              | Array (
                std.contract.Sequence
                  [ refs."definitions.NonEmptyString", String ]
              )
              | doc "(OPTIONAL) A list of DNS query log configuration names."
              | optional,
            region
              | refs."definitions.Region"
              | String
              | doc "The AWS region to deploy the VPC to",
            resolverRules
              | Array (
                std.contract.Sequence
                  [ refs."definitions.NonEmptyString", String ]
              )
              | doc "(OPTIONAL) A list of Route 53 resolver rule names."
              | optional,
            routeTables
              | Array (
                std.contract.Sequence
                  [ refs."definitions.IRouteTableConfig", { _ | Dyn } ]
              )
              | doc "(OPTIONAL) An array of route table configurations for the VPC. Use this property to configure the route tables for the VPC."
              | optional,
            securityGroups
              | Array (
                std.contract.Sequence
                  [ refs."definitions.ISecurityGroupConfig", { _ | Dyn } ]
              )
              | doc "(OPTIONAL) A list of Security Groups to deploy for this VPC"
              | optional,
            subnets
              | Array (
                std.contract.Sequence
                  [ refs."definitions.ISubnetConfig", { _ | Dyn } ]
              )
              | doc "(OPTIONAL) An array of subnet configurations for the VPC. Use this property to configure the subnets for the VPC."
              | optional,
            tags
              | Array (
                std.contract.Sequence [ refs."definitions.ITag", { _ | Dyn } ]
              )
              | doc "(OPTIONAL) A list of tags to apply to this VPC"
              | optional,
            targetGroups
              | Array (
                std.contract.Sequence
                  [ refs."definitions.ITargetGroupItem", { _ | Dyn } ]
              )
              | doc "Target group configuration. Use this property to define target groups for this VPC."
              | optional,
            transitGatewayAttachments
              | Array (
                std.contract.Sequence
                  [
                    refs."definitions.ITransitGatewayAttachmentConfig",
                    { _ | Dyn }
                  ]
              )
              | doc "(OPTIONAL) An array of Transit Gateway attachment configurations. Use this property to configure the Transit Gateway attachments for the VPC."
              | optional,
            useCentralEndpoints
              | Bool
              | doc "(OPTIONAL) When set to true, this VPC will be configured to utilize centralized endpoints. This includes having the Route 53 Private Hosted Zone associated with this VPC. Centralized endpoints are configured per region, and can span to spoke accounts"
              | optional,
            virtualPrivateGateway
              | refs."definitions.IVirtualPrivateGatewayConfig"
              | { _ | Dyn }
              | doc "(OPTIONAL) Virtual Private Gateway configuration. Use this property to configure a Virtual Private Gateway for the VPC."
              | optional,
            vpcFlowLogs
              | refs."definitions.IVpcFlowLogsConfig"
              | { _ | Dyn }
              | doc "VPC flog log configuration. Use this property to define a VPC-specific VPC flow logs configuration."
              | optional,
            vpcRoute53Resolver
              | refs."definitions.IResolverConfig"
              | { _ | Dyn }
              | doc "A Route 53 resolver configuration local to the VPC."
              | optional,
          },
      "definitions.IVpcDnsFirewallAssociationConfig" =
        {
            mutationProtection
              | refs."definitions.MutationProtectionType"
              | String
              | optional,
            name | refs."definitions.NonEmptyString" | String,
            "priority" | Number,
            tags
              | Array (
                std.contract.Sequence [ refs."definitions.ITag", { _ | Dyn } ]
              )
              | optional,
          },
      "definitions.IVpcFlowLogsCloudWatchLogsConfig" =
        {
            kms | refs."definitions.NonEmptyString" | String | optional,
            retentionInDays | Number | optional,
          },
      "definitions.IVpcFlowLogsConfig" =
        {
            customFields
              | Array (
                std.contract.Sequence
                  [ refs."definitions.NonEmptyString", String ]
              ),
            defaultFormat | Bool,
            destinations
              | Array (
                std.contract.Sequence
                  [ refs."definitions.LogDestinationType", String ]
              ),
            destinationsConfig
              | refs."definitions.IVpcFlowLogsDestinationConfig"
              | { _ | Dyn }
              | optional,
            maxAggregationInterval | Number,
            trafficType | refs."definitions.TrafficType" | String,
          },
      "definitions.IVpcFlowLogsDestinationConfig" =
        {
            cloudWatchLogs
              | refs."definitions.IVpcFlowLogsCloudWatchLogsConfig"
              | { _ | Dyn }
              | optional,
            s3
              | refs."definitions.IVpcFlowLogsS3BucketConfig"
              | { _ | Dyn }
              | optional,
          },
      "definitions.IVpcFlowLogsS3BucketConfig" =
        {
            lifecycleRules
              | Array (
                std.contract.Sequence
                  [ refs."definitions.ILifecycleRule", { _ | Dyn } ]
              )
              | optional,
            overrideS3LogPath
              | refs."definitions.NonEmptyString"
              | String
              | optional,
          },
      "definitions.IVpcIpv6Config" =
        {
            amazonProvided
              | Bool
              | doc "(OPTIONAL) Indicates whether Amazon automatically provisions a /56 IPv6 CIDR block for the VPC."
              | optional,
            byoipPoolId
              | refs."definitions.NonEmptyString"
              | String
              | doc "(OPTIONAL) Used to define the Bring-Your-Own-IP (BYOIP) address pool ID to use for the IPv6 CIDR block."
              | optional,
            cidrBlock
              | refs."definitions.NonEmptyString"
              | String
              | doc "(OPTIONAL) Associate an IPv6 CIDR block with your VPC."
              | optional,
          },
      "definitions.IVpcPeeringConfig" =
        {
            name
              | refs."definitions.NonEmptyString"
              | String
              | doc "A friendly name for the peering connection.",
            tags
              | Array (
                std.contract.Sequence [ refs."definitions.ITag", { _ | Dyn } ]
              )
              | doc "An array of tags for the peering connection."
              | optional,
            vpcs
              | Array (
                std.contract.Sequence
                  [ refs."definitions.NonEmptyString", String ]
              )
              | doc m%"
                The VPCs to peer.
                
                VPC can be from vpc or vpcTemplates configuration.
              "%,
          },
      "definitions.IVpcTemplatesConfig" =
        {
            cidrs
              | Array (
                std.contract.Sequence
                  [ refs."definitions.NonEmptyString", String ]
              )
              | doc "(OPTIONAL) A list of IPv4 CIDRs to associate with the VPC."
              | optional,
            defaultSecurityGroupRulesDeletion
              | Bool
              | doc "(OPTIONAL) Determine if the all traffic ingress and egress rules are deleted in the default security group of a VPC."
              | optional,
            deploymentTargets
              | refs."definitions.IDeploymentTargets"
              | { _ | Dyn }
              | doc "VPC deployment targets.",
            dhcpOptions
              | refs."definitions.NonEmptyString"
              | String
              | doc "(OPTIONAL) The friendly name of a custom DHCP options set."
              | optional,
            dnsFirewallRuleGroups
              | Array (
                std.contract.Sequence
                  [
                    refs."definitions.IVpcDnsFirewallAssociationConfig",
                    { _ | Dyn }
                  ]
              )
              | doc "(OPTIONAL) An array of DNS firewall VPC association configurations. Use this property to associate Route 53 resolver DNS firewall rule groups with the VPC."
              | optional,
            egressOnlyIgw
              | Bool
              | doc "(OPTIONAL) Create an  {@link  https://docs.aws.amazon.com/vpc/latest/userguide/egress-only-internet-gateway.html Egress-only internet gateway (EIGW) }  for the VPC"
              | optional,
            enableDnsHostnames
              | Bool
              | doc "Enable DNS hostname support for the VPC."
              | optional,
            enableDnsSupport
              | Bool
              | doc "Enable DNS support for the VPC."
              | optional,
            gatewayEndpoints
              | refs."definitions.IGatewayEndpointConfig"
              | { _ | Dyn }
              | doc "(OPTIONAL) An array of gateway endpoints for the VPC. Use this property to define S3 or DynamoDB gateway endpoints for the VPC."
              | optional,
            instanceTenancy
              | refs."definitions.InstanceTenancyType"
              | String
              | doc "(OPTIONAL) Define instance tenancy for the VPC. The default value is `default`."
              | optional,
            interfaceEndpoints
              | refs."definitions.IInterfaceEndpointConfig"
              | { _ | Dyn }
              | doc "(OPTIONAL) A list of VPC interface endpoints. Use this property to define VPC interface endpoints for the VPC."
              | optional,
            internetGateway
              | Bool
              | doc "Defines if an  {@link  https://docs.aws.amazon.com/vpc/latest/userguide/VPC_Internet_Gateway.html internet gateway }  should be added to the VPC"
              | optional,
            ipamAllocations
              | Array (
                std.contract.Sequence
                  [ refs."definitions.IIpamAllocationConfig", { _ | Dyn } ]
              )
              | doc "(OPTIONAL) An array of IPAM allocation configurations."
              | optional,
            ipv6Cidrs
              | Array (
                std.contract.Sequence
                  [ refs."definitions.IVpcIpv6Config", { _ | Dyn } ]
              )
              | doc "(OPTIONAL) An array of IPv6 CIDR block configurations."
              | optional,
            loadBalancers
              | refs."definitions.ILoadBalancersConfig"
              | { _ | Dyn }
              | doc "Elastic Load Balancing configuration. Use this property to define Elastic Load Balancers for this VPC."
              | optional,
            name
              | refs."definitions.NonEmptyString"
              | String
              | doc m%"
                The friendly name of the VPC.
                
                The value of this property will be utilized as the logical id for this resource. Any references to this object should specify this value.
              "%,
            natGateways
              | Array (
                std.contract.Sequence
                  [ refs."definitions.INatGatewayConfig", { _ | Dyn } ]
              )
              | doc "(OPTIONAL) An array of NAT gateway configurations for the VPC. Use this property to configure the NAT gateways for the VPC."
              | optional,
            networkAcls
              | Array (
                std.contract.Sequence
                  [ refs."definitions.INetworkAclConfig", { _ | Dyn } ]
              )
              | doc "(OPTIONAL) A list of Network Access Control Lists (ACLs) to deploy for this VPC"
              | optional,
            queryLogs
              | Array (
                std.contract.Sequence
                  [ refs."definitions.NonEmptyString", String ]
              )
              | doc "(OPTIONAL) A list of DNS query log configuration names."
              | optional,
            region
              | refs."definitions.Region"
              | String
              | doc "The AWS region to deploy the VPCs to",
            resolverRules
              | Array (
                std.contract.Sequence
                  [ refs."definitions.NonEmptyString", String ]
              )
              | doc "(OPTIONAL) A list of Route 53 resolver rule names."
              | optional,
            routeTables
              | Array (
                std.contract.Sequence
                  [ refs."definitions.IRouteTableConfig", { _ | Dyn } ]
              )
              | doc "(OPTIONAL) An array of route table configurations for the VPC. Use this property to configure the route tables for the VPC."
              | optional,
            securityGroups
              | Array (
                std.contract.Sequence
                  [ refs."definitions.ISecurityGroupConfig", { _ | Dyn } ]
              )
              | doc "(OPTIONAL) A list of Security Groups to deploy for this VPC"
              | optional,
            subnets
              | Array (
                std.contract.Sequence
                  [ refs."definitions.ISubnetConfig", { _ | Dyn } ]
              )
              | doc "(OPTIONAL) An array of subnet configurations for the VPC. Use this property to configure the subnets for the VPC."
              | optional,
            tags
              | Array (
                std.contract.Sequence [ refs."definitions.ITag", { _ | Dyn } ]
              )
              | doc "(OPTIONAL) A list of tags to apply to this VPC"
              | optional,
            targetGroups
              | Array (
                std.contract.Sequence
                  [ refs."definitions.ITargetGroupItem", { _ | Dyn } ]
              )
              | doc "Target group configuration. Use this property to define target groups for this VPC."
              | optional,
            transitGatewayAttachments
              | Array (
                std.contract.Sequence
                  [
                    refs."definitions.ITransitGatewayAttachmentConfig",
                    { _ | Dyn }
                  ]
              )
              | doc "(OPTIONAL) An array of Transit Gateway attachment configurations. Use this property to configure the Transit Gateway attachments for the VPC."
              | optional,
            useCentralEndpoints
              | Bool
              | doc "(OPTIONAL) When set to true, this VPC will be configured to utilize centralized endpoints. This includes having the Route 53 Private Hosted Zone associated with this VPC. Centralized endpoints are configured per region, and can span to spoke accounts"
              | optional,
            virtualPrivateGateway
              | refs."definitions.IVirtualPrivateGatewayConfig"
              | { _ | Dyn }
              | doc "(OPTIONAL) Virtual Private Gateway configuration. Use this property to configure a Virtual Private Gateway for the VPC."
              | optional,
            vpcFlowLogs
              | refs."definitions.IVpcFlowLogsConfig"
              | { _ | Dyn }
              | doc "VPC flog log configuration. Use this property to define a VPC-specific VPC flow logs configuration."
              | optional,
          },
      "definitions.IVpnConnectionConfig" =
        {
            amazonIpv4NetworkCidr
              | refs."definitions.NonEmptyString"
              | String
              | doc m%"
                (OPTIONAL) The Amazon-side IPv4 CIDR range that is allowed through the site-to-site VPN tunnel. Configuring this option restricts the Amazon-side CIDR range that can communicate with your local network.
                
                Default - `0.0.0.0/0`
              "%
              | optional,
            customerIpv4NetworkCidr
              | refs."definitions.NonEmptyString"
              | String
              | doc m%"
                (OPTIONAL) The customer-side IPv4 CIDR range that is allowed through the site-to-site VPN tunnel. Configuring this option restricts the local CIDR range that can communicate with your AWS environment.
                
                Default - `0.0.0.0/0`
              "%
              | optional,
            enableVpnAcceleration
              | Bool
              | doc "(OPTIONAL) Enable Site-to-Site VPN Acceleration. For more information, see  {@link  https://docs.aws.amazon.com/vpn/latest/s2svpn/accelerated-vpn.html Accelerated Site-to-Site VPN connections } ."
              | optional,
            name
              | refs."definitions.NonEmptyString"
              | String
              | doc m%"
                The name of the VPN Connection.
                
                The value of this property will be utilized as the logical id for this resource. Any references to this object should specify this value.
              "%,
            routeTableAssociations
              | Array (
                std.contract.Sequence
                  [ refs."definitions.NonEmptyString", String ]
              )
              | doc "(OPTIONAL) An array of Transit Gateway route table names to associate the VPN attachment to"
              | optional,
            routeTablePropagations
              | Array (
                std.contract.Sequence
                  [ refs."definitions.NonEmptyString", String ]
              )
              | doc "(OPTIONAL) An array of Transit Gateway route table names to propagate the VPN attachment to"
              | optional,
            staticRoutesOnly
              | Bool
              | doc "(OPTIONAL) If creating a VPN connection for a device that doesn't support Border Gateway Protocol (BGP) declare true as a value, otherwise, use false."
              | optional,
            tags
              | Array (
                std.contract.Sequence [ refs."definitions.ITag", { _ | Dyn } ]
              )
              | doc "(OPTIONAL) An array of tags for the VPN Connection."
              | optional,
            transitGateway
              | refs."definitions.NonEmptyString"
              | String
              | doc "The logical name of the Transit Gateway that the customer Gateway is attached to so that a VPN connection is established."
              | optional,
            tunnelSpecifications
              | Array (
                std.contract.Sequence
                  [
                    refs."definitions.IVpnTunnelOptionsSpecificationsConfig",
                    { _ | Dyn }
                  ]
              )
              | doc "(OPTIONAL) Define the optional VPN Tunnel configuration"
              | optional,
            vpc
              | refs."definitions.NonEmptyString"
              | String
              | doc "The logical name of the Virtual Private Cloud that a Virtual Private Gateway is attached to."
              | optional,
          },
      "definitions.IVpnLoggingConfig" =
        {
            enable
              | Bool
              | doc "(OPTIONAL) Enable site-to-site VPN tunnel logging to CloudWatch Logs."
              | optional,
            logGroupName
              | refs."definitions.NonEmptyString"
              | String
              | doc m%"
                (OPTIONAL) The name of the CloudWatch Logs log group that you would like tunnel logs to be sent to.
                
                Default - Randomly generated name based on CDK stack and VPN resource name.
              "%
              | optional,
            outputFormat
              | refs."definitions.VpnLoggingOutputFormatType"
              | String
              | doc m%"
                (OPTIONAL) The output format of the VPN tunnel logs.
                
                Default - `json`
              "%
              | optional,
          },
      "definitions.IVpnTunnelOptionsSpecificationsConfig" =
        {
            dpdTimeoutAction
              | refs."definitions.DpdTimeoutActionType"
              | String
              | doc m%"
                (OPTIONAL) Dead Peer Detection (DPD) timeout action. You can specify the action to take after DPD timeout occurs.
                
                Default - `clear`
              "%
              | optional,
            dpdTimeoutSeconds
              | Number
              | doc m%"
                (OPTIONAL) The duration, in seconds, after which Dead Peer Detection (DPD) timeout occurs.
                
                Default - `30`
              "%
              | optional,
            ikeVersions
              | Array (
                std.contract.Sequence
                  [ refs."definitions.IkeVersionType", Number ]
              )
              | doc m%"
                (OPTIONAL) The Internet Key Exchange (IKE) versions that are permitted on the tunnel.
                
                Default - `ikev1`,`ikev2`
              "%
              | optional,
            logging
              | refs."definitions.IVpnLoggingConfig"
              | { _ | Dyn }
              | doc "(OPTIONAL) Site-to-Site VPN CloudWatch logging configuration."
              | optional,
            phase1
              | refs."definitions.IPhase1Config"
              | { _ | Dyn }
              | doc "(OPTIONAL) Internet Key Exchange (IKE) phase 1 configuration."
              | optional,
            phase2
              | refs."definitions.IPhase2Config"
              | { _ | Dyn }
              | doc "(OPTIONAL) Internet Key Exchange (IKE) phase 2 configuration."
              | optional,
            preSharedKey
              | refs."definitions.NonEmptyString"
              | String
              | doc "(OPTIONAL): The Secrets Manager name that stores the pre-shared key (PSK), that exists in the same account and region that the VPN Connection will be created in."
              | optional,
            rekeyFuzzPercentage
              | Number
              | doc m%"
                (OPTIONAL) The percentage of the rekey window (determined by the rekey margin time) within which the rekey time is randomly selected.
                
                Default - `100`
              "%
              | optional,
            rekeyMarginTimeSeconds
              | Number
              | doc m%"
                (OPTIONAL) The margin time in seconds before the phase 1 and phase 2 lifetime expires, during which the AWS side of the VPN connection performs an IKE rekey.
                
                Default - `270` (4.5 minutes)
              "%
              | optional,
            replayWindowSize
              | Number
              | doc m%"
                (OPTIONAL) The number of packets in an IKE replay window.
                
                Default - `1024`
              "%
              | optional,
            startupAction
              | refs."definitions.StartupActionType"
              | String
              | doc m%"
                (OPTIONAL) The action to take when the establishing the tunnel for the VPN connection. By default, your customer gateway device must initiate the IKE negotiation and bring up the tunnel. Specify `start` for Amazon Web Services to initiate the IKE negotiation.
                
                Default - `add`
              "%
              | optional,
            tunnelInsideCidr
              | refs."definitions.NonEmptyString"
              | String
              | doc "(OPTIONAL): The range of inside IP addresses for the tunnel. Any specified CIDR blocks must be unique across all VPN connections that use the same virtual private gateway."
              | optional,
            tunnelLifecycleControl
              | Bool
              | doc "(OPTIONAL) Enable tunnel endpoint lifecycle control. This feature provides control over the schedule of endpoint replacements. For more information, see  {@link  https://docs.aws.amazon.com/vpn/latest/s2svpn/tunnel-endpoint-lifecycle.html Tunnel Endpoint Lifecycle Control } ."
              | optional,
          },
      "definitions.IkeVersionType" = js2n.Enum [ 1, 2 ],
      "definitions.InstanceTenancyType" =
        std.contract.Sequence
            [ std.enum.TagOrString, [| 'dedicated, '"default" |] ],
      "definitions.IntegrityAlgorithmType" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [| 'SHA2-512, 'SHA2-384, 'SHA2-256, 'SHA1 |]
            ],
      "definitions.IpAddressFamilyType" =
        std.contract.Sequence [ std.enum.TagOrString, [| 'IPv6, 'IPv4 |] ],
      "definitions.IpVersionType" =
        std.contract.Sequence [ std.enum.TagOrString, [| 'ipv6, 'ipv4 |] ],
      "definitions.LoadBalancerSchemeEnum" =
        std.contract.Sequence
            [ std.enum.TagOrString, [| 'internal, 'internet-facing |] ],
      "definitions.LogDestinationType" =
        std.contract.Sequence
            [ std.enum.TagOrString, [| 'cloud-watch-logs, 's3 |] ],
      "definitions.MutationProtectionType" =
        std.contract.Sequence
            [ std.enum.TagOrString, [| 'DISABLED, 'ENABLED |] ],
      "definitions.NetbiosNodeType" = js2n.Enum [ 1, 2, 4, 8 ],
      "definitions.NfwGeneratedRulesType" =
        std.contract.Sequence
            [ std.enum.TagOrString, [| 'DENYLIST, 'ALLOWLIST |] ],
      "definitions.NfwLogType" =
        std.contract.Sequence [ std.enum.TagOrString, [| 'FLOW, 'ALERT |] ],
      "definitions.NfwRuleType" =
        std.contract.Sequence
            [ std.enum.TagOrString, [| 'STATELESS, 'STATEFUL |] ],
      "definitions.NfwStatefulDefaultActionType" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [|
                '"aws:alert_established",
                '"aws:alert_strict",
                '"aws:drop_established",
                '"aws:drop_strict"
              |]
            ],
      "definitions.NfwStatefulRuleActionType" =
        std.contract.Sequence
            [ std.enum.TagOrString, [| 'PASS, 'DROP, 'ALERT |] ],
      "definitions.NfwStatefulRuleDirectionType" =
        std.contract.Sequence [ std.enum.TagOrString, [| 'FORWARD, 'ANY |] ],
      "definitions.NfwStatefulRuleOptionsType" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [| 'STRICT_ORDER, 'DEFAULT_ACTION_ORDER |]
            ],
      "definitions.NfwStatefulRuleProtocolType" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [|
                'UDP,
                'TLS,
                'TFTP,
                'TCP,
                'SSH,
                'SMTP,
                'SMB,
                'NTP,
                'MSN,
                'KRB5,
                'IP,
                'IMAP,
                'IKEV2,
                'ICMP,
                'HTTP,
                'FTP,
                'DNS,
                'DHCP,
                'DCERPC
              |]
            ],
      "definitions.NfwStatelessRuleActionType" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [| '"aws:forward_to_sfe", '"aws:drop", '"aws:pass" |]
            ],
      "definitions.NfwStatelessRuleTcpFlagType" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [| 'CWR, 'ECE, 'URG, 'ACK, 'PSH, 'RST, 'SYN, 'FIN |]
            ],
      "definitions.NfwTargetType" =
        std.contract.Sequence
            [ std.enum.TagOrString, [| 'HTTP_HOST, 'TLS_SNI |] ],
      "definitions.NlbProtocolEnum" =
        std.contract.Sequence
            [ std.enum.TagOrString, [| 'TCP_UDP, 'TLS, 'UDP, 'TCP |] ],
      "definitions.NonEmptyString" = js2n.string.MinLength 1,
      "definitions.Phase1DhGroupType" =
        js2n.Enum [ 2, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24 ],
      "definitions.Phase2DhGroupType" =
        js2n.Enum [ 2, 5, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24 ],
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
      "definitions.ResolverEndpointType" =
        std.contract.Sequence
            [ std.enum.TagOrString, [| 'OUTBOUND, 'INBOUND |] ],
      "definitions.RouteTableEntryType" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [|
                'vpcPeering,
                'virtualPrivateGateway,
                'networkInterface,
                'networkFirewall,
                'gatewayLoadBalancerEndpoint,
                'gatewayEndpoint,
                'localGateway,
                'local,
                'egressOnlyIgw,
                'internetGateway,
                'natGateway,
                'transitGateway
              |]
            ],
      "definitions.RoutingHttpXffHeaderProcessingModeEnum" =
        std.contract.Sequence
            [ std.enum.TagOrString, [| 'remove, 'preserve, 'append |] ],
      "definitions.RuleType" =
        std.contract.Sequence
            [ std.enum.TagOrString, [| 'SYSTEM, 'RECURSIVE, 'FORWARD |] ],
      "definitions.SecurityGroupRuleType" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [|
                'ALL,
                'ICMP,
                'UDP,
                'TCP,
                'ORACLE-RDS,
                'POSTGRESQL,
                'REDSHIFT,
                '"MYSQL/AURORA",
                'MSSQL,
                'HTTPS,
                'HTTP,
                'SSH,
                'RDP
              |]
            ],
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
      "definitions.StartupActionType" =
        std.contract.Sequence [ std.enum.TagOrString, [| 'start, 'add |] ],
      "definitions.StorageClass" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [|
                'ONEZONE_IA,
                'INTELLIGENT_TIERING,
                'STANDARD_IA,
                'GLACIER_IR,
                'GLACIER,
                'DEEP_ARCHIVE
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
      "definitions.TrafficType" =
        std.contract.Sequence
            [ std.enum.TagOrString, [| 'REJECT, 'ACCEPT, 'ALL |] ],
      "definitions.TransitGatewayConnectProtocol" = std.contract.Equal "gre",
      "definitions.VpnLoggingOutputFormatType" =
        std.contract.Sequence [ std.enum.TagOrString, [| 'text, 'json |] ],
    }
    in
  refs."definitions.INetworkConfig"