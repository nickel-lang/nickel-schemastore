# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.io.argoproj.workflow.v1alpha1.Amount" = Number,
      "definitions.io.argoproj.workflow.v1alpha1.ArchiveStrategy" =
        {
            none
              | refs."definitions.io.argoproj.workflow.v1alpha1.NoneStrategy"
              | { _ | Dyn }
              | optional,
            tar
              | refs."definitions.io.argoproj.workflow.v1alpha1.TarStrategy"
              | { _ | Dyn }
              | optional,
            zip
              | refs."definitions.io.argoproj.workflow.v1alpha1.ZipStrategy"
              | { _ | Dyn }
              | optional,
            ..
          },
      "definitions.io.argoproj.workflow.v1alpha1.Arguments" =
        {
            artifacts
              | Array (
                std.contract.Sequence
                  [
                    refs."definitions.io.argoproj.workflow.v1alpha1.Artifact",
                    { _ | Dyn }
                  ]
              )
              | doc "Artifacts is the list of artifacts to pass to the template or workflow"
              | optional,
            parameters
              | Array (
                std.contract.Sequence
                  [
                    refs."definitions.io.argoproj.workflow.v1alpha1.Parameter",
                    { _ | Dyn }
                  ]
              )
              | doc "Parameters is the list of parameters to pass to the template or workflow"
              | optional,
            ..
          },
      "definitions.io.argoproj.workflow.v1alpha1.ArtGCStatus" =
        {
            notSpecified
              | Bool
              | doc "if this is true, we already checked to see if we need to do it and we don't"
              | optional,
            podsRecouped
              | { _ | Bool }
              | doc "have completed Pods been processed? (mapped by Pod name) used to prevent re-processing the Status of a Pod more than once"
              | optional,
            strategiesProcessed
              | { _ | Bool }
              | doc "have Pods been started to perform this strategy? (enables us not to re-process what we've already done)"
              | optional,
            ..
          },
      "definitions.io.argoproj.workflow.v1alpha1.Artifact" =
        {
            archive
              | refs."definitions.io.argoproj.workflow.v1alpha1.ArchiveStrategy"
              | { _ | Dyn }
              | doc "Archive controls how the artifact will be saved to the artifact repository."
              | optional,
            archiveLogs
              | Bool
              | doc "ArchiveLogs indicates if the container logs should be archived"
              | optional,
            artifactGC
              | refs."definitions.io.argoproj.workflow.v1alpha1.ArtifactGC"
              | { _ | Dyn }
              | doc "ArtifactGC describes the strategy to use when to deleting an artifact from completed or deleted workflows"
              | optional,
            artifactory
              | refs."definitions.io.argoproj.workflow.v1alpha1.ArtifactoryArtifact"
              | { _ | Dyn }
              | doc "Artifactory contains artifactory artifact location details"
              | optional,
            azure
              | refs."definitions.io.argoproj.workflow.v1alpha1.AzureArtifact"
              | { _ | Dyn }
              | doc "Azure contains Azure Storage artifact location details"
              | optional,
            deleted | Bool | doc "Has this been deleted?" | optional,
            from
              | String
              | doc "From allows an artifact to reference an artifact from a previous step"
              | optional,
            fromExpression
              | String
              | doc "FromExpression, if defined, is evaluated to specify the value for the artifact"
              | optional,
            gcs
              | refs."definitions.io.argoproj.workflow.v1alpha1.GCSArtifact"
              | { _ | Dyn }
              | doc "GCS contains GCS artifact location details"
              | optional,
            git
              | refs."definitions.io.argoproj.workflow.v1alpha1.GitArtifact"
              | { _ | Dyn }
              | doc "Git contains git artifact location details"
              | optional,
            globalName
              | String
              | doc "GlobalName exports an output artifact to the global scope, making it available as '{{io.argoproj.workflow.v1alpha1.outputs.artifacts.XXXX}} and in workflow.status.outputs.artifacts"
              | optional,
            hdfs
              | refs."definitions.io.argoproj.workflow.v1alpha1.HDFSArtifact"
              | { _ | Dyn }
              | doc "HDFS contains HDFS artifact location details"
              | optional,
            http
              | refs."definitions.io.argoproj.workflow.v1alpha1.HTTPArtifact"
              | { _ | Dyn }
              | doc "HTTP contains HTTP artifact location details"
              | optional,
            mode
              | std.number.Integer
              | doc "mode bits to use on this file, must be a value between 0 and 0777 set when loading input artifacts."
              | optional,
            name
              | String
              | doc "name of the artifact. must be unique within a template's inputs/outputs.",
            "optional"
              | Bool
              | doc "Make Artifacts optional, if Artifacts doesn't generate or exist"
              | optional,
            oss
              | refs."definitions.io.argoproj.workflow.v1alpha1.OSSArtifact"
              | { _ | Dyn }
              | doc "OSS contains OSS artifact location details"
              | optional,
            path
              | String
              | doc "Path is the container path to the artifact"
              | optional,
            raw
              | refs."definitions.io.argoproj.workflow.v1alpha1.RawArtifact"
              | { _ | Dyn }
              | doc "Raw contains raw artifact location details"
              | optional,
            recurseMode
              | Bool
              | doc "If mode is set, apply the permission recursively into the artifact if it is a folder"
              | optional,
            s3
              | refs."definitions.io.argoproj.workflow.v1alpha1.S3Artifact"
              | { _ | Dyn }
              | doc "S3 contains S3 artifact location details"
              | optional,
            subPath
              | String
              | doc "SubPath allows an artifact to be sourced from a subpath within the specified source"
              | optional,
            ..
          },
      "definitions.io.argoproj.workflow.v1alpha1.ArtifactGC" =
        {
            podMetadata
              | refs."definitions.io.argoproj.workflow.v1alpha1.Metadata"
              | { _ | Dyn }
              | doc "PodMetadata is an optional field for specifying the Labels and Annotations that should be assigned to the Pod doing the deletion"
              | optional,
            serviceAccountName
              | String
              | doc "ServiceAccountName is an optional field for specifying the Service Account that should be assigned to the Pod doing the deletion"
              | optional,
            strategy
              | String
              | doc "Strategy is the strategy to use."
              | optional,
            ..
          },
      "definitions.io.argoproj.workflow.v1alpha1.ArtifactLocation" =
        {
            archiveLogs
              | Bool
              | doc "ArchiveLogs indicates if the container logs should be archived"
              | optional,
            artifactory
              | refs."definitions.io.argoproj.workflow.v1alpha1.ArtifactoryArtifact"
              | { _ | Dyn }
              | doc "Artifactory contains artifactory artifact location details"
              | optional,
            azure
              | refs."definitions.io.argoproj.workflow.v1alpha1.AzureArtifact"
              | { _ | Dyn }
              | doc "Azure contains Azure Storage artifact location details"
              | optional,
            gcs
              | refs."definitions.io.argoproj.workflow.v1alpha1.GCSArtifact"
              | { _ | Dyn }
              | doc "GCS contains GCS artifact location details"
              | optional,
            git
              | refs."definitions.io.argoproj.workflow.v1alpha1.GitArtifact"
              | { _ | Dyn }
              | doc "Git contains git artifact location details"
              | optional,
            hdfs
              | refs."definitions.io.argoproj.workflow.v1alpha1.HDFSArtifact"
              | { _ | Dyn }
              | doc "HDFS contains HDFS artifact location details"
              | optional,
            http
              | refs."definitions.io.argoproj.workflow.v1alpha1.HTTPArtifact"
              | { _ | Dyn }
              | doc "HTTP contains HTTP artifact location details"
              | optional,
            oss
              | refs."definitions.io.argoproj.workflow.v1alpha1.OSSArtifact"
              | { _ | Dyn }
              | doc "OSS contains OSS artifact location details"
              | optional,
            raw
              | refs."definitions.io.argoproj.workflow.v1alpha1.RawArtifact"
              | { _ | Dyn }
              | doc "Raw contains raw artifact location details"
              | optional,
            s3
              | refs."definitions.io.argoproj.workflow.v1alpha1.S3Artifact"
              | { _ | Dyn }
              | doc "S3 contains S3 artifact location details"
              | optional,
            ..
          },
      "definitions.io.argoproj.workflow.v1alpha1.ArtifactPaths" =
        {
            archive
              | refs."definitions.io.argoproj.workflow.v1alpha1.ArchiveStrategy"
              | { _ | Dyn }
              | doc "Archive controls how the artifact will be saved to the artifact repository."
              | optional,
            archiveLogs
              | Bool
              | doc "ArchiveLogs indicates if the container logs should be archived"
              | optional,
            artifactGC
              | refs."definitions.io.argoproj.workflow.v1alpha1.ArtifactGC"
              | { _ | Dyn }
              | doc "ArtifactGC describes the strategy to use when to deleting an artifact from completed or deleted workflows"
              | optional,
            artifactory
              | refs."definitions.io.argoproj.workflow.v1alpha1.ArtifactoryArtifact"
              | { _ | Dyn }
              | doc "Artifactory contains artifactory artifact location details"
              | optional,
            azure
              | refs."definitions.io.argoproj.workflow.v1alpha1.AzureArtifact"
              | { _ | Dyn }
              | doc "Azure contains Azure Storage artifact location details"
              | optional,
            deleted | Bool | doc "Has this been deleted?" | optional,
            from
              | String
              | doc "From allows an artifact to reference an artifact from a previous step"
              | optional,
            fromExpression
              | String
              | doc "FromExpression, if defined, is evaluated to specify the value for the artifact"
              | optional,
            gcs
              | refs."definitions.io.argoproj.workflow.v1alpha1.GCSArtifact"
              | { _ | Dyn }
              | doc "GCS contains GCS artifact location details"
              | optional,
            git
              | refs."definitions.io.argoproj.workflow.v1alpha1.GitArtifact"
              | { _ | Dyn }
              | doc "Git contains git artifact location details"
              | optional,
            globalName
              | String
              | doc "GlobalName exports an output artifact to the global scope, making it available as '{{io.argoproj.workflow.v1alpha1.outputs.artifacts.XXXX}} and in workflow.status.outputs.artifacts"
              | optional,
            hdfs
              | refs."definitions.io.argoproj.workflow.v1alpha1.HDFSArtifact"
              | { _ | Dyn }
              | doc "HDFS contains HDFS artifact location details"
              | optional,
            http
              | refs."definitions.io.argoproj.workflow.v1alpha1.HTTPArtifact"
              | { _ | Dyn }
              | doc "HTTP contains HTTP artifact location details"
              | optional,
            mode
              | std.number.Integer
              | doc "mode bits to use on this file, must be a value between 0 and 0777 set when loading input artifacts."
              | optional,
            name
              | String
              | doc "name of the artifact. must be unique within a template's inputs/outputs.",
            "optional"
              | Bool
              | doc "Make Artifacts optional, if Artifacts doesn't generate or exist"
              | optional,
            oss
              | refs."definitions.io.argoproj.workflow.v1alpha1.OSSArtifact"
              | { _ | Dyn }
              | doc "OSS contains OSS artifact location details"
              | optional,
            path
              | String
              | doc "Path is the container path to the artifact"
              | optional,
            raw
              | refs."definitions.io.argoproj.workflow.v1alpha1.RawArtifact"
              | { _ | Dyn }
              | doc "Raw contains raw artifact location details"
              | optional,
            recurseMode
              | Bool
              | doc "If mode is set, apply the permission recursively into the artifact if it is a folder"
              | optional,
            s3
              | refs."definitions.io.argoproj.workflow.v1alpha1.S3Artifact"
              | { _ | Dyn }
              | doc "S3 contains S3 artifact location details"
              | optional,
            subPath
              | String
              | doc "SubPath allows an artifact to be sourced from a subpath within the specified source"
              | optional,
            ..
          },
      "definitions.io.argoproj.workflow.v1alpha1.ArtifactRepository" =
        {
            archiveLogs
              | Bool
              | doc "ArchiveLogs enables log archiving"
              | optional,
            artifactory
              | refs."definitions.io.argoproj.workflow.v1alpha1.ArtifactoryArtifactRepository"
              | { _ | Dyn }
              | doc "Artifactory stores artifacts to JFrog Artifactory"
              | optional,
            azure
              | refs."definitions.io.argoproj.workflow.v1alpha1.AzureArtifactRepository"
              | { _ | Dyn }
              | doc "Azure stores artifact in an Azure Storage account"
              | optional,
            gcs
              | refs."definitions.io.argoproj.workflow.v1alpha1.GCSArtifactRepository"
              | { _ | Dyn }
              | doc "GCS stores artifact in a GCS object store"
              | optional,
            hdfs
              | refs."definitions.io.argoproj.workflow.v1alpha1.HDFSArtifactRepository"
              | { _ | Dyn }
              | doc "HDFS stores artifacts in HDFS"
              | optional,
            oss
              | refs."definitions.io.argoproj.workflow.v1alpha1.OSSArtifactRepository"
              | { _ | Dyn }
              | doc "OSS stores artifact in a OSS-compliant object store"
              | optional,
            s3
              | refs."definitions.io.argoproj.workflow.v1alpha1.S3ArtifactRepository"
              | { _ | Dyn }
              | doc "S3 stores artifact in a S3-compliant object store"
              | optional,
            ..
          },
      "definitions.io.argoproj.workflow.v1alpha1.ArtifactRepositoryRef" =
        {
            configMap
              | String
              | doc "The name of the config map. Defaults to \"artifact-repositories\"."
              | optional,
            key
              | String
              | doc "The config map key. Defaults to the value of the \"workflows.argoproj.io/default-artifact-repository\" annotation."
              | optional,
            ..
          },
      "definitions.io.argoproj.workflow.v1alpha1.ArtifactRepositoryRefStatus" =
        {
            artifactRepository
              | refs."definitions.io.argoproj.workflow.v1alpha1.ArtifactRepository"
              | { _ | Dyn }
              | doc "The repository the workflow will use. This maybe empty before v3.1."
              | optional,
            configMap
              | String
              | doc "The name of the config map. Defaults to \"artifact-repositories\"."
              | optional,
            "default"
              | Bool
              | doc "If this ref represents the default artifact repository, rather than a config map."
              | optional,
            key
              | String
              | doc "The config map key. Defaults to the value of the \"workflows.argoproj.io/default-artifact-repository\" annotation."
              | optional,
            namespace
              | String
              | doc "The namespace of the config map. Defaults to the workflow's namespace, or the controller's namespace (if found)."
              | optional,
            ..
          },
      "definitions.io.argoproj.workflow.v1alpha1.ArtifactoryArtifact" =
        {
            passwordSecret
              | refs."definitions.io.k8s.api.core.v1.SecretKeySelector"
              | { _ | Dyn }
              | doc "PasswordSecret is the secret selector to the repository password"
              | optional,
            url | String | doc "URL of the artifact",
            usernameSecret
              | refs."definitions.io.k8s.api.core.v1.SecretKeySelector"
              | { _ | Dyn }
              | doc "UsernameSecret is the secret selector to the repository username"
              | optional,
            ..
          },
      "definitions.io.argoproj.workflow.v1alpha1.ArtifactoryArtifactRepository" =
        {
            keyFormat
              | String
              | doc "KeyFormat defines the format of how to store keys and can reference workflow variables."
              | optional,
            passwordSecret
              | refs."definitions.io.k8s.api.core.v1.SecretKeySelector"
              | { _ | Dyn }
              | doc "PasswordSecret is the secret selector to the repository password"
              | optional,
            repoURL
              | String
              | doc "RepoURL is the url for artifactory repo."
              | optional,
            usernameSecret
              | refs."definitions.io.k8s.api.core.v1.SecretKeySelector"
              | { _ | Dyn }
              | doc "UsernameSecret is the secret selector to the repository username"
              | optional,
            ..
          },
      "definitions.io.argoproj.workflow.v1alpha1.AzureArtifact" =
        {
            accountKeySecret
              | refs."definitions.io.k8s.api.core.v1.SecretKeySelector"
              | { _ | Dyn }
              | doc "AccountKeySecret is the secret selector to the Azure Blob Storage account access key"
              | optional,
            blob
              | String
              | doc "Blob is the blob name (i.e., path) in the container where the artifact resides",
            container
              | String
              | doc "Container is the container where resources will be stored",
            endpoint
              | String
              | doc "Endpoint is the service url associated with an account. It is most likely \"https://<ACCOUNT_NAME>.blob.core.windows.net\"",
            useSDKCreds
              | Bool
              | doc "UseSDKCreds tells the driver to figure out credentials based on sdk defaults."
              | optional,
            ..
          },
      "definitions.io.argoproj.workflow.v1alpha1.AzureArtifactRepository" =
        {
            accountKeySecret
              | refs."definitions.io.k8s.api.core.v1.SecretKeySelector"
              | { _ | Dyn }
              | doc "AccountKeySecret is the secret selector to the Azure Blob Storage account access key"
              | optional,
            blobNameFormat
              | String
              | doc "BlobNameFormat is defines the format of how to store blob names. Can reference workflow variables"
              | optional,
            container
              | String
              | doc "Container is the container where resources will be stored",
            endpoint
              | String
              | doc "Endpoint is the service url associated with an account. It is most likely \"https://<ACCOUNT_NAME>.blob.core.windows.net\"",
            useSDKCreds
              | Bool
              | doc "UseSDKCreds tells the driver to figure out credentials based on sdk defaults."
              | optional,
            ..
          },
      "definitions.io.argoproj.workflow.v1alpha1.Backoff" =
        {
            cap
              | String
              | doc "Cap is a limit on revised values of the duration parameter. If a multiplication by the factor parameter would make the duration exceed the cap then the duration is set to the cap"
              | optional,
            duration
              | String
              | doc "Duration is the amount to back off. Default unit is seconds, but could also be a duration (e.g. \"2m\", \"1h\")"
              | optional,
            factor
              | refs."definitions.io.k8s.apimachinery.pkg.util.intstr.IntOrString"
              | String
              | doc "Factor is a factor to multiply the base duration after each failed retry"
              | optional,
            maxDuration
              | String
              | doc "MaxDuration is the maximum amount of time allowed for a workflow in the backoff strategy. It is important to note that if the workflow template includes activeDeadlineSeconds, the pod's deadline is initially set with activeDeadlineSeconds. However, when the workflow fails, the pod's deadline is then overridden by maxDuration. This ensures that the workflow does not exceed the specified maximum duration when retries are involved."
              | optional,
            ..
          },
      "definitions.io.argoproj.workflow.v1alpha1.BasicAuth" =
        {
            passwordSecret
              | refs."definitions.io.k8s.api.core.v1.SecretKeySelector"
              | { _ | Dyn }
              | doc "PasswordSecret is the secret selector to the repository password"
              | optional,
            usernameSecret
              | refs."definitions.io.k8s.api.core.v1.SecretKeySelector"
              | { _ | Dyn }
              | doc "UsernameSecret is the secret selector to the repository username"
              | optional,
            ..
          },
      "definitions.io.argoproj.workflow.v1alpha1.Cache" =
        {
            configMap
              | refs."definitions.io.k8s.api.core.v1.ConfigMapKeySelector"
              | { _ | Dyn }
              | doc "ConfigMap sets a ConfigMap-based cache",
            ..
          },
      "definitions.io.argoproj.workflow.v1alpha1.ClientCertAuth" =
        {
            clientCertSecret
              | refs."definitions.io.k8s.api.core.v1.SecretKeySelector"
              | { _ | Dyn }
              | optional,
            clientKeySecret
              | refs."definitions.io.k8s.api.core.v1.SecretKeySelector"
              | { _ | Dyn }
              | optional,
            ..
          },
      "definitions.io.argoproj.workflow.v1alpha1.ClusterWorkflowTemplate" =
        {
            apiVersion
              | std.contract.Equal "argoproj.io/v1alpha1"
              | doc "APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.io.k8s.community/contributors/devel/sig-architecture/api-conventions.md#resources"
              | optional,
            kind
              | std.contract.Equal "ClusterWorkflowTemplate"
              | doc "Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.io.k8s.community/contributors/devel/sig-architecture/api-conventions.md#types-kinds"
              | optional,
            metadata
              | refs."definitions.io.k8s.apimachinery.pkg.apis.meta.v1.ObjectMeta"
              | { _ | Dyn },
            spec
              | refs."definitions.io.argoproj.workflow.v1alpha1.WorkflowSpec"
              | { _ | Dyn },
            ..
          },
      "definitions.io.argoproj.workflow.v1alpha1.Condition" =
        {
            message
              | String
              | doc "Message is the condition message"
              | optional,
            status
              | String
              | doc "Status is the status of the condition"
              | optional,
            type | String | doc "Type is the type of condition" | optional,
            ..
          },
      "definitions.io.argoproj.workflow.v1alpha1.ContainerNode" =
        {
            args
              | Array String
              | doc "Arguments to the entrypoint. The container image's CMD is used if this is not provided. Variable references $(VAR_NAME) are expanded using the container's environment. If a variable cannot be resolved, the reference in the input string will be unchanged. Double $$ are reduced to a single $, which allows for escaping the $(VAR_NAME) syntax: i.e. \"$$(VAR_NAME)\" will produce the string literal \"$(VAR_NAME)\". Escaped references will never be expanded, regardless of whether the variable exists or not. Cannot be updated. More info: https://kubernetes.io/docs/tasks/inject-data-application/define-command-argument-container/#running-a-command-in-a-shell"
              | optional,
            command
              | Array String
              | doc "Entrypoint array. Not executed within a shell. The container image's ENTRYPOINT is used if this is not provided. Variable references $(VAR_NAME) are expanded using the container's environment. If a variable cannot be resolved, the reference in the input string will be unchanged. Double $$ are reduced to a single $, which allows for escaping the $(VAR_NAME) syntax: i.e. \"$$(VAR_NAME)\" will produce the string literal \"$(VAR_NAME)\". Escaped references will never be expanded, regardless of whether the variable exists or not. Cannot be updated. More info: https://kubernetes.io/docs/tasks/inject-data-application/define-command-argument-container/#running-a-command-in-a-shell"
              | optional,
            dependencies | Array String | optional,
            env
              | Array (
                std.contract.Sequence
                  [ refs."definitions.io.k8s.api.core.v1.EnvVar", { _ | Dyn } ]
              )
              | doc "List of environment variables to set in the container. Cannot be updated."
              | optional,
            envFrom
              | Array (
                std.contract.Sequence
                  [
                    refs."definitions.io.k8s.api.core.v1.EnvFromSource",
                    { _ | Dyn }
                  ]
              )
              | doc "List of sources to populate environment variables in the container. The keys defined within a source must be a C_IDENTIFIER. All invalid keys will be reported as an event when the container is starting. When a key exists in multiple sources, the value associated with the last source will take precedence. Values defined by an Env with a duplicate key will take precedence. Cannot be updated."
              | optional,
            image
              | String
              | doc "Container image name. More info: https://kubernetes.io/docs/concepts/containers/images This field is optional to allow higher level config management to default or override container images in workload controllers like Deployments and StatefulSets."
              | optional,
            imagePullPolicy
              | String
              | doc "Image pull policy. One of Always, Never, IfNotPresent. Defaults to Always if :latest tag is specified, or IfNotPresent otherwise. Cannot be updated. More info: https://kubernetes.io/docs/concepts/containers/images#updating-images"
              | optional,
            lifecycle
              | refs."definitions.io.k8s.api.core.v1.Lifecycle"
              | { _ | Dyn }
              | doc "Actions that the management system should take in response to container lifecycle events. Cannot be updated."
              | optional,
            livenessProbe
              | refs."definitions.io.k8s.api.core.v1.Probe"
              | { _ | Dyn }
              | doc "Periodic probe of container liveness. Container will be restarted if the probe fails. Cannot be updated. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes"
              | optional,
            name
              | String
              | doc "Name of the container specified as a DNS_LABEL. Each container in a pod must have a unique name (DNS_LABEL). Cannot be updated.",
            ports
              | Array (
                std.contract.Sequence
                  [
                    refs."definitions.io.k8s.api.core.v1.ContainerPort",
                    { _ | Dyn }
                  ]
              )
              | doc "List of ports to expose from the container. Not specifying a port here DOES NOT prevent that port from being exposed. Any port which is listening on the default \"0.0.0.0\" address inside a container will be accessible from the network. Modifying this array with strategic merge patch may corrupt the data. For more information See https://github.com/kubernetes/kubernetes/issues/108255. Cannot be updated."
              | optional,
            readinessProbe
              | refs."definitions.io.k8s.api.core.v1.Probe"
              | { _ | Dyn }
              | doc "Periodic probe of container service readiness. Container will be removed from service endpoints if the probe fails. Cannot be updated. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes"
              | optional,
            resizePolicy
              | Array (
                std.contract.Sequence
                  [
                    refs."definitions.io.k8s.api.core.v1.ContainerResizePolicy",
                    { _ | Dyn }
                  ]
              )
              | doc "Resources resize policy for the container."
              | optional,
            resources
              | refs."definitions.io.k8s.api.core.v1.ResourceRequirements"
              | { _ | Dyn }
              | doc "Compute Resources required by this container. Cannot be updated. More info: https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/"
              | optional,
            restartPolicy
              | String
              | doc "RestartPolicy defines the restart behavior of individual containers in a pod. This field may only be set for init containers, and the only allowed value is \"Always\". For non-init containers or when this field is not specified, the restart behavior is defined by the Pod's restart policy and the container type. Setting the RestartPolicy as \"Always\" for the init container will have the following effect: this init container will be continually restarted on exit until all regular containers have terminated. Once all regular containers have completed, all init containers with restartPolicy \"Always\" will be shut down. This lifecycle differs from normal init containers and is often referred to as a \"sidecar\" container. Although this init container still starts in the init container sequence, it does not wait for the container to complete before proceeding to the next init container. Instead, the next init container starts immediately after this init container is started, or after any startupProbe has successfully completed."
              | optional,
            securityContext
              | refs."definitions.io.k8s.api.core.v1.SecurityContext"
              | { _ | Dyn }
              | doc "SecurityContext defines the security options the container should be run with. If set, the fields of SecurityContext override the equivalent fields of PodSecurityContext. More info: https://kubernetes.io/docs/tasks/configure-pod-container/security-context/"
              | optional,
            startupProbe
              | refs."definitions.io.k8s.api.core.v1.Probe"
              | { _ | Dyn }
              | doc "StartupProbe indicates that the Pod has successfully initialized. If specified, no other probes are executed until this completes successfully. If this probe fails, the Pod will be restarted, just as if the livenessProbe failed. This can be used to provide different probe parameters at the beginning of a Pod's lifecycle, when it might take a long time to load data or warm a cache, than during steady-state operation. This cannot be updated. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes"
              | optional,
            stdin
              | Bool
              | doc "Whether this container should allocate a buffer for stdin in the container runtime. If this is not set, reads from stdin in the container will always result in EOF. Default is false."
              | optional,
            stdinOnce
              | Bool
              | doc "Whether the container runtime should close the stdin channel after it has been opened by a single attach. When stdin is true the stdin stream will remain open across multiple attach sessions. If stdinOnce is set to true, stdin is opened on container start, is empty until the first client attaches to stdin, and then remains open and accepts data until the client disconnects, at which time stdin is closed and remains closed until the container is restarted. If this flag is false, a container processes that reads from stdin will never receive an EOF. Default is false"
              | optional,
            terminationMessagePath
              | String
              | doc "Optional: Path at which the file to which the container's termination message will be written is mounted into the container's filesystem. Message written is intended to be brief final status, such as an assertion failure message. Will be truncated by the node if greater than 4096 bytes. The total message length across all containers will be limited to 12kb. Defaults to /dev/termination-log. Cannot be updated."
              | optional,
            terminationMessagePolicy
              | String
              | doc "Indicate how the termination message should be populated. File will use the contents of terminationMessagePath to populate the container status message on both success and failure. FallbackToLogsOnError will use the last chunk of container log output if the termination message file is empty and the container exited with an error. The log output is limited to 2048 bytes or 80 lines, whichever is smaller. Defaults to File. Cannot be updated."
              | optional,
            tty
              | Bool
              | doc "Whether this container should allocate a TTY for itself, also requires 'stdin' to be true. Default is false."
              | optional,
            volumeDevices
              | Array (
                std.contract.Sequence
                  [
                    refs."definitions.io.k8s.api.core.v1.VolumeDevice",
                    { _ | Dyn }
                  ]
              )
              | doc "volumeDevices is the list of block devices to be used by the container."
              | optional,
            volumeMounts
              | Array (
                std.contract.Sequence
                  [
                    refs."definitions.io.k8s.api.core.v1.VolumeMount",
                    { _ | Dyn }
                  ]
              )
              | doc "Pod volumes to mount into the container's filesystem. Cannot be updated."
              | optional,
            workingDir
              | String
              | doc "Container's working directory. If not specified, the container runtime's default will be used, which might be configured in the container image. Cannot be updated."
              | optional,
            ..
          },
      "definitions.io.argoproj.workflow.v1alpha1.ContainerSetRetryStrategy" =
        {
            duration
              | String
              | doc "Duration is the time between each retry, examples values are \"300ms\", \"1s\" or \"5m\". Valid time units are \"ns\", \"us\" (or \"µs\"), \"ms\", \"s\", \"m\", \"h\"."
              | optional,
            retries
              | refs."definitions.io.k8s.apimachinery.pkg.util.intstr.IntOrString"
              | String
              | doc "Retries is the maximum number of retry attempts for each container. It does not include the first, original attempt; the maximum number of total attempts will be `retries + 1`.",
            ..
          },
      "definitions.io.argoproj.workflow.v1alpha1.ContainerSetTemplate" =
        {
            containers
              | Array (
                std.contract.Sequence
                  [
                    refs."definitions.io.argoproj.workflow.v1alpha1.ContainerNode",
                    { _ | Dyn }
                  ]
              ),
            retryStrategy
              | refs."definitions.io.argoproj.workflow.v1alpha1.ContainerSetRetryStrategy"
              | { _ | Dyn }
              | doc "RetryStrategy describes how to retry container nodes if the container set fails. Note that this works differently from the template-level `retryStrategy` as it is a process-level retry that does not create new Pods or containers."
              | optional,
            volumeMounts
              | Array (
                std.contract.Sequence
                  [
                    refs."definitions.io.k8s.api.core.v1.VolumeMount",
                    { _ | Dyn }
                  ]
              )
              | optional,
            ..
          },
      "definitions.io.argoproj.workflow.v1alpha1.ContinueOn" =
        { error | Bool | optional, failed | Bool | optional, .. },
      "definitions.io.argoproj.workflow.v1alpha1.Counter" =
        { value | String | doc "Value is the value of the metric", .. },
      "definitions.io.argoproj.workflow.v1alpha1.CreateS3BucketOptions" =
        {
            objectLocking
              | Bool
              | doc "ObjectLocking Enable object locking"
              | optional,
            ..
          },
      "definitions.io.argoproj.workflow.v1alpha1.CronWorkflow" =
        {
            apiVersion
              | std.contract.Equal "argoproj.io/v1alpha1"
              | doc "APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.io.k8s.community/contributors/devel/sig-architecture/api-conventions.md#resources"
              | optional,
            kind
              | std.contract.Equal "CronWorkflow"
              | doc "Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.io.k8s.community/contributors/devel/sig-architecture/api-conventions.md#types-kinds"
              | optional,
            metadata
              | refs."definitions.io.k8s.apimachinery.pkg.apis.meta.v1.ObjectMeta"
              | { _ | Dyn },
            spec
              | refs."definitions.io.argoproj.workflow.v1alpha1.CronWorkflowSpec"
              | { _ | Dyn },
            status
              | refs."definitions.io.argoproj.workflow.v1alpha1.CronWorkflowStatus"
              | { _ | Dyn }
              | optional,
            ..
          },
      "definitions.io.argoproj.workflow.v1alpha1.CronWorkflowSpec" =
        {
            concurrencyPolicy
              | String
              | doc "ConcurrencyPolicy is the K8s-style concurrency policy that will be used"
              | optional,
            failedJobsHistoryLimit
              | std.number.Integer
              | doc "FailedJobsHistoryLimit is the number of failed jobs to be kept at a time"
              | optional,
            schedule
              | String
              | doc "Schedule is a schedule to run the Workflow in Cron format. Deprecated, use Schedules"
              | optional,
            schedules
              | Array String
              | doc "v3.6 and after: Schedules is a list of schedules to run the Workflow in Cron format"
              | optional,
            startingDeadlineSeconds
              | std.number.Integer
              | doc "StartingDeadlineSeconds is the K8s-style deadline that will limit the time a CronWorkflow will be run after its original scheduled time if it is missed."
              | optional,
            stopStrategy
              | refs."definitions.io.argoproj.workflow.v1alpha1.StopStrategy"
              | { _ | Dyn }
              | doc "v3.6 and after: StopStrategy defines if the CronWorkflow should stop scheduling based on a condition"
              | optional,
            successfulJobsHistoryLimit
              | std.number.Integer
              | doc "SuccessfulJobsHistoryLimit is the number of successful jobs to be kept at a time"
              | optional,
            suspend
              | Bool
              | doc "Suspend is a flag that will stop new CronWorkflows from running if set to true"
              | optional,
            timezone
              | String
              | doc "Timezone is the timezone against which the cron schedule will be calculated, e.g. \"Asia/Tokyo\". Default is machine's local time."
              | optional,
            when
              | String
              | doc "v3.6 and after: When is an expression that determines if a run should be scheduled."
              | optional,
            workflowMetadata
              | refs."definitions.io.k8s.apimachinery.pkg.apis.meta.v1.ObjectMeta"
              | { _ | Dyn }
              | doc "WorkflowMetadata contains some metadata of the workflow to be run"
              | optional,
            workflowSpec
              | refs."definitions.io.argoproj.workflow.v1alpha1.WorkflowSpec"
              | { _ | Dyn }
              | doc "WorkflowSpec is the spec of the workflow to be run",
            ..
          },
      "definitions.io.argoproj.workflow.v1alpha1.CronWorkflowStatus" =
        {
            active
              | Array (
                std.contract.Sequence
                  [
                    refs."definitions.io.k8s.api.core.v1.ObjectReference",
                    { _ | Dyn }
                  ]
              )
              | doc "Active is a list of active workflows stemming from this CronWorkflow"
              | optional,
            conditions
              | Array (
                std.contract.Sequence
                  [
                    refs."definitions.io.argoproj.workflow.v1alpha1.Condition",
                    { _ | Dyn }
                  ]
              )
              | doc "Conditions is a list of conditions the CronWorkflow may have"
              | optional,
            failed
              | std.number.Integer
              | doc "v3.6 and after: Failed counts how many times child workflows failed"
              | optional,
            lastScheduledTime
              | refs."definitions.io.k8s.apimachinery.pkg.apis.meta.v1.Time"
              | String
              | doc "LastScheduleTime is the last time the CronWorkflow was scheduled"
              | optional,
            phase
              | String
              | doc "v3.6 and after: Phase is an enum of Active or Stopped. It changes to Stopped when stopStrategy.expression is true"
              | optional,
            succeeded
              | std.number.Integer
              | doc "v3.6 and after: Succeeded counts how many times child workflows succeeded"
              | optional,
            ..
          },
      "definitions.io.argoproj.workflow.v1alpha1.DAGTask" =
        {
            arguments
              | refs."definitions.io.argoproj.workflow.v1alpha1.Arguments"
              | { _ | Dyn }
              | doc "Arguments are the parameter and artifact arguments to the template"
              | optional,
            continueOn
              | refs."definitions.io.argoproj.workflow.v1alpha1.ContinueOn"
              | { _ | Dyn }
              | doc "ContinueOn makes argo to proceed with the following step even if this step fails. Errors and Failed states can be specified"
              | optional,
            dependencies
              | Array String
              | doc "Dependencies are name of other targets which this depends on"
              | optional,
            depends
              | String
              | doc "Depends are name of other targets which this depends on"
              | optional,
            hooks
              | {
                _ | std.contract.Sequence
                  [
                    refs."definitions.io.argoproj.workflow.v1alpha1.LifecycleHook",
                    { _ | Dyn }
                  ]
              }
              | doc "Hooks hold the lifecycle hook which is invoked at lifecycle of task, irrespective of the success, failure, or error status of the primary task"
              | optional,
            inline
              | refs."definitions.io.argoproj.workflow.v1alpha1.Template"
              | { _ | Dyn }
              | doc "Inline is the template. Template must be empty if this is declared (and vice-versa). Note: As mentioned in the corresponding definition in WorkflowStep, this struct is defined recursively, so we need \"x-kubernetes-preserve-unknown-fields: true\" in the validation schema."
              | optional,
            name | String | doc "Name is the name of the target",
            onExit
              | String
              | doc "OnExit is a template reference which is invoked at the end of the template, irrespective of the success, failure, or error of the primary template. DEPRECATED: Use Hooks[exit].Template instead."
              | optional,
            template | String | doc "Name of template to execute" | optional,
            templateRef
              | refs."definitions.io.argoproj.workflow.v1alpha1.TemplateRef"
              | { _ | Dyn }
              | doc "TemplateRef is the reference to the template resource to execute."
              | optional,
            when
              | String
              | doc "When is an expression in which the task should conditionally execute"
              | optional,
            withItems
              | Array refs."definitions.io.argoproj.workflow.v1alpha1.Item"
              | doc "WithItems expands a task into multiple parallel tasks from the items in the list Note: The structure of WithItems is free-form, so we need \"x-kubernetes-preserve-unknown-fields: true\" in the validation schema."
              | optional,
            withParam
              | String
              | doc "WithParam expands a task into multiple parallel tasks from the value in the parameter, which is expected to be a JSON list."
              | optional,
            withSequence
              | refs."definitions.io.argoproj.workflow.v1alpha1.Sequence"
              | { _ | Dyn }
              | doc "WithSequence expands a task into a numeric sequence"
              | optional,
            ..
          },
      "definitions.io.argoproj.workflow.v1alpha1.DAGTemplate" =
        {
            failFast
              | Bool
              | doc "This flag is for DAG logic. The DAG logic has a built-in \"fail fast\" feature to stop scheduling new steps, as soon as it detects that one of the DAG nodes is failed. Then it waits until all DAG nodes are completed before failing the DAG itself. The FailFast flag default is true,  if set to false, it will allow a DAG to run all branches of the DAG to completion (either success or failure), regardless of the failed outcomes of branches in the DAG. More info and example about this feature at https://github.com/argoproj/argo-workflows/issues/1442"
              | optional,
            target
              | String
              | doc "Target are one or more names of targets to execute in a DAG"
              | optional,
            tasks
              | Array (
                std.contract.Sequence
                  [
                    refs."definitions.io.argoproj.workflow.v1alpha1.DAGTask",
                    { _ | Dyn }
                  ]
              )
              | doc "Tasks are a list of DAG tasks",
            ..
          },
      "definitions.io.argoproj.workflow.v1alpha1.Data" =
        {
            source
              | refs."definitions.io.argoproj.workflow.v1alpha1.DataSource"
              | { _ | Dyn }
              | doc "Source sources external data into a data template",
            transformation
              | Array (
                std.contract.Sequence
                  [
                    refs."definitions.io.argoproj.workflow.v1alpha1.TransformationStep",
                    { _ | Dyn }
                  ]
              )
              | doc "Transformation applies a set of transformations",
            ..
          },
      "definitions.io.argoproj.workflow.v1alpha1.DataSource" =
        {
            artifactPaths
              | refs."definitions.io.argoproj.workflow.v1alpha1.ArtifactPaths"
              | { _ | Dyn }
              | doc "ArtifactPaths is a data transformation that collects a list of artifact paths"
              | optional,
            ..
          },
      "definitions.io.argoproj.workflow.v1alpha1.Event" =
        {
            selector
              | String
              | doc "Selector (https://github.com/expr-lang/expr) that we must must match the io.argoproj.workflow.v1alpha1. E.g. `payload.message == \"test\"`",
            ..
          },
      "definitions.io.argoproj.workflow.v1alpha1.ExecutorConfig" =
        {
            serviceAccountName
              | String
              | doc "ServiceAccountName specifies the service account name of the executor container."
              | optional,
            ..
          },
      "definitions.io.argoproj.workflow.v1alpha1.GCSArtifact" =
        {
            bucket | String | doc "Bucket is the name of the bucket" | optional,
            key
              | String
              | doc "Key is the path in the bucket where the artifact resides",
            serviceAccountKeySecret
              | refs."definitions.io.k8s.api.core.v1.SecretKeySelector"
              | { _ | Dyn }
              | doc "ServiceAccountKeySecret is the secret selector to the bucket's service account key"
              | optional,
            ..
          },
      "definitions.io.argoproj.workflow.v1alpha1.GCSArtifactRepository" =
        {
            bucket | String | doc "Bucket is the name of the bucket" | optional,
            keyFormat
              | String
              | doc "KeyFormat defines the format of how to store keys and can reference workflow variables."
              | optional,
            serviceAccountKeySecret
              | refs."definitions.io.k8s.api.core.v1.SecretKeySelector"
              | { _ | Dyn }
              | doc "ServiceAccountKeySecret is the secret selector to the bucket's service account key"
              | optional,
            ..
          },
      "definitions.io.argoproj.workflow.v1alpha1.Gauge" =
        {
            operation
              | String
              | doc "Operation defines the operation to apply with value and the metrics' current value"
              | optional,
            realtime
              | Bool
              | doc "Realtime emits this metric in real time if applicable",
            value
              | String
              | doc "Value is the value to be used in the operation with the metric's current value. If no operation is set, value is the value of the metric",
            ..
          },
      "definitions.io.argoproj.workflow.v1alpha1.GitArtifact" =
        {
            branch
              | String
              | doc "Branch is the branch to fetch when `SingleBranch` is enabled"
              | optional,
            depth
              | std.number.Integer
              | doc "Depth specifies clones/fetches should be shallow and include the given number of commits from the branch tip"
              | optional,
            disableSubmodules
              | Bool
              | doc "DisableSubmodules disables submodules during git clone"
              | optional,
            fetch
              | Array String
              | doc "Fetch specifies a number of refs that should be fetched before checkout"
              | optional,
            insecureIgnoreHostKey
              | Bool
              | doc "InsecureIgnoreHostKey disables SSH strict host key checking during git clone"
              | optional,
            insecureSkipTLS
              | Bool
              | doc "InsecureSkipTLS disables server certificate verification resulting in insecure HTTPS connections"
              | optional,
            passwordSecret
              | refs."definitions.io.k8s.api.core.v1.SecretKeySelector"
              | { _ | Dyn }
              | doc "PasswordSecret is the secret selector to the repository password"
              | optional,
            repo | String | doc "Repo is the git repository",
            revision
              | String
              | doc "Revision is the git commit, tag, branch to checkout"
              | optional,
            singleBranch
              | Bool
              | doc "SingleBranch enables single branch clone, using the `branch` parameter"
              | optional,
            sshPrivateKeySecret
              | refs."definitions.io.k8s.api.core.v1.SecretKeySelector"
              | { _ | Dyn }
              | doc "SSHPrivateKeySecret is the secret selector to the repository ssh private key"
              | optional,
            usernameSecret
              | refs."definitions.io.k8s.api.core.v1.SecretKeySelector"
              | { _ | Dyn }
              | doc "UsernameSecret is the secret selector to the repository username"
              | optional,
            ..
          },
      "definitions.io.argoproj.workflow.v1alpha1.HDFSArtifact" =
        {
            addresses
              | Array String
              | doc "Addresses is accessible addresses of HDFS name nodes"
              | optional,
            dataTransferProtection
              | String
              | doc "DataTransferProtection is the protection level for HDFS data transfer. It corresponds to the dfs.data.transfer.protection configuration in HDFS."
              | optional,
            "force"
              | Bool
              | doc "Force copies a file forcibly even if it exists"
              | optional,
            hdfsUser
              | String
              | doc "HDFSUser is the user to access HDFS file system. It is ignored if either ccache or keytab is used."
              | optional,
            krbCCacheSecret
              | refs."definitions.io.k8s.api.core.v1.SecretKeySelector"
              | { _ | Dyn }
              | doc "KrbCCacheSecret is the secret selector for Kerberos ccache Either ccache or keytab can be set to use Kerberos."
              | optional,
            krbConfigConfigMap
              | refs."definitions.io.k8s.api.core.v1.ConfigMapKeySelector"
              | { _ | Dyn }
              | doc "KrbConfig is the configmap selector for Kerberos config as string It must be set if either ccache or keytab is used."
              | optional,
            krbKeytabSecret
              | refs."definitions.io.k8s.api.core.v1.SecretKeySelector"
              | { _ | Dyn }
              | doc "KrbKeytabSecret is the secret selector for Kerberos keytab Either ccache or keytab can be set to use Kerberos."
              | optional,
            krbRealm
              | String
              | doc "KrbRealm is the Kerberos realm used with Kerberos keytab It must be set if keytab is used."
              | optional,
            krbServicePrincipalName
              | String
              | doc "KrbServicePrincipalName is the principal name of Kerberos service It must be set if either ccache or keytab is used."
              | optional,
            krbUsername
              | String
              | doc "KrbUsername is the Kerberos username used with Kerberos keytab It must be set if keytab is used."
              | optional,
            path | String | doc "Path is a file path in HDFS",
            ..
          },
      "definitions.io.argoproj.workflow.v1alpha1.HDFSArtifactRepository" =
        {
            addresses
              | Array String
              | doc "Addresses is accessible addresses of HDFS name nodes"
              | optional,
            dataTransferProtection
              | String
              | doc "DataTransferProtection is the protection level for HDFS data transfer. It corresponds to the dfs.data.transfer.protection configuration in HDFS."
              | optional,
            "force"
              | Bool
              | doc "Force copies a file forcibly even if it exists"
              | optional,
            hdfsUser
              | String
              | doc "HDFSUser is the user to access HDFS file system. It is ignored if either ccache or keytab is used."
              | optional,
            krbCCacheSecret
              | refs."definitions.io.k8s.api.core.v1.SecretKeySelector"
              | { _ | Dyn }
              | doc "KrbCCacheSecret is the secret selector for Kerberos ccache Either ccache or keytab can be set to use Kerberos."
              | optional,
            krbConfigConfigMap
              | refs."definitions.io.k8s.api.core.v1.ConfigMapKeySelector"
              | { _ | Dyn }
              | doc "KrbConfig is the configmap selector for Kerberos config as string It must be set if either ccache or keytab is used."
              | optional,
            krbKeytabSecret
              | refs."definitions.io.k8s.api.core.v1.SecretKeySelector"
              | { _ | Dyn }
              | doc "KrbKeytabSecret is the secret selector for Kerberos keytab Either ccache or keytab can be set to use Kerberos."
              | optional,
            krbRealm
              | String
              | doc "KrbRealm is the Kerberos realm used with Kerberos keytab It must be set if keytab is used."
              | optional,
            krbServicePrincipalName
              | String
              | doc "KrbServicePrincipalName is the principal name of Kerberos service It must be set if either ccache or keytab is used."
              | optional,
            krbUsername
              | String
              | doc "KrbUsername is the Kerberos username used with Kerberos keytab It must be set if keytab is used."
              | optional,
            pathFormat
              | String
              | doc "PathFormat is defines the format of path to store a file. Can reference workflow variables"
              | optional,
            ..
          },
      "definitions.io.argoproj.workflow.v1alpha1.HTTP" =
        {
            body
              | String
              | doc "Body is content of the HTTP Request"
              | optional,
            bodyFrom
              | refs."definitions.io.argoproj.workflow.v1alpha1.HTTPBodySource"
              | { _ | Dyn }
              | doc "BodyFrom is  content of the HTTP Request as Bytes"
              | optional,
            headers
              | Array (
                std.contract.Sequence
                  [
                    refs."definitions.io.argoproj.workflow.v1alpha1.HTTPHeader",
                    { _ | Dyn }
                  ]
              )
              | doc "Headers are an optional list of headers to send with HTTP requests"
              | optional,
            insecureSkipVerify
              | Bool
              | doc "InsecureSkipVerify is a bool when if set to true will skip TLS verification for the HTTP client"
              | optional,
            method
              | String
              | doc "Method is HTTP methods for HTTP Request"
              | optional,
            successCondition
              | String
              | doc "SuccessCondition is an expression if evaluated to true is considered successful"
              | optional,
            timeoutSeconds
              | std.number.Integer
              | doc "TimeoutSeconds is request timeout for HTTP Request. Default is 30 seconds"
              | optional,
            url | String | doc "URL of the HTTP Request",
            ..
          },
      "definitions.io.argoproj.workflow.v1alpha1.HTTPArtifact" =
        {
            auth
              | refs."definitions.io.argoproj.workflow.v1alpha1.HTTPAuth"
              | { _ | Dyn }
              | doc "Auth contains information for client authentication"
              | optional,
            headers
              | Array (
                std.contract.Sequence
                  [
                    refs."definitions.io.argoproj.workflow.v1alpha1.Header",
                    { _ | Dyn }
                  ]
              )
              | doc "Headers are an optional list of headers to send with HTTP requests for artifacts"
              | optional,
            url | String | doc "URL of the artifact",
            ..
          },
      "definitions.io.argoproj.workflow.v1alpha1.HTTPAuth" =
        {
            basicAuth
              | refs."definitions.io.argoproj.workflow.v1alpha1.BasicAuth"
              | { _ | Dyn }
              | optional,
            clientCert
              | refs."definitions.io.argoproj.workflow.v1alpha1.ClientCertAuth"
              | { _ | Dyn }
              | optional,
            oauth2
              | refs."definitions.io.argoproj.workflow.v1alpha1.OAuth2Auth"
              | { _ | Dyn }
              | optional,
            ..
          },
      "definitions.io.argoproj.workflow.v1alpha1.HTTPBodySource" =
        { bytes | String | optional, .. },
      "definitions.io.argoproj.workflow.v1alpha1.HTTPHeader" =
        {
            name | String,
            value | String | optional,
            valueFrom
              | refs."definitions.io.argoproj.workflow.v1alpha1.HTTPHeaderSource"
              | { _ | Dyn }
              | optional,
            ..
          },
      "definitions.io.argoproj.workflow.v1alpha1.HTTPHeaderSource" =
        {
            secretKeyRef
              | refs."definitions.io.k8s.api.core.v1.SecretKeySelector"
              | { _ | Dyn }
              | optional,
            ..
          },
      "definitions.io.argoproj.workflow.v1alpha1.Header" =
        {
            name | String | doc "Name is the header name",
            value
              | String
              | doc "Value is the literal value to use for the header",
            ..
          },
      "definitions.io.argoproj.workflow.v1alpha1.Histogram" =
        {
            buckets
              | Array (
                std.contract.Sequence
                  [
                    refs."definitions.io.argoproj.workflow.v1alpha1.Amount",
                    Number
                  ]
              )
              | doc "Buckets is a list of bucket divisors for the histogram",
            value | String | doc "Value is the value of the metric",
            ..
          },
      "definitions.io.argoproj.workflow.v1alpha1.Inputs" =
        {
            artifacts
              | Array (
                std.contract.Sequence
                  [
                    refs."definitions.io.argoproj.workflow.v1alpha1.Artifact",
                    { _ | Dyn }
                  ]
              )
              | doc "Artifact are a list of artifacts passed as inputs"
              | optional,
            parameters
              | Array (
                std.contract.Sequence
                  [
                    refs."definitions.io.argoproj.workflow.v1alpha1.Parameter",
                    { _ | Dyn }
                  ]
              )
              | doc "Parameters are a list of parameters passed as inputs"
              | optional,
            ..
          },
      "definitions.io.argoproj.workflow.v1alpha1.Item" =
        std.contract.any_of
            [ js2n.Null, Bool, Number, String, { _ | Dyn }, Array Dyn ],
      "definitions.io.argoproj.workflow.v1alpha1.LabelValueFrom" =
        { expression | String, .. },
      "definitions.io.argoproj.workflow.v1alpha1.LifecycleHook" =
        {
            arguments
              | refs."definitions.io.argoproj.workflow.v1alpha1.Arguments"
              | { _ | Dyn }
              | doc "Arguments hold arguments to the template"
              | optional,
            expression
              | String
              | doc "Expression is a condition expression for when a node will be retried. If it evaluates to false, the node will not be retried and the retry strategy will be ignored"
              | optional,
            template
              | String
              | doc "Template is the name of the template to execute by the hook"
              | optional,
            templateRef
              | refs."definitions.io.argoproj.workflow.v1alpha1.TemplateRef"
              | { _ | Dyn }
              | doc "TemplateRef is the reference to the template resource to execute by the hook"
              | optional,
            ..
          },
      "definitions.io.argoproj.workflow.v1alpha1.ManifestFrom" =
        {
            artifact
              | refs."definitions.io.argoproj.workflow.v1alpha1.Artifact"
              | { _ | Dyn }
              | doc "Artifact contains the artifact to use",
            ..
          },
      "definitions.io.argoproj.workflow.v1alpha1.MemoizationStatus" =
        {
            cacheName
              | String
              | doc "Cache is the name of the cache that was used",
            hit
              | Bool
              | doc "Hit indicates whether this node was created from a cache entry",
            key
              | String
              | doc "Key is the name of the key used for this node's cache",
            ..
          },
      "definitions.io.argoproj.workflow.v1alpha1.Memoize" =
        {
            cache
              | refs."definitions.io.argoproj.workflow.v1alpha1.Cache"
              | { _ | Dyn }
              | doc "Cache sets and configures the kind of cache",
            key | String | doc "Key is the key to use as the caching key",
            maxAge
              | String
              | doc "MaxAge is the maximum age (e.g. \"180s\", \"24h\") of an entry that is still considered valid. If an entry is older than the MaxAge, it will be ignored.",
            ..
          },
      "definitions.io.argoproj.workflow.v1alpha1.Metadata" =
        {
            annotations | { _ | String } | optional,
            labels | { _ | String } | optional,
            ..
          },
      "definitions.io.argoproj.workflow.v1alpha1.MetricLabel" =
        { key | String, value | String, .. },
      "definitions.io.argoproj.workflow.v1alpha1.Metrics" =
        {
            prometheus
              | Array (
                std.contract.Sequence
                  [
                    refs."definitions.io.argoproj.workflow.v1alpha1.Prometheus",
                    { _ | Dyn }
                  ]
              )
              | doc "Prometheus is a list of prometheus metrics to be emitted",
            ..
          },
      "definitions.io.argoproj.workflow.v1alpha1.Mutex" =
        {
            database
              | Bool
              | doc "Database specifies this is database controlled if this is set true"
              | optional,
            name | String | doc "name of the mutex" | optional,
            namespace
              | String
              | doc "Namespace is the namespace of the mutex, default: [namespace of workflow]"
              | optional,
            ..
          },
      "definitions.io.argoproj.workflow.v1alpha1.MutexHolding" =
        {
            holder
              | String
              | doc m%"
                Holder is a reference to the object which holds the Mutex. Holding Scenario:
                  1. Current workflow's NodeID which is holding the lock.
                     e.g: ${NodeID}
                Waiting Scenario:
                  1. Current workflow or other workflow NodeID which is holding the lock.
                     e.g: ${WorkflowName}/${NodeID}
              "%
              | optional,
            mutex
              | String
              | doc "Reference for the mutex e.g: ${namespace}/mutex/${mutexName}"
              | optional,
            ..
          },
      "definitions.io.argoproj.workflow.v1alpha1.MutexStatus" =
        {
            holding
              | Array (
                std.contract.Sequence
                  [
                    refs."definitions.io.argoproj.workflow.v1alpha1.MutexHolding",
                    { _ | Dyn }
                  ]
              )
              | doc "Holding is a list of mutexes and their respective objects that are held by mutex lock for this io.argoproj.workflow.v1alpha1."
              | optional,
            waiting
              | Array (
                std.contract.Sequence
                  [
                    refs."definitions.io.argoproj.workflow.v1alpha1.MutexHolding",
                    { _ | Dyn }
                  ]
              )
              | doc "Waiting is a list of mutexes and their respective objects this workflow is waiting for."
              | optional,
            ..
          },
      "definitions.io.argoproj.workflow.v1alpha1.NodeFlag" =
        {
            hooked
              | Bool
              | doc "Hooked tracks whether or not this node was triggered by hook or onExit"
              | optional,
            retried
              | Bool
              | doc "Retried tracks whether or not this node was retried by retryStrategy"
              | optional,
            ..
          },
      "definitions.io.argoproj.workflow.v1alpha1.NodeStatus" =
        {
            boundaryID
              | String
              | doc "BoundaryID indicates the node ID of the associated template root node in which this node belongs to"
              | optional,
            children
              | Array String
              | doc "Children is a list of child node IDs"
              | optional,
            daemoned
              | Bool
              | doc "Daemoned tracks whether or not this node was daemoned and need to be terminated"
              | optional,
            displayName
              | String
              | doc "DisplayName is a human readable representation of the node. Unique within a template boundary"
              | optional,
            estimatedDuration
              | std.number.Integer
              | doc "EstimatedDuration in seconds."
              | optional,
            finishedAt
              | refs."definitions.io.k8s.apimachinery.pkg.apis.meta.v1.Time"
              | String
              | doc "Time at which this node completed"
              | optional,
            hostNodeName
              | String
              | doc "HostNodeName name of the Kubernetes node on which the Pod is running, if applicable"
              | optional,
            id
              | String
              | doc "ID is a unique identifier of a node within the worklow It is implemented as a hash of the node name, which makes the ID deterministic",
            inputs
              | refs."definitions.io.argoproj.workflow.v1alpha1.Inputs"
              | { _ | Dyn }
              | doc "Inputs captures input parameter values and artifact locations supplied to this template invocation"
              | optional,
            memoizationStatus
              | refs."definitions.io.argoproj.workflow.v1alpha1.MemoizationStatus"
              | { _ | Dyn }
              | doc "MemoizationStatus holds information about cached nodes"
              | optional,
            message
              | String
              | doc "A human readable message indicating details about why the node is in this condition."
              | optional,
            name
              | String
              | doc "Name is unique name in the node tree used to generate the node ID",
            nodeFlag
              | refs."definitions.io.argoproj.workflow.v1alpha1.NodeFlag"
              | { _ | Dyn }
              | doc "NodeFlag tracks some history of node. e.g.) hooked, retried, etc."
              | optional,
            outboundNodes
              | Array String
              | doc m%"
                OutboundNodes tracks the node IDs which are considered "outbound" nodes to a template invocation. For every invocation of a template, there are nodes which we considered as "outbound". Essentially, these are last nodes in the execution sequence to run, before the template is considered completed. These nodes are then connected as parents to a following step.
                
                In the case of single pod steps (i.e. container, script, resource templates), this list will be nil since the pod itself is already considered the "outbound" node. In the case of DAGs, outbound nodes are the "target" tasks (tasks with no children). In the case of steps, outbound nodes are all the containers involved in the last step group. NOTE: since templates are composable, the list of outbound nodes are carried upwards when a DAG/steps template invokes another DAG/steps template. In other words, the outbound nodes of a template, will be a superset of the outbound nodes of its last children.
              "%
              | optional,
            outputs
              | refs."definitions.io.argoproj.workflow.v1alpha1.Outputs"
              | { _ | Dyn }
              | doc "Outputs captures output parameter values and artifact locations produced by this template invocation"
              | optional,
            phase
              | String
              | doc "Phase a simple, high-level summary of where the node is in its lifecycle. Can be used as a state machine. Will be one of these values \"Pending\", \"Running\" before the node is completed, or \"Succeeded\", \"Skipped\", \"Failed\", \"Error\", or \"Omitted\" as a final state."
              | optional,
            podIP
              | String
              | doc "PodIP captures the IP of the pod for daemoned steps"
              | optional,
            progress | String | doc "Progress to completion" | optional,
            resourcesDuration
              | { _ | std.number.Integer }
              | doc "ResourcesDuration is indicative, but not accurate, resource duration. This is populated when the nodes completes."
              | optional,
            startedAt
              | refs."definitions.io.k8s.apimachinery.pkg.apis.meta.v1.Time"
              | String
              | doc "Time at which this node started"
              | optional,
            synchronizationStatus
              | refs."definitions.io.argoproj.workflow.v1alpha1.NodeSynchronizationStatus"
              | { _ | Dyn }
              | doc "SynchronizationStatus is the synchronization status of the node"
              | optional,
            templateName
              | String
              | doc "TemplateName is the template name which this node corresponds to. Not applicable to virtual nodes (e.g. Retry, StepGroup)"
              | optional,
            templateRef
              | refs."definitions.io.argoproj.workflow.v1alpha1.TemplateRef"
              | { _ | Dyn }
              | doc "TemplateRef is the reference to the template resource which this node corresponds to. Not applicable to virtual nodes (e.g. Retry, StepGroup)"
              | optional,
            templateScope
              | String
              | doc "TemplateScope is the template scope in which the template of this node was retrieved."
              | optional,
            type | String | doc "Type indicates type of node",
            ..
          },
      "definitions.io.argoproj.workflow.v1alpha1.NodeSynchronizationStatus" =
        {
            waiting
              | String
              | doc "Waiting is the name of the lock that this node is waiting for"
              | optional,
            ..
          },
      "definitions.io.argoproj.workflow.v1alpha1.NoneStrategy" = { _ | Dyn },
      "definitions.io.argoproj.workflow.v1alpha1.OAuth2Auth" =
        {
            clientIDSecret
              | refs."definitions.io.k8s.api.core.v1.SecretKeySelector"
              | { _ | Dyn }
              | optional,
            clientSecretSecret
              | refs."definitions.io.k8s.api.core.v1.SecretKeySelector"
              | { _ | Dyn }
              | optional,
            endpointParams
              | Array (
                std.contract.Sequence
                  [
                    refs."definitions.io.argoproj.workflow.v1alpha1.OAuth2EndpointParam",
                    { _ | Dyn }
                  ]
              )
              | optional,
            scopes | Array String | optional,
            tokenURLSecret
              | refs."definitions.io.k8s.api.core.v1.SecretKeySelector"
              | { _ | Dyn }
              | optional,
            ..
          },
      "definitions.io.argoproj.workflow.v1alpha1.OAuth2EndpointParam" =
        {
            key | String | doc "Name is the header name",
            value
              | String
              | doc "Value is the literal value to use for the header"
              | optional,
            ..
          },
      "definitions.io.argoproj.workflow.v1alpha1.OSSArtifact" =
        {
            accessKeySecret
              | refs."definitions.io.k8s.api.core.v1.SecretKeySelector"
              | { _ | Dyn }
              | doc "AccessKeySecret is the secret selector to the bucket's access key"
              | optional,
            bucket | String | doc "Bucket is the name of the bucket" | optional,
            createBucketIfNotPresent
              | Bool
              | doc "CreateBucketIfNotPresent tells the driver to attempt to create the OSS bucket for output artifacts, if it doesn't exist"
              | optional,
            endpoint
              | String
              | doc "Endpoint is the hostname of the bucket endpoint"
              | optional,
            key
              | String
              | doc "Key is the path in the bucket where the artifact resides",
            lifecycleRule
              | refs."definitions.io.argoproj.workflow.v1alpha1.OSSLifecycleRule"
              | { _ | Dyn }
              | doc "LifecycleRule specifies how to manage bucket's lifecycle"
              | optional,
            secretKeySecret
              | refs."definitions.io.k8s.api.core.v1.SecretKeySelector"
              | { _ | Dyn }
              | doc "SecretKeySecret is the secret selector to the bucket's secret key"
              | optional,
            securityToken
              | String
              | doc "SecurityToken is the user's temporary security token. For more details, check out: https://www.alibabacloud.com/help/doc-detail/100624.htm"
              | optional,
            useSDKCreds
              | Bool
              | doc "UseSDKCreds tells the driver to figure out credentials based on sdk defaults."
              | optional,
            ..
          },
      "definitions.io.argoproj.workflow.v1alpha1.OSSArtifactRepository" =
        {
            accessKeySecret
              | refs."definitions.io.k8s.api.core.v1.SecretKeySelector"
              | { _ | Dyn }
              | doc "AccessKeySecret is the secret selector to the bucket's access key"
              | optional,
            bucket | String | doc "Bucket is the name of the bucket" | optional,
            createBucketIfNotPresent
              | Bool
              | doc "CreateBucketIfNotPresent tells the driver to attempt to create the OSS bucket for output artifacts, if it doesn't exist"
              | optional,
            endpoint
              | String
              | doc "Endpoint is the hostname of the bucket endpoint"
              | optional,
            keyFormat
              | String
              | doc "KeyFormat defines the format of how to store keys and can reference workflow variables."
              | optional,
            lifecycleRule
              | refs."definitions.io.argoproj.workflow.v1alpha1.OSSLifecycleRule"
              | { _ | Dyn }
              | doc "LifecycleRule specifies how to manage bucket's lifecycle"
              | optional,
            secretKeySecret
              | refs."definitions.io.k8s.api.core.v1.SecretKeySelector"
              | { _ | Dyn }
              | doc "SecretKeySecret is the secret selector to the bucket's secret key"
              | optional,
            securityToken
              | String
              | doc "SecurityToken is the user's temporary security token. For more details, check out: https://www.alibabacloud.com/help/doc-detail/100624.htm"
              | optional,
            useSDKCreds
              | Bool
              | doc "UseSDKCreds tells the driver to figure out credentials based on sdk defaults."
              | optional,
            ..
          },
      "definitions.io.argoproj.workflow.v1alpha1.OSSLifecycleRule" =
        {
            markDeletionAfterDays
              | std.number.Integer
              | doc "MarkDeletionAfterDays is the number of days before we delete objects in the bucket"
              | optional,
            markInfrequentAccessAfterDays
              | std.number.Integer
              | doc "MarkInfrequentAccessAfterDays is the number of days before we convert the objects in the bucket to Infrequent Access (IA) storage type"
              | optional,
            ..
          },
      "definitions.io.argoproj.workflow.v1alpha1.Outputs" =
        {
            artifacts
              | Array (
                std.contract.Sequence
                  [
                    refs."definitions.io.argoproj.workflow.v1alpha1.Artifact",
                    { _ | Dyn }
                  ]
              )
              | doc "Artifacts holds the list of output artifacts produced by a step"
              | optional,
            exitCode
              | String
              | doc "ExitCode holds the exit code of a script template"
              | optional,
            parameters
              | Array (
                std.contract.Sequence
                  [
                    refs."definitions.io.argoproj.workflow.v1alpha1.Parameter",
                    { _ | Dyn }
                  ]
              )
              | doc "Parameters holds the list of output parameters produced by a step"
              | optional,
            result
              | String
              | doc "Result holds the result (stdout) of a script or container template, or the response body of an HTTP template"
              | optional,
            ..
          },
      "definitions.io.argoproj.workflow.v1alpha1.ParallelSteps" =
        Array (
            std.contract.Sequence
              [
                refs."definitions.io.argoproj.workflow.v1alpha1.WorkflowStep",
                { _ | Dyn }
              ]
          ),
      "definitions.io.argoproj.workflow.v1alpha1.Parameter" =
        {
            "default"
              | String
              | doc "Default is the default value to use for an input parameter if a value was not supplied"
              | optional,
            description
              | String
              | doc "Description is the parameter description"
              | optional,
            enum
              | Array String
              | doc "Enum holds a list of string values to choose from, for the actual value of the parameter"
              | optional,
            globalName
              | String
              | doc "GlobalName exports an output parameter to the global scope, making it available as '{{io.argoproj.workflow.v1alpha1.outputs.parameters.XXXX}} and in workflow.status.outputs.parameters"
              | optional,
            name | String | doc "Name is the parameter name",
            value
              | String
              | doc "Value is the literal value to use for the parameter. If specified in the context of an input parameter, any passed values take precedence over the specified value"
              | optional,
            valueFrom
              | refs."definitions.io.argoproj.workflow.v1alpha1.ValueFrom"
              | { _ | Dyn }
              | doc "ValueFrom is the source for the output parameter's value"
              | optional,
            ..
          },
      "definitions.io.argoproj.workflow.v1alpha1.Plugin" = { _ | Dyn },
      "definitions.io.argoproj.workflow.v1alpha1.PodGC" =
        {
            deleteDelayDuration
              | String
              | doc "DeleteDelayDuration specifies the duration before pods in the GC queue get deleted."
              | optional,
            labelSelector
              | refs."definitions.io.k8s.apimachinery.pkg.apis.meta.v1.LabelSelector"
              | { _ | Dyn }
              | doc "LabelSelector is the label selector to check if the pods match the labels before being added to the pod GC queue."
              | optional,
            strategy
              | String
              | doc "Strategy is the strategy to use. One of \"OnPodCompletion\", \"OnPodSuccess\", \"OnWorkflowCompletion\", \"OnWorkflowSuccess\". If unset, does not delete Pods"
              | optional,
            ..
          },
      "definitions.io.argoproj.workflow.v1alpha1.Prometheus" =
        {
            counter
              | refs."definitions.io.argoproj.workflow.v1alpha1.Counter"
              | { _ | Dyn }
              | doc "Counter is a counter metric"
              | optional,
            gauge
              | refs."definitions.io.argoproj.workflow.v1alpha1.Gauge"
              | { _ | Dyn }
              | doc "Gauge is a gauge metric"
              | optional,
            help | String | doc "Help is a string that describes the metric",
            histogram
              | refs."definitions.io.argoproj.workflow.v1alpha1.Histogram"
              | { _ | Dyn }
              | doc "Histogram is a histogram metric"
              | optional,
            labels
              | Array (
                std.contract.Sequence
                  [
                    refs."definitions.io.argoproj.workflow.v1alpha1.MetricLabel",
                    { _ | Dyn }
                  ]
              )
              | doc "Labels is a list of metric labels"
              | optional,
            name | String | doc "Name is the name of the metric",
            when
              | String
              | doc "When is a conditional statement that decides when to emit the metric"
              | optional,
            ..
          },
      "definitions.io.argoproj.workflow.v1alpha1.RawArtifact" =
        {
            data | String | doc "Data is the string contents of the artifact",
            ..
          },
      "definitions.io.argoproj.workflow.v1alpha1.ResourceTemplate" =
        {
            action
              | String
              | doc "Action is the action to perform to the resource. Must be one of: get, create, apply, delete, replace, patch",
            failureCondition
              | String
              | doc "FailureCondition is a label selector expression which describes the conditions of the k8s resource in which the step was considered failed"
              | optional,
            flags
              | Array String
              | doc m%"
                Flags is a set of additional options passed to kubectl before submitting a resource I.e. to disable resource validation: flags: [
                	"--validate=false"  # disable resource validation
                ]
              "%
              | optional,
            manifest
              | String
              | doc "Manifest contains the kubernetes manifest"
              | optional,
            manifestFrom
              | refs."definitions.io.argoproj.workflow.v1alpha1.ManifestFrom"
              | { _ | Dyn }
              | doc "ManifestFrom is the source for a single kubernetes manifest"
              | optional,
            mergeStrategy
              | String
              | doc "MergeStrategy is the strategy used to merge a patch. It defaults to \"strategic\" Must be one of: strategic, merge, json"
              | optional,
            setOwnerReference
              | Bool
              | doc "SetOwnerReference sets the reference to the workflow on the OwnerReference of generated resource."
              | optional,
            successCondition
              | String
              | doc "SuccessCondition is a label selector expression which describes the conditions of the k8s resource in which it is acceptable to proceed to the following step"
              | optional,
            ..
          },
      "definitions.io.argoproj.workflow.v1alpha1.RetryAffinity" =
        {
            nodeAntiAffinity
              | refs."definitions.io.argoproj.workflow.v1alpha1.RetryNodeAntiAffinity"
              | { _ | Dyn }
              | optional,
            ..
          },
      "definitions.io.argoproj.workflow.v1alpha1.RetryNodeAntiAffinity" =
        { _ | Dyn },
      "definitions.io.argoproj.workflow.v1alpha1.RetryStrategy" =
        {
            affinity
              | refs."definitions.io.argoproj.workflow.v1alpha1.RetryAffinity"
              | { _ | Dyn }
              | doc "Affinity prevents running workflow's step on the same host"
              | optional,
            backoff
              | refs."definitions.io.argoproj.workflow.v1alpha1.Backoff"
              | { _ | Dyn }
              | doc "Backoff is a backoff strategy"
              | optional,
            expression
              | String
              | doc "Expression is a condition expression for when a node will be retried. If it evaluates to false, the node will not be retried and the retry strategy will be ignored"
              | optional,
            limit
              | refs."definitions.io.k8s.apimachinery.pkg.util.intstr.IntOrString"
              | String
              | doc "Limit is the maximum number of retry attempts when retrying a container. It does not include the original container; the maximum number of total attempts will be `limit + 1`."
              | optional,
            retryPolicy
              | String
              | doc "RetryPolicy is a policy of NodePhase statuses that will be retried"
              | optional,
            ..
          },
      "definitions.io.argoproj.workflow.v1alpha1.S3Artifact" =
        {
            accessKeySecret
              | refs."definitions.io.k8s.api.core.v1.SecretKeySelector"
              | { _ | Dyn }
              | doc "AccessKeySecret is the secret selector to the bucket's access key"
              | optional,
            bucket | String | doc "Bucket is the name of the bucket" | optional,
            caSecret
              | refs."definitions.io.k8s.api.core.v1.SecretKeySelector"
              | { _ | Dyn }
              | doc "CASecret specifies the secret that contains the CA, used to verify the TLS connection"
              | optional,
            createBucketIfNotPresent
              | refs."definitions.io.argoproj.workflow.v1alpha1.CreateS3BucketOptions"
              | { _ | Dyn }
              | doc "CreateBucketIfNotPresent tells the driver to attempt to create the S3 bucket for output artifacts, if it doesn't exist. Setting Enabled Encryption will apply either SSE-S3 to the bucket if KmsKeyId is not set or SSE-KMS if it is."
              | optional,
            encryptionOptions
              | refs."definitions.io.argoproj.workflow.v1alpha1.S3EncryptionOptions"
              | { _ | Dyn }
              | optional,
            endpoint
              | String
              | doc "Endpoint is the hostname of the bucket endpoint"
              | optional,
            insecure
              | Bool
              | doc "Insecure will connect to the service with TLS"
              | optional,
            key
              | String
              | doc "Key is the key in the bucket where the artifact resides"
              | optional,
            region
              | String
              | doc "Region contains the optional bucket region"
              | optional,
            roleARN
              | String
              | doc "RoleARN is the Amazon Resource Name (ARN) of the role to assume."
              | optional,
            secretKeySecret
              | refs."definitions.io.k8s.api.core.v1.SecretKeySelector"
              | { _ | Dyn }
              | doc "SecretKeySecret is the secret selector to the bucket's secret key"
              | optional,
            sessionTokenSecret
              | refs."definitions.io.k8s.api.core.v1.SecretKeySelector"
              | { _ | Dyn }
              | doc "SessionTokenSecret is used for ephemeral credentials like an IAM assume role or S3 access grant"
              | optional,
            useSDKCreds
              | Bool
              | doc "UseSDKCreds tells the driver to figure out credentials based on sdk defaults."
              | optional,
            ..
          },
      "definitions.io.argoproj.workflow.v1alpha1.S3ArtifactRepository" =
        {
            accessKeySecret
              | refs."definitions.io.k8s.api.core.v1.SecretKeySelector"
              | { _ | Dyn }
              | doc "AccessKeySecret is the secret selector to the bucket's access key"
              | optional,
            bucket | String | doc "Bucket is the name of the bucket" | optional,
            caSecret
              | refs."definitions.io.k8s.api.core.v1.SecretKeySelector"
              | { _ | Dyn }
              | doc "CASecret specifies the secret that contains the CA, used to verify the TLS connection"
              | optional,
            createBucketIfNotPresent
              | refs."definitions.io.argoproj.workflow.v1alpha1.CreateS3BucketOptions"
              | { _ | Dyn }
              | doc "CreateBucketIfNotPresent tells the driver to attempt to create the S3 bucket for output artifacts, if it doesn't exist. Setting Enabled Encryption will apply either SSE-S3 to the bucket if KmsKeyId is not set or SSE-KMS if it is."
              | optional,
            encryptionOptions
              | refs."definitions.io.argoproj.workflow.v1alpha1.S3EncryptionOptions"
              | { _ | Dyn }
              | optional,
            endpoint
              | String
              | doc "Endpoint is the hostname of the bucket endpoint"
              | optional,
            insecure
              | Bool
              | doc "Insecure will connect to the service with TLS"
              | optional,
            keyFormat
              | String
              | doc "KeyFormat defines the format of how to store keys and can reference workflow variables."
              | optional,
            keyPrefix
              | String
              | doc "KeyPrefix is prefix used as part of the bucket key in which the controller will store artifacts. DEPRECATED. Use KeyFormat instead"
              | optional,
            region
              | String
              | doc "Region contains the optional bucket region"
              | optional,
            roleARN
              | String
              | doc "RoleARN is the Amazon Resource Name (ARN) of the role to assume."
              | optional,
            secretKeySecret
              | refs."definitions.io.k8s.api.core.v1.SecretKeySelector"
              | { _ | Dyn }
              | doc "SecretKeySecret is the secret selector to the bucket's secret key"
              | optional,
            sessionTokenSecret
              | refs."definitions.io.k8s.api.core.v1.SecretKeySelector"
              | { _ | Dyn }
              | doc "SessionTokenSecret is used for ephemeral credentials like an IAM assume role or S3 access grant"
              | optional,
            useSDKCreds
              | Bool
              | doc "UseSDKCreds tells the driver to figure out credentials based on sdk defaults."
              | optional,
            ..
          },
      "definitions.io.argoproj.workflow.v1alpha1.S3EncryptionOptions" =
        {
            enableEncryption
              | Bool
              | doc "EnableEncryption tells the driver to encrypt objects if set to true. If kmsKeyId and serverSideCustomerKeySecret are not set, SSE-S3 will be used"
              | optional,
            kmsEncryptionContext
              | String
              | doc "KmsEncryptionContext is a json blob that contains an encryption context. See https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#encrypt_context for more information"
              | optional,
            kmsKeyId
              | String
              | doc "KMSKeyId tells the driver to encrypt the object using the specified KMS Key."
              | optional,
            serverSideCustomerKeySecret
              | refs."definitions.io.k8s.api.core.v1.SecretKeySelector"
              | { _ | Dyn }
              | doc "ServerSideCustomerKeySecret tells the driver to encrypt the output artifacts using SSE-C with the specified secret."
              | optional,
            ..
          },
      "definitions.io.argoproj.workflow.v1alpha1.ScriptTemplate" =
        {
            args
              | Array String
              | doc "Arguments to the entrypoint. The container image's CMD is used if this is not provided. Variable references $(VAR_NAME) are expanded using the container's environment. If a variable cannot be resolved, the reference in the input string will be unchanged. Double $$ are reduced to a single $, which allows for escaping the $(VAR_NAME) syntax: i.e. \"$$(VAR_NAME)\" will produce the string literal \"$(VAR_NAME)\". Escaped references will never be expanded, regardless of whether the variable exists or not. Cannot be updated. More info: https://kubernetes.io/docs/tasks/inject-data-application/define-command-argument-container/#running-a-command-in-a-shell"
              | optional,
            command
              | Array String
              | doc "Entrypoint array. Not executed within a shell. The container image's ENTRYPOINT is used if this is not provided. Variable references $(VAR_NAME) are expanded using the container's environment. If a variable cannot be resolved, the reference in the input string will be unchanged. Double $$ are reduced to a single $, which allows for escaping the $(VAR_NAME) syntax: i.e. \"$$(VAR_NAME)\" will produce the string literal \"$(VAR_NAME)\". Escaped references will never be expanded, regardless of whether the variable exists or not. Cannot be updated. More info: https://kubernetes.io/docs/tasks/inject-data-application/define-command-argument-container/#running-a-command-in-a-shell"
              | optional,
            env
              | Array (
                std.contract.Sequence
                  [ refs."definitions.io.k8s.api.core.v1.EnvVar", { _ | Dyn } ]
              )
              | doc "List of environment variables to set in the container. Cannot be updated."
              | optional,
            envFrom
              | Array (
                std.contract.Sequence
                  [
                    refs."definitions.io.k8s.api.core.v1.EnvFromSource",
                    { _ | Dyn }
                  ]
              )
              | doc "List of sources to populate environment variables in the container. The keys defined within a source must be a C_IDENTIFIER. All invalid keys will be reported as an event when the container is starting. When a key exists in multiple sources, the value associated with the last source will take precedence. Values defined by an Env with a duplicate key will take precedence. Cannot be updated."
              | optional,
            image
              | String
              | doc "Container image name. More info: https://kubernetes.io/docs/concepts/containers/images This field is optional to allow higher level config management to default or override container images in workload controllers like Deployments and StatefulSets.",
            imagePullPolicy
              | String
              | doc "Image pull policy. One of Always, Never, IfNotPresent. Defaults to Always if :latest tag is specified, or IfNotPresent otherwise. Cannot be updated. More info: https://kubernetes.io/docs/concepts/containers/images#updating-images"
              | optional,
            lifecycle
              | refs."definitions.io.k8s.api.core.v1.Lifecycle"
              | { _ | Dyn }
              | doc "Actions that the management system should take in response to container lifecycle events. Cannot be updated."
              | optional,
            livenessProbe
              | refs."definitions.io.k8s.api.core.v1.Probe"
              | { _ | Dyn }
              | doc "Periodic probe of container liveness. Container will be restarted if the probe fails. Cannot be updated. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes"
              | optional,
            name
              | String
              | doc "Name of the container specified as a DNS_LABEL. Each container in a pod must have a unique name (DNS_LABEL). Cannot be updated."
              | optional,
            ports
              | Array (
                std.contract.Sequence
                  [
                    refs."definitions.io.k8s.api.core.v1.ContainerPort",
                    { _ | Dyn }
                  ]
              )
              | doc "List of ports to expose from the container. Not specifying a port here DOES NOT prevent that port from being exposed. Any port which is listening on the default \"0.0.0.0\" address inside a container will be accessible from the network. Modifying this array with strategic merge patch may corrupt the data. For more information See https://github.com/kubernetes/kubernetes/issues/108255. Cannot be updated."
              | optional,
            readinessProbe
              | refs."definitions.io.k8s.api.core.v1.Probe"
              | { _ | Dyn }
              | doc "Periodic probe of container service readiness. Container will be removed from service endpoints if the probe fails. Cannot be updated. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes"
              | optional,
            resizePolicy
              | Array (
                std.contract.Sequence
                  [
                    refs."definitions.io.k8s.api.core.v1.ContainerResizePolicy",
                    { _ | Dyn }
                  ]
              )
              | doc "Resources resize policy for the container."
              | optional,
            resources
              | refs."definitions.io.k8s.api.core.v1.ResourceRequirements"
              | { _ | Dyn }
              | doc "Compute Resources required by this container. Cannot be updated. More info: https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/"
              | optional,
            restartPolicy
              | String
              | doc "RestartPolicy defines the restart behavior of individual containers in a pod. This field may only be set for init containers, and the only allowed value is \"Always\". For non-init containers or when this field is not specified, the restart behavior is defined by the Pod's restart policy and the container type. Setting the RestartPolicy as \"Always\" for the init container will have the following effect: this init container will be continually restarted on exit until all regular containers have terminated. Once all regular containers have completed, all init containers with restartPolicy \"Always\" will be shut down. This lifecycle differs from normal init containers and is often referred to as a \"sidecar\" container. Although this init container still starts in the init container sequence, it does not wait for the container to complete before proceeding to the next init container. Instead, the next init container starts immediately after this init container is started, or after any startupProbe has successfully completed."
              | optional,
            securityContext
              | refs."definitions.io.k8s.api.core.v1.SecurityContext"
              | { _ | Dyn }
              | doc "SecurityContext defines the security options the container should be run with. If set, the fields of SecurityContext override the equivalent fields of PodSecurityContext. More info: https://kubernetes.io/docs/tasks/configure-pod-container/security-context/"
              | optional,
            source
              | String
              | doc "Source contains the source code of the script to execute",
            startupProbe
              | refs."definitions.io.k8s.api.core.v1.Probe"
              | { _ | Dyn }
              | doc "StartupProbe indicates that the Pod has successfully initialized. If specified, no other probes are executed until this completes successfully. If this probe fails, the Pod will be restarted, just as if the livenessProbe failed. This can be used to provide different probe parameters at the beginning of a Pod's lifecycle, when it might take a long time to load data or warm a cache, than during steady-state operation. This cannot be updated. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes"
              | optional,
            stdin
              | Bool
              | doc "Whether this container should allocate a buffer for stdin in the container runtime. If this is not set, reads from stdin in the container will always result in EOF. Default is false."
              | optional,
            stdinOnce
              | Bool
              | doc "Whether the container runtime should close the stdin channel after it has been opened by a single attach. When stdin is true the stdin stream will remain open across multiple attach sessions. If stdinOnce is set to true, stdin is opened on container start, is empty until the first client attaches to stdin, and then remains open and accepts data until the client disconnects, at which time stdin is closed and remains closed until the container is restarted. If this flag is false, a container processes that reads from stdin will never receive an EOF. Default is false"
              | optional,
            terminationMessagePath
              | String
              | doc "Optional: Path at which the file to which the container's termination message will be written is mounted into the container's filesystem. Message written is intended to be brief final status, such as an assertion failure message. Will be truncated by the node if greater than 4096 bytes. The total message length across all containers will be limited to 12kb. Defaults to /dev/termination-log. Cannot be updated."
              | optional,
            terminationMessagePolicy
              | String
              | doc "Indicate how the termination message should be populated. File will use the contents of terminationMessagePath to populate the container status message on both success and failure. FallbackToLogsOnError will use the last chunk of container log output if the termination message file is empty and the container exited with an error. The log output is limited to 2048 bytes or 80 lines, whichever is smaller. Defaults to File. Cannot be updated."
              | optional,
            tty
              | Bool
              | doc "Whether this container should allocate a TTY for itself, also requires 'stdin' to be true. Default is false."
              | optional,
            volumeDevices
              | Array (
                std.contract.Sequence
                  [
                    refs."definitions.io.k8s.api.core.v1.VolumeDevice",
                    { _ | Dyn }
                  ]
              )
              | doc "volumeDevices is the list of block devices to be used by the container."
              | optional,
            volumeMounts
              | Array (
                std.contract.Sequence
                  [
                    refs."definitions.io.k8s.api.core.v1.VolumeMount",
                    { _ | Dyn }
                  ]
              )
              | doc "Pod volumes to mount into the container's filesystem. Cannot be updated."
              | optional,
            workingDir
              | String
              | doc "Container's working directory. If not specified, the container runtime's default will be used, which might be configured in the container image. Cannot be updated."
              | optional,
            ..
          },
      "definitions.io.argoproj.workflow.v1alpha1.SemaphoreHolding" =
        {
            holders
              | Array String
              | doc "Holders stores the list of current holder names in the io.argoproj.workflow.v1alpha1."
              | optional,
            semaphore
              | String
              | doc "Semaphore stores the semaphore name."
              | optional,
            ..
          },
      "definitions.io.argoproj.workflow.v1alpha1.SemaphoreRef" =
        {
            configMapKeyRef
              | refs."definitions.io.k8s.api.core.v1.ConfigMapKeySelector"
              | { _ | Dyn }
              | doc "ConfigMapKeyRef is a configmap selector for Semaphore configuration"
              | optional,
            database
              | refs."definitions.io.argoproj.workflow.v1alpha1.SyncDatabaseRef"
              | { _ | Dyn }
              | doc "SyncDatabaseRef is a database reference for Semaphore configuration"
              | optional,
            namespace
              | String
              | doc "Namespace is the namespace of the configmap, default: [namespace of workflow]"
              | optional,
            ..
          },
      "definitions.io.argoproj.workflow.v1alpha1.SemaphoreStatus" =
        {
            holding
              | Array (
                std.contract.Sequence
                  [
                    refs."definitions.io.argoproj.workflow.v1alpha1.SemaphoreHolding",
                    { _ | Dyn }
                  ]
              )
              | doc "Holding stores the list of resource acquired synchronization lock for workflows."
              | optional,
            waiting
              | Array (
                std.contract.Sequence
                  [
                    refs."definitions.io.argoproj.workflow.v1alpha1.SemaphoreHolding",
                    { _ | Dyn }
                  ]
              )
              | doc "Waiting indicates the list of current synchronization lock holders."
              | optional,
            ..
          },
      "definitions.io.argoproj.workflow.v1alpha1.Sequence" =
        {
            count
              | refs."definitions.io.k8s.apimachinery.pkg.util.intstr.IntOrString"
              | String
              | doc "Count is number of elements in the sequence (default: 0). Not to be used with end"
              | optional,
            end
              | refs."definitions.io.k8s.apimachinery.pkg.util.intstr.IntOrString"
              | String
              | doc "Number at which to end the sequence (default: 0). Not to be used with Count"
              | optional,
            format
              | String
              | doc "Format is a printf format string to format the value in the sequence"
              | optional,
            start
              | refs."definitions.io.k8s.apimachinery.pkg.util.intstr.IntOrString"
              | String
              | doc "Number at which to start the sequence (default: 0)"
              | optional,
            ..
          },
      "definitions.io.argoproj.workflow.v1alpha1.StopStrategy" =
        {
            expression
              | String
              | doc "v3.6 and after: Expression is an expression that stops scheduling workflows when true. Use the variables `cronworkflow`.`failed` or `cronworkflow`.`succeeded` to access the number of failed or successful child workflows.",
            ..
          },
      "definitions.io.argoproj.workflow.v1alpha1.Submit" =
        {
            arguments
              | refs."definitions.io.argoproj.workflow.v1alpha1.Arguments"
              | { _ | Dyn }
              | doc "Arguments extracted from the event and then set as arguments to the workflow created."
              | optional,
            metadata
              | refs."definitions.io.k8s.apimachinery.pkg.apis.meta.v1.ObjectMeta"
              | { _ | Dyn }
              | doc "Metadata optional means to customize select fields of the workflow metadata"
              | optional,
            workflowTemplateRef
              | refs."definitions.io.argoproj.workflow.v1alpha1.WorkflowTemplateRef"
              | { _ | Dyn }
              | doc "WorkflowTemplateRef the workflow template to submit",
            ..
          },
      "definitions.io.argoproj.workflow.v1alpha1.SuppliedValueFrom" =
        { _ | Dyn },
      "definitions.io.argoproj.workflow.v1alpha1.SuspendTemplate" =
        {
            duration
              | String
              | doc "Duration is the seconds to wait before automatically resuming a template. Must be a string. Default unit is seconds. Could also be a Duration, e.g.: \"2m\", \"6h\""
              | optional,
            ..
          },
      "definitions.io.argoproj.workflow.v1alpha1.SyncDatabaseRef" =
        { key | String, .. },
      "definitions.io.argoproj.workflow.v1alpha1.Synchronization" =
        {
            mutex
              | refs."definitions.io.argoproj.workflow.v1alpha1.Mutex"
              | { _ | Dyn }
              | doc "Mutex holds the Mutex lock details - deprecated, use mutexes instead"
              | optional,
            mutexes
              | Array (
                std.contract.Sequence
                  [
                    refs."definitions.io.argoproj.workflow.v1alpha1.Mutex",
                    { _ | Dyn }
                  ]
              )
              | doc "v3.6 and after: Mutexes holds the list of Mutex lock details"
              | optional,
            semaphore
              | refs."definitions.io.argoproj.workflow.v1alpha1.SemaphoreRef"
              | { _ | Dyn }
              | doc "Semaphore holds the Semaphore configuration - deprecated, use semaphores instead"
              | optional,
            semaphores
              | Array (
                std.contract.Sequence
                  [
                    refs."definitions.io.argoproj.workflow.v1alpha1.SemaphoreRef",
                    { _ | Dyn }
                  ]
              )
              | doc "v3.6 and after: Semaphores holds the list of Semaphores configuration"
              | optional,
            ..
          },
      "definitions.io.argoproj.workflow.v1alpha1.SynchronizationStatus" =
        {
            mutex
              | refs."definitions.io.argoproj.workflow.v1alpha1.MutexStatus"
              | { _ | Dyn }
              | doc "Mutex stores this workflow's mutex holder details"
              | optional,
            semaphore
              | refs."definitions.io.argoproj.workflow.v1alpha1.SemaphoreStatus"
              | { _ | Dyn }
              | doc "Semaphore stores this workflow's Semaphore holder details"
              | optional,
            ..
          },
      "definitions.io.argoproj.workflow.v1alpha1.TTLStrategy" =
        {
            secondsAfterCompletion
              | std.number.Integer
              | doc "SecondsAfterCompletion is the number of seconds to live after completion"
              | optional,
            secondsAfterFailure
              | std.number.Integer
              | doc "SecondsAfterFailure is the number of seconds to live after failure"
              | optional,
            secondsAfterSuccess
              | std.number.Integer
              | doc "SecondsAfterSuccess is the number of seconds to live after success"
              | optional,
            ..
          },
      "definitions.io.argoproj.workflow.v1alpha1.TarStrategy" =
        {
            compressionLevel
              | std.number.Integer
              | doc "CompressionLevel specifies the gzip compression level to use for the artifact. Defaults to gzip.DefaultCompression."
              | optional,
            ..
          },
      "definitions.io.argoproj.workflow.v1alpha1.Template" =
        {
            activeDeadlineSeconds
              | refs."definitions.io.k8s.apimachinery.pkg.util.intstr.IntOrString"
              | String
              | doc "Optional duration in seconds relative to the StartTime that the pod may be active on a node before the system actively tries to terminate the pod; value must be positive integer This field is only applicable to container and script templates."
              | optional,
            affinity
              | refs."definitions.io.k8s.api.core.v1.Affinity"
              | { _ | Dyn }
              | doc "Affinity sets the pod's scheduling constraints Overrides the affinity set at the workflow level (if any)"
              | optional,
            annotations
              | { _ | String }
              | doc "Annotations is a list of annotations to add to the template at runtime"
              | optional,
            archiveLocation
              | refs."definitions.io.argoproj.workflow.v1alpha1.ArtifactLocation"
              | { _ | Dyn }
              | doc "Location in which all files related to the step will be stored (logs, artifacts, etc...). Can be overridden by individual items in Outputs. If omitted, will use the default artifact repository location configured in the controller, appended with the <workflowname>/<nodename> in the key."
              | optional,
            automountServiceAccountToken
              | Bool
              | doc "AutomountServiceAccountToken indicates whether a service account token should be automatically mounted in pods. ServiceAccountName of ExecutorConfig must be specified if this value is false."
              | optional,
            container
              | refs."definitions.io.k8s.api.core.v1.Container"
              | { _ | Dyn }
              | doc "Container is the main container image to run in the pod"
              | optional,
            containerSet
              | refs."definitions.io.argoproj.workflow.v1alpha1.ContainerSetTemplate"
              | { _ | Dyn }
              | doc "ContainerSet groups multiple containers within a single pod."
              | optional,
            daemon
              | Bool
              | doc "Daemon will allow a workflow to proceed to the next step so long as the container reaches readiness"
              | optional,
            dag
              | refs."definitions.io.argoproj.workflow.v1alpha1.DAGTemplate"
              | { _ | Dyn }
              | doc "DAG template subtype which runs a DAG"
              | optional,
            data
              | refs."definitions.io.argoproj.workflow.v1alpha1.Data"
              | { _ | Dyn }
              | doc "Data is a data template"
              | optional,
            executor
              | refs."definitions.io.argoproj.workflow.v1alpha1.ExecutorConfig"
              | { _ | Dyn }
              | doc "Executor holds configurations of the executor container."
              | optional,
            failFast
              | Bool
              | doc "FailFast, if specified, will fail this template if any of its child pods has failed. This is useful for when this template is expanded with `withItems`, etc."
              | optional,
            hostAliases
              | Array (
                std.contract.Sequence
                  [
                    refs."definitions.io.k8s.api.core.v1.HostAlias",
                    { _ | Dyn }
                  ]
              )
              | doc "HostAliases is an optional list of hosts and IPs that will be injected into the pod spec"
              | optional,
            http
              | refs."definitions.io.argoproj.workflow.v1alpha1.HTTP"
              | { _ | Dyn }
              | doc "HTTP makes a HTTP request"
              | optional,
            initContainers
              | Array (
                std.contract.Sequence
                  [
                    refs."definitions.io.argoproj.workflow.v1alpha1.UserContainer",
                    { _ | Dyn }
                  ]
              )
              | doc "InitContainers is a list of containers which run before the main container."
              | optional,
            inputs
              | refs."definitions.io.argoproj.workflow.v1alpha1.Inputs"
              | { _ | Dyn }
              | doc "Inputs describe what inputs parameters and artifacts are supplied to this template"
              | optional,
            memoize
              | refs."definitions.io.argoproj.workflow.v1alpha1.Memoize"
              | { _ | Dyn }
              | doc "Memoize allows templates to use outputs generated from already executed templates"
              | optional,
            metadata
              | refs."definitions.io.argoproj.workflow.v1alpha1.Metadata"
              | { _ | Dyn }
              | doc "Metdata sets the pods's metadata, i.e. annotations and labels"
              | optional,
            metrics
              | refs."definitions.io.argoproj.workflow.v1alpha1.Metrics"
              | { _ | Dyn }
              | doc "Metrics are a list of metrics emitted from this template"
              | optional,
            name | String | doc "Name is the name of the template" | optional,
            nodeSelector
              | { _ | String }
              | doc "NodeSelector is a selector to schedule this step of the workflow to be run on the selected node(s). Overrides the selector set at the workflow level."
              | optional,
            outputs
              | refs."definitions.io.argoproj.workflow.v1alpha1.Outputs"
              | { _ | Dyn }
              | doc "Outputs describe the parameters and artifacts that this template produces"
              | optional,
            parallelism
              | std.number.Integer
              | doc "Parallelism limits the max total parallel pods that can execute at the same time within the boundaries of this template invocation. If additional steps/dag templates are invoked, the pods created by those templates will not be counted towards this total."
              | optional,
            plugin
              | refs."definitions.io.argoproj.workflow.v1alpha1.Plugin"
              | { _ | Dyn }
              | doc "Plugin is a plugin template Note: the structure of a plugin template is free-form, so we need to have \"x-kubernetes-preserve-unknown-fields: true\" in the validation schema."
              | optional,
            podSpecPatch
              | String
              | doc "PodSpecPatch holds strategic merge patch to apply against the pod spec. Allows parameterization of container fields which are not strings (e.g. resource limits)."
              | optional,
            priorityClassName
              | String
              | doc "PriorityClassName to apply to workflow pods."
              | optional,
            resource
              | refs."definitions.io.argoproj.workflow.v1alpha1.ResourceTemplate"
              | { _ | Dyn }
              | doc "Resource template subtype which can run k8s resources"
              | optional,
            retryStrategy
              | refs."definitions.io.argoproj.workflow.v1alpha1.RetryStrategy"
              | { _ | Dyn }
              | doc "RetryStrategy describes how to retry a template when it fails"
              | optional,
            schedulerName
              | String
              | doc "If specified, the pod will be dispatched by specified scheduler. Or it will be dispatched by workflow scope scheduler if specified. If neither specified, the pod will be dispatched by default scheduler."
              | optional,
            script
              | refs."definitions.io.argoproj.workflow.v1alpha1.ScriptTemplate"
              | { _ | Dyn }
              | doc "Script runs a portion of code against an interpreter"
              | optional,
            securityContext
              | refs."definitions.io.k8s.api.core.v1.PodSecurityContext"
              | { _ | Dyn }
              | doc "SecurityContext holds pod-level security attributes and common container settings. Optional: Defaults to empty.  See type description for default values of each field."
              | optional,
            serviceAccountName
              | String
              | doc "ServiceAccountName to apply to workflow pods"
              | optional,
            sidecars
              | Array (
                std.contract.Sequence
                  [
                    refs."definitions.io.argoproj.workflow.v1alpha1.UserContainer",
                    { _ | Dyn }
                  ]
              )
              | doc "Sidecars is a list of containers which run alongside the main container Sidecars are automatically killed when the main container completes"
              | optional,
            steps
              | Array (
                std.contract.Sequence
                  [
                    refs."definitions.io.argoproj.workflow.v1alpha1.ParallelSteps",
                    Array Dyn
                  ]
              )
              | doc "Steps define a series of sequential/parallel workflow steps"
              | optional,
            suspend
              | refs."definitions.io.argoproj.workflow.v1alpha1.SuspendTemplate"
              | { _ | Dyn }
              | doc "Suspend template subtype which can suspend a workflow when reaching the step"
              | optional,
            synchronization
              | refs."definitions.io.argoproj.workflow.v1alpha1.Synchronization"
              | { _ | Dyn }
              | doc "Synchronization holds synchronization lock configuration for this template"
              | optional,
            timeout
              | String
              | doc "Timeout allows to set the total node execution timeout duration counting from the node's start time. This duration also includes time in which the node spends in Pending state. This duration may not be applied to Step or DAG templates."
              | optional,
            tolerations
              | Array (
                std.contract.Sequence
                  [
                    refs."definitions.io.k8s.api.core.v1.Toleration",
                    { _ | Dyn }
                  ]
              )
              | doc "Tolerations to apply to workflow pods."
              | optional,
            volumes
              | Array (
                std.contract.Sequence
                  [ refs."definitions.io.k8s.api.core.v1.Volume", { _ | Dyn } ]
              )
              | doc "Volumes is a list of volumes that can be mounted by containers in a template."
              | optional,
            ..
          },
      "definitions.io.argoproj.workflow.v1alpha1.TemplateRef" =
        {
            clusterScope
              | Bool
              | doc "ClusterScope indicates the referred template is cluster scoped (i.e. a ClusterWorkflowTemplate)."
              | optional,
            name
              | String
              | doc "Name is the resource name of the template."
              | optional,
            template
              | String
              | doc "Template is the name of referred template in the resource."
              | optional,
            ..
          },
      "definitions.io.argoproj.workflow.v1alpha1.TransformationStep" =
        {
            expression
              | String
              | doc "Expression defines an expr expression to apply",
            ..
          },
      "definitions.io.argoproj.workflow.v1alpha1.UserContainer" =
        {
            args
              | Array String
              | doc "Arguments to the entrypoint. The container image's CMD is used if this is not provided. Variable references $(VAR_NAME) are expanded using the container's environment. If a variable cannot be resolved, the reference in the input string will be unchanged. Double $$ are reduced to a single $, which allows for escaping the $(VAR_NAME) syntax: i.e. \"$$(VAR_NAME)\" will produce the string literal \"$(VAR_NAME)\". Escaped references will never be expanded, regardless of whether the variable exists or not. Cannot be updated. More info: https://kubernetes.io/docs/tasks/inject-data-application/define-command-argument-container/#running-a-command-in-a-shell"
              | optional,
            command
              | Array String
              | doc "Entrypoint array. Not executed within a shell. The container image's ENTRYPOINT is used if this is not provided. Variable references $(VAR_NAME) are expanded using the container's environment. If a variable cannot be resolved, the reference in the input string will be unchanged. Double $$ are reduced to a single $, which allows for escaping the $(VAR_NAME) syntax: i.e. \"$$(VAR_NAME)\" will produce the string literal \"$(VAR_NAME)\". Escaped references will never be expanded, regardless of whether the variable exists or not. Cannot be updated. More info: https://kubernetes.io/docs/tasks/inject-data-application/define-command-argument-container/#running-a-command-in-a-shell"
              | optional,
            env
              | Array (
                std.contract.Sequence
                  [ refs."definitions.io.k8s.api.core.v1.EnvVar", { _ | Dyn } ]
              )
              | doc "List of environment variables to set in the container. Cannot be updated."
              | optional,
            envFrom
              | Array (
                std.contract.Sequence
                  [
                    refs."definitions.io.k8s.api.core.v1.EnvFromSource",
                    { _ | Dyn }
                  ]
              )
              | doc "List of sources to populate environment variables in the container. The keys defined within a source must be a C_IDENTIFIER. All invalid keys will be reported as an event when the container is starting. When a key exists in multiple sources, the value associated with the last source will take precedence. Values defined by an Env with a duplicate key will take precedence. Cannot be updated."
              | optional,
            image
              | String
              | doc "Container image name. More info: https://kubernetes.io/docs/concepts/containers/images This field is optional to allow higher level config management to default or override container images in workload controllers like Deployments and StatefulSets."
              | optional,
            imagePullPolicy
              | String
              | doc "Image pull policy. One of Always, Never, IfNotPresent. Defaults to Always if :latest tag is specified, or IfNotPresent otherwise. Cannot be updated. More info: https://kubernetes.io/docs/concepts/containers/images#updating-images"
              | optional,
            lifecycle
              | refs."definitions.io.k8s.api.core.v1.Lifecycle"
              | { _ | Dyn }
              | doc "Actions that the management system should take in response to container lifecycle events. Cannot be updated."
              | optional,
            livenessProbe
              | refs."definitions.io.k8s.api.core.v1.Probe"
              | { _ | Dyn }
              | doc "Periodic probe of container liveness. Container will be restarted if the probe fails. Cannot be updated. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes"
              | optional,
            mirrorVolumeMounts
              | Bool
              | doc "MirrorVolumeMounts will mount the same volumes specified in the main container to the container (including artifacts), at the same mountPaths. This enables dind daemon to partially see the same filesystem as the main container in order to use features such as docker volume binding"
              | optional,
            name
              | String
              | doc "Name of the container specified as a DNS_LABEL. Each container in a pod must have a unique name (DNS_LABEL). Cannot be updated.",
            ports
              | Array (
                std.contract.Sequence
                  [
                    refs."definitions.io.k8s.api.core.v1.ContainerPort",
                    { _ | Dyn }
                  ]
              )
              | doc "List of ports to expose from the container. Not specifying a port here DOES NOT prevent that port from being exposed. Any port which is listening on the default \"0.0.0.0\" address inside a container will be accessible from the network. Modifying this array with strategic merge patch may corrupt the data. For more information See https://github.com/kubernetes/kubernetes/issues/108255. Cannot be updated."
              | optional,
            readinessProbe
              | refs."definitions.io.k8s.api.core.v1.Probe"
              | { _ | Dyn }
              | doc "Periodic probe of container service readiness. Container will be removed from service endpoints if the probe fails. Cannot be updated. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes"
              | optional,
            resizePolicy
              | Array (
                std.contract.Sequence
                  [
                    refs."definitions.io.k8s.api.core.v1.ContainerResizePolicy",
                    { _ | Dyn }
                  ]
              )
              | doc "Resources resize policy for the container."
              | optional,
            resources
              | refs."definitions.io.k8s.api.core.v1.ResourceRequirements"
              | { _ | Dyn }
              | doc "Compute Resources required by this container. Cannot be updated. More info: https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/"
              | optional,
            restartPolicy
              | String
              | doc "RestartPolicy defines the restart behavior of individual containers in a pod. This field may only be set for init containers, and the only allowed value is \"Always\". For non-init containers or when this field is not specified, the restart behavior is defined by the Pod's restart policy and the container type. Setting the RestartPolicy as \"Always\" for the init container will have the following effect: this init container will be continually restarted on exit until all regular containers have terminated. Once all regular containers have completed, all init containers with restartPolicy \"Always\" will be shut down. This lifecycle differs from normal init containers and is often referred to as a \"sidecar\" container. Although this init container still starts in the init container sequence, it does not wait for the container to complete before proceeding to the next init container. Instead, the next init container starts immediately after this init container is started, or after any startupProbe has successfully completed."
              | optional,
            securityContext
              | refs."definitions.io.k8s.api.core.v1.SecurityContext"
              | { _ | Dyn }
              | doc "SecurityContext defines the security options the container should be run with. If set, the fields of SecurityContext override the equivalent fields of PodSecurityContext. More info: https://kubernetes.io/docs/tasks/configure-pod-container/security-context/"
              | optional,
            startupProbe
              | refs."definitions.io.k8s.api.core.v1.Probe"
              | { _ | Dyn }
              | doc "StartupProbe indicates that the Pod has successfully initialized. If specified, no other probes are executed until this completes successfully. If this probe fails, the Pod will be restarted, just as if the livenessProbe failed. This can be used to provide different probe parameters at the beginning of a Pod's lifecycle, when it might take a long time to load data or warm a cache, than during steady-state operation. This cannot be updated. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes"
              | optional,
            stdin
              | Bool
              | doc "Whether this container should allocate a buffer for stdin in the container runtime. If this is not set, reads from stdin in the container will always result in EOF. Default is false."
              | optional,
            stdinOnce
              | Bool
              | doc "Whether the container runtime should close the stdin channel after it has been opened by a single attach. When stdin is true the stdin stream will remain open across multiple attach sessions. If stdinOnce is set to true, stdin is opened on container start, is empty until the first client attaches to stdin, and then remains open and accepts data until the client disconnects, at which time stdin is closed and remains closed until the container is restarted. If this flag is false, a container processes that reads from stdin will never receive an EOF. Default is false"
              | optional,
            terminationMessagePath
              | String
              | doc "Optional: Path at which the file to which the container's termination message will be written is mounted into the container's filesystem. Message written is intended to be brief final status, such as an assertion failure message. Will be truncated by the node if greater than 4096 bytes. The total message length across all containers will be limited to 12kb. Defaults to /dev/termination-log. Cannot be updated."
              | optional,
            terminationMessagePolicy
              | String
              | doc "Indicate how the termination message should be populated. File will use the contents of terminationMessagePath to populate the container status message on both success and failure. FallbackToLogsOnError will use the last chunk of container log output if the termination message file is empty and the container exited with an error. The log output is limited to 2048 bytes or 80 lines, whichever is smaller. Defaults to File. Cannot be updated."
              | optional,
            tty
              | Bool
              | doc "Whether this container should allocate a TTY for itself, also requires 'stdin' to be true. Default is false."
              | optional,
            volumeDevices
              | Array (
                std.contract.Sequence
                  [
                    refs."definitions.io.k8s.api.core.v1.VolumeDevice",
                    { _ | Dyn }
                  ]
              )
              | doc "volumeDevices is the list of block devices to be used by the container."
              | optional,
            volumeMounts
              | Array (
                std.contract.Sequence
                  [
                    refs."definitions.io.k8s.api.core.v1.VolumeMount",
                    { _ | Dyn }
                  ]
              )
              | doc "Pod volumes to mount into the container's filesystem. Cannot be updated."
              | optional,
            workingDir
              | String
              | doc "Container's working directory. If not specified, the container runtime's default will be used, which might be configured in the container image. Cannot be updated."
              | optional,
            ..
          },
      "definitions.io.argoproj.workflow.v1alpha1.ValueFrom" =
        {
            configMapKeyRef
              | refs."definitions.io.k8s.api.core.v1.ConfigMapKeySelector"
              | { _ | Dyn }
              | doc "ConfigMapKeyRef is configmap selector for input parameter configuration"
              | optional,
            "default"
              | String
              | doc "Default specifies a value to be used if retrieving the value from the specified source fails"
              | optional,
            event
              | String
              | doc "Selector (https://github.com/expr-lang/expr) that is evaluated against the event to get the value of the parameter. E.g. `payload.message`"
              | optional,
            expression
              | String
              | doc "Expression, if defined, is evaluated to specify the value for the parameter"
              | optional,
            jqFilter
              | String
              | doc "JQFilter expression against the resource object in resource templates"
              | optional,
            jsonPath
              | String
              | doc "JSONPath of a resource to retrieve an output parameter value from in resource templates"
              | optional,
            parameter
              | String
              | doc "Parameter reference to a step or dag task in which to retrieve an output parameter value from (e.g. '{{steps.mystep.outputs.myparam}}')"
              | optional,
            path
              | String
              | doc "Path in the container to retrieve an output parameter value from in container templates"
              | optional,
            supplied
              | refs."definitions.io.argoproj.workflow.v1alpha1.SuppliedValueFrom"
              | { _ | Dyn }
              | doc "Supplied value to be filled in directly, either through the CLI, API, etc."
              | optional,
            ..
          },
      "definitions.io.argoproj.workflow.v1alpha1.VolumeClaimGC" =
        {
            strategy
              | String
              | doc "Strategy is the strategy to use. One of \"OnWorkflowCompletion\", \"OnWorkflowSuccess\". Defaults to \"OnWorkflowSuccess\""
              | optional,
            ..
          },
      "definitions.io.argoproj.workflow.v1alpha1.Workflow" =
        {
            apiVersion
              | std.contract.Equal "argoproj.io/v1alpha1"
              | doc "APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.io.k8s.community/contributors/devel/sig-architecture/api-conventions.md#resources"
              | optional,
            kind
              | std.contract.Equal "Workflow"
              | doc "Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.io.k8s.community/contributors/devel/sig-architecture/api-conventions.md#types-kinds"
              | optional,
            metadata
              | refs."definitions.io.k8s.apimachinery.pkg.apis.meta.v1.ObjectMeta"
              | { _ | Dyn },
            spec
              | refs."definitions.io.argoproj.workflow.v1alpha1.WorkflowSpec"
              | { _ | Dyn },
            status
              | refs."definitions.io.argoproj.workflow.v1alpha1.WorkflowStatus"
              | { _ | Dyn }
              | optional,
            ..
          },
      "definitions.io.argoproj.workflow.v1alpha1.WorkflowEventBinding" =
        {
            apiVersion
              | std.contract.Equal "argoproj.io/v1alpha1"
              | doc "APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.io.k8s.community/contributors/devel/sig-architecture/api-conventions.md#resources"
              | optional,
            kind
              | std.contract.Equal "WorkflowEventBinding"
              | doc "Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.io.k8s.community/contributors/devel/sig-architecture/api-conventions.md#types-kinds"
              | optional,
            metadata
              | refs."definitions.io.k8s.apimachinery.pkg.apis.meta.v1.ObjectMeta"
              | { _ | Dyn },
            spec
              | refs."definitions.io.argoproj.workflow.v1alpha1.WorkflowEventBindingSpec"
              | { _ | Dyn },
            ..
          },
      "definitions.io.argoproj.workflow.v1alpha1.WorkflowEventBindingSpec" =
        {
            event
              | refs."definitions.io.argoproj.workflow.v1alpha1.Event"
              | { _ | Dyn }
              | doc "Event is the event to bind to",
            submit
              | refs."definitions.io.argoproj.workflow.v1alpha1.Submit"
              | { _ | Dyn }
              | doc "Submit is the workflow template to submit"
              | optional,
            ..
          },
      "definitions.io.argoproj.workflow.v1alpha1.WorkflowLevelArtifactGC" =
        {
            forceFinalizerRemoval
              | Bool
              | doc "ForceFinalizerRemoval: if set to true, the finalizer will be removed in the case that Artifact GC fails"
              | optional,
            podMetadata
              | refs."definitions.io.argoproj.workflow.v1alpha1.Metadata"
              | { _ | Dyn }
              | doc "PodMetadata is an optional field for specifying the Labels and Annotations that should be assigned to the Pod doing the deletion"
              | optional,
            podSpecPatch
              | String
              | doc "PodSpecPatch holds strategic merge patch to apply against the artgc pod spec."
              | optional,
            serviceAccountName
              | String
              | doc "ServiceAccountName is an optional field for specifying the Service Account that should be assigned to the Pod doing the deletion"
              | optional,
            strategy
              | String
              | doc "Strategy is the strategy to use."
              | optional,
            ..
          },
      "definitions.io.argoproj.workflow.v1alpha1.WorkflowMetadata" =
        {
            annotations | { _ | String } | optional,
            labels | { _ | String } | optional,
            labelsFrom
              | {
                _ | std.contract.Sequence
                  [
                    refs."definitions.io.argoproj.workflow.v1alpha1.LabelValueFrom",
                    { _ | Dyn }
                  ]
              }
              | optional,
            ..
          },
      "definitions.io.argoproj.workflow.v1alpha1.WorkflowSpec" =
        {
            activeDeadlineSeconds
              | std.number.Integer
              | doc "Optional duration in seconds relative to the workflow start time which the workflow is allowed to run before the controller terminates the io.argoproj.workflow.v1alpha1. A value of zero is used to terminate a Running workflow"
              | optional,
            affinity
              | refs."definitions.io.k8s.api.core.v1.Affinity"
              | { _ | Dyn }
              | doc "Affinity sets the scheduling constraints for all pods in the io.argoproj.workflow.v1alpha1. Can be overridden by an affinity specified in the template"
              | optional,
            archiveLogs
              | Bool
              | doc "ArchiveLogs indicates if the container logs should be archived"
              | optional,
            arguments
              | refs."definitions.io.argoproj.workflow.v1alpha1.Arguments"
              | { _ | Dyn }
              | doc "Arguments contain the parameters and artifacts sent to the workflow entrypoint Parameters are referencable globally using the 'workflow' variable prefix. e.g. {{io.argoproj.workflow.v1alpha1.parameters.myparam}}"
              | optional,
            artifactGC
              | refs."definitions.io.argoproj.workflow.v1alpha1.WorkflowLevelArtifactGC"
              | { _ | Dyn }
              | doc "ArtifactGC describes the strategy to use when deleting artifacts from completed or deleted workflows (applies to all output Artifacts unless Artifact.ArtifactGC is specified, which overrides this)"
              | optional,
            artifactRepositoryRef
              | refs."definitions.io.argoproj.workflow.v1alpha1.ArtifactRepositoryRef"
              | { _ | Dyn }
              | doc "ArtifactRepositoryRef specifies the configMap name and key containing the artifact repository config."
              | optional,
            automountServiceAccountToken
              | Bool
              | doc "AutomountServiceAccountToken indicates whether a service account token should be automatically mounted in pods. ServiceAccountName of ExecutorConfig must be specified if this value is false."
              | optional,
            dnsConfig
              | refs."definitions.io.k8s.api.core.v1.PodDNSConfig"
              | { _ | Dyn }
              | doc "PodDNSConfig defines the DNS parameters of a pod in addition to those generated from DNSPolicy."
              | optional,
            dnsPolicy
              | String
              | doc "Set DNS policy for workflow pods. Defaults to \"ClusterFirst\". Valid values are 'ClusterFirstWithHostNet', 'ClusterFirst', 'Default' or 'None'. DNS parameters given in DNSConfig will be merged with the policy selected with DNSPolicy. To have DNS options set along with hostNetwork, you have to specify DNS policy explicitly to 'ClusterFirstWithHostNet'."
              | optional,
            entrypoint
              | String
              | doc "Entrypoint is a template reference to the starting point of the io.argoproj.workflow.v1alpha1."
              | optional,
            executor
              | refs."definitions.io.argoproj.workflow.v1alpha1.ExecutorConfig"
              | { _ | Dyn }
              | doc "Executor holds configurations of executor containers of the io.argoproj.workflow.v1alpha1."
              | optional,
            hooks
              | {
                _ | std.contract.Sequence
                  [
                    refs."definitions.io.argoproj.workflow.v1alpha1.LifecycleHook",
                    { _ | Dyn }
                  ]
              }
              | doc "Hooks holds the lifecycle hook which is invoked at lifecycle of step, irrespective of the success, failure, or error status of the primary step"
              | optional,
            hostAliases
              | Array (
                std.contract.Sequence
                  [
                    refs."definitions.io.k8s.api.core.v1.HostAlias",
                    { _ | Dyn }
                  ]
              )
              | optional,
            hostNetwork
              | Bool
              | doc "Host networking requested for this workflow pod. Default to false."
              | optional,
            imagePullSecrets
              | Array (
                std.contract.Sequence
                  [
                    refs."definitions.io.k8s.api.core.v1.LocalObjectReference",
                    { _ | Dyn }
                  ]
              )
              | doc "ImagePullSecrets is a list of references to secrets in the same namespace to use for pulling any images in pods that reference this ServiceAccount. ImagePullSecrets are distinct from Secrets because Secrets can be mounted in the pod, but ImagePullSecrets are only accessed by the kubelet. More info: https://kubernetes.io/docs/concepts/containers/images/#specifying-imagepullsecrets-on-a-pod"
              | optional,
            metrics
              | refs."definitions.io.argoproj.workflow.v1alpha1.Metrics"
              | { _ | Dyn }
              | doc "Metrics are a list of metrics emitted from this Workflow"
              | optional,
            nodeSelector
              | { _ | String }
              | doc "NodeSelector is a selector which will result in all pods of the workflow to be scheduled on the selected node(s). This is able to be overridden by a nodeSelector specified in the template."
              | optional,
            onExit
              | String
              | doc "OnExit is a template reference which is invoked at the end of the workflow, irrespective of the success, failure, or error of the primary io.argoproj.workflow.v1alpha1."
              | optional,
            parallelism
              | std.number.Integer
              | doc "Parallelism limits the max total parallel pods that can execute at the same time in a workflow"
              | optional,
            podDisruptionBudget
              | refs."definitions.io.k8s.api.policy.v1.PodDisruptionBudgetSpec"
              | { _ | Dyn }
              | doc "PodDisruptionBudget holds the number of concurrent disruptions that you allow for Workflow's Pods. Controller will automatically add the selector with workflow name, if selector is empty. Optional: Defaults to empty."
              | optional,
            podGC
              | refs."definitions.io.argoproj.workflow.v1alpha1.PodGC"
              | { _ | Dyn }
              | doc "PodGC describes the strategy to use when deleting completed pods"
              | optional,
            podMetadata
              | refs."definitions.io.argoproj.workflow.v1alpha1.Metadata"
              | { _ | Dyn }
              | doc "PodMetadata defines additional metadata that should be applied to workflow pods"
              | optional,
            podPriorityClassName
              | String
              | doc "PriorityClassName to apply to workflow pods."
              | optional,
            podSpecPatch
              | String
              | doc "PodSpecPatch holds strategic merge patch to apply against the pod spec. Allows parameterization of container fields which are not strings (e.g. resource limits)."
              | optional,
            "priority"
              | std.number.Integer
              | doc "Priority is used if controller is configured to process limited number of workflows in parallel. Workflows with higher priority are processed first."
              | optional,
            retryStrategy
              | refs."definitions.io.argoproj.workflow.v1alpha1.RetryStrategy"
              | { _ | Dyn }
              | doc "RetryStrategy for all templates in the io.argoproj.workflow.v1alpha1."
              | optional,
            schedulerName
              | String
              | doc "Set scheduler name for all pods. Will be overridden if container/script template's scheduler name is set. Default scheduler will be used if neither specified."
              | optional,
            securityContext
              | refs."definitions.io.k8s.api.core.v1.PodSecurityContext"
              | { _ | Dyn }
              | doc "SecurityContext holds pod-level security attributes and common container settings. Optional: Defaults to empty.  See type description for default values of each field."
              | optional,
            serviceAccountName
              | String
              | doc "ServiceAccountName is the name of the ServiceAccount to run all pods of the workflow as."
              | optional,
            shutdown
              | String
              | doc "Shutdown will shutdown the workflow according to its ShutdownStrategy"
              | optional,
            suspend
              | Bool
              | doc "Suspend will suspend the workflow and prevent execution of any future steps in the workflow"
              | optional,
            synchronization
              | refs."definitions.io.argoproj.workflow.v1alpha1.Synchronization"
              | { _ | Dyn }
              | doc "Synchronization holds synchronization lock configuration for this Workflow"
              | optional,
            templateDefaults
              | refs."definitions.io.argoproj.workflow.v1alpha1.Template"
              | { _ | Dyn }
              | doc "TemplateDefaults holds default template values that will apply to all templates in the Workflow, unless overridden on the template-level"
              | optional,
            templates
              | Array (
                std.contract.Sequence
                  [
                    refs."definitions.io.argoproj.workflow.v1alpha1.Template",
                    { _ | Dyn }
                  ]
              )
              | doc "Templates is a list of workflow templates used in a workflow"
              | optional,
            tolerations
              | Array (
                std.contract.Sequence
                  [
                    refs."definitions.io.k8s.api.core.v1.Toleration",
                    { _ | Dyn }
                  ]
              )
              | doc "Tolerations to apply to workflow pods."
              | optional,
            ttlStrategy
              | refs."definitions.io.argoproj.workflow.v1alpha1.TTLStrategy"
              | { _ | Dyn }
              | doc "TTLStrategy limits the lifetime of a Workflow that has finished execution depending on if it Succeeded or Failed. If this struct is set, once the Workflow finishes, it will be deleted after the time to live expires. If this field is unset, the controller config map will hold the default values."
              | optional,
            volumeClaimGC
              | refs."definitions.io.argoproj.workflow.v1alpha1.VolumeClaimGC"
              | { _ | Dyn }
              | doc "VolumeClaimGC describes the strategy to use when deleting volumes from completed workflows"
              | optional,
            volumeClaimTemplates
              | Array (
                std.contract.Sequence
                  [
                    refs."definitions.io.k8s.api.core.v1.PersistentVolumeClaim",
                    { _ | Dyn }
                  ]
              )
              | doc "VolumeClaimTemplates is a list of claims that containers are allowed to reference. The Workflow controller will create the claims at the beginning of the workflow and delete the claims upon completion of the workflow"
              | optional,
            volumes
              | Array (
                std.contract.Sequence
                  [ refs."definitions.io.k8s.api.core.v1.Volume", { _ | Dyn } ]
              )
              | doc "Volumes is a list of volumes that can be mounted by containers in a io.argoproj.workflow.v1alpha1."
              | optional,
            workflowMetadata
              | refs."definitions.io.argoproj.workflow.v1alpha1.WorkflowMetadata"
              | { _ | Dyn }
              | doc "WorkflowMetadata contains some metadata of the workflow to refer to"
              | optional,
            workflowTemplateRef
              | refs."definitions.io.argoproj.workflow.v1alpha1.WorkflowTemplateRef"
              | { _ | Dyn }
              | doc "WorkflowTemplateRef holds a reference to a WorkflowTemplate for execution"
              | optional,
            ..
          },
      "definitions.io.argoproj.workflow.v1alpha1.WorkflowStatus" =
        {
            artifactGCStatus
              | refs."definitions.io.argoproj.workflow.v1alpha1.ArtGCStatus"
              | { _ | Dyn }
              | doc "ArtifactGCStatus maintains the status of Artifact Garbage Collection"
              | optional,
            artifactRepositoryRef
              | refs."definitions.io.argoproj.workflow.v1alpha1.ArtifactRepositoryRefStatus"
              | { _ | Dyn }
              | doc "ArtifactRepositoryRef is used to cache the repository to use so we do not need to determine it everytime we reconcile."
              | optional,
            compressedNodes
              | String
              | doc "Compressed and base64 decoded Nodes map"
              | optional,
            conditions
              | Array (
                std.contract.Sequence
                  [
                    refs."definitions.io.argoproj.workflow.v1alpha1.Condition",
                    { _ | Dyn }
                  ]
              )
              | doc "Conditions is a list of conditions the Workflow may have"
              | optional,
            estimatedDuration
              | std.number.Integer
              | doc "EstimatedDuration in seconds."
              | optional,
            finishedAt
              | refs."definitions.io.k8s.apimachinery.pkg.apis.meta.v1.Time"
              | String
              | doc "Time at which this workflow completed"
              | optional,
            message
              | String
              | doc "A human readable message indicating details about why the workflow is in this condition."
              | optional,
            nodes
              | {
                _ | std.contract.Sequence
                  [
                    refs."definitions.io.argoproj.workflow.v1alpha1.NodeStatus",
                    { _ | Dyn }
                  ]
              }
              | doc "Nodes is a mapping between a node ID and the node's status."
              | optional,
            offloadNodeStatusVersion
              | String
              | doc "Whether on not node status has been offloaded to a database. If exists, then Nodes and CompressedNodes will be empty. This will actually be populated with a hash of the offloaded data."
              | optional,
            outputs
              | refs."definitions.io.argoproj.workflow.v1alpha1.Outputs"
              | { _ | Dyn }
              | doc "Outputs captures output values and artifact locations produced by the workflow via global outputs"
              | optional,
            persistentVolumeClaims
              | Array (
                std.contract.Sequence
                  [ refs."definitions.io.k8s.api.core.v1.Volume", { _ | Dyn } ]
              )
              | doc "PersistentVolumeClaims tracks all PVCs that were created as part of the io.argoproj.workflow.v1alpha1. The contents of this list are drained at the end of the workflow."
              | optional,
            phase
              | String
              | doc "Phase a simple, high-level summary of where the workflow is in its lifecycle. Will be \"\" (Unknown), \"Pending\", or \"Running\" before the workflow is completed, and \"Succeeded\", \"Failed\" or \"Error\" once the workflow has completed."
              | optional,
            progress | String | doc "Progress to completion" | optional,
            resourcesDuration
              | { _ | std.number.Integer }
              | doc "ResourcesDuration is the total for the workflow"
              | optional,
            startedAt
              | refs."definitions.io.k8s.apimachinery.pkg.apis.meta.v1.Time"
              | String
              | doc "Time at which this workflow started"
              | optional,
            storedTemplates
              | {
                _ | std.contract.Sequence
                  [
                    refs."definitions.io.argoproj.workflow.v1alpha1.Template",
                    { _ | Dyn }
                  ]
              }
              | doc "StoredTemplates is a mapping between a template ref and the node's status."
              | optional,
            storedWorkflowTemplateSpec
              | refs."definitions.io.argoproj.workflow.v1alpha1.WorkflowSpec"
              | { _ | Dyn }
              | doc "StoredWorkflowSpec stores the WorkflowTemplate spec for future execution."
              | optional,
            synchronization
              | refs."definitions.io.argoproj.workflow.v1alpha1.SynchronizationStatus"
              | { _ | Dyn }
              | doc "Synchronization stores the status of synchronization locks"
              | optional,
            taskResultsCompletionStatus
              | { _ | Bool }
              | doc "TaskResultsCompletionStatus tracks task result completion status (mapped by node ID). Used to prevent premature archiving and garbage collection."
              | optional,
            ..
          },
      "definitions.io.argoproj.workflow.v1alpha1.WorkflowStep" =
        {
            arguments
              | refs."definitions.io.argoproj.workflow.v1alpha1.Arguments"
              | { _ | Dyn }
              | doc "Arguments hold arguments to the template"
              | optional,
            continueOn
              | refs."definitions.io.argoproj.workflow.v1alpha1.ContinueOn"
              | { _ | Dyn }
              | doc "ContinueOn makes argo to proceed with the following step even if this step fails. Errors and Failed states can be specified"
              | optional,
            hooks
              | {
                _ | std.contract.Sequence
                  [
                    refs."definitions.io.argoproj.workflow.v1alpha1.LifecycleHook",
                    { _ | Dyn }
                  ]
              }
              | doc "Hooks holds the lifecycle hook which is invoked at lifecycle of step, irrespective of the success, failure, or error status of the primary step"
              | optional,
            inline
              | refs."definitions.io.argoproj.workflow.v1alpha1.Template"
              | { _ | Dyn }
              | doc "Inline is the template. Template must be empty if this is declared (and vice-versa). Note: This struct is defined recursively, since the inline template can potentially contain steps/DAGs that also has an \"inline\" field. Kubernetes doesn't allow recursive types, so we need \"x-kubernetes-preserve-unknown-fields: true\" in the validation schema."
              | optional,
            name | String | doc "Name of the step" | optional,
            onExit
              | String
              | doc "OnExit is a template reference which is invoked at the end of the template, irrespective of the success, failure, or error of the primary template. DEPRECATED: Use Hooks[exit].Template instead."
              | optional,
            template
              | String
              | doc "Template is the name of the template to execute as the step"
              | optional,
            templateRef
              | refs."definitions.io.argoproj.workflow.v1alpha1.TemplateRef"
              | { _ | Dyn }
              | doc "TemplateRef is the reference to the template resource to execute as the step."
              | optional,
            when
              | String
              | doc "When is an expression in which the step should conditionally execute"
              | optional,
            withItems
              | Array refs."definitions.io.argoproj.workflow.v1alpha1.Item"
              | doc "WithItems expands a step into multiple parallel steps from the items in the list Note: The structure of WithItems is free-form, so we need \"x-kubernetes-preserve-unknown-fields: true\" in the validation schema."
              | optional,
            withParam
              | String
              | doc "WithParam expands a step into multiple parallel steps from the value in the parameter, which is expected to be a JSON list."
              | optional,
            withSequence
              | refs."definitions.io.argoproj.workflow.v1alpha1.Sequence"
              | { _ | Dyn }
              | doc "WithSequence expands a step into a numeric sequence"
              | optional,
            ..
          },
      "definitions.io.argoproj.workflow.v1alpha1.WorkflowTemplate" =
        {
            apiVersion
              | std.contract.Equal "argoproj.io/v1alpha1"
              | doc "APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.io.k8s.community/contributors/devel/sig-architecture/api-conventions.md#resources"
              | optional,
            kind
              | std.contract.Equal "WorkflowTemplate"
              | doc "Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.io.k8s.community/contributors/devel/sig-architecture/api-conventions.md#types-kinds"
              | optional,
            metadata
              | refs."definitions.io.k8s.apimachinery.pkg.apis.meta.v1.ObjectMeta"
              | { _ | Dyn },
            spec
              | refs."definitions.io.argoproj.workflow.v1alpha1.WorkflowSpec"
              | { _ | Dyn },
            ..
          },
      "definitions.io.argoproj.workflow.v1alpha1.WorkflowTemplateRef" =
        {
            clusterScope
              | Bool
              | doc "ClusterScope indicates the referred template is cluster scoped (i.e. a ClusterWorkflowTemplate)."
              | optional,
            name
              | String
              | doc "Name is the resource name of the workflow template."
              | optional,
            ..
          },
      "definitions.io.argoproj.workflow.v1alpha1.ZipStrategy" = { _ | Dyn },
      "definitions.io.k8s.api.core.v1.AWSElasticBlockStoreVolumeSource" =
        {
            fsType
              | String
              | doc "fsType is the filesystem type of the volume that you want to mount. Tip: Ensure that the filesystem type is supported by the host operating system. Examples: \"ext4\", \"xfs\", \"ntfs\". Implicitly inferred to be \"ext4\" if unspecified. More info: https://kubernetes.io/docs/concepts/storage/volumes#awselasticblockstore"
              | optional,
            partition
              | std.number.Integer
              | doc "partition is the partition in the volume that you want to mount. If omitted, the default is to mount by volume name. Examples: For volume /dev/sda1, you specify the partition as \"1\". Similarly, the volume partition for /dev/sda is \"0\" (or you can leave the property empty)."
              | optional,
            readOnly
              | Bool
              | doc "readOnly value true will force the readOnly setting in VolumeMounts. More info: https://kubernetes.io/docs/concepts/storage/volumes#awselasticblockstore"
              | optional,
            volumeID
              | String
              | doc "volumeID is unique ID of the persistent disk resource in AWS (Amazon EBS volume). More info: https://kubernetes.io/docs/concepts/storage/volumes#awselasticblockstore",
            ..
          },
      "definitions.io.k8s.api.core.v1.Affinity" =
        {
            nodeAffinity
              | refs."definitions.io.k8s.api.core.v1.NodeAffinity"
              | { _ | Dyn }
              | doc "Describes node affinity scheduling rules for the pod."
              | optional,
            podAffinity
              | refs."definitions.io.k8s.api.core.v1.PodAffinity"
              | { _ | Dyn }
              | doc "Describes pod affinity scheduling rules (e.g. co-locate this pod in the same node, zone, etc. as some other pod(s))."
              | optional,
            podAntiAffinity
              | refs."definitions.io.k8s.api.core.v1.PodAntiAffinity"
              | { _ | Dyn }
              | doc "Describes pod anti-affinity scheduling rules (e.g. avoid putting this pod in the same node, zone, etc. as some other pod(s))."
              | optional,
            ..
          },
      "definitions.io.k8s.api.core.v1.AppArmorProfile" =
        {
            localhostProfile
              | String
              | doc "localhostProfile indicates a profile loaded on the node that should be used. The profile must be preconfigured on the node to work. Must match the loaded name of the profile. Must be set if and only if type is \"Localhost\"."
              | optional,
            type
              | String
              | doc m%"
                type indicates which kind of AppArmor profile will be applied. Valid options are:
                  Localhost - a profile pre-loaded on the node.
                  RuntimeDefault - the container runtime's default profile.
                  Unconfined - no AppArmor enforcement.
              "%,
            ..
          },
      "definitions.io.k8s.api.core.v1.AzureDiskVolumeSource" =
        {
            cachingMode
              | String
              | doc "cachingMode is the Host Caching mode: None, Read Only, Read Write."
              | optional,
            diskName
              | String
              | doc "diskName is the Name of the data disk in the blob storage",
            diskURI
              | String
              | doc "diskURI is the URI of data disk in the blob storage",
            fsType
              | String
              | doc "fsType is Filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. \"ext4\", \"xfs\", \"ntfs\". Implicitly inferred to be \"ext4\" if unspecified."
              | optional,
            kind
              | String
              | doc "kind expected values are Shared: multiple blob disks per storage account  Dedicated: single blob disk per storage account  Managed: azure managed data disk (only in managed availability set). defaults to shared"
              | optional,
            readOnly
              | Bool
              | doc "readOnly Defaults to false (read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts."
              | optional,
            ..
          },
      "definitions.io.k8s.api.core.v1.AzureFileVolumeSource" =
        {
            readOnly
              | Bool
              | doc "readOnly defaults to false (read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts."
              | optional,
            secretName
              | String
              | doc "secretName is the  name of secret that contains Azure Storage Account Name and Key",
            shareName | String | doc "shareName is the azure share Name",
            ..
          },
      "definitions.io.k8s.api.core.v1.CSIVolumeSource" =
        {
            driver
              | String
              | doc "driver is the name of the CSI driver that handles this volume. Consult with your admin for the correct name as registered in the cluster.",
            fsType
              | String
              | doc "fsType to mount. Ex. \"ext4\", \"xfs\", \"ntfs\". If not provided, the empty value is passed to the associated CSI driver which will determine the default filesystem to apply."
              | optional,
            nodePublishSecretRef
              | refs."definitions.io.k8s.api.core.v1.LocalObjectReference"
              | { _ | Dyn }
              | doc "nodePublishSecretRef is a reference to the secret object containing sensitive information to pass to the CSI driver to complete the CSI NodePublishVolume and NodeUnpublishVolume calls. This field is optional, and  may be empty if no secret is required. If the secret object contains more than one secret, all secret references are passed."
              | optional,
            readOnly
              | Bool
              | doc "readOnly specifies a read-only configuration for the volume. Defaults to false (read/write)."
              | optional,
            volumeAttributes
              | { _ | String }
              | doc "volumeAttributes stores driver-specific properties that are passed to the CSI driver. Consult your driver's documentation for supported values."
              | optional,
            ..
          },
      "definitions.io.k8s.api.core.v1.Capabilities" =
        {
            add | Array String | doc "Added capabilities" | optional,
            drop | Array String | doc "Removed capabilities" | optional,
            ..
          },
      "definitions.io.k8s.api.core.v1.CephFSVolumeSource" =
        {
            monitors
              | Array String
              | doc "monitors is Required: Monitors is a collection of Ceph monitors More info: https://examples.k8s.io/volumes/cephfs/README.md#how-to-use-it",
            path
              | String
              | doc "path is Optional: Used as the mounted root, rather than the full Ceph tree, default is /"
              | optional,
            readOnly
              | Bool
              | doc "readOnly is Optional: Defaults to false (read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts. More info: https://examples.k8s.io/volumes/cephfs/README.md#how-to-use-it"
              | optional,
            secretFile
              | String
              | doc "secretFile is Optional: SecretFile is the path to key ring for User, default is /etc/ceph/user.secret More info: https://examples.k8s.io/volumes/cephfs/README.md#how-to-use-it"
              | optional,
            secretRef
              | refs."definitions.io.k8s.api.core.v1.LocalObjectReference"
              | { _ | Dyn }
              | doc "secretRef is Optional: SecretRef is reference to the authentication secret for User, default is empty. More info: https://examples.k8s.io/volumes/cephfs/README.md#how-to-use-it"
              | optional,
            user
              | String
              | doc "user is optional: User is the rados user name, default is admin More info: https://examples.k8s.io/volumes/cephfs/README.md#how-to-use-it"
              | optional,
            ..
          },
      "definitions.io.k8s.api.core.v1.CinderVolumeSource" =
        {
            fsType
              | String
              | doc "fsType is the filesystem type to mount. Must be a filesystem type supported by the host operating system. Examples: \"ext4\", \"xfs\", \"ntfs\". Implicitly inferred to be \"ext4\" if unspecified. More info: https://examples.k8s.io/mysql-cinder-pd/README.md"
              | optional,
            readOnly
              | Bool
              | doc "readOnly defaults to false (read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts. More info: https://examples.k8s.io/mysql-cinder-pd/README.md"
              | optional,
            secretRef
              | refs."definitions.io.k8s.api.core.v1.LocalObjectReference"
              | { _ | Dyn }
              | doc "secretRef is optional: points to a secret object containing parameters used to connect to OpenStack."
              | optional,
            volumeID
              | String
              | doc "volumeID used to identify the volume in cinder. More info: https://examples.k8s.io/mysql-cinder-pd/README.md",
            ..
          },
      "definitions.io.k8s.api.core.v1.ClusterTrustBundleProjection" =
        {
            labelSelector
              | refs."definitions.io.k8s.apimachinery.pkg.apis.meta.v1.LabelSelector"
              | { _ | Dyn }
              | doc "Select all ClusterTrustBundles that match this label selector.  Only has effect if signerName is set.  Mutually-exclusive with name.  If unset, interpreted as \"match nothing\".  If set but empty, interpreted as \"match everything\"."
              | optional,
            name
              | String
              | doc "Select a single ClusterTrustBundle by object name.  Mutually-exclusive with signerName and labelSelector."
              | optional,
            "optional"
              | Bool
              | doc "If true, don't block pod startup if the referenced ClusterTrustBundle(s) aren't available.  If using name, then the named ClusterTrustBundle is allowed not to exist.  If using signerName, then the combination of signerName and labelSelector is allowed to match zero ClusterTrustBundles."
              | optional,
            path
              | String
              | doc "Relative path from the volume root to write the bundle.",
            signerName
              | String
              | doc "Select all ClusterTrustBundles that match this signer name. Mutually-exclusive with name.  The contents of all selected ClusterTrustBundles will be unified and deduplicated."
              | optional,
            ..
          },
      "definitions.io.k8s.api.core.v1.ConfigMapEnvSource" =
        {
            name
              | String
              | doc "Name of the referent. This field is effectively required, but due to backwards compatibility is allowed to be empty. Instances of this type with an empty value here are almost certainly wrong. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names"
              | optional,
            "optional"
              | Bool
              | doc "Specify whether the ConfigMap must be defined"
              | optional,
            ..
          },
      "definitions.io.k8s.api.core.v1.ConfigMapKeySelector" =
        {
            key | String | doc "The key to select.",
            name
              | String
              | doc "Name of the referent. This field is effectively required, but due to backwards compatibility is allowed to be empty. Instances of this type with an empty value here are almost certainly wrong. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names"
              | optional,
            "optional"
              | Bool
              | doc "Specify whether the ConfigMap or its key must be defined"
              | optional,
            ..
          },
      "definitions.io.k8s.api.core.v1.ConfigMapProjection" =
        {
            items
              | Array (
                std.contract.Sequence
                  [
                    refs."definitions.io.k8s.api.core.v1.KeyToPath",
                    { _ | Dyn }
                  ]
              )
              | doc "items if unspecified, each key-value pair in the Data field of the referenced ConfigMap will be projected into the volume as a file whose name is the key and content is the value. If specified, the listed keys will be projected into the specified paths, and unlisted keys will not be present. If a key is specified which is not present in the ConfigMap, the volume setup will error unless it is marked optional. Paths must be relative and may not contain the '..' path or start with '..'."
              | optional,
            name
              | String
              | doc "Name of the referent. This field is effectively required, but due to backwards compatibility is allowed to be empty. Instances of this type with an empty value here are almost certainly wrong. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names"
              | optional,
            "optional"
              | Bool
              | doc "optional specify whether the ConfigMap or its keys must be defined"
              | optional,
            ..
          },
      "definitions.io.k8s.api.core.v1.ConfigMapVolumeSource" =
        {
            defaultMode
              | std.number.Integer
              | doc "defaultMode is optional: mode bits used to set permissions on created files by default. Must be an octal value between 0000 and 0777 or a decimal value between 0 and 511. YAML accepts both octal and decimal values, JSON requires decimal values for mode bits. Defaults to 0644. Directories within the path are not affected by this setting. This might be in conflict with other options that affect the file mode, like fsGroup, and the result can be other mode bits set."
              | optional,
            items
              | Array (
                std.contract.Sequence
                  [
                    refs."definitions.io.k8s.api.core.v1.KeyToPath",
                    { _ | Dyn }
                  ]
              )
              | doc "items if unspecified, each key-value pair in the Data field of the referenced ConfigMap will be projected into the volume as a file whose name is the key and content is the value. If specified, the listed keys will be projected into the specified paths, and unlisted keys will not be present. If a key is specified which is not present in the ConfigMap, the volume setup will error unless it is marked optional. Paths must be relative and may not contain the '..' path or start with '..'."
              | optional,
            name
              | String
              | doc "Name of the referent. This field is effectively required, but due to backwards compatibility is allowed to be empty. Instances of this type with an empty value here are almost certainly wrong. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names"
              | optional,
            "optional"
              | Bool
              | doc "optional specify whether the ConfigMap or its keys must be defined"
              | optional,
            ..
          },
      "definitions.io.k8s.api.core.v1.Container" =
        {
            args
              | Array String
              | doc "Arguments to the entrypoint. The container image's CMD is used if this is not provided. Variable references $(VAR_NAME) are expanded using the container's environment. If a variable cannot be resolved, the reference in the input string will be unchanged. Double $$ are reduced to a single $, which allows for escaping the $(VAR_NAME) syntax: i.e. \"$$(VAR_NAME)\" will produce the string literal \"$(VAR_NAME)\". Escaped references will never be expanded, regardless of whether the variable exists or not. Cannot be updated. More info: https://kubernetes.io/docs/tasks/inject-data-application/define-command-argument-container/#running-a-command-in-a-shell"
              | optional,
            command
              | Array String
              | doc "Entrypoint array. Not executed within a shell. The container image's ENTRYPOINT is used if this is not provided. Variable references $(VAR_NAME) are expanded using the container's environment. If a variable cannot be resolved, the reference in the input string will be unchanged. Double $$ are reduced to a single $, which allows for escaping the $(VAR_NAME) syntax: i.e. \"$$(VAR_NAME)\" will produce the string literal \"$(VAR_NAME)\". Escaped references will never be expanded, regardless of whether the variable exists or not. Cannot be updated. More info: https://kubernetes.io/docs/tasks/inject-data-application/define-command-argument-container/#running-a-command-in-a-shell"
              | optional,
            env
              | Array (
                std.contract.Sequence
                  [ refs."definitions.io.k8s.api.core.v1.EnvVar", { _ | Dyn } ]
              )
              | doc "List of environment variables to set in the container. Cannot be updated."
              | optional,
            envFrom
              | Array (
                std.contract.Sequence
                  [
                    refs."definitions.io.k8s.api.core.v1.EnvFromSource",
                    { _ | Dyn }
                  ]
              )
              | doc "List of sources to populate environment variables in the container. The keys defined within a source must be a C_IDENTIFIER. All invalid keys will be reported as an event when the container is starting. When a key exists in multiple sources, the value associated with the last source will take precedence. Values defined by an Env with a duplicate key will take precedence. Cannot be updated."
              | optional,
            image
              | String
              | doc "Container image name. More info: https://kubernetes.io/docs/concepts/containers/images This field is optional to allow higher level config management to default or override container images in workload controllers like Deployments and StatefulSets.",
            imagePullPolicy
              | String
              | doc "Image pull policy. One of Always, Never, IfNotPresent. Defaults to Always if :latest tag is specified, or IfNotPresent otherwise. Cannot be updated. More info: https://kubernetes.io/docs/concepts/containers/images#updating-images"
              | optional,
            lifecycle
              | refs."definitions.io.k8s.api.core.v1.Lifecycle"
              | { _ | Dyn }
              | doc "Actions that the management system should take in response to container lifecycle events. Cannot be updated."
              | optional,
            livenessProbe
              | refs."definitions.io.k8s.api.core.v1.Probe"
              | { _ | Dyn }
              | doc "Periodic probe of container liveness. Container will be restarted if the probe fails. Cannot be updated. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes"
              | optional,
            name
              | String
              | doc "Name of the container specified as a DNS_LABEL. Each container in a pod must have a unique name (DNS_LABEL). Cannot be updated."
              | optional,
            ports
              | Array (
                std.contract.Sequence
                  [
                    refs."definitions.io.k8s.api.core.v1.ContainerPort",
                    { _ | Dyn }
                  ]
              )
              | doc "List of ports to expose from the container. Not specifying a port here DOES NOT prevent that port from being exposed. Any port which is listening on the default \"0.0.0.0\" address inside a container will be accessible from the network. Modifying this array with strategic merge patch may corrupt the data. For more information See https://github.com/kubernetes/kubernetes/issues/108255. Cannot be updated."
              | optional,
            readinessProbe
              | refs."definitions.io.k8s.api.core.v1.Probe"
              | { _ | Dyn }
              | doc "Periodic probe of container service readiness. Container will be removed from service endpoints if the probe fails. Cannot be updated. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes"
              | optional,
            resizePolicy
              | Array (
                std.contract.Sequence
                  [
                    refs."definitions.io.k8s.api.core.v1.ContainerResizePolicy",
                    { _ | Dyn }
                  ]
              )
              | doc "Resources resize policy for the container."
              | optional,
            resources
              | refs."definitions.io.k8s.api.core.v1.ResourceRequirements"
              | { _ | Dyn }
              | doc "Compute Resources required by this container. Cannot be updated. More info: https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/"
              | optional,
            restartPolicy
              | String
              | doc "RestartPolicy defines the restart behavior of individual containers in a pod. This field may only be set for init containers, and the only allowed value is \"Always\". For non-init containers or when this field is not specified, the restart behavior is defined by the Pod's restart policy and the container type. Setting the RestartPolicy as \"Always\" for the init container will have the following effect: this init container will be continually restarted on exit until all regular containers have terminated. Once all regular containers have completed, all init containers with restartPolicy \"Always\" will be shut down. This lifecycle differs from normal init containers and is often referred to as a \"sidecar\" container. Although this init container still starts in the init container sequence, it does not wait for the container to complete before proceeding to the next init container. Instead, the next init container starts immediately after this init container is started, or after any startupProbe has successfully completed."
              | optional,
            securityContext
              | refs."definitions.io.k8s.api.core.v1.SecurityContext"
              | { _ | Dyn }
              | doc "SecurityContext defines the security options the container should be run with. If set, the fields of SecurityContext override the equivalent fields of PodSecurityContext. More info: https://kubernetes.io/docs/tasks/configure-pod-container/security-context/"
              | optional,
            startupProbe
              | refs."definitions.io.k8s.api.core.v1.Probe"
              | { _ | Dyn }
              | doc "StartupProbe indicates that the Pod has successfully initialized. If specified, no other probes are executed until this completes successfully. If this probe fails, the Pod will be restarted, just as if the livenessProbe failed. This can be used to provide different probe parameters at the beginning of a Pod's lifecycle, when it might take a long time to load data or warm a cache, than during steady-state operation. This cannot be updated. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes"
              | optional,
            stdin
              | Bool
              | doc "Whether this container should allocate a buffer for stdin in the container runtime. If this is not set, reads from stdin in the container will always result in EOF. Default is false."
              | optional,
            stdinOnce
              | Bool
              | doc "Whether the container runtime should close the stdin channel after it has been opened by a single attach. When stdin is true the stdin stream will remain open across multiple attach sessions. If stdinOnce is set to true, stdin is opened on container start, is empty until the first client attaches to stdin, and then remains open and accepts data until the client disconnects, at which time stdin is closed and remains closed until the container is restarted. If this flag is false, a container processes that reads from stdin will never receive an EOF. Default is false"
              | optional,
            terminationMessagePath
              | String
              | doc "Optional: Path at which the file to which the container's termination message will be written is mounted into the container's filesystem. Message written is intended to be brief final status, such as an assertion failure message. Will be truncated by the node if greater than 4096 bytes. The total message length across all containers will be limited to 12kb. Defaults to /dev/termination-log. Cannot be updated."
              | optional,
            terminationMessagePolicy
              | String
              | doc "Indicate how the termination message should be populated. File will use the contents of terminationMessagePath to populate the container status message on both success and failure. FallbackToLogsOnError will use the last chunk of container log output if the termination message file is empty and the container exited with an error. The log output is limited to 2048 bytes or 80 lines, whichever is smaller. Defaults to File. Cannot be updated."
              | optional,
            tty
              | Bool
              | doc "Whether this container should allocate a TTY for itself, also requires 'stdin' to be true. Default is false."
              | optional,
            volumeDevices
              | Array (
                std.contract.Sequence
                  [
                    refs."definitions.io.k8s.api.core.v1.VolumeDevice",
                    { _ | Dyn }
                  ]
              )
              | doc "volumeDevices is the list of block devices to be used by the container."
              | optional,
            volumeMounts
              | Array (
                std.contract.Sequence
                  [
                    refs."definitions.io.k8s.api.core.v1.VolumeMount",
                    { _ | Dyn }
                  ]
              )
              | doc "Pod volumes to mount into the container's filesystem. Cannot be updated."
              | optional,
            workingDir
              | String
              | doc "Container's working directory. If not specified, the container runtime's default will be used, which might be configured in the container image. Cannot be updated."
              | optional,
            ..
          },
      "definitions.io.k8s.api.core.v1.ContainerPort" =
        {
            containerPort
              | std.number.Integer
              | doc "Number of port to expose on the pod's IP address. This must be a valid port number, 0 < x < 65536.",
            hostIP
              | String
              | doc "What host IP to bind the external port to."
              | optional,
            hostPort
              | std.number.Integer
              | doc "Number of port to expose on the host. If specified, this must be a valid port number, 0 < x < 65536. If HostNetwork is specified, this must match ContainerPort. Most containers do not need this."
              | optional,
            name
              | String
              | doc "If specified, this must be an IANA_SVC_NAME and unique within the pod. Each named port in a pod must have a unique name. Name for the port that can be referred to by services."
              | optional,
            protocol
              | String
              | doc "Protocol for port. Must be UDP, TCP, or SCTP. Defaults to \"TCP\"."
              | optional,
            ..
          },
      "definitions.io.k8s.api.core.v1.ContainerResizePolicy" =
        {
            resourceName
              | String
              | doc "Name of the resource to which this resource resize policy applies. Supported values: cpu, memory.",
            restartPolicy
              | String
              | doc "Restart policy to apply when specified resource is resized. If not specified, it defaults to NotRequired.",
            ..
          },
      "definitions.io.k8s.api.core.v1.DownwardAPIProjection" =
        {
            items
              | Array (
                std.contract.Sequence
                  [
                    refs."definitions.io.k8s.api.core.v1.DownwardAPIVolumeFile",
                    { _ | Dyn }
                  ]
              )
              | doc "Items is a list of DownwardAPIVolume file"
              | optional,
            ..
          },
      "definitions.io.k8s.api.core.v1.DownwardAPIVolumeFile" =
        {
            fieldRef
              | refs."definitions.io.k8s.api.core.v1.ObjectFieldSelector"
              | { _ | Dyn }
              | doc "Required: Selects a field of the pod: only annotations, labels, name, namespace and uid are supported."
              | optional,
            mode
              | std.number.Integer
              | doc "Optional: mode bits used to set permissions on this file, must be an octal value between 0000 and 0777 or a decimal value between 0 and 511. YAML accepts both octal and decimal values, JSON requires decimal values for mode bits. If not specified, the volume defaultMode will be used. This might be in conflict with other options that affect the file mode, like fsGroup, and the result can be other mode bits set."
              | optional,
            path
              | String
              | doc "Required: Path is  the relative path name of the file to be created. Must not be absolute or contain the '..' path. Must be utf-8 encoded. The first item of the relative path must not start with '..'",
            resourceFieldRef
              | refs."definitions.io.k8s.api.core.v1.ResourceFieldSelector"
              | { _ | Dyn }
              | doc "Selects a resource of the container: only resources limits and requests (limits.cpu, limits.memory, requests.cpu and requests.memory) are currently supported."
              | optional,
            ..
          },
      "definitions.io.k8s.api.core.v1.DownwardAPIVolumeSource" =
        {
            defaultMode
              | std.number.Integer
              | doc "Optional: mode bits to use on created files by default. Must be a Optional: mode bits used to set permissions on created files by default. Must be an octal value between 0000 and 0777 or a decimal value between 0 and 511. YAML accepts both octal and decimal values, JSON requires decimal values for mode bits. Defaults to 0644. Directories within the path are not affected by this setting. This might be in conflict with other options that affect the file mode, like fsGroup, and the result can be other mode bits set."
              | optional,
            items
              | Array (
                std.contract.Sequence
                  [
                    refs."definitions.io.k8s.api.core.v1.DownwardAPIVolumeFile",
                    { _ | Dyn }
                  ]
              )
              | doc "Items is a list of downward API volume file"
              | optional,
            ..
          },
      "definitions.io.k8s.api.core.v1.EmptyDirVolumeSource" =
        {
            medium
              | String
              | doc "medium represents what type of storage medium should back this directory. The default is \"\" which means to use the node's default medium. Must be an empty string (default) or Memory. More info: https://kubernetes.io/docs/concepts/storage/volumes#emptydir"
              | optional,
            sizeLimit
              | refs."definitions.io.k8s.apimachinery.pkg.api.resource.Quantity"
              | String
              | doc "sizeLimit is the total amount of local storage required for this EmptyDir volume. The size limit is also applicable for memory medium. The maximum usage on memory medium EmptyDir would be the minimum value between the SizeLimit specified here and the sum of memory limits of all containers in a pod. The default is nil which means that the limit is undefined. More info: https://kubernetes.io/docs/concepts/storage/volumes#emptydir"
              | optional,
            ..
          },
      "definitions.io.k8s.api.core.v1.EnvFromSource" =
        {
            configMapRef
              | refs."definitions.io.k8s.api.core.v1.ConfigMapEnvSource"
              | { _ | Dyn }
              | doc "The ConfigMap to select from"
              | optional,
            prefix
              | String
              | doc "Optional text to prepend to the name of each environment variable. Must be a C_IDENTIFIER."
              | optional,
            secretRef
              | refs."definitions.io.k8s.api.core.v1.SecretEnvSource"
              | { _ | Dyn }
              | doc "The Secret to select from"
              | optional,
            ..
          },
      "definitions.io.k8s.api.core.v1.EnvVar" =
        {
            name
              | String
              | doc "Name of the environment variable. Must be a C_IDENTIFIER.",
            value
              | String
              | doc "Variable references $(VAR_NAME) are expanded using the previously defined environment variables in the container and any service environment variables. If a variable cannot be resolved, the reference in the input string will be unchanged. Double $$ are reduced to a single $, which allows for escaping the $(VAR_NAME) syntax: i.e. \"$$(VAR_NAME)\" will produce the string literal \"$(VAR_NAME)\". Escaped references will never be expanded, regardless of whether the variable exists or not. Defaults to \"\"."
              | optional,
            valueFrom
              | refs."definitions.io.k8s.api.core.v1.EnvVarSource"
              | { _ | Dyn }
              | doc "Source for the environment variable's value. Cannot be used if value is not empty."
              | optional,
            ..
          },
      "definitions.io.k8s.api.core.v1.EnvVarSource" =
        {
            configMapKeyRef
              | refs."definitions.io.k8s.api.core.v1.ConfigMapKeySelector"
              | { _ | Dyn }
              | doc "Selects a key of a ConfigMap."
              | optional,
            fieldRef
              | refs."definitions.io.k8s.api.core.v1.ObjectFieldSelector"
              | { _ | Dyn }
              | doc "Selects a field of the pod: supports metadata.name, metadata.namespace, `metadata.labels['<KEY>']`, `metadata.annotations['<KEY>']`, spec.nodeName, spec.serviceAccountName, status.hostIP, status.podIP, status.podIPs."
              | optional,
            resourceFieldRef
              | refs."definitions.io.k8s.api.core.v1.ResourceFieldSelector"
              | { _ | Dyn }
              | doc "Selects a resource of the container: only resources limits and requests (limits.cpu, limits.memory, limits.ephemeral-storage, requests.cpu, requests.memory and requests.ephemeral-storage) are currently supported."
              | optional,
            secretKeyRef
              | refs."definitions.io.k8s.api.core.v1.SecretKeySelector"
              | { _ | Dyn }
              | doc "Selects a key of a secret in the pod's namespace"
              | optional,
            ..
          },
      "definitions.io.k8s.api.core.v1.EphemeralVolumeSource" =
        {
            volumeClaimTemplate
              | refs."definitions.io.k8s.api.core.v1.PersistentVolumeClaimTemplate"
              | { _ | Dyn }
              | doc m%"
                Will be used to create a stand-alone PVC to provision the volume. The pod in which this EphemeralVolumeSource is embedded will be the owner of the PVC, i.e. the PVC will be deleted together with the pod.  The name of the PVC will be `<pod name>-<volume name>` where `<volume name>` is the name from the `PodSpec.Volumes` array entry. Pod validation will reject the pod if the concatenated name is not valid for a PVC (for example, too long).
                
                An existing PVC with that name that is not owned by the pod will *not* be used for the pod to avoid using an unrelated volume by mistake. Starting the pod is then blocked until the unrelated PVC is removed. If such a pre-created PVC is meant to be used by the pod, the PVC has to updated with an owner reference to the pod once the pod exists. Normally this should not be necessary, but it may be useful when manually reconstructing a broken cluster.
                
                This field is read-only and no changes will be made by Kubernetes to the PVC after it has been created.
                
                Required, must not be nil.
              "%
              | optional,
            ..
          },
      "definitions.io.k8s.api.core.v1.ExecAction" =
        {
            command
              | Array String
              | doc "Command is the command line to execute inside the container, the working directory for the command  is root ('/') in the container's filesystem. The command is simply exec'd, it is not run inside a shell, so traditional shell instructions ('|', etc) won't work. To use a shell, you need to explicitly call out to that shell. Exit status of 0 is treated as live/healthy and non-zero is unhealthy."
              | optional,
            ..
          },
      "definitions.io.k8s.api.core.v1.FCVolumeSource" =
        {
            fsType
              | String
              | doc "fsType is the filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. \"ext4\", \"xfs\", \"ntfs\". Implicitly inferred to be \"ext4\" if unspecified."
              | optional,
            lun
              | std.number.Integer
              | doc "lun is Optional: FC target lun number"
              | optional,
            readOnly
              | Bool
              | doc "readOnly is Optional: Defaults to false (read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts."
              | optional,
            targetWWNs
              | Array String
              | doc "targetWWNs is Optional: FC target worldwide names (WWNs)"
              | optional,
            wwids
              | Array String
              | doc "wwids Optional: FC volume world wide identifiers (wwids) Either wwids or combination of targetWWNs and lun must be set, but not both simultaneously."
              | optional,
            ..
          },
      "definitions.io.k8s.api.core.v1.FlexVolumeSource" =
        {
            driver
              | String
              | doc "driver is the name of the driver to use for this volume.",
            fsType
              | String
              | doc "fsType is the filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. \"ext4\", \"xfs\", \"ntfs\". The default filesystem depends on FlexVolume script."
              | optional,
            options
              | { _ | String }
              | doc "options is Optional: this field holds extra command options if any."
              | optional,
            readOnly
              | Bool
              | doc "readOnly is Optional: defaults to false (read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts."
              | optional,
            secretRef
              | refs."definitions.io.k8s.api.core.v1.LocalObjectReference"
              | { _ | Dyn }
              | doc "secretRef is Optional: secretRef is reference to the secret object containing sensitive information to pass to the plugin scripts. This may be empty if no secret object is specified. If the secret object contains more than one secret, all secrets are passed to the plugin scripts."
              | optional,
            ..
          },
      "definitions.io.k8s.api.core.v1.FlockerVolumeSource" =
        {
            datasetName
              | String
              | doc "datasetName is Name of the dataset stored as metadata -> name on the dataset for Flocker should be considered as deprecated"
              | optional,
            datasetUUID
              | String
              | doc "datasetUUID is the UUID of the dataset. This is unique identifier of a Flocker dataset"
              | optional,
            ..
          },
      "definitions.io.k8s.api.core.v1.GCEPersistentDiskVolumeSource" =
        {
            fsType
              | String
              | doc "fsType is filesystem type of the volume that you want to mount. Tip: Ensure that the filesystem type is supported by the host operating system. Examples: \"ext4\", \"xfs\", \"ntfs\". Implicitly inferred to be \"ext4\" if unspecified. More info: https://kubernetes.io/docs/concepts/storage/volumes#gcepersistentdisk"
              | optional,
            partition
              | std.number.Integer
              | doc "partition is the partition in the volume that you want to mount. If omitted, the default is to mount by volume name. Examples: For volume /dev/sda1, you specify the partition as \"1\". Similarly, the volume partition for /dev/sda is \"0\" (or you can leave the property empty). More info: https://kubernetes.io/docs/concepts/storage/volumes#gcepersistentdisk"
              | optional,
            pdName
              | String
              | doc "pdName is unique name of the PD resource in GCE. Used to identify the disk in GCE. More info: https://kubernetes.io/docs/concepts/storage/volumes#gcepersistentdisk",
            readOnly
              | Bool
              | doc "readOnly here will force the ReadOnly setting in VolumeMounts. Defaults to false. More info: https://kubernetes.io/docs/concepts/storage/volumes#gcepersistentdisk"
              | optional,
            ..
          },
      "definitions.io.k8s.api.core.v1.GRPCAction" =
        {
            port
              | std.number.Integer
              | doc "Port number of the gRPC service. Number must be in the range 1 to 65535.",
            service
              | String
              | doc m%"
                Service is the name of the service to place in the gRPC HealthCheckRequest (see https://github.com/grpc/grpc/blob/master/doc/health-checking.md).
                
                If this is not specified, the default behavior is defined by gRPC.
              "%
              | optional,
            ..
          },
      "definitions.io.k8s.api.core.v1.GitRepoVolumeSource" =
        {
            directory
              | String
              | doc "directory is the target directory name. Must not contain or start with '..'.  If '.' is supplied, the volume directory will be the git repository.  Otherwise, if specified, the volume will contain the git repository in the subdirectory with the given name."
              | optional,
            repository | String | doc "repository is the URL",
            revision
              | String
              | doc "revision is the commit hash for the specified revision."
              | optional,
            ..
          },
      "definitions.io.k8s.api.core.v1.GlusterfsVolumeSource" =
        {
            endpoints
              | String
              | doc "endpoints is the endpoint name that details Glusterfs topology. More info: https://examples.k8s.io/volumes/glusterfs/README.md#create-a-pod",
            path
              | String
              | doc "path is the Glusterfs volume path. More info: https://examples.k8s.io/volumes/glusterfs/README.md#create-a-pod",
            readOnly
              | Bool
              | doc "readOnly here will force the Glusterfs volume to be mounted with read-only permissions. Defaults to false. More info: https://examples.k8s.io/volumes/glusterfs/README.md#create-a-pod"
              | optional,
            ..
          },
      "definitions.io.k8s.api.core.v1.HTTPGetAction" =
        {
            host
              | String
              | doc "Host name to connect to, defaults to the pod IP. You probably want to set \"Host\" in httpHeaders instead."
              | optional,
            httpHeaders
              | Array (
                std.contract.Sequence
                  [
                    refs."definitions.io.k8s.api.core.v1.HTTPHeader",
                    { _ | Dyn }
                  ]
              )
              | doc "Custom headers to set in the request. HTTP allows repeated headers."
              | optional,
            path | String | doc "Path to access on the HTTP server." | optional,
            port
              | refs."definitions.io.k8s.apimachinery.pkg.util.intstr.IntOrString"
              | String
              | doc "Name or number of the port to access on the container. Number must be in the range 1 to 65535. Name must be an IANA_SVC_NAME.",
            scheme
              | String
              | doc "Scheme to use for connecting to the host. Defaults to HTTP."
              | optional,
            ..
          },
      "definitions.io.k8s.api.core.v1.HTTPHeader" =
        {
            name
              | String
              | doc "The header field name. This will be canonicalized upon output, so case-variant names will be understood as the same header.",
            value | String | doc "The header field value",
            ..
          },
      "definitions.io.k8s.api.core.v1.HostAlias" =
        {
            hostnames
              | Array String
              | doc "Hostnames for the above IP address."
              | optional,
            ip | String | doc "IP address of the host file entry.",
            ..
          },
      "definitions.io.k8s.api.core.v1.HostPathVolumeSource" =
        {
            path
              | String
              | doc "path of the directory on the host. If the path is a symlink, it will follow the link to the real path. More info: https://kubernetes.io/docs/concepts/storage/volumes#hostpath",
            type
              | String
              | doc "type for HostPath Volume Defaults to \"\" More info: https://kubernetes.io/docs/concepts/storage/volumes#hostpath"
              | optional,
            ..
          },
      "definitions.io.k8s.api.core.v1.ISCSIVolumeSource" =
        {
            chapAuthDiscovery
              | Bool
              | doc "chapAuthDiscovery defines whether support iSCSI Discovery CHAP authentication"
              | optional,
            chapAuthSession
              | Bool
              | doc "chapAuthSession defines whether support iSCSI Session CHAP authentication"
              | optional,
            fsType
              | String
              | doc "fsType is the filesystem type of the volume that you want to mount. Tip: Ensure that the filesystem type is supported by the host operating system. Examples: \"ext4\", \"xfs\", \"ntfs\". Implicitly inferred to be \"ext4\" if unspecified. More info: https://kubernetes.io/docs/concepts/storage/volumes#iscsi"
              | optional,
            initiatorName
              | String
              | doc "initiatorName is the custom iSCSI Initiator Name. If initiatorName is specified with iscsiInterface simultaneously, new iSCSI interface <target portal>:<volume name> will be created for the connection."
              | optional,
            iqn | String | doc "iqn is the target iSCSI Qualified Name.",
            iscsiInterface
              | String
              | doc "iscsiInterface is the interface Name that uses an iSCSI transport. Defaults to 'default' (tcp)."
              | optional,
            lun
              | std.number.Integer
              | doc "lun represents iSCSI Target Lun number.",
            portals
              | Array String
              | doc "portals is the iSCSI Target Portal List. The portal is either an IP or ip_addr:port if the port is other than default (typically TCP ports 860 and 3260)."
              | optional,
            readOnly
              | Bool
              | doc "readOnly here will force the ReadOnly setting in VolumeMounts. Defaults to false."
              | optional,
            secretRef
              | refs."definitions.io.k8s.api.core.v1.LocalObjectReference"
              | { _ | Dyn }
              | doc "secretRef is the CHAP Secret for iSCSI target and initiator authentication"
              | optional,
            targetPortal
              | String
              | doc "targetPortal is iSCSI Target Portal. The Portal is either an IP or ip_addr:port if the port is other than default (typically TCP ports 860 and 3260).",
            ..
          },
      "definitions.io.k8s.api.core.v1.ImageVolumeSource" =
        {
            pullPolicy
              | String
              | doc "Policy for pulling OCI objects. Possible values are: Always: the kubelet always attempts to pull the reference. Container creation will fail If the pull fails. Never: the kubelet never pulls the reference and only uses a local image or artifact. Container creation will fail if the reference isn't present. IfNotPresent: the kubelet pulls if the reference isn't already present on disk. Container creation will fail if the reference isn't present and the pull fails. Defaults to Always if :latest tag is specified, or IfNotPresent otherwise."
              | optional,
            reference
              | String
              | doc "Required: Image or artifact reference to be used. Behaves in the same way as pod.spec.containers[*].image. Pull secrets will be assembled in the same way as for the container image by looking up node credentials, SA image pull secrets, and pod spec image pull secrets. More info: https://kubernetes.io/docs/concepts/containers/images This field is optional to allow higher level config management to default or override container images in workload controllers like Deployments and StatefulSets."
              | optional,
            ..
          },
      "definitions.io.k8s.api.core.v1.KeyToPath" =
        {
            key | String | doc "key is the key to project.",
            mode
              | std.number.Integer
              | doc "mode is Optional: mode bits used to set permissions on this file. Must be an octal value between 0000 and 0777 or a decimal value between 0 and 511. YAML accepts both octal and decimal values, JSON requires decimal values for mode bits. If not specified, the volume defaultMode will be used. This might be in conflict with other options that affect the file mode, like fsGroup, and the result can be other mode bits set."
              | optional,
            path
              | String
              | doc "path is the relative path of the file to map the key to. May not be an absolute path. May not contain the path element '..'. May not start with the string '..'.",
            ..
          },
      "definitions.io.k8s.api.core.v1.Lifecycle" =
        {
            postStart
              | refs."definitions.io.k8s.api.core.v1.LifecycleHandler"
              | { _ | Dyn }
              | doc "PostStart is called immediately after a container is created. If the handler fails, the container is terminated and restarted according to its restart policy. Other management of the container blocks until the hook completes. More info: https://kubernetes.io/docs/concepts/containers/container-lifecycle-hooks/#container-hooks"
              | optional,
            preStop
              | refs."definitions.io.k8s.api.core.v1.LifecycleHandler"
              | { _ | Dyn }
              | doc "PreStop is called immediately before a container is terminated due to an API request or management event such as liveness/startup probe failure, preemption, resource contention, etc. The handler is not called if the container crashes or exits. The Pod's termination grace period countdown begins before the PreStop hook is executed. Regardless of the outcome of the handler, the container will eventually terminate within the Pod's termination grace period (unless delayed by finalizers). Other management of the container blocks until the hook completes or until the termination grace period is reached. More info: https://kubernetes.io/docs/concepts/containers/container-lifecycle-hooks/#container-hooks"
              | optional,
            stopSignal
              | String
              | doc "StopSignal defines which signal will be sent to a container when it is being stopped. If not specified, the default is defined by the container runtime in use. StopSignal can only be set for Pods with a non-empty .spec.os.name"
              | optional,
            ..
          },
      "definitions.io.k8s.api.core.v1.LifecycleHandler" =
        {
            exec
              | refs."definitions.io.k8s.api.core.v1.ExecAction"
              | { _ | Dyn }
              | doc "Exec specifies a command to execute in the container."
              | optional,
            httpGet
              | refs."definitions.io.k8s.api.core.v1.HTTPGetAction"
              | { _ | Dyn }
              | doc "HTTPGet specifies an HTTP GET request to perform."
              | optional,
            sleep
              | refs."definitions.io.k8s.api.core.v1.SleepAction"
              | { _ | Dyn }
              | doc "Sleep represents a duration that the container should sleep."
              | optional,
            tcpSocket
              | refs."definitions.io.k8s.api.core.v1.TCPSocketAction"
              | { _ | Dyn }
              | doc "Deprecated. TCPSocket is NOT supported as a LifecycleHandler and kept for backward compatibility. There is no validation of this field and lifecycle hooks will fail at runtime when it is specified."
              | optional,
            ..
          },
      "definitions.io.k8s.api.core.v1.LocalObjectReference" =
        {
            name
              | String
              | doc "Name of the referent. This field is effectively required, but due to backwards compatibility is allowed to be empty. Instances of this type with an empty value here are almost certainly wrong. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names"
              | optional,
            ..
          },
      "definitions.io.k8s.api.core.v1.ModifyVolumeStatus" =
        {
            status
              | String
              | doc m%"
                status is the status of the ControllerModifyVolume operation. It can be in any of following states:
                 - Pending
                   Pending indicates that the PersistentVolumeClaim cannot be modified due to unmet requirements, such as
                   the specified VolumeAttributesClass not existing.
                 - InProgress
                   InProgress indicates that the volume is being modified.
                 - Infeasible
                  Infeasible indicates that the request has been rejected as invalid by the CSI driver. To
                	  resolve the error, a valid VolumeAttributesClass needs to be specified.
                Note: New statuses can be added in the future. Consumers should check for unknown statuses and fail appropriately.
              "%,
            targetVolumeAttributesClassName
              | String
              | doc "targetVolumeAttributesClassName is the name of the VolumeAttributesClass the PVC currently being reconciled"
              | optional,
            ..
          },
      "definitions.io.k8s.api.core.v1.NFSVolumeSource" =
        {
            path
              | String
              | doc "path that is exported by the NFS server. More info: https://kubernetes.io/docs/concepts/storage/volumes#nfs",
            readOnly
              | Bool
              | doc "readOnly here will force the NFS export to be mounted with read-only permissions. Defaults to false. More info: https://kubernetes.io/docs/concepts/storage/volumes#nfs"
              | optional,
            server
              | String
              | doc "server is the hostname or IP address of the NFS server. More info: https://kubernetes.io/docs/concepts/storage/volumes#nfs",
            ..
          },
      "definitions.io.k8s.api.core.v1.NodeAffinity" =
        {
            preferredDuringSchedulingIgnoredDuringExecution
              | Array (
                std.contract.Sequence
                  [
                    refs."definitions.io.k8s.api.core.v1.PreferredSchedulingTerm",
                    { _ | Dyn }
                  ]
              )
              | doc "The scheduler will prefer to schedule pods to nodes that satisfy the affinity expressions specified by this field, but it may choose a node that violates one or more of the expressions. The node that is most preferred is the one with the greatest sum of weights, i.e. for each node that meets all of the scheduling requirements (resource request, requiredDuringScheduling affinity expressions, etc.), compute a sum by iterating through the elements of this field and adding \"weight\" to the sum if the node matches the corresponding matchExpressions; the node(s) with the highest sum are the most preferred."
              | optional,
            requiredDuringSchedulingIgnoredDuringExecution
              | refs."definitions.io.k8s.api.core.v1.NodeSelector"
              | { _ | Dyn }
              | doc "If the affinity requirements specified by this field are not met at scheduling time, the pod will not be scheduled onto the node. If the affinity requirements specified by this field cease to be met at some point during pod execution (e.g. due to an update), the system may or may not try to eventually evict the pod from its node."
              | optional,
            ..
          },
      "definitions.io.k8s.api.core.v1.NodeSelector" =
        {
            nodeSelectorTerms
              | Array (
                std.contract.Sequence
                  [
                    refs."definitions.io.k8s.api.core.v1.NodeSelectorTerm",
                    { _ | Dyn }
                  ]
              )
              | doc "Required. A list of node selector terms. The terms are ORed.",
            ..
          },
      "definitions.io.k8s.api.core.v1.NodeSelectorRequirement" =
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
      "definitions.io.k8s.api.core.v1.NodeSelectorTerm" =
        {
            matchExpressions
              | Array (
                std.contract.Sequence
                  [
                    refs."definitions.io.k8s.api.core.v1.NodeSelectorRequirement",
                    { _ | Dyn }
                  ]
              )
              | doc "A list of node selector requirements by node's labels."
              | optional,
            matchFields
              | Array (
                std.contract.Sequence
                  [
                    refs."definitions.io.k8s.api.core.v1.NodeSelectorRequirement",
                    { _ | Dyn }
                  ]
              )
              | doc "A list of node selector requirements by node's fields."
              | optional,
            ..
          },
      "definitions.io.k8s.api.core.v1.ObjectFieldSelector" =
        {
            apiVersion
              | String
              | doc "Version of the schema the FieldPath is written in terms of, defaults to \"v1\"."
              | optional,
            fieldPath
              | String
              | doc "Path of the field to select in the specified API version.",
            ..
          },
      "definitions.io.k8s.api.core.v1.ObjectReference" =
        {
            apiVersion | String | doc "API version of the referent." | optional,
            fieldPath
              | String
              | doc "If referring to a piece of an object instead of an entire object, this string should contain a valid JSON/Go field access statement, such as desiredState.manifest.containers[2]. For example, if the object reference is to a container within a pod, this would take on a value like: \"spec.containers{name}\" (where \"name\" refers to the name of the container that triggered the event) or if no container name is specified \"spec.containers[2]\" (container with index 2 in this pod). This syntax is chosen only to have some well-defined way of referencing a part of an object."
              | optional,
            kind
              | String
              | doc "Kind of the referent. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds"
              | optional,
            name
              | String
              | doc "Name of the referent. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names"
              | optional,
            namespace
              | String
              | doc "Namespace of the referent. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/namespaces/"
              | optional,
            resourceVersion
              | String
              | doc "Specific resourceVersion to which this reference is made, if any. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#concurrency-control-and-consistency"
              | optional,
            uid
              | String
              | doc "UID of the referent. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#uids"
              | optional,
            ..
          },
      "definitions.io.k8s.api.core.v1.PersistentVolumeClaim" =
        {
            apiVersion
              | String
              | doc "APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources"
              | optional,
            kind
              | String
              | doc "Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds"
              | optional,
            metadata
              | refs."definitions.io.k8s.apimachinery.pkg.apis.meta.v1.ObjectMeta"
              | { _ | Dyn }
              | doc "Standard object's metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata"
              | optional,
            spec
              | refs."definitions.io.k8s.api.core.v1.PersistentVolumeClaimSpec"
              | { _ | Dyn }
              | doc "spec defines the desired characteristics of a volume requested by a pod author. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#persistentvolumeclaims"
              | optional,
            status
              | refs."definitions.io.k8s.api.core.v1.PersistentVolumeClaimStatus"
              | { _ | Dyn }
              | doc "status represents the current information/status of a persistent volume claim. Read-only. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#persistentvolumeclaims"
              | optional,
            ..
          },
      "definitions.io.k8s.api.core.v1.PersistentVolumeClaimCondition" =
        {
            lastProbeTime
              | refs."definitions.io.k8s.apimachinery.pkg.apis.meta.v1.Time"
              | String
              | doc "lastProbeTime is the time we probed the condition."
              | optional,
            lastTransitionTime
              | refs."definitions.io.k8s.apimachinery.pkg.apis.meta.v1.Time"
              | String
              | doc "lastTransitionTime is the time the condition transitioned from one status to another."
              | optional,
            message
              | String
              | doc "message is the human-readable message indicating details about last transition."
              | optional,
            reason
              | String
              | doc "reason is a unique, this should be a short, machine understandable string that gives the reason for condition's last transition. If it reports \"Resizing\" that means the underlying persistent volume is being resized."
              | optional,
            status
              | String
              | doc "Status is the status of the condition. Can be True, False, Unknown. More info: https://kubernetes.io/docs/reference/kubernetes-api/config-and-storage-resources/persistent-volume-claim-v1/#:~:text=state%20of%20pvc-,conditions.status,-(string)%2C%20required",
            type
              | String
              | doc "Type is the type of the condition. More info: https://kubernetes.io/docs/reference/kubernetes-api/config-and-storage-resources/persistent-volume-claim-v1/#:~:text=set%20to%20%27ResizeStarted%27.-,PersistentVolumeClaimCondition,-contains%20details%20about",
            ..
          },
      "definitions.io.k8s.api.core.v1.PersistentVolumeClaimSpec" =
        {
            accessModes
              | Array String
              | doc "accessModes contains the desired access modes the volume should have. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#access-modes-1"
              | optional,
            dataSource
              | refs."definitions.io.k8s.api.core.v1.TypedLocalObjectReference"
              | { _ | Dyn }
              | doc "dataSource field can be used to specify either: * An existing VolumeSnapshot object (snapshot.storage.k8s.io/VolumeSnapshot) * An existing PVC (PersistentVolumeClaim) If the provisioner or an external controller can support the specified data source, it will create a new volume based on the contents of the specified data source. When the AnyVolumeDataSource feature gate is enabled, dataSource contents will be copied to dataSourceRef, and dataSourceRef contents will be copied to dataSource when dataSourceRef.namespace is not specified. If the namespace is specified, then dataSourceRef will not be copied to dataSource."
              | optional,
            dataSourceRef
              | refs."definitions.io.k8s.api.core.v1.TypedObjectReference"
              | { _ | Dyn }
              | doc m%"
                dataSourceRef specifies the object from which to populate the volume with data, if a non-empty volume is desired. This may be any object from a non-empty API group (non core object) or a PersistentVolumeClaim object. When this field is specified, volume binding will only succeed if the type of the specified object matches some installed volume populator or dynamic provisioner. This field will replace the functionality of the dataSource field and as such if both fields are non-empty, they must have the same value. For backwards compatibility, when namespace isn't specified in dataSourceRef, both fields (dataSource and dataSourceRef) will be set to the same value automatically if one of them is empty and the other is non-empty. When namespace is specified in dataSourceRef, dataSource isn't set to the same value and must be empty. There are three important differences between dataSource and dataSourceRef: * While dataSource only allows two specific types of objects, dataSourceRef
                  allows any non-core object, as well as PersistentVolumeClaim objects.
                * While dataSource ignores disallowed values (dropping them), dataSourceRef
                  preserves all values, and generates an error if a disallowed value is
                  specified.
                * While dataSource only allows local objects, dataSourceRef allows objects
                  in any namespaces.
                (Beta) Using this field requires the AnyVolumeDataSource feature gate to be enabled. (Alpha) Using the namespace field of dataSourceRef requires the CrossNamespaceVolumeDataSource feature gate to be enabled.
              "%
              | optional,
            resources
              | refs."definitions.io.k8s.api.core.v1.VolumeResourceRequirements"
              | { _ | Dyn }
              | doc "resources represents the minimum resources the volume should have. If RecoverVolumeExpansionFailure feature is enabled users are allowed to specify resource requirements that are lower than previous value but must still be higher than capacity recorded in the status field of the claim. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#resources"
              | optional,
            selector
              | refs."definitions.io.k8s.apimachinery.pkg.apis.meta.v1.LabelSelector"
              | { _ | Dyn }
              | doc "selector is a label query over volumes to consider for binding."
              | optional,
            storageClassName
              | String
              | doc "storageClassName is the name of the StorageClass required by the claim. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#class-1"
              | optional,
            volumeAttributesClassName
              | String
              | doc "volumeAttributesClassName may be used to set the VolumeAttributesClass used by this claim. If specified, the CSI driver will create or update the volume with the attributes defined in the corresponding VolumeAttributesClass. This has a different purpose than storageClassName, it can be changed after the claim is created. An empty string value means that no VolumeAttributesClass will be applied to the claim but it's not allowed to reset this field to empty string once it is set. If unspecified and the PersistentVolumeClaim is unbound, the default VolumeAttributesClass will be set by the persistentvolume controller if it exists. If the resource referred to by volumeAttributesClass does not exist, this PersistentVolumeClaim will be set to a Pending state, as reflected by the modifyVolumeStatus field, until such as a resource exists. More info: https://kubernetes.io/docs/concepts/storage/volume-attributes-classes/ (Beta) Using this field requires the VolumeAttributesClass feature gate to be enabled (off by default)."
              | optional,
            volumeMode
              | String
              | doc "volumeMode defines what type of volume is required by the claim. Value of Filesystem is implied when not included in claim spec."
              | optional,
            volumeName
              | String
              | doc "volumeName is the binding reference to the PersistentVolume backing this claim."
              | optional,
            ..
          },
      "definitions.io.k8s.api.core.v1.PersistentVolumeClaimStatus" =
        {
            accessModes
              | Array String
              | doc "accessModes contains the actual access modes the volume backing the PVC has. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#access-modes-1"
              | optional,
            allocatedResourceStatuses
              | { _ | String }
              | doc m%"
                allocatedResourceStatuses stores status of resource being resized for the given PVC. Key names follow standard Kubernetes label syntax. Valid values are either:
                	* Un-prefixed keys:
                		- storage - the capacity of the volume.
                	* Custom resources must use implementation-defined prefixed names such as "example.com/my-custom-resource"
                Apart from above values - keys that are unprefixed or have kubernetes.io prefix are considered reserved and hence may not be used.
                
                ClaimResourceStatus can be in any of following states:
                	- ControllerResizeInProgress:
                		State set when resize controller starts resizing the volume in control-plane.
                	- ControllerResizeFailed:
                		State set when resize has failed in resize controller with a terminal error.
                	- NodeResizePending:
                		State set when resize controller has finished resizing the volume but further resizing of
                		volume is needed on the node.
                	- NodeResizeInProgress:
                		State set when kubelet starts resizing the volume.
                	- NodeResizeFailed:
                		State set when resizing has failed in kubelet with a terminal error. Transient errors don't set
                		NodeResizeFailed.
                For example: if expanding a PVC for more capacity - this field can be one of the following states:
                	- pvc.status.allocatedResourceStatus['storage'] = "ControllerResizeInProgress"
                     - pvc.status.allocatedResourceStatus['storage'] = "ControllerResizeFailed"
                     - pvc.status.allocatedResourceStatus['storage'] = "NodeResizePending"
                     - pvc.status.allocatedResourceStatus['storage'] = "NodeResizeInProgress"
                     - pvc.status.allocatedResourceStatus['storage'] = "NodeResizeFailed"
                When this field is not set, it means that no resize operation is in progress for the given PVC.
                
                A controller that receives PVC update with previously unknown resourceName or ClaimResourceStatus should ignore the update for the purpose it was designed. For example - a controller that only is responsible for resizing capacity of the volume, should ignore PVC updates that change other valid resources associated with PVC.
                
                This is an alpha field and requires enabling RecoverVolumeExpansionFailure feature.
              "%
              | optional,
            allocatedResources
              | {
                _ | std.contract.Sequence
                  [
                    refs."definitions.io.k8s.apimachinery.pkg.api.resource.Quantity",
                    String
                  ]
              }
              | doc m%"
                allocatedResources tracks the resources allocated to a PVC including its capacity. Key names follow standard Kubernetes label syntax. Valid values are either:
                	* Un-prefixed keys:
                		- storage - the capacity of the volume.
                	* Custom resources must use implementation-defined prefixed names such as "example.com/my-custom-resource"
                Apart from above values - keys that are unprefixed or have kubernetes.io prefix are considered reserved and hence may not be used.
                
                Capacity reported here may be larger than the actual capacity when a volume expansion operation is requested. For storage quota, the larger value from allocatedResources and PVC.spec.resources is used. If allocatedResources is not set, PVC.spec.resources alone is used for quota calculation. If a volume expansion capacity request is lowered, allocatedResources is only lowered if there are no expansion operations in progress and if the actual volume capacity is equal or lower than the requested capacity.
                
                A controller that receives PVC update with previously unknown resourceName should ignore the update for the purpose it was designed. For example - a controller that only is responsible for resizing capacity of the volume, should ignore PVC updates that change other valid resources associated with PVC.
                
                This is an alpha field and requires enabling RecoverVolumeExpansionFailure feature.
              "%
              | optional,
            capacity
              | {
                _ | std.contract.Sequence
                  [
                    refs."definitions.io.k8s.apimachinery.pkg.api.resource.Quantity",
                    String
                  ]
              }
              | doc "capacity represents the actual resources of the underlying volume."
              | optional,
            conditions
              | Array (
                std.contract.Sequence
                  [
                    refs."definitions.io.k8s.api.core.v1.PersistentVolumeClaimCondition",
                    { _ | Dyn }
                  ]
              )
              | doc "conditions is the current Condition of persistent volume claim. If underlying persistent volume is being resized then the Condition will be set to 'Resizing'."
              | optional,
            currentVolumeAttributesClassName
              | String
              | doc "currentVolumeAttributesClassName is the current name of the VolumeAttributesClass the PVC is using. When unset, there is no VolumeAttributeClass applied to this PersistentVolumeClaim This is a beta field and requires enabling VolumeAttributesClass feature (off by default)."
              | optional,
            modifyVolumeStatus
              | refs."definitions.io.k8s.api.core.v1.ModifyVolumeStatus"
              | { _ | Dyn }
              | doc "ModifyVolumeStatus represents the status object of ControllerModifyVolume operation. When this is unset, there is no ModifyVolume operation being attempted. This is a beta field and requires enabling VolumeAttributesClass feature (off by default)."
              | optional,
            phase
              | String
              | doc "phase represents the current phase of PersistentVolumeClaim."
              | optional,
            ..
          },
      "definitions.io.k8s.api.core.v1.PersistentVolumeClaimTemplate" =
        {
            metadata
              | refs."definitions.io.k8s.apimachinery.pkg.apis.meta.v1.ObjectMeta"
              | { _ | Dyn }
              | doc "May contain labels and annotations that will be copied into the PVC when creating it. No other fields are allowed and will be rejected during validation."
              | optional,
            spec
              | refs."definitions.io.k8s.api.core.v1.PersistentVolumeClaimSpec"
              | { _ | Dyn }
              | doc "The specification for the PersistentVolumeClaim. The entire content is copied unchanged into the PVC that gets created from this template. The same fields as in a PersistentVolumeClaim are also valid here.",
            ..
          },
      "definitions.io.k8s.api.core.v1.PersistentVolumeClaimVolumeSource" =
        {
            claimName
              | String
              | doc "claimName is the name of a PersistentVolumeClaim in the same namespace as the pod using this volume. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#persistentvolumeclaims",
            readOnly
              | Bool
              | doc "readOnly Will force the ReadOnly setting in VolumeMounts. Default false."
              | optional,
            ..
          },
      "definitions.io.k8s.api.core.v1.PhotonPersistentDiskVolumeSource" =
        {
            fsType
              | String
              | doc "fsType is the filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. \"ext4\", \"xfs\", \"ntfs\". Implicitly inferred to be \"ext4\" if unspecified."
              | optional,
            pdID
              | String
              | doc "pdID is the ID that identifies Photon Controller persistent disk",
            ..
          },
      "definitions.io.k8s.api.core.v1.PodAffinity" =
        {
            preferredDuringSchedulingIgnoredDuringExecution
              | Array (
                std.contract.Sequence
                  [
                    refs."definitions.io.k8s.api.core.v1.WeightedPodAffinityTerm",
                    { _ | Dyn }
                  ]
              )
              | doc "The scheduler will prefer to schedule pods to nodes that satisfy the affinity expressions specified by this field, but it may choose a node that violates one or more of the expressions. The node that is most preferred is the one with the greatest sum of weights, i.e. for each node that meets all of the scheduling requirements (resource request, requiredDuringScheduling affinity expressions, etc.), compute a sum by iterating through the elements of this field and adding \"weight\" to the sum if the node has pods which matches the corresponding podAffinityTerm; the node(s) with the highest sum are the most preferred."
              | optional,
            requiredDuringSchedulingIgnoredDuringExecution
              | Array (
                std.contract.Sequence
                  [
                    refs."definitions.io.k8s.api.core.v1.PodAffinityTerm",
                    { _ | Dyn }
                  ]
              )
              | doc "If the affinity requirements specified by this field are not met at scheduling time, the pod will not be scheduled onto the node. If the affinity requirements specified by this field cease to be met at some point during pod execution (e.g. due to a pod label update), the system may or may not try to eventually evict the pod from its node. When there are multiple elements, the lists of nodes corresponding to each podAffinityTerm are intersected, i.e. all terms must be satisfied."
              | optional,
            ..
          },
      "definitions.io.k8s.api.core.v1.PodAffinityTerm" =
        {
            labelSelector
              | refs."definitions.io.k8s.apimachinery.pkg.apis.meta.v1.LabelSelector"
              | { _ | Dyn }
              | doc "A label query over a set of resources, in this case pods. If it's null, this PodAffinityTerm matches with no Pods."
              | optional,
            matchLabelKeys
              | Array String
              | doc "MatchLabelKeys is a set of pod label keys to select which pods will be taken into consideration. The keys are used to lookup values from the incoming pod labels, those key-value labels are merged with `labelSelector` as `key in (value)` to select the group of existing pods which pods will be taken into consideration for the incoming pod's pod (anti) affinity. Keys that don't exist in the incoming pod labels will be ignored. The default value is empty. The same key is forbidden to exist in both matchLabelKeys and labelSelector. Also, matchLabelKeys cannot be set when labelSelector isn't set."
              | optional,
            mismatchLabelKeys
              | Array String
              | doc "MismatchLabelKeys is a set of pod label keys to select which pods will be taken into consideration. The keys are used to lookup values from the incoming pod labels, those key-value labels are merged with `labelSelector` as `key notin (value)` to select the group of existing pods which pods will be taken into consideration for the incoming pod's pod (anti) affinity. Keys that don't exist in the incoming pod labels will be ignored. The default value is empty. The same key is forbidden to exist in both mismatchLabelKeys and labelSelector. Also, mismatchLabelKeys cannot be set when labelSelector isn't set."
              | optional,
            namespaceSelector
              | refs."definitions.io.k8s.apimachinery.pkg.apis.meta.v1.LabelSelector"
              | { _ | Dyn }
              | doc "A label query over the set of namespaces that the term applies to. The term is applied to the union of the namespaces selected by this field and the ones listed in the namespaces field. null selector and null or empty namespaces list means \"this pod's namespace\". An empty selector ({}) matches all namespaces."
              | optional,
            namespaces
              | Array String
              | doc "namespaces specifies a static list of namespace names that the term applies to. The term is applied to the union of the namespaces listed in this field and the ones selected by namespaceSelector. null or empty namespaces list and null namespaceSelector means \"this pod's namespace\"."
              | optional,
            topologyKey
              | String
              | doc "This pod should be co-located (affinity) or not co-located (anti-affinity) with the pods matching the labelSelector in the specified namespaces, where co-located is defined as running on a node whose value of the label with key topologyKey matches that of any node on which any of the selected pods is running. Empty topologyKey is not allowed.",
            ..
          },
      "definitions.io.k8s.api.core.v1.PodAntiAffinity" =
        {
            preferredDuringSchedulingIgnoredDuringExecution
              | Array (
                std.contract.Sequence
                  [
                    refs."definitions.io.k8s.api.core.v1.WeightedPodAffinityTerm",
                    { _ | Dyn }
                  ]
              )
              | doc "The scheduler will prefer to schedule pods to nodes that satisfy the anti-affinity expressions specified by this field, but it may choose a node that violates one or more of the expressions. The node that is most preferred is the one with the greatest sum of weights, i.e. for each node that meets all of the scheduling requirements (resource request, requiredDuringScheduling anti-affinity expressions, etc.), compute a sum by iterating through the elements of this field and adding \"weight\" to the sum if the node has pods which matches the corresponding podAffinityTerm; the node(s) with the highest sum are the most preferred."
              | optional,
            requiredDuringSchedulingIgnoredDuringExecution
              | Array (
                std.contract.Sequence
                  [
                    refs."definitions.io.k8s.api.core.v1.PodAffinityTerm",
                    { _ | Dyn }
                  ]
              )
              | doc "If the anti-affinity requirements specified by this field are not met at scheduling time, the pod will not be scheduled onto the node. If the anti-affinity requirements specified by this field cease to be met at some point during pod execution (e.g. due to a pod label update), the system may or may not try to eventually evict the pod from its node. When there are multiple elements, the lists of nodes corresponding to each podAffinityTerm are intersected, i.e. all terms must be satisfied."
              | optional,
            ..
          },
      "definitions.io.k8s.api.core.v1.PodDNSConfig" =
        {
            nameservers
              | Array String
              | doc "A list of DNS name server IP addresses. This will be appended to the base nameservers generated from DNSPolicy. Duplicated nameservers will be removed."
              | optional,
            options
              | Array (
                std.contract.Sequence
                  [
                    refs."definitions.io.k8s.api.core.v1.PodDNSConfigOption",
                    { _ | Dyn }
                  ]
              )
              | doc "A list of DNS resolver options. This will be merged with the base options generated from DNSPolicy. Duplicated entries will be removed. Resolution options given in Options will override those that appear in the base DNSPolicy."
              | optional,
            searches
              | Array String
              | doc "A list of DNS search domains for host-name lookup. This will be appended to the base search paths generated from DNSPolicy. Duplicated search paths will be removed."
              | optional,
            ..
          },
      "definitions.io.k8s.api.core.v1.PodDNSConfigOption" =
        {
            name
              | String
              | doc "Name is this DNS resolver option's name. Required."
              | optional,
            value
              | String
              | doc "Value is this DNS resolver option's value."
              | optional,
            ..
          },
      "definitions.io.k8s.api.core.v1.PodSecurityContext" =
        {
            appArmorProfile
              | refs."definitions.io.k8s.api.core.v1.AppArmorProfile"
              | { _ | Dyn }
              | doc "appArmorProfile is the AppArmor options to use by the containers in this pod. Note that this field cannot be set when spec.os.name is windows."
              | optional,
            fsGroup
              | std.number.Integer
              | doc m%"
                A special supplemental group that applies to all containers in a pod. Some volume types allow the Kubelet to change the ownership of that volume to be owned by the pod:
                
                1. The owning GID will be the FSGroup 2. The setgid bit is set (new files created in the volume will be owned by FSGroup) 3. The permission bits are OR'd with rw-rw----
                
                If unset, the Kubelet will not modify the ownership and permissions of any volume. Note that this field cannot be set when spec.os.name is windows.
              "%
              | optional,
            fsGroupChangePolicy
              | String
              | doc "fsGroupChangePolicy defines behavior of changing ownership and permission of the volume before being exposed inside Pod. This field will only apply to volume types which support fsGroup based ownership(and permissions). It will have no effect on ephemeral volume types such as: secret, configmaps and emptydir. Valid values are \"OnRootMismatch\" and \"Always\". If not specified, \"Always\" is used. Note that this field cannot be set when spec.os.name is windows."
              | optional,
            runAsGroup
              | std.number.Integer
              | doc "The GID to run the entrypoint of the container process. Uses runtime default if unset. May also be set in SecurityContext.  If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence for that container. Note that this field cannot be set when spec.os.name is windows."
              | optional,
            runAsNonRoot
              | Bool
              | doc "Indicates that the container must run as a non-root user. If true, the Kubelet will validate the image at runtime to ensure that it does not run as UID 0 (root) and fail to start the container if it does. If unset or false, no such validation will be performed. May also be set in SecurityContext.  If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence."
              | optional,
            runAsUser
              | std.number.Integer
              | doc "The UID to run the entrypoint of the container process. Defaults to user specified in image metadata if unspecified. May also be set in SecurityContext.  If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence for that container. Note that this field cannot be set when spec.os.name is windows."
              | optional,
            seLinuxChangePolicy
              | String
              | doc m%"
                seLinuxChangePolicy defines how the container's SELinux label is applied to all volumes used by the Pod. It has no effect on nodes that do not support SELinux or to volumes does not support SELinux. Valid values are "MountOption" and "Recursive".
                
                "Recursive" means relabeling of all files on all Pod volumes by the container runtime. This may be slow for large volumes, but allows mixing privileged and unprivileged Pods sharing the same volume on the same node.
                
                "MountOption" mounts all eligible Pod volumes with `-o context` mount option. This requires all Pods that share the same volume to use the same SELinux label. It is not possible to share the same volume among privileged and unprivileged Pods. Eligible volumes are in-tree FibreChannel and iSCSI volumes, and all CSI volumes whose CSI driver announces SELinux support by setting spec.seLinuxMount: true in their CSIDriver instance. Other volumes are always re-labelled recursively. "MountOption" value is allowed only when SELinuxMount feature gate is enabled.
                
                If not specified and SELinuxMount feature gate is enabled, "MountOption" is used. If not specified and SELinuxMount feature gate is disabled, "MountOption" is used for ReadWriteOncePod volumes and "Recursive" for all other volumes.
                
                This field affects only Pods that have SELinux label set, either in PodSecurityContext or in SecurityContext of all containers.
                
                All Pods that use the same volume should use the same seLinuxChangePolicy, otherwise some pods can get stuck in ContainerCreating state. Note that this field cannot be set when spec.os.name is windows.
              "%
              | optional,
            seLinuxOptions
              | refs."definitions.io.k8s.api.core.v1.SELinuxOptions"
              | { _ | Dyn }
              | doc "The SELinux context to be applied to all containers. If unspecified, the container runtime will allocate a random SELinux context for each container.  May also be set in SecurityContext.  If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence for that container. Note that this field cannot be set when spec.os.name is windows."
              | optional,
            seccompProfile
              | refs."definitions.io.k8s.api.core.v1.SeccompProfile"
              | { _ | Dyn }
              | doc "The seccomp options to use by the containers in this pod. Note that this field cannot be set when spec.os.name is windows."
              | optional,
            supplementalGroups
              | Array std.number.Integer
              | doc "A list of groups applied to the first process run in each container, in addition to the container's primary GID and fsGroup (if specified).  If the SupplementalGroupsPolicy feature is enabled, the supplementalGroupsPolicy field determines whether these are in addition to or instead of any group memberships defined in the container image. If unspecified, no additional groups are added, though group memberships defined in the container image may still be used, depending on the supplementalGroupsPolicy field. Note that this field cannot be set when spec.os.name is windows."
              | optional,
            supplementalGroupsPolicy
              | String
              | doc "Defines how supplemental groups of the first container processes are calculated. Valid values are \"Merge\" and \"Strict\". If not specified, \"Merge\" is used. (Alpha) Using the field requires the SupplementalGroupsPolicy feature gate to be enabled and the container runtime must implement support for this feature. Note that this field cannot be set when spec.os.name is windows."
              | optional,
            sysctls
              | Array (
                std.contract.Sequence
                  [ refs."definitions.io.k8s.api.core.v1.Sysctl", { _ | Dyn } ]
              )
              | doc "Sysctls hold a list of namespaced sysctls used for the pod. Pods with unsupported sysctls (by the container runtime) might fail to launch. Note that this field cannot be set when spec.os.name is windows."
              | optional,
            windowsOptions
              | refs."definitions.io.k8s.api.core.v1.WindowsSecurityContextOptions"
              | { _ | Dyn }
              | doc "The Windows specific settings applied to all containers. If unspecified, the options within a container's SecurityContext will be used. If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence. Note that this field cannot be set when spec.os.name is linux."
              | optional,
            ..
          },
      "definitions.io.k8s.api.core.v1.PortworxVolumeSource" =
        {
            fsType
              | String
              | doc "fSType represents the filesystem type to mount Must be a filesystem type supported by the host operating system. Ex. \"ext4\", \"xfs\". Implicitly inferred to be \"ext4\" if unspecified."
              | optional,
            readOnly
              | Bool
              | doc "readOnly defaults to false (read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts."
              | optional,
            volumeID
              | String
              | doc "volumeID uniquely identifies a Portworx volume",
            ..
          },
      "definitions.io.k8s.api.core.v1.PreferredSchedulingTerm" =
        {
            preference
              | refs."definitions.io.k8s.api.core.v1.NodeSelectorTerm"
              | { _ | Dyn }
              | doc "A node selector term, associated with the corresponding weight.",
            weight
              | std.number.Integer
              | doc "Weight associated with matching the corresponding nodeSelectorTerm, in the range 1-100.",
            ..
          },
      "definitions.io.k8s.api.core.v1.Probe" =
        {
            exec
              | refs."definitions.io.k8s.api.core.v1.ExecAction"
              | { _ | Dyn }
              | doc "Exec specifies a command to execute in the container."
              | optional,
            failureThreshold
              | std.number.Integer
              | doc "Minimum consecutive failures for the probe to be considered failed after having succeeded. Defaults to 3. Minimum value is 1."
              | optional,
            grpc
              | refs."definitions.io.k8s.api.core.v1.GRPCAction"
              | { _ | Dyn }
              | doc "GRPC specifies a GRPC HealthCheckRequest."
              | optional,
            httpGet
              | refs."definitions.io.k8s.api.core.v1.HTTPGetAction"
              | { _ | Dyn }
              | doc "HTTPGet specifies an HTTP GET request to perform."
              | optional,
            initialDelaySeconds
              | std.number.Integer
              | doc "Number of seconds after the container has started before liveness probes are initiated. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes"
              | optional,
            periodSeconds
              | std.number.Integer
              | doc "How often (in seconds) to perform the probe. Default to 10 seconds. Minimum value is 1."
              | optional,
            successThreshold
              | std.number.Integer
              | doc "Minimum consecutive successes for the probe to be considered successful after having failed. Defaults to 1. Must be 1 for liveness and startup. Minimum value is 1."
              | optional,
            tcpSocket
              | refs."definitions.io.k8s.api.core.v1.TCPSocketAction"
              | { _ | Dyn }
              | doc "TCPSocket specifies a connection to a TCP port."
              | optional,
            terminationGracePeriodSeconds
              | std.number.Integer
              | doc "Optional duration in seconds the pod needs to terminate gracefully upon probe failure. The grace period is the duration in seconds after the processes running in the pod are sent a termination signal and the time when the processes are forcibly halted with a kill signal. Set this value longer than the expected cleanup time for your process. If this value is nil, the pod's terminationGracePeriodSeconds will be used. Otherwise, this value overrides the value provided by the pod spec. Value must be non-negative integer. The value zero indicates stop immediately via the kill signal (no opportunity to shut down). This is a beta field and requires enabling ProbeTerminationGracePeriod feature gate. Minimum value is 1. spec.terminationGracePeriodSeconds is used if unset."
              | optional,
            timeoutSeconds
              | std.number.Integer
              | doc "Number of seconds after which the probe times out. Defaults to 1 second. Minimum value is 1. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes"
              | optional,
            ..
          },
      "definitions.io.k8s.api.core.v1.ProjectedVolumeSource" =
        {
            defaultMode
              | std.number.Integer
              | doc "defaultMode are the mode bits used to set permissions on created files by default. Must be an octal value between 0000 and 0777 or a decimal value between 0 and 511. YAML accepts both octal and decimal values, JSON requires decimal values for mode bits. Directories within the path are not affected by this setting. This might be in conflict with other options that affect the file mode, like fsGroup, and the result can be other mode bits set."
              | optional,
            sources
              | Array (
                std.contract.Sequence
                  [
                    refs."definitions.io.k8s.api.core.v1.VolumeProjection",
                    { _ | Dyn }
                  ]
              )
              | doc "sources is the list of volume projections. Each entry in this list handles one source."
              | optional,
            ..
          },
      "definitions.io.k8s.api.core.v1.QuobyteVolumeSource" =
        {
            group
              | String
              | doc "group to map volume access to Default is no group"
              | optional,
            readOnly
              | Bool
              | doc "readOnly here will force the Quobyte volume to be mounted with read-only permissions. Defaults to false."
              | optional,
            registry
              | String
              | doc "registry represents a single or multiple Quobyte Registry services specified as a string as host:port pair (multiple entries are separated with commas) which acts as the central registry for volumes",
            tenant
              | String
              | doc "tenant owning the given Quobyte volume in the Backend Used with dynamically provisioned Quobyte volumes, value is set by the plugin"
              | optional,
            user
              | String
              | doc "user to map volume access to Defaults to serivceaccount user"
              | optional,
            volume
              | String
              | doc "volume is a string that references an already created Quobyte volume by name.",
            ..
          },
      "definitions.io.k8s.api.core.v1.RBDVolumeSource" =
        {
            fsType
              | String
              | doc "fsType is the filesystem type of the volume that you want to mount. Tip: Ensure that the filesystem type is supported by the host operating system. Examples: \"ext4\", \"xfs\", \"ntfs\". Implicitly inferred to be \"ext4\" if unspecified. More info: https://kubernetes.io/docs/concepts/storage/volumes#rbd"
              | optional,
            image
              | String
              | doc "image is the rados image name. More info: https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it",
            keyring
              | String
              | doc "keyring is the path to key ring for RBDUser. Default is /etc/ceph/keyring. More info: https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it"
              | optional,
            monitors
              | Array String
              | doc "monitors is a collection of Ceph monitors. More info: https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it",
            pool
              | String
              | doc "pool is the rados pool name. Default is rbd. More info: https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it"
              | optional,
            readOnly
              | Bool
              | doc "readOnly here will force the ReadOnly setting in VolumeMounts. Defaults to false. More info: https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it"
              | optional,
            secretRef
              | refs."definitions.io.k8s.api.core.v1.LocalObjectReference"
              | { _ | Dyn }
              | doc "secretRef is name of the authentication secret for RBDUser. If provided overrides keyring. Default is nil. More info: https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it"
              | optional,
            user
              | String
              | doc "user is the rados user name. Default is admin. More info: https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it"
              | optional,
            ..
          },
      "definitions.io.k8s.api.core.v1.ResourceClaim" =
        {
            name
              | String
              | doc "Name must match the name of one entry in pod.spec.resourceClaims of the Pod where this field is used. It makes that resource available inside a container.",
            request
              | String
              | doc "Request is the name chosen for a request in the referenced claim. If empty, everything from the claim is made available, otherwise only the result of this request."
              | optional,
            ..
          },
      "definitions.io.k8s.api.core.v1.ResourceFieldSelector" =
        {
            containerName
              | String
              | doc "Container name: required for volumes, optional for env vars"
              | optional,
            divisor
              | refs."definitions.io.k8s.apimachinery.pkg.api.resource.Quantity"
              | String
              | doc "Specifies the output format of the exposed resources, defaults to \"1\""
              | optional,
            resource | String | doc "Required: resource to select",
            ..
          },
      "definitions.io.k8s.api.core.v1.ResourceRequirements" =
        {
            claims
              | Array (
                std.contract.Sequence
                  [
                    refs."definitions.io.k8s.api.core.v1.ResourceClaim",
                    { _ | Dyn }
                  ]
              )
              | doc m%"
                Claims lists the names of resources, defined in spec.resourceClaims, that are used by this container.
                
                This is an alpha field and requires enabling the DynamicResourceAllocation feature gate.
                
                This field is immutable. It can only be set for containers.
              "%
              | optional,
            limits
              | {
                _ | std.contract.Sequence
                  [
                    refs."definitions.io.k8s.apimachinery.pkg.api.resource.Quantity",
                    String
                  ]
              }
              | doc "Limits describes the maximum amount of compute resources allowed. More info: https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/"
              | optional,
            requests
              | {
                _ | std.contract.Sequence
                  [
                    refs."definitions.io.k8s.apimachinery.pkg.api.resource.Quantity",
                    String
                  ]
              }
              | doc "Requests describes the minimum amount of compute resources required. If Requests is omitted for a container, it defaults to Limits if that is explicitly specified, otherwise to an implementation-defined value. Requests cannot exceed Limits. More info: https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/"
              | optional,
            ..
          },
      "definitions.io.k8s.api.core.v1.SELinuxOptions" =
        {
            level
              | String
              | doc "Level is SELinux level label that applies to the container."
              | optional,
            role
              | String
              | doc "Role is a SELinux role label that applies to the container."
              | optional,
            type
              | String
              | doc "Type is a SELinux type label that applies to the container."
              | optional,
            user
              | String
              | doc "User is a SELinux user label that applies to the container."
              | optional,
            ..
          },
      "definitions.io.k8s.api.core.v1.ScaleIOVolumeSource" =
        {
            fsType
              | String
              | doc "fsType is the filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. \"ext4\", \"xfs\", \"ntfs\". Default is \"xfs\"."
              | optional,
            gateway
              | String
              | doc "gateway is the host address of the ScaleIO API Gateway.",
            protectionDomain
              | String
              | doc "protectionDomain is the name of the ScaleIO Protection Domain for the configured storage."
              | optional,
            readOnly
              | Bool
              | doc "readOnly Defaults to false (read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts."
              | optional,
            secretRef
              | refs."definitions.io.k8s.api.core.v1.LocalObjectReference"
              | { _ | Dyn }
              | doc "secretRef references to the secret for ScaleIO user and other sensitive information. If this is not provided, Login operation will fail.",
            sslEnabled
              | Bool
              | doc "sslEnabled Flag enable/disable SSL communication with Gateway, default false"
              | optional,
            storageMode
              | String
              | doc "storageMode indicates whether the storage for a volume should be ThickProvisioned or ThinProvisioned. Default is ThinProvisioned."
              | optional,
            storagePool
              | String
              | doc "storagePool is the ScaleIO Storage Pool associated with the protection domain."
              | optional,
            system
              | String
              | doc "system is the name of the storage system as configured in ScaleIO.",
            volumeName
              | String
              | doc "volumeName is the name of a volume already created in the ScaleIO system that is associated with this volume source."
              | optional,
            ..
          },
      "definitions.io.k8s.api.core.v1.SeccompProfile" =
        {
            localhostProfile
              | String
              | doc "localhostProfile indicates a profile defined in a file on the node should be used. The profile must be preconfigured on the node to work. Must be a descending path, relative to the kubelet's configured seccomp profile location. Must be set if type is \"Localhost\". Must NOT be set for any other type."
              | optional,
            type
              | String
              | doc m%"
                type indicates which kind of seccomp profile will be applied. Valid options are:
                
                Localhost - a profile defined in a file on the node should be used. RuntimeDefault - the container runtime default profile should be used. Unconfined - no profile should be applied.
              "%,
            ..
          },
      "definitions.io.k8s.api.core.v1.SecretEnvSource" =
        {
            name
              | String
              | doc "Name of the referent. This field is effectively required, but due to backwards compatibility is allowed to be empty. Instances of this type with an empty value here are almost certainly wrong. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names"
              | optional,
            "optional"
              | Bool
              | doc "Specify whether the Secret must be defined"
              | optional,
            ..
          },
      "definitions.io.k8s.api.core.v1.SecretKeySelector" =
        {
            key
              | String
              | doc "The key of the secret to select from.  Must be a valid secret key.",
            name
              | String
              | doc "Name of the referent. This field is effectively required, but due to backwards compatibility is allowed to be empty. Instances of this type with an empty value here are almost certainly wrong. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names"
              | optional,
            "optional"
              | Bool
              | doc "Specify whether the Secret or its key must be defined"
              | optional,
            ..
          },
      "definitions.io.k8s.api.core.v1.SecretProjection" =
        {
            items
              | Array (
                std.contract.Sequence
                  [
                    refs."definitions.io.k8s.api.core.v1.KeyToPath",
                    { _ | Dyn }
                  ]
              )
              | doc "items if unspecified, each key-value pair in the Data field of the referenced Secret will be projected into the volume as a file whose name is the key and content is the value. If specified, the listed keys will be projected into the specified paths, and unlisted keys will not be present. If a key is specified which is not present in the Secret, the volume setup will error unless it is marked optional. Paths must be relative and may not contain the '..' path or start with '..'."
              | optional,
            name
              | String
              | doc "Name of the referent. This field is effectively required, but due to backwards compatibility is allowed to be empty. Instances of this type with an empty value here are almost certainly wrong. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names"
              | optional,
            "optional"
              | Bool
              | doc "optional field specify whether the Secret or its key must be defined"
              | optional,
            ..
          },
      "definitions.io.k8s.api.core.v1.SecretVolumeSource" =
        {
            defaultMode
              | std.number.Integer
              | doc "defaultMode is Optional: mode bits used to set permissions on created files by default. Must be an octal value between 0000 and 0777 or a decimal value between 0 and 511. YAML accepts both octal and decimal values, JSON requires decimal values for mode bits. Defaults to 0644. Directories within the path are not affected by this setting. This might be in conflict with other options that affect the file mode, like fsGroup, and the result can be other mode bits set."
              | optional,
            items
              | Array (
                std.contract.Sequence
                  [
                    refs."definitions.io.k8s.api.core.v1.KeyToPath",
                    { _ | Dyn }
                  ]
              )
              | doc "items If unspecified, each key-value pair in the Data field of the referenced Secret will be projected into the volume as a file whose name is the key and content is the value. If specified, the listed keys will be projected into the specified paths, and unlisted keys will not be present. If a key is specified which is not present in the Secret, the volume setup will error unless it is marked optional. Paths must be relative and may not contain the '..' path or start with '..'."
              | optional,
            "optional"
              | Bool
              | doc "optional field specify whether the Secret or its keys must be defined"
              | optional,
            secretName
              | String
              | doc "secretName is the name of the secret in the pod's namespace to use. More info: https://kubernetes.io/docs/concepts/storage/volumes#secret"
              | optional,
            ..
          },
      "definitions.io.k8s.api.core.v1.SecurityContext" =
        {
            allowPrivilegeEscalation
              | Bool
              | doc "AllowPrivilegeEscalation controls whether a process can gain more privileges than its parent process. This bool directly controls if the no_new_privs flag will be set on the container process. AllowPrivilegeEscalation is true always when the container is: 1) run as Privileged 2) has CAP_SYS_ADMIN Note that this field cannot be set when spec.os.name is windows."
              | optional,
            appArmorProfile
              | refs."definitions.io.k8s.api.core.v1.AppArmorProfile"
              | { _ | Dyn }
              | doc "appArmorProfile is the AppArmor options to use by this container. If set, this profile overrides the pod's appArmorProfile. Note that this field cannot be set when spec.os.name is windows."
              | optional,
            capabilities
              | refs."definitions.io.k8s.api.core.v1.Capabilities"
              | { _ | Dyn }
              | doc "The capabilities to add/drop when running containers. Defaults to the default set of capabilities granted by the container runtime. Note that this field cannot be set when spec.os.name is windows."
              | optional,
            privileged
              | Bool
              | doc "Run container in privileged mode. Processes in privileged containers are essentially equivalent to root on the host. Defaults to false. Note that this field cannot be set when spec.os.name is windows."
              | optional,
            procMount
              | String
              | doc "procMount denotes the type of proc mount to use for the containers. The default value is Default which uses the container runtime defaults for readonly paths and masked paths. This requires the ProcMountType feature flag to be enabled. Note that this field cannot be set when spec.os.name is windows."
              | optional,
            readOnlyRootFilesystem
              | Bool
              | doc "Whether this container has a read-only root filesystem. Default is false. Note that this field cannot be set when spec.os.name is windows."
              | optional,
            runAsGroup
              | std.number.Integer
              | doc "The GID to run the entrypoint of the container process. Uses runtime default if unset. May also be set in PodSecurityContext.  If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence. Note that this field cannot be set when spec.os.name is windows."
              | optional,
            runAsNonRoot
              | Bool
              | doc "Indicates that the container must run as a non-root user. If true, the Kubelet will validate the image at runtime to ensure that it does not run as UID 0 (root) and fail to start the container if it does. If unset or false, no such validation will be performed. May also be set in PodSecurityContext.  If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence."
              | optional,
            runAsUser
              | std.number.Integer
              | doc "The UID to run the entrypoint of the container process. Defaults to user specified in image metadata if unspecified. May also be set in PodSecurityContext.  If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence. Note that this field cannot be set when spec.os.name is windows."
              | optional,
            seLinuxOptions
              | refs."definitions.io.k8s.api.core.v1.SELinuxOptions"
              | { _ | Dyn }
              | doc "The SELinux context to be applied to the container. If unspecified, the container runtime will allocate a random SELinux context for each container.  May also be set in PodSecurityContext.  If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence. Note that this field cannot be set when spec.os.name is windows."
              | optional,
            seccompProfile
              | refs."definitions.io.k8s.api.core.v1.SeccompProfile"
              | { _ | Dyn }
              | doc "The seccomp options to use by this container. If seccomp options are provided at both the pod & container level, the container options override the pod options. Note that this field cannot be set when spec.os.name is windows."
              | optional,
            windowsOptions
              | refs."definitions.io.k8s.api.core.v1.WindowsSecurityContextOptions"
              | { _ | Dyn }
              | doc "The Windows specific settings applied to all containers. If unspecified, the options from the PodSecurityContext will be used. If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence. Note that this field cannot be set when spec.os.name is linux."
              | optional,
            ..
          },
      "definitions.io.k8s.api.core.v1.ServiceAccountTokenProjection" =
        {
            audience
              | String
              | doc "audience is the intended audience of the token. A recipient of a token must identify itself with an identifier specified in the audience of the token, and otherwise should reject the token. The audience defaults to the identifier of the apiserver."
              | optional,
            expirationSeconds
              | std.number.Integer
              | doc "expirationSeconds is the requested duration of validity of the service account token. As the token approaches expiration, the kubelet volume plugin will proactively rotate the service account token. The kubelet will start trying to rotate the token if the token is older than 80 percent of its time to live or if the token is older than 24 hours.Defaults to 1 hour and must be at least 10 minutes."
              | optional,
            path
              | String
              | doc "path is the path relative to the mount point of the file to project the token into.",
            ..
          },
      "definitions.io.k8s.api.core.v1.SleepAction" =
        {
            seconds
              | std.number.Integer
              | doc "Seconds is the number of seconds to sleep.",
            ..
          },
      "definitions.io.k8s.api.core.v1.StorageOSVolumeSource" =
        {
            fsType
              | String
              | doc "fsType is the filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. \"ext4\", \"xfs\", \"ntfs\". Implicitly inferred to be \"ext4\" if unspecified."
              | optional,
            readOnly
              | Bool
              | doc "readOnly defaults to false (read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts."
              | optional,
            secretRef
              | refs."definitions.io.k8s.api.core.v1.LocalObjectReference"
              | { _ | Dyn }
              | doc "secretRef specifies the secret to use for obtaining the StorageOS API credentials.  If not specified, default values will be attempted."
              | optional,
            volumeName
              | String
              | doc "volumeName is the human-readable name of the StorageOS volume.  Volume names are only unique within a namespace."
              | optional,
            volumeNamespace
              | String
              | doc "volumeNamespace specifies the scope of the volume within StorageOS.  If no namespace is specified then the Pod's namespace will be used.  This allows the Kubernetes name scoping to be mirrored within StorageOS for tighter integration. Set VolumeName to any name to override the default behaviour. Set to \"default\" if you are not using namespaces within StorageOS. Namespaces that do not pre-exist within StorageOS will be created."
              | optional,
            ..
          },
      "definitions.io.k8s.api.core.v1.Sysctl" =
        {
            name | String | doc "Name of a property to set",
            value | String | doc "Value of a property to set",
            ..
          },
      "definitions.io.k8s.api.core.v1.TCPSocketAction" =
        {
            host
              | String
              | doc "Optional: Host name to connect to, defaults to the pod IP."
              | optional,
            port
              | refs."definitions.io.k8s.apimachinery.pkg.util.intstr.IntOrString"
              | String
              | doc "Number or name of the port to access on the container. Number must be in the range 1 to 65535. Name must be an IANA_SVC_NAME.",
            ..
          },
      "definitions.io.k8s.api.core.v1.Toleration" =
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
          },
      "definitions.io.k8s.api.core.v1.TypedLocalObjectReference" =
        {
            apiGroup
              | String
              | doc "APIGroup is the group for the resource being referenced. If APIGroup is not specified, the specified Kind must be in the core API group. For any other third-party types, APIGroup is required."
              | optional,
            kind | String | doc "Kind is the type of resource being referenced",
            name | String | doc "Name is the name of resource being referenced",
            ..
          },
      "definitions.io.k8s.api.core.v1.TypedObjectReference" =
        {
            apiGroup
              | String
              | doc "APIGroup is the group for the resource being referenced. If APIGroup is not specified, the specified Kind must be in the core API group. For any other third-party types, APIGroup is required."
              | optional,
            kind | String | doc "Kind is the type of resource being referenced",
            name | String | doc "Name is the name of resource being referenced",
            namespace
              | String
              | doc "Namespace is the namespace of resource being referenced Note that when a namespace is specified, a gateway.networking.k8s.io/ReferenceGrant object is required in the referent namespace to allow that namespace's owner to accept the reference. See the ReferenceGrant documentation for details. (Alpha) This field requires the CrossNamespaceVolumeDataSource feature gate to be enabled."
              | optional,
            ..
          },
      "definitions.io.k8s.api.core.v1.Volume" =
        {
            awsElasticBlockStore
              | refs."definitions.io.k8s.api.core.v1.AWSElasticBlockStoreVolumeSource"
              | { _ | Dyn }
              | doc "awsElasticBlockStore represents an AWS Disk resource that is attached to a kubelet's host machine and then exposed to the pod. Deprecated: AWSElasticBlockStore is deprecated. All operations for the in-tree awsElasticBlockStore type are redirected to the ebs.csi.aws.com CSI driver. More info: https://kubernetes.io/docs/concepts/storage/volumes#awselasticblockstore"
              | optional,
            azureDisk
              | refs."definitions.io.k8s.api.core.v1.AzureDiskVolumeSource"
              | { _ | Dyn }
              | doc "azureDisk represents an Azure Data Disk mount on the host and bind mount to the pod. Deprecated: AzureDisk is deprecated. All operations for the in-tree azureDisk type are redirected to the disk.csi.azure.com CSI driver."
              | optional,
            azureFile
              | refs."definitions.io.k8s.api.core.v1.AzureFileVolumeSource"
              | { _ | Dyn }
              | doc "azureFile represents an Azure File Service mount on the host and bind mount to the pod. Deprecated: AzureFile is deprecated. All operations for the in-tree azureFile type are redirected to the file.csi.azure.com CSI driver."
              | optional,
            cephfs
              | refs."definitions.io.k8s.api.core.v1.CephFSVolumeSource"
              | { _ | Dyn }
              | doc "cephFS represents a Ceph FS mount on the host that shares a pod's lifetime. Deprecated: CephFS is deprecated and the in-tree cephfs type is no longer supported."
              | optional,
            cinder
              | refs."definitions.io.k8s.api.core.v1.CinderVolumeSource"
              | { _ | Dyn }
              | doc "cinder represents a cinder volume attached and mounted on kubelets host machine. Deprecated: Cinder is deprecated. All operations for the in-tree cinder type are redirected to the cinder.csi.openstack.org CSI driver. More info: https://examples.k8s.io/mysql-cinder-pd/README.md"
              | optional,
            configMap
              | refs."definitions.io.k8s.api.core.v1.ConfigMapVolumeSource"
              | { _ | Dyn }
              | doc "configMap represents a configMap that should populate this volume"
              | optional,
            csi
              | refs."definitions.io.k8s.api.core.v1.CSIVolumeSource"
              | { _ | Dyn }
              | doc "csi (Container Storage Interface) represents ephemeral storage that is handled by certain external CSI drivers."
              | optional,
            downwardAPI
              | refs."definitions.io.k8s.api.core.v1.DownwardAPIVolumeSource"
              | { _ | Dyn }
              | doc "downwardAPI represents downward API about the pod that should populate this volume"
              | optional,
            emptyDir
              | refs."definitions.io.k8s.api.core.v1.EmptyDirVolumeSource"
              | { _ | Dyn }
              | doc "emptyDir represents a temporary directory that shares a pod's lifetime. More info: https://kubernetes.io/docs/concepts/storage/volumes#emptydir"
              | optional,
            ephemeral
              | refs."definitions.io.k8s.api.core.v1.EphemeralVolumeSource"
              | { _ | Dyn }
              | doc m%"
                ephemeral represents a volume that is handled by a cluster storage driver. The volume's lifecycle is tied to the pod that defines it - it will be created before the pod starts, and deleted when the pod is removed.
                
                Use this if: a) the volume is only needed while the pod runs, b) features of normal volumes like restoring from snapshot or capacity
                   tracking are needed,
                c) the storage driver is specified through a storage class, and d) the storage driver supports dynamic volume provisioning through
                   a PersistentVolumeClaim (see EphemeralVolumeSource for more
                   information on the connection between this volume type
                   and PersistentVolumeClaim).
                
                Use PersistentVolumeClaim or one of the vendor-specific APIs for volumes that persist for longer than the lifecycle of an individual pod.
                
                Use CSI for light-weight local ephemeral volumes if the CSI driver is meant to be used that way - see the documentation of the driver for more information.
                
                A pod can use both types of ephemeral volumes and persistent volumes at the same time.
              "%
              | optional,
            fc
              | refs."definitions.io.k8s.api.core.v1.FCVolumeSource"
              | { _ | Dyn }
              | doc "fc represents a Fibre Channel resource that is attached to a kubelet's host machine and then exposed to the pod."
              | optional,
            flexVolume
              | refs."definitions.io.k8s.api.core.v1.FlexVolumeSource"
              | { _ | Dyn }
              | doc "flexVolume represents a generic volume resource that is provisioned/attached using an exec based plugin. Deprecated: FlexVolume is deprecated. Consider using a CSIDriver instead."
              | optional,
            flocker
              | refs."definitions.io.k8s.api.core.v1.FlockerVolumeSource"
              | { _ | Dyn }
              | doc "flocker represents a Flocker volume attached to a kubelet's host machine. This depends on the Flocker control service being running. Deprecated: Flocker is deprecated and the in-tree flocker type is no longer supported."
              | optional,
            gcePersistentDisk
              | refs."definitions.io.k8s.api.core.v1.GCEPersistentDiskVolumeSource"
              | { _ | Dyn }
              | doc "gcePersistentDisk represents a GCE Disk resource that is attached to a kubelet's host machine and then exposed to the pod. Deprecated: GCEPersistentDisk is deprecated. All operations for the in-tree gcePersistentDisk type are redirected to the pd.csi.storage.gke.io CSI driver. More info: https://kubernetes.io/docs/concepts/storage/volumes#gcepersistentdisk"
              | optional,
            gitRepo
              | refs."definitions.io.k8s.api.core.v1.GitRepoVolumeSource"
              | { _ | Dyn }
              | doc "gitRepo represents a git repository at a particular revision. Deprecated: GitRepo is deprecated. To provision a container with a git repo, mount an EmptyDir into an InitContainer that clones the repo using git, then mount the EmptyDir into the Pod's container."
              | optional,
            glusterfs
              | refs."definitions.io.k8s.api.core.v1.GlusterfsVolumeSource"
              | { _ | Dyn }
              | doc "glusterfs represents a Glusterfs mount on the host that shares a pod's lifetime. Deprecated: Glusterfs is deprecated and the in-tree glusterfs type is no longer supported. More info: https://examples.k8s.io/volumes/glusterfs/README.md"
              | optional,
            hostPath
              | refs."definitions.io.k8s.api.core.v1.HostPathVolumeSource"
              | { _ | Dyn }
              | doc "hostPath represents a pre-existing file or directory on the host machine that is directly exposed to the container. This is generally used for system agents or other privileged things that are allowed to see the host machine. Most containers will NOT need this. More info: https://kubernetes.io/docs/concepts/storage/volumes#hostpath"
              | optional,
            image
              | refs."definitions.io.k8s.api.core.v1.ImageVolumeSource"
              | { _ | Dyn }
              | doc m%"
                image represents an OCI object (a container image or artifact) pulled and mounted on the kubelet's host machine. The volume is resolved at pod startup depending on which PullPolicy value is provided:
                
                - Always: the kubelet always attempts to pull the reference. Container creation will fail If the pull fails. - Never: the kubelet never pulls the reference and only uses a local image or artifact. Container creation will fail if the reference isn't present. - IfNotPresent: the kubelet pulls if the reference isn't already present on disk. Container creation will fail if the reference isn't present and the pull fails.
                
                The volume gets re-resolved if the pod gets deleted and recreated, which means that new remote content will become available on pod recreation. A failure to resolve or pull the image during pod startup will block containers from starting and may add significant latency. Failures will be retried using normal volume backoff and will be reported on the pod reason and message. The types of objects that may be mounted by this volume are defined by the container runtime implementation on a host machine and at minimum must include all valid types supported by the container image field. The OCI object gets mounted in a single directory (spec.containers[*].volumeMounts.mountPath) by merging the manifest layers in the same way as for container images. The volume will be mounted read-only (ro) and non-executable files (noexec). Sub path mounts for containers are not supported (spec.containers[*].volumeMounts.subpath) before 1.33. The field spec.securityContext.fsGroupChangePolicy has no effect on this volume type.
              "%
              | optional,
            iscsi
              | refs."definitions.io.k8s.api.core.v1.ISCSIVolumeSource"
              | { _ | Dyn }
              | doc "iscsi represents an ISCSI Disk resource that is attached to a kubelet's host machine and then exposed to the pod. More info: https://examples.k8s.io/volumes/iscsi/README.md"
              | optional,
            name
              | String
              | doc "name of the volume. Must be a DNS_LABEL and unique within the pod. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names",
            nfs
              | refs."definitions.io.k8s.api.core.v1.NFSVolumeSource"
              | { _ | Dyn }
              | doc "nfs represents an NFS mount on the host that shares a pod's lifetime More info: https://kubernetes.io/docs/concepts/storage/volumes#nfs"
              | optional,
            persistentVolumeClaim
              | refs."definitions.io.k8s.api.core.v1.PersistentVolumeClaimVolumeSource"
              | { _ | Dyn }
              | doc "persistentVolumeClaimVolumeSource represents a reference to a PersistentVolumeClaim in the same namespace. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#persistentvolumeclaims"
              | optional,
            photonPersistentDisk
              | refs."definitions.io.k8s.api.core.v1.PhotonPersistentDiskVolumeSource"
              | { _ | Dyn }
              | doc "photonPersistentDisk represents a PhotonController persistent disk attached and mounted on kubelets host machine. Deprecated: PhotonPersistentDisk is deprecated and the in-tree photonPersistentDisk type is no longer supported."
              | optional,
            portworxVolume
              | refs."definitions.io.k8s.api.core.v1.PortworxVolumeSource"
              | { _ | Dyn }
              | doc "portworxVolume represents a portworx volume attached and mounted on kubelets host machine. Deprecated: PortworxVolume is deprecated. All operations for the in-tree portworxVolume type are redirected to the pxd.portworx.com CSI driver when the CSIMigrationPortworx feature-gate is on."
              | optional,
            projected
              | refs."definitions.io.k8s.api.core.v1.ProjectedVolumeSource"
              | { _ | Dyn }
              | doc "projected items for all in one resources secrets, configmaps, and downward API"
              | optional,
            quobyte
              | refs."definitions.io.k8s.api.core.v1.QuobyteVolumeSource"
              | { _ | Dyn }
              | doc "quobyte represents a Quobyte mount on the host that shares a pod's lifetime. Deprecated: Quobyte is deprecated and the in-tree quobyte type is no longer supported."
              | optional,
            rbd
              | refs."definitions.io.k8s.api.core.v1.RBDVolumeSource"
              | { _ | Dyn }
              | doc "rbd represents a Rados Block Device mount on the host that shares a pod's lifetime. Deprecated: RBD is deprecated and the in-tree rbd type is no longer supported. More info: https://examples.k8s.io/volumes/rbd/README.md"
              | optional,
            scaleIO
              | refs."definitions.io.k8s.api.core.v1.ScaleIOVolumeSource"
              | { _ | Dyn }
              | doc "scaleIO represents a ScaleIO persistent volume attached and mounted on Kubernetes nodes. Deprecated: ScaleIO is deprecated and the in-tree scaleIO type is no longer supported."
              | optional,
            secret
              | refs."definitions.io.k8s.api.core.v1.SecretVolumeSource"
              | { _ | Dyn }
              | doc "secret represents a secret that should populate this volume. More info: https://kubernetes.io/docs/concepts/storage/volumes#secret"
              | optional,
            storageos
              | refs."definitions.io.k8s.api.core.v1.StorageOSVolumeSource"
              | { _ | Dyn }
              | doc "storageOS represents a StorageOS volume attached and mounted on Kubernetes nodes. Deprecated: StorageOS is deprecated and the in-tree storageos type is no longer supported."
              | optional,
            vsphereVolume
              | refs."definitions.io.k8s.api.core.v1.VsphereVirtualDiskVolumeSource"
              | { _ | Dyn }
              | doc "vsphereVolume represents a vSphere volume attached and mounted on kubelets host machine. Deprecated: VsphereVolume is deprecated. All operations for the in-tree vsphereVolume type are redirected to the csi.vsphere.vmware.com CSI driver."
              | optional,
            ..
          },
      "definitions.io.k8s.api.core.v1.VolumeDevice" =
        {
            devicePath
              | String
              | doc "devicePath is the path inside of the container that the device will be mapped to.",
            name
              | String
              | doc "name must match the name of a persistentVolumeClaim in the pod",
            ..
          },
      "definitions.io.k8s.api.core.v1.VolumeMount" =
        {
            mountPath
              | String
              | doc "Path within the container at which the volume should be mounted.  Must not contain ':'.",
            mountPropagation
              | String
              | doc "mountPropagation determines how mounts are propagated from the host to container and the other way around. When not set, MountPropagationNone is used. This field is beta in 1.10. When RecursiveReadOnly is set to IfPossible or to Enabled, MountPropagation must be None or unspecified (which defaults to None)."
              | optional,
            name | String | doc "This must match the Name of a Volume.",
            readOnly
              | Bool
              | doc "Mounted read-only if true, read-write otherwise (false or unspecified). Defaults to false."
              | optional,
            recursiveReadOnly
              | String
              | doc m%"
                RecursiveReadOnly specifies whether read-only mounts should be handled recursively.
                
                If ReadOnly is false, this field has no meaning and must be unspecified.
                
                If ReadOnly is true, and this field is set to Disabled, the mount is not made recursively read-only.  If this field is set to IfPossible, the mount is made recursively read-only, if it is supported by the container runtime.  If this field is set to Enabled, the mount is made recursively read-only if it is supported by the container runtime, otherwise the pod will not be started and an error will be generated to indicate the reason.
                
                If this field is set to IfPossible or Enabled, MountPropagation must be set to None (or be unspecified, which defaults to None).
                
                If this field is not specified, it is treated as an equivalent of Disabled.
              "%
              | optional,
            subPath
              | String
              | doc "Path within the volume from which the container's volume should be mounted. Defaults to \"\" (volume's root)."
              | optional,
            subPathExpr
              | String
              | doc "Expanded path within the volume from which the container's volume should be mounted. Behaves similarly to SubPath but environment variable references $(VAR_NAME) are expanded using the container's environment. Defaults to \"\" (volume's root). SubPathExpr and SubPath are mutually exclusive."
              | optional,
            ..
          },
      "definitions.io.k8s.api.core.v1.VolumeProjection" =
        {
            clusterTrustBundle
              | refs."definitions.io.k8s.api.core.v1.ClusterTrustBundleProjection"
              | { _ | Dyn }
              | doc m%"
                ClusterTrustBundle allows a pod to access the `.spec.trustBundle` field of ClusterTrustBundle objects in an auto-updating file.
                
                Alpha, gated by the ClusterTrustBundleProjection feature gate.
                
                ClusterTrustBundle objects can either be selected by name, or by the combination of signer name and a label selector.
                
                Kubelet performs aggressive normalization of the PEM contents written into the pod filesystem.  Esoteric PEM features such as inter-block comments and block headers are stripped.  Certificates are deduplicated. The ordering of certificates within the file is arbitrary, and Kubelet may change the order over time.
              "%
              | optional,
            configMap
              | refs."definitions.io.k8s.api.core.v1.ConfigMapProjection"
              | { _ | Dyn }
              | doc "configMap information about the configMap data to project"
              | optional,
            downwardAPI
              | refs."definitions.io.k8s.api.core.v1.DownwardAPIProjection"
              | { _ | Dyn }
              | doc "downwardAPI information about the downwardAPI data to project"
              | optional,
            secret
              | refs."definitions.io.k8s.api.core.v1.SecretProjection"
              | { _ | Dyn }
              | doc "secret information about the secret data to project"
              | optional,
            serviceAccountToken
              | refs."definitions.io.k8s.api.core.v1.ServiceAccountTokenProjection"
              | { _ | Dyn }
              | doc "serviceAccountToken is information about the serviceAccountToken data to project"
              | optional,
            ..
          },
      "definitions.io.k8s.api.core.v1.VolumeResourceRequirements" =
        {
            limits
              | {
                _ | std.contract.Sequence
                  [
                    refs."definitions.io.k8s.apimachinery.pkg.api.resource.Quantity",
                    String
                  ]
              }
              | doc "Limits describes the maximum amount of compute resources allowed. More info: https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/"
              | optional,
            requests
              | {
                _ | std.contract.Sequence
                  [
                    refs."definitions.io.k8s.apimachinery.pkg.api.resource.Quantity",
                    String
                  ]
              }
              | doc "Requests describes the minimum amount of compute resources required. If Requests is omitted for a container, it defaults to Limits if that is explicitly specified, otherwise to an implementation-defined value. Requests cannot exceed Limits. More info: https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/"
              | optional,
            ..
          },
      "definitions.io.k8s.api.core.v1.VsphereVirtualDiskVolumeSource" =
        {
            fsType
              | String
              | doc "fsType is filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. \"ext4\", \"xfs\", \"ntfs\". Implicitly inferred to be \"ext4\" if unspecified."
              | optional,
            storagePolicyID
              | String
              | doc "storagePolicyID is the storage Policy Based Management (SPBM) profile ID associated with the StoragePolicyName."
              | optional,
            storagePolicyName
              | String
              | doc "storagePolicyName is the storage Policy Based Management (SPBM) profile name."
              | optional,
            volumePath
              | String
              | doc "volumePath is the path that identifies vSphere volume vmdk",
            ..
          },
      "definitions.io.k8s.api.core.v1.WeightedPodAffinityTerm" =
        {
            podAffinityTerm
              | refs."definitions.io.k8s.api.core.v1.PodAffinityTerm"
              | { _ | Dyn }
              | doc "Required. A pod affinity term, associated with the corresponding weight.",
            weight
              | std.number.Integer
              | doc "weight associated with matching the corresponding podAffinityTerm, in the range 1-100.",
            ..
          },
      "definitions.io.k8s.api.core.v1.WindowsSecurityContextOptions" =
        {
            gmsaCredentialSpec
              | String
              | doc "GMSACredentialSpec is where the GMSA admission webhook (https://github.com/kubernetes-sigs/windows-gmsa) inlines the contents of the GMSA credential spec named by the GMSACredentialSpecName field."
              | optional,
            gmsaCredentialSpecName
              | String
              | doc "GMSACredentialSpecName is the name of the GMSA credential spec to use."
              | optional,
            hostProcess
              | Bool
              | doc "HostProcess determines if a container should be run as a 'Host Process' container. All of a Pod's containers must have the same effective HostProcess value (it is not allowed to have a mix of HostProcess containers and non-HostProcess containers). In addition, if HostProcess is true then HostNetwork must also be set to true."
              | optional,
            runAsUserName
              | String
              | doc "The UserName in Windows to run the entrypoint of the container process. Defaults to the user specified in image metadata if unspecified. May also be set in PodSecurityContext. If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence."
              | optional,
            ..
          },
      "definitions.io.k8s.api.policy.v1.PodDisruptionBudgetSpec" =
        {
            maxUnavailable
              | refs."definitions.io.k8s.apimachinery.pkg.util.intstr.IntOrString"
              | String
              | doc "An eviction is allowed if at most \"maxUnavailable\" pods selected by \"selector\" are unavailable after the eviction, i.e. even in absence of the evicted pod. For example, one can prevent all voluntary evictions by specifying 0. This is a mutually exclusive setting with \"minAvailable\"."
              | optional,
            minAvailable
              | refs."definitions.io.k8s.apimachinery.pkg.util.intstr.IntOrString"
              | String
              | doc "An eviction is allowed if at least \"minAvailable\" pods selected by \"selector\" will still be available after the eviction, i.e. even in the absence of the evicted pod.  So for example you can prevent all voluntary evictions by specifying \"100%\"."
              | optional,
            selector
              | refs."definitions.io.k8s.apimachinery.pkg.apis.meta.v1.LabelSelector"
              | { _ | Dyn }
              | doc "Label query over pods whose evictions are managed by the disruption budget. A null selector will match no pods, while an empty ({}) selector will select all pods within the namespace."
              | optional,
            unhealthyPodEvictionPolicy
              | String
              | doc m%"
                UnhealthyPodEvictionPolicy defines the criteria for when unhealthy pods should be considered for eviction. Current implementation considers healthy pods, as pods that have status.conditions item with type="Ready",status="True".
                
                Valid policies are IfHealthyBudget and AlwaysAllow. If no policy is specified, the default behavior will be used, which corresponds to the IfHealthyBudget policy.
                
                IfHealthyBudget policy means that running pods (status.phase="Running"), but not yet healthy can be evicted only if the guarded application is not disrupted (status.currentHealthy is at least equal to status.desiredHealthy). Healthy pods will be subject to the PDB for eviction.
                
                AlwaysAllow policy means that all running pods (status.phase="Running"), but not yet healthy are considered disrupted and can be evicted regardless of whether the criteria in a PDB is met. This means perspective running pods of a disrupted application might not get a chance to become healthy. Healthy pods will be subject to the PDB for eviction.
                
                Additional policies may be added in the future. Clients making eviction decisions should disallow eviction of unhealthy pods if they encounter an unrecognized policy in this field.
              "%
              | optional,
            ..
          },
      "definitions.io.k8s.apimachinery.pkg.api.resource.Quantity" = String,
      "definitions.io.k8s.apimachinery.pkg.apis.meta.v1.FieldsV1" = { _ | Dyn },
      "definitions.io.k8s.apimachinery.pkg.apis.meta.v1.LabelSelector" =
        {
            matchExpressions
              | Array (
                std.contract.Sequence
                  [
                    refs."definitions.io.k8s.apimachinery.pkg.apis.meta.v1.LabelSelectorRequirement",
                    { _ | Dyn }
                  ]
              )
              | doc "matchExpressions is a list of label selector requirements. The requirements are ANDed."
              | optional,
            matchLabels
              | { _ | String }
              | doc "matchLabels is a map of {key,value} pairs. A single {key,value} in the matchLabels map is equivalent to an element of matchExpressions, whose key field is \"key\", the operator is \"In\", and the values array contains only \"value\". The requirements are ANDed."
              | optional,
            ..
          },
      "definitions.io.k8s.apimachinery.pkg.apis.meta.v1.LabelSelectorRequirement" =
        {
            key
              | String
              | doc "key is the label key that the selector applies to.",
            operator
              | String
              | doc "operator represents a key's relationship to a set of values. Valid operators are In, NotIn, Exists and DoesNotExist.",
            values
              | Array String
              | doc "values is an array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. This array is replaced during a strategic merge patch."
              | optional,
            ..
          },
      "definitions.io.k8s.apimachinery.pkg.apis.meta.v1.ManagedFieldsEntry" =
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
              | refs."definitions.io.k8s.apimachinery.pkg.apis.meta.v1.FieldsV1"
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
            subresource
              | String
              | doc "Subresource is the name of the subresource used to update that object, or empty string if the object was updated through the main resource. The value of this field is used to distinguish between managers, even if they share the same name. For example, a status update will be distinct from a regular update using the same manager name. Note that the APIVersion field is not related to the Subresource field and it always corresponds to the version of the main resource."
              | optional,
            time
              | refs."definitions.io.k8s.apimachinery.pkg.apis.meta.v1.Time"
              | String
              | doc "Time is the timestamp of when the ManagedFields entry was added. The timestamp will also be updated if a field is added, the manager changes any of the owned fields value or removes a field. The timestamp does not update when a field is removed from the entry because another manager took it over."
              | optional,
            ..
          },
      "definitions.io.k8s.apimachinery.pkg.apis.meta.v1.ObjectMeta" =
        {
            annotations
              | { _ | String }
              | doc "Annotations is an unstructured key value map stored with a resource that may be set by external tools to store and retrieve arbitrary metadata. They are not queryable and should be preserved when modifying objects. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/annotations"
              | optional,
            creationTimestamp
              | refs."definitions.io.k8s.apimachinery.pkg.apis.meta.v1.Time"
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
              | refs."definitions.io.k8s.apimachinery.pkg.apis.meta.v1.Time"
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
                
                If this field is specified and the generated name exists, the server will return a 409.
                
                Applied only if Name is not specified. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#idempotency
              "%
              | optional,
            generation
              | std.number.Integer
              | doc "A sequence number representing a specific generation of the desired state. Populated by the system. Read-only."
              | optional,
            labels
              | { _ | String }
              | doc "Map of string keys and values that can be used to organize and categorize (scope and select) objects. May match selectors of replication controllers and services. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/labels"
              | optional,
            managedFields
              | Array (
                std.contract.Sequence
                  [
                    refs."definitions.io.k8s.apimachinery.pkg.apis.meta.v1.ManagedFieldsEntry",
                    { _ | Dyn }
                  ]
              )
              | doc "ManagedFields maps workflow-id and version to the set of fields that are managed by that workflow. This is mostly for internal housekeeping, and users typically shouldn't need to set or understand this field. A workflow can be the user's name, a controller's name, or the name of a specific apply path like \"ci-cd\". The set of fields is always in the version that the workflow used when modifying the object."
              | optional,
            name
              | String
              | doc "Name must be unique within a namespace. Is required when creating resources, although some resources may allow a client to request the generation of an appropriate name automatically. Name is primarily intended for creation idempotence and configuration definition. Cannot be updated. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names#names"
              | optional,
            namespace
              | String
              | doc m%"
                Namespace defines the space within which each name must be unique. An empty namespace is equivalent to the "default" namespace, but "default" is the canonical representation. Not all objects are required to be scoped to a namespace - the value of this field for those objects will be empty.
                
                Must be a DNS_LABEL. Cannot be updated. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/namespaces
              "%
              | optional,
            ownerReferences
              | Array (
                std.contract.Sequence
                  [
                    refs."definitions.io.k8s.apimachinery.pkg.apis.meta.v1.OwnerReference",
                    { _ | Dyn }
                  ]
              )
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
              | doc "Deprecated: selfLink is a legacy read-only field that is no longer populated by the system."
              | optional,
            uid
              | String
              | doc m%"
                UID is the unique in time and space value for this object. It is typically generated by the server on successful creation of a resource and is not allowed to change on PUT operations.
                
                Populated by the system. Read-only. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names#uids
              "%
              | optional,
            ..
          },
      "definitions.io.k8s.apimachinery.pkg.apis.meta.v1.OwnerReference" =
        {
            apiVersion | String | doc "API version of the referent.",
            blockOwnerDeletion
              | Bool
              | doc "If true, AND if the owner has the \"foregroundDeletion\" finalizer, then the owner cannot be deleted from the key-value store until this reference is removed. See https://kubernetes.io/docs/concepts/architecture/garbage-collection/#foreground-deletion for how the garbage collector interacts with this field and enforces the foreground deletion. Defaults to false. To set this field, a user needs \"delete\" permission of the owner, otherwise 422 (Unprocessable Entity) will be returned."
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
              | doc "Name of the referent. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names#names",
            uid
              | String
              | doc "UID of the referent. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names#uids",
            ..
          },
      "definitions.io.k8s.apimachinery.pkg.apis.meta.v1.Time" = String,
      "definitions.io.k8s.apimachinery.pkg.util.intstr.IntOrString" = String,
    }
    in
  std.contract.Sequence
      [
        js2n.OneOf
          [
            refs."definitions.io.argoproj.workflow.v1alpha1.ClusterWorkflowTemplate",
            refs."definitions.io.argoproj.workflow.v1alpha1.CronWorkflow",
            refs."definitions.io.argoproj.workflow.v1alpha1.Workflow",
            refs."definitions.io.argoproj.workflow.v1alpha1.WorkflowEventBinding",
            refs."definitions.io.argoproj.workflow.v1alpha1.WorkflowTemplate"
          ],
        { _ | Dyn }
      ]