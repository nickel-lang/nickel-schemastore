# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.BuildSpec" =
        {
            buildEnvs
              | Array (
                std.contract.Sequence [ refs."definitions.Env", { _ | Dyn } ]
              )
              | doc "Build Env variables to be set"
              | optional,
            builder
              | std.enum.TagOrString
              | [| 's2i, 'pack |]
              | doc m%"
                Builder is the name of the subsystem that will complete the underlying
                build (pack, s2i, etc)
              "%
              | optional,
            builderImages
              | js2n.record.Record
                {
                  additional = 'Some Dyn,
                  patterns = { ".*" = String, },
                  properties = {},
                  required = {},
                }
              | doc m%"
                BuilderImages define optional explicit builder images to use by
                builder implementations in leau of the in-code defaults.  They key
                is the builder's short name.  For example:
                builderImages:
                  pack: example.com/user/my-pack-node-builder
                  s2i: example.com/user/my-s2i-node-builder
              "%
              | optional,
            buildpacks
              | Array String
              | doc "Optional list of buildpacks to use when building the function"
              | optional,
            git
              | refs."definitions.Git"
              | { _ | Dyn }
              | doc "Git stores information about an optionally associated git repository."
              | optional,
            pvcSize
              | String
              | doc m%"
                PVCSize specifies the size of persistent volume claim used to store function
                when using deployment and remote build process (only relevant when Remote is true).
              "%
              | optional,
          },
      "definitions.DeploySpec" =
        {
            annotations
              | js2n.record.Record
                {
                  additional = 'Some Dyn,
                  patterns = { ".*" = String, },
                  properties = {},
                  required = {},
                }
              | doc m%"
                Map containing user-supplied annotations
                Example: { "division": "finance" }
              "%
              | optional,
            healthEndpoints
              | refs."definitions.HealthEndpoints"
              | { _ | Dyn }
              | doc "Health endpoints specified by the language pack"
              | optional,
            labels
              | Array (
                std.contract.Sequence [ refs."definitions.Label", { _ | Dyn } ]
              )
              | doc "Map of user-supplied labels"
              | optional,
            namespace
              | String
              | doc "Namespace into which the function is deployed on supported platforms."
              | optional,
            options
              | refs."definitions.Options"
              | { _ | Dyn }
              | doc "Options to be set on deployed function (scaling, etc.)"
              | optional,
            remote
              | Bool
              | doc m%"
                Remote indicates the deployment (and possibly build) process are to
                be triggered in a remote environment rather than run locally.
              "%
              | optional,
            serviceAccountName
              | String
              | doc m%"
                ServiceAccountName is the name of the service account used for the
                function pod. The service account must exist in the namespace to
                succeed.
                More info: https://kubernetes.io/docs/tasks/configure-pod-container/configure-service-account/
              "%
              | optional,
          },
      "definitions.EmptyDir" =
        {
            medium
              | String
              | doc m%"
                medium represents what type of storage medium should back this directory.
                The default is "" which means to use the node's default medium.
                Must be an empty string (default) or Memory.
                More info: https://kubernetes.io/docs/concepts/storage/volumes#emptydir
              "%
              | optional,
            sizeLimit
              | String
              | doc m%"
                sizeLimit is the total amount of local storage required for this EmptyDir volume.
                The size limit is also applicable for memory medium.
                The maximum usage on memory medium EmptyDir would be the minimum value between
                the SizeLimit specified here and the sum of memory limits of all containers in a pod.
                The default is nil which means that the limit is undefined.
                More info: http://kubernetes.io/docs/user-guide/volumes#emptydir
              "%
              | optional,
          },
      "definitions.Env" =
        {
            name
              | js2n.string.Matches "^[-._a-zA-Z][-._a-zA-Z0-9]*$"
              | optional,
            value | String | optional,
          },
      "definitions.Function" =
        {
            build
              | refs."definitions.BuildSpec"
              | { _ | Dyn }
              | doc "Build defines the build properties for a function"
              | optional,
            created
              | String
              | doc m%"
                Created time is the moment that creation was successfully completed
                according to the client which is in charge of what constitutes being
                fully "Created" (aka initialized)
              "%,
            deploy
              | refs."definitions.DeploySpec"
              | { _ | Dyn }
              | doc "Deploy defines the deployment properties for a function"
              | optional,
            domain
              | String
              | doc m%"
                Domain of the function optionally specifies the domain to use as the
                route of the function. By default the cluster's default will be used.
                Note that the value defined here must be one which the cluster is
                configured to recognize, or this will have no effect and the cluster
                default will be applied.  This value shuld therefore ideally be
                validated by the client.
              "%
              | optional,
            image
              | String
              | doc m%"
                Image is the full OCI image tag in form:
                  [registry]/[namespace]/[name]:[tag]
                example:
                  quay.io/alice/my.function.name
                Registry is optional and is defaulted to DefaultRegistry
                example:
                  alice/my.function.name
                If Image is provided, it overrides the default of concatenating
                "Registry+Name:latest" to derive the Image.
              "%
              | optional,
            imageDigest
              | String
              | doc "ImageDigest is the SHA256 hash of the latest image that has been built"
              | optional,
            invoke
              | String
              | doc m%"
                Invoke defines hints for use when invoking this function.
                See Client.Invoke for usage.
              "%
              | optional,
            name
              | js2n.string.Matches "^[a-z0-9]([-a-z0-9]*[a-z0-9])?$"
              | doc "Name of the function."
              | optional,
            registry
              | String
              | doc m%"
                Registry at which to store interstitial containers, in the form
                [registry]/[user].
              "%
              | optional,
            run
              | refs."definitions.RunSpec"
              | { _ | Dyn }
              | doc "Run defines the runtime properties for a function"
              | optional,
            runtime
              | String
              | doc "Runtime is the language plus context.  nodejs|go|quarkus|rust etc."
              | optional,
            specVersion
              | String
              | doc m%"
                SpecVersion at which this function is known to be compatible.
                More specifically, it is the highest migration which has been applied.
                For details see the .Migrated() and .Migrate() methods.
              "%,
          },
      "definitions.Git" =
        {
            contextDir | String | optional,
            revision | String | optional,
            url | String | optional,
          },
      "definitions.HealthEndpoints" =
        { liveness | String | optional, readiness | String | optional, },
      "definitions.Label" =
        {
            key
              | js2n.string.Matches
                "^([a-z0-9]([-a-z0-9]*[a-z0-9])?(\\.[a-z0-9]([-a-z0-9]*[a-z0-9])?)*\\/)?([A-Za-z0-9][-A-Za-z0-9_.]*)?[A-Za-z0-9]$"
              | doc m%"
                Key consist of optional prefix part (ended by '/') and name part
                Prefix part validation pattern: [a-z0-9]([-a-z0-9]*[a-z0-9])?(\.[a-z0-9]([-a-z0-9]*[a-z0-9])?)*
                Name part validation pattern: ([A-Za-z0-9][-A-Za-z0-9_.]*)?[A-Za-z0-9]
              "%,
            value
              | js2n.string.Matches
                "^(([A-Za-z0-9][-A-Za-z0-9_.]*)?[A-Za-z0-9])?$"
              | optional,
          },
      "definitions.Options" =
        {
            resources
              | refs."definitions.ResourcesOptions"
              | { _ | Dyn }
              | optional,
            scale | refs."definitions.ScaleOptions" | { _ | Dyn } | optional,
          },
      "definitions.PersistentVolumeClaim" =
        {
            claimName
              | String
              | doc m%"
                claimName is the name of a PersistentVolumeClaim in the same namespace as the pod using this volume.
                More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#persistentvolumeclaims
              "%
              | optional,
            readOnly
              | Bool
              | doc m%"
                readOnly Will force the ReadOnly setting in VolumeMounts.
                Default false.
              "%
              | optional,
          },
      "definitions.ResourcesLimitsOptions" =
        {
            concurrency | std.number.Integer | js2n.number.Minimum 0 | optional,
            cpu
              | js2n.string.Matches
                "^([+-]?[0-9.]+)([eEinumkKMGTP]*[-+]?[0-9]*)$"
              | optional,
            memory
              | js2n.string.Matches
                "^([+-]?[0-9.]+)([eEinumkKMGTP]*[-+]?[0-9]*)$"
              | optional,
          },
      "definitions.ResourcesOptions" =
        {
            limits
              | refs."definitions.ResourcesLimitsOptions"
              | { _ | Dyn }
              | optional,
            requests
              | refs."definitions.ResourcesRequestsOptions"
              | { _ | Dyn }
              | optional,
          },
      "definitions.ResourcesRequestsOptions" =
        {
            cpu
              | js2n.string.Matches
                "^([+-]?[0-9.]+)([eEinumkKMGTP]*[-+]?[0-9]*)$"
              | optional,
            memory
              | js2n.string.Matches
                "^([+-]?[0-9.]+)([eEinumkKMGTP]*[-+]?[0-9]*)$"
              | optional,
          },
      "definitions.RunSpec" =
        {
            envs
              | Array (
                std.contract.Sequence [ refs."definitions.Env", { _ | Dyn } ]
              )
              | doc "Env variables to be set"
              | optional,
            startTimeout
              | std.number.Integer
              | doc m%"
                StartTimeout specifies that this function should have a custom timeout
                when starting. This setting is currently respected by the host runner,
                with containerized docker runner and deployed Knative service integration
                in development.
              "%
              | optional,
            volumes
              | Array (
                std.contract.Sequence [ refs."definitions.Volume", { _ | Dyn } ]
              )
              | doc "List of volumes to be mounted to the function"
              | optional,
          },
      "definitions.ScaleOptions" =
        {
            max | std.number.Integer | js2n.number.Minimum 0 | optional,
            metric | std.enum.TagOrString | [| 'rps, 'concurrency |] | optional,
            min | std.number.Integer | js2n.number.Minimum 0 | optional,
            target | js2n.number.Minimum 0 | optional,
            utilization
              | js2n.number.Maximum 100
              | js2n.number.Minimum 1
              | optional,
          },
      "definitions.Volume" =
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
                      js2n.record.Required [ "secret" ],
                      Array Dyn
                    ],
                  std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      js2n.record.Required [ "configMap" ],
                      Array Dyn
                    ],
                  std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      js2n.record.Required [ "presistentVolumeClaim" ],
                      Array Dyn
                    ],
                  std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      js2n.record.Required [ "emptyDir" ],
                      Array Dyn
                    ]
                ],
              {
                configMap | String | optional,
                emptyDir | refs."definitions.EmptyDir" | { _ | Dyn } | optional,
                path | String | optional,
                presistentVolumeClaim
                  | refs."definitions.PersistentVolumeClaim"
                  | { _ | Dyn }
                  | optional,
                secret | String | optional,
              }
            ],
    }
    in
  refs."definitions.Function"