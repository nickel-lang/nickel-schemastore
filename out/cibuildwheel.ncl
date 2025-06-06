# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "properties.tool.properties.cibuildwheel.properties.archs" =
        std.contract.any_of [ String, Array String ],
      "properties.tool.properties.cibuildwheel.properties.before-all" =
        std.contract.any_of [ String, Array String ],
      "properties.tool.properties.cibuildwheel.properties.before-build" =
        std.contract.any_of [ String, Array String ],
      "properties.tool.properties.cibuildwheel.properties.before-test" =
        std.contract.any_of [ String, Array String ],
      "properties.tool.properties.cibuildwheel.properties.build-frontend" =
        js2n.OneOf
            [
              std.contract.Sequence
                [
                  std.enum.TagOrString,
                  [| '"default", '"build[uv]", 'build, 'pip |]
                ],
              js2n.string.Matches "^pip; ?args:",
              js2n.string.Matches "^build; ?args:",
              js2n.string.Matches "^build\\[uv\\]; ?args:",
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        args = js2n.array.ArrayOf String,
                        name =
                          std.contract.Sequence
                              [
                                std.enum.TagOrString,
                                [| '"build[uv]", 'build, 'pip |]
                              ],
                      },
                  required = { name = true, },
                }
            ],
      "properties.tool.properties.cibuildwheel.properties.build-verbosity" =
        std.contract.Sequence
            [
              std.number.Integer,
              js2n.number.Maximum 3,
              js2n.number.Minimum (-3)
            ],
      "properties.tool.properties.cibuildwheel.properties.config-settings" =
        std.contract.any_of
            [
              String,
              std.contract.Sequence
                [
                  { _ | std.contract.any_of [ String, Array String ] },
                  js2n.record.FieldsMatch ".+"
                ]
            ],
      "properties.tool.properties.cibuildwheel.properties.container-engine" =
        js2n.OneOf
            [
              std.contract.Sequence
                [ std.enum.TagOrString, [| 'podman, 'docker |] ],
              js2n.string.Matches "^docker; ?(create_args|disable_host_mount):",
              js2n.string.Matches "^podman; ?(create_args|disable_host_mount):",
              js2n.record.Record
                {
                  additional = 'None,
                  patterns = {},
                  properties =
                    {
                        create-args = js2n.array.ArrayOf String,
                        disable-host-mount = Bool,
                        name =
                          std.contract.Sequence
                              [ std.enum.TagOrString, [| 'podman, 'docker |] ],
                      },
                  required = { name = true, },
                }
            ],
      "properties.tool.properties.cibuildwheel.properties.dependency-versions" =
        String,
      "properties.tool.properties.cibuildwheel.properties.environment" =
        std.contract.any_of
            [
              String,
              std.contract.Sequence
                [ { _ | String }, js2n.record.FieldsMatch ".+" ]
            ],
      "properties.tool.properties.cibuildwheel.properties.environment-pass" =
        std.contract.any_of [ String, Array String ],
      "properties.tool.properties.cibuildwheel.properties.manylinux-aarch64-image" =
        String,
      "properties.tool.properties.cibuildwheel.properties.manylinux-armv7l-image" =
        String,
      "properties.tool.properties.cibuildwheel.properties.manylinux-i686-image" =
        String,
      "properties.tool.properties.cibuildwheel.properties.manylinux-ppc64le-image" =
        String,
      "properties.tool.properties.cibuildwheel.properties.manylinux-pypy_aarch64-image" =
        String,
      "properties.tool.properties.cibuildwheel.properties.manylinux-pypy_i686-image" =
        String,
      "properties.tool.properties.cibuildwheel.properties.manylinux-pypy_x86_64-image" =
        String,
      "properties.tool.properties.cibuildwheel.properties.manylinux-s390x-image" =
        String,
      "properties.tool.properties.cibuildwheel.properties.manylinux-x86_64-image" =
        String,
      "properties.tool.properties.cibuildwheel.properties.musllinux-aarch64-image" =
        String,
      "properties.tool.properties.cibuildwheel.properties.musllinux-armv7l-image" =
        String,
      "properties.tool.properties.cibuildwheel.properties.musllinux-i686-image" =
        String,
      "properties.tool.properties.cibuildwheel.properties.musllinux-ppc64le-image" =
        String,
      "properties.tool.properties.cibuildwheel.properties.musllinux-s390x-image" =
        String,
      "properties.tool.properties.cibuildwheel.properties.musllinux-x86_64-image" =
        String,
      "properties.tool.properties.cibuildwheel.properties.repair-wheel-command" =
        std.contract.any_of [ String, Array String ],
      "properties.tool.properties.cibuildwheel.properties.test-command" =
        std.contract.any_of [ String, Array String ],
      "properties.tool.properties.cibuildwheel.properties.test-extras" =
        std.contract.any_of [ String, Array String ],
      "properties.tool.properties.cibuildwheel.properties.test-groups" =
        std.contract.any_of [ String, Array String ],
      "properties.tool.properties.cibuildwheel.properties.test-requires" =
        std.contract.any_of [ String, Array String ],
    }
    in
  {
      tool
        | {
          cibuildwheel
            | {
              archs
                | std.contract.any_of [ String, Array String ]
                | doc "Change the architectures built on your machine by default."
                | optional,
              before-all
                | std.contract.any_of [ String, Array String ]
                | doc "Execute a shell command on the build system before any wheels are built."
                | optional,
              before-build
                | std.contract.any_of [ String, Array String ]
                | doc "Execute a shell command preparing each wheel's build."
                | optional,
              before-test
                | std.contract.any_of [ String, Array String ]
                | doc "Execute a shell command before testing each wheel."
                | optional,
              build
                | std.contract.any_of [ String, Array String ]
                | doc "Choose the Python versions to build."
                | optional,
              build-frontend
                | js2n.OneOf
                  [
                    std.contract.Sequence
                      [
                        std.enum.TagOrString,
                        [| '"default", '"build[uv]", 'build, 'pip |]
                      ],
                    js2n.string.Matches "^pip; ?args:",
                    js2n.string.Matches "^build; ?args:",
                    js2n.string.Matches "^build\\[uv\\]; ?args:",
                    js2n.record.Record
                      {
                        additional = 'None,
                        patterns = {},
                        properties =
                          {
                              args = js2n.array.ArrayOf String,
                              name =
                                std.contract.Sequence
                                    [
                                      std.enum.TagOrString,
                                      [| '"build[uv]", 'build, 'pip |]
                                    ],
                            },
                        required = { name = true, },
                      }
                  ]
                | doc "Set the tool to use to build, either \"pip\" (default for now), \"build\", or \"build[uv]\""
                | optional,
              build-verbosity
                | std.number.Integer
                | js2n.number.Maximum 3
                | js2n.number.Minimum (-3)
                | doc "Increase/decrease the output of pip wheel."
                | optional,
              config-settings
                | std.contract.any_of
                  [
                    String,
                    std.contract.Sequence
                      [
                        { _ | std.contract.any_of [ String, Array String ] },
                        js2n.record.FieldsMatch ".+"
                      ]
                  ]
                | doc "Specify config-settings for the build backend."
                | optional,
              container-engine
                | js2n.OneOf
                  [
                    std.contract.Sequence
                      [ std.enum.TagOrString, [| 'podman, 'docker |] ],
                    js2n.string.Matches
                      "^docker; ?(create_args|disable_host_mount):",
                    js2n.string.Matches
                      "^podman; ?(create_args|disable_host_mount):",
                    js2n.record.Record
                      {
                        additional = 'None,
                        patterns = {},
                        properties =
                          {
                              create-args = js2n.array.ArrayOf String,
                              disable-host-mount = Bool,
                              name =
                                std.contract.Sequence
                                    [
                                      std.enum.TagOrString,
                                      [| 'podman, 'docker |]
                                    ],
                            },
                        required = { name = true, },
                      }
                  ]
                | optional,
              dependency-versions
                | String
                | doc "Specify how cibuildwheel controls the versions of the tools it uses"
                | optional,
              enable
                | js2n.OneOf
                  [
                    std.contract.any_of
                      [
                        js2n.Null,
                        Bool,
                        { _ | Dyn },
                        Array Dyn,
                        Number,
                        String
                      ],
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
                | doc "Enable or disable certain builds."
                | optional,
              environment
                | std.contract.any_of
                  [
                    String,
                    std.contract.Sequence
                      [ { _ | String }, js2n.record.FieldsMatch ".+" ]
                  ]
                | doc "Set environment variables needed during the build."
                | optional,
              environment-pass
                | std.contract.any_of [ String, Array String ]
                | doc "Set environment variables on the host to pass-through to the container during the build."
                | optional,
              free-threaded-support
                | Bool
                | doc "The project supports free-threaded builds of Python (PEP703)"
                | optional,
              linux
                | {
                  archs
                    | refs."properties.tool.properties.cibuildwheel.properties.archs"
                    | optional,
                  before-all
                    | refs."properties.tool.properties.cibuildwheel.properties.before-all"
                    | optional,
                  before-build
                    | refs."properties.tool.properties.cibuildwheel.properties.before-build"
                    | optional,
                  before-test
                    | refs."properties.tool.properties.cibuildwheel.properties.before-test"
                    | optional,
                  build-frontend
                    | refs."properties.tool.properties.cibuildwheel.properties.build-frontend"
                    | optional,
                  build-verbosity
                    | refs."properties.tool.properties.cibuildwheel.properties.build-verbosity"
                    | Number
                    | optional,
                  config-settings
                    | refs."properties.tool.properties.cibuildwheel.properties.config-settings"
                    | optional,
                  container-engine
                    | refs."properties.tool.properties.cibuildwheel.properties.container-engine"
                    | optional,
                  environment
                    | refs."properties.tool.properties.cibuildwheel.properties.environment"
                    | optional,
                  environment-pass
                    | refs."properties.tool.properties.cibuildwheel.properties.environment-pass"
                    | optional,
                  manylinux-aarch64-image
                    | refs."properties.tool.properties.cibuildwheel.properties.manylinux-aarch64-image"
                    | optional,
                  manylinux-armv7l-image
                    | refs."properties.tool.properties.cibuildwheel.properties.manylinux-armv7l-image"
                    | optional,
                  manylinux-i686-image
                    | refs."properties.tool.properties.cibuildwheel.properties.manylinux-i686-image"
                    | optional,
                  manylinux-ppc64le-image
                    | refs."properties.tool.properties.cibuildwheel.properties.manylinux-ppc64le-image"
                    | optional,
                  manylinux-pypy_aarch64-image
                    | refs."properties.tool.properties.cibuildwheel.properties.manylinux-pypy_aarch64-image"
                    | optional,
                  manylinux-pypy_i686-image
                    | refs."properties.tool.properties.cibuildwheel.properties.manylinux-pypy_i686-image"
                    | optional,
                  manylinux-pypy_x86_64-image
                    | refs."properties.tool.properties.cibuildwheel.properties.manylinux-pypy_x86_64-image"
                    | optional,
                  manylinux-s390x-image
                    | refs."properties.tool.properties.cibuildwheel.properties.manylinux-s390x-image"
                    | optional,
                  manylinux-x86_64-image
                    | refs."properties.tool.properties.cibuildwheel.properties.manylinux-x86_64-image"
                    | optional,
                  musllinux-aarch64-image
                    | refs."properties.tool.properties.cibuildwheel.properties.musllinux-aarch64-image"
                    | optional,
                  musllinux-armv7l-image
                    | refs."properties.tool.properties.cibuildwheel.properties.musllinux-armv7l-image"
                    | optional,
                  musllinux-i686-image
                    | refs."properties.tool.properties.cibuildwheel.properties.musllinux-i686-image"
                    | optional,
                  musllinux-ppc64le-image
                    | refs."properties.tool.properties.cibuildwheel.properties.musllinux-ppc64le-image"
                    | optional,
                  musllinux-s390x-image
                    | refs."properties.tool.properties.cibuildwheel.properties.musllinux-s390x-image"
                    | optional,
                  musllinux-x86_64-image
                    | refs."properties.tool.properties.cibuildwheel.properties.musllinux-x86_64-image"
                    | optional,
                  repair-wheel-command
                    | std.contract.any_of [ String, Array String ]
                    | doc "Execute a shell command to repair each built wheel."
                    | optional,
                  test-command
                    | refs."properties.tool.properties.cibuildwheel.properties.test-command"
                    | optional,
                  test-extras
                    | refs."properties.tool.properties.cibuildwheel.properties.test-extras"
                    | optional,
                  test-groups
                    | refs."properties.tool.properties.cibuildwheel.properties.test-groups"
                    | optional,
                  test-requires
                    | refs."properties.tool.properties.cibuildwheel.properties.test-requires"
                    | optional,
                }
                | optional,
              macos
                | {
                  archs
                    | refs."properties.tool.properties.cibuildwheel.properties.archs"
                    | optional,
                  before-all
                    | refs."properties.tool.properties.cibuildwheel.properties.before-all"
                    | optional,
                  before-build
                    | refs."properties.tool.properties.cibuildwheel.properties.before-build"
                    | optional,
                  before-test
                    | refs."properties.tool.properties.cibuildwheel.properties.before-test"
                    | optional,
                  build-frontend
                    | refs."properties.tool.properties.cibuildwheel.properties.build-frontend"
                    | optional,
                  build-verbosity
                    | refs."properties.tool.properties.cibuildwheel.properties.build-verbosity"
                    | Number
                    | optional,
                  config-settings
                    | refs."properties.tool.properties.cibuildwheel.properties.config-settings"
                    | optional,
                  dependency-versions
                    | refs."properties.tool.properties.cibuildwheel.properties.dependency-versions"
                    | optional,
                  environment
                    | refs."properties.tool.properties.cibuildwheel.properties.environment"
                    | optional,
                  repair-wheel-command
                    | std.contract.any_of [ String, Array String ]
                    | doc "Execute a shell command to repair each built wheel."
                    | optional,
                  test-command
                    | refs."properties.tool.properties.cibuildwheel.properties.test-command"
                    | optional,
                  test-extras
                    | refs."properties.tool.properties.cibuildwheel.properties.test-extras"
                    | optional,
                  test-groups
                    | refs."properties.tool.properties.cibuildwheel.properties.test-groups"
                    | optional,
                  test-requires
                    | refs."properties.tool.properties.cibuildwheel.properties.test-requires"
                    | optional,
                }
                | optional,
              manylinux-aarch64-image
                | String
                | doc "Specify alternative manylinux / musllinux container images"
                | optional,
              manylinux-armv7l-image
                | String
                | doc "Specify alternative manylinux / musllinux container images"
                | optional,
              manylinux-i686-image
                | String
                | doc "Specify alternative manylinux / musllinux container images"
                | optional,
              manylinux-ppc64le-image
                | String
                | doc "Specify alternative manylinux / musllinux container images"
                | optional,
              manylinux-pypy_aarch64-image
                | String
                | doc "Specify alternative manylinux / musllinux container images"
                | optional,
              manylinux-pypy_i686-image
                | String
                | doc "Specify alternative manylinux / musllinux container images"
                | optional,
              manylinux-pypy_x86_64-image
                | String
                | doc "Specify alternative manylinux / musllinux container images"
                | optional,
              manylinux-s390x-image
                | String
                | doc "Specify alternative manylinux / musllinux container images"
                | optional,
              manylinux-x86_64-image
                | String
                | doc "Specify alternative manylinux / musllinux container images"
                | optional,
              musllinux-aarch64-image
                | String
                | doc "Specify alternative manylinux / musllinux container images"
                | optional,
              musllinux-armv7l-image
                | String
                | doc "Specify alternative manylinux / musllinux container images"
                | optional,
              musllinux-i686-image
                | String
                | doc "Specify alternative manylinux / musllinux container images"
                | optional,
              musllinux-ppc64le-image
                | String
                | doc "Specify alternative manylinux / musllinux container images"
                | optional,
              musllinux-s390x-image
                | String
                | doc "Specify alternative manylinux / musllinux container images"
                | optional,
              musllinux-x86_64-image
                | String
                | doc "Specify alternative manylinux / musllinux container images"
                | optional,
              overrides
                | Array (
                  std.contract.Sequence
                    [
                      js2n.record.MinProperties 2,
                      {
                        before-all
                          | refs."properties.tool.properties.cibuildwheel.properties.before-all"
                          | optional,
                        before-build
                          | refs."properties.tool.properties.cibuildwheel.properties.before-build"
                          | optional,
                        before-test
                          | refs."properties.tool.properties.cibuildwheel.properties.before-test"
                          | optional,
                        build-frontend
                          | refs."properties.tool.properties.cibuildwheel.properties.build-frontend"
                          | optional,
                        build-verbosity
                          | refs."properties.tool.properties.cibuildwheel.properties.build-verbosity"
                          | Number
                          | optional,
                        config-settings
                          | refs."properties.tool.properties.cibuildwheel.properties.config-settings"
                          | optional,
                        container-engine
                          | refs."properties.tool.properties.cibuildwheel.properties.container-engine"
                          | optional,
                        dependency-versions
                          | refs."properties.tool.properties.cibuildwheel.properties.dependency-versions"
                          | optional,
                        environment
                          | refs."properties.tool.properties.cibuildwheel.properties.environment"
                          | optional,
                        environment-pass
                          | refs."properties.tool.properties.cibuildwheel.properties.environment-pass"
                          | optional,
                        inherit
                          | {
                            before-all
                              | std.contract.any_of
                                [
                                  js2n.Null,
                                  Bool,
                                  { _ | Dyn },
                                  Array Dyn,
                                  Number,
                                  String
                                ]
                              | optional,
                            before-build
                              | std.contract.any_of
                                [
                                  js2n.Null,
                                  Bool,
                                  { _ | Dyn },
                                  Array Dyn,
                                  Number,
                                  String
                                ]
                              | optional,
                            before-test
                              | std.contract.any_of
                                [
                                  js2n.Null,
                                  Bool,
                                  { _ | Dyn },
                                  Array Dyn,
                                  Number,
                                  String
                                ]
                              | optional,
                            config-settings
                              | std.contract.any_of
                                [
                                  js2n.Null,
                                  Bool,
                                  { _ | Dyn },
                                  Array Dyn,
                                  Number,
                                  String
                                ]
                              | optional,
                            container-engine
                              | std.contract.any_of
                                [
                                  js2n.Null,
                                  Bool,
                                  { _ | Dyn },
                                  Array Dyn,
                                  Number,
                                  String
                                ]
                              | optional,
                            environment
                              | std.contract.any_of
                                [
                                  js2n.Null,
                                  Bool,
                                  { _ | Dyn },
                                  Array Dyn,
                                  Number,
                                  String
                                ]
                              | optional,
                            environment-pass
                              | std.contract.any_of
                                [
                                  js2n.Null,
                                  Bool,
                                  { _ | Dyn },
                                  Array Dyn,
                                  Number,
                                  String
                                ]
                              | optional,
                            repair-wheel-command
                              | std.contract.any_of
                                [
                                  js2n.Null,
                                  Bool,
                                  { _ | Dyn },
                                  Array Dyn,
                                  Number,
                                  String
                                ]
                              | optional,
                            test-command
                              | std.contract.any_of
                                [
                                  js2n.Null,
                                  Bool,
                                  { _ | Dyn },
                                  Array Dyn,
                                  Number,
                                  String
                                ]
                              | optional,
                            test-extras
                              | std.contract.any_of
                                [
                                  js2n.Null,
                                  Bool,
                                  { _ | Dyn },
                                  Array Dyn,
                                  Number,
                                  String
                                ]
                              | optional,
                            test-requires
                              | std.contract.any_of
                                [
                                  js2n.Null,
                                  Bool,
                                  { _ | Dyn },
                                  Array Dyn,
                                  Number,
                                  String
                                ]
                              | optional,
                          }
                          | optional,
                        manylinux-aarch64-image
                          | refs."properties.tool.properties.cibuildwheel.properties.manylinux-aarch64-image"
                          | optional,
                        manylinux-armv7l-image
                          | refs."properties.tool.properties.cibuildwheel.properties.manylinux-armv7l-image"
                          | optional,
                        manylinux-i686-image
                          | refs."properties.tool.properties.cibuildwheel.properties.manylinux-i686-image"
                          | optional,
                        manylinux-ppc64le-image
                          | refs."properties.tool.properties.cibuildwheel.properties.manylinux-ppc64le-image"
                          | optional,
                        manylinux-pypy_aarch64-image
                          | refs."properties.tool.properties.cibuildwheel.properties.manylinux-pypy_aarch64-image"
                          | optional,
                        manylinux-pypy_i686-image
                          | refs."properties.tool.properties.cibuildwheel.properties.manylinux-pypy_i686-image"
                          | optional,
                        manylinux-pypy_x86_64-image
                          | refs."properties.tool.properties.cibuildwheel.properties.manylinux-pypy_x86_64-image"
                          | optional,
                        manylinux-s390x-image
                          | refs."properties.tool.properties.cibuildwheel.properties.manylinux-s390x-image"
                          | optional,
                        manylinux-x86_64-image
                          | refs."properties.tool.properties.cibuildwheel.properties.manylinux-x86_64-image"
                          | optional,
                        musllinux-aarch64-image
                          | refs."properties.tool.properties.cibuildwheel.properties.musllinux-aarch64-image"
                          | optional,
                        musllinux-armv7l-image
                          | refs."properties.tool.properties.cibuildwheel.properties.musllinux-armv7l-image"
                          | optional,
                        musllinux-i686-image
                          | refs."properties.tool.properties.cibuildwheel.properties.musllinux-i686-image"
                          | optional,
                        musllinux-ppc64le-image
                          | refs."properties.tool.properties.cibuildwheel.properties.musllinux-ppc64le-image"
                          | optional,
                        musllinux-s390x-image
                          | refs."properties.tool.properties.cibuildwheel.properties.musllinux-s390x-image"
                          | optional,
                        musllinux-x86_64-image
                          | refs."properties.tool.properties.cibuildwheel.properties.musllinux-x86_64-image"
                          | optional,
                        repair-wheel-command
                          | refs."properties.tool.properties.cibuildwheel.properties.repair-wheel-command"
                          | optional,
                        select | std.contract.any_of [ String, Array String ],
                        test-command
                          | refs."properties.tool.properties.cibuildwheel.properties.test-command"
                          | optional,
                        test-extras
                          | refs."properties.tool.properties.cibuildwheel.properties.test-extras"
                          | optional,
                        test-groups
                          | refs."properties.tool.properties.cibuildwheel.properties.test-groups"
                          | optional,
                        test-requires
                          | refs."properties.tool.properties.cibuildwheel.properties.test-requires"
                          | optional,
                      }
                    ]
                )
                | doc "An overrides array"
                | optional,
              pyodide
                | {
                  archs
                    | refs."properties.tool.properties.cibuildwheel.properties.archs"
                    | optional,
                  before-all
                    | refs."properties.tool.properties.cibuildwheel.properties.before-all"
                    | optional,
                  before-build
                    | refs."properties.tool.properties.cibuildwheel.properties.before-build"
                    | optional,
                  before-test
                    | refs."properties.tool.properties.cibuildwheel.properties.before-test"
                    | optional,
                  build-frontend
                    | refs."properties.tool.properties.cibuildwheel.properties.build-frontend"
                    | optional,
                  build-verbosity
                    | refs."properties.tool.properties.cibuildwheel.properties.build-verbosity"
                    | Number
                    | optional,
                  config-settings
                    | refs."properties.tool.properties.cibuildwheel.properties.config-settings"
                    | optional,
                  dependency-versions
                    | refs."properties.tool.properties.cibuildwheel.properties.dependency-versions"
                    | optional,
                  environment
                    | refs."properties.tool.properties.cibuildwheel.properties.environment"
                    | optional,
                  repair-wheel-command
                    | refs."properties.tool.properties.cibuildwheel.properties.repair-wheel-command"
                    | optional,
                  test-command
                    | refs."properties.tool.properties.cibuildwheel.properties.test-command"
                    | optional,
                  test-extras
                    | refs."properties.tool.properties.cibuildwheel.properties.test-extras"
                    | optional,
                  test-groups
                    | refs."properties.tool.properties.cibuildwheel.properties.test-groups"
                    | optional,
                  test-requires
                    | refs."properties.tool.properties.cibuildwheel.properties.test-requires"
                    | optional,
                }
                | optional,
              repair-wheel-command
                | std.contract.any_of [ String, Array String ]
                | doc "Execute a shell command to repair each built wheel."
                | optional,
              skip
                | std.contract.any_of [ String, Array String ]
                | doc "Choose the Python versions to skip."
                | optional,
              test-command
                | std.contract.any_of [ String, Array String ]
                | doc "Execute a shell command to test each built wheel."
                | optional,
              test-extras
                | std.contract.any_of [ String, Array String ]
                | doc "Install your wheel for testing using `extras_require`"
                | optional,
              test-groups
                | std.contract.any_of [ String, Array String ]
                | doc "Install extra groups when testing"
                | optional,
              test-requires
                | std.contract.any_of [ String, Array String ]
                | doc "Install Python dependencies before running the tests"
                | optional,
              test-skip
                | std.contract.any_of [ String, Array String ]
                | doc "Skip running tests on some builds."
                | optional,
              windows
                | {
                  archs
                    | refs."properties.tool.properties.cibuildwheel.properties.archs"
                    | optional,
                  before-all
                    | refs."properties.tool.properties.cibuildwheel.properties.before-all"
                    | optional,
                  before-build
                    | refs."properties.tool.properties.cibuildwheel.properties.before-build"
                    | optional,
                  before-test
                    | refs."properties.tool.properties.cibuildwheel.properties.before-test"
                    | optional,
                  build-frontend
                    | refs."properties.tool.properties.cibuildwheel.properties.build-frontend"
                    | optional,
                  build-verbosity
                    | refs."properties.tool.properties.cibuildwheel.properties.build-verbosity"
                    | Number
                    | optional,
                  config-settings
                    | refs."properties.tool.properties.cibuildwheel.properties.config-settings"
                    | optional,
                  dependency-versions
                    | refs."properties.tool.properties.cibuildwheel.properties.dependency-versions"
                    | optional,
                  environment
                    | refs."properties.tool.properties.cibuildwheel.properties.environment"
                    | optional,
                  repair-wheel-command
                    | refs."properties.tool.properties.cibuildwheel.properties.repair-wheel-command"
                    | optional,
                  test-command
                    | refs."properties.tool.properties.cibuildwheel.properties.test-command"
                    | optional,
                  test-extras
                    | refs."properties.tool.properties.cibuildwheel.properties.test-extras"
                    | optional,
                  test-groups
                    | refs."properties.tool.properties.cibuildwheel.properties.test-groups"
                    | optional,
                  test-requires
                    | refs."properties.tool.properties.cibuildwheel.properties.test-requires"
                    | optional,
                }
                | optional,
            }
            | doc "cibuildwheel's settings."
            | optional,
        }
        | optional,
    }