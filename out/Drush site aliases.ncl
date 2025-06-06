# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      _ | {
        command | { _ | { _ | Dyn } } | optional,
        docker
          | { exec | { _ | Dyn } | optional, service | String | optional, .. }
          | optional,
        host | String | optional,
        os | std.enum.TagOrString | [| 'Linux, 'Windows |] | optional,
        paths
          | js2n.record.Record
            {
              additional = 'Some String,
              patterns = {},
              properties =
                {
                    alias-path = Array String,
                    drush-script = String,
                    files = String,
                  },
              required = {},
            }
          | optional,
        root | String | optional,
        ssh
          | { options | String | optional, tty | Bool | optional, .. }
          | optional,
        uri
          | String
          | doc "The value of uri should always be the same as when the site is being accessed from a web browser"
          | optional,
        user | String | optional,
        vagrant | js2n.Null | optional,
        ..
      }
    }