# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.path" =
        {
            componentPathExtraDepth
              | std.number.Integer
              | doc "The number of extra nesting levels to add to the 'components' being promoted, this allows nesting components in subdirectories while keeping them distinct. A 2 value will mean the component name includes the 3 subdirectories under the sourcePath"
              | optional,
            conditions
              | {
                autoMerge
                  | Bool
                  | doc "If set to true, PR will be automatically merged after it is created"
                  | optional,
                prHasLabels
                  | Array String
                  | doc "Array of PR labels, if the triggering PR has any of these labels the condition is considered fulfilled"
                  | optional,
                ..
              }
              | doc "Conditions for triggering a specific promotion flows. Flows are evaluated in order, first one to match is triggered"
              | optional,
            promotionPrs
              | Array (
                std.contract.Sequence [ refs."definitions.pr", { _ | Dyn } ]
              )
              | doc "List of PR that will be opened when files are changed under sourcePath"
              | optional,
            sourcePath
              | String
              | doc "The directory that holds components(subdirectories) to be synced, can include a regex"
              | optional,
            ..
          },
      "definitions.pr" =
        {
            targetDescription
              | String
              | doc "An optional string that describes the target paths, will be used in the promotion PR titles"
              | optional,
            targetPaths
              | Array String
              | doc "A directory to be synced from the changed component under sourcePath"
              | optional,
            ..
          },
      "definitions.regex" =
        {
            expression
              | String
              | doc "Directory in the repo to watch for watch"
              | optional,
            replacements
              | Array String
              | doc "List of webhook endpoint to send the Github event. You can use capture groups from the regex expression"
              | optional,
            ..
          },
    }
    in
  {
      argocd
        | {
          allowSyncfromBranchPathRegex
            | String
            | doc "This controls which component(=ArgoCD apps) are allowed to be 'applied' from a PR branch, by setting the ArgoCD application Target Revision to PR branch"
            | optional,
          autoMergeNoDiffPRs
            | Bool
            | doc "If true, Telefonistka will merge promotion PRs that are not expected to change the target clusters"
            | optional,
          commentDiffonPR
            | Bool
            | doc "Uses ArgoCD API to calculate expected changes to k8s state and comment the resulting 'diff' as comment in the PR"
            | optional,
          createTempAppObjectFromNewApps
            | Bool
            | doc "For application created in PR Telefonistka needs to create a temporary ArgoCD Application Object to render the manifests, this key enables this behavior"
            | optional,
          useSHALabelForAppDiscovery
            | Bool
            | doc "Use SHA1 of the application path as a label and rely on ArgoCD server-side filtering, label name is telefonistka.io/component-path-sha1"
            | optional,
          ..
        }
        | doc "ArgoCD configuration"
        | optional,
      autoApprovePromotionPrs
        | Bool
        | doc "If true the bot will auto-approve all promotion PRs, with the assumption the original PR was peer reviewed and is promoted verbatim. Required additional GH token via APPROVER_GITHUB_OAUTH_TOKEN env variable"
        | optional,
      disableArgoCDDiff
        | Bool
        | doc "Component-level configuration only. If true, no sensitive information stored outside kind:Secret objects is persisted to PR comments"
        | optional,
      dryRunMode
        | Bool
        | doc "If true, the bot will comment the planned promotion on the merged PR"
        | optional,
      promotionPaths
        | Array refs."definitions.path"
        | doc "List of promotion flow"
        | optional,
      promotionTargetAllowList
        | Array String
        | doc "Component-level configuration only. List of target paths allowed to be promoted. Can be regex"
        | optional,
      promotionTargetBlockList
        | Array String
        | doc "Component-level configuration only. Highest priority. List of target paths blocked from promoting. Can be regex"
        | optional,
      promtionPRlables
        | Array String
        | doc "List of labels to apply on PR"
        | optional,
      toggleCommitStatus
        | { _ | Dyn }
        | doc "Map of strings, allow (non-repo-admin) users to change the Github commit status state(from failure to success and back). This can be used to continue promotion of a change that doesn't pass repo checks. the keys are strings commented in the PRs, values are Github commit status context to be overridden"
        | optional,
      webhookEndpointRegexs
        | Array refs."definitions.regex"
        | doc "List of configuration for Github event forwarding"
        | optional,
      whProxtSkipTLSVerifyUpstream
        | Bool
        | doc "This disables upstream TLS server certificate validation for the webhook proxy functionality. Default is false"
        | optional,
    }