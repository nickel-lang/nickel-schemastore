# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      analytics | Bool | optional,
      ca
        | std.contract.any_of [ String, { _ | Dyn } ]
        | doc "The CA certificates to be used, defaults to null. This is similar to the registry key, specifying each CA to use for each registry endpoint."
        | optional,
      color
        | Bool
        | doc "Enable or disable use of colors in the CLI output."
        | optional,
      cwd
        | String
        | doc "The directory from which bower should run. All relative paths will be calculated according to this setting."
        | optional,
      directory
        | String
        | doc "The directory from which bower should run. All relative paths will be calculated according to this setting."
        | optional,
      https-proxy
        | String
        | doc "The proxy to use for https requests."
        | optional,
      ignoredDependencies
        | Array String
        | doc "Bower will ignore these dependencies when resolving packages"
        | optional,
      interactive
        | Bool
        | doc "Makes bower interactive, prompting whenever necessary"
        | optional,
      json
        | String
        | doc "A file path to the Bower configuration file"
        | optional,
      proxy | String | doc "The proxy to use for http requests." | optional,
      registry
        | std.contract.any_of
          [
            String,
            {
              publish
                | String
                | doc "The URL to use when publishing packages."
                | optional,
              register
                | String
                | doc "The URL to use when registering packages."
                | optional,
              search
                | std.contract.any_of [ String, Array Dyn ]
                | doc "An array of URLs pointing to read-only Bower registries. A string means only one. When looking into the registry for an endpoint, Bower will query these registries by the specified order."
                | optional,
              ..
            }
          ]
        | doc "The registry config"
        | optional,
      resolvers
        | Array String
        | doc "Identifies pluggable resolvers to be used for locating and fetching packages"
        | optional,
      scripts
        | {
          postinstall | String | doc "A script to run after install" | optional,
          preinstall | String | doc "A script to run before install" | optional,
          preuninstall
            | String
            | doc "A script to run before uninstall"
            | optional,
          ..
        }
        | doc "Contains custom hooks used to trigger other automated tools"
        | optional,
      shallowCloneHosts
        | Array String
        | doc "Whitelists hosts which are known to support shallow cloning"
        | optional,
      storage
        | {
          links | String | optional,
          packages | String | optional,
          registry | String | optional,
          ..
        }
        | doc "Where to store persistent data, such as cache, needed by bower."
        | optional,
      strict-ssl
        | Bool
        | doc "Whether or not to do SSL key validation when making requests via https."
        | optional,
      timeout
        | Number
        | doc "The timeout to be used when making requests in milliseconds."
        | optional,
      tmp
        | String
        | doc "Where to store temporary files and folders"
        | optional,
      user-agent
        | String
        | doc "Sets the User-Agent for each request made."
        | optional,
      ..
    }