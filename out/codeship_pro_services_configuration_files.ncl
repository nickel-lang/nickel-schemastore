# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.ExternalService" =
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
                      js2n.record.Required [ "build" ],
                      Array Dyn
                    ],
                  std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      js2n.record.Required [ "image" ],
                      Array Dyn
                    ]
                ],
              {
                add_docker
                  | Bool
                  | doc "If true, the docker socket will be exposed in this service."
                  | optional,
                build
                  | std.contract.any_of
                    [
                      std.contract.Sequence
                        [ refs."definitions.externalBuild", { _ | Dyn } ],
                      String
                    ]
                  | doc "How to build the image for this service. Mutually exclusive with 'image'. Can either be just a path containing a Dockerfile, or a build definition."
                  | optional,
                cached
                  | Bool
                  | doc "Whether the image for this service should be rebuilt from scratch for each run, or if the latest build of the service's image from the configured cache branch (defaulting to 'master') should be used."
                  | optional,
                cap_add | Array String | optional,
                cap_drop | Array String | optional,
                command
                  | String
                  | doc "The command to run when launching the service, overriding the 'CMD' in the image. Optional."
                  | optional,
                cpu_shares | std.number.Integer | optional,
                cpuset | String | optional,
                default_cache_branch
                  | String
                  | doc "The branch to use for caching. Defaults to 'master'"
                  | optional,
                depends_on
                  | Array String
                  | doc "A list of other services that this service depends on. Use this instead of 'links'"
                  | optional,
                dns | Array String | optional,
                dns_search | Array String | optional,
                dockercfg_service
                  | String
                  | doc "The name of another defined service that provides the Docker configuration for building and running this service. Optional."
                  | optional,
                dockerfile
                  | String
                  | doc "A specific Dockerfile to use, rather than the one in the build context"
                  | optional,
                domainname | String | optional,
                encrypted_dockercfg_path
                  | String
                  | doc "The location of a Docker configuration file encrypted by Jet to be used with building and running this service. Optional."
                  | optional,
                encrypted_env_file
                  | std.contract.any_of [ Array String, String ]
                  | doc "The location of one or more files, encrypted with Jet, containing environment variables to be made available to this service and steps running on it. Optional."
                  | optional,
                encrypted_environment
                  | Array String
                  | doc "A list of encrypted key/value pairs to be used in the environment for this service and steps running on it. Optional."
                  | optional,
                entrypoint
                  | std.contract.any_of [ Array String, String ]
                  | optional,
                env_file
                  | std.contract.any_of [ Array String, String ]
                  | doc "The location of one or more files containing environment variables to be made available to this service and steps running on it. Optional."
                  | optional,
                environment
                  | std.contract.any_of [ Array String, {  .. } ]
                  | doc "Either a map of key/value pairs or a list of 'KEY=VALUE' pairs to be used in the environment for this service and steps running on it. Optional."
                  | optional,
                expose | Array String | optional,
                extra_hosts | Array String | optional,
                hostname | String | optional,
                image
                  | String
                  | doc "A pre-existing image to use for this service. Mutually exclusive with 'build'"
                  | optional,
                links | Array String | optional,
                mem_limit | String | optional,
                ports
                  | Array String
                  | doc "A list of ports that should be exposed to other services. The ports should be defined like '9999', as strings"
                  | optional,
                privileged | Bool | optional,
                read_only | Bool | optional,
                restart | String | optional,
                security_opt | Array String | optional,
                user | String | optional,
                volumes
                  | Array String
                  | doc "A list of origin/destination pairs of directories or files relative to the build context and where they should be mounted in the service. Optional."
                  | optional,
                volumes_from
                  | Array String
                  | doc "A list of other services which should have their defined volumes mounted into this service as well. Optional."
                  | optional,
                working_dir | String | optional,
              }
            ],
      "definitions.externalBuild" =
        {
            args
              | std.contract.any_of [ Array String, {  .. } ]
              | doc "Build args to pass to Docker. Optional."
              | optional,
            configure
              | refs."definitions.externalBuildConfigure"
              | { _ | Dyn }
              | optional,
            context
              | String
              | doc "The directory used as the Docker build context. Defaults to the same directory as the codeship-services.yml file"
              | optional,
            dockerfile
              | String
              | doc "A specific Dockerfile to use rather than the 'Dockerfile' present in the build context. Optional."
              | optional,
            dockerfile_path
              | String
              | doc "DEPRECATED: Use 'dockerfile' instead"
              | optional,
            encrypted_args
              | std.contract.any_of [ Array String, String ]
              | doc "A list of encrypted key/value pairs to be used as build args to Docker. Optional."
              | optional,
            encrypted_args_file
              | std.contract.any_of [ Array String, String ]
              | doc "One or more files, encrypted with Jet, to have their contents decrypted and passed to Docker as build args. Optional."
              | optional,
            image
              | String
              | doc "The output image name for this image. Optional."
              | optional,
            path | String | doc "DEPRECATED: Use 'context' instead." | optional,
          },
      "definitions.externalBuildConfigure" =
        { command | String | optional, service | String | optional, },
    }
    in
  {
      _ | std.contract.Sequence
        [ refs."definitions.ExternalService", { _ | Dyn } ]
    }