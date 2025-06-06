# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.AgentConfigRule" =
        std.contract.Sequence
            [
              std.contract.any_of
                [
                  js2n.record.Required [ "account" ],
                  js2n.record.Required [ "item" ],
                  js2n.record.Required [ "vault" ]
                ],
              {
                account
                  | String
                  | doc "Can be either an account UUID or signin address or account name"
                  | optional,
                item
                  | String
                  | doc "Can be either an item UUID or name"
                  | optional,
                vault
                  | String
                  | doc "Can be either a vault UUID or name"
                  | optional,
              }
            ],
    }
    in
  {
      ssh-keys
        | Array (
          std.contract.Sequence
            [ refs."definitions.AgentConfigRule", { _ | Dyn } ]
        )
        | doc "The list of rules to decide which accounts, vaults, and items to add to the SSH agent.",
      ..
    }