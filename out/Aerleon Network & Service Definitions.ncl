# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      networks
        | js2n.record.PropertyNames
          (std.contract.any_of
            [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ])
        | {
          _ | std.contract.any_of
            [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
        }
        | doc "Policy files can reference the networks in this section by name. A network is a list of IP addresses or CIDR IP address ranges and may contain other networks."
        | optional,
      services
        | js2n.record.PropertyNames
          (std.contract.any_of
            [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ])
        | {
          _ | std.contract.any_of
            [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
        }
        | doc "Policy files can reference the services in this section by name. A service is a list of port/protocol pairs (e.g. port: 80, protocol: tcp) and can include port ranges. A service can include other services."
        | optional,
    }