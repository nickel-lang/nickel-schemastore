# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.environment" =
        {
            kubeContext | String | optional,
            missingFileHandler
              | refs."definitions.missingFileHandler"
              | String
              | optional,
            secrets | Array String | optional,
            values
              | Array (
                std.contract.any_of
                  [
                    String,
                    std.contract.Sequence
                      [ refs."definitions.map", { _ | Dyn } ]
                  ]
              )
              | optional,
            ..
          },
      "definitions.helmDefaults" =
        {
            args | Array String | optional,
            cascade
              | std.enum.TagOrString
              | [| 'orphan, 'foreground, 'background |]
              | doc "Cascade `--cascade` to helmv3 delete, available values: background, foreground, or orphan."
              | optional,
            cleanupOnFail
              | Bool
              | doc "When true, cleans up any new resources created during a failed release."
              | optional,
            createNamespace
              | Bool
              | doc "When using helm 3.2+, automatically create release namespaces if they do not exist."
              | optional,
            devel
              | Bool
              | doc "If used with charts museum allows to pull unstable charts for deployment, for example: if 1.2.3 and 1.2.4-dev versions exist and set to true, 1.2.4-dev will be pulled (default false)"
              | optional,
            "force"
              | Bool
              | doc "Forces resource update through delete/recreate if needed."
              | optional,
            historyMax
              | Number
              | doc "Limit the maximum number of revisions saved per release. Use 0 for no limit."
              | optional,
            insecureSkipTLSVerify
              | Bool
              | doc "Is true if the TLS verification should be skipped when fetching remote chart."
              | optional,
            kubeContext
              | String
              | doc "Dedicated default key for kube-context (--kube-context)."
              | optional,
            postRenderer
              | String
              | doc "Propagate `--post-renderer` to helmv3 template and helm install."
              | optional,
            recreatePods
              | Bool
              | doc "Performs pods restart for the resource if applicable."
              | optional,
            reuseValues
              | Bool
              | doc "If set to true, reuses the last release's values and merges them with ones provided in helmfile."
              | optional,
            skipDeps
              | Bool
              | doc "When set to `true`, skips running `helm dep up` and `helm dep build` on this release's chart."
              | optional,
            timeout
              | Number
              | doc "Time in seconds to wait for any individual Kubernetes operation (like Jobs for hooks, and waits on pod/pvc/svc/deployment readiness)"
              | optional,
            verify
              | Bool
              | doc "Verify the chart before upgrading (only works with packaged charts not directories)."
              | optional,
            wait | Bool | doc "Wait for k8s resources via --wait." | optional,
            waitForJobs
              | Bool
              | doc "If true and --wait enabled, will wait until all Jobs have been completed before marking the release as successful. It will wait for as long as --timeout"
              | optional,
            ..
          },
      "definitions.helmfile" =
        std.contract.any_of
            [
              String,
              {
                path | String,
                selectors | Array String | optional,
                values
                  | Array (
                    std.contract.any_of
                      [ String, { key1 | String | optional, .. } ]
                  )
                  | optional,
                ..
              }
            ],
      "definitions.hook" =
        {
            args | Array String | optional,
            command | String | optional,
            events
              | Array (
                std.contract.Sequence
                  [
                    std.enum.TagOrString,
                    [|
                      'cleanup,
                      'postsync,
                      'postuninstall,
                      'preuninstall,
                      'presync,
                      'preapply,
                      'prepare
                    |]
                  ]
              )
              | optional,
            showlogs | Bool | optional,
            ..
          },
      "definitions.map" =
        js2n.record.Record
            {
              additional = 'Some Dyn,
              patterns =
                {
                    "[a-zA-Z\\d_-]+" =
                      std.contract.any_of
                          [
                            { _ | Dyn },
                            Bool,
                            String,
                            Array Dyn,
                            js2n.Null,
                            std.number.Integer
                          ],
                  },
              properties = {},
              required = {},
            },
      "definitions.missingFileHandler" =
        std.contract.Sequence
            [ std.enum.TagOrString, [| 'Debug, 'Info, 'Warn, 'Error |] ],
      "definitions.release" =
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
                      js2n.record.Required [ "chart" ],
                      Array Dyn
                    ],
                  std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      js2n.record.Required [ "inherit" ],
                      Array Dyn
                    ]
                ],
              {
                atomic
                  | Bool
                  | doc "Restores previous state in case of failed release."
                  | optional,
                cascade
                  | std.enum.TagOrString
                  | [| 'orphan, 'foreground, 'background |]
                  | doc "Cascade `--cascade` to helmv3 delete, available values: background, foreground, or orphan"
                  | optional,
                chart
                  | String
                  | doc "The chart name to be installed. The chart name can be either: 1) a chart reference: https://helm.sh/docs/topics/charts/#chart-references, 2) a path to a directory containing a chart, 3) a path to a packaged chart, or 4) a URL."
                  | optional,
                cleanupOnFail
                  | Bool
                  | doc "When true, cleans up any new resources created during a failed release."
                  | optional,
                condition
                  | String
                  | doc "Wen set, helmfile will only attempt to install the release if the condition is true"
                  | optional,
                createNamespace
                  | Bool
                  | doc "When using helm 3.2+, automatically create release namespaces if they do not exist."
                  | optional,
                devel
                  | Bool
                  | doc "If used with charts museum allows to pull unstable charts for deployment, for example: if 1.2.3 and 1.2.4-dev versions exist and set to true, 1.2.4-dev will be pulled."
                  | optional,
                disableOpenAPIValidation
                  | Bool
                  | doc "Passes --disable-openapi-validation to helm 3 diff plugin, this requires diff plugin >= 3.1.2"
                  | optional,
                disableValidation
                  | Bool
                  | doc "Disables validation of the rendered templates before releasing."
                  | optional,
                disableValidationOnInstall
                  | Bool
                  | doc "Passes --disable-validation to helm 3 diff plugin, this requires diff plugin >= 3.1.2"
                  | optional,
                "force"
                  | Bool
                  | doc "Forces resource update through delete/recreate if needed."
                  | optional,
                historyMax
                  | Number
                  | doc "Limit the maximum number of revisions saved per release. Use 0 for no limit."
                  | optional,
                hooks
                  | Array (
                    std.contract.Sequence
                      [ refs."definitions.hook", { _ | Dyn } ]
                  )
                  | doc "Hooks allow to trigger actions at certain points in helm's lifecycle."
                  | optional,
                inherit
                  | Array
                    { except | Array String | optional, template | String, .. }
                  | doc "Inherit from one or more release templates"
                  | optional,
                insecureSkipTLSVerify
                  | Bool
                  | doc "Is true if the TLS verification should be skipped when fetching remote chart"
                  | optional,
                installed
                  | std.contract.any_of [ Bool, { _ | Dyn }, String ]
                  | doc "Set `false` to uninstall this release on sync."
                  | optional,
                kubeContext
                  | String
                  | doc m%"
                    --kube-context to be passed to helm commands.
                    Defaults tp an empty string, which means the standard kubeconfig, either ~/kubeconfig or the file pointed by $KUBECONFIG environment variable)
                  "%
                  | optional,
                labels | refs."definitions.map" | { _ | Dyn } | optional,
                missingFileHandler
                  | refs."definitions.missingFileHandler"
                  | String
                  | optional,
                name | String | doc "The name of the release.",
                namespace
                  | String
                  | doc "The namespace to install the release into."
                  | optional,
                postRenderer
                  | String
                  | doc "Propagate `--post-renderer` to helmv3 template and helm install."
                  | optional,
                recreatePods
                  | Bool
                  | doc "Performs pods restart for the resource if applicable"
                  | optional,
                secrets
                  | Array String
                  | doc "Will attempt to decrypt it using helm-secrets plugin"
                  | optional,
                set
                  | Array (
                    std.contract.any_of
                      [
                        js2n.record.Record
                          {
                            additional = 'Some Dyn,
                            patterns = {},
                            properties = { file = String, name = String, },
                            required = {},
                          },
                        js2n.record.Record
                          {
                            additional = 'Some Dyn,
                            patterns = {},
                            properties =
                              {
                                  name = String,
                                  values = js2n.array.ArrayOf Number,
                                },
                            required = {},
                          },
                        js2n.record.Record
                          {
                            additional = 'Some Dyn,
                            patterns = {},
                            properties = { name = String, value = String, },
                            required = {},
                          }
                      ]
                  )
                  | optional,
                skipDeps
                  | Bool
                  | doc "When set to `true`, skips running `helm dep up` and `helm dep build` on this release's chart."
                  | optional,
                timeout
                  | Number
                  | doc "Time in seconds to wait for any individual Kubernetes operation (like Jobs for hooks, and waits on pod/pvc/svc/deployment readiness)"
                  | optional,
                values
                  | Array (
                    std.contract.any_of
                      [
                        String,
                        std.contract.Sequence
                          [ refs."definitions.map", { _ | Dyn } ]
                      ]
                  )
                  | optional,
                verify | Bool | optional,
                version
                  | std.contract.any_of [ String, Number, std.number.Integer ]
                  | optional,
                wait
                  | Bool
                  | doc "Wait for k8s resources via --wait."
                  | optional,
                waitForJobs
                  | Bool
                  | doc "If set and --wait enabled, will wait until all Jobs have been completed before marking the release as successful. It will wait for as long as --timeout."
                  | optional,
                ..
              }
            ],
      "definitions.repository" =
        {
            caFile | String | optional,
            certFile | String | optional,
            keyFile | String | optional,
            name | String,
            oci | Bool | optional,
            passCredentials | Bool | optional,
            password | String | optional,
            url | String | optional,
            username | String | optional,
            ..
          },
    }
    in
  std.contract.any_of
      [
        js2n.Null,
        Bool,
        Number,
        String,
        {
          apiVersions
            | Array String
            | doc "Configure a fixed list of API versions to pass to 'helm template' via the `--api-versions` flag."
            | optional,
          bases | Array String | optional,
          commonLabels
            | refs."definitions.map"
            | doc "these labels will be applied to all releases in a Helmfile. Useful in templating if you have a helmfile per environment or customer and don't want to copy the same label to each release"
            | optional,
          environments
            | js2n.record.Record
              {
                additional = 'Some Dyn,
                patterns =
                  { "[a-zA-Z\\d_-]+" = refs."definitions.environment", },
                properties = {},
                required = {},
              }
            | doc "The list of environments managed by helmfile."
            | optional,
          helmBinary
            | String
            | doc "Path to alternative helm binary (--helm-binary)"
            | optional,
          helmDefaults | refs."definitions.helmDefaults" | optional,
          helmfiles | Array refs."definitions.helmfile" | optional,
          hooks | Array refs."definitions.hook" | optional,
          missingFileHandler | refs."definitions.missingFileHandler" | optional,
          releases
            | Array (
              std.contract.Sequence [ refs."definitions.release", { _ | Dyn } ]
            )
            | doc "Helmfile runs various helm commands to converge the current state in the live cluster to the desired state defined here."
            | optional,
          repositories | Array refs."definitions.repository" | optional,
          ..
        },
        Array Dyn
      ]