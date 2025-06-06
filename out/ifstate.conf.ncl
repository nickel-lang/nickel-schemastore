# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "properties.bpf" =
        js2n.record.Record
            {
              additional = 'Some Dyn,
              patterns =
                {
                    "" =
                      {
                          object | String | doc "BPF ELF file to load",
                          section | String | doc "BPF program's section name",
                        },
                  },
              properties = {},
              required = {},
            },
      "properties.interfaces" =
        Array
            {
              addresses
                | Array String
                | doc "ip addresses of the interface"
                | optional,
              brport
                | {
                  backup_port
                    | js2n.Always
                    | doc "backup bridge port on loss carrier"
                    | optional,
                  bcast_flood | Bool | doc "flood broadcasts" | optional,
                  cost
                    | std.contract.any_of
                      [
                        js2n.Null,
                        Bool,
                        std.contract.Sequence
                          [ js2n.number.Maximum 65535, js2n.number.Minimum 1 ],
                        String,
                        { _ | Dyn },
                        Array Dyn
                      ]
                    | doc "set port cost"
                    | optional,
                  fast_leave
                    | Bool
                    | doc "enable multicast fast leave"
                    | optional,
                  guard | Bool | doc "filter BPDU packets" | optional,
                  isolated
                    | Bool
                    | doc "isolated port, can communicate only with non-isolated ports"
                    | optional,
                  learning | Bool | doc "allow MAC address learning" | optional,
                  mcast_flood | Bool | doc "flood multicasts" | optional,
                  mcast_to_ucast
                    | Bool
                    | doc "clone multicast packets into unicasts"
                    | optional,
                  mode | Bool | doc "enable hairpin mode" | optional,
                  neigh_suppress
                    | Bool
                    | doc "ARP and ND suppression"
                    | optional,
                  "priority"
                    | std.number.Integer
                    | js2n.number.Maximum 63
                    | js2n.number.Minimum 0
                    | doc "set port priority"
                    | optional,
                  protect
                    | Bool
                    | doc "prevent to become a root port"
                    | optional,
                  proxyarp | Bool | doc "enable proxy ARP" | optional,
                  proxyarp_wifi
                    | Bool
                    | doc "enable proxy ARP (IEEE 802.11 and Hotspot 2.0)"
                    | optional,
                  unicast_flood
                    | Bool
                    | doc "flood unknown unicasts"
                    | optional,
                  vlan_tunnel | Bool | doc "VLAN to tunnel mapping" | optional,
                }
                | doc "settings for bridge ports"
                | optional,
              cshaper
                | {
                  egress | String | doc "target egress bandwidth" | optional,
                  ingress | String | doc "target ingress bandwidth" | optional,
                  profile | String | doc "cshaper profile" | optional,
                }
                | doc "simple shaper setup based on the [cake](https://man7.org/linux/man-pages/man8/tc-cake.8.html) queue discipline; replaces any tc settings"
                | optional,
              ethtool | js2n.Always | optional,
              fdb
                | Array
                  {
                    dst
                      | js2n.OneOf
                        [
                          std.contract.any_of
                            [
                              js2n.Null,
                              Bool,
                              Number,
                              String,
                              { _ | Dyn },
                              Array Dyn
                            ],
                          std.contract.any_of
                            [
                              js2n.Null,
                              Bool,
                              Number,
                              String,
                              { _ | Dyn },
                              Array Dyn
                            ]
                        ]
                      | String
                      | doc "ip address of the destination VXLAN tunnel endpoint"
                      | optional,
                    flags
                      | js2n.array.Items
                        [
                          std.contract.Sequence
                            [
                              std.enum.TagOrString,
                              [| 'sticky, 'use, 'router, 'master, 'self |]
                            ]
                        ] js2n.Always
                      | optional,
                    lladdr | js2n.Always | doc "destination link layer address",
                    nhid
                      | std.number.Integer
                      | js2n.number.Minimum 1
                      | doc "ecmp nexthop group for the VXLAN device driver"
                      | optional,
                    port
                      | std.number.Integer
                      | js2n.number.Maximum 65535
                      | js2n.number.Minimum 0
                      | doc "destination port number to use to connect to the remote VXLAN tunnel endpoint"
                      | optional,
                    state
                      | js2n.array.Items
                        [
                          std.contract.Sequence
                            [ std.enum.TagOrString, [| 'noarp, 'permanent |] ]
                        ] js2n.Always
                      | optional,
                    vni
                      | std.number.Integer
                      | js2n.number.Maximum 16777215
                      | js2n.number.Minimum 0
                      | doc "virtual network identifier this entry belongs to"
                      | optional,
                  }
                | doc "forwarding database for bridge interfaces, the entries are distinct by the `lladdr` property"
                | optional,
              link
                | js2n.OneOf
                  [
                    std.contract.any_of
                      [
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Record
                          {
                            additional = 'None,
                            patterns = {},
                            properties =
                              {
                                  address = js2n.Always,
                                  group = js2n.Always,
                                  ifalias = js2n.Always,
                                  kind = js2n.Const "ifb",
                                  master = js2n.Always,
                                  mtu = js2n.Always,
                                  state = js2n.Always,
                                  txqlen = js2n.Always,
                                },
                            required = { kind = true, },
                          },
                        Array Dyn
                      ],
                    std.contract.any_of
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
                                  address = js2n.Always,
                                  bind_netns = js2n.Always,
                                  group = js2n.Always,
                                  ifalias = js2n.Always,
                                  kind = js2n.Const "ip6tnl",
                                  master = js2n.Always,
                                  mtu = js2n.Always,
                                  state = js2n.Always,
                                  txqlen = js2n.Always,
                                },
                            required = { kind = true, },
                          },
                        Array Dyn
                      ],
                    std.contract.any_of
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
                                  address = js2n.Always,
                                  group = js2n.Always,
                                  ifalias = js2n.Always,
                                  kind = js2n.Const "ipoib",
                                  master = js2n.Always,
                                  mtu = js2n.Always,
                                  state = js2n.Always,
                                  txqlen = js2n.Always,
                                },
                            required = { kind = true, },
                          },
                        Array Dyn
                      ],
                    std.contract.any_of
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
                                  address = js2n.Always,
                                  group = js2n.Always,
                                  ifalias = js2n.Always,
                                  kind = js2n.Const "ipvlan",
                                  master = js2n.Always,
                                  mtu = js2n.Always,
                                  state = js2n.Always,
                                  txqlen = js2n.Always,
                                },
                            required = { kind = true, },
                          },
                        Array Dyn
                      ],
                    std.contract.any_of
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
                                  address = js2n.Always,
                                  group = js2n.Always,
                                  ifalias = js2n.Always,
                                  kind = js2n.Const "macvlan",
                                  master = js2n.Always,
                                  mtu = js2n.Always,
                                  state = js2n.Always,
                                  txqlen = js2n.Always,
                                },
                            required = { kind = true, },
                          },
                        Array Dyn
                      ],
                    std.contract.any_of
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
                                  address = js2n.Always,
                                  group = js2n.Always,
                                  ifalias = js2n.Always,
                                  kind = js2n.Const "macvtap",
                                  master = js2n.Always,
                                  mtu = js2n.Always,
                                  state = js2n.Always,
                                  txqlen = js2n.Always,
                                },
                            required = { kind = true, },
                          },
                        Array Dyn
                      ],
                    std.contract.any_of
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
                                  address = js2n.Always,
                                  group = js2n.Always,
                                  ifalias = js2n.Always,
                                  kind = js2n.Const "team",
                                  master = js2n.Always,
                                  mtu = js2n.Always,
                                  state = js2n.Always,
                                  txqlen = js2n.Always,
                                },
                            required = { kind = true, },
                          },
                        Array Dyn
                      ],
                    std.contract.any_of
                      [
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Record
                          {
                            additional = 'None,
                            patterns = {},
                            properties =
                              {
                                  address = js2n.Always,
                                  bind_netns = js2n.Always,
                                  group = js2n.Always,
                                  ifalias = js2n.Always,
                                  kind = js2n.Const "tun",
                                  master = js2n.Always,
                                  mtu = js2n.Always,
                                  state = js2n.Always,
                                  tun_group =
                                    std.contract.any_of
                                        [ std.number.Integer, String ],
                                  tun_multi_queue =
                                    std.contract.Sequence
                                        [
                                          std.contract.any_of
                                            [ Bool, std.number.Integer ],
                                          js2n.Enum [ 0, false, 1, true ]
                                        ],
                                  tun_owner =
                                    std.contract.any_of
                                        [ std.number.Integer, String ],
                                  tun_persist =
                                    std.contract.Sequence
                                        [
                                          std.contract.any_of
                                            [ Bool, std.number.Integer ],
                                          js2n.Enum [ 0, false, 1, true ]
                                        ],
                                  tun_pi =
                                    std.contract.Sequence
                                        [
                                          std.contract.any_of
                                            [ Bool, std.number.Integer ],
                                          js2n.Enum [ 0, false, 1, true ]
                                        ],
                                  tun_type = js2n.Enum [ 1, "tun", 2, "tap" ],
                                  tun_vnet_hdr =
                                    js2n.Enum [ 0, false, 1, true ],
                                  txqlen = js2n.Always,
                                },
                            required = { kind = true, tun_type = true, },
                          },
                        Array Dyn
                      ],
                    std.contract.any_of
                      [
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Record
                          {
                            additional = 'None,
                            patterns = {},
                            properties =
                              {
                                  address = js2n.Always,
                                  group = js2n.Always,
                                  ifalias = js2n.Always,
                                  kind = js2n.Const "vrf",
                                  master = js2n.Always,
                                  mtu = js2n.Always,
                                  state = js2n.Always,
                                  txqlen = js2n.Always,
                                  vrf_table =
                                    std.contract.any_of
                                        [
                                          std.contract.Sequence
                                            [
                                              std.number.Integer,
                                              js2n.number.Maximum 4294967295,
                                              js2n.number.Minimum 1
                                            ],
                                          String
                                        ],
                                },
                            required = { kind = true, vrf_table = true, },
                          },
                        Array Dyn
                      ],
                    std.contract.any_of
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
                                  address = js2n.Always,
                                  bind_netns = js2n.Always,
                                  group = js2n.Always,
                                  ifalias = js2n.Always,
                                  kind = js2n.Const "vti",
                                  master = js2n.Always,
                                  mtu = js2n.Always,
                                  state = js2n.Always,
                                  txqlen = js2n.Always,
                                },
                            required = { kind = true, },
                          },
                        Array Dyn
                      ],
                    std.contract.any_of
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
                                  address = js2n.Always,
                                  bind_netns = js2n.Always,
                                  group = js2n.Always,
                                  ifalias = js2n.Always,
                                  kind = js2n.Const "vti6",
                                  master = js2n.Always,
                                  mtu = js2n.Always,
                                  state = js2n.Always,
                                  txqlen = js2n.Always,
                                },
                            required = { kind = true, },
                          },
                        Array Dyn
                      ],
                    std.contract.any_of
                      [
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Record
                          {
                            additional = 'None,
                            patterns = {},
                            properties =
                              {
                                  address = js2n.Always,
                                  bond_ad_lacp_rate =
                                    js2n.Enum [ 0, "slow", 1, "fast" ],
                                  bond_ad_select =
                                    js2n.Enum
                                        [
                                          0,
                                          "stable",
                                          1,
                                          "bandwidth",
                                          2,
                                          "count"
                                        ],
                                  bond_all_slaves_active = js2n.Enum [ 0, 1 ],
                                  bond_arp_all_targets =
                                    js2n.Enum [ 0, "any", 1, "all" ],
                                  bond_arp_interval =
                                    std.contract.Sequence
                                        [
                                          std.number.Integer,
                                          js2n.number.Minimum 0
                                        ],
                                  bond_arp_validate =
                                    js2n.Enum
                                        [
                                          0,
                                          "none",
                                          1,
                                          "active",
                                          2,
                                          "backup",
                                          3,
                                          "all",
                                          4,
                                          "filter",
                                          5,
                                          "filter_active",
                                          6,
                                          "filter_backup"
                                        ],
                                  bond_downdelay =
                                    std.contract.Sequence
                                        [
                                          std.number.Integer,
                                          js2n.number.Minimum 0
                                        ],
                                  bond_fail_over_mac =
                                    js2n.Enum
                                        [ 0, "none", 1, "active", 2, "follow" ],
                                  bond_lp_interval =
                                    std.contract.Sequence
                                        [
                                          std.number.Integer,
                                          js2n.number.Maximum 2147483647,
                                          js2n.number.Minimum 0
                                        ],
                                  bond_miimon =
                                    std.contract.Sequence
                                        [
                                          std.number.Integer,
                                          js2n.number.Minimum 0
                                        ],
                                  bond_min_links =
                                    std.contract.Sequence
                                        [
                                          std.number.Integer,
                                          js2n.number.Minimum 0
                                        ],
                                  bond_mode =
                                    js2n.Enum
                                        [
                                          0,
                                          "balance-rr",
                                          1,
                                          "active-backup",
                                          2,
                                          "balance-xor",
                                          3,
                                          "broadcast",
                                          4,
                                          "802.3ad",
                                          5,
                                          "balance-tlb",
                                          6,
                                          "balance-alb"
                                        ],
                                  bond_num_peer_notif =
                                    std.contract.Sequence
                                        [
                                          std.number.Integer,
                                          js2n.number.Minimum 0
                                        ],
                                  bond_packets_per_slave =
                                    std.contract.Sequence
                                        [
                                          std.number.Integer,
                                          js2n.number.Maximum 65535,
                                          js2n.number.Minimum 0
                                        ],
                                  bond_primary_reselect =
                                    js2n.Enum
                                        [
                                          0,
                                          "always",
                                          1,
                                          "better",
                                          2,
                                          "failure"
                                        ],
                                  bond_resend_igmp =
                                    std.contract.Sequence
                                        [
                                          std.number.Integer,
                                          js2n.number.Maximum 255,
                                          js2n.number.Minimum 0
                                        ],
                                  bond_tlb_dynamic_lb = js2n.Enum [ 0, 1 ],
                                  bond_updelay =
                                    std.contract.Sequence
                                        [
                                          std.number.Integer,
                                          js2n.number.Minimum 0
                                        ],
                                  bond_use_carrier = js2n.Enum [ 0, 1 ],
                                  bond_xmit_hash_policy =
                                    js2n.Enum
                                        [
                                          0,
                                          "layer2",
                                          1,
                                          "layer3+4",
                                          2,
                                          "layer2+3",
                                          3,
                                          "encap2+3",
                                          4,
                                          "encap3+4",
                                          5,
                                          "vlan+srcmac"
                                        ],
                                  group = js2n.Always,
                                  ifalias = js2n.Always,
                                  kind = js2n.Const "bond",
                                  master = js2n.Always,
                                  mtu = js2n.Always,
                                  state = js2n.Always,
                                  txqlen = js2n.Always,
                                },
                            required = { kind = true, },
                          },
                        Array Dyn
                      ],
                    std.contract.any_of
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
                                  address = js2n.Always,
                                  br_ageing_time =
                                    std.contract.Sequence
                                        [
                                          std.number.Integer,
                                          js2n.number.Minimum 0
                                        ],
                                  br_vlan_protocol =
                                    js2n.Enum
                                        [ 33024, "802.1q", 34984, "802.1ad" ],
                                  group = js2n.Always,
                                  ifalias = js2n.Always,
                                  kind = js2n.Const "bridge",
                                  master = js2n.Always,
                                  mtu = js2n.Always,
                                  state = js2n.Always,
                                  txqlen = js2n.Always,
                                },
                            required = { kind = true, },
                          },
                        Array Dyn
                      ],
                    std.contract.any_of
                      [
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Record
                          {
                            additional = 'None,
                            patterns = {},
                            properties =
                              {
                                  address = js2n.Always,
                                  businfo = js2n.string.MaxLength 32,
                                  group = js2n.Always,
                                  ifalias = js2n.Always,
                                  kind =
                                    std.contract.Sequence
                                        [
                                          std.enum.TagOrString,
                                          [| 'physical |]
                                        ],
                                  master = js2n.Always,
                                  mtu = js2n.Always,
                                  permaddr = js2n.Always,
                                  state = js2n.Always,
                                  txqlen = js2n.Always,
                                },
                            required = { kind = true, },
                          },
                        Array Dyn
                      ],
                    std.contract.any_of
                      [
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Record
                          {
                            additional = 'None,
                            patterns = {},
                            properties =
                              {
                                  address = js2n.Always,
                                  group = js2n.Always,
                                  ifalias = js2n.Always,
                                  kind = js2n.Const "dsa",
                                  link = js2n.Always,
                                  link_netns = js2n.Always,
                                  master = js2n.Always,
                                  mtu = js2n.Always,
                                  permaddr = js2n.Always,
                                  state = js2n.Always,
                                  txqlen = js2n.Always,
                                },
                            required = { kind = true, link = true, },
                          },
                        Array Dyn
                      ],
                    std.contract.any_of
                      [
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Record
                          {
                            additional = 'None,
                            patterns = {},
                            properties =
                              {
                                  address = js2n.Always,
                                  group = js2n.Always,
                                  ifalias = js2n.Always,
                                  kind =
                                    std.contract.Sequence
                                        [ std.enum.TagOrString, [| 'dummy |] ],
                                  master = js2n.Always,
                                  mtu = js2n.Always,
                                  state = js2n.Always,
                                  txqlen = js2n.Always,
                                },
                            required = { kind = true, },
                          },
                        Array Dyn
                      ],
                    std.contract.any_of
                      [
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Record
                          {
                            additional = 'None,
                            patterns = {},
                            properties =
                              {
                                  address = js2n.Always,
                                  group = js2n.Always,
                                  ifalias = js2n.Always,
                                  kind =
                                    std.contract.Sequence
                                        [
                                          std.enum.TagOrString,
                                          [| 'vxcan, 'veth |]
                                        ],
                                  master = js2n.Always,
                                  mtu = js2n.Always,
                                  peer = js2n.Always,
                                  peer_netns = js2n.Nullable String,
                                  state = js2n.Always,
                                  txqlen = js2n.Always,
                                },
                            required = { kind = true, peer = true, },
                          },
                        Array Dyn
                      ],
                    std.contract.any_of
                      [
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Record
                          {
                            additional = 'None,
                            patterns = {},
                            properties =
                              {
                                  address = js2n.Always,
                                  group = js2n.Always,
                                  ifalias = js2n.Always,
                                  kind = js2n.Const "vlan",
                                  link = js2n.Always,
                                  link_netns = js2n.Always,
                                  master = js2n.Always,
                                  mtu = js2n.Always,
                                  state = js2n.Always,
                                  txqlen = js2n.Always,
                                  vlan_id =
                                    std.contract.Sequence
                                        [
                                          std.number.Integer,
                                          js2n.number.Maximum 4094,
                                          js2n.number.Minimum 0
                                        ],
                                  vlan_protocol =
                                    js2n.Enum
                                        [ 33024, "802.1q", 34984, "802.1ad" ],
                                },
                            required =
                              { kind = true, link = true, vlan_id = true, },
                          },
                        Array Dyn
                      ],
                    std.contract.Sequence
                      [
                        std.contract.any_of
                          [
                            js2n.Null,
                            Bool,
                            Number,
                            String,
                            js2n.record.Record
                              {
                                additional = 'None,
                                patterns = {},
                                properties =
                                  {
                                      address = js2n.Always,
                                      bind_netns = js2n.Always,
                                      group = js2n.Always,
                                      ifalias = js2n.Always,
                                      kind = js2n.Const "vxlan",
                                      master = js2n.Always,
                                      mtu = js2n.Always,
                                      state = js2n.Always,
                                      txqlen = js2n.Always,
                                      vxlan_ageing =
                                        std.contract.Sequence
                                            [
                                              std.number.Integer,
                                              js2n.number.Maximum 4294967296,
                                              js2n.number.Minimum 0
                                            ],
                                      vxlan_df =
                                        js2n.Enum
                                            [
                                              0,
                                              "unset",
                                              1,
                                              "set",
                                              2,
                                              "inherit"
                                            ],
                                      vxlan_group = String,
                                      vxlan_group6 = String,
                                      vxlan_id =
                                        std.contract.Sequence
                                            [
                                              std.number.Integer,
                                              js2n.number.Maximum 16777215,
                                              js2n.number.Minimum 0
                                            ],
                                      vxlan_l2miss =
                                        std.contract.Sequence
                                            [
                                              std.number.Integer,
                                              js2n.number.Maximum 1,
                                              js2n.number.Minimum 0
                                            ],
                                      vxlan_l3miss =
                                        std.contract.Sequence
                                            [
                                              std.number.Integer,
                                              js2n.number.Maximum 1,
                                              js2n.number.Minimum 0
                                            ],
                                      vxlan_label =
                                        std.contract.Sequence
                                            [
                                              std.number.Integer,
                                              js2n.number.Maximum 1048575,
                                              js2n.number.Minimum 0
                                            ],
                                      vxlan_learning =
                                        std.contract.Sequence
                                            [
                                              std.number.Integer,
                                              js2n.number.Maximum 1,
                                              js2n.number.Minimum 0
                                            ],
                                      vxlan_limit =
                                        std.contract.Sequence
                                            [
                                              std.number.Integer,
                                              js2n.number.Maximum 4294967296,
                                              js2n.number.Minimum 0
                                            ],
                                      vxlan_link = js2n.Always,
                                      vxlan_local = String,
                                      vxlan_local6 = String,
                                      vxlan_port =
                                        std.contract.Sequence
                                            [
                                              std.number.Integer,
                                              js2n.number.Maximum 65535,
                                              js2n.number.Minimum 0
                                            ],
                                      vxlan_port_range =
                                        std.contract.any_of
                                            [
                                              js2n.Null,
                                              Bool,
                                              Number,
                                              String,
                                              js2n.record.Record
                                                {
                                                  additional = 'None,
                                                  patterns = {},
                                                  properties =
                                                    {
                                                        high =
                                                          std.contract.Sequence
                                                              [
                                                                std.number.Integer,
                                                                js2n.number.Maximum
                                                                  65535,
                                                                js2n.number.Minimum
                                                                  0
                                                              ],
                                                        low =
                                                          std.contract.Sequence
                                                              [
                                                                std.number.Integer,
                                                                js2n.number.Maximum
                                                                  65535,
                                                                js2n.number.Minimum
                                                                  0
                                                              ],
                                                      },
                                                  required =
                                                    {
                                                        high = true,
                                                        low = true,
                                                      },
                                                },
                                              Array Dyn
                                            ],
                                      vxlan_proxy =
                                        std.contract.Sequence
                                            [
                                              std.number.Integer,
                                              js2n.number.Maximum 1,
                                              js2n.number.Minimum 0
                                            ],
                                      vxlan_rsc =
                                        std.contract.Sequence
                                            [
                                              std.number.Integer,
                                              js2n.number.Maximum 1,
                                              js2n.number.Minimum 0
                                            ],
                                      vxlan_tos =
                                        std.contract.Sequence
                                            [
                                              std.number.Integer,
                                              js2n.number.Maximum 255,
                                              js2n.number.Minimum 0
                                            ],
                                      vxlan_ttl =
                                        std.contract.Sequence
                                            [
                                              std.number.Integer,
                                              js2n.number.Maximum 255,
                                              js2n.number.Minimum 0
                                            ],
                                      vxlan_ttl_inherit = Bool,
                                      vxlan_udp_csum =
                                        std.contract.Sequence
                                            [
                                              std.number.Integer,
                                              js2n.number.Maximum 1,
                                              js2n.number.Minimum 0
                                            ],
                                    },
                                required = { kind = true, vxlan_id = true, },
                              },
                            Array Dyn
                          ],
                        std.contract.any_of
                          [
                            js2n.OneOf
                              [
                                std.contract.any_of
                                  [
                                    js2n.Null,
                                    Bool,
                                    Number,
                                    String,
                                    js2n.record.Required [ "vxlan_group" ],
                                    Array Dyn
                                  ],
                                std.contract.any_of
                                  [
                                    js2n.Null,
                                    Bool,
                                    Number,
                                    String,
                                    js2n.record.Required [ "vxlan_local" ],
                                    Array Dyn
                                  ],
                                std.contract.any_of
                                  [
                                    js2n.Null,
                                    Bool,
                                    Number,
                                    String,
                                    js2n.record.Required
                                      [ "vxlan_group", "vxlan_local" ],
                                    Array Dyn
                                  ],
                                std.contract.any_of
                                  [
                                    js2n.Null,
                                    Bool,
                                    Number,
                                    String,
                                    js2n.record.Required [ "vxlan_group6" ],
                                    Array Dyn
                                  ],
                                std.contract.any_of
                                  [
                                    js2n.Null,
                                    Bool,
                                    Number,
                                    String,
                                    js2n.record.Required [ "vxlan_local6" ],
                                    Array Dyn
                                  ],
                                std.contract.any_of
                                  [
                                    js2n.Null,
                                    Bool,
                                    Number,
                                    String,
                                    js2n.record.Required
                                      [ "vxlan_group6", "vxlan_local6" ],
                                    Array Dyn
                                  ]
                              ],
                            std.contract.not
                              (std.contract.any_of
                                [
                                  js2n.Null,
                                  Bool,
                                  Number,
                                  String,
                                  js2n.record.Required
                                    [
                                      "vxlan_group",
                                      "vxlan_group6",
                                      "vxlan_local",
                                      "vxlan_local6"
                                    ],
                                  Array Dyn
                                ])
                          ]
                      ],
                    std.contract.any_of
                      [
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Record
                          {
                            additional = 'None,
                            patterns = {},
                            properties =
                              {
                                  address = js2n.Always,
                                  bind_netns = js2n.Always,
                                  group = js2n.Always,
                                  ifalias = js2n.Always,
                                  ipip_local = js2n.Always,
                                  ipip_remote = js2n.Always,
                                  kind = js2n.Const "ipip",
                                  master = js2n.Always,
                                  mtu = js2n.Always,
                                  state = js2n.Always,
                                  txqlen = js2n.Always,
                                },
                            required =
                              {
                                  ipip_local = true,
                                  ipip_remote = true,
                                  kind = true,
                                },
                          },
                        Array Dyn
                      ],
                    std.contract.any_of
                      [
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Record
                          {
                            additional = 'None,
                            patterns = {},
                            properties =
                              {
                                  address = js2n.Always,
                                  bind_netns = js2n.Always,
                                  group = js2n.Always,
                                  ifalias = js2n.Always,
                                  kind = js2n.Const "sit",
                                  master = js2n.Always,
                                  mtu = js2n.Always,
                                  sit_local = js2n.Always,
                                  sit_remote = js2n.Always,
                                  state = js2n.Always,
                                  txqlen = js2n.Always,
                                },
                            required =
                              {
                                  kind = true,
                                  sit_local = true,
                                  sit_remote = true,
                                },
                          },
                        Array Dyn
                      ],
                    std.contract.any_of
                      [
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Record
                          {
                            additional = 'None,
                            patterns = {},
                            properties =
                              {
                                  address = js2n.Always,
                                  bind_netns = js2n.Always,
                                  gre_link = js2n.Always,
                                  gre_local = js2n.Always,
                                  gre_remote = js2n.Always,
                                  group = js2n.Always,
                                  ifalias = js2n.Always,
                                  kind =
                                    std.contract.Sequence
                                        [
                                          std.enum.TagOrString,
                                          [| 'gretap, 'gre |]
                                        ],
                                  master = js2n.Always,
                                  mtu = js2n.Always,
                                  state = js2n.Always,
                                  txqlen = js2n.Always,
                                },
                            required =
                              {
                                  gre_local = true,
                                  gre_remote = true,
                                  kind = true,
                                },
                          },
                        Array Dyn
                      ],
                    std.contract.any_of
                      [
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Record
                          {
                            additional = 'None,
                            patterns = {},
                            properties =
                              {
                                  address = js2n.Always,
                                  bind_netns = js2n.Always,
                                  group = js2n.Always,
                                  ifalias = js2n.Always,
                                  ip6gre_link = js2n.Always,
                                  ip6gre_local = js2n.Always,
                                  ip6gre_remote = js2n.Always,
                                  kind =
                                    std.contract.Sequence
                                        [
                                          std.enum.TagOrString,
                                          [| 'ip6gretap, 'ip6gre |]
                                        ],
                                  master = js2n.Always,
                                  mtu = js2n.Always,
                                  state = js2n.Always,
                                  txqlen = js2n.Always,
                                },
                            required =
                              {
                                  ip6gre_local = true,
                                  ip6gre_remote = true,
                                  kind = true,
                                },
                          },
                        Array Dyn
                      ],
                    std.contract.any_of
                      [
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Record
                          {
                            additional = 'None,
                            patterns = {},
                            properties =
                              {
                                  address = js2n.Always,
                                  bind_netns = js2n.Always,
                                  geneve_id =
                                    std.contract.Sequence
                                        [
                                          std.number.Integer,
                                          js2n.number.Maximum 16777215,
                                          js2n.number.Minimum 0
                                        ],
                                  geneve_remote = js2n.Always,
                                  group = js2n.Always,
                                  ifalias = js2n.Always,
                                  kind = js2n.Const "geneve",
                                  master = js2n.Always,
                                  mtu = js2n.Always,
                                  state = js2n.Always,
                                  txqlen = js2n.Always,
                                },
                            required =
                              {
                                  geneve_id = true,
                                  geneve_remote = true,
                                  kind = true,
                                },
                          },
                        Array Dyn
                      ],
                    std.contract.any_of
                      [
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Record
                          {
                            additional = 'None,
                            patterns = {},
                            properties =
                              {
                                  address = js2n.Always,
                                  bind_netns = js2n.Always,
                                  geneve_id =
                                    std.contract.Sequence
                                        [
                                          std.number.Integer,
                                          js2n.number.Maximum 16777215,
                                          js2n.number.Minimum 0
                                        ],
                                  geneve_remote6 = js2n.Always,
                                  group = js2n.Always,
                                  ifalias = js2n.Always,
                                  kind = js2n.Const "geneve",
                                  master = js2n.Always,
                                  mtu = js2n.Always,
                                  state = js2n.Always,
                                  txqlen = js2n.Always,
                                },
                            required =
                              {
                                  geneve_id = true,
                                  geneve_remote6 = true,
                                  kind = true,
                                },
                          },
                        Array Dyn
                      ],
                    std.contract.any_of
                      [
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Record
                          {
                            additional = 'None,
                            patterns = {},
                            properties =
                              {
                                  address = js2n.Always,
                                  bind_netns = js2n.Always,
                                  group = js2n.Always,
                                  ifalias = js2n.Always,
                                  kind = js2n.Const "wireguard",
                                  master = js2n.Always,
                                  mtu = js2n.Always,
                                  state = js2n.Always,
                                  txqlen = js2n.Always,
                                },
                            required = { kind = true, },
                          },
                        Array Dyn
                      ],
                    std.contract.any_of
                      [
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Record
                          {
                            additional = 'None,
                            patterns = {},
                            properties =
                              {
                                  address = js2n.Always,
                                  bind_netns = js2n.Always,
                                  group = js2n.Always,
                                  ifalias = js2n.Always,
                                  kind = js2n.Const "xfrm",
                                  master = js2n.Always,
                                  mtu = js2n.Always,
                                  state = js2n.Always,
                                  txqlen = js2n.Always,
                                  xfrm_if_id =
                                    std.contract.Sequence
                                        [
                                          std.number.Integer,
                                          js2n.number.Maximum 4294967295,
                                          js2n.number.Minimum 0
                                        ],
                                  xfrm_link = js2n.Always,
                                },
                            required = { kind = true, xfrm_if_id = true, },
                          },
                        Array Dyn
                      ]
                  ]
                | js2n.record.Required [ "kind" ]
                | doc "link settings of the interface",
              name | js2n.Always | doc "name of the interface",
              neighbours
                | Array
                  {
                    dst | String | doc "protocol address of the neighbour",
                    lladdr
                      | js2n.Always
                      | doc "link layer address of the neighbour"
                      | optional,
                  }
                | doc "static ARP or NDISC cache entries"
                | optional,
              sysctl
                | {
                  ipv4 | js2n.Always | optional,
                  ipv6 | js2n.Always | optional,
                  mpls | js2n.Always | optional,
                }
                | doc "interface sysctl settings"
                | optional,
              tc
                | {
                  filter
                    | Array (
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
                                  js2n.record.Record
                                    {
                                      additional = 'None,
                                      patterns = {},
                                      properties =
                                        {
                                            action = js2n.Always,
                                            kind =
                                              std.contract.Sequence
                                                  [
                                                    std.enum.TagOrString,
                                                    [| 'basic |]
                                                  ],
                                            "match" = { _ | Dyn },
                                            prio = js2n.Always,
                                            protocol = js2n.Always,
                                          },
                                      required = {},
                                    },
                                  Array Dyn
                                ],
                              std.contract.Sequence
                                [
                                  std.contract.any_of
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
                                                action = js2n.Always,
                                                addend =
                                                  std.contract.Sequence
                                                      [
                                                        std.number.Integer,
                                                        js2n.number.Maximum
                                                          4294967295,
                                                        js2n.number.Minimum 0
                                                      ],
                                                and =
                                                  std.contract.Sequence
                                                      [
                                                        std.number.Integer,
                                                        js2n.number.Maximum
                                                          4294967295,
                                                        js2n.number.Minimum 0
                                                      ],
                                                baseclass =
                                                  std.contract.Sequence
                                                      [
                                                        std.number.Integer,
                                                        js2n.number.Maximum
                                                          65535,
                                                        js2n.number.Minimum 0
                                                      ],
                                                divisor =
                                                  std.contract.Sequence
                                                      [
                                                        std.number.Integer,
                                                        js2n.number.Maximum
                                                          4294967295,
                                                        js2n.number.Minimum 0
                                                      ],
                                                kind =
                                                  std.contract.Sequence
                                                      [
                                                        std.enum.TagOrString,
                                                        [| 'flow |]
                                                      ],
                                                or =
                                                  std.contract.Sequence
                                                      [
                                                        std.number.Integer,
                                                        js2n.number.Maximum
                                                          4294967295,
                                                        js2n.number.Minimum 0
                                                      ],
                                                prio = js2n.Always,
                                                protocol = js2n.Always,
                                                rshift =
                                                  std.contract.Sequence
                                                      [
                                                        std.number.Integer,
                                                        js2n.number.Maximum
                                                          4294967295,
                                                        js2n.number.Minimum 0
                                                      ],
                                                xor =
                                                  std.contract.Sequence
                                                      [
                                                        std.number.Integer,
                                                        js2n.number.Maximum
                                                          4294967295,
                                                        js2n.number.Minimum 0
                                                      ],
                                              },
                                          required = {},
                                        },
                                      Array Dyn
                                    ],
                                  js2n.OneOf
                                    [
                                      std.contract.any_of
                                        [
                                          js2n.Null,
                                          Bool,
                                          Number,
                                          String,
                                          std.contract.Sequence
                                            [
                                              js2n.record.Record
                                                {
                                                  additional = 'Some Dyn,
                                                  patterns = {},
                                                  properties =
                                                    {
                                                        key =
                                                          std.contract.Sequence
                                                              [
                                                                std.enum.TagOrString,
                                                                [|
                                                                  'rxhash,
                                                                  'vlan-tag,
                                                                  'sk-gid,
                                                                  'sk-uid,
                                                                  'rt-classid,
                                                                  'nfct-proto-dst,
                                                                  'nfct-proto-src,
                                                                  'nfct-dst,
                                                                  'nfct-src,
                                                                  'nfct,
                                                                  'mark,
                                                                  '"priority",
                                                                  'iif,
                                                                  'proto-dst,
                                                                  'proto-src,
                                                                  'proto,
                                                                  'dst,
                                                                  'src
                                                                |]
                                                              ],
                                                        mode =
                                                          std.contract.Sequence
                                                              [
                                                                std.enum.TagOrString,
                                                                [| 'map |]
                                                              ],
                                                      },
                                                  required =
                                                    {
                                                        key = true,
                                                        mode = true,
                                                      },
                                                },
                                              js2n.record.Required [ "kind" ]
                                            ],
                                          Array Dyn
                                        ],
                                      std.contract.any_of
                                        [
                                          js2n.Null,
                                          Bool,
                                          Number,
                                          String,
                                          std.contract.Sequence
                                            [
                                              js2n.record.Record
                                                {
                                                  additional = 'Some Dyn,
                                                  patterns = {},
                                                  properties =
                                                    {
                                                        keys =
                                                          js2n.array.ArrayOf
                                                              (std.contract.Sequence
                                                                [
                                                                  std.enum.TagOrString,
                                                                  [|
                                                                    'rxhash,
                                                                    'vlan-tag,
                                                                    'sk-gid,
                                                                    'sk-uid,
                                                                    'rt-classid,
                                                                    'nfct-proto-dst,
                                                                    'nfct-proto-src,
                                                                    'nfct-dst,
                                                                    'nfct-src,
                                                                    'nfct,
                                                                    'mark,
                                                                    '"priority",
                                                                    'iif,
                                                                    'proto-dst,
                                                                    'proto-src,
                                                                    'proto,
                                                                    'dst,
                                                                    'src
                                                                  |]
                                                                ]),
                                                        mode =
                                                          std.contract.Sequence
                                                              [
                                                                std.enum.TagOrString,
                                                                [| 'hash |]
                                                              ],
                                                        perturb =
                                                          std.contract.Sequence
                                                              [
                                                                std.number.Integer,
                                                                js2n.number.Maximum
                                                                  294967295,
                                                                js2n.number.Minimum
                                                                  0
                                                              ],
                                                      },
                                                  required =
                                                    {
                                                        keys = true,
                                                        mode = true,
                                                      },
                                                },
                                              js2n.record.Required [ "kind" ]
                                            ],
                                          Array Dyn
                                        ]
                                    ]
                                ],
                              std.contract.any_of
                                [
                                  js2n.Null,
                                  Bool,
                                  Number,
                                  String,
                                  js2n.record.Record
                                    {
                                      additional = 'None,
                                      patterns = {},
                                      properties =
                                        {
                                            action = js2n.Always,
                                            handle =
                                              std.contract.Sequence
                                                  [
                                                    std.number.Integer,
                                                    js2n.number.Minimum 0
                                                  ],
                                            kind =
                                              std.contract.Sequence
                                                  [
                                                    std.enum.TagOrString,
                                                    [| 'fw |]
                                                  ],
                                            prio = js2n.Always,
                                            protocol = js2n.Always,
                                          },
                                      required =
                                        { handle = true, kind = true, },
                                    },
                                  Array Dyn
                                ],
                              std.contract.any_of
                                [
                                  js2n.Null,
                                  Bool,
                                  Number,
                                  String,
                                  js2n.record.Record
                                    {
                                      additional = 'None,
                                      patterns = {},
                                      properties =
                                        {
                                            action = js2n.Always,
                                            classid =
                                              std.contract.Sequence
                                                  [
                                                    std.number.Integer,
                                                    js2n.number.Maximum
                                                      4294967295,
                                                    js2n.number.Minimum 0
                                                  ],
                                            flags =
                                              std.contract.Sequence
                                                  [
                                                    std.number.Integer,
                                                    js2n.number.Maximum
                                                      4294967295,
                                                    js2n.number.Minimum 0
                                                  ],
                                            kind =
                                              std.contract.Sequence
                                                  [
                                                    std.enum.TagOrString,
                                                    [| 'matchall |]
                                                  ],
                                            parent = js2n.Always,
                                            prio = js2n.Always,
                                            protocol = js2n.Always,
                                          },
                                      required = {},
                                    },
                                  Array Dyn
                                ]
                            ],
                          {
                            kind
                              | std.enum.TagOrString
                              | [| 'matchall, 'fw, 'flow, 'basic |]
                              | doc "filter type",
                            ..
                          }
                        ]
                    )
                    | doc "filter used by qdiscs"
                    | optional,
                  ingress
                    | Bool
                    | doc "enable the ingress qdisc for policing and shaping in ingress"
                    | optional,
                  qdisc
                    | js2n.Always
                    | doc "root queueing disciplines"
                    | optional,
                }
                | doc "settings for traffic control"
                | optional,
              vrrp | js2n.Always | optional,
              wireguard
                | {
                  fwmark
                    | std.number.Integer
                    | js2n.number.Maximum 4294967295
                    | js2n.number.Minimum 0
                    | doc "fwmark for outgoing packets"
                    | optional,
                  listen_port
                    | std.number.Integer
                    | js2n.number.Maximum 65535
                    | js2n.number.Minimum 0
                    | doc "port for listening"
                    | optional,
                  peers
                    | Array
                      {
                        allowedips
                          | Array String
                          | doc "list of prefixes in CIDR notation"
                          | optional,
                        endpoint
                          | String
                          | doc "initial endpoint IP or hostname"
                          | optional,
                        persistent_keepalive_interval
                          | std.number.Integer
                          | js2n.number.Maximum 65535
                          | js2n.number.Minimum 0
                          | doc "keepalive interval seconds"
                          | optional,
                        preshared_key
                          | String
                          | doc "preshared key for post-quantum resistance (consider to use the `!include` tag to read the key from file)"
                          | optional,
                        public_key | String | doc "the peer's public key",
                      }
                    | doc "list of peer definitions"
                    | optional,
                  private_key
                    | String
                    | doc "local private key (consider to use the `!include` tag to read the key from file)",
                }
                | doc "settings for WireGuard interfaces"
                | optional,
              xdp
                | js2n.OneOf
                  [
                    js2n.Enum [ false ],
                    js2n.record.Record
                      {
                        additional = 'None,
                        patterns = {},
                        properties = { mode = js2n.Always, pinned = String, },
                        required = { pinned = true, },
                      },
                    js2n.record.Record
                      {
                        additional = 'None,
                        patterns = {},
                        properties = { bpf = String, mode = js2n.Always, },
                        required = { bpf = true, },
                      }
                  ]
                | doc "settings for XDP (\"eXpress Data Path\") BPF program"
                | optional,
            },
      "properties.options" =
        {
            sysctl
              | {
                all
                  | {
                    ipv4 | js2n.Always | optional,
                    ipv6 | js2n.Always | optional,
                  }
                  | doc "overrides [per interface sysctl settings](https://www.kernel.org/doc/Documentation/networking/ip-sysctl.txt) in `/proc/sys/net/ipv*/conf/all/`"
                  | optional,
                "default"
                  | {
                    ipv4 | js2n.Always | optional,
                    ipv6 | js2n.Always | optional,
                  }
                  | doc "default [per interface sysctl settings](https://www.kernel.org/doc/Documentation/networking/ip-sysctl.txt) in `/proc/sys/net/ipv*/conf/default/`"
                  | optional,
                mpls | js2n.Always | optional,
              }
              | doc "global sysctl settings"
              | optional,
          },
      "properties.routing" =
        {
            routes
              | Array
                {
                  dev
                    | std.contract.any_of [ std.number.Integer, String ]
                    | doc "the output device name"
                    | optional,
                  preference
                    | std.number.Integer
                    | js2n.number.Maximum 4294967295
                    | js2n.number.Minimum 0
                    | doc "preference of the route"
                    | optional,
                  proto
                    | std.contract.any_of [ std.number.Integer, String ]
                    | doc "the routing protool identifier of this route"
                    | optional,
                  realm
                    | std.contract.any_of [ std.number.Integer, String ]
                    | doc "the realm to which this route is assigned"
                    | optional,
                  scope
                    | std.contract.any_of [ std.number.Integer, String ]
                    | doc "the scope of the destinations covered by the route prefix"
                    | optional,
                  src
                    | js2n.OneOf
                      [
                        std.contract.any_of
                          [
                            js2n.Null,
                            Bool,
                            Number,
                            String,
                            { _ | Dyn },
                            Array Dyn
                          ],
                        std.contract.any_of
                          [
                            js2n.Null,
                            Bool,
                            Number,
                            String,
                            { _ | Dyn },
                            Array Dyn
                          ]
                      ]
                    | String
                    | doc "the source address to prefer"
                    | optional,
                  table
                    | std.contract.any_of [ std.number.Integer, String ]
                    | doc "the table to add this route to"
                    | optional,
                  to | String | doc "the destination prefix of the route",
                  type
                    | std.enum.TagOrString
                    | [|
                      'xresolve,
                      'nat,
                      'throw,
                      'prohibit,
                      'unreachable,
                      'blackhole,
                      'multicast,
                      'anycast,
                      'broadcast,
                      'local,
                      'unicast
                    |]
                    | doc "the type of this route"
                    | optional,
                  via
                    | js2n.OneOf
                      [
                        std.contract.any_of
                          [
                            js2n.Null,
                            Bool,
                            Number,
                            String,
                            { _ | Dyn },
                            Array Dyn
                          ],
                        std.contract.any_of
                          [
                            js2n.Null,
                            Bool,
                            Number,
                            String,
                            { _ | Dyn },
                            Array Dyn
                          ]
                      ]
                    | String
                    | doc "address of the nexthop router"
                    | optional,
                  vrrp | js2n.Always | optional,
                }
              | optional,
            rules
              | Array (
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
                              properties = { action = js2n.Const "to_tbl", },
                              required = {},
                            },
                          Array Dyn
                        ])
                      (std.contract.any_of
                        [
                          js2n.Null,
                          Bool,
                          Number,
                          String,
                          js2n.record.Required [ "priority", "table" ],
                          Array Dyn
                        ])
                      (std.contract.any_of
                        [
                          js2n.Null,
                          Bool,
                          Number,
                          String,
                          js2n.record.Required [ "priority" ],
                          Array Dyn
                        ]),
                    {
                      action
                        | std.enum.TagOrString
                        | [| 'prohibit, 'unreachable, 'blackhole, 'to_tbl |]
                        | doc "the type of this rule"
                        | optional,
                      from
                        | String
                        | doc "select the source prefix to match"
                        | optional,
                      fwmark
                        | std.number.Integer
                        | doc "select the *fwmark* value to match"
                        | optional,
                      iif
                        | String
                        | doc "select the incoming device to match"
                        | optional,
                      ipproto
                        | std.contract.any_of [ std.number.Integer, String ]
                        | doc "select the ip protocol to match"
                        | optional,
                      oif
                        | String
                        | doc "select the outgoing device to match"
                        | optional,
                      "priority"
                        | std.number.Integer
                        | js2n.number.Maximum 4294967295
                        | js2n.number.Minimum 0
                        | doc "the priority of this rule"
                        | optional,
                      proto
                        | std.contract.any_of [ std.number.Integer, String ]
                        | doc "routing protocol number (`/etc/iproute2/rt_protos`)"
                        | optional,
                      table
                        | std.contract.any_of
                          [
                            std.contract.Sequence
                              [
                                std.number.Integer,
                                js2n.number.Maximum 255,
                                js2n.number.Minimum 0
                              ],
                            String
                          ]
                        | optional,
                      to
                        | String
                        | doc "select the destination prefix to match"
                        | optional,
                      vrrp | js2n.Always | optional,
                    }
                  ]
              )
              | optional,
          },
    }
    in
  {
      bpf
        | js2n.record.Record
          {
            additional = 'Some Dyn,
            patterns =
              {
                  "" =
                    {
                        object | String | doc "BPF ELF file to load",
                        section | String | doc "BPF program's section name",
                      },
                },
            properties = {},
            required = {},
          }
        | doc "load and pin eBPF programs (i.e. for XDP)"
        | optional,
      cshaper
        | js2n.record.Record
          {
            additional = 'Some Dyn,
            patterns =
              {
                  "" =
                    {
                        egress_qdisc
                          | std.contract.any_of
                            [
                              js2n.Null,
                              Bool,
                              { _ | Dyn },
                              Array Dyn,
                              Number,
                              String
                            ],
                        ingress_ifname
                          | {
                            replace | String | doc "replace pattern by string",
                            search | String | doc "pattern to search",
                          }
                          | doc "build a ifb ifname using a regex on the ifname",
                        ingress_qdisc
                          | std.contract.any_of
                            [
                              js2n.Null,
                              Bool,
                              { _ | Dyn },
                              Array Dyn,
                              Number,
                              String
                            ],
                      },
                },
            properties = {},
            required = {},
          }
        | js2n.record.Required [ "default" ]
        | doc "cshaper templates"
        | optional,
      defaults
        | Array
          {
            clear_addresses
              | Bool
              | doc "implicit remove all ip addresses"
              | optional,
            clear_fdb
              | Bool
              | doc "implicit remove all permanent fdb entries"
              | optional,
            clear_neighbours
              | Bool
              | doc "implicit remove all permanent ip neighbours"
              | optional,
            clear_tc | Bool | doc "implicit remove all tc qdiscs" | optional,
            ethtool
              | std.contract.any_of
                [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
              | optional,
            link
              | {
                group
                  | std.contract.any_of
                    [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
                  | optional,
                ifalias
                  | std.contract.any_of
                    [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
                  | optional,
                link
                  | std.contract.any_of
                    [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
                  | optional,
                link_netns
                  | std.contract.any_of
                    [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
                  | optional,
                master
                  | std.contract.any_of
                    [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
                  | optional,
                mtu
                  | std.contract.any_of
                    [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
                  | optional,
                state
                  | std.contract.any_of
                    [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
                  | optional,
                txqlen
                  | std.contract.any_of
                    [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
                  | optional,
              }
              | doc "implicit link settings for matching interfaces"
              | optional,
            "match"
              | Array
                {
                  ifname
                    | String
                    | doc "regex to match interface name"
                    | optional,
                  kind | String | doc "regex to match link type" | optional,
                }
              | doc "apply default settings for interfaces  matching any list item (OR)",
          }
        | doc "default settings for configured interfaces"
        | optional,
      ignore
        | {
          fdb
            | std.contract.any_of
              [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
            | optional,
          fdb_builtin
            | std.contract.any_of
              [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
            | optional,
          ifname
            | std.contract.any_of
              [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
            | optional,
          ifname_builtin
            | std.contract.any_of
              [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
            | optional,
          ipaddr
            | std.contract.any_of
              [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
            | optional,
          ipaddr_builtin
            | std.contract.any_of
              [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
            | optional,
          ipaddr_dynamic
            | Bool
            | doc "ignore dynamic assigned ip addresses"
            | optional,
          netns
            | Array String
            | doc "netns namespaces matching this list of regex will be ignored"
            | optional,
          routes
            | std.contract.any_of
              [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
            | optional,
          routes_builtin
            | std.contract.any_of
              [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
            | optional,
          rules
            | std.contract.any_of
              [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
            | optional,
          rules_builtin
            | std.contract.any_of
              [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
            | optional,
        }
        | doc "ignore patterns to skip interface, ip address or routing objects"
        | optional,
      interfaces
        | Array
          {
            addresses
              | Array String
              | doc "ip addresses of the interface"
              | optional,
            brport
              | {
                backup_port
                  | std.contract.any_of
                    [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
                  | doc "backup bridge port on loss carrier"
                  | optional,
                bcast_flood | Bool | doc "flood broadcasts" | optional,
                cost
                  | std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      std.contract.Sequence
                        [ js2n.number.Maximum 65535, js2n.number.Minimum 1 ],
                      String,
                      { _ | Dyn },
                      Array Dyn
                    ]
                  | doc "set port cost"
                  | optional,
                fast_leave
                  | Bool
                  | doc "enable multicast fast leave"
                  | optional,
                guard | Bool | doc "filter BPDU packets" | optional,
                isolated
                  | Bool
                  | doc "isolated port, can communicate only with non-isolated ports"
                  | optional,
                learning | Bool | doc "allow MAC address learning" | optional,
                mcast_flood | Bool | doc "flood multicasts" | optional,
                mcast_to_ucast
                  | Bool
                  | doc "clone multicast packets into unicasts"
                  | optional,
                mode | Bool | doc "enable hairpin mode" | optional,
                neigh_suppress | Bool | doc "ARP and ND suppression" | optional,
                "priority"
                  | std.number.Integer
                  | js2n.number.Maximum 63
                  | js2n.number.Minimum 0
                  | doc "set port priority"
                  | optional,
                protect | Bool | doc "prevent to become a root port" | optional,
                proxyarp | Bool | doc "enable proxy ARP" | optional,
                proxyarp_wifi
                  | Bool
                  | doc "enable proxy ARP (IEEE 802.11 and Hotspot 2.0)"
                  | optional,
                unicast_flood | Bool | doc "flood unknown unicasts" | optional,
                vlan_tunnel | Bool | doc "VLAN to tunnel mapping" | optional,
              }
              | doc "settings for bridge ports"
              | optional,
            cshaper
              | {
                egress | String | doc "target egress bandwidth" | optional,
                ingress | String | doc "target ingress bandwidth" | optional,
                profile | String | doc "cshaper profile" | optional,
              }
              | doc "simple shaper setup based on the [cake](https://man7.org/linux/man-pages/man8/tc-cake.8.html) queue discipline; replaces any tc settings"
              | optional,
            ethtool
              | std.contract.any_of
                [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
              | optional,
            fdb
              | Array
                {
                  dst
                    | js2n.OneOf
                      [
                        std.contract.any_of
                          [
                            js2n.Null,
                            Bool,
                            Number,
                            String,
                            { _ | Dyn },
                            Array Dyn
                          ],
                        std.contract.any_of
                          [
                            js2n.Null,
                            Bool,
                            Number,
                            String,
                            { _ | Dyn },
                            Array Dyn
                          ]
                      ]
                    | String
                    | doc "ip address of the destination VXLAN tunnel endpoint"
                    | optional,
                  flags
                    | js2n.array.Items
                      [
                        std.contract.Sequence
                          [
                            std.enum.TagOrString,
                            [| 'sticky, 'use, 'router, 'master, 'self |]
                          ]
                      ] js2n.Always
                    | optional,
                  lladdr
                    | std.contract.any_of
                      [
                        js2n.Null,
                        Bool,
                        { _ | Dyn },
                        Array Dyn,
                        Number,
                        String
                      ]
                    | doc "destination link layer address",
                  nhid
                    | std.number.Integer
                    | js2n.number.Minimum 1
                    | doc "ecmp nexthop group for the VXLAN device driver"
                    | optional,
                  port
                    | std.number.Integer
                    | js2n.number.Maximum 65535
                    | js2n.number.Minimum 0
                    | doc "destination port number to use to connect to the remote VXLAN tunnel endpoint"
                    | optional,
                  state
                    | js2n.array.Items
                      [
                        std.contract.Sequence
                          [ std.enum.TagOrString, [| 'noarp, 'permanent |] ]
                      ] js2n.Always
                    | optional,
                  vni
                    | std.number.Integer
                    | js2n.number.Maximum 16777215
                    | js2n.number.Minimum 0
                    | doc "virtual network identifier this entry belongs to"
                    | optional,
                }
              | doc "forwarding database for bridge interfaces, the entries are distinct by the `lladdr` property"
              | optional,
            link
              | js2n.OneOf
                [
                  std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      js2n.record.Record
                        {
                          additional = 'None,
                          patterns = {},
                          properties =
                            {
                                address =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                group =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                ifalias =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                kind = js2n.Const "ifb",
                                master =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                mtu =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                state =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                txqlen =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                              },
                          required = { kind = true, },
                        },
                      Array Dyn
                    ],
                  std.contract.any_of
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
                                address =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                bind_netns =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                group =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                ifalias =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                kind = js2n.Const "ip6tnl",
                                master =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                mtu =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                state =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                txqlen =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                              },
                          required = { kind = true, },
                        },
                      Array Dyn
                    ],
                  std.contract.any_of
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
                                address =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                group =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                ifalias =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                kind = js2n.Const "ipoib",
                                master =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                mtu =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                state =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                txqlen =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                              },
                          required = { kind = true, },
                        },
                      Array Dyn
                    ],
                  std.contract.any_of
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
                                address =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                group =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                ifalias =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                kind = js2n.Const "ipvlan",
                                master =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                mtu =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                state =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                txqlen =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                              },
                          required = { kind = true, },
                        },
                      Array Dyn
                    ],
                  std.contract.any_of
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
                                address =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                group =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                ifalias =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                kind = js2n.Const "macvlan",
                                master =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                mtu =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                state =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                txqlen =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                              },
                          required = { kind = true, },
                        },
                      Array Dyn
                    ],
                  std.contract.any_of
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
                                address =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                group =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                ifalias =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                kind = js2n.Const "macvtap",
                                master =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                mtu =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                state =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                txqlen =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                              },
                          required = { kind = true, },
                        },
                      Array Dyn
                    ],
                  std.contract.any_of
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
                                address =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                group =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                ifalias =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                kind = js2n.Const "team",
                                master =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                mtu =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                state =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                txqlen =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                              },
                          required = { kind = true, },
                        },
                      Array Dyn
                    ],
                  std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      js2n.record.Record
                        {
                          additional = 'None,
                          patterns = {},
                          properties =
                            {
                                address =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                bind_netns =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                group =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                ifalias =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                kind = js2n.Const "tun",
                                master =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                mtu =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                state =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                tun_group =
                                  std.contract.any_of
                                      [ std.number.Integer, String ],
                                tun_multi_queue =
                                  std.contract.Sequence
                                      [
                                        std.contract.any_of
                                          [ Bool, std.number.Integer ],
                                        js2n.Enum [ 0, false, 1, true ]
                                      ],
                                tun_owner =
                                  std.contract.any_of
                                      [ std.number.Integer, String ],
                                tun_persist =
                                  std.contract.Sequence
                                      [
                                        std.contract.any_of
                                          [ Bool, std.number.Integer ],
                                        js2n.Enum [ 0, false, 1, true ]
                                      ],
                                tun_pi =
                                  std.contract.Sequence
                                      [
                                        std.contract.any_of
                                          [ Bool, std.number.Integer ],
                                        js2n.Enum [ 0, false, 1, true ]
                                      ],
                                tun_type = js2n.Enum [ 1, "tun", 2, "tap" ],
                                tun_vnet_hdr = js2n.Enum [ 0, false, 1, true ],
                                txqlen =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                              },
                          required = { kind = true, tun_type = true, },
                        },
                      Array Dyn
                    ],
                  std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      js2n.record.Record
                        {
                          additional = 'None,
                          patterns = {},
                          properties =
                            {
                                address =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                group =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                ifalias =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                kind = js2n.Const "vrf",
                                master =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                mtu =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                state =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                txqlen =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                vrf_table =
                                  std.contract.any_of
                                      [
                                        std.contract.Sequence
                                          [
                                            std.number.Integer,
                                            js2n.number.Maximum 4294967295,
                                            js2n.number.Minimum 1
                                          ],
                                        String
                                      ],
                              },
                          required = { kind = true, vrf_table = true, },
                        },
                      Array Dyn
                    ],
                  std.contract.any_of
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
                                address =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                bind_netns =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                group =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                ifalias =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                kind = js2n.Const "vti",
                                master =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                mtu =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                state =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                txqlen =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                              },
                          required = { kind = true, },
                        },
                      Array Dyn
                    ],
                  std.contract.any_of
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
                                address =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                bind_netns =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                group =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                ifalias =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                kind = js2n.Const "vti6",
                                master =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                mtu =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                state =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                txqlen =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                              },
                          required = { kind = true, },
                        },
                      Array Dyn
                    ],
                  std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      js2n.record.Record
                        {
                          additional = 'None,
                          patterns = {},
                          properties =
                            {
                                address =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                bond_ad_lacp_rate =
                                  js2n.Enum [ 0, "slow", 1, "fast" ],
                                bond_ad_select =
                                  js2n.Enum
                                      [
                                        0,
                                        "stable",
                                        1,
                                        "bandwidth",
                                        2,
                                        "count"
                                      ],
                                bond_all_slaves_active = js2n.Enum [ 0, 1 ],
                                bond_arp_all_targets =
                                  js2n.Enum [ 0, "any", 1, "all" ],
                                bond_arp_interval =
                                  std.contract.Sequence
                                      [
                                        std.number.Integer,
                                        js2n.number.Minimum 0
                                      ],
                                bond_arp_validate =
                                  js2n.Enum
                                      [
                                        0,
                                        "none",
                                        1,
                                        "active",
                                        2,
                                        "backup",
                                        3,
                                        "all",
                                        4,
                                        "filter",
                                        5,
                                        "filter_active",
                                        6,
                                        "filter_backup"
                                      ],
                                bond_downdelay =
                                  std.contract.Sequence
                                      [
                                        std.number.Integer,
                                        js2n.number.Minimum 0
                                      ],
                                bond_fail_over_mac =
                                  js2n.Enum
                                      [ 0, "none", 1, "active", 2, "follow" ],
                                bond_lp_interval =
                                  std.contract.Sequence
                                      [
                                        std.number.Integer,
                                        js2n.number.Maximum 2147483647,
                                        js2n.number.Minimum 0
                                      ],
                                bond_miimon =
                                  std.contract.Sequence
                                      [
                                        std.number.Integer,
                                        js2n.number.Minimum 0
                                      ],
                                bond_min_links =
                                  std.contract.Sequence
                                      [
                                        std.number.Integer,
                                        js2n.number.Minimum 0
                                      ],
                                bond_mode =
                                  js2n.Enum
                                      [
                                        0,
                                        "balance-rr",
                                        1,
                                        "active-backup",
                                        2,
                                        "balance-xor",
                                        3,
                                        "broadcast",
                                        4,
                                        "802.3ad",
                                        5,
                                        "balance-tlb",
                                        6,
                                        "balance-alb"
                                      ],
                                bond_num_peer_notif =
                                  std.contract.Sequence
                                      [
                                        std.number.Integer,
                                        js2n.number.Minimum 0
                                      ],
                                bond_packets_per_slave =
                                  std.contract.Sequence
                                      [
                                        std.number.Integer,
                                        js2n.number.Maximum 65535,
                                        js2n.number.Minimum 0
                                      ],
                                bond_primary_reselect =
                                  js2n.Enum
                                      [
                                        0,
                                        "always",
                                        1,
                                        "better",
                                        2,
                                        "failure"
                                      ],
                                bond_resend_igmp =
                                  std.contract.Sequence
                                      [
                                        std.number.Integer,
                                        js2n.number.Maximum 255,
                                        js2n.number.Minimum 0
                                      ],
                                bond_tlb_dynamic_lb = js2n.Enum [ 0, 1 ],
                                bond_updelay =
                                  std.contract.Sequence
                                      [
                                        std.number.Integer,
                                        js2n.number.Minimum 0
                                      ],
                                bond_use_carrier = js2n.Enum [ 0, 1 ],
                                bond_xmit_hash_policy =
                                  js2n.Enum
                                      [
                                        0,
                                        "layer2",
                                        1,
                                        "layer3+4",
                                        2,
                                        "layer2+3",
                                        3,
                                        "encap2+3",
                                        4,
                                        "encap3+4",
                                        5,
                                        "vlan+srcmac"
                                      ],
                                group =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                ifalias =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                kind = js2n.Const "bond",
                                master =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                mtu =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                state =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                txqlen =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                              },
                          required = { kind = true, },
                        },
                      Array Dyn
                    ],
                  std.contract.any_of
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
                                address =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                br_ageing_time =
                                  std.contract.Sequence
                                      [
                                        std.number.Integer,
                                        js2n.number.Minimum 0
                                      ],
                                br_vlan_protocol =
                                  js2n.Enum
                                      [ 33024, "802.1q", 34984, "802.1ad" ],
                                group =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                ifalias =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                kind = js2n.Const "bridge",
                                master =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                mtu =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                state =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                txqlen =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                              },
                          required = { kind = true, },
                        },
                      Array Dyn
                    ],
                  std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      js2n.record.Record
                        {
                          additional = 'None,
                          patterns = {},
                          properties =
                            {
                                address =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                businfo = js2n.string.MaxLength 32,
                                group =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                ifalias =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                kind =
                                  std.contract.Sequence
                                      [ std.enum.TagOrString, [| 'physical |] ],
                                master =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                mtu =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                permaddr =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                state =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                txqlen =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                              },
                          required = { kind = true, },
                        },
                      Array Dyn
                    ],
                  std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      js2n.record.Record
                        {
                          additional = 'None,
                          patterns = {},
                          properties =
                            {
                                address =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                group =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                ifalias =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                kind = js2n.Const "dsa",
                                link =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                link_netns =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                master =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                mtu =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                permaddr =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                state =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                txqlen =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                              },
                          required = { kind = true, link = true, },
                        },
                      Array Dyn
                    ],
                  std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      js2n.record.Record
                        {
                          additional = 'None,
                          patterns = {},
                          properties =
                            {
                                address =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                group =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                ifalias =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                kind =
                                  std.contract.Sequence
                                      [ std.enum.TagOrString, [| 'dummy |] ],
                                master =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                mtu =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                state =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                txqlen =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                              },
                          required = { kind = true, },
                        },
                      Array Dyn
                    ],
                  std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      js2n.record.Record
                        {
                          additional = 'None,
                          patterns = {},
                          properties =
                            {
                                address =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                group =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                ifalias =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                kind =
                                  std.contract.Sequence
                                      [
                                        std.enum.TagOrString,
                                        [| 'vxcan, 'veth |]
                                      ],
                                master =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                mtu =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                peer =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                peer_netns = js2n.Nullable String,
                                state =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                txqlen =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                              },
                          required = { kind = true, peer = true, },
                        },
                      Array Dyn
                    ],
                  std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      js2n.record.Record
                        {
                          additional = 'None,
                          patterns = {},
                          properties =
                            {
                                address =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                group =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                ifalias =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                kind = js2n.Const "vlan",
                                link =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                link_netns =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                master =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                mtu =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                state =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                txqlen =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                vlan_id =
                                  std.contract.Sequence
                                      [
                                        std.number.Integer,
                                        js2n.number.Maximum 4094,
                                        js2n.number.Minimum 0
                                      ],
                                vlan_protocol =
                                  js2n.Enum
                                      [ 33024, "802.1q", 34984, "802.1ad" ],
                              },
                          required =
                            { kind = true, link = true, vlan_id = true, },
                        },
                      Array Dyn
                    ],
                  std.contract.Sequence
                    [
                      std.contract.any_of
                        [
                          js2n.Null,
                          Bool,
                          Number,
                          String,
                          js2n.record.Record
                            {
                              additional = 'None,
                              patterns = {},
                              properties =
                                {
                                    address =
                                      std.contract.any_of
                                          [
                                            js2n.Null,
                                            Bool,
                                            { _ | Dyn },
                                            Array Dyn,
                                            Number,
                                            String
                                          ],
                                    bind_netns =
                                      std.contract.any_of
                                          [
                                            js2n.Null,
                                            Bool,
                                            { _ | Dyn },
                                            Array Dyn,
                                            Number,
                                            String
                                          ],
                                    group =
                                      std.contract.any_of
                                          [
                                            js2n.Null,
                                            Bool,
                                            { _ | Dyn },
                                            Array Dyn,
                                            Number,
                                            String
                                          ],
                                    ifalias =
                                      std.contract.any_of
                                          [
                                            js2n.Null,
                                            Bool,
                                            { _ | Dyn },
                                            Array Dyn,
                                            Number,
                                            String
                                          ],
                                    kind = js2n.Const "vxlan",
                                    master =
                                      std.contract.any_of
                                          [
                                            js2n.Null,
                                            Bool,
                                            { _ | Dyn },
                                            Array Dyn,
                                            Number,
                                            String
                                          ],
                                    mtu =
                                      std.contract.any_of
                                          [
                                            js2n.Null,
                                            Bool,
                                            { _ | Dyn },
                                            Array Dyn,
                                            Number,
                                            String
                                          ],
                                    state =
                                      std.contract.any_of
                                          [
                                            js2n.Null,
                                            Bool,
                                            { _ | Dyn },
                                            Array Dyn,
                                            Number,
                                            String
                                          ],
                                    txqlen =
                                      std.contract.any_of
                                          [
                                            js2n.Null,
                                            Bool,
                                            { _ | Dyn },
                                            Array Dyn,
                                            Number,
                                            String
                                          ],
                                    vxlan_ageing =
                                      std.contract.Sequence
                                          [
                                            std.number.Integer,
                                            js2n.number.Maximum 4294967296,
                                            js2n.number.Minimum 0
                                          ],
                                    vxlan_df =
                                      js2n.Enum
                                          [
                                            0,
                                            "unset",
                                            1,
                                            "set",
                                            2,
                                            "inherit"
                                          ],
                                    vxlan_group = String,
                                    vxlan_group6 = String,
                                    vxlan_id =
                                      std.contract.Sequence
                                          [
                                            std.number.Integer,
                                            js2n.number.Maximum 16777215,
                                            js2n.number.Minimum 0
                                          ],
                                    vxlan_l2miss =
                                      std.contract.Sequence
                                          [
                                            std.number.Integer,
                                            js2n.number.Maximum 1,
                                            js2n.number.Minimum 0
                                          ],
                                    vxlan_l3miss =
                                      std.contract.Sequence
                                          [
                                            std.number.Integer,
                                            js2n.number.Maximum 1,
                                            js2n.number.Minimum 0
                                          ],
                                    vxlan_label =
                                      std.contract.Sequence
                                          [
                                            std.number.Integer,
                                            js2n.number.Maximum 1048575,
                                            js2n.number.Minimum 0
                                          ],
                                    vxlan_learning =
                                      std.contract.Sequence
                                          [
                                            std.number.Integer,
                                            js2n.number.Maximum 1,
                                            js2n.number.Minimum 0
                                          ],
                                    vxlan_limit =
                                      std.contract.Sequence
                                          [
                                            std.number.Integer,
                                            js2n.number.Maximum 4294967296,
                                            js2n.number.Minimum 0
                                          ],
                                    vxlan_link =
                                      std.contract.any_of
                                          [
                                            js2n.Null,
                                            Bool,
                                            { _ | Dyn },
                                            Array Dyn,
                                            Number,
                                            String
                                          ],
                                    vxlan_local = String,
                                    vxlan_local6 = String,
                                    vxlan_port =
                                      std.contract.Sequence
                                          [
                                            std.number.Integer,
                                            js2n.number.Maximum 65535,
                                            js2n.number.Minimum 0
                                          ],
                                    vxlan_port_range =
                                      std.contract.any_of
                                          [
                                            js2n.Null,
                                            Bool,
                                            Number,
                                            String,
                                            js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      high =
                                                        std.contract.Sequence
                                                            [
                                                              std.number.Integer,
                                                              js2n.number.Maximum
                                                                65535,
                                                              js2n.number.Minimum
                                                                0
                                                            ],
                                                      low =
                                                        std.contract.Sequence
                                                            [
                                                              std.number.Integer,
                                                              js2n.number.Maximum
                                                                65535,
                                                              js2n.number.Minimum
                                                                0
                                                            ],
                                                    },
                                                required =
                                                  { high = true, low = true, },
                                              },
                                            Array Dyn
                                          ],
                                    vxlan_proxy =
                                      std.contract.Sequence
                                          [
                                            std.number.Integer,
                                            js2n.number.Maximum 1,
                                            js2n.number.Minimum 0
                                          ],
                                    vxlan_rsc =
                                      std.contract.Sequence
                                          [
                                            std.number.Integer,
                                            js2n.number.Maximum 1,
                                            js2n.number.Minimum 0
                                          ],
                                    vxlan_tos =
                                      std.contract.Sequence
                                          [
                                            std.number.Integer,
                                            js2n.number.Maximum 255,
                                            js2n.number.Minimum 0
                                          ],
                                    vxlan_ttl =
                                      std.contract.Sequence
                                          [
                                            std.number.Integer,
                                            js2n.number.Maximum 255,
                                            js2n.number.Minimum 0
                                          ],
                                    vxlan_ttl_inherit = Bool,
                                    vxlan_udp_csum =
                                      std.contract.Sequence
                                          [
                                            std.number.Integer,
                                            js2n.number.Maximum 1,
                                            js2n.number.Minimum 0
                                          ],
                                  },
                              required = { kind = true, vxlan_id = true, },
                            },
                          Array Dyn
                        ],
                      std.contract.any_of
                        [
                          js2n.OneOf
                            [
                              std.contract.any_of
                                [
                                  js2n.Null,
                                  Bool,
                                  Number,
                                  String,
                                  js2n.record.Required [ "vxlan_group" ],
                                  Array Dyn
                                ],
                              std.contract.any_of
                                [
                                  js2n.Null,
                                  Bool,
                                  Number,
                                  String,
                                  js2n.record.Required [ "vxlan_local" ],
                                  Array Dyn
                                ],
                              std.contract.any_of
                                [
                                  js2n.Null,
                                  Bool,
                                  Number,
                                  String,
                                  js2n.record.Required
                                    [ "vxlan_group", "vxlan_local" ],
                                  Array Dyn
                                ],
                              std.contract.any_of
                                [
                                  js2n.Null,
                                  Bool,
                                  Number,
                                  String,
                                  js2n.record.Required [ "vxlan_group6" ],
                                  Array Dyn
                                ],
                              std.contract.any_of
                                [
                                  js2n.Null,
                                  Bool,
                                  Number,
                                  String,
                                  js2n.record.Required [ "vxlan_local6" ],
                                  Array Dyn
                                ],
                              std.contract.any_of
                                [
                                  js2n.Null,
                                  Bool,
                                  Number,
                                  String,
                                  js2n.record.Required
                                    [ "vxlan_group6", "vxlan_local6" ],
                                  Array Dyn
                                ]
                            ],
                          std.contract.not
                            (std.contract.any_of
                              [
                                js2n.Null,
                                Bool,
                                Number,
                                String,
                                js2n.record.Required
                                  [
                                    "vxlan_group",
                                    "vxlan_group6",
                                    "vxlan_local",
                                    "vxlan_local6"
                                  ],
                                Array Dyn
                              ])
                        ]
                    ],
                  std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      js2n.record.Record
                        {
                          additional = 'None,
                          patterns = {},
                          properties =
                            {
                                address =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                bind_netns =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                group =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                ifalias =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                ipip_local =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                ipip_remote =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                kind = js2n.Const "ipip",
                                master =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                mtu =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                state =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                txqlen =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                              },
                          required =
                            {
                                ipip_local = true,
                                ipip_remote = true,
                                kind = true,
                              },
                        },
                      Array Dyn
                    ],
                  std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      js2n.record.Record
                        {
                          additional = 'None,
                          patterns = {},
                          properties =
                            {
                                address =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                bind_netns =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                group =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                ifalias =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                kind = js2n.Const "sit",
                                master =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                mtu =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                sit_local =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                sit_remote =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                state =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                txqlen =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                              },
                          required =
                            {
                                kind = true,
                                sit_local = true,
                                sit_remote = true,
                              },
                        },
                      Array Dyn
                    ],
                  std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      js2n.record.Record
                        {
                          additional = 'None,
                          patterns = {},
                          properties =
                            {
                                address =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                bind_netns =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                gre_link =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                gre_local =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                gre_remote =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                group =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                ifalias =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                kind =
                                  std.contract.Sequence
                                      [
                                        std.enum.TagOrString,
                                        [| 'gretap, 'gre |]
                                      ],
                                master =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                mtu =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                state =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                txqlen =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                              },
                          required =
                            {
                                gre_local = true,
                                gre_remote = true,
                                kind = true,
                              },
                        },
                      Array Dyn
                    ],
                  std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      js2n.record.Record
                        {
                          additional = 'None,
                          patterns = {},
                          properties =
                            {
                                address =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                bind_netns =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                group =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                ifalias =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                ip6gre_link =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                ip6gre_local =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                ip6gre_remote =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                kind =
                                  std.contract.Sequence
                                      [
                                        std.enum.TagOrString,
                                        [| 'ip6gretap, 'ip6gre |]
                                      ],
                                master =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                mtu =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                state =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                txqlen =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                              },
                          required =
                            {
                                ip6gre_local = true,
                                ip6gre_remote = true,
                                kind = true,
                              },
                        },
                      Array Dyn
                    ],
                  std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      js2n.record.Record
                        {
                          additional = 'None,
                          patterns = {},
                          properties =
                            {
                                address =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                bind_netns =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                geneve_id =
                                  std.contract.Sequence
                                      [
                                        std.number.Integer,
                                        js2n.number.Maximum 16777215,
                                        js2n.number.Minimum 0
                                      ],
                                geneve_remote =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                group =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                ifalias =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                kind = js2n.Const "geneve",
                                master =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                mtu =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                state =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                txqlen =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                              },
                          required =
                            {
                                geneve_id = true,
                                geneve_remote = true,
                                kind = true,
                              },
                        },
                      Array Dyn
                    ],
                  std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      js2n.record.Record
                        {
                          additional = 'None,
                          patterns = {},
                          properties =
                            {
                                address =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                bind_netns =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                geneve_id =
                                  std.contract.Sequence
                                      [
                                        std.number.Integer,
                                        js2n.number.Maximum 16777215,
                                        js2n.number.Minimum 0
                                      ],
                                geneve_remote6 =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                group =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                ifalias =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                kind = js2n.Const "geneve",
                                master =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                mtu =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                state =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                txqlen =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                              },
                          required =
                            {
                                geneve_id = true,
                                geneve_remote6 = true,
                                kind = true,
                              },
                        },
                      Array Dyn
                    ],
                  std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      js2n.record.Record
                        {
                          additional = 'None,
                          patterns = {},
                          properties =
                            {
                                address =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                bind_netns =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                group =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                ifalias =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                kind = js2n.Const "wireguard",
                                master =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                mtu =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                state =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                txqlen =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                              },
                          required = { kind = true, },
                        },
                      Array Dyn
                    ],
                  std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      js2n.record.Record
                        {
                          additional = 'None,
                          patterns = {},
                          properties =
                            {
                                address =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                bind_netns =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                group =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                ifalias =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                kind = js2n.Const "xfrm",
                                master =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                mtu =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                state =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                txqlen =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                                xfrm_if_id =
                                  std.contract.Sequence
                                      [
                                        std.number.Integer,
                                        js2n.number.Maximum 4294967295,
                                        js2n.number.Minimum 0
                                      ],
                                xfrm_link =
                                  std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        { _ | Dyn },
                                        Array Dyn,
                                        Number,
                                        String
                                      ],
                              },
                          required = { kind = true, xfrm_if_id = true, },
                        },
                      Array Dyn
                    ]
                ]
              | js2n.record.Required [ "kind" ]
              | doc "link settings of the interface",
            name
              | std.contract.any_of
                [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
              | doc "name of the interface",
            neighbours
              | Array
                {
                  dst | String | doc "protocol address of the neighbour",
                  lladdr
                    | std.contract.any_of
                      [
                        js2n.Null,
                        Bool,
                        { _ | Dyn },
                        Array Dyn,
                        Number,
                        String
                      ]
                    | doc "link layer address of the neighbour"
                    | optional,
                }
              | doc "static ARP or NDISC cache entries"
              | optional,
            sysctl
              | {
                ipv4
                  | std.contract.any_of
                    [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
                  | optional,
                ipv6
                  | std.contract.any_of
                    [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
                  | optional,
                mpls
                  | std.contract.any_of
                    [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
                  | optional,
              }
              | doc "interface sysctl settings"
              | optional,
            tc
              | {
                filter
                  | Array (
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
                                js2n.record.Record
                                  {
                                    additional = 'None,
                                    patterns = {},
                                    properties =
                                      {
                                          action =
                                            std.contract.any_of
                                                [
                                                  js2n.Null,
                                                  Bool,
                                                  { _ | Dyn },
                                                  Array Dyn,
                                                  Number,
                                                  String
                                                ],
                                          kind =
                                            std.contract.Sequence
                                                [
                                                  std.enum.TagOrString,
                                                  [| 'basic |]
                                                ],
                                          "match" = { _ | Dyn },
                                          prio =
                                            std.contract.any_of
                                                [
                                                  js2n.Null,
                                                  Bool,
                                                  { _ | Dyn },
                                                  Array Dyn,
                                                  Number,
                                                  String
                                                ],
                                          protocol =
                                            std.contract.any_of
                                                [
                                                  js2n.Null,
                                                  Bool,
                                                  { _ | Dyn },
                                                  Array Dyn,
                                                  Number,
                                                  String
                                                ],
                                        },
                                    required = {},
                                  },
                                Array Dyn
                              ],
                            std.contract.Sequence
                              [
                                std.contract.any_of
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
                                              action =
                                                std.contract.any_of
                                                    [
                                                      js2n.Null,
                                                      Bool,
                                                      { _ | Dyn },
                                                      Array Dyn,
                                                      Number,
                                                      String
                                                    ],
                                              addend =
                                                std.contract.Sequence
                                                    [
                                                      std.number.Integer,
                                                      js2n.number.Maximum
                                                        4294967295,
                                                      js2n.number.Minimum 0
                                                    ],
                                              and =
                                                std.contract.Sequence
                                                    [
                                                      std.number.Integer,
                                                      js2n.number.Maximum
                                                        4294967295,
                                                      js2n.number.Minimum 0
                                                    ],
                                              baseclass =
                                                std.contract.Sequence
                                                    [
                                                      std.number.Integer,
                                                      js2n.number.Maximum 65535,
                                                      js2n.number.Minimum 0
                                                    ],
                                              divisor =
                                                std.contract.Sequence
                                                    [
                                                      std.number.Integer,
                                                      js2n.number.Maximum
                                                        4294967295,
                                                      js2n.number.Minimum 0
                                                    ],
                                              kind =
                                                std.contract.Sequence
                                                    [
                                                      std.enum.TagOrString,
                                                      [| 'flow |]
                                                    ],
                                              or =
                                                std.contract.Sequence
                                                    [
                                                      std.number.Integer,
                                                      js2n.number.Maximum
                                                        4294967295,
                                                      js2n.number.Minimum 0
                                                    ],
                                              prio =
                                                std.contract.any_of
                                                    [
                                                      js2n.Null,
                                                      Bool,
                                                      { _ | Dyn },
                                                      Array Dyn,
                                                      Number,
                                                      String
                                                    ],
                                              protocol =
                                                std.contract.any_of
                                                    [
                                                      js2n.Null,
                                                      Bool,
                                                      { _ | Dyn },
                                                      Array Dyn,
                                                      Number,
                                                      String
                                                    ],
                                              rshift =
                                                std.contract.Sequence
                                                    [
                                                      std.number.Integer,
                                                      js2n.number.Maximum
                                                        4294967295,
                                                      js2n.number.Minimum 0
                                                    ],
                                              xor =
                                                std.contract.Sequence
                                                    [
                                                      std.number.Integer,
                                                      js2n.number.Maximum
                                                        4294967295,
                                                      js2n.number.Minimum 0
                                                    ],
                                            },
                                        required = {},
                                      },
                                    Array Dyn
                                  ],
                                js2n.OneOf
                                  [
                                    std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        Number,
                                        String,
                                        std.contract.Sequence
                                          [
                                            js2n.record.Record
                                              {
                                                additional = 'Some Dyn,
                                                patterns = {},
                                                properties =
                                                  {
                                                      key =
                                                        std.contract.Sequence
                                                            [
                                                              std.enum.TagOrString,
                                                              [|
                                                                'rxhash,
                                                                'vlan-tag,
                                                                'sk-gid,
                                                                'sk-uid,
                                                                'rt-classid,
                                                                'nfct-proto-dst,
                                                                'nfct-proto-src,
                                                                'nfct-dst,
                                                                'nfct-src,
                                                                'nfct,
                                                                'mark,
                                                                '"priority",
                                                                'iif,
                                                                'proto-dst,
                                                                'proto-src,
                                                                'proto,
                                                                'dst,
                                                                'src
                                                              |]
                                                            ],
                                                      mode =
                                                        std.contract.Sequence
                                                            [
                                                              std.enum.TagOrString,
                                                              [| 'map |]
                                                            ],
                                                    },
                                                required =
                                                  { key = true, mode = true, },
                                              },
                                            js2n.record.Required [ "kind" ]
                                          ],
                                        Array Dyn
                                      ],
                                    std.contract.any_of
                                      [
                                        js2n.Null,
                                        Bool,
                                        Number,
                                        String,
                                        std.contract.Sequence
                                          [
                                            js2n.record.Record
                                              {
                                                additional = 'Some Dyn,
                                                patterns = {},
                                                properties =
                                                  {
                                                      keys =
                                                        js2n.array.ArrayOf
                                                            (std.contract.Sequence
                                                              [
                                                                std.enum.TagOrString,
                                                                [|
                                                                  'rxhash,
                                                                  'vlan-tag,
                                                                  'sk-gid,
                                                                  'sk-uid,
                                                                  'rt-classid,
                                                                  'nfct-proto-dst,
                                                                  'nfct-proto-src,
                                                                  'nfct-dst,
                                                                  'nfct-src,
                                                                  'nfct,
                                                                  'mark,
                                                                  '"priority",
                                                                  'iif,
                                                                  'proto-dst,
                                                                  'proto-src,
                                                                  'proto,
                                                                  'dst,
                                                                  'src
                                                                |]
                                                              ]),
                                                      mode =
                                                        std.contract.Sequence
                                                            [
                                                              std.enum.TagOrString,
                                                              [| 'hash |]
                                                            ],
                                                      perturb =
                                                        std.contract.Sequence
                                                            [
                                                              std.number.Integer,
                                                              js2n.number.Maximum
                                                                294967295,
                                                              js2n.number.Minimum
                                                                0
                                                            ],
                                                    },
                                                required =
                                                  { keys = true, mode = true, },
                                              },
                                            js2n.record.Required [ "kind" ]
                                          ],
                                        Array Dyn
                                      ]
                                  ]
                              ],
                            std.contract.any_of
                              [
                                js2n.Null,
                                Bool,
                                Number,
                                String,
                                js2n.record.Record
                                  {
                                    additional = 'None,
                                    patterns = {},
                                    properties =
                                      {
                                          action =
                                            std.contract.any_of
                                                [
                                                  js2n.Null,
                                                  Bool,
                                                  { _ | Dyn },
                                                  Array Dyn,
                                                  Number,
                                                  String
                                                ],
                                          handle =
                                            std.contract.Sequence
                                                [
                                                  std.number.Integer,
                                                  js2n.number.Minimum 0
                                                ],
                                          kind =
                                            std.contract.Sequence
                                                [
                                                  std.enum.TagOrString,
                                                  [| 'fw |]
                                                ],
                                          prio =
                                            std.contract.any_of
                                                [
                                                  js2n.Null,
                                                  Bool,
                                                  { _ | Dyn },
                                                  Array Dyn,
                                                  Number,
                                                  String
                                                ],
                                          protocol =
                                            std.contract.any_of
                                                [
                                                  js2n.Null,
                                                  Bool,
                                                  { _ | Dyn },
                                                  Array Dyn,
                                                  Number,
                                                  String
                                                ],
                                        },
                                    required = { handle = true, kind = true, },
                                  },
                                Array Dyn
                              ],
                            std.contract.any_of
                              [
                                js2n.Null,
                                Bool,
                                Number,
                                String,
                                js2n.record.Record
                                  {
                                    additional = 'None,
                                    patterns = {},
                                    properties =
                                      {
                                          action =
                                            std.contract.any_of
                                                [
                                                  js2n.Null,
                                                  Bool,
                                                  { _ | Dyn },
                                                  Array Dyn,
                                                  Number,
                                                  String
                                                ],
                                          classid =
                                            std.contract.Sequence
                                                [
                                                  std.number.Integer,
                                                  js2n.number.Maximum
                                                    4294967295,
                                                  js2n.number.Minimum 0
                                                ],
                                          flags =
                                            std.contract.Sequence
                                                [
                                                  std.number.Integer,
                                                  js2n.number.Maximum
                                                    4294967295,
                                                  js2n.number.Minimum 0
                                                ],
                                          kind =
                                            std.contract.Sequence
                                                [
                                                  std.enum.TagOrString,
                                                  [| 'matchall |]
                                                ],
                                          parent =
                                            std.contract.any_of
                                                [
                                                  js2n.Null,
                                                  Bool,
                                                  { _ | Dyn },
                                                  Array Dyn,
                                                  Number,
                                                  String
                                                ],
                                          prio =
                                            std.contract.any_of
                                                [
                                                  js2n.Null,
                                                  Bool,
                                                  { _ | Dyn },
                                                  Array Dyn,
                                                  Number,
                                                  String
                                                ],
                                          protocol =
                                            std.contract.any_of
                                                [
                                                  js2n.Null,
                                                  Bool,
                                                  { _ | Dyn },
                                                  Array Dyn,
                                                  Number,
                                                  String
                                                ],
                                        },
                                    required = {},
                                  },
                                Array Dyn
                              ]
                          ],
                        {
                          kind
                            | std.enum.TagOrString
                            | [| 'matchall, 'fw, 'flow, 'basic |]
                            | doc "filter type",
                          ..
                        }
                      ]
                  )
                  | doc "filter used by qdiscs"
                  | optional,
                ingress
                  | Bool
                  | doc "enable the ingress qdisc for policing and shaping in ingress"
                  | optional,
                qdisc
                  | std.contract.any_of
                    [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
                  | doc "root queueing disciplines"
                  | optional,
              }
              | doc "settings for traffic control"
              | optional,
            vrrp
              | std.contract.any_of
                [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
              | optional,
            wireguard
              | {
                fwmark
                  | std.number.Integer
                  | js2n.number.Maximum 4294967295
                  | js2n.number.Minimum 0
                  | doc "fwmark for outgoing packets"
                  | optional,
                listen_port
                  | std.number.Integer
                  | js2n.number.Maximum 65535
                  | js2n.number.Minimum 0
                  | doc "port for listening"
                  | optional,
                peers
                  | Array
                    {
                      allowedips
                        | Array String
                        | doc "list of prefixes in CIDR notation"
                        | optional,
                      endpoint
                        | String
                        | doc "initial endpoint IP or hostname"
                        | optional,
                      persistent_keepalive_interval
                        | std.number.Integer
                        | js2n.number.Maximum 65535
                        | js2n.number.Minimum 0
                        | doc "keepalive interval seconds"
                        | optional,
                      preshared_key
                        | String
                        | doc "preshared key for post-quantum resistance (consider to use the `!include` tag to read the key from file)"
                        | optional,
                      public_key | String | doc "the peer's public key",
                    }
                  | doc "list of peer definitions"
                  | optional,
                private_key
                  | String
                  | doc "local private key (consider to use the `!include` tag to read the key from file)",
              }
              | doc "settings for WireGuard interfaces"
              | optional,
            xdp
              | js2n.OneOf
                [
                  js2n.Enum [ false ],
                  js2n.record.Record
                    {
                      additional = 'None,
                      patterns = {},
                      properties =
                        {
                            mode =
                              std.contract.any_of
                                  [
                                    js2n.Null,
                                    Bool,
                                    { _ | Dyn },
                                    Array Dyn,
                                    Number,
                                    String
                                  ],
                            pinned = String,
                          },
                      required = { pinned = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'None,
                      patterns = {},
                      properties =
                        {
                            bpf = String,
                            mode =
                              std.contract.any_of
                                  [
                                    js2n.Null,
                                    Bool,
                                    { _ | Dyn },
                                    Array Dyn,
                                    Number,
                                    String
                                  ],
                          },
                      required = { bpf = true, },
                    }
                ]
              | doc "settings for XDP (\"eXpress Data Path\") BPF program"
              | optional,
          }
        | doc "list of interface settings (link settings and ip addresses)",
      namespaces
        | {
          _ | {
            bpf | refs."properties.bpf" | optional,
            interfaces | refs."properties.interfaces",
            options | refs."properties.options" | optional,
            routing | refs."properties.routing" | optional,
          }
        }
        | js2n.record.FieldsMatch ".+"
        | optional,
      options
        | {
          sysctl
            | {
              all
                | {
                  ipv4
                    | std.contract.any_of
                      [
                        js2n.Null,
                        Bool,
                        { _ | Dyn },
                        Array Dyn,
                        Number,
                        String
                      ]
                    | optional,
                  ipv6
                    | std.contract.any_of
                      [
                        js2n.Null,
                        Bool,
                        { _ | Dyn },
                        Array Dyn,
                        Number,
                        String
                      ]
                    | optional,
                }
                | doc "overrides [per interface sysctl settings](https://www.kernel.org/doc/Documentation/networking/ip-sysctl.txt) in `/proc/sys/net/ipv*/conf/all/`"
                | optional,
              "default"
                | {
                  ipv4
                    | std.contract.any_of
                      [
                        js2n.Null,
                        Bool,
                        { _ | Dyn },
                        Array Dyn,
                        Number,
                        String
                      ]
                    | optional,
                  ipv6
                    | std.contract.any_of
                      [
                        js2n.Null,
                        Bool,
                        { _ | Dyn },
                        Array Dyn,
                        Number,
                        String
                      ]
                    | optional,
                }
                | doc "default [per interface sysctl settings](https://www.kernel.org/doc/Documentation/networking/ip-sysctl.txt) in `/proc/sys/net/ipv*/conf/default/`"
                | optional,
              mpls
                | std.contract.any_of
                  [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
                | optional,
            }
            | doc "global sysctl settings"
            | optional,
        }
        | doc "global configuration settings"
        | optional,
      routing
        | {
          routes
            | Array
              {
                dev
                  | std.contract.any_of [ std.number.Integer, String ]
                  | doc "the output device name"
                  | optional,
                preference
                  | std.number.Integer
                  | js2n.number.Maximum 4294967295
                  | js2n.number.Minimum 0
                  | doc "preference of the route"
                  | optional,
                proto
                  | std.contract.any_of [ std.number.Integer, String ]
                  | doc "the routing protool identifier of this route"
                  | optional,
                realm
                  | std.contract.any_of [ std.number.Integer, String ]
                  | doc "the realm to which this route is assigned"
                  | optional,
                scope
                  | std.contract.any_of [ std.number.Integer, String ]
                  | doc "the scope of the destinations covered by the route prefix"
                  | optional,
                src
                  | js2n.OneOf
                    [
                      std.contract.any_of
                        [
                          js2n.Null,
                          Bool,
                          Number,
                          String,
                          { _ | Dyn },
                          Array Dyn
                        ],
                      std.contract.any_of
                        [
                          js2n.Null,
                          Bool,
                          Number,
                          String,
                          { _ | Dyn },
                          Array Dyn
                        ]
                    ]
                  | String
                  | doc "the source address to prefer"
                  | optional,
                table
                  | std.contract.any_of [ std.number.Integer, String ]
                  | doc "the table to add this route to"
                  | optional,
                to | String | doc "the destination prefix of the route",
                type
                  | std.enum.TagOrString
                  | [|
                    'xresolve,
                    'nat,
                    'throw,
                    'prohibit,
                    'unreachable,
                    'blackhole,
                    'multicast,
                    'anycast,
                    'broadcast,
                    'local,
                    'unicast
                  |]
                  | doc "the type of this route"
                  | optional,
                via
                  | js2n.OneOf
                    [
                      std.contract.any_of
                        [
                          js2n.Null,
                          Bool,
                          Number,
                          String,
                          { _ | Dyn },
                          Array Dyn
                        ],
                      std.contract.any_of
                        [
                          js2n.Null,
                          Bool,
                          Number,
                          String,
                          { _ | Dyn },
                          Array Dyn
                        ]
                    ]
                  | String
                  | doc "address of the nexthop router"
                  | optional,
                vrrp
                  | std.contract.any_of
                    [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
                  | optional,
              }
            | optional,
          rules
            | Array (
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
                            properties = { action = js2n.Const "to_tbl", },
                            required = {},
                          },
                        Array Dyn
                      ])
                    (std.contract.any_of
                      [
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "priority", "table" ],
                        Array Dyn
                      ])
                    (std.contract.any_of
                      [
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        js2n.record.Required [ "priority" ],
                        Array Dyn
                      ]),
                  {
                    action
                      | std.enum.TagOrString
                      | [| 'prohibit, 'unreachable, 'blackhole, 'to_tbl |]
                      | doc "the type of this rule"
                      | optional,
                    from
                      | String
                      | doc "select the source prefix to match"
                      | optional,
                    fwmark
                      | std.number.Integer
                      | doc "select the *fwmark* value to match"
                      | optional,
                    iif
                      | String
                      | doc "select the incoming device to match"
                      | optional,
                    ipproto
                      | std.contract.any_of [ std.number.Integer, String ]
                      | doc "select the ip protocol to match"
                      | optional,
                    oif
                      | String
                      | doc "select the outgoing device to match"
                      | optional,
                    "priority"
                      | std.number.Integer
                      | js2n.number.Maximum 4294967295
                      | js2n.number.Minimum 0
                      | doc "the priority of this rule"
                      | optional,
                    proto
                      | std.contract.any_of [ std.number.Integer, String ]
                      | doc "routing protocol number (`/etc/iproute2/rt_protos`)"
                      | optional,
                    table
                      | std.contract.any_of
                        [
                          std.contract.Sequence
                            [
                              std.number.Integer,
                              js2n.number.Maximum 255,
                              js2n.number.Minimum 0
                            ],
                          String
                        ]
                      | optional,
                    to
                      | String
                      | doc "select the destination prefix to match"
                      | optional,
                    vrrp
                      | std.contract.any_of
                        [
                          js2n.Null,
                          Bool,
                          { _ | Dyn },
                          Array Dyn,
                          Number,
                          String
                        ]
                      | optional,
                  }
                ]
            )
            | optional,
        }
        | optional,
    }