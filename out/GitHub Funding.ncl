# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.github_username" =
        std.contract.Sequence
            [
              js2n.string.MaxLength 39,
              js2n.string.Matches "^[a-zA-Z0-9](-?[a-zA-Z0-9])*$"
            ],
    }
    in
  {
      buy_me_a_coffee
        | js2n.Nullable (js2n.string.MinLength 1)
        | doc "Username on Buy Me a Coffee."
        | optional,
      community_bridge
        | js2n.Nullable (js2n.string.MinLength 1)
        | doc "Project name on CommunityBridge."
        | optional,
      custom
        | std.contract.any_of
          [
            js2n.Null,
            String,
            std.contract.Sequence [ js2n.array.UniqueItems, Array String ]
          ]
        | doc "Link or links where funding is accepted on external locations."
        | optional,
      github
        | std.contract.any_of
          [
            std.contract.Sequence
              [ refs."definitions.github_username", String ],
            std.contract.Sequence
              [
                js2n.array.MinItems 1,
                js2n.array.UniqueItems,
                Array (
                  std.contract.Sequence
                    [ refs."definitions.github_username", String ]
                )
              ]
          ]
        | doc "Username or usernames on GitHub."
        | optional,
      issuehunt
        | js2n.Nullable (js2n.string.MinLength 1)
        | doc "Username on IssueHunt."
        | optional,
      ko_fi
        | js2n.Nullable (js2n.string.MinLength 1)
        | doc "Username on Ko-fi."
        | optional,
      lfx_crowdfunding
        | js2n.Nullable (js2n.string.MinLength 1)
        | doc "Project name on LFX Crowdfunding."
        | optional,
      liberapay
        | js2n.Nullable (js2n.string.MinLength 1)
        | doc "Username on Liberapay."
        | optional,
      open_collective
        | js2n.Nullable (js2n.string.MinLength 1)
        | doc "Username on Open Collective."
        | optional,
      otechie
        | js2n.Nullable (js2n.string.MinLength 1)
        | doc "Username on Otechie."
        | optional,
      patreon
        | js2n.Nullable
          (std.contract.Sequence
            [ js2n.string.MaxLength 100, js2n.string.MinLength 1 ])
        | doc "Username on Patreon."
        | optional,
      polar
        | js2n.string.MinLength 1
        | refs."definitions.github_username"
        | doc "Username on Polar."
        | optional,
      thanks_dev
        | js2n.Nullable (js2n.string.Matches "^u/gh/.+$")
        | doc "Maintainer profile on thanks.dev"
        | optional,
      tidelift
        | js2n.Nullable
          (js2n.string.Matches "^(npm|pypi|rubygems|maven|packagist|nuget)/.+$")
        | doc "Platform and package on Tidelift."
        | optional,
    }