# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.Activation" =
        {
            command
              | String
              | doc "a Skaffold command for which the profile is auto-activated."
              | optional,
            env
              | String
              | doc "a `key=pattern` pair. The profile is auto-activated if an Environment Variable `key` matches the pattern. If the pattern starts with `!`, activation happens if the remaining pattern is _not_ matched. The pattern matches if the Environment Variable value is exactly `pattern`, or the regex `pattern` is found in it. An empty `pattern` (e.g. `env: \"key=\"`) always only matches if the Environment Variable is undefined or empty."
              | optional,
            kubeContext
              | String
              | doc "a Kubernetes context for which the profile is auto-activated."
              | optional,
          },
      "definitions.Artifact" =
        std.contract.Sequence
            [
              std.contract.any_of
                [
                  js2n.record.Record
                    {
                      additional = 'None,
                      patterns = {},
                      properties =
                        {
                            context = String,
                            hooks =
                              std.contract.Sequence
                                  [
                                    refs."definitions.BuildHooks",
                                    { _ | Dyn }
                                  ],
                            image = String,
                            platforms = js2n.array.ArrayOf String,
                            requires =
                              js2n.array.ArrayOf
                                  (std.contract.Sequence
                                    [
                                      refs."definitions.ArtifactDependency",
                                      { _ | Dyn }
                                    ]),
                            sync =
                              std.contract.Sequence
                                  [ refs."definitions.Sync", { _ | Dyn } ],
                          },
                      required = {},
                    },
                  js2n.record.Record
                    {
                      additional = 'None,
                      patterns = {},
                      properties =
                        {
                            context = String,
                            docker =
                              std.contract.Sequence
                                  [
                                    refs."definitions.DockerArtifact",
                                    { _ | Dyn }
                                  ],
                            hooks =
                              std.contract.Sequence
                                  [
                                    refs."definitions.BuildHooks",
                                    { _ | Dyn }
                                  ],
                            image = String,
                            platforms = js2n.array.ArrayOf String,
                            requires =
                              js2n.array.ArrayOf
                                  (std.contract.Sequence
                                    [
                                      refs."definitions.ArtifactDependency",
                                      { _ | Dyn }
                                    ]),
                            sync =
                              std.contract.Sequence
                                  [ refs."definitions.Sync", { _ | Dyn } ],
                          },
                      required = {},
                    },
                  js2n.record.Record
                    {
                      additional = 'None,
                      patterns = {},
                      properties =
                        {
                            bazel =
                              std.contract.Sequence
                                  [
                                    refs."definitions.BazelArtifact",
                                    { _ | Dyn }
                                  ],
                            context = String,
                            hooks =
                              std.contract.Sequence
                                  [
                                    refs."definitions.BuildHooks",
                                    { _ | Dyn }
                                  ],
                            image = String,
                            platforms = js2n.array.ArrayOf String,
                            requires =
                              js2n.array.ArrayOf
                                  (std.contract.Sequence
                                    [
                                      refs."definitions.ArtifactDependency",
                                      { _ | Dyn }
                                    ]),
                            sync =
                              std.contract.Sequence
                                  [ refs."definitions.Sync", { _ | Dyn } ],
                          },
                      required = {},
                    },
                  js2n.record.Record
                    {
                      additional = 'None,
                      patterns = {},
                      properties =
                        {
                            context = String,
                            hooks =
                              std.contract.Sequence
                                  [
                                    refs."definitions.BuildHooks",
                                    { _ | Dyn }
                                  ],
                            image = String,
                            ko =
                              std.contract.Sequence
                                  [
                                    refs."definitions.KoArtifact",
                                    { _ | Dyn }
                                  ],
                            platforms = js2n.array.ArrayOf String,
                            requires =
                              js2n.array.ArrayOf
                                  (std.contract.Sequence
                                    [
                                      refs."definitions.ArtifactDependency",
                                      { _ | Dyn }
                                    ]),
                            sync =
                              std.contract.Sequence
                                  [ refs."definitions.Sync", { _ | Dyn } ],
                          },
                      required = {},
                    },
                  js2n.record.Record
                    {
                      additional = 'None,
                      patterns = {},
                      properties =
                        {
                            context = String,
                            hooks =
                              std.contract.Sequence
                                  [
                                    refs."definitions.BuildHooks",
                                    { _ | Dyn }
                                  ],
                            image = String,
                            jib =
                              std.contract.Sequence
                                  [
                                    refs."definitions.JibArtifact",
                                    { _ | Dyn }
                                  ],
                            platforms = js2n.array.ArrayOf String,
                            requires =
                              js2n.array.ArrayOf
                                  (std.contract.Sequence
                                    [
                                      refs."definitions.ArtifactDependency",
                                      { _ | Dyn }
                                    ]),
                            sync =
                              std.contract.Sequence
                                  [ refs."definitions.Sync", { _ | Dyn } ],
                          },
                      required = {},
                    },
                  js2n.record.Record
                    {
                      additional = 'None,
                      patterns = {},
                      properties =
                        {
                            context = String,
                            hooks =
                              std.contract.Sequence
                                  [
                                    refs."definitions.BuildHooks",
                                    { _ | Dyn }
                                  ],
                            image = String,
                            kaniko =
                              std.contract.Sequence
                                  [
                                    refs."definitions.KanikoArtifact",
                                    { _ | Dyn }
                                  ],
                            platforms = js2n.array.ArrayOf String,
                            requires =
                              js2n.array.ArrayOf
                                  (std.contract.Sequence
                                    [
                                      refs."definitions.ArtifactDependency",
                                      { _ | Dyn }
                                    ]),
                            sync =
                              std.contract.Sequence
                                  [ refs."definitions.Sync", { _ | Dyn } ],
                          },
                      required = {},
                    },
                  js2n.record.Record
                    {
                      additional = 'None,
                      patterns = {},
                      properties =
                        {
                            buildpacks =
                              std.contract.Sequence
                                  [
                                    refs."definitions.BuildpackArtifact",
                                    { _ | Dyn }
                                  ],
                            context = String,
                            hooks =
                              std.contract.Sequence
                                  [
                                    refs."definitions.BuildHooks",
                                    { _ | Dyn }
                                  ],
                            image = String,
                            platforms = js2n.array.ArrayOf String,
                            requires =
                              js2n.array.ArrayOf
                                  (std.contract.Sequence
                                    [
                                      refs."definitions.ArtifactDependency",
                                      { _ | Dyn }
                                    ]),
                            sync =
                              std.contract.Sequence
                                  [ refs."definitions.Sync", { _ | Dyn } ],
                          },
                      required = {},
                    },
                  js2n.record.Record
                    {
                      additional = 'None,
                      patterns = {},
                      properties =
                        {
                            context = String,
                            custom =
                              std.contract.Sequence
                                  [
                                    refs."definitions.CustomArtifact",
                                    { _ | Dyn }
                                  ],
                            hooks =
                              std.contract.Sequence
                                  [
                                    refs."definitions.BuildHooks",
                                    { _ | Dyn }
                                  ],
                            image = String,
                            platforms = js2n.array.ArrayOf String,
                            requires =
                              js2n.array.ArrayOf
                                  (std.contract.Sequence
                                    [
                                      refs."definitions.ArtifactDependency",
                                      { _ | Dyn }
                                    ]),
                            sync =
                              std.contract.Sequence
                                  [ refs."definitions.Sync", { _ | Dyn } ],
                          },
                      required = {},
                    }
                ],
              js2n.record.Required [ "image" ]
            ],
      "definitions.ArtifactDependency" =
        {
            alias
              | String
              | doc "a token that is replaced with the image reference in the builder definition files. For example, the `docker` builder will use the alias as a build-arg key. Defaults to the value of `image`."
              | optional,
            image | String | doc "a reference to an artifact's image name.",
          },
      "definitions.BazelArtifact" =
        {
            args
              | Array String
              | doc "additional args to pass to `bazel build`."
              | optional,
            target | String | doc "`bazel build` target to run.",
          },
      "definitions.BuildConfig" =
        std.contract.any_of
            [
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        artifacts =
                          js2n.array.ArrayOf
                              (std.contract.Sequence
                                [ refs."definitions.Artifact", { _ | Dyn } ]),
                        insecureRegistries = js2n.array.ArrayOf String,
                        platforms = js2n.array.ArrayOf String,
                        tagPolicy =
                          std.contract.Sequence
                              [ refs."definitions.TagPolicy", { _ | Dyn } ],
                      },
                  required = {},
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        artifacts =
                          js2n.array.ArrayOf
                              (std.contract.Sequence
                                [ refs."definitions.Artifact", { _ | Dyn } ]),
                        insecureRegistries = js2n.array.ArrayOf String,
                        local =
                          std.contract.Sequence
                              [ refs."definitions.LocalBuild", { _ | Dyn } ],
                        platforms = js2n.array.ArrayOf String,
                        tagPolicy =
                          std.contract.Sequence
                              [ refs."definitions.TagPolicy", { _ | Dyn } ],
                      },
                  required = {},
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        artifacts =
                          js2n.array.ArrayOf
                              (std.contract.Sequence
                                [ refs."definitions.Artifact", { _ | Dyn } ]),
                        googleCloudBuild =
                          std.contract.Sequence
                              [
                                refs."definitions.GoogleCloudBuild",
                                { _ | Dyn }
                              ],
                        insecureRegistries = js2n.array.ArrayOf String,
                        platforms = js2n.array.ArrayOf String,
                        tagPolicy =
                          std.contract.Sequence
                              [ refs."definitions.TagPolicy", { _ | Dyn } ],
                      },
                  required = {},
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        artifacts =
                          js2n.array.ArrayOf
                              (std.contract.Sequence
                                [ refs."definitions.Artifact", { _ | Dyn } ]),
                        cluster =
                          std.contract.Sequence
                              [
                                refs."definitions.ClusterDetails",
                                { _ | Dyn }
                              ],
                        insecureRegistries = js2n.array.ArrayOf String,
                        platforms = js2n.array.ArrayOf String,
                        tagPolicy =
                          std.contract.Sequence
                              [ refs."definitions.TagPolicy", { _ | Dyn } ],
                      },
                  required = {},
                }
            ],
      "definitions.BuildHooks" =
        {
            after
              | Array (
                std.contract.Sequence
                  [ refs."definitions.HostHook", { _ | Dyn } ]
              )
              | doc "describes the list of lifecycle hooks to execute *after* each artifact build step."
              | optional,
            before
              | Array (
                std.contract.Sequence
                  [ refs."definitions.HostHook", { _ | Dyn } ]
              )
              | doc "describes the list of lifecycle hooks to execute *before* each artifact build step."
              | optional,
          },
      "definitions.BuildpackArtifact" =
        {
            builder | String | doc "builder image used." | optional,
            buildpacks
              | Array String
              | doc "a list of strings, where each string is a specific buildpack to use with the builder. If you specify buildpacks the builder image automatic detection will be ignored. These buildpacks will be used to build the Image from your source code. Order matters."
              | optional,
            clearCache
              | Bool
              | doc "removes old cache volume associated with the specific image and supplies a clean cache volume for build."
              | optional,
            dependencies
              | refs."definitions.BuildpackDependencies"
              | { _ | Dyn }
              | doc "file dependencies that skaffold should watch for both rebuilding and file syncing for this artifact."
              | optional,
            env
              | Array String
              | doc "environment variables, in the `key=value` form,  passed to the build. Values can use the go template syntax."
              | optional,
            projectDescriptor
              | String
              | doc "path to the project descriptor file."
              | optional,
            runImage
              | String
              | doc "overrides the stack's default run image."
              | optional,
            trustBuilder
              | Bool
              | doc "indicates that the builder should be trusted."
              | optional,
            volumes
              | Array (
                std.contract.Sequence
                  [ refs."definitions.BuildpackVolume", { _ | Dyn } ]
              )
              | doc "support mounting host volumes into the container."
              | optional,
          },
      "definitions.BuildpackDependencies" =
        {
            ignore
              | Array String
              | doc "specifies the paths that should be ignored by skaffold's file watcher. If a file exists in both `paths` and in `ignore`, it will be ignored, and will be excluded from both rebuilds and file synchronization. Will only work in conjunction with `paths`."
              | optional,
            paths
              | Array String
              | doc "should be set to the file dependencies for this artifact, so that the skaffold file watcher knows when to rebuild and perform file synchronization."
              | optional,
          },
      "definitions.BuildpackVolume" =
        {
            host
              | String
              | doc "local volume or absolute directory of the path to mount.",
            options
              | std.enum.TagOrString
              | [| '"volume-opt=<key>=<value>", 'rw, 'ro |]
              | doc "specify a list of comma-separated mount options. Valid options are: `ro` (default): volume contents are read-only. `rw`: volume contents are readable and writable. `volume-opt=<key>=<value>`: can be specified more than once, takes a key-value pair."
              | optional,
            target
              | String
              | doc "path where the file or directory is available in the container. It is strongly recommended to not specify locations under `/cnb` or `/layers`.",
          },
      "definitions.CloudRunDeploy" =
        {
            projectid
              | String
              | doc "the GCP Project to use for Cloud Run. If specified, all Services will be deployed to this project. If not specified, each Service will be deployed to the project specified in `metadata.namespace` of the Cloud Run manifest."
              | optional,
            region
              | String
              | doc "GCP location to use for the Cloud Run Deploy. Must be one of the regions listed in https://cloud.google.com/run/docs/locations."
              | optional,
          },
      "definitions.ClusterDetails" =
        {
            HTTPS_PROXY | String | doc "for kaniko pod." | optional,
            HTTP_PROXY | String | doc "for kaniko pod." | optional,
            annotations
              | { _ | String }
              | doc "describes the Kubernetes annotations for the pod."
              | optional,
            concurrency
              | std.number.Integer
              | doc "how many artifacts can be built concurrently. 0 means \"no-limit\"."
              | optional,
            dockerConfig
              | refs."definitions.DockerConfig"
              | { _ | Dyn }
              | doc "describes how to mount the local Docker configuration into a pod."
              | optional,
            namespace
              | String
              | doc "Kubernetes namespace. Defaults to current namespace in Kubernetes configuration."
              | optional,
            nodeSelector
              | { _ | String }
              | doc "describes the Kubernetes node selector for the pod."
              | optional,
            pullSecretMountPath
              | String
              | doc "path the pull secret will be mounted at within the running container."
              | optional,
            pullSecretName
              | String
              | doc "name of the Kubernetes secret for pulling base images and pushing the final image. If given, the secret needs to contain the Google Cloud service account secret key under the key `kaniko-secret`."
              | optional,
            pullSecretPath
              | String
              | doc "path to the Google Cloud service account secret key file."
              | optional,
            randomDockerConfigSecret
              | Bool
              | doc "adds a random UUID postfix to the default name of the docker secret to facilitate parallel builds, e.g. docker-cfgfd154022-c761-416f-8eb3-cf8258450b85."
              | optional,
            randomPullSecret
              | Bool
              | doc "adds a random UUID postfix to the default name of the pull secret to facilitate parallel builds, e.g. kaniko-secretdocker-cfgfd154022-c761-416f-8eb3-cf8258450b85."
              | optional,
            resources
              | refs."definitions.ResourceRequirements"
              | { _ | Dyn }
              | doc "define the resource requirements for the kaniko pod."
              | optional,
            runAsUser
              | std.number.Integer
              | doc "defines the UID to request for running the container. If omitted, no SecurityContext will be specified for the pod and will therefore be inherited from the service account."
              | optional,
            serviceAccount
              | String
              | doc "describes the Kubernetes service account to use for the pod. Defaults to 'default'."
              | optional,
            timeout
              | String
              | doc "amount of time (in seconds) that this build is allowed to run. Defaults to 20 minutes (`20m`)."
              | optional,
            tolerations
              | Array js2n.Always
              | doc "describes the Kubernetes tolerations for the pod."
              | optional,
            volumes
              | Array js2n.Always
              | doc "defines container mounts for ConfigMap and Secret resources."
              | optional,
          },
      "definitions.ConfigDependency" =
        {
            activeProfiles
              | Array (
                std.contract.Sequence
                  [ refs."definitions.ProfileDependency", { _ | Dyn } ]
              )
              | doc "describes the list of profiles to activate when resolving the required configs. These profiles must exist in the imported config."
              | optional,
            configs
              | Array String
              | doc "includes specific named configs within the file path. If empty, then all configs in the file are included."
              | optional,
            git
              | refs."definitions.GitInfo"
              | { _ | Dyn }
              | doc "describes a remote git repository containing the required configs."
              | optional,
            path
              | String
              | doc "describes the path to the file containing the required configs."
              | optional,
          },
      "definitions.ContainerHook" =
        { command | Array String | doc "command to execute.", },
      "definitions.CustomArtifact" =
        {
            buildCommand
              | String
              | doc "command executed to build the image."
              | optional,
            dependencies
              | refs."definitions.CustomDependencies"
              | { _ | Dyn }
              | doc "file dependencies that skaffold should watch for both rebuilding and file syncing for this artifact."
              | optional,
          },
      "definitions.CustomDependencies" =
        {
            command
              | String
              | doc "represents a custom command that skaffold executes to obtain dependencies. The output of this command *must* be a valid JSON array."
              | optional,
            dockerfile
              | refs."definitions.DockerfileDependency"
              | { _ | Dyn }
              | doc "should be set if the artifact is built from a Dockerfile, from which skaffold can determine dependencies."
              | optional,
            ignore
              | Array String
              | doc "specifies the paths that should be ignored by skaffold's file watcher. If a file exists in both `paths` and in `ignore`, it will be ignored, and will be excluded from both rebuilds and file synchronization. Will only work in conjunction with `paths`."
              | optional,
            paths
              | Array String
              | doc "should be set to the file dependencies for this artifact, so that the skaffold file watcher knows when to rebuild and perform file synchronization."
              | optional,
          },
      "definitions.CustomTemplateTagger" =
        {
            components
              | Array (
                std.contract.Sequence
                  [ refs."definitions.TaggerComponent", { _ | Dyn } ]
              )
              | doc "TaggerComponents that the template (see field above) can be executed against."
              | optional,
            template
              | String
              | doc "used to produce the image name and tag. See golang [text/template](https://golang.org/pkg/text/template/). The template is executed against the provided components with those variables injected.",
          },
      "definitions.CustomTest" =
        {
            command
              | String
              | doc "custom command to be executed.  If the command exits with a non-zero return code, the test will be considered to have failed.",
            dependencies
              | refs."definitions.CustomTestDependencies"
              | { _ | Dyn }
              | doc "additional test-specific file dependencies; changes to these files will re-run this test."
              | optional,
            timeoutSeconds
              | std.number.Integer
              | doc "sets the wait time for skaffold for the command to complete. If unset or 0, Skaffold will wait until the command completes."
              | optional,
          },
      "definitions.CustomTestDependencies" =
        {
            command
              | String
              | doc "represents a command that skaffold executes to obtain dependencies. The output of this command *must* be a valid JSON array."
              | optional,
            ignore
              | Array String
              | doc "specifies the paths that should be ignored by skaffold's file watcher. If a file exists in both `paths` and in `ignore`, it will be ignored, and will be excluded from both retest and file synchronization. Will only work in conjunction with `paths`."
              | optional,
            paths
              | Array String
              | doc "locates the file dependencies for the command relative to workspace. Paths should be set to the file dependencies for this command, so that the skaffold file watcher knows when to retest and perform file synchronization."
              | optional,
          },
      "definitions.DateTimeTagger" =
        {
            format
              | String
              | doc "formats the date and time. See [#Time.Format](https://golang.org/pkg/time/#Time.Format)."
              | optional,
            timezone
              | String
              | doc "sets the timezone for the date and time. See [Time.LoadLocation](https://golang.org/pkg/time/#Time.LoadLocation). Defaults to the local timezone."
              | optional,
          },
      "definitions.DeployConfig" =
        {
            cloudrun
              | refs."definitions.CloudRunDeploy"
              | { _ | Dyn }
              | doc "*alpha* deploys to Google Cloud Run using the Cloud Run v1 API."
              | optional,
            docker
              | refs."definitions.DockerDeploy"
              | { _ | Dyn }
              | doc "*alpha* uses the `docker` CLI to create application containers in Docker."
              | optional,
            helm
              | refs."definitions.LegacyHelmDeploy"
              | { _ | Dyn }
              | doc "*beta* uses the `helm` CLI to apply the charts to the cluster."
              | optional,
            kpt
              | refs."definitions.KptDeploy"
              | { _ | Dyn }
              | doc "*alpha* uses the `kpt` CLI to manage and deploy manifests."
              | optional,
            kubeContext
              | String
              | doc "Kubernetes context that Skaffold should deploy to."
              | optional,
            kubectl
              | refs."definitions.KubectlDeploy"
              | { _ | Dyn }
              | doc "*beta* uses a client side `kubectl apply` to deploy manifests. You'll need a `kubectl` CLI version installed that's compatible with your cluster."
              | optional,
            logs
              | refs."definitions.LogsConfig"
              | { _ | Dyn }
              | doc "configures how container logs are printed as a result of a deployment."
              | optional,
            statusCheck
              | Bool
              | doc "*beta* enables waiting for deployments to stabilize."
              | optional,
            statusCheckDeadlineSeconds
              | std.number.Integer
              | doc "*beta* deadline for deployments to stabilize in seconds."
              | optional,
          },
      "definitions.DeployHookItem" =
        {
            container
              | refs."definitions.NamedContainerHook"
              | { _ | Dyn }
              | doc "describes a single lifecycle hook to run on a container."
              | optional,
            host
              | refs."definitions.HostHook"
              | { _ | Dyn }
              | doc "describes a single lifecycle hook to run on the host machine."
              | optional,
          },
      "definitions.DeployHooks" =
        {
            after
              | Array (
                std.contract.Sequence
                  [ refs."definitions.DeployHookItem", { _ | Dyn } ]
              )
              | doc "describes the list of lifecycle hooks to execute *after* each deployer step."
              | optional,
            before
              | Array (
                std.contract.Sequence
                  [ refs."definitions.DeployHookItem", { _ | Dyn } ]
              )
              | doc "describes the list of lifecycle hooks to execute *before* each deployer step. Container hooks will only run if the container exists from a previous deployment step (for instance the successive iterations of a dev-loop during `skaffold dev`)."
              | optional,
          },
      "definitions.DockerArtifact" =
        {
            addHost | Array String | doc "add host." | optional,
            buildArgs
              | { _ | String }
              | doc "arguments passed to the docker build."
              | optional,
            cacheFrom
              | Array String
              | doc "the Docker images used as cache sources."
              | optional,
            cliFlags
              | Array String
              | doc "any additional flags to pass to the local daemon during a build. These flags are only used during a build through the Docker CLI."
              | optional,
            dockerfile
              | String
              | doc "locates the Dockerfile relative to workspace."
              | optional,
            network
              | std.enum.TagOrString
              | [| 'none, '"container:<name|id>", 'bridge, 'host |]
              | doc "passed through to docker and overrides the network configuration of docker builder. If unset, use whatever is configured in the underlying docker daemon. Valid modes are `host`: use the host's networking stack. `bridge`: use the bridged network configuration. `container:<name|id>`: reuse another container's network stack. `none`: no networking in the container."
              | optional,
            noCache
              | Bool
              | doc "set to true to pass in --no-cache to docker build, which will prevent caching."
              | optional,
            pullParent
              | Bool
              | doc "used to attempt pulling the parent image even if an older image exists locally."
              | optional,
            secrets
              | Array (
                std.contract.Sequence
                  [ refs."definitions.DockerSecret", { _ | Dyn } ]
              )
              | doc "used to pass in --secret to docker build, `useBuildKit: true` is required."
              | optional,
            squash
              | Bool
              | doc "used to pass in --squash to docker build to squash docker image layers into single layer."
              | optional,
            ssh
              | String
              | doc "used to pass in --ssh to docker build to use SSH agent. Format is \"default|<id>[=<socket>|<key>[,<key>]]\"."
              | optional,
            target | String | doc "Dockerfile target name to build." | optional,
          },
      "definitions.DockerConfig" =
        {
            path | String | doc "path to the docker `config.json`." | optional,
            secretName
              | String
              | doc "Kubernetes secret that contains the `config.json` Docker configuration. Note that the expected secret type is not 'kubernetes.io/dockerconfigjson' but 'Opaque'."
              | optional,
          },
      "definitions.DockerDeploy" =
        {
            images | Array String | doc "container images to run in Docker.",
            useCompose
              | Bool
              | doc "tells skaffold whether or not to deploy using `docker-compose`."
              | optional,
          },
      "definitions.DockerSecret" =
        {
            env
              | String
              | doc "environment variable name containing the secret value."
              | optional,
            id | String | doc "id of the secret.",
            src
              | String
              | doc "path to the secret on the host machine."
              | optional,
          },
      "definitions.DockerfileDependency" =
        {
            buildArgs
              | { _ | String }
              | doc "key/value pairs used to resolve values of `ARG` instructions in a Dockerfile. Values can be constants or environment variables via the go template syntax."
              | optional,
            path
              | String
              | doc "locates the Dockerfile relative to workspace."
              | optional,
          },
      "definitions.EnvTemplateTagger" =
        {
            template
              | String
              | doc "used to produce the image name and tag. See golang [text/template](https://golang.org/pkg/text/template/). The template is executed against the current environment, with those variables injected.",
          },
      "definitions.GitInfo" =
        {
            path
              | String
              | doc "relative path from the repo root to the skaffold configuration file. eg. `getting-started/skaffold.yaml`."
              | optional,
            ref
              | String
              | doc "git ref the package should be cloned from. eg. `master` or `main`."
              | optional,
            repo
              | String
              | doc "git repository the package should be cloned from.  e.g. `https://github.com/GoogleContainerTools/skaffold.git`.",
            sync
              | Bool
              | doc "when set to `true` will reset the cached repository to the latest commit from remote on every run. To use the cached repository with uncommitted changes or unpushed commits, it needs to be set to `false`."
              | optional,
          },
      "definitions.GitTagger" =
        {
            ignoreChanges
              | Bool
              | doc "specifies whether to omit the `-dirty` postfix if there are uncommitted changes."
              | optional,
            prefix | String | doc "adds a fixed prefix to the tag." | optional,
            variant
              | std.enum.TagOrString
              | [|
                'AbbrevTreeSha,
                'TreeSha,
                'AbbrevCommitSha,
                'CommitSha,
                'Tags
              |]
              | doc "determines the behavior of the git tagger. Valid variants are: `Tags` (default): use git tags or fall back to abbreviated commit hash. `CommitSha`: use the full git commit sha. `AbbrevCommitSha`: use the abbreviated git commit sha. `TreeSha`: use the full tree hash of the artifact workingdir. `AbbrevTreeSha`: use the abbreviated tree hash of the artifact workingdir."
              | optional,
          },
      "definitions.GoogleCloudBuild" =
        {
            concurrency
              | std.number.Integer
              | doc "how many artifacts can be built concurrently. 0 means \"no-limit\"."
              | optional,
            diskSizeGb
              | std.number.Integer
              | doc "disk size of the VM that runs the build. See [Cloud Build Reference](https://cloud.google.com/cloud-build/docs/api/reference/rest/v1/projects.builds#buildoptions)."
              | optional,
            dockerImage
              | String
              | doc "image that runs a Docker build. See [Cloud Builders](https://cloud.google.com/cloud-build/docs/cloud-builders)."
              | optional,
            gradleImage
              | String
              | doc "image that runs a Gradle build. See [Cloud Builders](https://cloud.google.com/cloud-build/docs/cloud-builders)."
              | optional,
            kanikoImage
              | String
              | doc "image that runs a Kaniko build. See [Cloud Builders](https://cloud.google.com/cloud-build/docs/cloud-builders)."
              | optional,
            koImage
              | String
              | doc "image that runs a ko build. The image must contain Skaffold, Go, and a shell (runnable as `sh`) that supports here documents. See [Cloud Builders](https://cloud.google.com/cloud-build/docs/cloud-builders)."
              | optional,
            logStreamingOption
              | std.enum.TagOrString
              | [| 'STREAM_OFF, 'STREAM_ON, 'STREAM_DEFAULT |]
              | doc "specifies the behavior when writing build logs to Google Cloud Storage. Valid options are: `STREAM_DEFAULT`: Service may automatically determine build log streaming behavior. `STREAM_ON`:  Build logs should be streamed to Google Cloud Storage. `STREAM_OFF`: Build logs should not be streamed to Google Cloud Storage; they will be written when the build is completed. See [Cloud Build Reference](https://cloud.google.com/cloud-build/docs/api/reference/rest/v1/projects.builds#logstreamingoption)."
              | optional,
            logging
              | std.enum.TagOrString
              | [| 'GCS_ONLY, 'LEGACY, 'LOGGING_UNSPECIFIED |]
              | doc "specifies the logging mode. Valid modes are: `LOGGING_UNSPECIFIED`: The service determines the logging mode. `LEGACY`: Stackdriver logging and Cloud Storage logging are enabled (default). `GCS_ONLY`: Only Cloud Storage logging is enabled. See [Cloud Build Reference](https://cloud.google.com/cloud-build/docs/api/reference/rest/v1/projects.builds#loggingmode)."
              | optional,
            machineType
              | String
              | doc "type of the VM that runs the build. See [Cloud Build Reference](https://cloud.google.com/cloud-build/docs/api/reference/rest/v1/projects.builds#buildoptions)."
              | optional,
            mavenImage
              | String
              | doc "image that runs a Maven build. See [Cloud Builders](https://cloud.google.com/cloud-build/docs/cloud-builders)."
              | optional,
            packImage
              | String
              | doc "image that runs a Cloud Native Buildpacks build. See [Cloud Builders](https://cloud.google.com/cloud-build/docs/cloud-builders)."
              | optional,
            platformEmulatorInstallStep
              | refs."definitions.PlatformEmulatorInstallStep"
              | { _ | Dyn }
              | doc "specifies a pre-build step to install the required tooling for QEMU emulation on the GoogleCloudBuild containers. This enables performing cross-platform builds on GoogleCloudBuild. If unspecified, Skaffold uses the `docker/binfmt` image by default."
              | optional,
            projectId
              | String
              | doc "ID of your Cloud Platform Project. If it is not provided, Skaffold will guess it from the image name. For example, given the artifact image name `gcr.io/myproject/image`, Skaffold will use the `myproject` GCP project."
              | optional,
            region
              | String
              | doc "configures the region to run the build. If WorkerPool is configured, the region will be deduced from the WorkerPool configuration. If neither WorkerPool nor Region is configured, the build will be run in global(non-regional). See [Cloud Build locations](https://cloud.google.com/build/docs/locations)."
              | optional,
            serviceAccount
              | String
              | doc "Google Cloud platform service account used by Cloud Build. If unspecified, it defaults to the Cloud Build service account generated when the Cloud Build API is enabled."
              | optional,
            timeout
              | String
              | doc "amount of time (in seconds) that this build should be allowed to run. See [Cloud Build Reference](https://cloud.google.com/cloud-build/docs/api/reference/rest/v1/projects.builds#resource-build)."
              | optional,
            workerPool
              | String
              | doc "configures a pool of workers to run the build."
              | optional,
          },
      "definitions.Helm" =
        {
            flags
              | refs."definitions.HelmDeployFlags"
              | { _ | Dyn }
              | doc "additional option flags that are passed on the command line to `helm`."
              | optional,
            releases
              | Array (
                std.contract.Sequence
                  [ refs."definitions.HelmRelease", { _ | Dyn } ]
              )
              | doc "a list of Helm releases.",
          },
      "definitions.HelmDeployFlags" =
        {
            global
              | Array String
              | doc "additional flags passed on every command."
              | optional,
            install
              | Array String
              | doc "additional flags passed to (`helm install`)."
              | optional,
            upgrade
              | Array String
              | doc "additional flags passed to (`helm upgrade`)."
              | optional,
          },
      "definitions.HelmPackaged" =
        {
            appVersion
              | String
              | doc "sets the `appVersion` on the chart to this version."
              | optional,
            version
              | String
              | doc "sets the `version` on the chart to this semver version."
              | optional,
          },
      "definitions.HelmRelease" =
        {
            chartPath
              | String
              | doc "local path to a packaged Helm chart or an unpacked Helm chart directory."
              | optional,
            createNamespace
              | Bool
              | doc "if `true`, Skaffold will send `--create-namespace` flag to Helm CLI. `--create-namespace` flag is available in Helm since version 3.2. Defaults is `false`."
              | optional,
            name
              | String
              | doc "name of the Helm release. It accepts environment variables via the go template syntax.",
            namespace | String | doc "Kubernetes namespace." | optional,
            overrides
              | std.contract.any_of
                [ js2n.Null, Bool, Number, String, { _ | Dyn }, Array Dyn ]
              | doc "key-value pairs. If present, Skaffold will build a Helm `values` file that overrides the original and use it to call Helm CLI (`--f` flag)."
              | optional,
            packaged
              | refs."definitions.HelmPackaged"
              | { _ | Dyn }
              | doc "parameters for packaging helm chart (`helm package`)."
              | optional,
            recreatePods
              | Bool
              | doc "if `true`, Skaffold will send `--recreate-pods` flag to Helm CLI when upgrading a new version of a chart in subsequent dev loop deploy."
              | optional,
            remoteChart
              | String
              | doc "refers to a remote Helm chart reference or URL."
              | optional,
            repo
              | String
              | doc "specifies the helm repository for remote charts. If present, Skaffold will send `--repo` Helm CLI flag or flags."
              | optional,
            setFiles
              | { _ | String }
              | doc "key-value pairs. If present, Skaffold will send `--set-file` flag to Helm CLI and append all pairs after the flag."
              | optional,
            setValueTemplates
              | std.contract.any_of
                [ js2n.Null, Bool, Number, String, { _ | Dyn }, Array Dyn ]
              | doc "key-value pairs. If present, Skaffold will try to parse the value part of each key-value pair using environment variables in the system, then send `--set` flag to Helm CLI and append all parsed pairs after the flag."
              | optional,
            setValues
              | std.contract.any_of
                [ js2n.Null, Bool, Number, String, { _ | Dyn }, Array Dyn ]
              | doc "key-value pairs. If present, Skaffold will send `--set` flag to Helm CLI and append all pairs after the flag."
              | optional,
            skipBuildDependencies
              | Bool
              | doc "should build dependencies be skipped. Ignored for `remoteChart`."
              | optional,
            upgradeOnChange
              | Bool
              | doc "specifies whether to upgrade helm chart on code changes. Default is `true` when helm chart is local (has `chartPath`). Default is `false` when helm chart is remote (has `remoteChart`)."
              | optional,
            useHelmSecrets
              | Bool
              | doc "instructs skaffold to use secrets plugin on deployment."
              | optional,
            valuesFiles
              | Array String
              | doc "paths to the Helm `values` files."
              | optional,
            version | String | doc "version of the chart." | optional,
            wait
              | Bool
              | doc "if `true`, Skaffold will send `--wait` flag to Helm CLI."
              | optional,
          },
      "definitions.HostHook" =
        {
            command | Array String | doc "command to execute.",
            dir
              | String
              | doc "specifies the working directory of the command. If empty, the command runs in the calling process's current directory."
              | optional,
            os
              | Array String
              | doc "an optional slice of operating system names. If the host machine OS is different, then it skips execution."
              | optional,
          },
      "definitions.InputDigest" = { _ | Dyn },
      "definitions.JSONParseConfig" =
        {
            fields
              | Array String
              | doc "specifies which top level fields should be printed."
              | optional,
          },
      "definitions.JSONPatch" =
        {
            from
              | String
              | doc "source position in the yaml, used for `copy` or `move` operations."
              | optional,
            op
              | String
              | doc "operation carried by the patch: `add`, `remove`, `replace`, `move`, `copy` or `test`."
              | optional,
            path
              | String
              | doc "position in the yaml where the operation takes place. For example, this targets the `dockerfile` of the first artifact built.",
            value
              | std.contract.any_of
                [ js2n.Null, Bool, Number, String, { _ | Dyn }, Array Dyn ]
              | doc "value to apply. Can be any portion of yaml."
              | optional,
          },
      "definitions.JibArtifact" =
        {
            args
              | Array String
              | doc "additional build flags passed to the builder."
              | optional,
            fromImage
              | String
              | doc "overrides the configured jib base image."
              | optional,
            project
              | String
              | doc "selects which sub-project to build for multi-module builds."
              | optional,
            type
              | std.enum.TagOrString
              | [| 'gradle, 'maven |]
              | doc "the Jib builder type; normally determined automatically. Valid types are `maven`: for Maven. `gradle`: for Gradle."
              | optional,
          },
      "definitions.KanikoArtifact" =
        {
            buildArgs
              | { _ | String }
              | doc "arguments passed to the docker build. It also accepts environment variables and generated values via the go template syntax. Exposed generated values: IMAGE_REPO, IMAGE_NAME, IMAGE_TAG."
              | optional,
            cache
              | refs."definitions.KanikoCache"
              | { _ | Dyn }
              | doc "configures Kaniko caching. If a cache is specified, Kaniko will use a remote cache which will speed up builds."
              | optional,
            cleanup
              | Bool
              | doc "to clean the filesystem at the end of the build."
              | optional,
            contextSubPath
              | String
              | doc "to specify a sub path within the context."
              | optional,
            digestFile
              | String
              | doc "to specify a file in the container. This file will receive the digest of a built image. This can be used to automatically track the exact image built by kaniko."
              | optional,
            dockerfile
              | String
              | doc "locates the Dockerfile relative to workspace."
              | optional,
            env
              | Array js2n.Always
              | doc "environment variables passed to the kaniko pod. It also accepts environment variables via the go template syntax."
              | optional,
            "force" | Bool | doc "building outside of a container." | optional,
            image
              | String
              | doc "Docker image used by the Kaniko pod. Defaults to the latest released version of `gcr.io/kaniko-project/executor`."
              | optional,
            imageFSExtractRetry
              | String
              | doc "number of retries that should happen for extracting an image filesystem."
              | optional,
            imageNameWithDigestFile
              | String
              | doc "specify a file to save the image name with digest of the built image to."
              | optional,
            initImage
              | String
              | doc "image used to run init container which mounts kaniko context."
              | optional,
            insecure
              | Bool
              | doc "if you want to push images to a plain HTTP registry."
              | optional,
            insecurePull
              | Bool
              | doc "if you want to pull images from a plain HTTP registry."
              | optional,
            insecureRegistry
              | Array String
              | doc "to use plain HTTP requests when accessing a registry."
              | optional,
            label
              | { _ | String }
              | doc "key: value to set some metadata to the final image. This is equivalent as using the LABEL within the Dockerfile."
              | optional,
            logFormat
              | String
              | doc "<text|color|json> to set the log format."
              | optional,
            logTimestamp
              | Bool
              | doc "to add timestamps to log format."
              | optional,
            noPush
              | Bool
              | doc "if you only want to build the image, without pushing to a registry."
              | optional,
            ociLayoutPath
              | String
              | doc "to specify a directory in the container where the OCI image layout of a built image will be placed. This can be used to automatically track the exact image built by kaniko."
              | optional,
            pushRetry
              | String
              | doc "Set this flag to the number of retries that should happen for the push of an image to a remote destination."
              | optional,
            registryCertificate
              | { _ | String }
              | doc "to provide a certificate for TLS communication with a given registry. my.registry.url: /path/to/the/certificate.cert is the expected format."
              | optional,
            registryMirror
              | String
              | doc "if you want to use a registry mirror instead of default `index.docker.io`."
              | optional,
            reproducible
              | Bool
              | doc "used to strip timestamps out of the built image."
              | optional,
            singleSnapshot
              | Bool
              | doc "takes a single snapshot of the filesystem at the end of the build. So only one layer will be appended to the base image."
              | optional,
            skipTLS
              | Bool
              | doc "skips TLS certificate validation when pushing to a registry."
              | optional,
            skipTLSVerifyPull
              | Bool
              | doc "skips TLS certificate validation when pulling from a registry."
              | optional,
            skipTLSVerifyRegistry
              | Array String
              | doc "skips TLS certificate validation when accessing a registry."
              | optional,
            skipUnusedStages
              | Bool
              | doc "builds only used stages if defined to true. Otherwise it builds by default all stages, even the unnecessaries ones until it reaches the target stage / end of Dockerfile."
              | optional,
            snapshotMode
              | String
              | doc "how Kaniko will snapshot the filesystem."
              | optional,
            tarPath
              | String
              | doc "path to save the image as a tarball at path instead of pushing the image."
              | optional,
            target
              | String
              | doc "to indicate which build stage is the target build stage."
              | optional,
            useNewRun
              | Bool
              | doc "to Use the experimental run implementation for detecting changes without requiring file system snapshots. In some cases, this may improve build performance by 75%."
              | optional,
            verbosity
              | String
              | doc "<panic|fatal|error|warn|info|debug|trace> to set the logging level."
              | optional,
            volumeMounts
              | Array js2n.Always
              | doc "volume mounts passed to kaniko pod."
              | optional,
            whitelistVarRun
              | Bool
              | doc "used to ignore `/var/run` when taking image snapshot. Set it to false to preserve /var/run/* in destination image."
              | optional,
          },
      "definitions.KanikoCache" =
        {
            cacheCopyLayers
              | Bool
              | doc "enables caching of copy layers."
              | optional,
            hostPath
              | String
              | doc "specifies a path on the host that is mounted to each pod as read only cache volume containing base images. If set, must exist on each node and prepopulated with kaniko-warmer."
              | optional,
            repo
              | String
              | doc "a remote repository to store cached layers. If none is specified, one will be inferred from the image name. See [Kaniko Caching](https://github.com/GoogleContainerTools/kaniko#caching)."
              | optional,
            ttl | String | doc "Cache timeout in hours." | optional,
          },
      "definitions.KoArtifact" =
        {
            dependencies
              | refs."definitions.KoDependencies"
              | { _ | Dyn }
              | doc "file dependencies that Skaffold should watch for both rebuilding and file syncing for this artifact."
              | optional,
            dir
              | String
              | doc "directory where the `go` tool will be run. The value is a directory path relative to the `context` directory. If empty, the `go` tool will run in the `context` directory. Example: `./my-app-sources`."
              | optional,
            env
              | Array String
              | doc "environment variables, in the `key=value` form, passed to the build. These environment variables are only used at build time. They are _not_ set in the resulting container image."
              | optional,
            flags
              | Array String
              | doc "additional build flags passed to `go build`."
              | optional,
            fromImage
              | String
              | doc "overrides the default ko base image (`gcr.io/distroless/static:nonroot`). Corresponds to, and overrides, the `defaultBaseImage` in `.ko.yaml`."
              | optional,
            labels
              | { _ | String }
              | doc "key-value string pairs to add to the image config."
              | optional,
            ldflags
              | Array String
              | doc "linker flags passed to the builder."
              | optional,
            main
              | String
              | doc "location of the main package. It is the pattern passed to `go build`. If main is specified as a relative path, it is relative to the `context` directory. If main is empty, the ko builder uses a default value of `.`. If main is a pattern with wildcards, such as `./...`, the expansion must contain only one main package, otherwise ko fails. Main is ignored if the `ImageName` starts with `ko://`. Example: `./cmd/foo`."
              | optional,
          },
      "definitions.KoDependencies" =
        {
            ignore
              | Array String
              | doc "specifies the paths that should be ignored by Skaffold's file watcher. If a file exists in both `paths` and in `ignore`, it will be ignored, and will be excluded from both rebuilds and file synchronization."
              | optional,
            paths
              | Array String
              | doc "should be set to the file dependencies for this artifact, so that the Skaffold file watcher knows when to rebuild and perform file synchronization."
              | optional,
          },
      "definitions.KptDeploy" =
        {
            applyFlags
              | Array String
              | doc "additional flags passed to `kpt live apply`."
              | optional,
            defaultNamespace
              | String
              | doc "default namespace passed to kpt on deployment if no other override is given."
              | optional,
            dir
              | String
              | doc "equivalent to the dir in `kpt live apply <dir>`. If not provided, skaffold deploys from the default hydrated path `<WORKDIR>/.kpt-pipeline`."
              | optional,
            "false"
              | Bool
              | doc "used in `kpt live init`, which forces the inventory values to be updated, even if they are already set."
              | optional,
            flags | Array String | doc "kpt global flags." | optional,
            inventoryID
              | String
              | doc "*alpha* inventory ID which annotates the resources being lively applied by kpt."
              | optional,
            name | String | doc "*alpha* inventory object name." | optional,
            namespace
              | String
              | doc "*alpha* sets the inventory namespace."
              | optional,
          },
      "definitions.KubectlDeploy" =
        {
            defaultNamespace
              | String
              | doc "default namespace passed to kubectl on deployment if no other override is given."
              | optional,
            flags
              | refs."definitions.KubectlFlags"
              | { _ | Dyn }
              | doc "additional flags passed to `kubectl`."
              | optional,
            hooks
              | refs."definitions.DeployHooks"
              | { _ | Dyn }
              | doc "describes a set of lifecycle hooks that are executed before and after every deploy."
              | optional,
            remoteManifests
              | Array String
              | doc "Kubernetes manifests in remote clusters."
              | optional,
          },
      "definitions.KubectlFlags" =
        {
            apply
              | Array String
              | doc "additional flags passed on creations (`kubectl apply`)."
              | optional,
            delete
              | Array String
              | doc "additional flags passed on deletions (`kubectl delete`)."
              | optional,
            disableValidation
              | Bool
              | doc "passes the `--validate=false` flag to supported `kubectl` commands when enabled."
              | optional,
            global
              | Array String
              | doc "additional flags passed on every command."
              | optional,
          },
      "definitions.Kustomize" =
        {
            buildArgs
              | Array String
              | doc "additional args passed to `kustomize build`."
              | optional,
            paths
              | Array String
              | doc "path to Kustomization files."
              | optional,
          },
      "definitions.LegacyHelmDeploy" =
        {
            flags
              | refs."definitions.HelmDeployFlags"
              | { _ | Dyn }
              | doc "additional option flags that are passed on the command line to `helm`."
              | optional,
            hooks
              | refs."definitions.DeployHooks"
              | { _ | Dyn }
              | doc "describes a set of lifecycle hooks that are executed before and after every deploy."
              | optional,
            releases
              | Array (
                std.contract.Sequence
                  [ refs."definitions.HelmRelease", { _ | Dyn } ]
              )
              | doc "a list of Helm releases."
              | optional,
          },
      "definitions.LocalBuild" =
        {
            concurrency
              | std.number.Integer
              | doc "how many artifacts can be built concurrently. 0 means \"no-limit\"."
              | optional,
            push
              | Bool
              | doc "should images be pushed to a registry. If not specified, images are pushed only if the current Kubernetes context connects to a remote cluster."
              | optional,
            tryImportMissing
              | Bool
              | doc "whether to attempt to import artifacts from Docker (either a local or remote registry) if not in the cache."
              | optional,
            useBuildkit
              | Bool
              | doc "use BuildKit to build Docker images. If unspecified, uses the Docker default."
              | optional,
            useDockerCLI
              | Bool
              | doc "use `docker` command-line interface instead of Docker Engine APIs."
              | optional,
          },
      "definitions.LogsConfig" =
        {
            jsonParse
              | refs."definitions.JSONParseConfig"
              | { _ | Dyn }
              | doc "defines the rules for parsing/outputting json logs."
              | optional,
            prefix
              | std.enum.TagOrString
              | [| 'none, 'auto, 'podAndContainer, 'container |]
              | doc "defines the prefix shown on each log line. Valid values are `container`: prefix logs lines with the name of the container. `podAndContainer`: prefix logs lines with the names of the pod and of the container. `auto`: same as `podAndContainer` except that the pod name is skipped if it's the same as the container name. `none`: don't add a prefix."
              | optional,
          },
      "definitions.Metadata" =
        {
            annotations
              | { _ | String }
              | doc "a map of annotations providing additional metadata about the project."
              | optional,
            labels
              | { _ | String }
              | doc "a map of labels identifying the project."
              | optional,
            name | String | doc "an identifier for the project." | optional,
          },
      "definitions.NamedContainerHook" =
        {
            command | Array String | doc "command to execute.",
            containerName
              | String
              | doc "name of the container to execute the command in."
              | optional,
            podName | String | doc "name of the pod to execute the command in.",
          },
      "definitions.PlatformEmulatorInstallStep" =
        {
            args
              | Array String
              | doc "specifies arguments passed to the emulator installer image."
              | optional,
            entrypoint
              | String
              | doc "specifies the ENTRYPOINT argument to the emulator installer image."
              | optional,
            image
              | String
              | doc "specifies the image that will install the required tooling for QEMU emulation on the GoogleCloudBuild containers.",
          },
      "definitions.PortForwardResource" =
        {
            address
              | String
              | doc "local address to bind to. Defaults to the loopback address 127.0.0.1."
              | optional,
            localPort
              | std.number.Integer
              | doc "local port to forward to. If the port is unavailable, Skaffold will choose a random open port to forward to. *Optional*."
              | optional,
            namespace
              | String
              | doc "namespace of the resource to port forward. Does not apply to local containers."
              | optional,
            port
              | std.contract.any_of [ String, std.number.Integer ]
              | doc "resource port that will be forwarded."
              | optional,
            resourceName
              | String
              | doc "name of the Kubernetes resource or local container to port forward."
              | optional,
            resourceType
              | String
              | doc "resource type that should be port forwarded. Acceptable resource types include kubernetes types: `Service`, `Pod` and Controller resource type that has a pod spec: `ReplicaSet`, `ReplicationController`, `Deployment`, `StatefulSet`, `DaemonSet`, `Job`, `CronJob`. Standalone `Container` is also valid for Docker deployments."
              | optional,
          },
      "definitions.Profile" =
        {
            activation
              | Array (
                std.contract.Sequence
                  [ refs."definitions.Activation", { _ | Dyn } ]
              )
              | doc "criteria by which a profile can be auto-activated. The profile is auto-activated if any one of the activations are triggered. An activation is triggered if all of the criteria (env, kubeContext, command) are triggered."
              | optional,
            build
              | refs."definitions.BuildConfig"
              | { _ | Dyn }
              | doc "describes how images are built."
              | optional,
            deploy
              | refs."definitions.DeployConfig"
              | { _ | Dyn }
              | doc "describes how the manifests are deployed."
              | optional,
            manifests
              | refs."definitions.RenderConfig"
              | { _ | Dyn }
              | doc "describes how the original manifests are hydrated, validated and transformed."
              | optional,
            name | String | doc "a unique profile name.",
            patches
              | Array (
                std.contract.Sequence
                  [ refs."definitions.JSONPatch", { _ | Dyn } ]
              )
              | doc "patches applied to the configuration. Patches use the JSON patch notation."
              | optional,
            portForward
              | Array (
                std.contract.Sequence
                  [ refs."definitions.PortForwardResource", { _ | Dyn } ]
              )
              | doc "describes user defined resources to port-forward."
              | optional,
            requiresAllActivations
              | Bool
              | doc "activation strategy of the profile. When true, the profile is auto-activated only when all of its activations are triggered. When false, the profile is auto-activated when any one of its activations is triggered."
              | optional,
            resourceSelector
              | refs."definitions.ResourceSelectorConfig"
              | { _ | Dyn }
              | doc "describes user defined filters describing how skaffold should treat objects/fields during rendering."
              | optional,
            test
              | Array (
                std.contract.Sequence
                  [ refs."definitions.TestCase", { _ | Dyn } ]
              )
              | doc "describes how images are tested."
              | optional,
            verify
              | Array (
                std.contract.Sequence
                  [ refs."definitions.VerifyTestCase", { _ | Dyn } ]
              )
              | doc "describes how images are verified (via verification tests)."
              | optional,
          },
      "definitions.ProfileDependency" =
        {
            activatedBy
              | Array String
              | doc "describes a list of profiles in the current config that when activated will also activate the named profile in the dependency config. If empty then the named profile is always activated."
              | optional,
            name
              | String
              | doc "describes name of the profile to activate in the dependency config. It should exist in the dependency config.",
          },
      "definitions.RenderConfig" =
        {
            helm
              | refs."definitions.Helm"
              | { _ | Dyn }
              | doc "defines the helm charts used in the application. NOTE: Defines cherts in this section to render via helm but deployed via kubectl or kpt deployer. To use helm to deploy, please see deploy.helm section."
              | optional,
            hooks
              | refs."definitions.RenderHooks"
              | { _ | Dyn }
              | doc "describes a set of lifecycle hooks that are executed before and after every render."
              | optional,
            kpt
              | Array String
              | doc "defines the kpt resources in the application."
              | optional,
            kustomize
              | refs."definitions.Kustomize"
              | { _ | Dyn }
              | doc "defines the paths to be modified with kustomize, along with extra flags to be passed to kustomize."
              | optional,
            output | String | doc "path to the hydrated directory." | optional,
            rawYaml
              | Array String
              | doc "defines the raw kubernetes resources."
              | optional,
            transform
              | std.contract.any_of
                [ js2n.Null, Bool, Number, String, { _ | Dyn }, Array Dyn ]
              | doc "defines a set of transformation operations to run in series."
              | optional,
            validate
              | std.contract.any_of
                [ js2n.Null, Bool, Number, String, { _ | Dyn }, Array Dyn ]
              | doc "defines a set of validator operations to run in series."
              | optional,
          },
      "definitions.RenderHookItem" =
        {
            host
              | refs."definitions.HostHook"
              | { _ | Dyn }
              | doc "describes a single lifecycle hook to run on the host machine."
              | optional,
          },
      "definitions.RenderHooks" =
        {
            after
              | Array (
                std.contract.Sequence
                  [ refs."definitions.RenderHookItem", { _ | Dyn } ]
              )
              | doc "describes the list of lifecycle hooks to execute *after* each render step."
              | optional,
            before
              | Array (
                std.contract.Sequence
                  [ refs."definitions.RenderHookItem", { _ | Dyn } ]
              )
              | doc "describes the list of lifecycle hooks to execute *before* each render step. Container hooks will only run if the container exists from a previous deployment step (for instance the successive iterations of a dev-loop during `skaffold dev`)."
              | optional,
          },
      "definitions.ResourceFilter" =
        {
            groupKind | String | doc "compact format of a resource type.",
            image
              | Array String
              | doc "an optional slice of JSON-path-like paths of where to rewrite images."
              | optional,
            labels
              | Array String
              | doc "an optional slice of JSON-path-like paths of where to add a labels block if missing."
              | optional,
            podSpec
              | Array String
              | doc "an optional slice of JSON-path-like paths of where pod spec properties can be overwritten."
              | optional,
          },
      "definitions.ResourceRequirement" =
        {
            cpu | String | doc "the number cores to be used." | optional,
            ephemeralStorage
              | String
              | doc "the amount of Ephemeral storage to allocate to the pod."
              | optional,
            memory
              | String
              | doc "the amount of memory to allocate to the pod."
              | optional,
            resourceStorage
              | String
              | doc "the amount of resource storage to allocate to the pod."
              | optional,
          },
      "definitions.ResourceRequirements" =
        {
            limits
              | refs."definitions.ResourceRequirement"
              | { _ | Dyn }
              | doc "[resource limits](https://kubernetes.io/docs/concepts/configuration/manage-compute-resources-container/#resource-requests-and-limits-of-pod-and-container) for the Kaniko pod."
              | optional,
            requests
              | refs."definitions.ResourceRequirement"
              | { _ | Dyn }
              | doc "[resource requests](https://kubernetes.io/docs/concepts/configuration/manage-compute-resources-container/#resource-requests-and-limits-of-pod-and-container) for the Kaniko pod."
              | optional,
          },
      "definitions.ResourceSelectorConfig" =
        {
            allow
              | Array (
                std.contract.Sequence
                  [ refs."definitions.ResourceFilter", { _ | Dyn } ]
              )
              | doc "configures an allowlist for transforming manifests."
              | optional,
            deny
              | Array (
                std.contract.Sequence
                  [ refs."definitions.ResourceFilter", { _ | Dyn } ]
              )
              | doc "configures an allowlist for transforming manifests."
              | optional,
          },
      "definitions.ShaTagger" = { _ | Dyn },
      "definitions.SkaffoldConfig" =
        {
            apiVersion | String | doc "version of the configuration.",
            build
              | refs."definitions.BuildConfig"
              | { _ | Dyn }
              | doc "describes how images are built."
              | optional,
            deploy
              | refs."definitions.DeployConfig"
              | { _ | Dyn }
              | doc "describes how the manifests are deployed."
              | optional,
            kind | String | doc "always `Config`.",
            manifests
              | refs."definitions.RenderConfig"
              | { _ | Dyn }
              | doc "describes how the original manifests are hydrated, validated and transformed."
              | optional,
            metadata
              | refs."definitions.Metadata"
              | { _ | Dyn }
              | doc "holds additional information about the config."
              | optional,
            portForward
              | Array (
                std.contract.Sequence
                  [ refs."definitions.PortForwardResource", { _ | Dyn } ]
              )
              | doc "describes user defined resources to port-forward."
              | optional,
            profiles
              | Array (
                std.contract.Sequence
                  [ refs."definitions.Profile", { _ | Dyn } ]
              )
              | doc "*beta* can override be used to `build`, `test` or `deploy` configuration."
              | optional,
            requires
              | Array (
                std.contract.Sequence
                  [ refs."definitions.ConfigDependency", { _ | Dyn } ]
              )
              | doc "describes a list of other required configs for the current config."
              | optional,
            resourceSelector
              | refs."definitions.ResourceSelectorConfig"
              | { _ | Dyn }
              | doc "describes user defined filters describing how skaffold should treat objects/fields during rendering."
              | optional,
            test
              | Array (
                std.contract.Sequence
                  [ refs."definitions.TestCase", { _ | Dyn } ]
              )
              | doc "describes how images are tested."
              | optional,
            verify
              | Array (
                std.contract.Sequence
                  [ refs."definitions.VerifyTestCase", { _ | Dyn } ]
              )
              | doc "describes how images are verified (via verification tests)."
              | optional,
          },
      "definitions.Sync" =
        {
            auto
              | Bool
              | doc "delegates discovery of sync rules to the build system. Only available for jib and buildpacks."
              | optional,
            hooks
              | refs."definitions.SyncHooks"
              | { _ | Dyn }
              | doc "describes a set of lifecycle hooks that are executed before and after each file sync action on the target artifact's containers."
              | optional,
            infer
              | Array String
              | doc "file patterns which may be synced into the container The container destination is inferred by the builder based on the instructions of a Dockerfile. Available for docker and kaniko artifacts and custom artifacts that declare dependencies on a dockerfile."
              | optional,
            manual
              | Array (
                std.contract.Sequence
                  [ refs."definitions.SyncRule", { _ | Dyn } ]
              )
              | doc "manual sync rules indicating the source and destination."
              | optional,
          },
      "definitions.SyncHookItem" =
        {
            container
              | refs."definitions.ContainerHook"
              | { _ | Dyn }
              | doc "describes a single lifecycle hook to run on a container."
              | optional,
            host
              | refs."definitions.HostHook"
              | { _ | Dyn }
              | doc "describes a single lifecycle hook to run on the host machine."
              | optional,
          },
      "definitions.SyncHooks" =
        {
            after
              | Array (
                std.contract.Sequence
                  [ refs."definitions.SyncHookItem", { _ | Dyn } ]
              )
              | doc "describes the list of lifecycle hooks to execute *after* each artifact sync step."
              | optional,
            before
              | Array (
                std.contract.Sequence
                  [ refs."definitions.SyncHookItem", { _ | Dyn } ]
              )
              | doc "describes the list of lifecycle hooks to execute *before* each artifact sync step."
              | optional,
          },
      "definitions.SyncRule" =
        {
            dest
              | String
              | doc "destination path in the container where the files should be synced to.",
            src
              | String
              | doc "a glob pattern to match local paths against. Directories should be delimited by `/` on all platforms.",
            strip
              | String
              | doc "specifies the path prefix to remove from the source path when transplanting the files into the destination folder."
              | optional,
          },
      "definitions.TagPolicy" =
        {
            customTemplate
              | refs."definitions.CustomTemplateTagger"
              | { _ | Dyn }
              | doc "*beta* tags images with a configurable template string *composed of other taggers*."
              | optional,
            dateTime
              | refs."definitions.DateTimeTagger"
              | { _ | Dyn }
              | doc "*beta* tags images with the build timestamp."
              | optional,
            envTemplate
              | refs."definitions.EnvTemplateTagger"
              | { _ | Dyn }
              | doc "*beta* tags images with a configurable template string."
              | optional,
            gitCommit
              | refs."definitions.GitTagger"
              | { _ | Dyn }
              | doc "*beta* tags images with the git tag or commit of the artifact's workspace."
              | optional,
            inputDigest
              | refs."definitions.InputDigest"
              | { _ | Dyn }
              | doc "*beta* tags images with their sha256 digest of their content."
              | optional,
            sha256
              | refs."definitions.ShaTagger"
              | { _ | Dyn }
              | doc "*beta* tags images with their sha256 digest."
              | optional,
          },
      "definitions.TaggerComponent" =
        std.contract.any_of
            [
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties = { name = String, },
                  required = {},
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        gitCommit =
                          std.contract.Sequence
                              [ refs."definitions.GitTagger", { _ | Dyn } ],
                        name = String,
                      },
                  required = {},
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        name = String,
                        sha256 =
                          std.contract.Sequence
                              [ refs."definitions.ShaTagger", { _ | Dyn } ],
                      },
                  required = {},
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        envTemplate =
                          std.contract.Sequence
                              [
                                refs."definitions.EnvTemplateTagger",
                                { _ | Dyn }
                              ],
                        name = String,
                      },
                  required = {},
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        dateTime =
                          std.contract.Sequence
                              [
                                refs."definitions.DateTimeTagger",
                                { _ | Dyn }
                              ],
                        name = String,
                      },
                  required = {},
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        customTemplate =
                          std.contract.Sequence
                              [
                                refs."definitions.CustomTemplateTagger",
                                { _ | Dyn }
                              ],
                        name = String,
                      },
                  required = {},
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        inputDigest =
                          std.contract.Sequence
                              [ refs."definitions.InputDigest", { _ | Dyn } ],
                        name = String,
                      },
                  required = {},
                }
            ],
      "definitions.TestCase" =
        {
            context
              | String
              | doc "directory containing the test sources."
              | optional,
            custom
              | Array (
                std.contract.Sequence
                  [ refs."definitions.CustomTest", { _ | Dyn } ]
              )
              | doc "the set of custom tests to run after an artifact is built."
              | optional,
            image | String | doc "artifact on which to run those tests.",
            structureTests
              | Array String
              | doc "the [Container Structure Tests](https://github.com/GoogleContainerTools/container-structure-test) to run on that artifact."
              | optional,
            structureTestsArgs
              | Array String
              | doc "additional configuration arguments passed to `container-structure-test` binary."
              | optional,
          },
      "definitions.VerifyTestCase" =
        {
            container
              | std.contract.any_of
                [ js2n.Null, Bool, Number, String, { _ | Dyn }, Array Dyn ]
              | doc "container information for the verify test."
              | optional,
            name | String | doc "name descriptor for the verify test.",
          },
    }
    in
  refs."definitions.SkaffoldConfig"