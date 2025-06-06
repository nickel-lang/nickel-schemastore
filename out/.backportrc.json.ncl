# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      all
        | Bool
        | doc "Whether to only show the current user's commits or commits from anyone"
        | optional,
      branches
        | Array (
          std.contract.any_of [ String, { checked | Bool, name | String, .. } ]
        )
        | doc "Branches to backport to"
        | optional,
      labels
        | Array String
        | doc "Labels that will be added to the pull request"
        | optional,
      repoName
        | js2n.string.MinLength 1
        | doc m%"
          A repo name for the current project
          https://github.com/sqren/backport/blob/main/docs/config-file-options.md#reponame-required
        "%,
      repoOwner
        | js2n.string.MinLength 1
        | doc m%"
          A repo owner for the current project
          https://github.com/sqren/backport/blob/main/docs/config-file-options.md#repoowner-required
        "%,
      targetBranchChoices
        | js2n.array.UniqueItems
        | Array (
          std.contract.any_of
            [
              js2n.string.MinLength 1,
              {
                checked
                  | Bool
                  | doc m%"
                    Whether to pre-select a target branch for the current project
                    https://github.com/sqren/backport/blob/main/docs/config-file-options.md#targetbranchchoices-required
                  "%,
                name
                  | js2n.string.MinLength 1
                  | doc m%"
                    A target branch for the current project
                    https://github.com/sqren/backport/blob/main/docs/config-file-options.md#targetbranchchoices-required
                  "%,
              }
            ]
        )
        | doc m%"
          Target branches for the current project
          https://github.com/sqren/backport/blob/main/docs/config-file-options.md#targetbranchchoices-required
        "%,
      upstream
        | String
        | doc "Identifier for the GitHub project as `{owner}/{repoName}` (deprecated)"
        | optional,
    }