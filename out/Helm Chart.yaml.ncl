# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      annotations
        | js2n.record.Record
          {
            additional = 'Some String,
            patterns = {},
            properties =
              {
                  "artifacthub.io/changes" = String,
                  "artifacthub.io/containsSecurityUpdates" =
                    std.contract.Sequence
                        [ std.enum.TagOrString, [| '"false", '"true" |] ],
                  "artifacthub.io/crds" = String,
                  "artifacthub.io/crdsExamples" = String,
                  "artifacthub.io/images" = String,
                  "artifacthub.io/license" = String,
                  "artifacthub.io/links" = String,
                  "artifacthub.io/maintainers" = String,
                  "artifacthub.io/operator" =
                    std.contract.Sequence
                        [ std.enum.TagOrString, [| '"false", '"true" |] ],
                  "artifacthub.io/operatorCapabilities" =
                    std.contract.Sequence
                        [
                          std.enum.TagOrString,
                          [|
                            '"Auto Pilot",
                            '"Deep Insights",
                            '"Full Lifecycle",
                            '"Seamless Upgrades",
                            '"Basic Install"
                          |]
                        ],
                  "artifacthub.io/prerelease" =
                    std.contract.Sequence
                        [ std.enum.TagOrString, [| '"false", '"true" |] ],
                  "artifacthub.io/recommendations" = String,
                  "artifacthub.io/signKey" = String,
                },
            required = {},
          }
        | doc "A list of annotations keyed by name"
        | optional,
      apiVersion
        | std.enum.TagOrString
        | [| 'v2, 'v1 |]
        | doc "The apiVersion field should be v2 for Helm charts that require at least Helm 3. Charts supporting previous Helm versions have an apiVersion set to v1 and are still installable by Helm 3.",
      appVersion
        | String
        | doc "Note that the appVersion field is not related to the version field. It is a way of specifying the version of the application. For example, the drupal chart may have an appVersion: \"8.2.1\", indicating that the version of Drupal included in the chart (by default) is 8.2.1. This field is informational, and has no impact on chart version calculations. Wrapping the version in quotes is highly recommended. It forces the YAML parser to treat the version number as a string. Leaving it unquoted can lead to parsing issues in some cases. For example, YAML interprets 1.0 as a floating point value, and a git commit SHA like 1234e10 as scientific notation."
        | optional,
      dependencies
        | Array
          {
            alias
              | String
              | doc "Alias to be used for the chart. Useful when you have to add the same chart multiple times"
              | optional,
            condition
              | String
              | doc "A yaml path that resolves to a boolean, used for enabling/disabling charts"
              | optional,
            import-values
              | Array (
                std.contract.any_of
                  [
                    String,
                    {
                      child
                        | String
                        | doc "The source key of the values to be imported",
                      parent
                        | String
                        | doc "The destination path in the parent chart's values",
                    }
                  ]
              )
              | doc "ImportValues holds the mapping of source values to parent key to be imported. Each item can be a string or pair of child/parent sublist items."
              | optional,
            name | String | doc "The name of the chart",
            repository
              | std.contract.any_of [ String, js2n.string.Matches "^@" ]
              | doc "The repository URL or alias"
              | optional,
            tags
              | Array String
              | doc "Tags can be used to group charts for enabling/disabling together"
              | optional,
            version | String | doc "The version of the chart" | optional,
          }
        | doc m%"
          In Helm, one chart may depend on any number of other charts. These dependencies can be dynamically linked using the dependencies field in Chart.yaml or brought in to the charts/ directory and managed manually.
          The charts required by the current chart are defined as a list in the dependencies field.
        "%
        | optional,
      deprecated
        | Bool
        | doc "When managing charts in a Chart Repository, it is sometimes necessary to deprecate a chart. The optional deprecated field in Chart.yaml can be used to mark a chart as deprecated. If the latest version of a chart in the repository is marked as deprecated, then the chart as a whole is considered to be deprecated. The chart name can be later reused by publishing a newer version that is not marked as deprecated."
        | optional,
      description
        | String
        | doc "A single-sentence description of this project"
        | optional,
      home | String | doc "The URL of this projects home page" | optional,
      icon
        | String
        | doc "A URL to an SVG or PNG image to be used as an icon"
        | optional,
      keywords
        | Array String
        | doc "A list of keywords about this project"
        | optional,
      kubeVersion
        | String
        | doc "The optional kubeVersion field can define semver constraints on supported Kubernetes versions. Helm will validate the version constraints when installing the chart and fail if the cluster runs an unsupported Kubernetes version."
        | optional,
      maintainers
        | Array
          {
            email | String | doc "The maintainers email" | optional,
            name | String | doc "The maintainers name",
            url | String | doc "A URL for the maintainer" | optional,
          }
        | optional,
      name | String | doc "The name of the chart",
      sources
        | Array String
        | doc "A list of URLs to source code for this project"
        | optional,
      type
        | std.enum.TagOrString
        | [| 'library, 'application |]
        | doc "The type of the chart"
        | optional,
      version | String | doc "A SemVer 2 version",
    }