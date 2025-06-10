# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  js2n.Nullable
      {
        apiVersion
          | String
          | doc "The API version where the KSail Cluster object is defined. [default: ksail.io/v1alpha1]"
          | optional,
        kind
          | String
          | doc "The KSail Cluster object kind. [default: Cluster]"
          | optional,
        metadata
          | {
            name
              | String
              | doc "The name of the KSail object. [default: ksail-default]",
            ..
          }
          | doc "The metadata of the KSail Cluster object."
          | optional,
        spec
          | {
            connection
              | {
                context
                  | String
                  | doc "The kube context. [default: kind-ksail-default]"
                  | optional,
                kubeconfig
                  | String
                  | doc "The path to the kubeconfig file. [default: ~/.kube/config]"
                  | optional,
                timeout
                  | String
                  | doc "The timeout for operations (10s, 5m, 1h). [default: 5m]"
                  | optional,
                ..
              }
              | doc "The options for connecting to the KSail cluster."
              | optional,
            deploymentTool
              | {
                flux
                  | {
                    source
                      | {
                        url
                          | String
                          | doc "The URL of the repository. [default: oci://ksail-registry:5000/ksail-registry]"
                          | optional,
                        ..
                      }
                      | doc "The source for reconciling GitOps resources."
                      | optional,
                    ..
                  }
                  | doc "The options for the Flux deployment tool."
                  | optional,
                ..
              }
              | doc "The options for the deployment tool."
              | optional,
            distribution
              | {
                showAllClustersInListings
                  | Bool
                  | doc "Show clusters from all supported distributions. [default: false]"
                  | optional,
                ..
              }
              | doc "The options for the distribution."
              | optional,
            generator
              | {
                overwrite
                  | Bool
                  | doc "Overwrite existing files. [default: false]"
                  | optional,
                ..
              }
              | doc "The options for the generator."
              | optional,
            localRegistry
              | {
                hostPort
                  | std.number.Integer
                  | doc "The host port of the registry (if applicable). [default: 5555]"
                  | optional,
                name
                  | String
                  | doc "The name of the registry. [default: ksail-registry]"
                  | optional,
                provider
                  | std.enum.TagOrString
                  | [| 'Podman, 'Docker |]
                  | doc "The registry provider. [default: Docker]"
                  | optional,
                ..
              }
              | doc "The local registry for storing deployment artifacts."
              | optional,
            mirrorRegistries
              | Array (
                js2n.Nullable
                  {
                    hostPort
                      | std.number.Integer
                      | doc "The host port of the registry (if applicable). [default: 5555]"
                      | optional,
                    name
                      | String
                      | doc "The name of the registry. [default: ksail-registry]"
                      | optional,
                    provider
                      | std.enum.TagOrString
                      | [| 'Podman, 'Docker |]
                      | doc "The registry provider. [default: Docker]"
                      | optional,
                    proxy
                      | {
                        url
                          | String
                          | doc "The URL of the upstream registry to proxy and cache images from. [default: https://registry-1.docker.io]"
                          | optional,
                        ..
                      }
                      | doc "A proxy for the registry to use to proxy and cache images."
                      | optional,
                    ..
                  }
              )
              | doc "The mirror registries to create for the KSail cluster. [default: registry.k8s.io-proxy, docker.io-proxy, ghcr.io-proxy, gcr.io-proxy, mcr.microsoft.com-proxy, quay.io-proxy]"
              | optional,
            project
              | {
                cni
                  | std.enum.TagOrString
                  | [| 'None, 'Cilium, 'Default |]
                  | doc "The CNI to use. [default: Default]"
                  | optional,
                configPath
                  | String
                  | doc "The path to the ksail configuration file. [default: ksail.yaml]"
                  | optional,
                containerEngine
                  | std.enum.TagOrString
                  | [| 'Podman, 'Docker |]
                  | doc "The provider to use for running the KSail cluster. [default: Docker]"
                  | optional,
                csi
                  | std.enum.TagOrString
                  | [| 'None, 'LocalPathProvisioner, 'Default |]
                  | doc "The CSI to use. [default: Default]"
                  | optional,
                deploymentTool
                  | std.enum.TagOrString
                  | [| 'Flux, 'Kubectl |]
                  | doc "The Deployment tool to use. [default: Kubectl]"
                  | optional,
                distribution
                  | std.enum.TagOrString
                  | [| 'K3d, 'Kind |]
                  | doc "The Kubernetes distribution to use. [default: Kind]"
                  | optional,
                distributionConfigPath
                  | String
                  | doc "The path to the distribution configuration file. [default: kind.yaml]"
                  | optional,
                editor
                  | std.enum.TagOrString
                  | [| 'Vim, 'Nano |]
                  | doc "The editor to use for viewing files while debugging. [default: Nano]"
                  | optional,
                gatewayController
                  | std.enum.TagOrString
                  | [| 'None, 'Default |]
                  | doc "The Gateway Controller to use. [default: Default]"
                  | optional,
                ingressController
                  | std.enum.TagOrString
                  | [| 'None, 'Traefik, 'Default |]
                  | doc "The Ingress Controller to use. [default: Default]"
                  | optional,
                kustomizationPath
                  | String
                  | doc "The path to the root kustomization directory. [default: k8s]"
                  | optional,
                metricsServer
                  | Bool
                  | doc "Whether to install Metrics Server. [default: true]"
                  | optional,
                mirrorRegistries
                  | Bool
                  | doc "Whether to set up mirror registries for the project. [default: true]"
                  | optional,
                secretManager
                  | std.enum.TagOrString
                  | [| 'SOPS, 'None |]
                  | doc "Whether to use a secret manager. [default: None]"
                  | optional,
                ..
              }
              | doc "The options for the KSail project."
              | optional,
            publication
              | {
                publishOnUpdate
                  | Bool
                  | doc "Publish manifests before applying changes to an existing cluster. [default: true]"
                  | optional,
                ..
              }
              | doc "Options for publication of manifests."
              | optional,
            secretManager
              | {
                sops
                  | {
                    inPlace
                      | Bool
                      | doc "Use in-place decryption/encryption. [default: false]"
                      | optional,
                    publicKey
                      | String
                      | doc "Public key used for encryption. [default: null]"
                      | optional,
                    showAllKeysInListings
                      | Bool
                      | doc "Show all keys in the listed keys. [default: false]"
                      | optional,
                    showPrivateKeysInListings
                      | Bool
                      | doc "Show private keys in the listed keys. [default: false]"
                      | optional,
                    ..
                  }
                  | doc "The options for the SOPS secret manager."
                  | optional,
                ..
              }
              | doc "The options for the Secret Manager."
              | optional,
            validation
              | {
                reconcileOnUp
                  | Bool
                  | doc "Wait for reconciliation to succeed on a new cluster. [default: true]"
                  | optional,
                reconcileOnUpdate
                  | Bool
                  | doc "Wait for reconciliation to succeed on an existing cluster. [default: true]"
                  | optional,
                validateOnUp
                  | Bool
                  | doc "Validate the project files and configuration before creating a new cluster. [default: true]"
                  | optional,
                validateOnUpdate
                  | Bool
                  | doc "Validate the project files and configuration before applying changes to an existing cluster. [default: true]"
                  | optional,
                verbose
                  | Bool
                  | doc "Verbose output for validation or status checks. [default: false]"
                  | optional,
                ..
              }
              | doc "Options for validating the KSail cluster."
              | optional,
            ..
          }
          | doc "The spec of the KSail Cluster object."
          | optional,
        ..
      }