# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
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
                js2n.record.Required [ "name", "type" ],
                Array Dyn
              ],
            std.contract.any_of
              [
                js2n.Null,
                Bool,
                Number,
                String,
                js2n.record.Required [ "name", "stack" ],
                Array Dyn
              ]
          ],
        {
          access | { _ | String } | optional,
          additional_hosts | { _ | String } | optional,
          build
            | {
              caches
                | {
                  _ | {
                    allow_stale | Bool | optional,
                    directory | String | optional,
                    share_between_apps | Bool | optional,
                    watch | Array String,
                  }
                }
                | optional,
              flavor | String | optional,
            }
            | optional,
          crons
            | {
              _ | {
                cmd | String | optional,
                commands
                  | { start | String, stop | String | optional, }
                  | optional,
                shutdown_timeout | std.number.Integer | optional,
                spec | String,
              }
            }
            | optional,
          dependencies | { _ | { _ | Dyn } } | optional,
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
          hooks
            | {
              build | String | optional,
              deploy | String | optional,
              post_deploy | String | optional,
            }
            | optional,
          mounts
            | {
              _ | {
                service | String | optional,
                source | std.enum.TagOrString | [| 'tmp, 'service, 'local |],
                source_path | String | optional,
              }
            }
            | optional,
          name | String | optional,
          preflight
            | { enabled | Bool, ignored_rules | Array String | optional, }
            | optional,
          relationships
            | {
              _ | std.contract.any_of
                [
                  String,
                  js2n.Null,
                  {
                    endpoint | String | optional,
                    service | String | optional,
                    ..
                  }
                ]
            }
            | optional,
          resources
            | {
              base_memory | std.number.Integer | optional,
              memory_ratio | std.number.Integer | optional,
            }
            | optional,
          runtime | { _ | Dyn } | optional,
          size | String | optional,
          source
            | {
              operations | { _ | { command | String, } } | optional,
              root | String | optional,
            }
            | optional,
          stack
            | std.contract.any_of
              [
                String,
                { _ | Dyn },
                Array (std.contract.any_of [ { _ | Dyn }, String ])
              ]
            | optional,
          timezone | String | optional,
          type | String | optional,
          variables | { _ | {  .. } } | optional,
          web
            | {
              access | { _ | String } | optional,
              blacklist | Array String | optional,
              commands
                | {
                  post_start | String | optional,
                  pre_start | String | optional,
                  start | String,
                }
                | optional,
              disk | std.number.Integer | optional,
              document_root | String | optional,
              expires
                | std.contract.any_of [ std.number.Integer, String ]
                | optional,
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
              index_files | Array String | optional,
              locations
                | {
                  _ | {
                    allow | Bool | optional,
                    expires
                      | std.contract.any_of [ std.number.Integer, String ]
                      | optional,
                    headers | { _ | String } | optional,
                    index | Array String | optional,
                    passthru | std.contract.any_of [ Bool, String ] | optional,
                    request_buffering
                      | {
                        enabled | Bool | optional,
                        max_request_size | String | optional,
                      }
                      | optional,
                    root | String | optional,
                    rules
                      | {
                        _ | {
                          allow | Bool | optional,
                          expires
                            | std.contract.any_of [ std.number.Integer, String ]
                            | optional,
                          headers | { _ | String } | optional,
                          passthru | String | optional,
                          scripts | Bool | optional,
                        }
                      }
                      | optional,
                    scripts | Bool | optional,
                  }
                }
                | optional,
              mounts
                | {
                  _ | {
                    service | String | optional,
                    source
                      | std.enum.TagOrString
                      | [| 'tmp, 'service, 'local |],
                    source_path | String | optional,
                  }
                }
                | optional,
              move_to_root | Bool | optional,
              passthru | String | optional,
              relationships
                | {
                  _ | std.contract.any_of
                    [
                      String,
                      js2n.Null,
                      {
                        endpoint | String | optional,
                        service | String | optional,
                        ..
                      }
                    ]
                }
                | optional,
              resources
                | {
                  base_memory | std.number.Integer | optional,
                  memory_ratio | std.number.Integer | optional,
                }
                | optional,
              size | String | optional,
              timezone | String | optional,
              upstream
                | {
                  protocol | String | optional,
                  socket_family | String | optional,
                }
                | optional,
              variables | { _ | {  .. } } | optional,
              whitelist | Array String | optional,
            }
            | optional,
          workers
            | {
              _ | {
                access | { _ | String } | optional,
                commands | { pre_start | String | optional, start | String, },
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
                mounts
                  | {
                    _ | {
                      service | String | optional,
                      source
                        | std.enum.TagOrString
                        | [| 'tmp, 'service, 'local |],
                      source_path | String | optional,
                    }
                  }
                  | optional,
                relationships
                  | {
                    _ | std.contract.any_of
                      [
                        String,
                        js2n.Null,
                        {
                          endpoint | String | optional,
                          service | String | optional,
                          ..
                        }
                      ]
                  }
                  | optional,
                resources
                  | {
                    base_memory | std.number.Integer | optional,
                    memory_ratio | std.number.Integer | optional,
                  }
                  | optional,
                size | String | optional,
                timezone | String | optional,
                variables | { _ | {  .. } } | optional,
              }
            }
            | optional,
        }
      ]