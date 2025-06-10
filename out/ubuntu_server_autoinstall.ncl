# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      autoinstall
        | {
          apt
            | {
              geoip | Bool | optional,
              preserve_sources_list | Bool | optional,
              primary | Array Dyn | optional,
              sources | { _ | Dyn } | optional,
              ..
            }
            | optional,
          debconf-selections | String | optional,
          early-commands
            | Array (std.contract.any_of [ String, Array String ])
            | optional,
          error-commands
            | Array (std.contract.any_of [ String, Array String ])
            | optional,
          identity
            | {
              hostname | String,
              password | String,
              realname | String | optional,
              username | String,
            }
            | optional,
          keyboard
            | {
              layout | String,
              toggle | js2n.Nullable String | optional,
              variant | String | optional,
            }
            | optional,
          late-commands
            | Array (std.contract.any_of [ String, Array String ])
            | optional,
          locale | String | optional,
          network
            | js2n.OneOf
              [
                js2n.record.Record
                  {
                    additional = 'Some Dyn,
                    patterns = {},
                    properties =
                      {
                          bonds = { _ | Dyn },
                          bridges = { _ | Dyn },
                          ethernets =
                            js2n.record.Record
                                {
                                  additional = 'Some Dyn,
                                  patterns = {},
                                  properties =
                                    {
                                        "match" =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      driver = String,
                                                      macaddress = String,
                                                      name = String,
                                                    },
                                                required = {},
                                              },
                                      },
                                  required = {},
                                },
                          tunnels = { _ | Dyn },
                          version =
                            std.contract.Sequence
                                [
                                  std.number.Integer,
                                  js2n.number.Maximum 2,
                                  js2n.number.Minimum 2
                                ],
                          vlans = { _ | Dyn },
                          wifis =
                            js2n.record.Record
                                {
                                  additional = 'Some Dyn,
                                  patterns = {},
                                  properties =
                                    {
                                        "match" =
                                          js2n.record.Record
                                              {
                                                additional = 'None,
                                                patterns = {},
                                                properties =
                                                  {
                                                      driver = String,
                                                      macaddress = String,
                                                      name = String,
                                                    },
                                                required = {},
                                              },
                                      },
                                  required = {},
                                },
                        },
                    required = { version = true, },
                  },
                js2n.record.Record
                  {
                    additional = 'Some Dyn,
                    patterns = {},
                    properties =
                      {
                          network =
                            js2n.record.Record
                                {
                                  additional = 'Some Dyn,
                                  patterns = {},
                                  properties =
                                    {
                                        bonds = { _ | Dyn },
                                        bridges = { _ | Dyn },
                                        ethernets =
                                          js2n.record.Record
                                              {
                                                additional = 'Some Dyn,
                                                patterns = {},
                                                properties =
                                                  {
                                                      "match" =
                                                        js2n.record.Record
                                                            {
                                                              additional =
                                                                'None,
                                                              patterns = {},
                                                              properties =
                                                                {
                                                                    driver =
                                                                      String,
                                                                    macaddress =
                                                                      String,
                                                                    name =
                                                                      String,
                                                                  },
                                                              required = {},
                                                            },
                                                    },
                                                required = {},
                                              },
                                        tunnels = { _ | Dyn },
                                        version =
                                          std.contract.Sequence
                                              [
                                                std.number.Integer,
                                                js2n.number.Maximum 2,
                                                js2n.number.Minimum 2
                                              ],
                                        vlans = { _ | Dyn },
                                        wifis =
                                          js2n.record.Record
                                              {
                                                additional = 'Some Dyn,
                                                patterns = {},
                                                properties =
                                                  {
                                                      "match" =
                                                        js2n.record.Record
                                                            {
                                                              additional =
                                                                'None,
                                                              patterns = {},
                                                              properties =
                                                                {
                                                                    driver =
                                                                      String,
                                                                    macaddress =
                                                                      String,
                                                                    name =
                                                                      String,
                                                                  },
                                                              required = {},
                                                            },
                                                    },
                                                required = {},
                                              },
                                      },
                                  required = { version = true, },
                                },
                        },
                    required = { network = true, },
                  }
              ]
            | optional,
          packages | Array String | optional,
          proxy | js2n.Nullable String | optional,
          refresh-installer
            | { channel | String | optional, update | Bool | optional, }
            | optional,
          reporting | { _ | { type | String, .. } } | optional,
          snaps
            | Array
              {
                channel | String | optional,
                classic | Bool | optional,
                name | String,
              }
            | optional,
          ssh
            | {
              allow-pw | Bool | optional,
              authorized-keys | Array String | optional,
              install-server | Bool | optional,
              ..
            }
            | optional,
          storage | { _ | Dyn } | optional,
          user-data | { _ | Dyn } | optional,
          version
            | std.number.Integer
            | js2n.number.Maximum 1
            | js2n.number.Minimum 1,
          ..
        }
        | optional,
      ..
    }