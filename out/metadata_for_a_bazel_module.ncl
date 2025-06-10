# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      "$schema" | String | optional,
      deprecated
        | String
        | doc "The reason this module is deprecated. If set, the latest version can be yanked."
        | optional,
      homepage | String,
      maintainers
        | js2n.array.MinItems 1
        | Array
          {
            do_not_notify
              | Bool
              | doc "when set to true, this maintainer won't be notified by new PRs, but still has approver rights"
              | optional,
            email | String | doc "maintainer's email address" | optional,
            github
              | js2n.string.Matches "^[-a-zA-Z0-9]*$"
              | doc "maintainer's github username"
              | optional,
            github_user_id
              | std.number.Integer
              | doc "maintainer's github user id"
              | optional,
            name | String | doc "maintainer's name" | optional,
            ..
          }
        | doc "Individuals who can be notified when the module requires human attention",
      repository | js2n.array.MinItems 1 | Array String,
      versions | Array String,
      yanked_versions | {  .. } | optional,
    }