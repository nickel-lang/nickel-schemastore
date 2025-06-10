# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.ApkRequirements" =
        {
            packages | std.contract.any_of [ String, Array String ] | optional,
            type
              | std.contract.Equal "apk"
              | doc "Specify which apk packages should be available in order to run the component.",
          },
      "definitions.AptRequirements" =
        {
            interactive
              | Bool
              | doc "If `false`, the Debian frontend is set to non-interactive (recommended). Default: false."
              | optional,
            packages | std.contract.any_of [ String, Array String ] | optional,
            type
              | std.contract.Equal "apt"
              | doc "Specify which apt packages should be available in order to run the component.",
          },
      "definitions.Argument" =
        js2n.OneOf
            [
              std.contract.Sequence
                [ refs."definitions.BooleanArgument", { _ | Dyn } ],
              std.contract.Sequence
                [ refs."definitions.BooleanFalseArgument", { _ | Dyn } ],
              std.contract.Sequence
                [ refs."definitions.BooleanTrueArgument", { _ | Dyn } ],
              std.contract.Sequence
                [ refs."definitions.DoubleArgument", { _ | Dyn } ],
              std.contract.Sequence
                [ refs."definitions.FileArgument", { _ | Dyn } ],
              std.contract.Sequence
                [ refs."definitions.IntegerArgument", { _ | Dyn } ],
              std.contract.Sequence
                [ refs."definitions.LongArgument", { _ | Dyn } ],
              std.contract.Sequence
                [ refs."definitions.StringArgument", { _ | Dyn } ]
            ],
      "definitions.ArgumentGroup" =
        {
            arguments
              | Array refs."definitions.Argument"
              | doc m%"
                A list of arguments for this component. For each argument, a type and a name must be specified. Depending on the type of argument, different properties can be set. See these reference pages per type for more information:  
                
                 - string
                 - file
                 - integer
                 - double
                 - boolean
                 - boolean_true
                 - boolean_false
                
              "%
              | optional,
            description
              | String
              | doc "A description of the argument group. This is only used for documentation. Multiline descriptions are supported."
              | optional,
            label
              | String
              | doc "A clean version of the argument group's name. This is only used for documentation."
              | optional,
            name | String | doc "The name of the argument group.",
            summary
              | String
              | doc "A one-sentence summary of the argument group. This is only used for documentation."
              | optional,
          },
      "definitions.Author" =
        {
            email | String | doc "E-mail of the author." | optional,
            info
              | { _ | Dyn }
              | doc "Structured information. Can be any shape: a string, vector, map or even nested map."
              | optional,
            name
              | String
              | doc "Full name of the author, usually in the name of FirstName MiddleName LastName.",
            roles | std.contract.any_of [ String, Array String ] | optional,
          },
      "definitions.BashScript" =
        {
            dest
              | String
              | doc "Resulting filename of the resource. From within a script, the file can be accessed at `meta[\"resources_dir\"] + \"/\" + dest`. If unspecified, `dest` will be set to the basename of the `path` parameter."
              | optional,
            is_executable
              | Bool
              | doc "Whether the resulting resource file should be made executable."
              | optional,
            path
              | String
              | doc "The path of the input file. Can be a relative or an absolute path, or a URI. Mutually exclusive with `text`."
              | optional,
            text
              | String
              | doc "The content of the resulting file specified as a string. Mutually exclusive with `path`."
              | optional,
            type
              | std.contract.Equal "bash_script"
              | doc m%"
                An executable Bash script.
                When defined in resources, only the first entry will be executed when running the built component or when running `viash run`.
                When defined in test_resources, all entries will be executed during `viash test`.
              "%,
          },
      "definitions.BooleanArgument" =
        {
            alternatives
              | std.contract.any_of [ String, Array String ]
              | optional,
            "default" | std.contract.any_of [ Bool, Array Bool ] | optional,
            description
              | String
              | doc "A description of the argument. This is only used for documentation. Multiline descriptions are supported."
              | optional,
            direction | refs."definitions.Direction" | String | optional,
            example | std.contract.any_of [ Bool, Array Bool ] | optional,
            info
              | { _ | Dyn }
              | doc "Structured information. Can be any shape: a string, vector, map or even nested map."
              | optional,
            label
              | String
              | doc "A clean version of the argument's name. This is only used for documentation."
              | optional,
            multiple
              | Bool
              | doc "Treat the argument value as an array. Arrays can be passed using the delimiter `--foo=1:2:3` or by providing the same argument multiple times `--foo 1 --foo 2`. You can use a custom delimiter by using the [`multiple_sep`](#multiple_sep) property. `false` by default."
              | optional,
            multiple_sep
              | String
              | doc "The delimiter character for providing [`multiple`](#multiple) values. `:` by default."
              | optional,
            name
              | String
              | doc m%"
                The name of the argument. Can be in the formats `--trim`, `-t` or `trim`. The number of dashes determines how values can be passed:  
                
                  - `--trim` is a long option, which can be passed with `executable_name --trim`
                  - `-t` is a short option, which can be passed with `executable_name -t`
                  - `trim` is an argument, which can be passed with `executable_name trim`  
                
              "%,
            required
              | Bool
              | doc "Make the value for this argument required. If set to `true`, an error will be produced if no value was provided. `false` by default."
              | optional,
            summary
              | String
              | doc "A one-sentence summary of the argument. This is only used for documentation."
              | optional,
            type
              | std.contract.Equal "boolean"
              | doc "A `boolean` type argument has two possible values: `true` or `false`.",
          },
      "definitions.BooleanFalseArgument" =
        {
            alternatives
              | std.contract.any_of [ String, Array String ]
              | optional,
            description
              | String
              | doc "A description of the argument. This is only used for documentation. Multiline descriptions are supported."
              | optional,
            direction | refs."definitions.Direction" | String | optional,
            info
              | { _ | Dyn }
              | doc "Structured information. Can be any shape: a string, vector, map or even nested map."
              | optional,
            label
              | String
              | doc "A clean version of the argument's name. This is only used for documentation."
              | optional,
            name
              | String
              | doc m%"
                The name of the argument. Can be in the formats `--no-log`, `-n` or `no-log`. The number of dashes determines how values can be passed:  
                
                  - `--no-log` is a long option, which can be passed with `executable_name --no-log`
                  - `-n` is a short option, which can be passed with `executable_name -n`
                  - `no-log` is an argument, which can be passed with `executable_name no-log`  
                
              "%,
            summary
              | String
              | doc "A one-sentence summary of the argument. This is only used for documentation."
              | optional,
            type
              | std.contract.Equal "boolean_false"
              | doc "An argument of the `boolean_false` type acts like an inverted `boolean` flag with a default value of `true`. When called as an argument it sets the `boolean` to `false`.",
          },
      "definitions.BooleanTrueArgument" =
        {
            alternatives
              | std.contract.any_of [ String, Array String ]
              | optional,
            description
              | String
              | doc "A description of the argument. This is only used for documentation. Multiline descriptions are supported."
              | optional,
            direction | refs."definitions.Direction" | String | optional,
            info
              | { _ | Dyn }
              | doc "Structured information. Can be any shape: a string, vector, map or even nested map."
              | optional,
            label
              | String
              | doc "A clean version of the argument's name. This is only used for documentation."
              | optional,
            name
              | String
              | doc m%"
                The name of the argument. Can be in the formats `--silent`, `-s` or `silent`. The number of dashes determines how values can be passed:  
                
                  - `--silent` is a long option, which can be passed with `executable_name --silent`
                  - `-s` is a short option, which can be passed with `executable_name -s`
                  - `silent` is an argument, which can be passed with `executable_name silent`  
                
              "%,
            summary
              | String
              | doc "A one-sentence summary of the argument. This is only used for documentation."
              | optional,
            type
              | std.contract.Equal "boolean_true"
              | doc "An argument of the `boolean_true` type acts like a `boolean` flag with a default value of `false`. When called as an argument it sets the `boolean` to `true`.",
          },
      "definitions.BuildInfo" =
        {
            config | String | doc "Path to the config used during build.",
            dependencies
              | Array String
              | doc "List of dependencies used during build."
              | optional,
            engine | String | doc "The engine id used during build." | optional,
            executable
              | String
              | doc "Output folder with main executable path."
              | optional,
            git_commit | String | doc "Git commit hash." | optional,
            git_remote | String | doc "Git remote name." | optional,
            git_tag | String | doc "Git tag." | optional,
            output
              | String
              | doc "Folder path to the build artifacts."
              | optional,
            runner | String | doc "The runner id used during build." | optional,
            viash_version
              | String
              | doc "The Viash version that was used to build the component."
              | optional,
          },
      "definitions.CSharpScript" =
        {
            dest
              | String
              | doc "Resulting filename of the resource. From within a script, the file can be accessed at `meta[\"resources_dir\"] + \"/\" + dest`. If unspecified, `dest` will be set to the basename of the `path` parameter."
              | optional,
            is_executable
              | Bool
              | doc "Whether the resulting resource file should be made executable."
              | optional,
            path
              | String
              | doc "The path of the input file. Can be a relative or an absolute path, or a URI. Mutually exclusive with `text`."
              | optional,
            text
              | String
              | doc "The content of the resulting file specified as a string. Mutually exclusive with `path`."
              | optional,
            type
              | std.contract.Equal "csharp_script"
              | doc m%"
                An executable C# script.
                When defined in resources, only the first entry will be executed when running the built component or when running `viash run`.
                When defined in test_resources, all entries will be executed during `viash test`.
              "%,
          },
      "definitions.ComputationalRequirements" =
        {
            commands
              | Array String
              | doc "A list of commands which should be present on the system for the script to function."
              | optional,
            cpus
              | std.number.Integer
              | doc "The maximum number of (logical) cpus a component is allowed to use."
              | optional,
            memory
              | String
              | doc "The maximum amount of memory a component is allowed to allocate. Unit must be one of B, KB, MB, GB, TB or PB for SI units (1000-base), or KiB, MiB, GiB, TiB or PiB for binary IEC units (1024-base)."
              | optional,
          },
      "definitions.Config" =
        {
            argument_groups
              | Array (
                std.contract.Sequence
                  [ refs."definitions.ArgumentGroup", { _ | Dyn } ]
              )
              | doc m%"
                A grouping of the arguments, used to display the help message.
                
                 - `name: foo`, the name of the argument group. 
                 - `description: Description of foo`, a description of the argument group. Multiline descriptions are supported.
                 - `arguments: [arg1, arg2, ...]`, list of the arguments.
                
                
              "%
              | optional,
            arguments
              | Array refs."definitions.Argument"
              | doc m%"
                A list of arguments for this component. For each argument, a type and a name must be specified. Depending on the type of argument, different properties can be set. See these reference pages per type for more information:  
                
                 - string
                 - file
                 - integer
                 - double
                 - boolean
                 - boolean_true
                 - boolean_false
                
              "%
              | optional,
            authors
              | Array (
                std.contract.Sequence [ refs."definitions.Author", { _ | Dyn } ]
              )
              | doc m%"
                A list of authors. An author must at least have a name, but can also have a list of roles, an e-mail address, and a map of custom properties.
                
                Suggested values for roles are:
                 
                | Role | Abbrev. | Description |
                |------|---------|-------------|
                | maintainer | mnt | for the maintainer of the code. Ideally, exactly one maintainer is specified. |
                | author | aut | for persons who have made substantial contributions to the software. |
                | contributor | ctb| for persons who have made smaller contributions (such as code patches).
                | datacontributor | dtc | for persons or organisations that contributed data sets for the software
                | copyrightholder | cph | for all copyright holders. This is a legal concept so should use the legal name of an institution or corporate body.
                | funder | fnd | for persons or organizations that furnished financial support for the development of the software
                
                The [full list of roles](https://www.loc.gov/marc/relators/relaterm.html) is extremely comprehensive.
                
              "%
              | optional,
            build_info | refs."definitions.BuildInfo" | { _ | Dyn } | optional,
            dependencies
              | Array (
                std.contract.Sequence
                  [ refs."definitions.Dependency", { _ | Dyn } ]
              )
              | doc "Allows listing Viash components required by this Viash component"
              | optional,
            description
              | String
              | doc "A description of the component. This is only used for documentation. Multiline descriptions are supported."
              | optional,
            engines
              | Array refs."definitions.Engine"
              | doc m%"
                A list of engine environments to execute target artifacts in.
                
                 - NativeEngine
                 - DockerEngine
                
              "%
              | optional,
            functionality
              | refs."definitions.Functionality"
              | { _ | Dyn }
              | doc m%"
                The functionality describes the behaviour of the script in terms of arguments and resources.
                By specifying a few restrictions (e.g. mandatory arguments) and adding some descriptions, Viash will automatically generate a stylish command-line interface for you.
                
              "%
              | optional,
            info
              | { _ | Dyn }
              | doc "Structured information. Can be any shape: a string, vector, map or even nested map."
              | optional,
            keywords
              | Array String
              | doc "The keywords of the components."
              | optional,
            label
              | String
              | doc "A clean version of the component's name. This is only used for documentation."
              | optional,
            license | String | doc "The license of the package." | optional,
            links
              | refs."definitions.Links"
              | { _ | Dyn }
              | doc "External links of the component."
              | optional,
            name
              | String
              | doc "Name of the component and the filename of the executable when built with `viash build`.",
            namespace
              | String
              | doc "Namespace this component is a part of. See the Namespaces guide for more information on namespaces."
              | optional,
            package_config
              | refs."definitions.PackageConfig"
              | { _ | Dyn }
              | doc "The package config content used during build."
              | optional,
            platforms
              | Array refs."definitions.Platform"
              | doc m%"
                A list of platforms to generate target artifacts for.
                
                 - Native
                 - Docker
                 - Nextflow
                
              "%
              | optional,
            references
              | refs."definitions.References"
              | { _ | Dyn }
              | doc "References to external resources related to the component."
              | optional,
            repositories
              | Array refs."definitions.RepositoryWithName"
              | doc m%"
                (Pre-)defines repositories that can be used as repository in dependencies.
                Allows reusing repository definitions in case it is used in multiple dependencies.
              "%
              | optional,
            requirements
              | refs."definitions.ComputationalRequirements"
              | { _ | Dyn }
              | doc m%"
                Computational requirements related to running the component. 
                `cpus` specifies the maximum number of (logical) cpus a component is allowed to use., whereas
                `memory` specifies the maximum amount of memory a component is allowed to allicate. Memory units must be
                in B, KB, MB, GB, TB or PB for SI units (1000-base), or KiB, MiB, GiB, TiB or PiB for binary IEC units (1024-base).
              "%
              | optional,
            resources
              | Array refs."definitions.Resource"
              | doc m%"
                Resources are files that support the component. The first resource should be a script that will be executed when the component is run. Additional resources will be copied to the same directory.
                
                Common properties:
                
                 * type: `file` / `r_script` / `python_script` / `bash_script` / `javascript_script` / `scala_script` / `csharp_script`, specifies the type of the resource. The first resource cannot be of type `file`. When the type is not specified, the default type is simply `file`.
                 * dest: filename, the resulting name of the resource.  From within a script, the file can be accessed at `meta["resources_dir"] + "/" + dest`. If unspecified, `dest` will be set to the basename of the `path` parameter.
                 * path: `path/to/file`, the path of the input file. Can be a relative or an absolute path, or a URI. Mutually exclusive with `text`.
                 * text: ...multiline text..., the content of the resulting file specified as a string. Mutually exclusive with `path`.
                 * is_executable: `true` / `false`, whether the resulting resource file should be made executable.
                
              "%
              | optional,
            runners
              | Array refs."definitions.Runner"
              | doc m%"
                A list of runners to execute target artifacts.
                
                 - ExecutableRunner
                 - NextflowRunner
                
              "%
              | optional,
            scope
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [ refs."definitions.ScopeEnum", String ],
                  std.contract.Sequence
                    [ refs."definitions.Scope", { _ | Dyn } ]
                ]
              | optional,
            status
              | refs."definitions.Status"
              | String
              | doc "Allows setting a component to active, deprecated or disabled."
              | optional,
            summary
              | String
              | doc "A one-sentence summary of the component. This is only used for documentation."
              | optional,
            test_resources
              | Array refs."definitions.Resource"
              | doc "One or more scripts to be used to test the component behaviour when `viash test` is invoked. Additional files of type `file` will be made available only during testing. Each test script should expect no command-line inputs, be platform-independent, and return an exit code >0 when unexpected behaviour occurs during testing. See Unit Testing for more info."
              | optional,
            usage
              | String
              | doc "A description on how to use the component. This will be displayed with `--help` under the 'Usage:' section."
              | optional,
            version
              | String
              | doc "Version of the component. This field will be used to version the executable and the Docker container."
              | optional,
          },
      "definitions.Dependency" =
        {
            alias
              | String
              | doc "An alternative name for the dependency component. This can include a namespace if so needed."
              | optional,
            name
              | String
              | doc "The full name of the dependency component. This should include the namespace.",
            repository
              | js2n.OneOf [ String, refs."definitions.Repository" ]
              | optional,
          },
      "definitions.Direction" =
        std.contract.Sequence [ std.enum.TagOrString, [| 'output, 'input |] ],
      "definitions.DockerEngine" =
        {
            cmd | std.contract.any_of [ String, Array String ] | optional,
            entrypoint
              | std.contract.any_of [ String, Array String ]
              | optional,
            id
              | String
              | doc "Name of the engine. As with all engines, you can give a engine a different name. By specifying `id: foo`, you can target this engine (only) by specifying `...` in any of the Viash commands."
              | optional,
            image
              | String
              | doc "The base container to start from. You can also add the tag here if you wish.",
            namespace_separator
              | String
              | doc "The separator between the namespace and the name of the component, used for determining the image name. Default: \"/\"."
              | optional,
            organization
              | String
              | doc "Name of a start container's [organization](https://docs.docker.com/docker-hub/orgs/)."
              | optional,
            registry
              | String
              | doc "The URL to the a [custom Docker registry](https://docs.docker.com/registry/) where the start container is located."
              | optional,
            setup
              | Array refs."definitions.Requirements"
              | doc m%"
                A list of requirements for installing the following types of packages:
                
                 - apt
                 - apk
                 - Docker setup instructions
                 - JavaScript
                 - Python
                 - R
                 - Ruby
                 - yum
                
                The order in which these dependencies are specified determines the order in which they will be installed.
                
              "%
              | optional,
            tag
              | String
              | doc "Specify a Docker image based on its tag."
              | optional,
            target_image
              | String
              | doc "If anything is specified in the setup section, running the `---setup` will result in an image with the name of `<target_image>:<version>`. If nothing is specified in the `setup` section, simply `image` will be used. Advanced usage only."
              | optional,
            target_image_source
              | String
              | doc "The source of the target image. This is used for defining labels in the dockerfile."
              | optional,
            target_organization
              | String
              | doc "The organization set in the resulting image. Advanced usage only."
              | optional,
            target_package
              | String
              | doc "The package name set in the resulting image. Advanced usage only."
              | optional,
            target_registry
              | String
              | doc "The URL where the resulting image will be pushed to. Advanced usage only."
              | optional,
            target_tag
              | String
              | doc "The tag the resulting image gets. Advanced usage only."
              | optional,
            test_setup
              | Array refs."definitions.Requirements"
              | doc "Additional requirements specific for running unit tests."
              | optional,
            type
              | std.contract.Equal "docker"
              | doc m%"
                Run a Viash component on a Docker backend engine.
                By specifying which dependencies your component needs, users will be able to build a docker container from scratch using the setup flag, or pull it from a docker repository.
                
              "%,
          },
      "definitions.DockerPlatform" =
        {
            cmd | std.contract.any_of [ String, Array String ] | optional,
            entrypoint
              | std.contract.any_of [ String, Array String ]
              | optional,
            id
              | String
              | doc "As with all platforms, you can give a platform a different name. By specifying `id: foo`, you can target this platform (only) by specifying `-p foo` in any of the Viash commands."
              | optional,
            image
              | String
              | doc "The base container to start from. You can also add the tag here if you wish.",
            namespace_separator
              | String
              | doc "The separator between the namespace and the name of the component, used for determining the image name. Default: \"/\"."
              | optional,
            organization
              | String
              | doc "Name of a container's [organization](https://docs.docker.com/docker-hub/orgs/)."
              | optional,
            port | std.contract.any_of [ String, Array String ] | optional,
            registry
              | String
              | doc "The URL to the a [custom Docker registry](https://docs.docker.com/registry/)"
              | optional,
            resolve_volume
              | refs."definitions.DockerResolveVolume"
              | String
              | doc "Enables or disables automatic volume mapping. Enabled when set to `Automatic` or disabled when set to `Manual`. Default: `Automatic`."
              | optional,
            run_args | std.contract.any_of [ String, Array String ] | optional,
            setup
              | Array refs."definitions.Requirements"
              | doc m%"
                A list of requirements for installing the following types of packages:
                
                 - apt
                 - apk
                 - Docker setup instructions
                 - JavaScript
                 - Python
                 - R
                 - Ruby
                 - yum
                
                The order in which these dependencies are specified determines the order in which they will be installed.
                
              "%
              | optional,
            setup_strategy
              | refs."definitions.DockerSetupStrategy"
              | String
              | doc m%"
                The Docker setup strategy to use when building a container.
                
                | Strategy | Description |
                |-----|----------|
                | `alwaysbuild` / `build` / `b` | Always build the image from the dockerfile. This is the default setup strategy.
                | `alwayscachedbuild` / `cachedbuild` / `cb` | Always build the image from the dockerfile, with caching enabled.
                | `ifneedbebuild` |  Build the image if it does not exist locally.
                | `ifneedbecachedbuild` | Build the image with caching enabled if it does not exist locally, with caching enabled.
                | `alwayspull` / `pull` / `p` |  Try to pull the container from [Docker Hub](https://hub.docker.com) or the specified docker registry.
                | `alwayspullelsebuild` / `pullelsebuild` |  Try to pull the image from a registry and build it if it does not exist.
                | `alwayspullelsecachedbuild` / `pullelsecachedbuild` |  Try to pull the image from a registry and build it with caching if it does not exist.
                | `ifneedbepull` |  If the image does not exist locally, pull the image.
                | `ifneedbepullelsebuild` |  Do nothing if the image exists locally. Else, try to pull the image from a registry. Otherwise build the image from scratch.
                | `ifneedbepullelsecachedbuild` | Do nothing if the image exists locally. Else, try to pull the image from a registry. Otherwise build the image with caching enabled.
                | `push` | Push the container to [Docker Hub](https://hub.docker.com)  or the specified docker registry.
                | `pushifnotpresent` | Push the container to [Docker Hub](https://hub.docker.com) or the specified docker registry if the tag does not exist yet.
                | `donothing` / `meh` | Do not build or pull anything.
                
                
              "%
              | optional,
            tag
              | String
              | doc "Specify a Docker image based on its tag."
              | optional,
            target_image
              | String
              | doc "If anything is specified in the setup section, running the `---setup` will result in an image with the name of `<target_image>:<version>`. If nothing is specified in the `setup` section, simply `image` will be used. Advanced usage only."
              | optional,
            target_image_source
              | String
              | doc "The source of the target image. This is used for defining labels in the dockerfile."
              | optional,
            target_organization
              | String
              | doc "The organization set in the resulting image. Advanced usage only."
              | optional,
            target_registry
              | String
              | doc "The URL where the resulting image will be pushed to. Advanced usage only."
              | optional,
            target_tag
              | String
              | doc "The tag the resulting image gets. Advanced usage only."
              | optional,
            test_setup
              | Array refs."definitions.Requirements"
              | doc "Additional requirements specific for running unit tests."
              | optional,
            type
              | std.contract.Equal "docker"
              | doc m%"
                Run a Viash component on a Docker backend platform.
                By specifying which dependencies your component needs, users will be able to build a docker container from scratch using the setup flag, or pull it from a docker repository.
                
              "%,
            workdir
              | String
              | doc "The working directory when starting the container. This doesn't change the Dockerfile but gets added as a command-line argument at runtime."
              | optional,
          },
      "definitions.DockerRequirements" =
        {
            add | std.contract.any_of [ String, Array String ] | optional,
            build_args
              | std.contract.any_of [ String, Array String ]
              | optional,
            copy | std.contract.any_of [ String, Array String ] | optional,
            env | std.contract.any_of [ String, Array String ] | optional,
            label | std.contract.any_of [ String, Array String ] | optional,
            run | std.contract.any_of [ String, Array String ] | optional,
            type
              | std.contract.Equal "docker"
              | doc "Specify which Docker commands should be run during setup.",
          },
      "definitions.DockerResolveVolume" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [| 'Auto, 'Automatic, 'Manual, 'auto, 'automatic, 'manual |]
            ],
      "definitions.DockerSetupStrategy" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [|
                'ifneedbecachedbuild,
                'ifneedbepull,
                'meh,
                'alwayscachedbuild,
                'pushifnotpresent,
                'b,
                'alwayspush,
                'forcepush,
                'push,
                'pullelsecachedbuild,
                'cachedbuild,
                'ifneedbepullelsebuild,
                'maybepush,
                'pull,
                'alwayspullelsecachedbuild,
                'p,
                'pullelsebuild,
                'ifneedbebuild,
                'alwaysbuild,
                'alwayspull,
                'build,
                'alwayspullelsebuild,
                'gentlepush,
                'donothing,
                'ifneedbepullelsecachedbuild,
                'cb
              |]
            ],
      "definitions.DoubleArgument" =
        {
            alternatives
              | std.contract.any_of [ String, Array String ]
              | optional,
            "default"
              | js2n.OneOf
                [
                  refs."definitions.DoubleWithInf",
                  js2n.array.ArrayOf refs."definitions.DoubleWithInf"
                ]
              | optional,
            description
              | String
              | doc "A description of the argument. This is only used for documentation. Multiline descriptions are supported."
              | optional,
            direction | refs."definitions.Direction" | String | optional,
            example
              | js2n.OneOf
                [
                  refs."definitions.DoubleWithInf",
                  js2n.array.ArrayOf refs."definitions.DoubleWithInf"
                ]
              | optional,
            info
              | { _ | Dyn }
              | doc "Structured information. Can be any shape: a string, vector, map or even nested map."
              | optional,
            label
              | String
              | doc "A clean version of the argument's name. This is only used for documentation."
              | optional,
            max
              | refs."definitions.DoubleWithInf"
              | doc "Maximum allowed value for this argument. If set and the provided value is higher than the maximum, an error will be produced. Can be combined with [`min`](#min) to clamp values."
              | optional,
            min
              | refs."definitions.DoubleWithInf"
              | doc "Minimum allowed value for this argument. If set and the provided value is lower than the minimum, an error will be produced. Can be combined with [`max`](#max) to clamp values."
              | optional,
            multiple
              | Bool
              | doc "Treat the argument value as an array. Arrays can be passed using the delimiter `--foo=1:2:3` or by providing the same argument multiple times `--foo 1 --foo 2`. You can use a custom delimiter by using the [`multiple_sep`](#multiple_sep) property. `false` by default."
              | optional,
            multiple_sep
              | String
              | doc "The delimiter character for providing [`multiple`](#multiple) values. `:` by default."
              | optional,
            name
              | String
              | doc m%"
                The name of the argument. Can be in the formats `--foo`, `-f` or `foo`. The number of dashes determines how values can be passed:  
                
                  - `--foo` is a long option, which can be passed with `executable_name --foo=value` or `executable_name --foo value`
                  - `-f` is a short option, which can be passed with `executable_name -f value`
                  - `foo` is an argument, which can be passed with `executable_name value`  
                
              "%,
            required
              | Bool
              | doc "Make the value for this argument required. If set to `true`, an error will be produced if no value was provided. `false` by default."
              | optional,
            summary
              | String
              | doc "A one-sentence summary of the argument. This is only used for documentation."
              | optional,
            type
              | std.contract.Equal "double"
              | doc "A `double` type argument has a numeric value with decimal points",
          },
      "definitions.DoubleStrings" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [|
                'nan,
                '".nan",
                'negativeinf,
                'negativeinfinity,
                '"-infinity",
                '"-inf",
                '"-.inf",
                'positiveinf,
                'positiveinfinity,
                '"+infinity",
                '"+inf",
                '"+.inf"
              |]
            ],
      "definitions.DoubleWithInf" =
        std.contract.any_of
            [
              Number,
              std.contract.Sequence [ refs."definitions.DoubleStrings", String ]
            ],
      "definitions.Engine" =
        js2n.OneOf
            [
              std.contract.Sequence
                [ refs."definitions.DockerEngine", { _ | Dyn } ],
              std.contract.Sequence
                [ refs."definitions.NativeEngine", { _ | Dyn } ]
            ],
      "definitions.Executable" =
        {
            dest
              | String
              | doc "Resulting filename of the resource. From within a script, the file can be accessed at `meta[\"resources_dir\"] + \"/\" + dest`. If unspecified, `dest` will be set to the basename of the `path` parameter."
              | optional,
            is_executable
              | Bool
              | doc "Whether the resulting resource file should be made executable."
              | optional,
            path
              | String
              | doc "The path of the input file. Can be a relative or an absolute path, or a URI. Mutually exclusive with `text`."
              | optional,
            text
              | String
              | doc "The content of the resulting file specified as a string. Mutually exclusive with `path`."
              | optional,
            type | std.contract.Equal "executable" | doc "An executable file.",
          },
      "definitions.ExecutableRunner" =
        {
            docker_run_args
              | std.contract.any_of [ String, Array String ]
              | optional,
            docker_setup_strategy
              | refs."definitions.DockerSetupStrategy"
              | String
              | doc m%"
                The Docker setup strategy to use when building a docker engine enrivonment.
                
                | Strategy | Description |
                |-----|----------|
                | `alwaysbuild` / `build` / `b` | Always build the image from the dockerfile. This is the default setup strategy.
                | `alwayscachedbuild` / `cachedbuild` / `cb` | Always build the image from the dockerfile, with caching enabled.
                | `ifneedbebuild` |  Build the image if it does not exist locally.
                | `ifneedbecachedbuild` | Build the image with caching enabled if it does not exist locally, with caching enabled.
                | `alwayspull` / `pull` / `p` |  Try to pull the container from [Docker Hub](https://hub.docker.com) or the specified docker registry.
                | `alwayspullelsebuild` / `pullelsebuild` |  Try to pull the image from a registry and build it if it doesn't exist.
                | `alwayspullelsecachedbuild` / `pullelsecachedbuild` |  Try to pull the image from a registry and build it with caching if it doesn't exist.
                | `ifneedbepull` |  If the image does not exist locally, pull the image.
                | `ifneedbepullelsebuild` |  If the image does not exist locally, pull the image. If the image does exist, build it.
                | `ifneedbepullelsecachedbuild` | If the image does not exist locally, pull the image. If the image does exist, build it with caching enabled.
                | `push` | Push the container to [Docker Hub](https://hub.docker.com)  or the specified docker registry.
                | `pushifnotpresent` | Push the container to [Docker Hub](https://hub.docker.com) or the specified docker registry if the tag does not exist yet.
                | `donothing` / `meh` | Do not build or pull anything.
                
                
              "%
              | optional,
            id
              | String
              | doc "Name of the runner. As with all runners, you can give an runner a different name. By specifying `id: foo`, you can target this executor (only) by specifying `...` in any of the Viash commands."
              | optional,
            port
              | js2n.OneOf
                [
                  std.number.Integer,
                  String,
                  js2n.array.ArrayOf std.number.Integer,
                  js2n.array.ArrayOf String
                ]
              | optional,
            type
              | std.contract.Equal "executable"
              | doc m%"
                Run code as an executable.
                
                This runner is the default runner. It will generate a bash script that can be run directly.
                
                This runner is also used for the native engine.
                
                This runner is also used for the docker engine.
                
              "%,
            workdir
              | String
              | doc "The working directory when starting the engine. This doesn't change the Dockerfile but gets added as a command-line argument at runtime."
              | optional,
          },
      "definitions.FileArgument" =
        {
            alternatives
              | std.contract.any_of [ String, Array String ]
              | optional,
            create_parent
              | Bool
              | doc "If the output filename is a path and it does not exist, create it before executing the script (only for `direction: output`)."
              | optional,
            "default" | std.contract.any_of [ String, Array String ] | optional,
            description
              | String
              | doc "A description of the argument. This is only used for documentation. Multiline descriptions are supported."
              | optional,
            direction
              | refs."definitions.Direction"
              | String
              | doc "Makes this argument an `input` or an `output`, as in does the file/folder needs to be read or written. `input` by default."
              | optional,
            example | std.contract.any_of [ String, Array String ] | optional,
            info
              | { _ | Dyn }
              | doc "Structured information. Can be any shape: a string, vector, map or even nested map."
              | optional,
            label
              | String
              | doc "A clean version of the argument's name. This is only used for documentation."
              | optional,
            multiple
              | Bool
              | doc m%"
                Allow for multiple values (`false` by default).
                
                For input arguments, this will be treated as a list of values. For example, values
                can be passed using the delimiter `--foo=1:2:3` or by providing the same argument 
                multiple times `--foo 1 --foo 2`. You can use a custom delimiter by using the 
                [`multiple_sep`](#multiple_sep) property.
                
                For output file arguments, the passed value needs to contain a wildcard. For example,
                `--foo 'foo_*.txt'` will be treated as a list of files that match the pattern. Note that in Bash,
                 the wildcard will need to be in quotes ("foo_*.txt" or `'foo_*.txt'`) or else Bash will
                 automatically attempt to expand the expression.
                
                Other output arguments (e.g. integer, double, ...) are not supported yet.
                
              "%
              | optional,
            multiple_sep
              | String
              | doc "The delimiter character for providing [`multiple`](#multiple) values. `:` by default."
              | optional,
            must_exist
              | Bool
              | doc m%"
                Checks whether the file or folder exists. For input files, this check will happen
                before the execution of the script, while for output files the check will happen afterwards.
              "%
              | optional,
            name
              | String
              | doc m%"
                The name of the argument. Can be in the formats `--foo`, `-f` or `foo`. The number of dashes determines how values can be passed:  
                
                  - `--foo` is a long option, which can be passed with `executable_name --foo=value` or `executable_name --foo value`
                  - `-f` is a short option, which can be passed with `executable_name -f value`
                  - `foo` is an argument, which can be passed with `executable_name value`  
                
              "%,
            required
              | Bool
              | doc "Make the value for this argument required. If set to `true`, an error will be produced if no value was provided. `false` by default."
              | optional,
            summary
              | String
              | doc "A one-sentence summary of the argument. This is only used for documentation."
              | optional,
            type
              | std.contract.Equal "file"
              | doc "A `file` type argument has a string value that points to a file or folder path.",
          },
      "definitions.Functionality" =
        {
            argument_groups
              | Array (
                std.contract.Sequence
                  [ refs."definitions.ArgumentGroup", { _ | Dyn } ]
              )
              | doc m%"
                A grouping of the arguments, used to display the help message.
                
                 - `name: foo`, the name of the argument group. 
                 - `description: Description of foo`, a description of the argument group. Multiline descriptions are supported.
                 - `arguments: [arg1, arg2, ...]`, list of the arguments.
                
                
              "%
              | optional,
            arguments
              | Array refs."definitions.Argument"
              | doc m%"
                A list of arguments for this component. For each argument, a type and a name must be specified. Depending on the type of argument, different properties can be set. See these reference pages per type for more information:  
                
                 - string
                 - file
                 - integer
                 - double
                 - boolean
                 - boolean_true
                 - boolean_false
                
              "%
              | optional,
            authors
              | Array (
                std.contract.Sequence [ refs."definitions.Author", { _ | Dyn } ]
              )
              | doc m%"
                A list of authors. An author must at least have a name, but can also have a list of roles, an e-mail address, and a map of custom properties.
                
                Suggested values for roles are:
                 
                | Role | Abbrev. | Description |
                |------|---------|-------------|
                | maintainer | mnt | for the maintainer of the code. Ideally, exactly one maintainer is specified. |
                | author | aut | for persons who have made substantial contributions to the software. |
                | contributor | ctb| for persons who have made smaller contributions (such as code patches).
                | datacontributor | dtc | for persons or organisations that contributed data sets for the software
                | copyrightholder | cph | for all copyright holders. This is a legal concept so should use the legal name of an institution or corporate body.
                | funder | fnd | for persons or organizations that furnished financial support for the development of the software
                
                The [full list of roles](https://www.loc.gov/marc/relators/relaterm.html) is extremely comprehensive.
                
              "%
              | optional,
            dependencies
              | Array (
                std.contract.Sequence
                  [ refs."definitions.Dependency", { _ | Dyn } ]
              )
              | doc "Allows listing Viash components required by this Viash component"
              | optional,
            description
              | String
              | doc "A description of the component. This will be displayed with `--help`."
              | optional,
            info
              | { _ | Dyn }
              | doc "Structured information. Can be any shape: a string, vector, map or even nested map."
              | optional,
            keywords
              | Array String
              | doc "The keywords of the components."
              | optional,
            license | String | doc "The license of the package." | optional,
            links
              | refs."definitions.Links"
              | { _ | Dyn }
              | doc "External links of the component."
              | optional,
            name
              | String
              | doc "Name of the component and the filename of the executable when built with `viash build`.",
            namespace
              | String
              | doc "Namespace this component is a part of. See the Namespaces guide for more information on namespaces."
              | optional,
            organization
              | String
              | doc "The organization of the package."
              | optional,
            references
              | refs."definitions.References"
              | { _ | Dyn }
              | doc "References to external resources related to the component."
              | optional,
            repositories
              | Array refs."definitions.RepositoryWithName"
              | doc m%"
                (Pre-)defines repositories that can be used as repository in dependencies.
                Allows reusing repository definitions in case it is used in multiple dependencies.
              "%
              | optional,
            requirements
              | refs."definitions.ComputationalRequirements"
              | { _ | Dyn }
              | doc m%"
                Computational requirements related to running the component. 
                `cpus` specifies the maximum number of (logical) cpus a component is allowed to use., whereas
                `memory` specifies the maximum amount of memory a component is allowed to allicate. Memory units must be
                in B, KB, MB, GB, TB or PB for SI units (1000-base), or KiB, MiB, GiB, TiB or PiB for binary IEC units (1024-base).
              "%
              | optional,
            resources
              | Array refs."definitions.Resource"
              | doc m%"
                Resources are files that support the component. The first resource should be a script that will be executed when the functionality is run. Additional resources will be copied to the same directory.
                
                Common properties:
                
                 * type: `file` / `r_script` / `python_script` / `bash_script` / `javascript_script` / `scala_script` / `csharp_script`, specifies the type of the resource. The first resource cannot be of type `file`. When the type is not specified, the default type is simply `file`.
                 * dest: filename, the resulting name of the resource.  From within a script, the file can be accessed at `meta["resources_dir"] + "/" + dest`. If unspecified, `dest` will be set to the basename of the `path` parameter.
                 * path: `path/to/file`, the path of the input file. Can be a relative or an absolute path, or a URI. Mutually exclusive with `text`.
                 * text: ...multiline text..., the content of the resulting file specified as a string. Mutually exclusive with `path`.
                 * is_executable: `true` / `false`, whether the resulting resource file should be made executable.
                
              "%
              | optional,
            status
              | refs."definitions.Status"
              | String
              | doc "Allows setting a component to active, deprecated or disabled."
              | optional,
            test_resources
              | Array refs."definitions.Resource"
              | doc "One or more scripts to be used to test the component behaviour when `viash test` is invoked. Additional files of type `file` will be made available only during testing. Each test script should expect no command-line inputs, be platform-independent, and return an exit code >0 when unexpected behaviour occurs during testing. See Unit Testing for more info."
              | optional,
            usage
              | String
              | doc "A description on how to use the component. This will be displayed with `--help` under the 'Usage:' section."
              | optional,
            version
              | String
              | doc "Version of the component. This field will be used to version the executable and the Docker container."
              | optional,
          },
      "definitions.GitRepository" =
        {
            path
              | String
              | doc "Defines a subfolder of the repository to use as base to look for the dependency components."
              | optional,
            tag
              | String
              | doc "Defines which version of the dependency component to use. Typically this can be a specific tag, branch or commit hash."
              | optional,
            type
              | std.contract.Equal "git"
              | doc "A Git repository where remote dependency components can be found.",
            uri | String | doc "The URI of the Git repository.",
          },
      "definitions.GitRepositoryWithName" =
        {
            name
              | String
              | doc "The identifier used to refer to this repository from dependencies.",
            path
              | String
              | doc "Defines a subfolder of the repository to use as base to look for the dependency components."
              | optional,
            tag
              | String
              | doc "Defines which version of the dependency component to use. Typically this can be a specific tag, branch or commit hash."
              | optional,
            type
              | std.contract.Equal "git"
              | doc "A Git repository where remote dependency components can be found.",
            uri | String | doc "The URI of the Git repository.",
          },
      "definitions.GithubRepository" =
        {
            path
              | String
              | doc "Defines a subfolder of the repository to use as base to look for the dependency components."
              | optional,
            repo | String | doc "The name of the GitHub repository.",
            tag
              | String
              | doc "Defines which version of the dependency component to use. Typically this can be a specific tag, branch or commit hash."
              | optional,
            type
              | std.contract.Equal "github"
              | doc "A GitHub repository where remote dependency components can be found.",
          },
      "definitions.GithubRepositoryWithName" =
        {
            name
              | String
              | doc "The identifier used to refer to this repository from dependencies.",
            path
              | String
              | doc "Defines a subfolder of the repository to use as base to look for the dependency components."
              | optional,
            repo | String | doc "The name of the GitHub repository.",
            tag
              | String
              | doc "Defines which version of the dependency component to use. Typically this can be a specific tag, branch or commit hash."
              | optional,
            type
              | std.contract.Equal "github"
              | doc "A GitHub repository where remote dependency components can be found.",
          },
      "definitions.IntegerArgument" =
        {
            alternatives
              | std.contract.any_of [ String, Array String ]
              | optional,
            choices
              | Array std.number.Integer
              | doc "Limit the amount of valid values for this argument to those set in this list. When set and a value not present in the list is provided, an error will be produced."
              | optional,
            "default"
              | std.contract.any_of
                [ std.number.Integer, Array std.number.Integer ]
              | optional,
            description
              | String
              | doc "A description of the argument. This is only used for documentation. Multiline descriptions are supported."
              | optional,
            direction | refs."definitions.Direction" | String | optional,
            example
              | std.contract.any_of
                [ std.number.Integer, Array std.number.Integer ]
              | optional,
            info
              | { _ | Dyn }
              | doc "Structured information. Can be any shape: a string, vector, map or even nested map."
              | optional,
            label
              | String
              | doc "A clean version of the argument's name. This is only used for documentation."
              | optional,
            max
              | std.number.Integer
              | doc "Maximum allowed value for this argument. If set and the provided value is higher than the maximum, an error will be produced. Can be combined with [`min`](#min) to clamp values."
              | optional,
            min
              | std.number.Integer
              | doc "Minimum allowed value for this argument. If set and the provided value is lower than the minimum, an error will be produced. Can be combined with [`max`](#max) to clamp values."
              | optional,
            multiple
              | Bool
              | doc "Treat the argument value as an array. Arrays can be passed using the delimiter `--foo=1:2:3` or by providing the same argument multiple times `--foo 1 --foo 2`. You can use a custom delimiter by using the [`multiple_sep`](#multiple_sep) property. `false` by default."
              | optional,
            multiple_sep
              | String
              | doc "The delimiter character for providing [`multiple`](#multiple) values. `:` by default."
              | optional,
            name
              | String
              | doc m%"
                The name of the argument. Can be in the formats `--foo`, `-f` or `foo`. The number of dashes determines how values can be passed:  
                
                  - `--foo` is a long option, which can be passed with `executable_name --foo=value` or `executable_name --foo value`
                  - `-f` is a short option, which can be passed with `executable_name -f value`
                  - `foo` is an argument, which can be passed with `executable_name value`  
                
              "%,
            required
              | Bool
              | doc "Make the value for this argument required. If set to `true`, an error will be produced if no value was provided. `false` by default."
              | optional,
            summary
              | String
              | doc "A one-sentence summary of the argument. This is only used for documentation."
              | optional,
            type
              | std.contract.Equal "integer"
              | doc "An `integer` type argument has a numeric value without decimal points.",
          },
      "definitions.JavaScriptRequirements" =
        {
            git | std.contract.any_of [ String, Array String ] | optional,
            github | std.contract.any_of [ String, Array String ] | optional,
            npm | std.contract.any_of [ String, Array String ] | optional,
            packages | std.contract.any_of [ String, Array String ] | optional,
            type
              | std.contract.Equal "javascript"
              | doc "Specify which JavaScript packages should be available in order to run the component.",
            url | std.contract.any_of [ String, Array String ] | optional,
          },
      "definitions.JavaScriptScript" =
        {
            dest
              | String
              | doc "Resulting filename of the resource. From within a script, the file can be accessed at `meta[\"resources_dir\"] + \"/\" + dest`. If unspecified, `dest` will be set to the basename of the `path` parameter."
              | optional,
            is_executable
              | Bool
              | doc "Whether the resulting resource file should be made executable."
              | optional,
            path
              | String
              | doc "The path of the input file. Can be a relative or an absolute path, or a URI. Mutually exclusive with `text`."
              | optional,
            text
              | String
              | doc "The content of the resulting file specified as a string. Mutually exclusive with `path`."
              | optional,
            type
              | std.contract.Equal "javascript_script"
              | doc m%"
                An executable JavaScript script.
                When defined in resources, only the first entry will be executed when running the built component or when running `viash run`.
                When defined in test_resources, all entries will be executed during `viash test`.
              "%,
          },
      "definitions.Links" =
        {
            docker_registry | String | doc "Docker registry url." | optional,
            documentation
              | String
              | doc "Documentation website url."
              | optional,
            homepage | String | doc "Homepage website url." | optional,
            issue_tracker | String | doc "Issue tracker url." | optional,
            repository | String | doc "Source repository url." | optional,
          },
      "definitions.LocalRepository" =
        {
            path
              | String
              | doc "Defines a subfolder of the repository to use as base to look for the dependency components."
              | optional,
            tag
              | String
              | doc "Defines which version of the dependency component to use. Typically this can be a specific tag, branch or commit hash."
              | optional,
            type
              | std.contract.Equal "local"
              | doc m%"
                Defines a locally present and available repository.
                This can be used to define components from the same code base as the current component.
                Alternatively, this can be used to refer to a code repository present on the local hard-drive instead of fetchable remotely, for example during development.
                
              "%,
          },
      "definitions.LocalRepositoryWithName" =
        {
            name
              | String
              | doc "The identifier used to refer to this repository from dependencies.",
            path
              | String
              | doc "Defines a subfolder of the repository to use as base to look for the dependency components."
              | optional,
            tag
              | String
              | doc "Defines which version of the dependency component to use. Typically this can be a specific tag, branch or commit hash."
              | optional,
            type
              | std.contract.Equal "local"
              | doc m%"
                Defines a locally present and available repository.
                This can be used to define components from the same code base as the current component.
                Alternatively, this can be used to refer to a code repository present on the local hard-drive instead of fetchable remotely, for example during development.
                
              "%,
          },
      "definitions.LongArgument" =
        {
            alternatives
              | std.contract.any_of [ String, Array String ]
              | optional,
            choices
              | Array std.number.Integer
              | doc "Limit the amount of valid values for this argument to those set in this list. When set and a value not present in the list is provided, an error will be produced."
              | optional,
            "default"
              | std.contract.any_of
                [ std.number.Integer, Array std.number.Integer ]
              | optional,
            description
              | String
              | doc "A description of the argument. This is only used for documentation. Multiline descriptions are supported."
              | optional,
            direction | refs."definitions.Direction" | String | optional,
            example
              | std.contract.any_of
                [ std.number.Integer, Array std.number.Integer ]
              | optional,
            info
              | { _ | Dyn }
              | doc "Structured information. Can be any shape: a string, vector, map or even nested map."
              | optional,
            label
              | String
              | doc "A clean version of the argument's name. This is only used for documentation."
              | optional,
            max
              | std.number.Integer
              | doc "Maximum allowed value for this argument. If set and the provided value is higher than the maximum, an error will be produced. Can be combined with [`min`](#min) to clamp values."
              | optional,
            min
              | std.number.Integer
              | doc "Minimum allowed value for this argument. If set and the provided value is lower than the minimum, an error will be produced. Can be combined with [`max`](#max) to clamp values."
              | optional,
            multiple
              | Bool
              | doc "Treat the argument value as an array. Arrays can be passed using the delimiter `--foo=1:2:3` or by providing the same argument multiple times `--foo 1 --foo 2`. You can use a custom delimiter by using the [`multiple_sep`](#multiple_sep) property. `false` by default."
              | optional,
            multiple_sep
              | String
              | doc "The delimiter character for providing [`multiple`](#multiple) values. `:` by default."
              | optional,
            name
              | String
              | doc m%"
                The name of the argument. Can be in the formats `--foo`, `-f` or `foo`. The number of dashes determines how values can be passed:  
                
                  - `--foo` is a long option, which can be passed with `executable_name --foo=value` or `executable_name --foo value`
                  - `-f` is a short option, which can be passed with `executable_name -f value`
                  - `foo` is an argument, which can be passed with `executable_name value`  
                
              "%,
            required
              | Bool
              | doc "Make the value for this argument required. If set to `true`, an error will be produced if no value was provided. `false` by default."
              | optional,
            summary
              | String
              | doc "A one-sentence summary of the argument. This is only used for documentation."
              | optional,
            type
              | std.contract.Equal "long"
              | doc "An `long` type argument has a numeric value without decimal points.",
          },
      "definitions.NativeEngine" =
        {
            id
              | String
              | doc "Name of the engine. As with all engines, you can give an engine a different name. By specifying `id: foo`, you can target this engine (only) by specifying `...` in any of the Viash commands."
              | optional,
            type
              | std.contract.Equal "native"
              | doc m%"
                Running a Viash component on a native engine means that the script will be executed in your current environment.
                Any dependencies are assumed to have been installed by the user, so the native engine is meant for developers (who know what they're doing) or for simple bash scripts (which have no extra dependencies).
                
              "%,
          },
      "definitions.NativePlatform" =
        {
            id
              | String
              | doc "As with all platforms, you can give a platform a different name. By specifying `id: foo`, you can target this platform (only) by specifying `-p foo` in any of the Viash commands."
              | optional,
            type
              | std.contract.Equal "native"
              | doc m%"
                Running a Viash component on a native platform means that the script will be executed in your current environment.
                Any dependencies are assumed to have been installed by the user, so the native platform is meant for developers (who know what they're doing) or for simple bash scripts (which have no extra dependencies).
                
              "%,
          },
      "definitions.NextflowAuto" =
        {
            publish | std.contract.any_of [ Bool, String ] | optional,
            simplifyInput
              | Bool
              | doc m%"
                If `true`, an input tuple only containing only a single File (e.g. `["foo", file("in.h5ad")]`) is automatically transformed to a map (i.e. `["foo", [ input: file("in.h5ad") ] ]`).
                
                Default: `true`.
                
              "%
              | optional,
            simplifyOutput
              | Bool
              | doc m%"
                If `true`, an output tuple containing a map with a File (e.g. `["foo", [ output: file("out.h5ad") ] ]`) is automatically transformed to a map (i.e. `["foo", file("out.h5ad")]`).
                
                Default: `false`.
                
              "%
              | optional,
            transcript
              | Bool
              | doc m%"
                If `true`, the module's transcripts from `work/` are automatically published to `params.transcriptDir`.
                If not defined, `params.publishDir + "/_transcripts"` will be used.
                Will throw an error if neither are defined.
                
                Default: `false`.
                
              "%
              | optional,
          },
      "definitions.NextflowConfig" =
        {
            labels
              | { _ | String }
              | doc m%"
                A series of default labels to specify memory and cpu constraints.
                
                The default memory labels are defined as "mem1gb", "mem2gb", "mem4gb", ... upto "mem512tb" and follows powers of 2.
                The default cpu labels are defined as "cpu1", "cpu2", "cpu5", "cpu10", ... upto "cpu1000" and follows a semi logarithmic scale (1, 2, 5 per decade).
                
                Conceptually it is possible for a Viash Config to overwrite the full labels parameter, however likely it is more efficient to add additional labels
                in the Viash Package with a config mod.
                
              "%
              | optional,
            script | std.contract.any_of [ String, Array String ] | optional,
          },
      "definitions.NextflowDirectives" =
        {
            accelerator
              | { _ | String }
              | doc m%"
                The `accelerator` directive allows you to specify the hardware accelerator requirement for the task execution e.g. GPU processor.
                
                Viash implements this directive as a map with accepted keywords: `type`, `limit`, `request`, and `runtime`.
                
                See [`accelerator`](https://www.nextflow.io/docs/latest/process.html#accelerator).
                
              "%
              | optional,
            afterScript
              | String
              | doc m%"
                The `afterScript` directive allows you to execute a custom (Bash) snippet immediately after the main process has run. This may be useful to clean up your staging area.
                
                See [`afterScript`](https://www.nextflow.io/docs/latest/process.html#afterscript).
                
              "%
              | optional,
            beforeScript
              | String
              | doc m%"
                The `beforeScript` directive allows you to execute a custom (Bash) snippet before the main process script is run. This may be useful to initialise the underlying cluster environment or for other custom initialisation.
                
                See [`beforeScript`](https://www.nextflow.io/docs/latest/process.html#beforeScript).
                
              "%
              | optional,
            cache | std.contract.any_of [ Bool, String ] | optional,
            conda | std.contract.any_of [ String, Array String ] | optional,
            container
              | std.contract.any_of [ { _ | String }, String ]
              | optional,
            containerOptions
              | std.contract.any_of [ String, Array String ]
              | optional,
            cpus
              | std.contract.any_of [ std.number.Integer, String ]
              | optional,
            disk
              | String
              | doc m%"
                The `disk` directive allows you to define how much local disk storage the process is allowed to use.
                
                See [`disk`](https://www.nextflow.io/docs/latest/process.html#disk).
                
              "%
              | optional,
            echo | std.contract.any_of [ Bool, String ] | optional,
            errorStrategy
              | String
              | doc m%"
                The `errorStrategy` directive allows you to define how an error condition is managed by the process. By default when an error status is returned by the executed script, the process stops immediately. This in turn forces the entire pipeline to terminate.
                
                Table of available error strategies:
                | Name | Executor |
                |------|----------|
                | `terminate` | Terminates the execution as soon as an error condition is reported. Pending jobs are killed (default) |
                | `finish` | Initiates an orderly pipeline shutdown when an error condition is raised, waiting the completion of any submitted job. |
                | `ignore` | Ignores processes execution errors. |
                | `retry` | Re-submit for execution a process returning an error condition. |
                
                See [`errorStrategy`](https://www.nextflow.io/docs/latest/process.html#errorstrategy).
                
              "%
              | optional,
            executor
              | String
              | doc m%"
                The `executor` defines the underlying system where processes are executed. By default a process uses the executor defined globally in the nextflow.config file.
                
                The `executor` directive allows you to configure what executor has to be used by the process, overriding the default configuration. The following values can be used:
                
                | Name | Executor |
                |------|----------|
                | awsbatch | The process is executed using the AWS Batch service. | 
                | azurebatch | The process is executed using the Azure Batch service. | 
                | condor | The process is executed using the HTCondor job scheduler. | 
                | google-lifesciences | The process is executed using the Google Genomics Pipelines service. | 
                | ignite | The process is executed using the Apache Ignite cluster. | 
                | k8s | The process is executed using the Kubernetes cluster. | 
                | local | The process is executed in the computer where Nextflow is launched. | 
                | lsf | The process is executed using the Platform LSF job scheduler. | 
                | moab | The process is executed using the Moab job scheduler. | 
                | nqsii | The process is executed using the NQSII job scheduler. | 
                | oge | Alias for the sge executor. | 
                | pbs | The process is executed using the PBS/Torque job scheduler. | 
                | pbspro | The process is executed using the PBS Pro job scheduler. | 
                | sge | The process is executed using the Sun Grid Engine / Open Grid Engine. | 
                | slurm | The process is executed using the SLURM job scheduler. | 
                | tes | The process is executed using the GA4GH TES service. | 
                | uge | Alias for the sge executor. |
                
                See [`executor`](https://www.nextflow.io/docs/latest/process.html#executor).
                
              "%
              | optional,
            label | std.contract.any_of [ String, Array String ] | optional,
            machineType
              | String
              | doc m%"
                 The `machineType` can be used to specify a predefined Google Compute Platform machine type when running using the Google Life Sciences executor.
                
                See [`machineType`](https://www.nextflow.io/docs/latest/process.html#machinetype).
                
              "%
              | optional,
            maxErrors
              | std.contract.any_of [ String, std.number.Integer ]
              | optional,
            maxForks
              | std.contract.any_of [ String, std.number.Integer ]
              | optional,
            maxRetries
              | std.contract.any_of [ String, std.number.Integer ]
              | optional,
            memory
              | String
              | doc m%"
                The `memory` directive allows you to define how much memory the process is allowed to use.
                
                See [`memory`](https://www.nextflow.io/docs/latest/process.html#memory).
                
              "%
              | optional,
            module | std.contract.any_of [ String, Array String ] | optional,
            penv
              | String
              | doc m%"
                The `penv` directive allows you to define the parallel environment to be used when submitting a parallel task to the SGE resource manager.
                
                See [`penv`](https://www.nextflow.io/docs/latest/process.html#penv).
                
              "%
              | optional,
            pod
              | std.contract.any_of [ { _ | String }, Array ({ _ | String }) ]
              | optional,
            publishDir
              | js2n.OneOf
                [
                  std.contract.any_of
                    [
                      String,
                      js2n.record.Record
                        {
                          additional = 'Some String,
                          patterns = {},
                          properties = {},
                          required = {},
                        }
                    ],
                  js2n.array.ArrayOf
                    (std.contract.any_of
                      [
                        String,
                        js2n.record.Record
                          {
                            additional = 'Some String,
                            patterns = {},
                            properties = {},
                            required = {},
                          }
                      ])
                ]
              | optional,
            queue | std.contract.any_of [ String, Array String ] | optional,
            scratch | std.contract.any_of [ Bool, String ] | optional,
            stageInMode
              | String
              | doc m%"
                The `stageInMode` directive defines how input files are staged-in to the process work directory. The following values are allowed:
                
                | Value | Description |
                |-------|-------------| 
                | copy | Input files are staged in the process work directory by creating a copy. | 
                | link | Input files are staged in the process work directory by creating an (hard) link for each of them. | 
                | symlink | Input files are staged in the process work directory by creating a symbolic link with an absolute path for each of them (default). | 
                | rellink | Input files are staged in the process work directory by creating a symbolic link with a relative path for each of them. | 
                
                See [`stageInMode`](https://www.nextflow.io/docs/latest/process.html#stageinmode).
                
              "%
              | optional,
            stageOutMode
              | String
              | doc m%"
                The `stageOutMode` directive defines how output files are staged-out from the scratch directory to the process work directory. The following values are allowed:
                
                | Value | Description |
                |-------|-------------| 
                | copy | Output files are copied from the scratch directory to the work directory. | 
                | move | Output files are moved from the scratch directory to the work directory. | 
                | rsync | Output files are copied from the scratch directory to the work directory by using the rsync utility. |
                
                See [`stageOutMode`](https://www.nextflow.io/docs/latest/process.html#stageoutmode).
                
              "%
              | optional,
            storeDir
              | String
              | doc m%"
                The `storeDir` directive allows you to define a directory that is used as a permanent cache for your process results.
                
                See [`storeDir`](https://www.nextflow.io/docs/latest/process.html#storeDir).
                
              "%
              | optional,
            tag
              | String
              | doc m%"
                The `tag` directive allows you to associate each process execution with a custom label, so that it will be easier to identify them in the log file or in the trace execution report.
                
                For ease of use, the default tag is set to "$id", which allows tracking the progression of the channel events through the workflow more easily.
                
                See [`tag`](https://www.nextflow.io/docs/latest/process.html#tag).
                
              "%
              | optional,
            time
              | String
              | doc m%"
                The `time` directive allows you to define how long a process is allowed to run.
                
                See [`time`](https://www.nextflow.io/docs/latest/process.html#time).
                
              "%
              | optional,
          },
      "definitions.NextflowPlatform" =
        {
            auto
              | refs."definitions.NextflowAuto"
              | { _ | Dyn }
              | doc m%"
                Automated processing flags which can be toggled on or off:
                
                | Flag | Description | Default |
                |---|---------|----|
                | `simplifyInput` | If `true`, an input tuple only containing only a single File (e.g. `["foo", file("in.h5ad")]`) is automatically transformed to a map (i.e. `["foo", [ input: file("in.h5ad") ] ]`). | `true` |
                | `simplifyOutput` | If `true`, an output tuple containing a map with a File (e.g. `["foo", [ output: file("out.h5ad") ] ]`) is automatically transformed to a map (i.e. `["foo", file("out.h5ad")]`). | `false` |
                | `transcript` | If `true`, the module's transcripts from `work/` are automatically published to `params.transcriptDir`. If not defined, `params.publishDir + "/_transcripts"` will be used. Will throw an error if neither are defined. | `false` |
                | `publish` | If `true`, the module's outputs are automatically published to `params.publishDir`. If equal to "state", also a `.state.yaml` file will be published in the publish dir. Will throw an error if `params.publishDir` is not defined. | `false` |
                
                
              "%
              | optional,
            config
              | refs."definitions.NextflowConfig"
              | { _ | Dyn }
              | doc "Allows tweaking how the Nextflow Config file is generated."
              | optional,
            container
              | String
              | doc "Specifies the Docker platform id to be used to run Nextflow."
              | optional,
            debug
              | Bool
              | doc "Whether or not to print debug messages."
              | optional,
            directives
              | refs."definitions.NextflowDirectives"
              | { _ | Dyn }
              | doc m%"
                Directives are optional settings that affect the execution of the process. These mostly match up with the Nextflow counterparts.  
                
              "%
              | optional,
            id
              | String
              | doc "Every platform can be given a specific id that can later be referred to explicitly when running or building the Viash component."
              | optional,
            type
              | std.contract.Equal "nextflow"
              | doc "Platform for generating Nextflow VDSL3 modules.",
          },
      "definitions.NextflowRunner" =
        {
            auto
              | refs."definitions.NextflowAuto"
              | { _ | Dyn }
              | doc m%"
                Automated processing flags which can be toggled on or off:
                
                | Flag | Description | Default |
                |---|---------|----|
                | `simplifyInput` | If `true`, an input tuple only containing only a single File (e.g. `["foo", file("in.h5ad")]`) is automatically transformed to a map (i.e. `["foo", [ input: file("in.h5ad") ] ]`). | `true` |
                | `simplifyOutput` | If `true`, an output tuple containing a map with a File (e.g. `["foo", [ output: file("out.h5ad") ] ]`) is automatically transformed to a map (i.e. `["foo", file("out.h5ad")]`). | `false` |
                | `transcript` | If `true`, the module's transcripts from `work/` are automatically published to `params.transcriptDir`. If not defined, `params.publishDir + "/_transcripts"` will be used. Will throw an error if neither are defined. | `false` |
                | `publish` | If `true`, the module's outputs are automatically published to `params.publishDir`. If equal to "state", also a `.state.yaml` file will be published in the publish dir. Will throw an error if `params.publishDir` is not defined. | `false` |
                
                
              "%
              | optional,
            config
              | refs."definitions.NextflowConfig"
              | { _ | Dyn }
              | doc "Allows tweaking how the Nextflow Config file is generated."
              | optional,
            container
              | String
              | doc "Specifies the Docker engine id to be used to run Nextflow."
              | optional,
            debug
              | Bool
              | doc "Whether or not to print debug messages."
              | optional,
            directives
              | refs."definitions.NextflowDirectives"
              | { _ | Dyn }
              | doc m%"
                Directives are optional settings that affect the execution of the process. These mostly match up with the Nextflow counterparts.  
                
              "%
              | optional,
            id
              | String
              | doc "Name of the runner. As with all runners, you can give an runner a different name. By specifying `id: foo`, you can target this runner (only) by specifying `...` in any of the Viash commands."
              | optional,
            type
              | std.contract.Equal "nextflow"
              | doc m%"
                Run a Viash component on a Nextflow backend engine.
                
              "%,
          },
      "definitions.NextflowScript" =
        {
            dest
              | String
              | doc "Resulting filename of the resource. From within a script, the file can be accessed at `meta[\"resources_dir\"] + \"/\" + dest`. If unspecified, `dest` will be set to the basename of the `path` parameter."
              | optional,
            entrypoint | String | doc "The name of the workflow to be wrapped.",
            is_executable
              | Bool
              | doc "Whether the resulting resource file should be made executable."
              | optional,
            path
              | String
              | doc "The path of the input file. Can be a relative or an absolute path, or a URI. Mutually exclusive with `text`."
              | optional,
            text
              | String
              | doc "The content of the resulting file specified as a string. Mutually exclusive with `path`."
              | optional,
            type
              | std.contract.Equal "nextflow_script"
              | doc "A Nextflow script. Work in progress; added mainly for annotation at the moment.",
          },
      "definitions.PackageConfig" =
        {
            authors
              | Array (
                std.contract.Sequence [ refs."definitions.Author", { _ | Dyn } ]
              )
              | doc "The authors of the package."
              | optional,
            config_mods
              | std.contract.any_of [ String, Array String ]
              | optional,
            description
              | String
              | doc "A description of the package. This is only used for documentation. Multiline descriptions are supported."
              | optional,
            info
              | { _ | Dyn }
              | doc "Structured information. Can be any shape: a string, vector, map or even nested map."
              | optional,
            keywords
              | Array String
              | doc "The keywords of the package."
              | optional,
            label
              | String
              | doc "A clean version of the package name. This is only used for documentation."
              | optional,
            license | String | doc "The license of the package." | optional,
            links
              | refs."definitions.Links"
              | { _ | Dyn }
              | doc "External links of the package."
              | optional,
            name | String | doc "The name of the package." | optional,
            organization
              | String
              | doc "The organization of the package."
              | optional,
            references
              | refs."definitions.References"
              | { _ | Dyn }
              | doc "References to external resources related to the package."
              | optional,
            repositories
              | Array refs."definitions.RepositoryWithName"
              | doc "Common repository definitions for component dependencies."
              | optional,
            source
              | String
              | doc "Which source directory to use for the `viash ns` commands."
              | optional,
            summary
              | String
              | doc "A one-sentence summary of the package. This is only used for documentation."
              | optional,
            target
              | String
              | doc "Which target directory to use for `viash ns build`."
              | optional,
            version | String | doc "The version of the package." | optional,
            viash_version
              | String
              | doc "Which version of Viash to use."
              | optional,
          },
      "definitions.PlainFile" =
        {
            dest
              | String
              | doc "Resulting filename of the resource. From within a script, the file can be accessed at `meta[\"resources_dir\"] + \"/\" + dest`. If unspecified, `dest` will be set to the basename of the `path` parameter."
              | optional,
            is_executable
              | Bool
              | doc "Whether the resulting resource file should be made executable."
              | optional,
            path
              | String
              | doc "The path of the input file. Can be a relative or an absolute path, or a URI. Mutually exclusive with `text`."
              | optional,
            text
              | String
              | doc "The content of the resulting file specified as a string. Mutually exclusive with `path`."
              | optional,
            type
              | std.contract.Equal "file"
              | doc "A plain file. This can only be used as a supporting resource for the main script or unit tests."
              | optional,
          },
      "definitions.Platform" =
        js2n.OneOf
            [
              std.contract.Sequence
                [ refs."definitions.DockerPlatform", { _ | Dyn } ],
              std.contract.Sequence
                [ refs."definitions.NativePlatform", { _ | Dyn } ],
              std.contract.Sequence
                [ refs."definitions.NextflowPlatform", { _ | Dyn } ]
            ],
      "definitions.PythonRequirements" =
        {
            bazaar | std.contract.any_of [ String, Array String ] | optional,
            git | std.contract.any_of [ String, Array String ] | optional,
            github | std.contract.any_of [ String, Array String ] | optional,
            gitlab | std.contract.any_of [ String, Array String ] | optional,
            mercurial | std.contract.any_of [ String, Array String ] | optional,
            packages | std.contract.any_of [ String, Array String ] | optional,
            pip | std.contract.any_of [ String, Array String ] | optional,
            pypi | std.contract.any_of [ String, Array String ] | optional,
            script | std.contract.any_of [ String, Array String ] | optional,
            svn | std.contract.any_of [ String, Array String ] | optional,
            type
              | std.contract.Equal "python"
              | doc "Specify which Python packages should be available in order to run the component.",
            upgrade
              | Bool
              | doc "Sets the `--upgrade` flag when set to true. Default: true."
              | optional,
            url | std.contract.any_of [ String, Array String ] | optional,
            user
              | Bool
              | doc "Sets the `--user` flag when set to true. Default: false."
              | optional,
          },
      "definitions.PythonScript" =
        {
            dest
              | String
              | doc "Resulting filename of the resource. From within a script, the file can be accessed at `meta[\"resources_dir\"] + \"/\" + dest`. If unspecified, `dest` will be set to the basename of the `path` parameter."
              | optional,
            is_executable
              | Bool
              | doc "Whether the resulting resource file should be made executable."
              | optional,
            path
              | String
              | doc "The path of the input file. Can be a relative or an absolute path, or a URI. Mutually exclusive with `text`."
              | optional,
            text
              | String
              | doc "The content of the resulting file specified as a string. Mutually exclusive with `path`."
              | optional,
            type
              | std.contract.Equal "python_script"
              | doc m%"
                An executable Python script.
                When defined in resources, only the first entry will be executed when running the built component or when running `viash run`.
                When defined in test_resources, all entries will be executed during `viash test`.
              "%,
          },
      "definitions.RRequirements" =
        {
            bioc | std.contract.any_of [ String, Array String ] | optional,
            bioc_force_install
              | Bool
              | doc "Forces packages specified in `bioc` to be reinstalled, even if they are already present in the container. Default: false."
              | optional,
            bitbucket | std.contract.any_of [ String, Array String ] | optional,
            cran | std.contract.any_of [ String, Array String ] | optional,
            git | std.contract.any_of [ String, Array String ] | optional,
            github | std.contract.any_of [ String, Array String ] | optional,
            gitlab | std.contract.any_of [ String, Array String ] | optional,
            packages | std.contract.any_of [ String, Array String ] | optional,
            script | std.contract.any_of [ String, Array String ] | optional,
            svn | std.contract.any_of [ String, Array String ] | optional,
            type
              | std.contract.Equal "r"
              | doc "Specify which R packages should be available in order to run the component.",
            url | std.contract.any_of [ String, Array String ] | optional,
            warnings_as_errors
              | Bool
              | doc "Specifies whether to treat warnings as errors. Default: true."
              | optional,
          },
      "definitions.RScript" =
        {
            dest
              | String
              | doc "Resulting filename of the resource. From within a script, the file can be accessed at `meta[\"resources_dir\"] + \"/\" + dest`. If unspecified, `dest` will be set to the basename of the `path` parameter."
              | optional,
            is_executable
              | Bool
              | doc "Whether the resulting resource file should be made executable."
              | optional,
            path
              | String
              | doc "The path of the input file. Can be a relative or an absolute path, or a URI. Mutually exclusive with `text`."
              | optional,
            text
              | String
              | doc "The content of the resulting file specified as a string. Mutually exclusive with `path`."
              | optional,
            type
              | std.contract.Equal "r_script"
              | doc m%"
                An executable R script.
                When defined in resources, only the first entry will be executed when running the built component or when running `viash run`.
                When defined in test_resources, all entries will be executed during `viash test`.
              "%,
          },
      "definitions.References" =
        {
            bibtex | std.contract.any_of [ String, Array String ] | optional,
            doi | std.contract.any_of [ String, Array String ] | optional,
          },
      "definitions.Repository" =
        js2n.OneOf
            [
              std.contract.Sequence
                [ refs."definitions.GitRepository", { _ | Dyn } ],
              std.contract.Sequence
                [ refs."definitions.GithubRepository", { _ | Dyn } ],
              std.contract.Sequence
                [ refs."definitions.LocalRepository", { _ | Dyn } ],
              std.contract.Sequence
                [ refs."definitions.ViashhubRepository", { _ | Dyn } ]
            ],
      "definitions.RepositoryWithName" =
        js2n.OneOf
            [
              std.contract.Sequence
                [ refs."definitions.GitRepositoryWithName", { _ | Dyn } ],
              std.contract.Sequence
                [ refs."definitions.GithubRepositoryWithName", { _ | Dyn } ],
              std.contract.Sequence
                [ refs."definitions.LocalRepositoryWithName", { _ | Dyn } ],
              std.contract.Sequence
                [ refs."definitions.ViashhubRepositoryWithName", { _ | Dyn } ]
            ],
      "definitions.Requirements" =
        js2n.OneOf
            [
              std.contract.Sequence
                [ refs."definitions.ApkRequirements", { _ | Dyn } ],
              std.contract.Sequence
                [ refs."definitions.AptRequirements", { _ | Dyn } ],
              std.contract.Sequence
                [ refs."definitions.DockerRequirements", { _ | Dyn } ],
              std.contract.Sequence
                [ refs."definitions.JavaScriptRequirements", { _ | Dyn } ],
              std.contract.Sequence
                [ refs."definitions.PythonRequirements", { _ | Dyn } ],
              std.contract.Sequence
                [ refs."definitions.RRequirements", { _ | Dyn } ],
              std.contract.Sequence
                [ refs."definitions.RubyRequirements", { _ | Dyn } ],
              std.contract.Sequence
                [ refs."definitions.YumRequirements", { _ | Dyn } ]
            ],
      "definitions.Resource" =
        js2n.OneOf
            [
              std.contract.Sequence
                [ refs."definitions.BashScript", { _ | Dyn } ],
              std.contract.Sequence
                [ refs."definitions.CSharpScript", { _ | Dyn } ],
              std.contract.Sequence
                [ refs."definitions.Executable", { _ | Dyn } ],
              std.contract.Sequence
                [ refs."definitions.JavaScriptScript", { _ | Dyn } ],
              std.contract.Sequence
                [ refs."definitions.NextflowScript", { _ | Dyn } ],
              std.contract.Sequence
                [ refs."definitions.PlainFile", { _ | Dyn } ],
              std.contract.Sequence
                [ refs."definitions.PythonScript", { _ | Dyn } ],
              std.contract.Sequence [ refs."definitions.RScript", { _ | Dyn } ],
              std.contract.Sequence
                [ refs."definitions.ScalaScript", { _ | Dyn } ]
            ],
      "definitions.RubyRequirements" =
        {
            packages | std.contract.any_of [ String, Array String ] | optional,
            type
              | std.contract.Equal "ruby"
              | doc "Specify which Ruby packages should be available in order to run the component.",
          },
      "definitions.Runner" =
        js2n.OneOf
            [
              std.contract.Sequence
                [ refs."definitions.ExecutableRunner", { _ | Dyn } ],
              std.contract.Sequence
                [ refs."definitions.NextflowRunner", { _ | Dyn } ]
            ],
      "definitions.ScalaScript" =
        {
            dest
              | String
              | doc "Resulting filename of the resource. From within a script, the file can be accessed at `meta[\"resources_dir\"] + \"/\" + dest`. If unspecified, `dest` will be set to the basename of the `path` parameter."
              | optional,
            is_executable
              | Bool
              | doc "Whether the resulting resource file should be made executable."
              | optional,
            path
              | String
              | doc "The path of the input file. Can be a relative or an absolute path, or a URI. Mutually exclusive with `text`."
              | optional,
            text
              | String
              | doc "The content of the resulting file specified as a string. Mutually exclusive with `path`."
              | optional,
            type
              | std.contract.Equal "scala_script"
              | doc m%"
                An executable Scala script.
                When defined in resources, only the first entry will be executed when running the built component or when running `viash run`.
                When defined in test_resources, all entries will be executed during `viash test`.
              "%,
          },
      "definitions.Scope" =
        {
            image
              | refs."definitions.ScopeEnum"
              | String
              | doc m%"
                test: image is only used during testing and is transient
                private: image is published in the registry
                public: image is published in the registry
              "%,
            target
              | refs."definitions.ScopeEnum"
              | String
              | doc m%"
                test: target folder is only used during testing and is transient
                private: target folder can be published in target/private or target/dependencies/private
                public: target is published in target/executable or target/nextflow
              "%,
          },
      "definitions.ScopeEnum" =
        std.contract.Sequence
            [ std.enum.TagOrString, [| 'public, 'private, 'test |] ],
      "definitions.Status" =
        std.contract.Sequence
            [ std.enum.TagOrString, [| 'deprecated, 'disabled, 'enabled |] ],
      "definitions.StringArgument" =
        {
            alternatives
              | std.contract.any_of [ String, Array String ]
              | optional,
            choices
              | Array String
              | doc "Limit the amount of valid values for this argument to those set in this list. When set and a value not present in the list is provided, an error will be produced."
              | optional,
            "default" | std.contract.any_of [ String, Array String ] | optional,
            description
              | String
              | doc "A description of the argument. This is only used for documentation. Multiline descriptions are supported."
              | optional,
            direction | refs."definitions.Direction" | String | optional,
            example | std.contract.any_of [ String, Array String ] | optional,
            info
              | { _ | Dyn }
              | doc "Structured information. Can be any shape: a string, vector, map or even nested map."
              | optional,
            label
              | String
              | doc "A clean version of the argument's name. This is only used for documentation."
              | optional,
            multiple
              | Bool
              | doc "Treat the argument value as an array. Arrays can be passed using the delimiter `--foo=1:2:3` or by providing the same argument multiple times `--foo 1 --foo 2`. You can use a custom delimiter by using the [`multiple_sep`](#multiple_sep) property. `false` by default."
              | optional,
            multiple_sep
              | String
              | doc "The delimiter character for providing [`multiple`](#multiple) values. `:` by default."
              | optional,
            name
              | String
              | doc m%"
                The name of the argument. Can be in the formats `--foo`, `-f` or `foo`. The number of dashes determines how values can be passed:  
                
                  - `--foo` is a long option, which can be passed with `executable_name --foo=value` or `executable_name --foo value`
                  - `-f` is a short option, which can be passed with `executable_name -f value`
                  - `foo` is an argument, which can be passed with `executable_name value`  
                
              "%,
            required
              | Bool
              | doc "Make the value for this argument required. If set to `true`, an error will be produced if no value was provided. `false` by default."
              | optional,
            summary
              | String
              | doc "A one-sentence summary of the argument. This is only used for documentation."
              | optional,
            type
              | std.contract.Equal "string"
              | doc "A `string` type argument has a value made up of an ordered sequences of characters, like \"Hello\" or \"I'm a string\".",
          },
      "definitions.ViashhubRepository" =
        {
            path
              | String
              | doc "Defines a subfolder of the repository to use as base to look for the dependency components."
              | optional,
            repo | String | doc "The name of the Viash-Hub repository.",
            tag
              | String
              | doc "Defines which version of the dependency component to use. Typically this can be a specific tag, branch or commit hash."
              | optional,
            type
              | std.contract.Equal "viashhub"
              | doc "A Viash-Hub repository where remote dependency components can be found.",
          },
      "definitions.ViashhubRepositoryWithName" =
        {
            name
              | String
              | doc "The identifier used to refer to this repository from dependencies.",
            path
              | String
              | doc "Defines a subfolder of the repository to use as base to look for the dependency components."
              | optional,
            repo | String | doc "The name of the Viash-Hub repository.",
            tag
              | String
              | doc "Defines which version of the dependency component to use. Typically this can be a specific tag, branch or commit hash."
              | optional,
            type
              | std.contract.Equal "viashhub"
              | doc "A Viash-Hub repository where remote dependency components can be found.",
          },
      "definitions.YumRequirements" =
        {
            packages | std.contract.any_of [ String, Array String ] | optional,
            type
              | std.contract.Equal "yum"
              | doc "Specify which yum packages should be available in order to run the component.",
          },
    }
    in
  refs."definitions.Config"