# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.certificate-authority-config" =
        std.contract.Sequence
            [
              js2n.OneOf
                [
                  std.contract.Sequence
                    [
                      std.contract.any_of
                        [
                          js2n.Null,
                          Bool,
                          Number,
                          String,
                          js2n.record.Required [ "cert", "key" ],
                          Array Dyn
                        ],
                      std.contract.not
                        (std.contract.any_of
                          [
                            js2n.Null,
                            Bool,
                            Number,
                            String,
                            js2n.record.Required [ "key-size" ],
                            Array Dyn,
                            js2n.Null,
                            Bool,
                            Number,
                            String,
                            js2n.record.Required [ "validity-duration" ],
                            Array Dyn
                          ])
                    ],
                  std.contract.Sequence
                    [
                      std.contract.any_of
                        [
                          js2n.Null,
                          Bool,
                          Number,
                          String,
                          js2n.record.Required [ "key-size" ],
                          Array Dyn,
                          js2n.Null,
                          Bool,
                          Number,
                          String,
                          js2n.record.Required [ "validity-duration" ],
                          Array Dyn
                        ],
                      std.contract.not
                        (std.contract.any_of
                          [
                            js2n.Null,
                            Bool,
                            Number,
                            String,
                            js2n.record.Required [ "cert" ],
                            Array Dyn,
                            js2n.Null,
                            Bool,
                            Number,
                            String,
                            js2n.record.Required [ "key" ],
                            Array Dyn
                          ])
                    ]
                ],
              {
                cert
                  | String
                  | doc "Path to the CA certificate file. If set, it is expected that the CA certificate already exists by that path"
                  | optional,
                key
                  | String
                  | doc "Path to the CA key file. If set, it is expected that the CA certificate already exists by that path"
                  | optional,
                key-size
                  | std.number.Integer
                  | doc "Key size. Can only be set if the external CA certificate is not provided"
                  | optional,
                validity-duration
                  | String
                  | doc "CA certificate validity duration. Can only be set if the external CA certificate is not provided"
                  | optional,
              }
            ],
      "definitions.certificate-config" =
        {
            issue
              | std.contract.any_of
                [ js2n.Null, Bool, Number, String, { _ | Dyn }, Array Dyn ]
              | doc "Set to `true` to generate a TLS certificate for the node"
              | optional,
            key-size
              | std.number.Integer
              | doc "size of the to be generated key"
              | optional,
            sans
              | js2n.array.UniqueItems
              | Array String
              | doc "list of subject alternative names (SAN) to use for this node"
              | optional,
            validity-duration
              | String
              | doc "Duration for how long the certificate issued by the CA will be valid."
              | optional,
          },
      "definitions.config-config" =
        {
            vars
              | { _ | Dyn }
              | doc "config variables passed to config engine"
              | optional,
          },
      "definitions.dns-config" =
        {
            options
              | js2n.array.UniqueItems
              | Array String
              | doc "DNS options"
              | optional,
            search
              | js2n.array.UniqueItems
              | Array String
              | doc "DNS search domains"
              | optional,
            servers
              | js2n.array.UniqueItems
              | Array String
              | doc "DNS server addresses"
              | optional,
          },
      "definitions.extras-config" =
        {
            mysocket-proxy
              | String
              | doc "http/s proxy to be used by mysocketctl"
              | optional,
            srl-agents
              | js2n.array.MinItems 1
              | js2n.array.UniqueItems
              | Array String
              | doc "list of SR Linux agent's config files to be copied to the NOS filesystem"
              | optional,
          },
      "definitions.healthcheck-config" =
        {
            interval
              | std.number.Integer
              | doc "test execution interval"
              | optional,
            retries
              | std.number.Integer
              | doc "test execution retries"
              | optional,
            start-period
              | std.number.Integer
              | doc "time in seconds to wait before starting the healthcheck"
              | optional,
            test | Array String | doc "test command" | optional,
            timeout
              | std.number.Integer
              | doc "test execution timeout in seconds"
              | optional,
          },
      "definitions.ipv4-addr" =
        js2n.string.Matches
            "^(([0-9]|[1-9][0-9]|1[0-9][0-9]|2[0-4][0-9]|25[0-5])\\.){3}([0-9]|[1-9][0-9]|1[0-9][0-9]|2[0-4][0-9]|25[0-5])(%[\\p{N}\\p{L}]+)?$",
      "definitions.ipv6-addr" =
        js2n.string.Matches
            "^((:|[0-9a-fA-F]{0,4}):)([0-9a-fA-F]{0,4}:){0,5}((([0-9a-fA-F]{0,4}:)?(:|[0-9a-fA-F]{0,4}))|(((25[0-5]|2[0-4][0-9]|[01]?[0-9]?[0-9])\\.){3}(25[0-5]|2[0-4][0-9]|[01]?[0-9]?[0-9])))(%[\\p{N}\\p{L}]+)?$",
      "definitions.labels" =
        js2n.record.Record
            {
              additional = 'Some Dyn,
              patterns = { ".+" = std.contract.any_of [ Number, String ], },
              properties = {},
              required = {},
            },
      "definitions.link-config-short" =
        {
            endpoints
              | js2n.array.MinItems 2
              | js2n.array.UniqueItems
              | Array (js2n.string.Matches "^\\S+:\\S+$")
              | doc "endpoints list"
              | optional,
            mtu | refs."definitions.mtu" | Number | optional,
            vars | refs."definitions.link-vars" | { _ | Dyn } | optional,
          },
      "definitions.link-endpoint" =
        {
            interface | String | doc "",
            mac
              | js2n.string.Matches
                "^(?:[0-9A-Fa-f]{2}[:-]){5}(?:[0-9A-Fa-f]{2})"
              | doc ""
              | optional,
            node | String | doc "",
          },
      "definitions.link-host-interface" = String,
      "definitions.link-type-dummy" =
        {
            endpoint | refs."definitions.link-endpoint" | { _ | Dyn },
            labels | refs."definitions.labels" | { _ | Dyn } | optional,
            mtu | refs."definitions.mtu" | Number | optional,
            type | std.contract.Equal "dummy",
            vars | refs."definitions.link-vars" | { _ | Dyn } | optional,
          },
      "definitions.link-type-host" =
        {
            endpoint | refs."definitions.link-endpoint" | { _ | Dyn },
            host-interface | refs."definitions.link-host-interface" | String,
            labels | refs."definitions.labels" | { _ | Dyn } | optional,
            mtu | refs."definitions.mtu" | Number | optional,
            type | std.contract.Equal "host",
            vars | refs."definitions.link-vars" | { _ | Dyn } | optional,
          },
      "definitions.link-type-macvlan" =
        {
            endpoint | refs."definitions.link-endpoint" | { _ | Dyn },
            host-interface | refs."definitions.mtu" | Number,
            labels | refs."definitions.labels" | { _ | Dyn } | optional,
            mtu | refs."definitions.mtu" | Number | optional,
            type | std.contract.Equal "macvlan",
            vars | refs."definitions.link-vars" | { _ | Dyn } | optional,
          },
      "definitions.link-type-mgmt-net" =
        {
            endpoint | refs."definitions.link-endpoint" | { _ | Dyn },
            host-interface | refs."definitions.link-host-interface" | String,
            labels | refs."definitions.labels" | { _ | Dyn } | optional,
            mtu | refs."definitions.mtu" | Number | optional,
            type | std.contract.Equal "mgmt-net",
            vars | refs."definitions.link-vars" | { _ | Dyn } | optional,
          },
      "definitions.link-type-veth" =
        {
            endpoints
              | js2n.array.MaxItems 2
              | js2n.array.MinItems 2
              | Array (
                std.contract.Sequence
                  [ refs."definitions.link-endpoint", { _ | Dyn } ]
              )
              | doc "Endpoints for the links",
            labels | refs."definitions.labels" | { _ | Dyn } | optional,
            mtu | refs."definitions.mtu" | Number | optional,
            type | std.contract.Equal "veth",
            vars | refs."definitions.link-vars" | { _ | Dyn } | optional,
            ..
          },
      "definitions.link-type-vxlan" =
        {
            endpoint | refs."definitions.link-endpoint" | { _ | Dyn },
            labels | refs."definitions.labels" | { _ | Dyn } | optional,
            mtu | refs."definitions.mtu" | Number | optional,
            remote | refs."definitions.link-vxlan-remote",
            type | std.contract.Equal "vxlan",
            udp-port | refs."definitions.link-vxlan-udpport" | Number,
            vars | refs."definitions.link-vars" | { _ | Dyn } | optional,
            vni | refs."definitions.link-vxlan-vni" | Number,
          },
      "definitions.link-type-vxlan-stitched" =
        {
            endpoint | refs."definitions.link-endpoint" | { _ | Dyn },
            labels | refs."definitions.labels" | { _ | Dyn } | optional,
            mtu | refs."definitions.mtu" | Number | optional,
            remote | refs."definitions.link-vxlan-remote",
            type | std.contract.Equal "vxlan-stitch",
            udp-port | refs."definitions.link-vxlan-udpport" | Number,
            vars | refs."definitions.link-vars" | { _ | Dyn } | optional,
            vni | refs."definitions.link-vxlan-vni" | Number,
          },
      "definitions.link-vars" = { _ | Dyn },
      "definitions.link-vxlan-remote" =
        std.contract.any_of
            [
              std.contract.Sequence [ refs."definitions.ipv4-addr", String ],
              std.contract.Sequence [ refs."definitions.ipv6-addr", String ]
            ],
      "definitions.link-vxlan-udpport" =
        std.contract.Sequence
            [
              std.number.Integer,
              js2n.number.Maximum 65535,
              js2n.number.Minimum 1
            ],
      "definitions.link-vxlan-vni" =
        std.contract.Sequence
            [
              std.number.Integer,
              js2n.number.Maximum 16777215,
              js2n.number.Minimum 1
            ],
      "definitions.mtu" =
        std.contract.Sequence
            [ js2n.number.Maximum 65535, js2n.number.Minimum 1 ],
      "definitions.node-config" =
        std.contract.Sequence
            [
              js2n.IfThenElse
                (std.contract.any_of
                  [
                    js2n.Null,
                    Bool,
                    Number,
                    String,
                    js2n.record.Record
                      {
                        additional = 'Some Dyn,
                        patterns = {},
                        properties =
                          {
                              kind =
                                std.contract.any_of
                                    [
                                      js2n.Null,
                                      Bool,
                                      Number,
                                      js2n.string.Matches "(nokia_srlinux)",
                                      { _ | Dyn },
                                      Array Dyn
                                    ],
                            },
                        required = { kind = true, },
                      },
                    Array Dyn
                  ])
                (std.contract.any_of
                  [
                    js2n.Null,
                    Bool,
                    Number,
                    String,
                    {
                      type
                        | std.enum.TagOrString
                        | [|
                          'ixrx3b,
                          'ixrx1b,
                          'sxr1d32d,
                          'sxr1x44s,
                          'ixr18e,
                          'ixr10e,
                          'ixr10,
                          'ixr6e,
                          'ixr6,
                          'ixrh564o,
                          'ixrh564d,
                          'ixrh5,
                          'ixrh432d,
                          'ixrh4,
                          'ixrh3,
                          'ixrh2,
                          'ixrd5,
                          'ixrd4,
                          'ixrd3l,
                          'ixrd2l,
                          'ixrd3,
                          'ixrd2,
                          'ixrd1,
                          'ixsa1
                        |]
                        | optional,
                      ..
                    },
                    Array Dyn
                  ]) js2n.Always,
              js2n.IfThenElse
                (std.contract.any_of
                  [
                    js2n.Null,
                    Bool,
                    Number,
                    String,
                    js2n.record.Record
                      {
                        additional = 'Some Dyn,
                        patterns = {},
                        properties =
                          {
                              kind =
                                std.contract.any_of
                                    [
                                      js2n.Null,
                                      Bool,
                                      Number,
                                      js2n.string.Matches "(nokia_sros)",
                                      { _ | Dyn },
                                      Array Dyn
                                    ],
                            },
                        required = { kind = true, },
                      },
                    Array Dyn
                  ])
                (std.contract.any_of
                  [
                    js2n.Null,
                    Bool,
                    Number,
                    String,
                    {
                      type
                        | std.contract.any_of
                          [
                            std.contract.Sequence
                              [
                                std.enum.TagOrString,
                                [|
                                  'ixr-s,
                                  'ixr-r6,
                                  'ixr-ec,
                                  'ixr-e2,
                                  'ixr-e-big,
                                  'ixr-e-small,
                                  'sr-a4,
                                  'sr-14s,
                                  'sr-7s-fp4,
                                  'sr-7s,
                                  'sr-2s,
                                  'sr-1s-macsec,
                                  'sr-1s,
                                  'sr-1e-sec,
                                  'sr-1e,
                                  'sr-1
                                |]
                              ],
                            js2n.string.Matches "cp:.+"
                          ]
                        | optional,
                      ..
                    },
                    Array Dyn
                  ]) js2n.Always,
              { type | String | doc "type of a node" | optional, .. },
              {
                aliases
                  | js2n.array.UniqueItems
                  | Array String
                  | doc "list of additional network aliases for the node"
                  | optional,
                auto-remove
                  | Bool
                  | doc "Set to `true` to remove the node automatically, instead of auto-restarting"
                  | optional,
                binds
                  | js2n.array.MinItems 1
                  | js2n.array.UniqueItems
                  | Array String
                  | doc "list of file/directory bindings"
                  | optional,
                certificate
                  | refs."definitions.certificate-config"
                  | { _ | Dyn }
                  | optional,
                cmd
                  | String
                  | doc "command to launch container with"
                  | optional,
                config
                  | refs."definitions.config-config"
                  | { _ | Dyn }
                  | optional,
                cpu
                  | js2n.number.Minimum 0
                  | doc "number of vcpu to allocate for this node/container"
                  | optional,
                cpu-set
                  | String
                  | doc "CPU cores to use by this node/container"
                  | optional,
                dns | refs."definitions.dns-config" | { _ | Dyn } | optional,
                enforce-startup-config
                  | Bool
                  | doc "Set to `true` to make the node to boot with a startup-config even if the config file is present in the lab directory"
                  | optional,
                entrypoint | String | doc "container's entrypoint" | optional,
                env
                  | js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns =
                        {
                            ".+" = std.contract.any_of [ Bool, Number, String ],
                          },
                      properties = {},
                      required = {},
                    }
                  | doc "environment variables"
                  | optional,
                exec
                  | js2n.array.MinItems 1
                  | Array String
                  | doc "list of commands to execute post deploy"
                  | optional,
                extras
                  | refs."definitions.extras-config"
                  | { _ | Dyn }
                  | optional,
                group
                  | String
                  | doc "grouping parameter of a node. A free form string that is mainly used in sorting elements when graphing"
                  | optional,
                healthcheck
                  | refs."definitions.healthcheck-config"
                  | { _ | Dyn }
                  | optional,
                image
                  | String
                  | doc "container image to use for this node"
                  | optional,
                image-pull-policy
                  | std.enum.TagOrString
                  | [|
                    'IfNotPresent,
                    'ifnotpresent,
                    'Never,
                    'never,
                    'Always,
                    'always
                  |]
                  | doc "policy for pulling the referenced container image"
                  | optional,
                kernel | String | doc "ignite's kernel image name" | optional,
                kind
                  | std.enum.TagOrString
                  | [|
                    'fdio_vpp,
                    'k8s-kind,
                    'fortinet_fortigate,
                    'generic_vm,
                    'freebsd,
                    'openbsd,
                    'huawei_vrp,
                    'cumulus_cvx,
                    'cisco_iol,
                    'cisco_cat9kv,
                    'cisco_c8000v,
                    'cisco_c8000,
                    'cisco_xrd,
                    'rare,
                    'ext-container,
                    'checkpoint_cloudguard,
                    'ipinfusion_ocnos,
                    'keysight_ixia-c-one,
                    'host,
                    'border0,
                    'ovs-bridge,
                    'bridge,
                    'linux,
                    'aruba_aoscx,
                    'dell_sonic,
                    'dell_ftosv,
                    'cisco_ftdv,
                    'cisco_n9kv,
                    'mikrotik_ros,
                    'paloalto_panos,
                    'cisco_csr1000v,
                    'arista_veos,
                    'cisco_xrv9k,
                    'cisco_xrv,
                    'juniper_vjunosevolved,
                    'juniper_vjunosswitch,
                    'juniper_vjunosrouter,
                    'juniper_vsrx,
                    'juniper_vqfx,
                    'juniper_vmx,
                    'nokia_sros,
                    'sonic-vm,
                    'sonic-vs,
                    'juniper_crpd,
                    'arista_ceos,
                    'nokia_srlinux
                  |]
                  | doc "kind of this node"
                  | optional,
                labels | refs."definitions.labels" | { _ | Dyn } | optional,
                license | String | doc "path to a license file" | optional,
                memory
                  | String
                  | doc "memory limit for this node/container"
                  | optional,
                mgmt-ipv4
                  | refs."definitions.ipv4-addr"
                  | String
                  | doc "IPv4 management address of the node (e.g. 172.10.10.11)"
                  | optional,
                mgmt-ipv6
                  | refs."definitions.ipv6-addr"
                  | String
                  | doc "IPv6 management address of the node (e.g. 172.10.10.11)"
                  | optional,
                network-mode
                  | js2n.string.Matches "^(host)|(container:\\S+)|(none)$"
                  | doc "node network mode (can only be set host, defaults to bridge)"
                  | optional,
                ports
                  | js2n.array.MinItems 0
                  | js2n.array.UniqueItems
                  | Array (
                    js2n.string.Matches
                      "^(([0-9]|[1-9][0-9]|1[0-9][0-9]|2[0-4][0-9]|25[0-5])\\.){3}([0-9]|[1-9][0-9]|1[0-9][0-9]|2[0-4][0-9]|25[0-5])(%[\\p{N}\\p{L}]+)?:([0-9]{1,4}|[1-5][0-9]{4}|6[0-4][0-9]{3}|65[0-4][0-9]{2}|655[0-2][0-9]|6553[0-5]):([0-9]{1,4}|[1-5][0-9]{4}|6[0-4][0-9]{3}|65[0-4][0-9]{2}|655[0-2][0-9]|6553[0-5])$|^(([0-9]|[1-9][0-9]|1[0-9][0-9]|2[0-4][0-9]|25[0-5])\\.){3}([0-9]|[1-9][0-9]|1[0-9][0-9]|2[0-4][0-9]|25[0-5])(%[\\p{N}\\p{L}]+)?:([0-9]{1,4}|[1-5][0-9]{4}|6[0-4][0-9]{3}|65[0-4][0-9]{2}|655[0-2][0-9]|6553[0-5]):([0-9]{1,4}|[1-5][0-9]{4}|6[0-4][0-9]{3}|65[0-4][0-9]{2}|655[0-2][0-9]|6553[0-5])+(/tcp|/udp|/sctp)$|^([0-9]{1,4}|[1-5][0-9]{4}|6[0-4][0-9]{3}|65[0-4][0-9]{2}|655[0-2][0-9]|6553[0-5]):([0-9]{1,4}|[1-5][0-9]{4}|6[0-4][0-9]{3}|65[0-4][0-9]{2}|655[0-2][0-9]|6553[0-5])$|^([0-9]{1,4}|[1-5][0-9]{4}|6[0-4][0-9]{3}|65[0-4][0-9]{2}|655[0-2][0-9]|6553[0-5]):([0-9]{1,4}|[1-5][0-9]{4}|6[0-4][0-9]{3}|65[0-4][0-9]{2}|655[0-2][0-9]|6553[0-5])+(/tcp|/udp|/sctp)$|^([0-9]{1,4}|[1-5][0-9]{4}|6[0-4][0-9]{3}|65[0-4][0-9]{2}|655[0-2][0-9]|6553[0-5])$|^([0-9]{1,4}|[1-5][0-9]{4}|6[0-4][0-9]{3}|65[0-4][0-9]{2}|655[0-2][0-9]|6553[0-5])-([0-9]{1,4}|[1-5][0-9]{4}|6[0-4][0-9]{3}|65[0-4][0-9]{2}|655[0-2][0-9]|6553[0-5]):([0-9]{1,4}|[1-5][0-9]{4}|6[0-4][0-9]{3}|65[0-4][0-9]{2}|655[0-2][0-9]|6553[0-5])+(/tcp|/udp|/sctp)?$"
                  )
                  | doc "list of port mappings"
                  | optional,
                restart-policy
                  | std.enum.TagOrString
                  | [|
                    'Unless-stopped,
                    'unless-stopped,
                    'always,
                    'Always,
                    'On-failure,
                    'on-failure,
                    'No,
                    'no
                  |]
                  | doc "restart policy for the referenced container image"
                  | optional,
                runtime
                  | std.enum.TagOrString
                  | [| 'ignite, 'docker |]
                  | doc "Runtime used to launch the container node"
                  | optional,
                sandbox | String | doc "ignite's sandbox image name" | optional,
                stages
                  | refs."definitions.stages-config"
                  | { _ | Dyn }
                  | optional,
                startup-config
                  | String
                  | doc "path to a startup config file (if supported by the kind)"
                  | optional,
                startup-delay
                  | std.number.Integer
                  | doc "Optional startup delay (seconds) to apply"
                  | optional,
                type
                  | String
                  | doc "type is a per-node property that can select a special type of a node"
                  | optional,
                user
                  | std.contract.any_of [ Number, String ]
                  | doc "user to use within the container"
                  | optional,
              }
            ],
      "definitions.stage-exec" =
        std.contract.any_of
            [
              {
                on-enter
                  | refs."definitions.stage-exec-list"
                  | Array Dyn
                  | optional,
                on-exit
                  | refs."definitions.stage-exec-list"
                  | Array Dyn
                  | optional,
              },
              Array
                {
                  command | String | doc "Shell command to execute",
                  phase
                    | std.enum.TagOrString
                    | [| 'on-exit, 'on-enter |]
                    | doc "Phase to execute this command (on-enter or on-exit)",
                  target
                    | String
                    | doc "Location to run the command (e.g. 'container', 'host')"
                    | optional,
                }
            ],
      "definitions.stage-exec-list" =
        std.contract.Sequence [ js2n.array.MinItems 1, Array String ],
      "definitions.stages-config" =
        {
            configure
              | {
                exec | refs."definitions.stage-exec" | optional,
                wait-for
                  | refs."definitions.wait-for-config"
                  | Array Dyn
                  | optional,
              }
              | doc "create stage configuration"
              | optional,
            create
              | {
                exec | refs."definitions.stage-exec" | optional,
                wait-for
                  | refs."definitions.wait-for-config"
                  | Array Dyn
                  | optional,
              }
              | doc "create stage configuration"
              | optional,
            create-links
              | {
                exec | refs."definitions.stage-exec" | optional,
                wait-for
                  | refs."definitions.wait-for-config"
                  | Array Dyn
                  | optional,
              }
              | doc "create stage configuration"
              | optional,
            exit
              | {
                exec | refs."definitions.stage-exec" | optional,
                wait-for
                  | refs."definitions.wait-for-config"
                  | Array Dyn
                  | optional,
              }
              | doc "create stage configuration"
              | optional,
            healthy
              | {
                exec | refs."definitions.stage-exec" | optional,
                wait-for
                  | refs."definitions.wait-for-config"
                  | Array Dyn
                  | optional,
              }
              | doc "create stage configuration"
              | optional,
          },
      "definitions.stages-enum" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [| 'exit, 'healthy, 'configure, 'create-links, 'create |]
            ],
      "definitions.wait-for-config" =
        std.contract.Sequence
            [
              js2n.array.UniqueItems,
              Array
                {
                  node | String | doc "node name to wait for" | optional,
                  stage
                    | refs."definitions.stages-enum"
                    | String
                    | doc "phase to wait for"
                    | optional,
                }
            ],
    }
    in
  {
      mgmt
        | js2n.record.MinProperties 1
        | {
          bridge
            | String
            | doc "Set bridge to use for the management network (instead of the default generated bridge)."
            | optional,
          ipv4-gw
            | refs."definitions.ipv4-addr"
            | doc "IPv4 gateway address that will be set on a bridge used for the management network. Will be set to the first available IP address by default"
            | optional,
          ipv4-range
            | js2n.string.Matches "^.+/[0-9]{1,2}$"
            | doc "IPv4 range out of the ipv4-subnet to use for the custom management network. e.g. 172.100.100.128/25"
            | optional,
          ipv4-subnet
            | js2n.string.Matches "(^.+/[0-9]{1,2}$)|(auto)"
            | doc "IPv4 subnet to use for the custom management network. e.g. 172.100.100.0/24"
            | optional,
          ipv6-gw
            | refs."definitions.ipv6-addr"
            | doc "IPv6 gateway address that will be set on a bridge used for the management network. Will be set to the first available IP address by default"
            | optional,
          ipv6-range
            | js2n.string.Matches
              "^((:|[0-9a-fA-F]{0,4}):)([0-9a-fA-F]{0,4}:){0,5}((([0-9a-fA-F]{0,4}:)?(:|[0-9a-fA-F]{0,4}))|(((25[0-5]|2[0-4][0-9]|[01]?[0-9]?[0-9])\\.){3}(25[0-5]|2[0-4][0-9]|[01]?[0-9]?[0-9])))(%[\\p{N}\\p{L}]+)?$"
            | doc "IPv6 range out of the ipv6-subnet to use for the custom management network. e.g. 3fff:172:100:100:8000::/65"
            | optional,
          ipv6-subnet
            | js2n.string.Matches "(^.+/[0-9]{1,3}$)|(auto)"
            | doc "IPv6 subnet to use for the custom management network. e.g. 3fff:172:100:100::/64"
            | optional,
          mtu
            | refs."definitions.mtu"
            | Number
            | doc "MTU for the custom network"
            | optional,
          network | String | doc "management network name" | optional,
        }
        | doc "configuration container for management network"
        | optional,
      name | String | doc "topology name",
      prefix | String | doc "lab prefix" | optional,
      settings
        | {
          certificate-authority
            | refs."definitions.certificate-authority-config"
            | { _ | Dyn }
            | optional,
        }
        | doc "Global containerlab settings"
        | optional,
      topology
        | {
          defaults | refs."definitions.node-config" | { _ | Dyn } | optional,
          kinds
            | {
              arista_ceos
                | refs."definitions.node-config"
                | { _ | Dyn }
                | optional,
              aruba_aoscx
                | refs."definitions.node-config"
                | { _ | Dyn }
                | optional,
              bridge | refs."definitions.node-config" | { _ | Dyn } | optional,
              checkpoint_cloudguard
                | refs."definitions.node-config"
                | { _ | Dyn }
                | optional,
              cisco_8000
                | refs."definitions.node-config"
                | { _ | Dyn }
                | optional,
              cisco_c8000v
                | refs."definitions.node-config"
                | { _ | Dyn }
                | optional,
              cisco_cat9kv
                | refs."definitions.node-config"
                | { _ | Dyn }
                | optional,
              cisco_csr
                | refs."definitions.node-config"
                | { _ | Dyn }
                | optional,
              cisco_ftdv
                | refs."definitions.node-config"
                | { _ | Dyn }
                | optional,
              cisco_iol
                | refs."definitions.node-config"
                | { _ | Dyn }
                | optional,
              cisco_nxos
                | refs."definitions.node-config"
                | { _ | Dyn }
                | optional,
              cisco_xrd
                | refs."definitions.node-config"
                | { _ | Dyn }
                | optional,
              cisco_xrv
                | refs."definitions.node-config"
                | { _ | Dyn }
                | optional,
              cisco_xrv9k
                | refs."definitions.node-config"
                | { _ | Dyn }
                | optional,
              cumulus_cvx
                | refs."definitions.node-config"
                | { _ | Dyn }
                | optional,
              dell_ftosv
                | refs."definitions.node-config"
                | { _ | Dyn }
                | optional,
              dell_sonic
                | refs."definitions.node-config"
                | { _ | Dyn }
                | optional,
              ext-container
                | refs."definitions.node-config"
                | { _ | Dyn }
                | optional,
              fdio_vpp
                | refs."definitions.node-config"
                | { _ | Dyn }
                | optional,
              freebsd | refs."definitions.node-config" | { _ | Dyn } | optional,
              generic_vm
                | refs."definitions.node-config"
                | { _ | Dyn }
                | optional,
              host | refs."definitions.node-config" | { _ | Dyn } | optional,
              huawei_vrp
                | refs."definitions.node-config"
                | { _ | Dyn }
                | optional,
              ipinfusion_ocnos
                | refs."definitions.node-config"
                | { _ | Dyn }
                | optional,
              juniper_crpd
                | refs."definitions.node-config"
                | { _ | Dyn }
                | optional,
              juniper_vjunosevolved
                | refs."definitions.node-config"
                | { _ | Dyn }
                | optional,
              juniper_vjunosrouter
                | refs."definitions.node-config"
                | { _ | Dyn }
                | optional,
              juniper_vjunosswitch
                | refs."definitions.node-config"
                | { _ | Dyn }
                | optional,
              juniper_vmx
                | refs."definitions.node-config"
                | { _ | Dyn }
                | optional,
              juniper_vsrx
                | refs."definitions.node-config"
                | { _ | Dyn }
                | optional,
              keysight_ixia-c-one
                | refs."definitions.node-config"
                | { _ | Dyn }
                | optional,
              linux | refs."definitions.node-config" | { _ | Dyn } | optional,
              nokia_srlinux
                | refs."definitions.node-config"
                | { _ | Dyn }
                | optional,
              nokia_sros
                | refs."definitions.node-config"
                | { _ | Dyn }
                | optional,
              openbsd | refs."definitions.node-config" | { _ | Dyn } | optional,
              ovs-bridge
                | refs."definitions.node-config"
                | { _ | Dyn }
                | optional,
              rare | refs."definitions.node-config" | { _ | Dyn } | optional,
              sonic-vm
                | refs."definitions.node-config"
                | { _ | Dyn }
                | optional,
              sonic-vs
                | refs."definitions.node-config"
                | { _ | Dyn }
                | optional,
            }
            | doc "topology kinds configuration container"
            | optional,
          links
            | js2n.array.MinItems 1
            | Array (
              std.contract.any_of
                [
                  refs."definitions.link-config-short",
                  refs."definitions.link-type-veth",
                  refs."definitions.link-type-mgmt-net",
                  refs."definitions.link-type-macvlan",
                  refs."definitions.link-type-host",
                  refs."definitions.link-type-vxlan",
                  refs."definitions.link-type-vxlan-stitched",
                  refs."definitions.link-type-dummy"
                ]
            )
            | doc "topology links section"
            | optional,
          nodes
            | js2n.record.Record
              {
                additional = 'Some Dyn,
                patterns =
                  {
                      ".*" =
                        js2n.Nullable
                            (std.contract.Sequence
                              [ refs."definitions.node-config", { _ | Dyn } ]),
                    },
                properties = {},
                required = {},
              }
            | doc "topology nodes configuration container",
        }
        | doc "topology configuration container",
    }