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
        access | { _ | Dyn } | optional,
        configuration | { _ | Dyn } | optional,
        disk | std.number.Integer | optional,
        firewall
          | {
            outbound
              | Array
                {
                  domains | Array String | optional,
                  ips | Array String | optional,
                  ports | Array std.number.Integer | optional,
                  protocol | String | optional,
                }
              | optional,
          }
          | optional,
        relationships | { _ | String } | optional,
        resources
          | {
            base_memory | std.number.Integer | optional,
            memory_ratio | std.number.Integer | optional,
          }
          | optional,
        size | String | optional,
        type | String,
      }
    }