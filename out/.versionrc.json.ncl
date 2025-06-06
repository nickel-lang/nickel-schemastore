# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.type" =
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
                      js2n.record.Required [ "section" ],
                      Array Dyn
                    ],
                  std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      js2n.record.Required [ "hidden" ],
                      Array Dyn
                    ]
                ],
              {
                hidden
                  | Bool
                  | doc "Set to `true` to hide matched commit types in the CHANGELOG."
                  | optional,
                scope
                  | String
                  | doc "A string used to match `[optional scope]` used in the Conventional Commits convention."
                  | optional,
                section
                  | String
                  | doc "The section where the matched commit type will display in the CHANGELOG."
                  | optional,
                type
                  | String
                  | doc "A string used to match <type>s used in the Conventional Commits convention.",
                ..
              }
            ],
    }
    in
  {
      commitUrlFormat
        | String
        | doc "A URL representing a specific commit at a hash."
        | optional,
      compareUrlFormat
        | String
        | doc "A URL representing the comparison between two git SHAs."
        | optional,
      header
        | String
        | doc "A string to be used as the main header section of the CHANGELOG."
        | optional,
      issuePrefixes
        | Array String
        | doc "An array of prefixes used to detect references to issues"
        | optional,
      issueUrlFormat
        | String
        | doc "A URL representing the issue format (allowing a different URL format to be swapped in for Gitlab, Bitbucket, etc)."
        | optional,
      preMajor
        | Bool
        | doc m%"
          Boolean indicating whether or not the action being run (generating CHANGELOG, recommendedBump, etc.) is being performed for a pre-major release (<1.0.0).
           This config setting will generally be set by tooling and not a user.
        "%
        | optional,
      releaseCommitMessageFormat
        | String
        | doc "A string to be used to format the auto-generated release commit message."
        | optional,
      types
        | Array (std.contract.Sequence [ refs."definitions.type", { _ | Dyn } ])
        | doc "An array of `type` objects representing the explicitly supported commit message types, and whether they should show up in generated `CHANGELOG`s."
        | optional,
      userUrlFormat
        | String
        | doc "A URL representing the a user's profile URL on GitHub, Gitlab, etc. This URL is used for substituting @bcoe with https://github.com/bcoe in commit messages."
        | optional,
      ..
    }