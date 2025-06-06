# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      badgeTemplate | js2n.string.MinLength 0 | optional,
      commit | Bool | optional,
      commitConvention
        | std.enum.TagOrString
        | [| 'none, 'gitmoji, 'jshint, 'eslint, 'ember, 'atom, 'angular |]
        | optional,
      commitType
        | String
        | doc "UNDOCUMENTED: Sets Conventional Commits commit type to be used by the all contributors bot. See https://www.conventionalcommits.org."
        | optional,
      contributorTemplate | js2n.string.MinLength 0 | optional,
      contributors
        | Array
          {
            avatar_url | js2n.string.MinLength 0,
            contributions
              | js2n.array.MinItems 1
              | Array (
                std.contract.any_of
                  [
                    std.contract.Sequence
                      [
                        std.enum.TagOrString,
                        [|
                          'video,
                          'userTesting,
                          'tutorial,
                          'translation,
                          'tool,
                          'test,
                          'talk,
                          'security,
                          'review,
                          'research,
                          'question,
                          'promotion,
                          'projectManagement,
                          'plugin,
                          'platform,
                          'mentoring,
                          'maintenance,
                          'infra,
                          'ideas,
                          'fundingFinding,
                          'financial,
                          'example,
                          'eventOrganizing,
                          '"doc",
                          'design,
                          'data,
                          'content,
                          'code,
                          'business,
                          'bug,
                          'blog,
                          'audio,
                          'a11y
                        |]
                      ],
                    js2n.string.MinLength 0
                  ]
              ),
            login | js2n.string.MinLength 0,
            name | js2n.string.MinLength 0,
            profile | js2n.string.MinLength 0,
          }
        | optional,
      contributorsPerLine | js2n.number.Minimum 0 | optional,
      contributorsSortAlphabetically | Bool | optional,
      files | Array (js2n.string.MinLength 0) | optional,
      imageSize | js2n.number.Minimum 0 | optional,
      linkToUsage | Bool | optional,
      projectName | js2n.string.MinLength 0,
      projectOwner | js2n.string.MinLength 0,
      repoHost
        | js2n.string.MinLength 0
        | doc m%"
          Change it if you use a self-hosted repository.
          Default: https://github.com if repoType is github, and https://gitlab.com if repoType is gitlab
        "%
        | optional,
      repoType | std.enum.TagOrString | [| 'gitlab, 'github |] | optional,
      skipCi | Bool | optional,
      types
        | {
          _ | {
            description | js2n.string.MinLength 0 | optional,
            link | js2n.string.MinLength 0 | optional,
            symbol | js2n.string.MinLength 0 | optional,
            ..
          }
        }
        | optional,
    }