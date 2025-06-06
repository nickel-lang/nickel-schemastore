# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.arrayOfNonEmptyStrings" =
        Array (
            std.contract.Sequence [ refs."definitions.nonEmptyString", String ]
          ),
      "definitions.cache" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [|
                'npm,
                'yarn,
                'pip,
                'packages,
                'cocoapods,
                'ccache,
                'cargo,
                'bundler,
                'apt
              |]
            ],
      "definitions.deployment" =
        std.contract.Sequence
            [
              js2n.OneOf
                [
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            provider =
                              std.contract.Sequence
                                  [ std.enum.TagOrString, [| 'script |] ],
                            script = String,
                          },
                      required = { provider = true, script = true, },
                    },
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
                              js2n.record.Required
                                [ "api_key", "email", "provider" ],
                              Array Dyn
                            ],
                          std.contract.any_of
                            [
                              js2n.Null,
                              Bool,
                              Number,
                              String,
                              js2n.record.Required
                                [ "api_token", "email", "provider" ],
                              Array Dyn
                            ]
                        ],
                      js2n.record.Record
                        {
                          additional = 'Some Dyn,
                          patterns = {},
                          properties =
                            {
                                api_key =
                                  refs."definitions.possiblySecretString",
                                api_token =
                                  refs."definitions.possiblySecretString",
                                email = refs."definitions.possiblySecretString",
                                provider =
                                  std.contract.Sequence
                                      [ std.enum.TagOrString, [| 'npm |] ],
                                tag = String,
                              },
                          required = {},
                        }
                    ],
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            domain = String,
                            project = String,
                            provider =
                              std.contract.Sequence
                                  [ std.enum.TagOrString, [| 'surge |] ],
                          },
                      required = { provider = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            api_key = refs."definitions.possiblySecretString",
                            file =
                              std.contract.any_of
                                  [ String, js2n.array.ArrayOf String ],
                            file_glob = Bool,
                            overwrite = Bool,
                            password = refs."definitions.possiblySecretString",
                            provider =
                              std.contract.Sequence
                                  [ std.enum.TagOrString, [| 'releases |] ],
                            user = refs."definitions.possiblySecretString",
                          },
                      required = { provider = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            api_key =
                              std.contract.any_of
                                  [
                                    refs."definitions.possiblySecretString",
                                    js2n.record.Record
                                      {
                                        additional =
                                          'Some
                                              refs."definitions.possiblySecretString",
                                        patterns = {},
                                        properties = {},
                                        required = {},
                                      }
                                  ],
                            app =
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
                            provider =
                              std.contract.Sequence
                                  [ std.enum.TagOrString, [| 'heroku |] ],
                            run =
                              std.contract.any_of
                                  [ String, js2n.array.ArrayOf String ],
                            skip_cleanup = Bool,
                            strategy =
                              std.contract.Sequence
                                  [ std.enum.TagOrString, [| 'git, 'api |] ],
                          },
                      required = { api_key = true, provider = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            access_key_id =
                              refs."definitions.possiblySecretString",
                            acl =
                              std.contract.Sequence
                                  [
                                    std.enum.TagOrString,
                                    [|
                                      'bucket_owner_full_control,
                                      'bucket_owner_read,
                                      'authenticated_read,
                                      'public_read_write,
                                      'public_read,
                                      'private
                                    |]
                                  ],
                            bucket = String,
                            cache_control = String,
                            default_text_charset = String,
                            detect_encoding = Bool,
                            endpoint = String,
                            expires = String,
                            local_dir = String,
                            provider =
                              std.contract.Sequence
                                  [ std.enum.TagOrString, [| 's3 |] ],
                            region = String,
                            secret_access_key =
                              refs."definitions.possiblySecretString",
                            skip_cleanup = Bool,
                            upload-dir = String,
                          },
                      required =
                        {
                            access_key_id = true,
                            bucket = true,
                            provider = true,
                            secret_access_key = true,
                          },
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties =
                        {
                            provider =
                              std.contract.Sequence
                                  [
                                    std.contract.not
                                      (std.contract.Sequence
                                        [
                                          std.enum.TagOrString,
                                          [|
                                            's3,
                                            'heroku,
                                            'releases,
                                            'surge,
                                            'npm,
                                            'script
                                          |]
                                        ]),
                                    String
                                  ],
                          },
                      required = { provider = true, },
                    }
                ],
              {
                on
                  | {
                    all_branches | Bool | optional,
                    branch | String | optional,
                    condition
                      | String
                      | doc "if [[ <condition> ]]; then <deploy>; fi"
                      | optional,
                    repo | String | optional,
                    skip_cleanup
                      | Bool
                      | doc "After your tests ran and before the release, Travis CI will clean up any additional files and changes you made. Maybe that is not what you want, as you might generate some artifacts that are supposed to be released, too."
                      | optional,
                    tags
                      | std.contract.any_of [ Bool, String ]
                      | doc "Tell Travis CI to only deploy on tagged commits"
                      | optional,
                    ..
                  }
                  | optional,
                ..
              }
            ],
      "definitions.envVar" =
        std.contract.any_of
            [
              js2n.string.Matches "[^=]+=.*",
              { secure | js2n.string.Matches "[^=]+=.*" | optional, }
            ],
      "definitions.envVars" =
        js2n.OneOf
            [
              refs."definitions.envVar",
              js2n.array.ArrayOf refs."definitions.envVar"
            ],
      "definitions.import" =
        std.contract.any_of
            [
              {
                "if"
                  | refs."definitions.nonEmptyString"
                  | String
                  | doc "Specifies a condition for the import"
                  | optional,
                mode
                  | std.enum.TagOrString
                  | [|
                    'deep_merge_prepend,
                    'deep_merge_append,
                    'deep_merge,
                    '"merge"
                  |]
                  | doc "How to merge the imported config into the target config (defaults to deep_merge_append)"
                  | optional,
                source
                  | refs."definitions.nonEmptyString"
                  | String
                  | doc "The source to import build config from",
              },
              std.contract.Sequence
                [ refs."definitions.nonEmptyString", String ]
            ],
      "definitions.job" =
        {
            addons
              | {
                apt
                  | {
                    packages
                      | Array String
                      | doc "To install packages from the package whitelist before your custom build steps"
                      | optional,
                    sources
                      | Array (
                        std.contract.any_of
                          [
                            {
                              key_url
                                | String
                                | doc "When APT sources require GPG keys, you can specify this with key_url"
                                | optional,
                              sourceline
                                | String
                                | doc "Key-value pairs which will be added to /etc/apt/sources.list",
                            },
                            String
                          ]
                      )
                      | optional,
                    update
                      | Bool
                      | doc "To update the list of available packages"
                      | optional,
                  }
                  | doc "To install packages not included in the default container-based-infrastructure you need to use the APT addon, as sudo apt-get is not available"
                  | optional,
                artifacts
                  | std.contract.any_of
                    [
                      js2n.Enum [ true ],
                      {
                        debug
                          | Bool
                          | doc "If you'd like to see more detail about what the artifacts addon is doing"
                          | optional,
                        paths | Array String | optional,
                        s3_region | String | optional,
                        working_dir
                          | String
                          | doc "If you'd like to upload file from a specific directory, you can change your working directory "
                          | optional,
                        ..
                      }
                    ]
                  | optional,
                browserstack
                  | {
                    access_key
                      | refs."definitions.possiblySecretString"
                      | optional,
                    app_path
                      | refs."definitions.nonEmptyString"
                      | String
                      | optional,
                    forcelocal | Bool | optional,
                    only
                      | refs."definitions.nonEmptyString"
                      | String
                      | optional,
                    proxyHost
                      | refs."definitions.nonEmptyString"
                      | String
                      | optional,
                    proxyPass
                      | refs."definitions.nonEmptyString"
                      | String
                      | optional,
                    proxyPort
                      | refs."definitions.nonEmptyString"
                      | String
                      | optional,
                    proxyUser
                      | refs."definitions.nonEmptyString"
                      | String
                      | optional,
                    username
                      | refs."definitions.nonEmptyString"
                      | String
                      | optional,
                    ..
                  }
                  | doc "BrowserStack addon"
                  | optional,
                chrome
                  | std.enum.TagOrString
                  | [| 'beta, 'stable |]
                  | doc "Chrome addon"
                  | optional,
                coverity_scan
                  | {
                    branch_pattern
                      | String
                      | doc "Pattern to match selecting branches that will run analysis. We recommend leaving this set to 'coverity_scan'"
                      | optional,
                    build_command
                      | String
                      | doc "The command that will be added as an argument to 'cov-build' to compile your project for analysis"
                      | optional,
                    build_command_prepend
                      | String
                      | doc "Commands to prepare for build_command"
                      | optional,
                    notification_email
                      | String
                      | doc "Where email notification of build analysis results will be sent"
                      | optional,
                    project
                      | {
                        description | String | optional,
                        name | String,
                        version | Number | optional,
                        ..
                      }
                      | doc "GitHub project metadata"
                      | optional,
                    ..
                  }
                  | doc "Coverity Scan addon"
                  | optional,
                firefox
                  | std.contract.any_of
                    [
                      std.contract.Sequence
                        [
                          std.enum.TagOrString,
                          [|
                            'latest-unsigned,
                            'latest-nightly,
                            'latest-dev,
                            'latest-beta,
                            'latest-esr,
                            'latest
                          |]
                        ],
                      std.contract.Sequence
                        [ refs."definitions.nonEmptyString", String ]
                    ]
                  | doc "Firefox addon"
                  | optional,
                homebrew
                  | {
                    brewfile
                      | std.contract.any_of
                        [
                          std.contract.Sequence
                            [ refs."definitions.nonEmptyString", String ],
                          Bool
                        ]
                      | optional,
                    casks
                      | refs."definitions.stringOrStringArrayUnique"
                      | optional,
                    packages
                      | refs."definitions.stringOrStringArrayUnique"
                      | optional,
                    taps
                      | refs."definitions.stringOrStringArrayUnique"
                      | optional,
                    update | Bool | optional,
                  }
                  | doc "Homebrew addon"
                  | optional,
                hosts
                  | std.contract.any_of [ Array String, String ]
                  | doc "If your build requires setting up custom hostnames, you can specify a single host or a list of them. Travis CI will automatically setup the hostnames in /etc/hosts for both IPv4 and IPv6."
                  | optional,
                mariadb | String | doc "MariaDB addon" | optional,
                postgresql | String | doc "PostgreSQL addon" | optional,
                rethinkdb | String | doc "RethinkDB addon" | optional,
                sauce_connect
                  | std.contract.any_of
                    [
                      {
                        access_key | String | optional,
                        username | String | optional,
                        ..
                      },
                      Bool
                    ]
                  | doc "Sauce Connect addon"
                  | optional,
                snaps
                  | std.contract.any_of
                    [
                      std.contract.Sequence
                        [ refs."definitions.nonEmptyString", String ],
                      std.contract.Sequence
                        [
                          js2n.array.MinItems 1,
                          js2n.array.UniqueItems,
                          Array (
                            std.contract.any_of
                              [
                                std.contract.Sequence
                                  [ refs."definitions.nonEmptyString", String ],
                                {
                                  channel
                                    | refs."definitions.nonEmptyString"
                                    | String
                                    | optional,
                                  classic
                                    | Bool
                                    | doc "'classic:' is deprecated, use 'confinement:'"
                                    | optional,
                                  confinement
                                    | std.enum.TagOrString
                                    | [| 'devmode, 'classic |]
                                    | optional,
                                  name
                                    | refs."definitions.nonEmptyString"
                                    | String,
                                }
                              ]
                          )
                        ]
                    ]
                  | doc "Snaps addon"
                  | optional,
                sonarcloud
                  | {
                    organization | String | optional,
                    token
                      | refs."definitions.secretString"
                      | { _ | Dyn }
                      | optional,
                    ..
                  }
                  | doc "SonarCloud addon"
                  | optional,
                srcclr
                  | std.contract.any_of [ Bool, { debug | Bool | optional, } ]
                  | doc "SourceClear addon"
                  | optional,
                ssh_known_hosts
                  | refs."definitions.stringOrStringArrayUnique"
                  | doc "Travis CI can add entries to ~/.ssh/known_hosts prior to cloning your git repository, which is necessary if there are git submodules from domains other than github.com, gist.github.com, or ssh.github.com."
                  | optional,
              }
              | optional,
            after_deploy
              | refs."definitions.step"
              | std.contract.any_of [ Bool, Array Dyn, String ]
              | optional,
            after_failure
              | refs."definitions.step"
              | std.contract.any_of [ Bool, Array Dyn, String ]
              | optional,
            after_script
              | refs."definitions.step"
              | std.contract.any_of [ Bool, Array Dyn, String ]
              | optional,
            after_success
              | refs."definitions.step"
              | std.contract.any_of [ Bool, Array Dyn, String ]
              | optional,
            android
              | {
                components | Array String | optional,
                licenses | Array String | optional,
              }
              | optional,
            apt_packages | Array String | optional,
            arch
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [
                      std.enum.TagOrString,
                      [|
                        'arm64-graviton2,
                        's390x,
                        'ppc64le,
                        'arm64,
                        'x86_64,
                        'amd64
                      |]
                    ],
                  std.contract.Sequence
                    [
                      js2n.array.MinItems 1,
                      js2n.array.UniqueItems,
                      Array (
                        std.contract.Sequence
                          [
                            std.enum.TagOrString,
                            [|
                              'arm64-graviton2,
                              's390x,
                              'ppc64le,
                              'arm64,
                              'amd64
                            |]
                          ]
                      )
                    ]
                ]
              | doc "The CPU Architecture to run the job on"
              | optional,
            before_cache
              | refs."definitions.step"
              | std.contract.any_of [ Bool, Array Dyn, String ]
              | optional,
            before_deploy
              | refs."definitions.step"
              | std.contract.any_of [ Bool, Array Dyn, String ]
              | optional,
            before_install
              | refs."definitions.step"
              | std.contract.any_of [ Bool, Array Dyn, String ]
              | optional,
            before_script
              | refs."definitions.step"
              | std.contract.any_of [ Bool, Array Dyn, String ]
              | optional,
            bioc_packages | Array String | optional,
            branches
              | {
                except | Array String | optional,
                only | Array String | optional,
              }
              | doc "Specify which branches to build"
              | optional,
            brew_packages
              | Array String
              | doc "A list of packages to install via brew. This option is ignored on non-OS X builds."
              | optional,
            bundler_args | String | optional,
            cache
              | std.contract.any_of
                [
                  js2n.Enum [ false ],
                  std.contract.Sequence [ refs."definitions.cache", String ],
                  Array (
                    std.contract.any_of
                      [
                        std.contract.Sequence
                          [ refs."definitions.cache", String ],
                        { directories | Array String | optional, }
                      ]
                  ),
                  {
                    apt | Bool | optional,
                    bundler | Bool | optional,
                    cargo | Bool | optional,
                    ccache | Bool | optional,
                    cocoapods | Bool | optional,
                    directories | Array String | optional,
                    npm | Bool | optional,
                    packages | Bool | optional,
                    pip | Bool | optional,
                    timeout
                      | Number
                      | doc "Upload timeout in seconds"
                      | optional,
                    yarn | Bool | optional,
                  }
                ]
              | optional,
            compiler
              | std.contract.any_of
                [
                  Array (
                    std.contract.Sequence
                      [ std.enum.TagOrString, [| 'gcc, 'clang |] ]
                  ),
                  std.contract.Sequence
                    [ std.enum.TagOrString, [| 'gcc, 'clang |] ]
                ]
              | optional,
            cran
              | String
              | doc "CRAN mirror to use for fetching packages"
              | optional,
            crystal | Array String | optional,
            d | Array String | optional,
            dart | Array String | optional,
            dart_task
              | Array
                {
                  dartanalyzer | Bool | optional,
                  dartfmt | Bool | optional,
                  install_dartium | Bool | optional,
                  test | String | optional,
                  xvfb | Bool | optional,
                  ..
                }
              | optional,
            deploy
              | std.contract.any_of
                [
                  Array (
                    std.contract.Sequence
                      [ refs."definitions.deployment", { _ | Dyn } ]
                  ),
                  std.contract.Sequence
                    [ refs."definitions.deployment", { _ | Dyn } ]
                ]
              | optional,
            dist
              | std.enum.TagOrString
              | [|
                'noble,
                'jammy,
                'focal,
                'bionic,
                'xenial,
                'trusty,
                'precise
              |]
              | doc "The Ubuntu distribution to use"
              | optional,
            elixir | std.contract.any_of [ Array String, String ] | optional,
            elm | refs."definitions.stringOrStringArrayUnique" | optional,
            elm-format | refs."definitions.nonEmptyString" | String | optional,
            elm-test | refs."definitions.nonEmptyString" | String | optional,
            env
              | js2n.OneOf
                [
                  refs."definitions.envVars",
                  js2n.record.Record
                    {
                      additional = 'None,
                      patterns = {},
                      properties =
                        {
                            global = refs."definitions.envVars",
                            jobs = refs."definitions.envVars",
                            matrix = refs."definitions.envVars",
                          },
                      required = {},
                    }
                ]
              | optional,
            erlang | std.contract.any_of [ Array String, String ] | optional,
            gemfile | std.contract.any_of [ String, Array String ] | optional,
            ghc | Array String | optional,
            git
              | {
                autocrlf
                  | std.contract.any_of
                    [
                      Bool,
                      std.contract.Sequence
                        [ std.enum.TagOrString, [| 'input |] ]
                    ]
                  | doc "Specify handling of line endings when cloning repository"
                  | optional,
                clone
                  | Bool
                  | doc "In some work flows, like build stages, it might be beneficial to skip the automatic git clone step."
                  | optional,
                depth
                  | std.contract.any_of
                    [ std.number.Integer, js2n.Enum [ false ] ]
                  | optional,
                lfs_skip_smudge
                  | Bool
                  | doc "Skip fetching the git-lfs files during the initial git clone (equivalent to git lfs smudge --skip),"
                  | optional,
                quiet
                  | Bool
                  | doc "Travis CI clones repositories without the quiet flag (-q) by default. Enabling the quiet flag can be useful if you're trying to avoid log file size limits or even if you just don't need to include it."
                  | optional,
                sparse_checkout
                  | refs."definitions.nonEmptyString"
                  | String
                  | doc "Is a path to the existing file in the current repository with data you'd like to put into $GIT_DIR/info/sparse-checkout file of format described in Git documentation."
                  | optional,
                submodules
                  | Bool
                  | doc "Control whether submodules should be cloned"
                  | optional,
              }
              | optional,
            go | std.contract.any_of [ Array String, String ] | optional,
            haxe | Array String | optional,
            hxml | Array String | optional,
            install
              | refs."definitions.step"
              | std.contract.any_of [ Bool, Array Dyn, String ]
              | optional,
            jdk | std.contract.any_of [ String, Array String ] | optional,
            julia
              | refs."definitions.stringOrNumberOrAcceptBothTypeAsArrayUnique"
              | optional,
            language
              | std.enum.TagOrString
              | [|
                'smalltalk,
                'shell,
                'sh,
                'scala,
                'rust,
                'ruby,
                'r,
                'python,
                'php,
                'perl6,
                'perl,
                'objective_c,
                'objective-c,
                'obj_c,
                'obj-c,
                'nodejs,
                'node_js,
                '"node.js",
                'node,
                'nix,
                'minimal,
                'matlab,
                'jvm,
                'julia,
                'javascript,
                'java,
                'haxe,
                'haskell,
                'groovy,
                'golang,
                'go,
                'generic,
                'erlang,
                'elm,
                'elixir,
                'dartlang,
                'dart,
                'd,
                'csharp,
                'crystal,
                'cpp,
                'clojure,
                '"c++",
                'c,
                'bash,
                'android
              |]
              | optional,
            lein | String | optional,
            matlab | refs."definitions.stringOrStringArrayUnique" | optional,
            mono
              | std.contract.any_of
                [
                  std.contract.Sequence [ std.enum.TagOrString, [| 'none |] ],
                  Array String
                ]
              | optional,
            neko | String | optional,
            node_js
              | refs."definitions.stringOrNumberOrAcceptBothTypeAsArrayUnique"
              | optional,
            opt_release
              | std.contract.any_of [ Array String, String ]
              | optional,
            os
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [
                      std.enum.TagOrString,
                      [| 'windows, 'linux-ppc64le, 'linux, 'osx |]
                    ],
                  std.contract.Sequence
                    [
                      js2n.array.MinItems 1,
                      js2n.array.UniqueItems,
                      Array (
                        std.contract.Sequence
                          [
                            std.enum.TagOrString,
                            [| 'windows, 'linux-ppc64le, 'linux, 'osx |]
                          ]
                      )
                    ]
                ]
              | doc "The operating system to run the job on"
              | optional,
            osx_image
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [ refs."definitions.xcodeVersions", String ],
                  std.contract.Sequence
                    [
                      js2n.array.MinItems 1,
                      js2n.array.UniqueItems,
                      Array (
                        std.contract.Sequence
                          [ refs."definitions.xcodeVersions", String ]
                      )
                    ]
                ]
              | optional,
            pandoc_version | String | optional,
            perl | Array String | optional,
            perl6 | Array String | optional,
            php
              | refs."definitions.stringOrNumberOrAcceptBothTypeAsArrayUnique"
              | optional,
            podfile
              | String
              | doc "By default, Travis CI will assume that your Podfile is in the root of the repository. If this is not the case, you can specify where the Podfile is"
              | optional,
            python
              | refs."definitions.stringOrNumberOrAcceptBothTypeAsArrayUnique"
              | optional,
            r | std.contract.any_of [ Array String, String ] | optional,
            r_binary_packages | Array String | optional,
            r_github_packages | Array String | optional,
            r_packages | Array String | optional,
            repos
              | { _ | String }
              | doc "Dictionary of repositories to pass to options(repos)"
              | optional,
            rust
              | std.contract.any_of [ Array String, String, Number ]
              | optional,
            rvm
              | refs."definitions.stringOrNumberOrAcceptBothTypeAsArrayUnique"
              | optional,
            sbt_args | String | optional,
            scala | Array String | optional,
            script
              | refs."definitions.step"
              | std.contract.any_of [ Bool, Array Dyn, String ]
              | optional,
            services
              | std.contract.any_of
                [
                  std.contract.Sequence [ refs."definitions.service", String ],
                  Array (
                    std.contract.Sequence [ refs."definitions.service", String ]
                  )
                ]
              | optional,
            smalltalk | Array String | optional,
            solution
              | String
              | doc "When the optional solution key is present, Travis will run NuGet package restore and build the given solution."
              | optional,
            sudo
              | js2n.Enum [ true, false, "", "required", "enabled" ]
              | doc "sudo is deprecated"
              | optional,
            xcode_project | String | optional,
            xcode_scheme | String | optional,
            xcode_sdk | String | optional,
            xcode_workspace | String | optional,
            ..
          },
      "definitions.nonEmptyString" = js2n.string.MinLength 1,
      "definitions.nonEmptyStringOrArrayOfNonEmptyStrings" =
        std.contract.any_of
            [
              std.contract.Sequence
                [ refs."definitions.nonEmptyString", String ],
              std.contract.Sequence
                [ refs."definitions.arrayOfNonEmptyStrings", Array Dyn ]
            ],
      "definitions.possiblySecretString" =
        std.contract.any_of [ String, { secure | String | optional, } ],
      "definitions.possiblySecretStringOrPossiblySecretStringTypeArrayUnique" =
        js2n.OneOf
            [
              refs."definitions.possiblySecretString",
              std.contract.Sequence
                [
                  js2n.array.MinItems 1,
                  js2n.array.UniqueItems,
                  js2n.array.ArrayOf refs."definitions.possiblySecretString"
                ]
            ],
      "definitions.secretString" =
        { secure | refs."definitions.nonEmptyString" | String | optional, },
      "definitions.service" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [|
                'xvfb,
                'riak,
                'rethinkdb,
                'redis-server,
                'redis,
                'rabbitmq,
                'postgresql,
                'neo4j,
                'mysql,
                'mongodb,
                'memcached,
                'mariadb,
                'elasticsearch,
                'docker,
                'couchdb,
                'cassandra
              |]
            ],
      "definitions.slackRoom" =
        std.contract.any_of
            [
              js2n.string.Matches ".+:.+(#.+)?",
              std.contract.Sequence
                [ refs."definitions.secretString", { _ | Dyn } ]
            ],
      "definitions.step" =
        std.contract.any_of
            [
              Bool,
              std.contract.Sequence
                [ std.enum.TagOrString, [| 'ignore, 'skip |] ],
              String,
              js2n.array.ArrayOf String
            ],
      "definitions.stringArrayUnique" =
        std.contract.Sequence
            [
              js2n.array.MinItems 1,
              js2n.array.UniqueItems,
              Array (
                std.contract.Sequence
                  [ refs."definitions.nonEmptyString", String ]
              )
            ],
      "definitions.stringOrNumber" =
        std.contract.any_of
            [
              std.contract.Sequence
                [ refs."definitions.nonEmptyString", String ],
              Number
            ],
      "definitions.stringOrNumberAndBothAreTypeArrayUnique" =
        std.contract.Sequence
            [
              js2n.array.MinItems 1,
              js2n.array.UniqueItems,
              Array refs."definitions.stringOrNumber"
            ],
      "definitions.stringOrNumberOrAcceptBothTypeAsArrayUnique" =
        js2n.OneOf
            [
              refs."definitions.stringOrNumber",
              std.contract.Sequence
                [
                  refs."definitions.stringOrNumberAndBothAreTypeArrayUnique",
                  Array Dyn
                ]
            ],
      "definitions.stringOrStringArrayUnique" =
        std.contract.any_of
            [
              std.contract.Sequence
                [ refs."definitions.nonEmptyString", String ],
              std.contract.Sequence
                [ refs."definitions.stringArrayUnique", Array Dyn ]
            ],
      "definitions.xcodeVersions" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [|
                '"xcode14.2",
                '"xcode14.1",
                'xcode14,
                '"xcode13.4",
                '"xcode13.3",
                '"xcode13.2",
                '"xcode13.1",
                '"xcode12.5",
                '"xcode12.4",
                '"xcode12.3",
                '"xcode12.2",
                'xcode12,
                'xcode12u,
                '"xcode11.6",
                '"xcode11.5",
                '"xcode11.4.1",
                '"xcode11.4",
                '"xcode11.3",
                '"xcode11.2",
                '"xcode11.1",
                'xcode11,
                '"xcode10.3",
                '"xcode10.2",
                '"xcode10.1",
                'xcode10,
                '"xcode9.4",
                '"xcode9.3",
                '"xcode9.2",
                '"xcode9.1",
                'xcode9,
                '"xcode8.3",
                'xcode8,
                '"xcode7.3",
                '"xcode6.4"
              |]
            ],
    }
    in
  std.contract.Sequence
      [
        refs."definitions.job",
        {
          "import"
            | js2n.OneOf
              [
                std.contract.Sequence
                  [
                    js2n.array.UniqueItems,
                    js2n.array.ArrayOf refs."definitions.import"
                  ],
                refs."definitions.import"
              ]
            | doc "Import YAML config snippets that can be shared across repositories."
            | optional,
          jobs
            | {
              allow_failures | Array refs."definitions.job" | optional,
              exclude
                | Array (
                  std.contract.Sequence
                    [
                      refs."definitions.job",
                      {
                        stage
                          | String
                          | doc "The name of the build stage"
                          | optional,
                        ..
                      }
                    ]
                )
                | optional,
              fast_finish
                | Bool
                | doc "If some rows in the build matrix are allowed to fail, the build won't be marked as finished until they have completed. To mark the build as finished as soon as possible, add fast_finish: true"
                | optional,
              include
                | Array (
                  std.contract.Sequence
                    [
                      refs."definitions.job",
                      {
                        stage
                          | String
                          | doc "The name of the build stage"
                          | optional,
                        ..
                      }
                    ]
                )
                | optional,
            }
            | optional,
          matrix
            | {
              allow_failures | Array refs."definitions.job" | optional,
              exclude | Array refs."definitions.job" | optional,
              fast_finish
                | Bool
                | doc "If some rows in the build matrix are allowed to fail, the build won't be marked as finished until they have completed. To mark the build as finished as soon as possible, add fast_finish: true"
                | optional,
              include | Array refs."definitions.job" | optional,
            }
            | optional,
          notifications
            | {
              campfire
                | js2n.OneOf
                  [
                    refs."definitions.possiblySecretStringOrPossiblySecretStringTypeArrayUnique",
                    Bool,
                    std.contract.any_of
                      [
                        js2n.Null,
                        Bool,
                        { _ | Dyn },
                        Array Dyn,
                        Number,
                        String
                      ],
                    std.contract.Sequence
                      [
                        js2n.array.MinItems 1,
                        js2n.array.UniqueItems,
                        js2n.array.ArrayOf
                          (std.contract.any_of
                            [
                              js2n.Null,
                              Bool,
                              { _ | Dyn },
                              Array Dyn,
                              Number,
                              String
                            ])
                      ]
                  ]
                | optional,
              email
                | js2n.OneOf
                  [
                    refs."definitions.possiblySecretStringOrPossiblySecretStringTypeArrayUnique",
                    Bool,
                    std.contract.any_of
                      [
                        js2n.Null,
                        Bool,
                        { _ | Dyn },
                        Array Dyn,
                        Number,
                        String
                      ],
                    std.contract.Sequence
                      [
                        js2n.array.MinItems 1,
                        js2n.array.UniqueItems,
                        js2n.array.ArrayOf
                          (std.contract.any_of
                            [
                              js2n.Null,
                              Bool,
                              { _ | Dyn },
                              Array Dyn,
                              Number,
                              String
                            ])
                      ]
                  ]
                | optional,
              flowdock
                | js2n.OneOf
                  [
                    refs."definitions.possiblySecretString",
                    Bool,
                    std.contract.any_of
                      [
                        js2n.Null,
                        Bool,
                        { _ | Dyn },
                        Array Dyn,
                        Number,
                        String
                      ],
                    std.contract.Sequence
                      [
                        js2n.array.MinItems 1,
                        js2n.array.UniqueItems,
                        js2n.array.ArrayOf
                          (std.contract.any_of
                            [
                              js2n.Null,
                              Bool,
                              { _ | Dyn },
                              Array Dyn,
                              Number,
                              String
                            ])
                      ]
                  ]
                | optional,
              hipchat
                | js2n.OneOf
                  [
                    refs."definitions.possiblySecretStringOrPossiblySecretStringTypeArrayUnique",
                    Bool,
                    std.contract.any_of
                      [
                        js2n.Null,
                        Bool,
                        { _ | Dyn },
                        Array Dyn,
                        Number,
                        String
                      ],
                    std.contract.Sequence
                      [
                        js2n.array.MinItems 1,
                        js2n.array.UniqueItems,
                        js2n.array.ArrayOf
                          (std.contract.any_of
                            [
                              js2n.Null,
                              Bool,
                              { _ | Dyn },
                              Array Dyn,
                              Number,
                              String
                            ])
                      ]
                  ]
                | optional,
              irc
                | js2n.OneOf
                  [
                    refs."definitions.possiblySecretStringOrPossiblySecretStringTypeArrayUnique",
                    Bool,
                    std.contract.any_of
                      [
                        js2n.Null,
                        Bool,
                        { _ | Dyn },
                        Array Dyn,
                        Number,
                        String
                      ],
                    std.contract.Sequence
                      [
                        js2n.array.MinItems 1,
                        js2n.array.UniqueItems,
                        js2n.array.ArrayOf
                          (std.contract.any_of
                            [
                              js2n.Null,
                              Bool,
                              { _ | Dyn },
                              Array Dyn,
                              Number,
                              String
                            ])
                      ]
                  ]
                | optional,
              pushover
                | js2n.OneOf
                  [
                    refs."definitions.nonEmptyStringOrArrayOfNonEmptyStrings",
                    Bool,
                    std.contract.any_of
                      [
                        js2n.Null,
                        Bool,
                        { _ | Dyn },
                        Array Dyn,
                        Number,
                        String
                      ],
                    std.contract.Sequence
                      [
                        js2n.array.MinItems 1,
                        js2n.array.UniqueItems,
                        js2n.array.ArrayOf
                          (std.contract.any_of
                            [
                              js2n.Null,
                              Bool,
                              { _ | Dyn },
                              Array Dyn,
                              Number,
                              String
                            ])
                      ]
                  ]
                | optional,
              slack
                | js2n.OneOf
                  [
                    refs."definitions.slackRoom",
                    Bool,
                    std.contract.any_of
                      [
                        js2n.Null,
                        Bool,
                        { _ | Dyn },
                        Array Dyn,
                        Number,
                        String
                      ],
                    std.contract.Sequence
                      [
                        js2n.array.MinItems 1,
                        js2n.array.UniqueItems,
                        js2n.array.ArrayOf
                          (std.contract.any_of
                            [
                              js2n.Null,
                              Bool,
                              { _ | Dyn },
                              Array Dyn,
                              Number,
                              String
                            ])
                      ]
                  ]
                | optional,
              webhooks
                | js2n.OneOf
                  [
                    refs."definitions.possiblySecretStringOrPossiblySecretStringTypeArrayUnique",
                    Bool,
                    std.contract.any_of
                      [
                        js2n.Null,
                        Bool,
                        { _ | Dyn },
                        Array Dyn,
                        Number,
                        String
                      ],
                    std.contract.Sequence
                      [
                        js2n.array.MinItems 1,
                        js2n.array.UniqueItems,
                        js2n.array.ArrayOf
                          (std.contract.any_of
                            [
                              js2n.Null,
                              Bool,
                              { _ | Dyn },
                              Array Dyn,
                              Number,
                              String
                            ])
                      ]
                  ]
                | optional,
            }
            | optional,
          stages
            | Array (
              std.contract.any_of
                [
                  String,
                  {
                    "if"
                      | String
                      | doc "Specifies a condition for the stage"
                      | optional,
                    name | String | optional,
                  }
                ]
            )
            | doc "Specifies the order of build stages"
            | optional,
          version
            | js2n.string.Matches
              "^(~>|>|>=|=|<=|<) (\\d+(?:\\.\\d+)?(?:\\.\\d+)?)$"
            | doc "Build config specification version"
            | optional,
          ..
        }
      ]