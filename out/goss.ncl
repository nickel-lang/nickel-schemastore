# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.addrTest" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                local-address | String | optional,
                meta | refs."definitions.meta" | { _ | Dyn } | optional,
                reachable | Bool,
                timeout | std.number.Integer,
                title | refs."definitions.title" | String | optional,
                ..
              },
              Array Dyn
            ],
      "definitions.commandTest" =
        {
            exec
              | String
              | doc "command to execute, defaults to the hash key"
              | optional,
            exit-status
              | std.number.Integer
              | doc "Validates the exit-status and output of a command",
            meta | refs."definitions.meta" | { _ | Dyn } | optional,
            skip | Bool | optional,
            stderr
              | Array String
              | doc "can be a string or pattern, see https://goss.rocks/gossfile#patterns"
              | optional,
            stdout
              | Array String
              | doc "can be a string or pattern, see https://goss.rocks/gossfile#patterns"
              | optional,
            timeout | std.number.Integer | doc "in milliseconds" | optional,
            title | refs."definitions.title" | String | optional,
            ..
          },
      "definitions.dnsTest" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                addrs
                  | Array String
                  | doc m%"
                    list of addresses e.g. ["127.0.0.1", "::1"]
                    
                  "%
                  | optional,
                meta | refs."definitions.meta" | { _ | Dyn } | optional,
                resolvable | Bool,
                server
                  | String
                  | doc "Eg 8.8.8.8. Also supports server:port "
                  | optional,
                timeout
                  | std.number.Integer
                  | doc "in milliseconds (Only used when server attribute is provided)"
                  | optional,
                title | refs."definitions.title" | String | optional,
                ..
              },
              Array Dyn
            ],
      "definitions.fileTest" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                contains
                  | Array String
                  | doc "Check file content for these patterns. can be a string or a pattern"
                  | optional,
                exists | Bool,
                filetype
                  | std.enum.TagOrString
                  | [| 'directory, 'symlink, 'file |]
                  | optional,
                gid | std.number.Integer | optional,
                group | String | optional,
                linked-to | String | optional,
                md5 | String | doc "md5 checksum of file" | optional,
                meta | refs."definitions.meta" | { _ | Dyn } | optional,
                mode | String | optional,
                owner | String | optional,
                sha256
                  | String
                  | doc "A stronger checksum alternatives to md5 (recommended)"
                  | optional,
                sha512
                  | String
                  | doc "A stronger checksum alternatives to md5 (recommended)"
                  | optional,
                size | std.number.Integer | doc "in bytes" | optional,
                skip | Bool | optional,
                title | refs."definitions.title" | String | optional,
                uid | std.number.Integer | optional,
                ..
              },
              Array Dyn
            ],
      "definitions.gossfileTest" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                file | String | optional,
                meta | refs."definitions.meta" | { _ | Dyn } | optional,
                skip | Bool | optional,
                title | refs."definitions.title" | String | optional,
                ..
              },
              Array Dyn
            ],
      "definitions.groupTest" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                exists | Bool,
                gid | std.number.Integer | optional,
                groups | { _ | Dyn } | optional,
                meta | refs."definitions.meta" | { _ | Dyn } | optional,
                skip | Bool | optional,
                title | refs."definitions.title" | String | optional,
                uid | std.number.Integer | optional,
                ..
              },
              Array Dyn
            ],
      "definitions.httpTest" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                allow-insecure | Bool | optional,
                body
                  | Array Dyn
                  | doc "Check http response content for these patterns"
                  | optional,
                ca-file
                  | String
                  | doc m%"
                    CA root certs pem file, ex: /etc/ssl/cert.pem
                    
                  "%
                  | optional,
                cert-file
                  | String
                  | doc m%"
                    certificate file to use for authentication (used with key-file)
                    
                  "%
                  | optional,
                headers
                  | Array String
                  | doc m%"
                    Check http response headers for these patterns (e.g. "Content-Type: text/html")
                    NOTE: only the first Host header will be used to set the Request.Host value if multiple are provided.
                    
                  "%
                  | optional,
                key-file
                  | String
                  | doc m%"
                    private-key file to use for authentication (used with cert-file)
                    
                  "%
                  | optional,
                meta | refs."definitions.meta" | { _ | Dyn } | optional,
                method
                  | std.enum.TagOrString
                  | [|
                    'TRACE,
                    'OPTIONS,
                    'CONNECT,
                    'PATCH,
                    'DELETE,
                    'POST,
                    'HEAD,
                    'PUT,
                    'GET
                  |]
                  | doc "http method"
                  | optional,
                no-follow-redirects
                  | Bool
                  | doc "Setting this to true will NOT follow redirects"
                  | optional,
                password | String | doc "password for basic auth" | optional,
                proxy
                  | String
                  | doc m%"
                    proxy server to proxy traffic through. Proxy can also be set with environment variables http_proxy.
                    
                  "%
                  | optional,
                request-body | { _ | Dyn } | doc "request body" | optional,
                request-headers
                  | Array String
                  | doc m%"
                    Set request header values, e.g. [ "Content-Type: text/html" ]
                    
                  "%
                  | optional,
                skip | Bool | optional,
                status | std.number.Integer,
                timeout | std.number.Integer | optional,
                title | refs."definitions.title" | String | optional,
                username | String | doc "username for basic auth" | optional,
                ..
              },
              Array Dyn
            ],
      "definitions.interfaceTest" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                addrs | Array String | optional,
                exists | Bool,
                meta | refs."definitions.meta" | { _ | Dyn } | optional,
                mtu | std.number.Integer | optional,
                title | refs."definitions.title" | String | optional,
                ..
              },
              Array Dyn
            ],
      "definitions.kernelParamTest" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                meta | refs."definitions.meta" | { _ | Dyn } | optional,
                title | refs."definitions.title" | String | optional,
                value | String,
                ..
              },
              Array Dyn
            ],
      "definitions.matchingTest" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                content
                  | std.contract.any_of [ { _ | Dyn }, Array Dyn, String ]
                  | optional,
                matches
                  | std.contract.any_of
                    [ std.number.Integer, { _ | Dyn }, Array Dyn ]
                  | optional,
                meta | refs."definitions.meta" | { _ | Dyn } | optional,
                title | refs."definitions.title" | String | optional,
                ..
              },
              Array Dyn
            ],
      "definitions.meta" = { _ | Dyn },
      "definitions.mountTest" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                exists | Bool,
                filesystem | String | optional,
                meta | refs."definitions.meta" | { _ | Dyn } | optional,
                opts | Array String | optional,
                source | String | optional,
                timeout | std.number.Integer | optional,
                title | refs."definitions.title" | String | optional,
                usage
                  | { lt | std.number.Integer | optional, .. }
                  | doc m%"
                    % of blocks used in this mountpoint
                    
                  "%
                  | optional,
                ..
              },
              Array Dyn
            ],
      "definitions.packageTest" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                installed | Bool,
                meta | refs."definitions.meta" | { _ | Dyn } | optional,
                skip | Bool | optional,
                title | refs."definitions.title" | String | optional,
                versions
                  | std.contract.any_of [ { _ | Dyn }, Array String ]
                  | optional,
                ..
              },
              Array Dyn
            ],
      "definitions.portTest" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                ip
                  | Array String
                  | doc "what IP(s) is it listening on"
                  | optional,
                listening | Bool,
                meta | refs."definitions.meta" | { _ | Dyn } | optional,
                skip | Bool | optional,
                title | refs."definitions.title" | String | optional,
                ..
              },
              Array Dyn
            ],
      "definitions.processTest" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                meta | refs."definitions.meta" | { _ | Dyn } | optional,
                running | Bool,
                title | refs."definitions.title" | String | optional,
                ..
              },
              Array Dyn
            ],
      "definitions.serviceTest" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                enabled | Bool,
                meta | refs."definitions.meta" | { _ | Dyn } | optional,
                running | Bool,
                skip | Bool,
                title | refs."definitions.title" | String | optional,
                ..
              },
              Array Dyn
            ],
      "definitions.title" = String,
      "definitions.userTest" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                exists | Bool,
                gid
                  | std.contract.any_of
                    [ refs."definitions.matchingTest", std.number.Integer ]
                  | optional,
                groups
                  | std.contract.any_of
                    [
                      refs."definitions.matchingTest",
                      js2n.array.ArrayOf String
                    ]
                  | optional,
                home
                  | std.contract.any_of
                    [ refs."definitions.matchingTest", String ]
                  | optional,
                meta | refs."definitions.meta" | { _ | Dyn } | optional,
                shell | String | optional,
                skip | Bool | optional,
                title | refs."definitions.title" | String | optional,
                uid
                  | std.contract.any_of
                    [ refs."definitions.matchingTest", std.number.Integer ]
                  | optional,
                ..
              },
              Array Dyn
            ],
    }
    in
  {
      addr
        | { _ | refs."definitions.addrTest" }
        | doc "Validates if a remote address:port are accessible."
        | optional,
      command
        | { _ | refs."definitions.commandTest" }
        | doc "test executing a command"
        | optional,
      dns
        | { _ | refs."definitions.dnsTest" }
        | doc "Validates that the provided address is resolvable and the addrs it resolves to."
        | optional,
      file
        | { _ | refs."definitions.fileTest" }
        | doc "Validates the state of a file, directory, or symbolic link"
        | optional,
      gossfile
        | { _ | refs."definitions.gossfileTest" }
        | doc m%"
          Import other gossfiles from this one. This is the best way to maintain a large number of tests, and/or create profiles. See render for more examples. Glob patterns can be also be used to specify matching gossfiles.
          You can specify the gossfile(s) either as the resource key, or using the 'file' attribute.
          
          If the 'skip' attribute is true, then the file is not processed. If the filename is a glob pattern, then none of the matching files are processed. Note that this is not the same as skipping the contained resources; any overrides in the referenced gossfile will not be processed, and the resource count will not be incremented. Skipping a gossfile include is the same as omitting the gossfile resource entirely.
          
        "%
        | optional,
      group
        | { _ | refs."definitions.groupTest" }
        | doc "Validates the state of a group"
        | optional,
      http
        | { _ | refs."definitions.httpTest" }
        | doc "description: Validates network interface values"
        | optional,
      interface
        | { _ | refs."definitions.interfaceTest" }
        | doc "test "
        | optional,
      kernel-param
        | { _ | refs."definitions.kernelParamTest" }
        | doc "test "
        | optional,
      matching
        | { _ | Dyn }
        | doc "Validates specified content against a matcher. Best used with Templates."
        | optional,
      mount
        | { _ | refs."definitions.mountTest" }
        | doc "Validates mount point attributes."
        | optional,
      package
        | { _ | refs."definitions.packageTest" }
        | doc m%"
          Validates the state of a package"
          NOTE: this check uses the --package <format> parameter passed on the command line.
          
        "%
        | optional,
      port
        | { _ | refs."definitions.portTest" }
        | doc m%"
          Validates the state of a local port.
          
          Note: Goss might consider your port to be listening on tcp6 rather than tcp, try running goss add port .. to see how goss detects it. (explanation)
          
        "%
        | optional,
      process
        | { _ | refs."definitions.processTest" }
        | doc "Validates if a process is running."
        | optional,
      service
        | { _ | refs."definitions.serviceTest" }
        | doc "Validates the state of a service."
        | optional,
      user
        | { _ | refs."definitions.userTest" }
        | doc m%"
          Validates the state of a user"
          NOTE: This check is inspecting the contents of local passwd file /etc/passwd, this does not validate remote users (e.g. LDAP).
          
        "%
        | optional,
      ..
    }