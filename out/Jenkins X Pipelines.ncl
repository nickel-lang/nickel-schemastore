# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.AWSElasticBlockStoreVolumeSource" =
        {
            fsType | String | optional,
            partition | std.number.Integer | optional,
            readOnly | Bool | optional,
            volumeID | String | optional,
          },
      "definitions.AddonConfig" =
        { name | String | optional, version | String | optional, },
      "definitions.Agent" =
        {
            container | String | optional,
            dir | String | optional,
            image | String | optional,
            label | String | optional,
          },
      "definitions.AzureDiskVolumeSource" =
        {
            cachingMode | String | optional,
            diskName | String | optional,
            diskURI | String | optional,
            fsType | String | optional,
            kind | String | optional,
            readOnly | Bool | optional,
          },
      "definitions.AzureFileVolumeSource" =
        {
            readOnly | Bool | optional,
            secretName | String | optional,
            shareName | String | optional,
          },
      "definitions.CSIVolumeSource" =
        {
            driver | String | optional,
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
                  patterns = { ".*" = String, },
                  properties = {},
                  required = {},
                }
              | optional,
          },
      "definitions.CephFSVolumeSource" =
        {
            monitors | Array String | optional,
            path | String | optional,
            readOnly | Bool | optional,
            secretFile | String | optional,
            secretRef
              | refs."definitions.LocalObjectReference"
              | { _ | Dyn }
              | optional,
            user | String | optional,
          },
      "definitions.ChatConfig" =
        {
            developerChannel | String | optional,
            kind | String | optional,
            url | String | optional,
            userChannel | String | optional,
          },
      "definitions.CinderVolumeSource" =
        {
            fsType | String | optional,
            readOnly | Bool | optional,
            secretRef
              | refs."definitions.LocalObjectReference"
              | { _ | Dyn }
              | optional,
            volumeID | String | optional,
          },
      "definitions.ConfigMapKeySelector" =
        {
            key | String | optional,
            name | String | optional,
            "optional" | Bool | optional,
          },
      "definitions.ConfigMapProjection" =
        {
            items
              | Array (
                std.contract.Sequence
                  [ refs."definitions.KeyToPath", { _ | Dyn } ]
              )
              | optional,
            name | String | optional,
            "optional" | Bool | optional,
          },
      "definitions.ConfigMapVolumeSource" =
        {
            defaultMode | std.number.Integer | optional,
            items
              | Array (
                std.contract.Sequence
                  [ refs."definitions.KeyToPath", { _ | Dyn } ]
              )
              | optional,
            name | String | optional,
            "optional" | Bool | optional,
          },
      "definitions.Container" = {  .. },
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
            path | String | optional,
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
      "definitions.EmptyDirVolumeSource" =
        {
            medium | String | optional,
            sizeLimit | refs."definitions.Quantity" | { _ | Dyn } | optional,
          },
      "definitions.EnvVar" =
        {
            name | String | optional,
            value | String | optional,
            valueFrom
              | refs."definitions.EnvVarSource"
              | { _ | Dyn }
              | optional,
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
      "definitions.FCVolumeSource" =
        {
            fsType | String | optional,
            lun | std.number.Integer | optional,
            readOnly | Bool | optional,
            targetWWNs | Array String | optional,
            wwids | Array String | optional,
          },
      "definitions.FlexVolumeSource" =
        {
            driver | String | optional,
            fsType | String | optional,
            options
              | js2n.record.Record
                {
                  additional = 'Some Dyn,
                  patterns = { ".*" = String, },
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
            pdName | String | optional,
            readOnly | Bool | optional,
          },
      "definitions.GitRepoVolumeSource" =
        {
            directory | String | optional,
            repository | String | optional,
            revision | String | optional,
          },
      "definitions.GlusterfsVolumeSource" =
        {
            endpoints | String | optional,
            path | String | optional,
            readOnly | Bool | optional,
          },
      "definitions.HostPathVolumeSource" =
        { path | String | optional, type | String | optional, },
      "definitions.ISCSIVolumeSource" =
        {
            chapAuthDiscovery | Bool | optional,
            chapAuthSession | Bool | optional,
            fsType | String | optional,
            initiatorName | String | optional,
            iqn | String | optional,
            iscsiInterface | String | optional,
            lun | std.number.Integer | optional,
            portals | Array String | optional,
            readOnly | Bool | optional,
            secretRef
              | refs."definitions.LocalObjectReference"
              | { _ | Dyn }
              | optional,
            targetPortal | String | optional,
          },
      "definitions.IssueTrackerConfig" =
        {
            kind | String | optional,
            project | String | optional,
            url | String | optional,
          },
      "definitions.KeyToPath" =
        {
            key | String | optional,
            mode | std.number.Integer | optional,
            path | String | optional,
          },
      "definitions.LocalObjectReference" = { name | String | optional, },
      "definitions.Loop" =
        {
            steps
              | Array (
                std.contract.Sequence [ refs."definitions.Step", { _ | Dyn } ]
              )
              | optional,
            values | Array String | optional,
            variable | String | optional,
          },
      "definitions.NFSVolumeSource" =
        {
            path | String | optional,
            readOnly | Bool | optional,
            server | String | optional,
          },
      "definitions.ObjectFieldSelector" =
        { apiVersion | String | optional, fieldPath | String | optional, },
      "definitions.ParsedPipeline" =
        {
            agent | refs."definitions.Agent" | { _ | Dyn } | optional,
            dir | String | optional,
            env
              | Array (
                std.contract.Sequence [ refs."definitions.EnvVar", { _ | Dyn } ]
              )
              | optional,
            environment
              | Array (
                std.contract.Sequence [ refs."definitions.EnvVar", { _ | Dyn } ]
              )
              | optional,
            options | refs."definitions.RootOptions" | { _ | Dyn } | optional,
            post
              | Array (
                std.contract.Sequence [ refs."definitions.Post", { _ | Dyn } ]
              )
              | optional,
            stages
              | Array (
                std.contract.Sequence [ refs."definitions.Stage", { _ | Dyn } ]
              )
              | optional,
          },
      "definitions.PersistentVolumeClaimVolumeSource" =
        { claimName | String | optional, readOnly | Bool | optional, },
      "definitions.PhotonPersistentDiskVolumeSource" =
        { fsType | String | optional, pdID | String | optional, },
      "definitions.PipelineConfig" =
        {
            agent | refs."definitions.Agent" | { _ | Dyn } | optional,
            containerOptions
              | refs."definitions.Container"
              | { _ | Dyn }
              | optional,
            env
              | Array (
                std.contract.Sequence [ refs."definitions.EnvVar", { _ | Dyn } ]
              )
              | optional,
            environment | String | optional,
            extends
              | refs."definitions.PipelineExtends"
              | { _ | Dyn }
              | optional,
            pipelines | refs."definitions.Pipelines" | { _ | Dyn } | optional,
          },
      "definitions.PipelineExtends" =
        { file | String | optional, "import" | String | optional, },
      "definitions.PipelineLifecycle" =
        {
            preSteps
              | Array (
                std.contract.Sequence [ refs."definitions.Step", { _ | Dyn } ]
              )
              | optional,
            replace | Bool | optional,
            steps
              | Array (
                std.contract.Sequence [ refs."definitions.Step", { _ | Dyn } ]
              )
              | optional,
          },
      "definitions.PipelineLifecycles" =
        {
            build
              | refs."definitions.PipelineLifecycle"
              | { _ | Dyn }
              | optional,
            pipeline
              | refs."definitions.ParsedPipeline"
              | { _ | Dyn }
              | optional,
            postBuild
              | refs."definitions.PipelineLifecycle"
              | { _ | Dyn }
              | optional,
            preBuild
              | refs."definitions.PipelineLifecycle"
              | { _ | Dyn }
              | optional,
            promote
              | refs."definitions.PipelineLifecycle"
              | { _ | Dyn }
              | optional,
            setVersion
              | refs."definitions.PipelineLifecycle"
              | { _ | Dyn }
              | optional,
            setup
              | refs."definitions.PipelineLifecycle"
              | { _ | Dyn }
              | optional,
          },
      "definitions.PipelineOverride" =
        {
            agent | refs."definitions.Agent" | { _ | Dyn } | optional,
            containerOptions
              | refs."definitions.Container"
              | { _ | Dyn }
              | optional,
            name | String | optional,
            pipeline | String | optional,
            sidecars
              | Array (
                std.contract.Sequence
                  [ refs."definitions.Container", { _ | Dyn } ]
              )
              | optional,
            stage | String | optional,
            step | refs."definitions.Step" | { _ | Dyn } | optional,
            steps
              | Array (
                std.contract.Sequence [ refs."definitions.Step", { _ | Dyn } ]
              )
              | optional,
            type | String | optional,
            volumes
              | Array (
                std.contract.Sequence [ refs."definitions.Volume", { _ | Dyn } ]
              )
              | optional,
          },
      "definitions.Pipelines" =
        {
            "default"
              | refs."definitions.ParsedPipeline"
              | { _ | Dyn }
              | optional,
            feature
              | refs."definitions.PipelineLifecycles"
              | { _ | Dyn }
              | optional,
            overrides
              | Array (
                std.contract.Sequence
                  [ refs."definitions.PipelineOverride", { _ | Dyn } ]
              )
              | optional,
            post
              | refs."definitions.PipelineLifecycle"
              | { _ | Dyn }
              | optional,
            pullRequest
              | refs."definitions.PipelineLifecycles"
              | { _ | Dyn }
              | optional,
            release
              | refs."definitions.PipelineLifecycles"
              | { _ | Dyn }
              | optional,
          },
      "definitions.PortworxVolumeSource" =
        {
            fsType | String | optional,
            readOnly | Bool | optional,
            volumeID | String | optional,
          },
      "definitions.Post" =
        {
            actions
              | Array (
                std.contract.Sequence
                  [ refs."definitions.PostAction", { _ | Dyn } ]
              )
              | optional,
            condition | String | optional,
          },
      "definitions.PostAction" =
        {
            name | String | optional,
            options
              | js2n.record.Record
                {
                  additional = 'Some Dyn,
                  patterns = { ".*" = String, },
                  properties = {},
                  required = {},
                }
              | optional,
          },
      "definitions.PreviewEnvironmentConfig" =
        {
            disabled | Bool | optional,
            maximumInstances | std.number.Integer | optional,
          },
      "definitions.ProjectConfig" =
        {
            addons
              | Array (
                std.contract.Sequence
                  [ refs."definitions.AddonConfig", { _ | Dyn } ]
              )
              | optional,
            buildPack | String | optional,
            buildPackGitRef | String | optional,
            buildPackGitURL | String | optional,
            chat | refs."definitions.ChatConfig" | { _ | Dyn } | optional,
            dockerRegistryHost | String | optional,
            dockerRegistryOwner | String | optional,
            env
              | Array (
                std.contract.Sequence [ refs."definitions.EnvVar", { _ | Dyn } ]
              )
              | optional,
            issueTracker
              | refs."definitions.IssueTrackerConfig"
              | { _ | Dyn }
              | optional,
            noReleasePrepare | Bool | optional,
            pipelineConfig
              | refs."definitions.PipelineConfig"
              | { _ | Dyn }
              | optional,
            previewEnvironments
              | refs."definitions.PreviewEnvironmentConfig"
              | { _ | Dyn }
              | optional,
            wiki | refs."definitions.WikiConfig" | { _ | Dyn } | optional,
          },
      "definitions.ProjectedVolumeSource" =
        {
            defaultMode | std.number.Integer | optional,
            sources
              | Array (
                std.contract.Sequence
                  [ refs."definitions.VolumeProjection", { _ | Dyn } ]
              )
              | optional,
          },
      "definitions.Quantity" = {},
      "definitions.QuobyteVolumeSource" =
        {
            group | String | optional,
            readOnly | Bool | optional,
            registry | String | optional,
            tenant | String | optional,
            user | String | optional,
            volume | String | optional,
          },
      "definitions.RBDVolumeSource" =
        {
            fsType | String | optional,
            image | String | optional,
            keyring | String | optional,
            monitors | Array String | optional,
            pool | String | optional,
            readOnly | Bool | optional,
            secretRef
              | refs."definitions.LocalObjectReference"
              | { _ | Dyn }
              | optional,
            user | String | optional,
          },
      "definitions.ResourceFieldSelector" =
        {
            containerName | String | optional,
            divisor | refs."definitions.Quantity" | { _ | Dyn } | optional,
            resource | String | optional,
          },
      "definitions.RootOptions" =
        {
            containerOptions
              | refs."definitions.Container"
              | { _ | Dyn }
              | optional,
            distributeParallelAcrossNodes | Bool | optional,
            podLabels
              | js2n.record.Record
                {
                  additional = 'Some Dyn,
                  patterns = { ".*" = String, },
                  properties = {},
                  required = {},
                }
              | optional,
            retry | std.number.Integer | optional,
            sidecars
              | Array (
                std.contract.Sequence
                  [ refs."definitions.Container", { _ | Dyn } ]
              )
              | optional,
            timeout | refs."definitions.Timeout" | { _ | Dyn } | optional,
            tolerations
              | Array (
                std.contract.Sequence
                  [ refs."definitions.Toleration", { _ | Dyn } ]
              )
              | optional,
            volumes
              | Array (
                std.contract.Sequence [ refs."definitions.Volume", { _ | Dyn } ]
              )
              | optional,
          },
      "definitions.ScaleIOVolumeSource" =
        {
            fsType | String | optional,
            gateway | String | optional,
            protectionDomain | String | optional,
            readOnly | Bool | optional,
            secretRef
              | refs."definitions.LocalObjectReference"
              | { _ | Dyn }
              | optional,
            sslEnabled | Bool | optional,
            storageMode | String | optional,
            storagePool | String | optional,
            system | String | optional,
            volumeName | String | optional,
          },
      "definitions.SecretKeySelector" =
        {
            key | String | optional,
            name | String | optional,
            "optional" | Bool | optional,
          },
      "definitions.SecretProjection" =
        {
            items
              | Array (
                std.contract.Sequence
                  [ refs."definitions.KeyToPath", { _ | Dyn } ]
              )
              | optional,
            name | String | optional,
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
      "definitions.ServiceAccountTokenProjection" =
        {
            audience | String | optional,
            expirationSeconds | std.number.Integer | optional,
            path | String | optional,
          },
      "definitions.Stage" =
        {
            agent | refs."definitions.Agent" | { _ | Dyn } | optional,
            dir | String | optional,
            env
              | Array (
                std.contract.Sequence [ refs."definitions.EnvVar", { _ | Dyn } ]
              )
              | optional,
            environment
              | Array (
                std.contract.Sequence [ refs."definitions.EnvVar", { _ | Dyn } ]
              )
              | optional,
            name | String | optional,
            options | refs."definitions.StageOptions" | { _ | Dyn } | optional,
            parallel
              | Array (std.contract.Sequence [ js2n.Always, { _ | Dyn } ])
              | optional,
            post
              | Array (
                std.contract.Sequence [ refs."definitions.Post", { _ | Dyn } ]
              )
              | optional,
            stages
              | Array (std.contract.Sequence [ js2n.Always, { _ | Dyn } ])
              | optional,
            steps
              | Array (
                std.contract.Sequence [ refs."definitions.Step", { _ | Dyn } ]
              )
              | optional,
          },
      "definitions.StageOptions" =
        {
            containerOptions
              | refs."definitions.Container"
              | { _ | Dyn }
              | optional,
            distributeParallelAcrossNodes | Bool | optional,
            podLabels
              | js2n.record.Record
                {
                  additional = 'Some Dyn,
                  patterns = { ".*" = String, },
                  properties = {},
                  required = {},
                }
              | optional,
            retry | std.number.Integer | optional,
            sidecars
              | Array (
                std.contract.Sequence
                  [ refs."definitions.Container", { _ | Dyn } ]
              )
              | optional,
            stash | refs."definitions.Stash" | { _ | Dyn } | optional,
            timeout | refs."definitions.Timeout" | { _ | Dyn } | optional,
            tolerations
              | Array (
                std.contract.Sequence
                  [ refs."definitions.Toleration", { _ | Dyn } ]
              )
              | optional,
            unstash | refs."definitions.Unstash" | { _ | Dyn } | optional,
            volumes
              | Array (
                std.contract.Sequence [ refs."definitions.Volume", { _ | Dyn } ]
              )
              | optional,
            workspace | String | optional,
          },
      "definitions.Stash" =
        { files | String | optional, name | String | optional, },
      "definitions.Step" =
        {
            agent | refs."definitions.Agent" | { _ | Dyn } | optional,
            args | Array String | optional,
            command | String | optional,
            comment | String | optional,
            container | String | optional,
            dir | String | optional,
            env
              | Array (
                std.contract.Sequence [ refs."definitions.EnvVar", { _ | Dyn } ]
              )
              | optional,
            groovy | String | optional,
            image | String | optional,
            loop | refs."definitions.Loop" | { _ | Dyn } | optional,
            name | String | optional,
            options
              | js2n.record.Record
                {
                  additional = 'Some Dyn,
                  patterns = { ".*" = String, },
                  properties = {},
                  required = {},
                }
              | optional,
            sh | String | optional,
            step | String | optional,
            steps
              | Array (std.contract.Sequence [ js2n.Always, { _ | Dyn } ])
              | optional,
            when | String | optional,
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
      "definitions.Timeout" =
        { time | std.number.Integer | optional, unit | String | optional, },
      "definitions.Toleration" =
        {
            effect | String | optional,
            key | String | optional,
            operator | String | optional,
            tolerationSeconds | std.number.Integer | optional,
            value | String | optional,
          },
      "definitions.Unstash" =
        { dir | String | optional, name | String | optional, },
      "definitions.Volume" =
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
            name | String | optional,
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
      "definitions.VsphereVirtualDiskVolumeSource" =
        {
            fsType | String | optional,
            storagePolicyID | String | optional,
            storagePolicyName | String | optional,
            volumePath | String | optional,
          },
      "definitions.WikiConfig" =
        {
            kind | String | optional,
            space | String | optional,
            url | String | optional,
          },
    }
    in
  refs."definitions.ProjectConfig"