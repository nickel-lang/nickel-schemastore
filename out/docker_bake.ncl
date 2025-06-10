# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.group" = { targets | Array String, .. },
      "definitions.keyValue" = js2n.string.Matches "^[^=]+=[^=]+$",
      "definitions.shmSize" = js2n.string.Matches "^[1-9][0-9]*[bkmg]?$",
      "definitions.target" =
        {
            annotations
              | Array (
                js2n.Nullable
                  (std.contract.Sequence
                    [ refs."definitions.keyValue", String ])
              )
              | doc "The annotations attribute lets you add annotations to images built with bake. The key takes a list of annotations, in the format of KEY=VALUE."
              | optional,
            args
              | { _ | js2n.Nullable String }
              | doc m%"
                Use the args attribute to define build arguments for the target. This has the same effect as passing a --build-arg flag to the build command.
                You can set args attributes to use null values. Doing so forces the target to use the ARG value specified in the Dockerfile.
              "%
              | optional,
            attest
              | Array (
                std.contract.Sequence [ refs."definitions.keyValue", String ]
              )
              | doc "The attest attribute lets you apply build attestations to the target. This attribute accepts the long-form CSV version of attestation parameters."
              | optional,
            cache-from
              | Array String
              | doc "Build cache sources. The builder imports cache from the locations you specify. It uses the Buildx cache storage backends, and it works the same way as the --cache-from flag. This takes a list value, so you can specify multiple cache sources."
              | optional,
            cache-to
              | Array String
              | doc "Build cache export destinations. The builder exports its build cache to the locations you specify. It uses the Buildx cache storage backends, and it works the same way as the --cache-to flag. This takes a list value, so you can specify multiple cache export targets."
              | optional,
            context
              | String
              | doc "Specifies the location of the build context to use for this target. Accepts a URL or a directory path. This is the same as the build context positional argument that you pass to the build command."
              | optional,
            contexts
              | { _ | String }
              | doc m%"
                Additional build contexts. This is the same as the --build-context flag. This attribute takes a map, where keys result in named contexts that you can reference in your builds.
                You can specify different types of contexts, such local directories, Git URLs, and even other Bake targets. Bake automatically determines the type of a context based on the pattern of the context value.
              "%
              | optional,
            dockerfile
              | String
              | doc "Name of the Dockerfile to use for the build. This is the same as the --file flag for the docker build command."
              | optional,
            dockerfile-inline
              | String
              | doc m%"
                Uses the string value as an inline Dockerfile for the build target.
                The dockerfile-inline takes precedence over the dockerfile attribute. If you specify both, Bake uses the inline version.
              "%
              | optional,
            inherits
              | Array String
              | doc "A target can inherit attributes from other targets. Use inherits to reference from one target to another."
              | optional,
            labels
              | { _ | js2n.Nullable String }
              | doc m%"
                Assigns image labels to the build. This is the same as the --label flag for docker build.
                t's possible to use a null value for labels. If you do, the builder uses the label value specified in the Dockerfile.
              "%
              | optional,
            matrix
              | { _ | Array Dyn }
              | doc m%"
                A matrix strategy lets you fork a single target into multiple different variants, based on parameters that you specify. This works in a similar way to [Matrix strategies for GitHub Actions]. You can use this to reduce duplication in your bake definition.
                The matrix attribute is a map of parameter names to lists of values. Bake builds each possible combination of values as a separate target.
                Each generated target must have a unique name. To specify how target names should resolve, use the name attribute.
              "%
              | optional,
            name
              | String
              | doc "Specify name resolution for targets that use a matrix strategy."
              | optional,
            no-cache
              | Bool
              | doc "Don't use cache when building the image. This is the same as the --no-cache flag for docker build."
              | optional,
            no-cache-filter
              | Array String
              | doc "Don't use build cache for the specified stages. This is the same as the --no-cache-filter flag for docker build."
              | optional,
            output
              | Array String
              | doc "Configuration for exporting the build output. This is the same as the --output flag."
              | optional,
            platforms
              | Array String
              | doc "Set target platforms for the build target. This is the same as the --platform flag."
              | optional,
            pull
              | Bool
              | doc "Configures whether the builder should attempt to pull images when building the target. This is the same as the --pull flag for docker build."
              | optional,
            secret
              | Array String
              | doc "Defines secrets to expose to the build target. This is the same as the --secret flag."
              | optional,
            shm-size
              | refs."definitions.shmSize"
              | String
              | doc m%"
                Sets the size of the shared memory allocated for build containers when using RUN instructions.
                The format is <number><unit>. number must be greater than 0. Unit is optional and can be b (bytes), k (kilobytes), m (megabytes), or g (gigabytes). If you omit the unit, the system uses bytes.
                This is the same as the --shm-size flag for docker build.
              "%
              | optional,
            ssh
              | Array String
              | doc "Defines SSH agent sockets or keys to expose to the build. This is the same as the --ssh flag. This can be useful if you need to access private repositories during a build."
              | optional,
            tags
              | Array String
              | doc "Image names and tags to use for the build target. This is the same as the --tag flag."
              | optional,
            target
              | String
              | doc "Set the target build stage to build. This is the same as the --target flag."
              | optional,
            ulimits
              | Array (
                std.contract.Sequence [ refs."definitions.ulimit", String ]
              )
              | doc "Ulimits overrides the default ulimits of build's containers when using RUN instructions and are specified with a soft and hard limit as such: <type>=<soft limit>[:<hard limit>]."
              | optional,
          },
      "definitions.ulimit" = js2n.string.Matches "^[a-z]+=[0-9]+(?::[0-9]+)?$",
    }
    in
  {
      "$schema" | String | optional,
      function
        | {
          _ | {
            params
              | Array String
              | doc "Arguments for the function."
              | optional,
            result
              | String
              | doc m%"
                Return value. It can take not only just string but also other functions, variables and etc.
                If you want to interpolate variables or logic, put them in ${}.
                For example, if you want to increment a number param, you can do it like this: ${number+1}
              "%,
            variadic_params
              | String
              | doc "Variable-length argument list."
              | optional,
            ..
          }
        }
        | doc "Functions allow you to define custom functions that you can use in your Bake file. You can use functions to generate values for attributes in your targets."
        | optional,
      group
        | js2n.record.Record
          {
            additional = 'Some refs."definitions.group",
            patterns = {},
            properties = { "default" = refs."definitions.group", },
            required = {},
          }
        | doc "Groups allow you to invoke multiple builds (targets) at once."
        | optional,
      target
        | { _ | refs."definitions.target" }
        | doc "A target reflects a single docker build invocation."
        | optional,
      variable
        | { _ | { "default" | js2n.Nullable String | optional, } }
        | doc m%"
          The HCL file format supports variable block definitions. You can use variables as build arguments in your Dockerfile, or interpolate them in attribute values in your Bake file.
          You can assign a default value for a variable in the Bake file, or assign a null value to it. If you assign a null value, Buildx uses the default value from the Dockerfile instead.
          You can override variable defaults set in the Bake file using environment variables.
        "%
        | optional,
    }