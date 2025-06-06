# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.allConditions" =
        {
            branch | refs."definitions.conditions" | optional,
            cron | refs."definitions.conditions" | optional,
            event | refs."definitions.conditions" | optional,
            instance | refs."definitions.conditions" | optional,
            paths | refs."definitions.conditions" | optional,
            ref | refs."definitions.conditions" | optional,
            repo | refs."definitions.conditions" | optional,
            status | refs."definitions.condition" | Array Dyn | optional,
            target | refs."definitions.conditions" | optional,
            ..
          },
      "definitions.commands" =
        Array (
            std.contract.Sequence [ refs."definitions.nonEmptyString", String ]
          ),
      "definitions.concurrency" = { limit | Number, .. },
      "definitions.condition" = Array String,
      "definitions.conditions" =
        std.contract.any_of
            [
              std.contract.Sequence [ refs."definitions.condition", Array Dyn ],
              js2n.record.Record
                {
                  additional = 'Some Dyn,
                  patterns = {},
                  properties =
                    {
                        include =
                          std.contract.Sequence
                              [ refs."definitions.condition", Array Dyn ],
                      },
                  required = {},
                },
              js2n.record.Record
                {
                  additional = 'Some Dyn,
                  patterns = {},
                  properties =
                    {
                        exclude =
                          std.contract.Sequence
                              [ refs."definitions.condition", Array Dyn ],
                      },
                  required = {},
                }
            ],
      "definitions.environment" =
        {
            _ | std.contract.any_of
              [
                String,
                Number,
                Bool,
                std.contract.Sequence [ refs."definitions.secret", { _ | Dyn } ]
              ]
          },
      "definitions.kind_pipeline" =
        {
            clone
              | {
                depth | std.number.Integer | optional,
                disable | std.contract.Equal true | optional,
                retries | std.number.Integer | optional,
                ..
              }
              | optional,
            depends_on
              | Array (
                std.contract.Sequence
                  [ refs."definitions.nonEmptyString", String ]
              )
              | optional,
            kind | std.contract.Equal "pipeline" | optional,
            name | refs."definitions.nonEmptyString" | String,
            platform | refs."definitions.platform" | { _ | Dyn } | optional,
            steps | Array Dyn,
            trigger | refs."definitions.allConditions" | { _ | Dyn } | optional,
            type
              | std.enum.TagOrString
              | [|
                'macstadium,
                'digitalocean,
                'exec,
                'ssh,
                'kubernetes,
                'docker
              |],
            workspace
              | { path | refs."definitions.nonEmptyString" | String, .. }
              | optional,
            ..
          },
      "definitions.kind_secret" =
        {
            data | String | optional,
            get
              | {
                name | refs."definitions.nonEmptyString" | String,
                path | refs."definitions.nonEmptyString" | String,
                ..
              }
              | optional,
            kind | std.contract.Equal "secret" | optional,
            name | refs."definitions.nonEmptyString" | String,
            ..
          },
      "definitions.kind_signature" =
        {
            hmac | js2n.string.MaxLength 64 | js2n.string.MinLength 40,
            kind | std.contract.Equal "signature" | optional,
            ..
          },
      "definitions.kind_template" =
        { data | { _ | Dyn } | optional, load | String, .. },
      "definitions.node" = { _ | String },
      "definitions.nonEmptyString" = js2n.string.MinLength 1,
      "definitions.pipeline_digitalocean" =
        {
            clone | js2n.Always | optional,
            depends_on | js2n.Always | optional,
            kind | js2n.Always | optional,
            name | js2n.Always | optional,
            platform | js2n.Always | optional,
            steps
              | std.contract.any_of
                [
                  js2n.Null,
                  Bool,
                  Number,
                  String,
                  { _ | Dyn },
                  Array (
                    std.contract.Sequence
                      [ refs."definitions.step_digitalocean", { _ | Dyn } ]
                  )
                ]
              | optional,
            token | refs."definitions.stringOrSecret",
            trigger | js2n.Always | optional,
            type | std.contract.Equal "digitalocean" | optional,
            workspace | js2n.Always | optional,
          },
      "definitions.pipeline_docker" =
        {
            clone | js2n.Always | optional,
            concurrency
              | refs."definitions.concurrency"
              | { _ | Dyn }
              | optional,
            depends_on | js2n.Always | optional,
            environment
              | refs."definitions.environment"
              | { _ | Dyn }
              | optional,
            image_pull_secrets | Array String | optional,
            kind | js2n.Always | optional,
            name | js2n.Always | optional,
            node | refs."definitions.node" | { _ | Dyn } | optional,
            platform | js2n.Always | optional,
            services | refs."definitions.services" | Array Dyn | optional,
            steps
              | std.contract.any_of
                [
                  js2n.Null,
                  Bool,
                  Number,
                  String,
                  { _ | Dyn },
                  Array (
                    std.contract.Sequence
                      [ refs."definitions.step_docker", { _ | Dyn } ]
                  )
                ]
              | optional,
            trigger | js2n.Always | optional,
            type | std.contract.Equal "docker" | optional,
            volumes | refs."definitions.volumes" | Array Dyn | optional,
            workspace | js2n.Always | optional,
          },
      "definitions.pipeline_exec" =
        {
            clone | js2n.Always | optional,
            depends_on | js2n.Always | optional,
            kind | js2n.Always | optional,
            name | js2n.Always | optional,
            node | refs."definitions.node" | { _ | Dyn } | optional,
            platform | js2n.Always | optional,
            steps
              | std.contract.any_of
                [
                  js2n.Null,
                  Bool,
                  Number,
                  String,
                  { _ | Dyn },
                  Array (
                    std.contract.Sequence
                      [ refs."definitions.step_exec", { _ | Dyn } ]
                  )
                ]
              | optional,
            trigger | js2n.Always | optional,
            type | std.contract.Equal "exec" | optional,
            workspace | js2n.Always | optional,
          },
      "definitions.pipeline_kubernetes" =
        {
            clone | js2n.Always | optional,
            depends_on | js2n.Always | optional,
            dns_config
              | {
                nameservers
                  | Array String
                  | doc "A list of DNS name server IP addresses. This will be appended to the base nameservers generated from DNSPolicy. Duplicated nameservers will be removed."
                  | optional,
                options
                  | Array
                    {
                      name | String | doc "Required." | optional,
                      value | String | optional,
                      ..
                    }
                  | doc "A list of DNS resolver options. This will be merged with the base options generated from DNSPolicy. Duplicated entries will be removed. Resolution options given in Options will override those that appear in the base DNSPolicy."
                  | optional,
                searches
                  | Array String
                  | doc "A list of DNS search domains for host-name lookup. This will be appended to the base search paths generated from DNSPolicy. Duplicated search paths will be removed."
                  | optional,
                ..
              }
              | doc "Specifies the DNS parameters of a pod. Parameters specified here will be merged to the generated DNS configuration based on DNSPolicy."
              | optional,
            host_aliases
              | Array
                {
                  hostnames
                    | Array String
                    | doc "Hostnames for the above IP address."
                    | optional,
                  ip
                    | String
                    | doc "IP address of the host file entry."
                    | optional,
                  ..
                }
              | doc "HostAliases is an optional list of hosts and IPs that will be injected into the pod's hosts file if specified. This is only valid for non-hostNetwork pods."
              | optional,
            image_pull_secrets | Array String | optional,
            kind | js2n.Always | optional,
            metadata
              | {
                annotations
                  | { _ | String }
                  | doc "Annotations is an unstructured key value map stored with a resource that may be set by external tools to store and retrieve arbitrary metadata. They are not queryable and should be preserved when modifying objects. More info: http://kubernetes.io/docs/user-guide/annotations"
                  | optional,
                clusterName
                  | String
                  | doc "The name of the cluster which the object belongs to. This is used to distinguish resources with same name and namespace in different clusters. This field is not set anywhere right now and apiserver is going to ignore it if set in create or update request."
                  | optional,
                creationTimestamp
                  | String
                  | doc m%"
                    CreationTimestamp is a timestamp representing the server time when this object was created. It is not guaranteed to be set in happens-before order across separate operations. Clients may not set this value. It is represented in RFC3339 form and is in UTC.
                    
                    Populated by the system. Read-only. Null for lists. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
                  "%
                  | optional,
                deletionGracePeriodSeconds
                  | std.number.Integer
                  | doc "Number of seconds allowed for this object to gracefully terminate before it will be removed from the system. Only set when deletionTimestamp is also set. May only be shortened. Read-only."
                  | optional,
                deletionTimestamp
                  | refs."definitions.pipeline_kubernetes.properties.metadata.properties.creationTimestamp"
                  | String
                  | doc m%"
                    DeletionTimestamp is RFC 3339 date and time at which this resource will be deleted. This field is set by the server when a graceful deletion is requested by the user, and is not directly settable by a client. The resource is expected to be deleted (no longer visible from resource lists, and not reachable by name) after the time in this field, once the finalizers list is empty. As long as the finalizers list contains items, deletion is blocked. Once the deletionTimestamp is set, this value may not be unset or be set further into the future, although it may be shortened or the resource may be deleted prior to this time. For example, a user may request that a pod is deleted in 30 seconds. The Kubelet will react by sending a graceful termination signal to the containers in the pod. After that 30 seconds, the Kubelet will send a hard termination signal (SIGKILL) to the container and after cleanup, remove the pod from the API. In the presence of network partitions, this object may still exist after this timestamp, until an administrator or automated process can determine the resource is fully terminated. If not set, graceful deletion of the object has not been requested.
                    
                    Populated by the system when a graceful deletion is requested. Read-only. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
                  "%
                  | optional,
                finalizers
                  | Array String
                  | doc "Must be empty before the object is deleted from the registry. Each entry is an identifier for the responsible component that will remove the entry from the list. If the deletionTimestamp of the object is non-nil, entries in this list can only be removed. Finalizers may be processed and removed in any order.  Order is NOT enforced because it introduces significant risk of stuck finalizers. finalizers is a shared field, any actor with permission can reorder it. If the finalizer list is processed in order, then this can lead to a situation in which the component responsible for the first finalizer in the list is waiting for a signal (field value, external system, or other) produced by a component responsible for a finalizer later in the list, resulting in a deadlock. Without enforced ordering finalizers are free to order amongst themselves and are not vulnerable to ordering changes in the list."
                  | optional,
                generateName
                  | String
                  | doc m%"
                    GenerateName is an optional prefix, used by the server, to generate a unique name ONLY IF the Name field has not been provided. If this field is used, the name returned to the client will be different than the name passed. This value will also be combined with a unique suffix. The provided value has the same validation rules as the Name field, and may be truncated by the length of the suffix required to make the value unique on the server.
                    
                    If this field is specified and the generated name exists, the server will NOT return a 409 - instead, it will either return 201 Created or 500 with Reason ServerTimeout indicating a unique name could not be found in the time allotted, and the client should retry (optionally after the time indicated in the Retry-After header).
                    
                    Applied only if Name is not specified. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#idempotency
                  "%
                  | optional,
                generation
                  | std.number.Integer
                  | doc "A sequence number representing a specific generation of the desired state. Populated by the system. Read-only."
                  | optional,
                labels
                  | { _ | String }
                  | doc "Map of string keys and values that can be used to organize and categorize (scope and select) objects. May match selectors of replication controllers and services. More info: http://kubernetes.io/docs/user-guide/labels"
                  | optional,
                managedFields
                  | Array
                    {
                      apiVersion
                        | String
                        | doc "APIVersion defines the version of this resource that this field set applies to. The format is \"group/version\" just like the top-level APIVersion field. It is necessary to track the version of a field set because it cannot be automatically converted."
                        | optional,
                      fieldsType
                        | String
                        | doc "FieldsType is the discriminator for the different fields format and version. There is currently only one possible value: \"FieldsV1\""
                        | optional,
                      fieldsV1
                        | { _ | Dyn }
                        | doc "FieldsV1 holds the first JSON version format as described in the \"FieldsV1\" type."
                        | optional,
                      manager
                        | String
                        | doc "Manager is an identifier of the workflow managing these fields."
                        | optional,
                      operation
                        | String
                        | doc "Operation is the type of operation which lead to this ManagedFieldsEntry being created. The only valid values for this field are 'Apply' and 'Update'."
                        | optional,
                      time
                        | refs."definitions.pipeline_kubernetes.properties.metadata.properties.creationTimestamp"
                        | String
                        | doc "Time is timestamp of when these fields were set. It should always be empty if Operation is 'Apply'"
                        | optional,
                      ..
                    }
                  | doc "ManagedFields maps workflow-id and version to the set of fields that are managed by that workflow. This is mostly for internal housekeeping, and users typically shouldn't need to set or understand this field. A workflow can be the user's name, a controller's name, or the name of a specific apply path like \"ci-cd\". The set of fields is always in the version that the workflow used when modifying the object."
                  | optional,
                name
                  | String
                  | doc "Name must be unique within a namespace. Is required when creating resources, although some resources may allow a client to request the generation of an appropriate name automatically. Name is primarily intended for creation idempotence and configuration definition. Cannot be updated. More info: http://kubernetes.io/docs/user-guide/identifiers#names"
                  | optional,
                namespace
                  | String
                  | doc m%"
                    Namespace defines the space within each name must be unique. An empty namespace is equivalent to the "default" namespace, but "default" is the canonical representation. Not all objects are required to be scoped to a namespace - the value of this field for those objects will be empty.
                    
                    Must be a DNS_LABEL. Cannot be updated. More info: http://kubernetes.io/docs/user-guide/namespaces
                  "%
                  | optional,
                ownerReferences
                  | Array
                    {
                      apiVersion | String | doc "API version of the referent.",
                      blockOwnerDeletion
                        | Bool
                        | doc "If true, AND if the owner has the \"foregroundDeletion\" finalizer, then the owner cannot be deleted from the key-value store until this reference is removed. Defaults to false. To set this field, a user needs \"delete\" permission of the owner, otherwise 422 (Unprocessable Entity) will be returned."
                        | optional,
                      controller
                        | Bool
                        | doc "If true, this reference points to the managing controller."
                        | optional,
                      kind
                        | String
                        | doc "Kind of the referent. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds",
                      name
                        | String
                        | doc "Name of the referent. More info: http://kubernetes.io/docs/user-guide/identifiers#names",
                      uid
                        | String
                        | doc "UID of the referent. More info: http://kubernetes.io/docs/user-guide/identifiers#uids",
                      ..
                    }
                  | doc "List of objects depended by this object. If ALL objects in the list have been deleted, this object will be garbage collected. If this object is managed by a controller, then an entry in this list will point to this controller, with the controller field set to true. There cannot be more than one managing controller."
                  | optional,
                resourceVersion
                  | String
                  | doc m%"
                    An opaque value that represents the internal version of this object that can be used by clients to determine when objects have changed. May be used for optimistic concurrency, change detection, and the watch operation on a resource or set of resources. Clients must treat these values as opaque and passed unmodified back to the server. They may only be valid for a particular resource or set of resources.
                    
                    Populated by the system. Read-only. Value must be treated as opaque by clients and . More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#concurrency-control-and-consistency
                  "%
                  | optional,
                selfLink
                  | String
                  | doc m%"
                    SelfLink is a URL representing this object. Populated by the system. Read-only.
                    
                    DEPRECATED Kubernetes will stop propagating this field in 1.20 release and the field is planned to be removed in 1.21 release.
                  "%
                  | optional,
                uid
                  | String
                  | doc m%"
                    UID is the unique in time and space value for this object. It is typically generated by the server on successful creation of a resource and is not allowed to change on PUT operations.
                    
                    Populated by the system. Read-only. More info: http://kubernetes.io/docs/user-guide/identifiers#uids
                  "%
                  | optional,
                ..
              }
              | doc "ObjectMeta is metadata that all persisted resources must have, which includes all objects users must create."
              | optional,
            name | js2n.Always | optional,
            node | refs."definitions.node" | { _ | Dyn } | optional,
            node_selector
              | std.contract.any_of
                [
                  js2n.Null,
                  Bool,
                  Number,
                  String,
                  { _ | Dyn },
                  Array
                    {
                      matchExpressions
                        | Array (
                          std.contract.Sequence
                            [
                              refs."definitions.pipeline_kubernetes.properties.node_selector.items.properties.matchFields.items",
                              { _ | Dyn }
                            ]
                        )
                        | doc "A list of node selector requirements by node's labels."
                        | optional,
                      matchFields
                        | Array
                          {
                            key
                              | String
                              | doc "The label key that the selector applies to.",
                            operator
                              | String
                              | doc "Represents a key's relationship to a set of values. Valid operators are In, NotIn, Exists, DoesNotExist. Gt, and Lt.",
                            values
                              | Array String
                              | doc "An array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. If the operator is Gt or Lt, the values array must have a single element, which will be interpreted as an integer. This array is replaced during a strategic merge patch."
                              | optional,
                            ..
                          }
                        | doc "A list of node selector requirements by node's fields."
                        | optional,
                      ..
                    }
                ]
              | doc "A list of node selector terms."
              | optional,
            platform | js2n.Always | optional,
            service_account_name
              | String
              | doc "The name of the service account to use when running the kubernetes pipeline"
              | optional,
            services | refs."definitions.services" | Array Dyn | optional,
            steps
              | std.contract.any_of
                [
                  js2n.Null,
                  Bool,
                  Number,
                  String,
                  { _ | Dyn },
                  Array (
                    std.contract.Sequence
                      [ refs."definitions.step_kubernetes", { _ | Dyn } ]
                  )
                ]
              | optional,
            tolerations
              | Array
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
                }
              | doc "If specified, the pod's tolerations."
              | optional,
            trigger | js2n.Always | optional,
            type | std.contract.Equal "kubernetes" | optional,
            volumes | refs."definitions.volumes" | Array Dyn | optional,
            workspace | js2n.Always | optional,
          },
      "definitions.pipeline_kubernetes.properties.metadata.properties.creationTimestamp" =
        String,
      "definitions.pipeline_kubernetes.properties.node_selector.items.properties.matchFields.items" =
        {
            key | String | doc "The label key that the selector applies to.",
            operator
              | String
              | doc "Represents a key's relationship to a set of values. Valid operators are In, NotIn, Exists, DoesNotExist. Gt, and Lt.",
            values
              | Array String
              | doc "An array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. If the operator is Gt or Lt, the values array must have a single element, which will be interpreted as an integer. This array is replaced during a strategic merge patch."
              | optional,
            ..
          },
      "definitions.pipeline_macstadium" =
        {
            clone | js2n.Always | optional,
            depends_on | js2n.Always | optional,
            kind | js2n.Always | optional,
            name | js2n.Always | optional,
            platform | js2n.Always | optional,
            steps
              | std.contract.any_of
                [
                  js2n.Null,
                  Bool,
                  Number,
                  String,
                  { _ | Dyn },
                  Array (
                    std.contract.Sequence
                      [ refs."definitions.step_macstadium", { _ | Dyn } ]
                  )
                ]
              | optional,
            trigger | js2n.Always | optional,
            type | std.contract.Equal "macstadium" | optional,
            workspace | js2n.Always | optional,
          },
      "definitions.pipeline_ssh" =
        {
            clone | js2n.Always | optional,
            depends_on | js2n.Always | optional,
            kind | js2n.Always | optional,
            name | js2n.Always | optional,
            platform | js2n.Always | optional,
            server
              | std.contract.any_of
                [
                  js2n.Null,
                  Bool,
                  Number,
                  String,
                  {
                    host | refs."definitions.stringOrSecret",
                    password | refs."definitions.stringOrSecret" | optional,
                    ssh_key | refs."definitions.stringOrSecret" | optional,
                    user | refs."definitions.stringOrSecret",
                    ..
                  },
                  Array Dyn
                ],
            steps
              | std.contract.any_of
                [
                  js2n.Null,
                  Bool,
                  Number,
                  String,
                  { _ | Dyn },
                  Array (
                    std.contract.Sequence
                      [ refs."definitions.step_ssh", { _ | Dyn } ]
                  )
                ]
              | optional,
            trigger | js2n.Always | optional,
            type | std.contract.Equal "ssh" | optional,
            workspace | js2n.Always | optional,
          },
      "definitions.platform" =
        {
            arch
              | std.enum.TagOrString
              | [| '"386", 'amd64, 'arm64, 'arm |]
              | optional,
            os
              | std.enum.TagOrString
              | [|
                'solaris,
                'dragonfly,
                'openbsd,
                'netbsd,
                'freebsd,
                'darwin,
                'windows,
                'linux
              |]
              | optional,
            variant | String | optional,
            version | String | optional,
            ..
          },
      "definitions.secret" = { from_secret | String, .. },
      "definitions.services" =
        Array
            {
              command | refs."definitions.commands" | Array Dyn | optional,
              entrypoint | refs."definitions.commands" | Array Dyn | optional,
              environment
                | refs."definitions.environment"
                | { _ | Dyn }
                | optional,
              image | refs."definitions.nonEmptyString" | String,
              name | refs."definitions.nonEmptyString" | String,
              privileged | Bool | optional,
              pull | std.contract.Equal "always" | optional,
              volumes | refs."definitions.volumes" | Array Dyn | optional,
              working_dir
                | refs."definitions.nonEmptyString"
                | String
                | optional,
              ..
            },
      "definitions.step" =
        {
            commands | refs."definitions.commands" | Array Dyn | optional,
            depends_on
              | Array (
                std.contract.Sequence
                  [ refs."definitions.nonEmptyString", String ]
              )
              | optional,
            detach | Bool | optional,
            environment
              | refs."definitions.environment"
              | { _ | Dyn }
              | optional,
            failure | std.enum.TagOrString | [| 'ignore, 'always |] | optional,
            name | refs."definitions.nonEmptyString" | String,
            when | refs."definitions.allConditions" | { _ | Dyn } | optional,
            ..
          },
      "definitions.step_digitalocean" =
        std.contract.Sequence
            [
              refs."definitions.step",
              {
                commands | js2n.Always | optional,
                depends_on | js2n.Always | optional,
                environment | js2n.Always | optional,
                failure | js2n.Always | optional,
                name | js2n.Always | optional,
                when | js2n.Always | optional,
              }
            ],
      "definitions.step_docker" =
        std.contract.Sequence
            [
              refs."definitions.step",
              {
                commands | js2n.Always | optional,
                depends_on | js2n.Always | optional,
                detach | Bool | optional,
                environment | js2n.Always | optional,
                failure | js2n.Always | optional,
                image | refs."definitions.nonEmptyString" | String,
                name | js2n.Always | optional,
                network_mode
                  | std.enum.TagOrString
                  | [| 'host, 'bridge |]
                  | optional,
                privileged | Bool | optional,
                pull
                  | std.enum.TagOrString
                  | [| 'if-not-exists, 'never, 'always |]
                  | optional,
                settings | { _ | Dyn } | optional,
                user | js2n.Always | optional,
                volumes
                  | refs."definitions.steps_volumes"
                  | Array Dyn
                  | optional,
                when | js2n.Always | optional,
              }
            ],
      "definitions.step_exec" =
        std.contract.Sequence
            [
              refs."definitions.step",
              {
                commands | js2n.Always | optional,
                depends_on | js2n.Always | optional,
                environment | js2n.Always | optional,
                failure | js2n.Always | optional,
                name | js2n.Always | optional,
                when | js2n.Always | optional,
              }
            ],
      "definitions.step_kubernetes" =
        std.contract.Sequence
            [
              refs."definitions.step",
              {
                commands | js2n.Always | optional,
                depends_on | js2n.Always | optional,
                environment | js2n.Always | optional,
                failure | js2n.Always | optional,
                image | refs."definitions.nonEmptyString" | String,
                name | js2n.Always | optional,
                privileged | Bool | optional,
                pull
                  | std.enum.TagOrString
                  | [| 'if-not-exists, 'never, 'always |]
                  | optional,
                resources
                  | {
                    limits
                      | { _ | std.contract.any_of [ Number, String ] }
                      | doc "Limits describes the maximum amount of compute resources allowed. More info: https://kubernetes.io/docs/concepts/configuration/manage-compute-resources-container/"
                      | optional,
                    requests
                      | {
                        _ | refs."definitions.step_kubernetes.allOf.1.properties.resources.properties.limits.additionalProperties"
                      }
                      | doc "Requests describes the minimum amount of compute resources required. If Requests is omitted for a container, it defaults to Limits if that is explicitly specified, otherwise to an implementation-defined value. More info: https://kubernetes.io/docs/concepts/configuration/manage-compute-resources-container/"
                      | optional,
                    ..
                  }
                  | doc "ResourceRequirements describes the compute resource requirements."
                  | optional,
                settings | { _ | Dyn } | optional,
                volumes
                  | refs."definitions.steps_volumes"
                  | Array Dyn
                  | optional,
                when | js2n.Always | optional,
              }
            ],
      "definitions.step_kubernetes.allOf.1.properties.resources.properties.limits.additionalProperties" =
        std.contract.any_of [ Number, String ],
      "definitions.step_macstadium" =
        std.contract.Sequence
            [
              refs."definitions.step",
              {
                commands | js2n.Always | optional,
                depends_on | js2n.Always | optional,
                environment | js2n.Always | optional,
                failure | js2n.Always | optional,
                name | js2n.Always | optional,
                when | js2n.Always | optional,
              }
            ],
      "definitions.step_ssh" =
        std.contract.Sequence
            [
              refs."definitions.step",
              {
                commands | js2n.Always | optional,
                depends_on | js2n.Always | optional,
                environment | js2n.Always | optional,
                failure | js2n.Always | optional,
                name | js2n.Always | optional,
                when | js2n.Always | optional,
              }
            ],
      "definitions.steps_volumes" =
        Array
            {
              name | refs."definitions.nonEmptyString" | String,
              path | refs."definitions.nonEmptyString" | String,
              ..
            },
      "definitions.stringOrSecret" =
        std.contract.any_of
            [
              std.contract.Sequence
                [ refs."definitions.nonEmptyString", String ],
              std.contract.Sequence [ refs."definitions.secret", { _ | Dyn } ]
            ],
      "definitions.volumes" =
        Array (
            std.contract.Sequence
              [
                js2n.OneOf
                  [
                    std.contract.any_of
                      [
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "host", "name" ],
                        Array Dyn
                      ],
                    std.contract.any_of
                      [
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "name", "path" ],
                        Array Dyn
                      ],
                    std.contract.any_of
                      [
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "name", "temp" ],
                        Array Dyn
                      ],
                    std.contract.any_of
                      [
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "claim", "name" ],
                        Array Dyn
                      ],
                    std.contract.any_of
                      [
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "config_map", "name" ],
                        Array Dyn
                      ]
                  ],
                {
                  claim
                    | {
                      name
                        | refs."definitions.nonEmptyString"
                        | String
                        | optional,
                      read_only | Bool | optional,
                      ..
                    }
                    | optional,
                  config_map
                    | {
                      default_mode | std.number.Integer | optional,
                      name
                        | refs."definitions.nonEmptyString"
                        | String
                        | optional,
                      "optional" | Bool | optional,
                      ..
                    }
                    | optional,
                  host
                    | {
                      path
                        | refs."definitions.nonEmptyString"
                        | String
                        | optional,
                      ..
                    }
                    | optional,
                  name | refs."definitions.nonEmptyString" | String | optional,
                  temp
                    | {
                      medium | std.enum.TagOrString | [| 'memory |] | optional,
                    }
                    | optional,
                  ..
                }
              ]
          ),
    }
    in
  std.contract.Sequence
      [
        js2n.OneOf
          [
            refs."definitions.kind_signature",
            refs."definitions.kind_secret",
            refs."definitions.kind_template",
            std.contract.Sequence
              [
                refs."definitions.kind_pipeline",
                js2n.OneOf
                  [
                    refs."definitions.pipeline_docker",
                    refs."definitions.pipeline_kubernetes",
                    refs."definitions.pipeline_exec",
                    refs."definitions.pipeline_ssh",
                    refs."definitions.pipeline_digitalocean",
                    refs."definitions.pipeline_macstadium"
                  ]
              ]
          ],
        {
          kind
            | std.enum.TagOrString
            | [| 'pipeline, 'template, 'secret, 'signature |],
          ..
        }
      ]