# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.ProcConfig" =
        {
            autostart
              | Bool
              | doc "If set to true, the service will be started when the stack is started. If set to false, the service will not be started automatically when the stack is started."
              | optional,
            command
              | String
              | doc "The command to be run to start the service. If the command has spaces it must be double quoted",
            cwd
              | String
              | doc "The working directory for the command. This directory will be cd'd into before running the command"
              | optional,
            domains
              | js2n.array.UniqueItems
              | Array String
              | doc "A list of domains to be proxied to the service. Each item in the list must be a string. In our local stacks domains should use the `test` tld"
              | optional,
            env
              | js2n.array.UniqueItems
              | Array String
              | doc "A list of environment variables to be set for the command. Each item in the list should be a string in the form of `KEY=VALUE`"
              | optional,
            env_file
              | String
              | doc "If set all environment variables in the file will be set for the command. The file should be in the format of `KEY=VALUE` with each key-value pair on a new line"
              | optional,
            nginx_location_options
              | { _ | String }
              | doc "A list of options to be set for the location block in the nginx configuration for this process. Here should be proxy-related configurations. This is a map, the key is the name of the directive, the value is the argument"
              | optional,
            nginx_server_options
              | { _ | String }
              | doc "A list of options to be set for the server block in the nginx configuration for this process. Here should be nginx general configurations. This is a map, the key is the name of the directive, the value is the argument"
              | optional,
            port
              | std.number.Integer
              | js2n.number.Maximum 65535
              | js2n.number.Minimum 0
              | doc "This is the port the proxy will use to forward requests to the service. It must be unique for each service in the stack. Please note that the process should be configured to run on this port, and concurrent stacks could interfere one with another.The port must be set along with domains for the service to be proxied"
              | optional,
            proxy_https
              | Bool
              | doc "If set to true, the proxy will forward requests to the service using HTTPS. The service must be configured to accept HTTPS requests. Setting this has no effect on the proxy external connections, that are always https"
              | optional,
            stop_sequence
              | String
              | doc "The key sequence to be used by the stack runner to stop the service. For docker services use 'C-c'. If not set a SIGTERM will be sent. The sequence must be a combination of keys, emacs-style, for example for ctrl+c use 'C-c'. Do not specify SIGTERM or SIGKILL"
              | optional,
          },
    }
    in
  {
      additionalProperties | js2n.Never | optional,
      bastion
        | {
          host
            | String
            | doc "The bastion host to connect to. Can be an ip address or a domain",
          key_path
            | String
            | doc "The path to the private key to use to connect to the bastion host. Please note that the key should be store in a directory outside the stack directory, to avoid being included in the stack repository",
          user | String | doc "The user to connect to the bastion host",
        }
        | doc "The bastion configuration for the stack. Use this to quick connect to the bastion host of the stack with `monade bastion`"
        | optional,
      name
        | String
        | doc "The name of the stack. It will be used as a prefix for the stack's resources",
      nginx
        | std.enum.TagOrString
        | [| 'local, 'system |]
        | doc "Specifies whether to use the system-wide nginx service or spawn a local nginx process among other services. If not specified, 'system' is implied. Local nginx requires an nginx binary in the path. System wide nginx configuration is left to the user."
        | optional,
      services
        | { _ | refs."definitions.ProcConfig" }
        | doc "The services to be run in the stack. Each service is represented by its name, which is the key",
      ..
    }