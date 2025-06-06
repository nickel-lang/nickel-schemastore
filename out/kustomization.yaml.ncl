# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.ConfigMapArgs" =
        {
            KVSources
              | Array (
                std.contract.Sequence
                  [ refs."definitions.KVSource", { _ | Dyn } ]
              )
              | optional,
            behavior
              | std.enum.TagOrString
              | [| '"merge", 'replace, 'create |]
              | optional,
            env | String | doc "Deprecated.  Use envs instead." | optional,
            envs
              | Array String
              | doc "A list of file paths. The contents of each file should be one key=value pair per line"
              | optional,
            files
              | Array String
              | doc "A list of file sources to use in creating a list of key, value pairs"
              | optional,
            literals
              | Array String
              | doc "A list of literal pair sources. Each literal source should be a key and literal value, e.g. `key=value`"
              | optional,
            name
              | String
              | doc "Name - actually the partial name - of the generated resource"
              | optional,
            namespace
              | String
              | doc "Namespace for the configmap, optional"
              | optional,
            options
              | refs."definitions.GeneratorOptions"
              | { _ | Dyn }
              | optional,
          },
      "definitions.FieldSelector" = { fieldpath | String | optional, },
      "definitions.FieldSpec" =
        {
            create | Bool | optional,
            group | String | optional,
            kind | String | optional,
            path | String | optional,
            version | String | optional,
            ..
          },
      "definitions.GeneratorOptions" =
        {
            annotations
              | js2n.record.Record
                {
                  additional = 'Some Dyn,
                  patterns = { ".*" = String, },
                  properties = {},
                  required = {},
                }
              | doc "Annotations to add to all generated resources"
              | optional,
            disableNameSuffixHash
              | Bool
              | doc "DisableNameSuffixHash if true disables the default behavior of adding a suffix to the names of generated resources that is a hash of the resource contents"
              | optional,
            immutable
              | Bool
              | doc "Immutable if true add to all generated resources"
              | optional,
            labels
              | js2n.record.Record
                {
                  additional = 'Some Dyn,
                  patterns = { ".*" = String, },
                  properties = {},
                  required = {},
                }
              | doc "Labels to add to all generated resources"
              | optional,
          },
      "definitions.HelmChart" =
        {
            additionalValuesFiles | Array String | optional,
            apiVersions | Array String | optional,
            includeCRDs | Bool | optional,
            kubeVersion | String | optional,
            name | String | optional,
            nameTemplate | String | optional,
            namespace | String | optional,
            releaseName | String | optional,
            repo | String | optional,
            skipHooks | Bool | optional,
            skipTests | Bool | optional,
            valuesFile | String | optional,
            valuesInline
              | js2n.record.Record
                {
                  additional = 'Some Dyn,
                  patterns =
                    {
                        ".*" =
                          std.contract.any_of
                              [
                                js2n.Null,
                                Bool,
                                Number,
                                String,
                                {  .. },
                                Array Dyn
                              ],
                      },
                  properties = {},
                  required = {},
                }
              | optional,
            valuesMerge
              | std.enum.TagOrString
              | [| 'replace, 'override, '"merge" |]
              | optional,
            version | String | optional,
          },
      "definitions.Image" =
        {
            digest | String | optional,
            name | String | optional,
            newName | String | optional,
            newTag | String | optional,
            tagSuffix | String | doc "UNDOCUMENTED." | optional,
          },
      "definitions.Inventory" =
        {
            configMap | refs."definitions.NameArgs" | { _ | Dyn } | optional,
            type | String | optional,
          },
      "definitions.KVSource" =
        {
            args | Array String | optional,
            name | String | optional,
            pluginType | String | optional,
          },
      "definitions.Kustomization" =
        {
            apiVersion | String | optional,
            bases
              | Array String
              | doc "DEPRECATED. Bases are relative paths or git repository URLs specifying a directory containing a kustomization.yaml file."
              | optional,
            buildMetadata
              | Array String
              | doc "BuildMetadata is a list of strings used to toggle different build options"
              | optional,
            commonAnnotations
              | js2n.record.Record
                {
                  additional = 'Some Dyn,
                  patterns = { ".*" = String, },
                  properties = {},
                  required = {},
                }
              | doc "CommonAnnotations to add to all objects"
              | optional,
            commonLabels
              | js2n.record.Record
                {
                  additional = 'Some Dyn,
                  patterns = { ".*" = String, },
                  properties = {},
                  required = {},
                }
              | doc " CommonLabels to add to all objects and selectors"
              | optional,
            components
              | Array String
              | doc "Components are relative paths or git repository URLs specifying a directory containing a kustomization.yaml file of Kind Component."
              | optional,
            configMapGenerator
              | Array (
                std.contract.Sequence
                  [ refs."definitions.ConfigMapArgs", { _ | Dyn } ]
              )
              | doc "ConfigMapGenerator is a list of configmaps to generate from local data (one configMap per list item)"
              | optional,
            configurations
              | Array String
              | doc "Configurations is a list of transformer configuration files"
              | optional,
            crds
              | Array String
              | doc "Crds specifies relative paths to Custom Resource Definition files. This allows custom resources to be recognized as operands, making it possible to add them to the Resources list. CRDs themselves are not modified."
              | optional,
            generatorOptions
              | refs."definitions.GeneratorOptions"
              | { _ | Dyn }
              | optional,
            generators
              | Array String
              | doc "Generators is a list of files containing custom generators"
              | optional,
            helmCharts
              | Array (
                std.contract.Sequence
                  [ refs."definitions.HelmChart", { _ | Dyn } ]
              )
              | doc "HelmCharts is a list of helm chart configuration instances"
              | optional,
            helmGlobals
              | {
                chartHome
                  | String
                  | doc "ChartHome is a file path, relative to the kustomization root, to a directory containing a subdirectory for each chart to be included in the kustomization"
                  | optional,
                configHome
                  | String
                  | doc "ConfigHome defines a value that kustomize should pass to helm via the HELM_CONFIG_HOME environment variable"
                  | optional,
              }
              | doc "HelmGlobals contains helm configuration that isn't chart specific"
              | optional,
            images
              | Array (
                std.contract.Sequence [ refs."definitions.Image", { _ | Dyn } ]
              )
              | doc "Images is a list of (image name, new name, new tag or digest) for changing image names, tags or digests. This can also be achieved with a patch, but this operator is simpler to specify."
              | optional,
            inventory | refs."definitions.Inventory" | { _ | Dyn } | optional,
            kind | String | optional,
            labels
              | Array (
                std.contract.Sequence [ refs."definitions.Labels", { _ | Dyn } ]
              )
              | doc "Labels to add to all objects but not selectors"
              | optional,
            metadata
              | refs."definitions.Metadata"
              | { _ | Dyn }
              | doc "Contains metadata about a Resource"
              | optional,
            namePrefix
              | String
              | doc "NamePrefix will prefix the names of all resources mentioned in the kustomization file including generated configmaps and secrets"
              | optional,
            nameSuffix
              | String
              | doc "NameSuffix will suffix the names of all resources mentioned in the kustomization file including generated configmaps and secrets"
              | optional,
            namespace
              | String
              | doc "Namespace to add to all objects"
              | optional,
            openapi
              | js2n.record.Record
                {
                  additional = 'Some Dyn,
                  patterns = { ".*" = String, },
                  properties = {},
                  required = {},
                }
              | doc "OpenAPI contains information about what kubernetes schema to use"
              | optional,
            patches
              | Array (
                js2n.OneOf
                  [
                    refs."definitions.PatchesPatchPath",
                    refs."definitions.PatchesInlinePatch"
                  ]
              )
              | doc "Apply a patch to multiple resources"
              | optional,
            patchesJson6902
              | Array refs."definitions.PatchJson6902"
              | doc "JSONPatches is a list of JSONPatch for applying JSON patch. See http://jsonpatch.com"
              | optional,
            patchesStrategicMerge
              | Array String
              | doc " PatchesStrategicMerge specifies the relative path to a file containing a strategic merge patch. URLs and globs are not supported"
              | optional,
            replacements
              | Array (
                js2n.OneOf
                  [
                    std.contract.Sequence
                      [ refs."definitions.ReplacementsPath", { _ | Dyn } ],
                    std.contract.Sequence
                      [ refs."definitions.ReplacementsInline", { _ | Dyn } ]
                  ]
              )
              | doc "Substitute field(s) in N target(s) with a field from a source"
              | optional,
            replicas
              | Array (
                std.contract.Sequence
                  [ refs."definitions.Replicas", { _ | Dyn } ]
              )
              | doc "Replicas is a list of (resource name, count) for changing number of replicas for a resources. It will match any group and kind that has a matching name and that is one of: Deployment, ReplicationController, Replicaset, Statefulset."
              | optional,
            resources
              | Array String
              | doc "Resources specifies relative paths to files holding YAML representations of kubernetes API objects. URLs and globs not supported."
              | optional,
            secretGenerator
              | Array (
                std.contract.Sequence
                  [ refs."definitions.SecretArgs", { _ | Dyn } ]
              )
              | doc "SecretGenerator is a list of secrets to generate from local data (one secret per list item)"
              | optional,
            sortOptions
              | js2n.OneOf
                [
                  js2n.record.Record
                    {
                      additional = 'None,
                      patterns = {},
                      properties =
                        {
                            legacySortOptions =
                              js2n.record.Record
                                  {
                                    additional = 'None,
                                    patterns = {},
                                    properties =
                                      {
                                          orderFirst = Array Dyn,
                                          orderLast = Array Dyn,
                                        },
                                    required = {},
                                  },
                            order =
                              std.contract.Sequence
                                  [ std.enum.TagOrString, [| 'legacy |] ],
                          },
                      required = {},
                    },
                  js2n.record.Record
                    {
                      additional = 'None,
                      patterns = {},
                      properties =
                        {
                            order =
                              std.contract.Sequence
                                  [ std.enum.TagOrString, [| 'fifo |] ],
                          },
                      required = {},
                    }
                ]
              | doc "sortOptions is used to sort the resources kustomize outputs"
              | optional,
            transformers
              | Array String
              | doc "Transformers is a list of files containing transformers"
              | optional,
            validators
              | Array String
              | doc "Validators is a list of files containing validators"
              | optional,
            vars
              | Array (
                std.contract.Sequence [ refs."definitions.Var", { _ | Dyn } ]
              )
              | doc "Allows things modified by kustomize to be injected into a container specification. A var is a name (e.g. FOO) associated with a field in a specific resource instance.  The field must contain a value of type string, and defaults to the name field of the instance"
              | optional,
          },
      "definitions.Labels" =
        {
            fields
              | Array (
                std.contract.Sequence
                  [ refs."definitions.FieldSpec", { _ | Dyn } ]
              )
              | doc "FieldSpec completely specifies a kustomizable field in a k8s API object. It helps define the operands of transformations"
              | optional,
            includeSelectors
              | Bool
              | doc "IncludeSelectors indicates should transformer include the fieldSpecs for selectors"
              | optional,
            includeTemplates
              | Bool
              | doc "IncludeTemplates indicates should transformer include the template labels"
              | optional,
            pairs
              | std.contract.any_of
                [
                  js2n.Null,
                  Bool,
                  Number,
                  String,
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = { ".*" = String, },
                      properties = {},
                      required = {},
                    },
                  Array Dyn
                ]
              | doc "Pairs contains the key-value pairs for labels to add"
              | optional,
          },
      "definitions.Metadata" =
        {
            annotations
              | js2n.record.Record
                {
                  additional = 'Some Dyn,
                  patterns = { ".*" = String, },
                  properties = {},
                  required = {},
                }
              | optional,
            labels
              | js2n.record.Record
                {
                  additional = 'Some Dyn,
                  patterns = { ".*" = String, },
                  properties = {},
                  required = {},
                }
              | optional,
            name | String | optional,
            namespace | String | optional,
          },
      "definitions.NameArgs" =
        { name | String | optional, namespace | String | optional, },
      "definitions.PatchJson6902" =
        js2n.OneOf
            [
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        path = String,
                        target =
                          std.contract.Sequence
                              [ refs."definitions.PatchTarget", { _ | Dyn } ],
                      },
                  required = { path = true, target = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        patch = String,
                        target =
                          std.contract.Sequence
                              [ refs."definitions.PatchTarget", { _ | Dyn } ],
                      },
                  required = { patch = true, target = true, },
                },
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        from = String,
                        op =
                          std.contract.Sequence
                              [
                                std.enum.TagOrString,
                                [|
                                  'test,
                                  'copy,
                                  'move,
                                  'replace,
                                  'remove,
                                  'add
                                |]
                              ],
                        path = String,
                        value =
                          std.contract.any_of
                              [ String, js2n.array.ArrayOf String ],
                      },
                  required = { op = true, path = true, },
                }
            ],
      "definitions.PatchTarget" =
        {
            group | String | optional,
            kind | String,
            name | String,
            namespace | String | optional,
            version | String,
          },
      "definitions.PatchTargetOptional" =
        {
            annotationSelector | String | optional,
            group | String | optional,
            kind | String | optional,
            labelSelector | String | optional,
            name | String | optional,
            namespace | String | optional,
            version | String | optional,
          },
      "definitions.PatchesInlinePatch" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                options
                  | refs."definitions.PatchesOptions"
                  | { _ | Dyn }
                  | optional,
                patch | String,
                target
                  | refs."definitions.PatchTargetOptional"
                  | { _ | Dyn }
                  | doc "Refers to a Kubernetes object that the patch will be applied to. It must refer to a Kubernetes resource under the purview of this kustomization"
                  | optional,
              },
              Array Dyn
            ],
      "definitions.PatchesOptions" =
        {
            allowKindChange | Bool | optional,
            allowNameChange | Bool | optional,
          },
      "definitions.PatchesPatchPath" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                options
                  | refs."definitions.PatchesOptions"
                  | { _ | Dyn }
                  | optional,
                path | String,
                target
                  | refs."definitions.PatchTargetOptional"
                  | { _ | Dyn }
                  | doc "Refers to a Kubernetes object that the patch will be applied to. It must refer to a Kubernetes resource under the purview of this kustomization"
                  | optional,
              },
              Array Dyn
            ],
      "definitions.ReplacementsInline" =
        {
            source
              | {
                fieldPath
                  | String
                  | doc "The structured path to the source value"
                  | optional,
                group | String | doc "The group of the referent" | optional,
                kind | String | doc "The kind of the referent" | optional,
                name | String | doc "The name of the referent" | optional,
                namespace
                  | String
                  | doc "The namespace of the referent"
                  | optional,
                options
                  | {
                    create | Bool | optional,
                    delimiter | String | optional,
                    index | Number | optional,
                    ..
                  }
                  | optional,
                version | String | doc "The version of the referent" | optional,
                ..
              }
              | doc "The source of the value",
            targets
              | Array
                {
                  fieldPaths
                    | Array String
                    | doc "The structured path(s) to the target nodes"
                    | optional,
                  options
                    | {
                      create | Bool | optional,
                      delimiter | String | optional,
                      index | Number | optional,
                      ..
                    }
                    | optional,
                  reject
                    | Array
                      {
                        group
                          | String
                          | doc "The group of the referent"
                          | optional,
                        kind
                          | String
                          | doc "The kind of the referent"
                          | optional,
                        name
                          | String
                          | doc "The name of the referent"
                          | optional,
                        namespace
                          | String
                          | doc "The namespace of the referent"
                          | optional,
                        version
                          | String
                          | doc "The version of the referent"
                          | optional,
                        ..
                      }
                    | doc "Exclude objects that match this"
                    | optional,
                  select
                    | {
                      group
                        | String
                        | doc "The group of the referent"
                        | optional,
                      kind | String | doc "The kind of the referent" | optional,
                      name | String | doc "The name of the referent" | optional,
                      namespace
                        | String
                        | doc "The namespace of the referent"
                        | optional,
                      version
                        | String
                        | doc "The version of the referent"
                        | optional,
                      ..
                    }
                    | doc "Include objects that match this",
                  ..
                }
              | doc "The N fields to write the value to",
          },
      "definitions.ReplacementsPath" = { path | String, },
      "definitions.Replicas" =
        { count | Number | optional, name | String | optional, },
      "definitions.SecretArgs" =
        {
            KVSources
              | Array (
                std.contract.Sequence
                  [ refs."definitions.KVSource", { _ | Dyn } ]
              )
              | optional,
            behavior
              | std.enum.TagOrString
              | [| '"merge", 'replace, 'create |]
              | optional,
            env | String | optional,
            envs | Array String | optional,
            files | Array String | optional,
            literals | Array String | optional,
            name
              | String
              | doc "Name - actually the partial name - of the generated resource"
              | optional,
            namespace
              | String
              | doc "Namespace for the secret, optional"
              | optional,
            options
              | refs."definitions.GeneratorOptions"
              | { _ | Dyn }
              | optional,
            type | String | doc "Type of the secret, optional" | optional,
          },
      "definitions.Target" =
        {
            apiVersion | String | optional,
            group | String | optional,
            kind | String | optional,
            name | String,
            namespace | String | doc "UNDOCUMENTED." | optional,
            version | String | optional,
          },
      "definitions.Var" =
        {
            fieldref
              | refs."definitions.FieldSelector"
              | { _ | Dyn }
              | doc "Refers to the field of the object referred to by objref whose value will be extracted for use in replacing $(FOO)"
              | optional,
            name
              | String
              | doc "Value of identifier name e.g. FOO used in container args, annotations, Appears in pod template as $(FOO)",
            objref
              | refs."definitions.Target"
              | { _ | Dyn }
              | doc "Refers to a Kubernetes resource under the purview of this kustomization",
          },
    }
    in
  refs."definitions.Kustomization"