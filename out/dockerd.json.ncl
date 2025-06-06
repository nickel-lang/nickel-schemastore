# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      allow-nondistributable-artifacts | Array js2n.Always | optional,
      api-cors-header | String | optional,
      authorization-plugins | Array js2n.Always | optional,
      bip | String | optional,
      bridge | String | optional,
      cgroup-parent | String | optional,
      cluster-advertise | String | optional,
      cluster-store | String | optional,
      cluster-store-opts | { _ | Dyn } | optional,
      containerd | String | optional,
      containerd-namespace | String | optional,
      containerd-plugin-namespace | String | optional,
      data-root | String | optional,
      debug | Bool | optional,
      default-address-pools
        | Array { base | String | optional, size | Number | optional, .. }
        | optional,
      default-cgroupns-mode
        | std.enum.TagOrString
        | [| 'host, 'private |]
        | optional,
      default-gateway | String | optional,
      default-gateway-v6 | String | optional,
      default-ipc-mode
        | std.enum.TagOrString
        | [| 'private, 'shareable |]
        | optional,
      default-runtime | String | optional,
      default-shm-size | String | optional,
      default-ulimits
        | {
          nofile
            | {
              Hard | Number | optional,
              Name | String | optional,
              Soft | Number | optional,
              ..
            }
            | optional,
          ..
        }
        | optional,
      dns | Array js2n.Always | optional,
      dns-opts | Array String | optional,
      dns-search | Array String | optional,
      exec-opts | Array String | optional,
      exec-root | String | optional,
      experimental | Bool | optional,
      features | { _ | Dyn } | optional,
      fixed-cidr | String | optional,
      fixed-cidr-v6 | String | optional,
      group | String | optional,
      hosts | Array String | optional,
      icc | Bool | optional,
      init | Bool | optional,
      init-path | String | optional,
      insecure-registries | Array String | optional,
      ip | String | optional,
      ip-forward | Bool | optional,
      ip-masq | Bool | optional,
      ip6tables | Bool | optional,
      iptables | Bool | optional,
      ipv6 | Bool | optional,
      labels | Array js2n.Always | optional,
      live-restore | Bool | optional,
      log-driver | String | optional,
      log-level | String | optional,
      log-opts
        | {
          cache-compress | String | optional,
          cache-disabled | String | optional,
          cache-max-file | String | optional,
          cache-max-size | String | optional,
          env | String | optional,
          labels | String | optional,
          max-file | String | optional,
          max-size | String | optional,
          ..
        }
        | optional,
      max-concurrent-downloads | Number | optional,
      max-concurrent-uploads | Number | optional,
      max-download-attempts | Number | optional,
      mtu | Number | optional,
      no-new-privileges | Bool | optional,
      node-generic-resources | Array String | optional,
      oom-score-adjust | Number | optional,
      pidfile | String | optional,
      raw-logs | Bool | optional,
      registry-mirrors | Array String | optional,
      runtimes
        | {
          cc-runtime | { path | String | optional, .. } | optional,
          custom
            | {
              path | String | optional,
              runtimeArgs | Array String | optional,
              ..
            }
            | optional,
          ..
        }
        | optional,
      seccomp-profile | String | optional,
      selinux-enabled | Bool | optional,
      shutdown-timeout | Number | optional,
      storage-driver | String | optional,
      storage-opts | Array js2n.Always | optional,
      swarm-default-advertise-addr | String | optional,
      tls | Bool | optional,
      tlscacert | String | optional,
      tlscert | String | optional,
      tlskey | String | optional,
      tlsverify | Bool | optional,
      userland-proxy | Bool | optional,
      userland-proxy-path | String | optional,
      userns-remap | String | optional,
      ..
    }