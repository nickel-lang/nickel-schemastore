# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      developer_mode | Bool | doc "Not currently used." | optional,
      fail_on_hook_fail
        | Bool
        | doc "Whether ddev start should be interrupted by a failing hook, on a single project or for all projects if used globally."
        | optional,
      instrumentation_opt_in
        | Bool
        | doc "Whether to allow instrumentation reporting."
        | optional,
      instrumentation_queue_size
        | std.number.Integer
        | doc "Maximum number of locally collected events for instrumentation reporting."
        | optional,
      instrumentation_reporting_interval
        | std.number.Integer
        | doc "Reporting interval in hours for instrumentation reporting."
        | optional,
      instrumentation_user
        | String
        | doc "Specific name identifier for instrumentation reporting."
        | optional,
      internet_detection_timeout_ms
        | std.number.Integer
        | doc "Internet detection timeout in milliseconds."
        | optional,
      last_started_version
        | String
        | doc "Last started version using \"ddev --version\" command."
        | optional,
      letsencrypt_email
        | String
        | doc "Email associated with Let's Encrypt feature. (Works in conjunction with use_letsencrypt.) (Not currently compatible with Traefik router.)"
        | optional,
      mailpit_http_port
        | String
        | doc "Port for project's Mailpit HTTP URL."
        | optional,
      mailpit_https_port
        | String
        | doc "Port for project's Mailpit HTTPS URL."
        | optional,
      messages
        | { ticker_interval | std.number.Integer, }
        | doc "Configure messages like the Tip of the Day."
        | optional,
      mkcert_caroot
        | String
        | doc "The absolute path to the directory containing mkcert certificates using \"mkcert -CAROOT\" command."
        | optional,
      no_bind_mounts
        | Bool
        | doc "Whether to not use Docker bind mounts."
        | optional,
      omit_containers
        | js2n.array.UniqueItems
        | Array (
          std.contract.Sequence
            [ std.enum.TagOrString, [| 'ddev-ssh-agent, 'ddev-router |] ]
        )
        | doc "A list of container types that should not be started when the project is started."
        | optional,
      performance_mode
        | std.enum.TagOrString
        | [| 'nfs, 'mutagen, 'none, 'global |]
        | doc "Defines the performance optimization mode to be used. Currently Mutagen asynchronous caching and NFS are supported. Mutagen is enabled by default on Mac and Windows."
        | optional,
      project_tld
        | String
        | doc "Set the top-level domain to be used for projects, defaults to ddev.site (default \"ddev.site\")."
        | optional,
      required_docker_compose_version
        | String
        | doc "Specific docker-compose version for download."
        | optional,
      router_bind_all_interfaces
        | Bool
        | doc "Whether to bind ddev-router's ports on all network interfaces."
        | optional,
      router_http_port
        | String
        | doc "The router HTTP port for this project."
        | optional,
      router_https_port
        | String
        | doc "The router HTTPS port for this project."
        | optional,
      simple_formatting
        | Bool
        | doc "Whether to disable most ddev list and ddev describe table formatting."
        | optional,
      table_style
        | std.enum.TagOrString
        | [| 'bright, 'bold, '"default" |]
        | doc "Style for ddev list and ddev describe."
        | optional,
      traefik_monitor_port
        | String
        | doc "Specify an alternate port for the Traefik (ddev-router) monitor port. This defaults to 10999 and rarely needs to be changed, but can be changed in cases of port conflicts."
        | optional,
      use_docker_compose_from_path
        | Bool
        | doc "Whether to use the system-installed docker-compose. You can otherwise use required_docker_compose_version to specify a version for download."
        | optional,
      use_hardened_images
        | Bool
        | doc "Whether to use hardened images for internet deployment."
        | optional,
      use_letsencrypt
        | Bool
        | doc "Whether to enable Let's Encrypt integration. (Works in conjunction with letsencrypt_email.) (Not currently compatible with Traefik router.)"
        | optional,
      web_environment
        | Array String
        | doc "Add environment variables to the web container."
        | optional,
      wsl2_no_windows_hosts_mgt
        | Bool
        | doc "(WSL2 only) Whether to disable the management and checking of the Windows hosts file. By default, when using WSL2, DDEV manages the system-wide hosts file on the Windows side (normally C:\\Windows\\system32\\drivers\\etc\\hosts) by using ddev.exe installed on the Windows side. This normally works better for all applications, including browsers and IDEs. However, this behavior can be disabled by setting wsl_no_windows_hosts_mgt: true."
        | optional,
      xdebug_ide_location
        | String
        | doc "Adjust Xdebug listen location for WSL2 or in-container."
        | optional,
      xhprof_mode
        | std.enum.TagOrString
        | [| 'xhgui, 'prepend |]
        | doc "Defines the xhprof usage mode used by the project."
        | optional,
    }