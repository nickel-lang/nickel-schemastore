# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      appveyor
        | js2n.Nullable {  .. }
        | doc m%"
          AppVeyor CI settings. This is usually read-only and should not normally be
          manually modified. Tools like conda-smithy may modify this, as needed.
        "%
        | optional,
      azure
        | std.contract.any_of
          [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String, js2n.Null ]
        | doc m%"
          Azure Pipelines CI settings. This is usually read-only and should not
          normally be manually modified. Tools like conda-smithy may modify this, as needed.
          For example:
          
          ```yaml
          azure:
              # flag for forcing the building all supported providers
              force: False
              # toggle for storing the conda build_artifacts directory (including the
              # built packages) as an Azure pipeline artifact that can be downloaded
              store_build_artifacts: False
              # toggle for freeing up some extra space on the default Azure Pipelines
              # linux image before running the Docker container for building
              free_disk_space: False
              # limit the amount of CI jobs running concurrently at a given time
              # each OS will get its proportional share of the configured value
              max_parallel: 25
          ```
          
          Below is an example configuration for setting up a self-hosted Azure agent for Linux:
          
          ```yaml
          azure:
              settings_linux:
                  pool:
                      name: your_local_pool_name
                      demands:
                          - some_key -equals some_value
                  workspace:
                      clean: all
                  strategy:
                      maxParallel: 1
          ```
          
          Below is an example configuration for adding a swapfile on an Azure agent for Linux and Windows:
          
          ```yaml
          azure:
              settings_linux:
                  swapfile_size: 10GiB
              settings_win:
                  variables:
                      SET_PAGEFILE: 'True'
          ```
          
          If you need more space on Windows, you can use `C:` at the cost of IO performance:
          
          ```yaml
          azure:
              settings_win:
                  variables:
                      CONDA_BLD_PATH: "C:\bld"
                      MINIFORGE_HOME: "C:\Miniforge"
          ```
        "%
        | optional,
      bot
        | {
          abi_migration_branches
            | js2n.Nullable (Array String)
            | doc "List of branches for additional bot migration PRs. Make sure branch names are `str` by quoting the value."
            | optional,
          automerge
            | std.contract.any_of
              [
                Bool,
                js2n.Null,
                Bool,
                { _ | Dyn },
                Array Dyn,
                Number,
                String,
                js2n.Null
              ]
            | doc "Automatically merge PRs if possible"
            | optional,
          check_solvable
            | js2n.Nullable Bool
            | doc "Open PRs only if resulting environment is solvable."
            | optional,
          inspection
            | std.contract.any_of
              [
                js2n.Null,
                Bool,
                { _ | Dyn },
                Array Dyn,
                Number,
                String,
                js2n.Null
              ]
            | doc "Method for generating hints or updating recipe"
            | optional,
          remake_prs_with_conflicts
            | js2n.Nullable Bool
            | doc "Automatically remake untouched bot PRs with conflicts."
            | optional,
          run_deps_from_wheel
            | js2n.Nullable Bool
            | doc "Update run dependencies from the pip wheel"
            | optional,
          update_static_libs
            | js2n.Nullable Bool
            | doc "Update packages in `host` that are used for static linking. For bot to issue update PRs, you must have both an abstract specification of the library (e.g., `llvmdev 15.0.*`) and a concrete specification (e.g., `llvmdev 15.0.7 *_5`). The bot will find the latest package that satisfies the abstract specification and update the concrete specification to this latest package."
            | optional,
          version_updates
            | std.contract.any_of
              [
                js2n.Null,
                Bool,
                { _ | Dyn },
                Array Dyn,
                Number,
                String,
                js2n.Null
              ]
            | doc "Bot config for version update PRs"
            | optional,
        }
        | doc m%"
          Dictates the behavior of the conda-forge auto-tick bot which issues
          automatic version updates/migrations for feedstocks.
          
          A valid example is:
          
          ```yaml
          bot:
              # can the bot automerge PRs it makes on this feedstock
              automerge: true
              # only automerge on successful version PRs, migrations are not automerged
              automerge: 'version'
              # only automerge on successful migration PRs, versions are not automerged
              automerge: 'migration'
          
              # only open PRs if resulting environment is solvable, useful for tightly coupled packages
              check_solvable: true
          
              # The bot.inspection key in the conda-forge.yml can have one of seven possible values and controls
              # the bots behaviour for automatic dependency updates:
              inspection: hint  # generate hints using source code (backwards compatible)
              inspection: hint-all  # generate hints using all methods
              inspection: hint-source  # generate hints using only source code
              inspection: hint-grayskull  # generate hints using only grayskull
              inspection: update-all  # update recipe using all methods
              inspection: update-source  # update recipe using only source code
              inspection: update-grayskull  # update recipe using only grayskull
              inspection: disabled # don't update recipe, don't generate hints
          
              # any branches listed in this section will get bot migration PRs in addition
              # to the default branch
              abi_migration_branches:
                  - 'v1.10.x'
          
              version_updates:
                  # use this for packages that are updated too frequently
                  random_fraction_to_keep: 0.1  # keeps 10% of versions at random
                  exclude:
                      - '08.14'
          ```
          
          The `abi_migration_branches` feature is useful to, for example, add a
          long-term support (LTS) branch for a package.
        "%
        | optional,
      build_platform
        | std.contract.any_of
          [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String, js2n.Null ]
        | doc m%"
          This is a mapping from the target platform to the build platform for the
          package to be built. For example, the following builds a `osx-64` package
          on the `linux-64` build platform using cross-compiling.
          
          ```yaml
          build_platform:
              osx_64: linux_64
          ```
          
          Leaving this field empty implicitly requests to build a package natively. i.e.
          
          ```yaml
          build_platform:
              linux_64: linux_64
              linux_ppc64le: linux_ppc64le
              linux_aarch64: linux_aarch64
              osx_64: osx_64
              osx_arm64: osx_arm64
              win_64: win_64
          ```
        "%
        | optional,
      build_with_mambabuild
        | js2n.Nullable Bool
        | doc "build_with_mambabuild is deprecated, use `conda_build_tool` instead."
        | optional,
      channel_priority
        | std.contract.any_of
          [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String, js2n.Null ]
        | doc m%"
          The channel priority level for the conda solver during feedstock builds.
          For extra information, see the
          [Strict channel priority](https://conda.io/projects/conda/en/latest/user-guide/tasks/manage-channels.html#strict-channel-priority)
          section on conda documentation.
        "%
        | optional,
      choco
        | js2n.Nullable (Array String)
        | doc m%"
          This parameter allows for conda-smithy to run chocoloatey installs on Windows
          when additional system packages are needed. This is a list of strings that
          represent package names and any additional parameters. For example,
          
          ```yaml
          choco:
              # install a package
              - nvidia-display-driver
          
              # install a package with a specific version
              - cuda --version=11.0.3
          ```
          
          This is currently only implemented for Azure Pipelines. The command that is run is
          `choco install {entry} -fdv -y --debug`.  That is, `choco install` is executed
          with a standard set of additional flags that are useful on CI.
        "%
        | optional,
      circle
        | js2n.Nullable {  .. }
        | doc m%"
          Circle CI settings. This is usually read-only and should not normally be
          manually modified. Tools like conda-smithy may modify this, as needed.
        "%
        | optional,
      clone_depth
        | std.contract.any_of
          [
            std.number.Integer,
            js2n.Null,
            Bool,
            { _ | Dyn },
            Array Dyn,
            Number,
            String,
            js2n.Null
          ]
        | doc "The depth of the git clone."
        | optional,
      compiler_stack
        | js2n.Nullable String
        | doc m%"
          Compiler stack environment variable. This is used to specify the compiler
          stack to use for builds. Deprecated.
          
          ```yaml
          compiler_stack: comp7
          ```
        "%
        | optional,
      conda_build
        | std.contract.any_of
          [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String, js2n.Null ]
        | doc m%"
          Settings in this block are used to control how `conda build`
          runs and produces artifacts. An example of the such configuration is:
          
          ```yaml
          conda_build:
              pkg_format: 2
              zstd_compression_level: 16
              error_overlinking: False
          ```
        "%
        | optional,
      conda_build_tool
        | js2n.Nullable
          (std.contract.Sequence
            [
              std.enum.TagOrString,
              [|
                'rattler-build,
                'mambabuild,
                '"conda-build+conda-libmamba-solver",
                '"conda-build+classic",
                'conda-build
              |]
            ])
        | doc "Use this option to choose which tool is used to build your recipe."
        | optional,
      conda_forge_output_validation
        | js2n.Nullable Bool
        | doc m%"
          This field must be set to `True` for feedstocks in the `conda-forge` GitHub
          organization. It enables the required feedstock artifact validation as described
          in [Output Validation and Feedstock Tokens](/docs/maintainer/infrastructure#output-validation).
        "%
        | optional,
      conda_install_tool
        | js2n.Nullable
          (std.contract.Sequence
            [ std.enum.TagOrString, [| 'pixi, 'micromamba, 'mamba, 'conda |] ])
        | doc m%"
          Use this option to choose which tool is used to provision the tooling in your
          feedstock. Defaults to micromamba.
          
          If conda or mamba are chosen, the latest Miniforge will be used to
          provision the base environment. If micromamba or pixi are chosen,
          Miniforge is not involved; the environment is created directly by
          micromamba or pixi.
        "%
        | optional,
      conda_solver
        | std.contract.any_of
          [
            std.contract.Sequence
              [ std.enum.TagOrString, [| 'classic, 'libmamba |] ],
            js2n.Null,
            Bool,
            { _ | Dyn },
            Array Dyn,
            Number,
            String,
            js2n.Null
          ]
        | doc "Choose which `conda` solver plugin to use for feedstock builds."
        | optional,
      config_version
        | js2n.Nullable String
        | doc m%"
          The conda-smithy config version to be used for conda_build_config.yaml
          files in recipe and conda-forge-pinning. This should not be manually modified.
        "%
        | optional,
      docker
        | std.contract.any_of
          [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String, js2n.Null ]
        | doc m%"
          This is a mapping for Docker-specific configuration options.
          Some options are
          
          ```yaml
          docker:
              executable: docker
              command: "bash"
          ```
        "%
        | optional,
      drone
        | js2n.Nullable ({ _ | String })
        | doc m%"
          Drone CI settings. This is usually read-only and should not normally be
          manually modified. Tools like conda-smithy may modify this, as needed.
        "%
        | optional,
      exclusive_config_file
        | std.contract.any_of
          [
            String,
            js2n.Null,
            Bool,
            { _ | Dyn },
            Array Dyn,
            Number,
            String,
            js2n.Null
          ]
        | doc m%"
          Exclusive conda-build config file to replace `conda-forge-pinning`.
          For advanced usage only.
        "%
        | optional,
      github
        | std.contract.any_of
          [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String, js2n.Null ]
        | doc m%"
          Mapping for GitHub-specific configuration options. The defaults are as follows:
          
          ```yaml
          github:
              user_or_org: conda-forge
              repo_name: "my_repo"
              branch_name: main
              tooling_branch_name: main
          ```
        "%
        | optional,
      github_actions
        | std.contract.any_of
          [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String, js2n.Null ]
        | doc m%"
          GitHub Actions CI settings. This is usually read-only and should not normally be
          manually modified. Tools like conda-smithy may modify this, as needed.
        "%
        | optional,
      idle_timeout_minutes
        | std.contract.any_of
          [
            std.number.Integer,
            js2n.Null,
            Bool,
            { _ | Dyn },
            Array Dyn,
            Number,
            String,
            js2n.Null
          ]
        | doc m%"
          Configurable idle timeout. Used for packages that don't have chatty enough
          builds. Applicable only to circleci and travis.
          
          ```yaml
          idle_timeout_minutes: 60
          ```
        "%
        | optional,
      linter
        | std.contract.any_of
          [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String, js2n.Null ]
        | doc m%"
          Settings in this block are used to control how `conda smithy` lints
          An example of the such configuration is:
          
          ```yaml
          linter:
              skip:
                  - lint_noarch_selectors
          ```
        "%
        | optional,
      matrix
        | js2n.Nullable {  .. }
        | doc m%"
          Build matrices were used to specify a set of build configurations to run for each
          package pinned dependency. This has been deprecated in favor of the `provider` field.
          More information can be found in the
          [Build Matrices](/docs/maintainer/knowledge_base/#build-matrices) section of the
          conda-forge docs.
        "%
        | optional,
      max_py_ver
        | js2n.Nullable String
        | doc m%"
          Maximum Python version. This is used to specify the maximum Python version
          to use for builds. Deprecated.
          
          ```yaml
          max_py_ver: 37
          ```
        "%
        | optional,
      max_r_ver
        | js2n.Nullable String
        | doc m%"
          Maximum R version. This is used to specify the maximum R version to use
          for builds. Deprecated.
          
          ```yaml
          max_r_ver: 34
          ```
        "%
        | optional,
      min_py_ver
        | js2n.Nullable String
        | doc m%"
          Minimum Python version. This is used to specify the minimum Python version
          to use for builds. Deprecated.
          
          ```yaml
          min_py_ver: 27
          ```
        "%
        | optional,
      min_r_ver
        | js2n.Nullable String
        | doc m%"
          Minimum R version. This is used to specify the minimum R version to
          use for builds. Deprecated.
          
          ```yaml
          min_r_ver: 34
          ```
        "%
        | optional,
      noarch_platforms
        | std.contract.any_of
          [
            js2n.Null,
            Bool,
            { _ | Dyn },
            Array Dyn,
            Number,
            String,
            js2n.array.ArrayOf
              (std.contract.any_of
                [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]),
            js2n.Null
          ]
        | doc m%"
          Platforms on which to build noarch packages. The preferred default is a
          single build on `linux_64`.
          
          ```yaml
          noarch_platforms: linux_64
          ```
          
          To build on multiple platforms, e.g. for simple packages with platform-specific
          dependencies, provide a list.
          
          ```yaml
          noarch_platforms:
            - linux_64
            - win_64
          ```
        "%
        | optional,
      os_version
        | std.contract.any_of
          [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String, js2n.Null ]
        | doc m%"
          This key is used to set the OS versions for `linux_*` platforms. Valid entries
          map a linux platform and arch to either `cos7`, `alma8`, `alma9` or `ubi8`.
          
          Currently `alma9` is the default, which should work out-of-the-box for the vast
          majority of uses.
          
          Note that the image version does not imply a matching `glibc` requirement (which
          can be set using `c_stdlib_version` in `recipe/conda_build_config.yaml`).
          
          If you need to opt into older images, here's an example how to do it:
          ```yaml
          os_version:
              linux_64: cos7
              linux_aarch64: cos7
              linux_ppc64le: cos7
          ```
        "%
        | optional,
      package
        | std.contract.any_of
          [
            String,
            js2n.Null,
            Bool,
            { _ | Dyn },
            Array Dyn,
            Number,
            String,
            js2n.Null
          ]
        | doc "Default location for a package feedstock directory basename."
        | optional,
      private_upload
        | js2n.Nullable Bool
        | doc m%"
          Whether to upload to a private channel.
          
          ```yaml
          private_upload: False
          ```
        "%
        | optional,
      provider
        | std.contract.any_of
          [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String, js2n.Null ]
        | doc m%"
          The `provider` field is a mapping from build platform (not target platform)
          to CI service. It determines which service handles each build platform.
          If a desired build platform is not available with a selected provider
          (either natively or with emulation), the build will be disabled.
          Use the `build_platform` field to manually specify cross-compilation when
          no providers offer a desired build platform.
          
          The following are available as supported build platforms:
          
          * `linux_64`
          * `osx_64`
          * `win_64`
          * `linux_aarch64`
          * `linux_ppc64le`
          * `linux_s390x`
          * `linux_armv7l`
          
          The following CI services are available:
          
          * `azure`
          * `circle`
          * `travis`
          * `appveyor`
          * `None` or `False` to disable a build platform.
          * `default` to choose an appropriate CI (only if available)
          * `native` to choose an appropriate CI for native compiling (only if available)
          * `emulated` to choose an appropriate CI for compiling inside an emulation
            of the target platform (only if available)
          
          For example, making explicit that linux_64 & osx_64 build on azure (by default),
          and switching win_64 to Appveyor:
          
          ```yaml
          provider:
              linux_64: azure
              osx_64: azure
              win_64: appveyor
          ```
          
          Currently, x86_64 platforms are enabled, but other build platforms are
          disabled by default. i.e. an empty provider entry is equivalent to the
          following:
          
          ```yaml
          provider:
              linux_64: azure
              osx_64: azure
              win_64: azure
              linux_ppc64le: None
              linux_aarch64: None
          ```
          
          To enable `linux_ppc64le` and `linux_aarch64` add the following:
          
          ```yaml
          provider:
              linux_ppc64le: default
              linux_aarch64: default
          ```
        "%
        | optional,
      recipe_dir
        | js2n.Nullable String
        | doc m%"
          The relative path to the recipe directory. The default is:
          
          ```yaml
          recipe_dir: recipe
          ```
        "%
        | optional,
      remote_ci_setup
        | std.contract.any_of [ String, Array String, js2n.Null ]
        | doc m%"
          This option can be used to override the default `conda-forge-ci-setup` package.
          Can be given with `${url or channel_alias}::package_name`,
          defaults to conda-forge channel_alias if no prefix is given.
          
          ```yaml
          remote_ci_setup: ["conda-forge-ci-setup=4", "conda-build>=24.1"]
          ```
        "%
        | optional,
      secrets
        | js2n.Nullable (Array String)
        | doc m%"
          List of secrets to be used in GitHub Actions.
          The default is an empty list and will not be used.
        "%
        | optional,
      shellcheck
        | std.contract.any_of
          [
            js2n.Null,
            Bool,
            { _ | Dyn },
            Array Dyn,
            Number,
            String,
            js2n.Null,
            Bool,
            { _ | Dyn },
            Array Dyn,
            Number,
            String,
            js2n.Null
          ]
        | doc m%"
          Shell scripts used for builds or activation scripts can be linted with
          shellcheck. This option can be used to enable shellcheck and configure
          its behavior. This is not enabled by default, but can be enabled like so:
          
          ```yaml
          shellcheck:
              enabled: True
          ```
        "%
        | optional,
      skip_render
        | js2n.Nullable (Array String)
        | doc m%"
          This option specifies a list of files which `conda smithy` will skip rendering.
          This is useful for files that are not templates, but are still in the recipe
          directory. The default value is an empty list `[]`, which will consider that
          all files can be rendered. For example, if you want to skip rendering
          the `.gitignore` and `LICENSE.txt` files, you can add the following:
          
          ```yaml
          skip_render:
              - .gitignore
              - LICENSE.txt
          ```
        "%
        | optional,
      templates
        | js2n.Nullable ({ _ | String })
        | doc m%"
          This is mostly an internal field for specifying where template files reside.
          You shouldn't need to modify it.
        "%
        | optional,
      test
        | std.contract.any_of
          [
            js2n.Null,
            Bool,
            { _ | Dyn },
            Array Dyn,
            Number,
            String,
            js2n.Null,
            Bool,
            { _ | Dyn },
            Array Dyn,
            Number,
            String,
            js2n.Null
          ]
        | doc m%"
          This is used to configure on which platforms a recipe is tested.
          
          ```yaml
          test: native_and_emulated
          ```
          
          Will do testing only if the platform is native or if there is an emulator.
          
          ```yaml
          test: native
          ```
          
          Will do testing only if the platform is native.
        "%
        | optional,
      test_on_native_only
        | js2n.Nullable Bool
        | doc m%"
          This was used for disabling testing for cross-compiling.
          
          ```warning
          This has been deprecated in favor of the top-level `test` field.
          It is now mapped to `test: native_and_emulated`.
          ```
        "%
        | optional,
      travis
        | js2n.Nullable {  .. }
        | doc m%"
          Travis CI settings. This is usually read-only and should not normally be
          manually modified. Tools like conda-smithy may modify this, as needed.
        "%
        | optional,
      upload_on_branch
        | std.contract.any_of
          [
            String,
            js2n.Null,
            Bool,
            { _ | Dyn },
            Array Dyn,
            Number,
            String,
            js2n.Null
          ]
        | doc m%"
          This parameter restricts uploading access on work from certain branches of the
          same repo. Only the branch listed in `upload_on_branch` will trigger uploading
          of packages to the target channel. The default is to skip this check if the key
          `upload_on_branch` is not in `conda-forge.yml`. To restrict uploads to the
          main branch:
          
          ```yaml
          upload_on_branch: main
          ```
        "%
        | optional,
      woodpecker
        | js2n.Nullable ({ _ | String })
        | doc m%"
          Woodpecker CI settings. This is usually read-only and should not normally be
          manually modified. Tools like conda-smithy may modify this, as needed.
        "%
        | optional,
    }