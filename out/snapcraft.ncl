# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.apt-deb" =
        {
            architectures
              | js2n.array.MinItems 1
              | js2n.array.UniqueItems
              | Array String
              | optional,
            components
              | js2n.array.MinItems 0
              | js2n.array.UniqueItems
              | Array String
              | optional,
            formats
              | js2n.array.MinItems 1
              | js2n.array.UniqueItems
              | Array (
                std.contract.Sequence
                  [ std.enum.TagOrString, [| 'deb-src, 'deb |] ]
              )
              | doc "deb types to enable.  Defaults to [deb, deb-src]."
              | optional,
            key-id
              | js2n.string.Matches "^[A-Z0-9]{40}$"
              | doc "GPG key identifier / fingerprint. May be used to identify key file in <project>/snap/keys/<key-id>.asc",
            key-server
              | String
              | doc "GPG keyserver to use to fetch GPG <key-id>, e.g. 'keyserver.ubuntu.com'. Defaults to keyserver.ubuntu.com if key is not found in project."
              | optional,
            path
              | String
              | doc "Exact path to repository (relative to URL). Cannot be used with suites or components."
              | optional,
            suites
              | js2n.array.MinItems 1
              | js2n.array.UniqueItems
              | Array String
              | optional,
            type | std.enum.TagOrString | [| 'apt |],
            url
              | String
              | doc "Deb repository URL, e.g. 'http://archive.canonical.com/ubuntu'.",
          },
      "definitions.apt-ppa" =
        {
            ppa
              | String
              | doc "ppa path: e.g. 'canonical-kernel-team/unstable'",
            type | std.enum.TagOrString | [| 'apt |],
          },
      "definitions.build-environment-grammar" =
        std.contract.Sequence
            [
              js2n.array.UniqueItems,
              Array (
                js2n.OneOf
                  [
                    std.contract.Sequence
                      [
                        js2n.record.MaxProperties 1,
                        js2n.record.MinProperties 1,
                        js2n.record.Record
                          {
                            additional = 'Some String,
                            patterns = {},
                            properties = {},
                            required = {},
                          }
                      ],
                    js2n.record.Record
                      {
                        additional = 'None,
                        patterns =
                          {
                              "^on\\s+.+$" =
                                std.contract.Sequence
                                    [ js2n.Always, Array Dyn ],
                            },
                        properties = {},
                        required = {},
                      },
                    js2n.record.Record
                      {
                        additional = 'None,
                        patterns =
                          {
                              "^to\\s+.+$" =
                                std.contract.Sequence
                                    [ js2n.Always, Array Dyn ],
                            },
                        properties = {},
                        required = {},
                      },
                    js2n.record.Record
                      {
                        additional = 'None,
                        patterns = {},
                        properties =
                          {
                              "else" =
                                std.contract.Sequence
                                    [ js2n.Always, Array Dyn ],
                            },
                        required = {},
                      }
                  ]
              )
            ],
      "definitions.environment" =
        { _ | std.contract.any_of [ js2n.string.MinLength 1, Number ] },
      "definitions.grammar-array" =
        std.contract.Sequence
            [
              js2n.array.UniqueItems,
              Array (
                js2n.OneOf
                  [
                    String,
                    js2n.record.Record
                      {
                        additional = 'None,
                        patterns =
                          {
                              "^on\\s+.+$" =
                                std.contract.Sequence
                                    [ js2n.Always, Array Dyn ],
                            },
                        properties = {},
                        required = {},
                      },
                    js2n.record.Record
                      {
                        additional = 'None,
                        patterns =
                          {
                              "^to\\s+.+$" =
                                std.contract.Sequence
                                    [ js2n.Always, Array Dyn ],
                            },
                        properties = {},
                        required = {},
                      },
                    js2n.record.Record
                      {
                        additional = 'None,
                        patterns = {},
                        properties =
                          {
                              try =
                                std.contract.Sequence
                                    [ js2n.Always, Array Dyn ],
                            },
                        required = {},
                      },
                    js2n.record.Record
                      {
                        additional = 'None,
                        patterns = {},
                        properties =
                          {
                              "else" =
                                std.contract.Sequence
                                    [ js2n.Always, Array Dyn ],
                            },
                        required = {},
                      }
                  ]
              )
            ],
      "definitions.grammar-string" =
        std.contract.any_of
            [
              String,
              Array (
                std.contract.Sequence
                  [
                    std.contract.any_of
                      [
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        { _ | Dyn },
                        js2n.array.UniqueItems
                      ],
                    js2n.OneOf
                      [
                        js2n.record.Record
                          {
                            additional = 'None,
                            patterns = { "^on\\s+.+$" = js2n.Always, },
                            properties = {},
                            required = {},
                          },
                        js2n.record.Record
                          {
                            additional = 'None,
                            patterns = { "^to\\s+.+$" = js2n.Always, },
                            properties = {},
                            required = {},
                          },
                        js2n.record.Record
                          {
                            additional = 'None,
                            patterns = {},
                            properties = { try = js2n.Always, },
                            required = {},
                          },
                        js2n.record.Record
                          {
                            additional = 'None,
                            patterns = {},
                            properties = { "else" = js2n.Always, },
                            required = {},
                          },
                        js2n.string.Matches "else fail"
                      ]
                  ]
              )
            ],
      "definitions.system-username-scope" =
        std.contract.Sequence [ std.enum.TagOrString, [| 'shared |] ],
    }
    in
  std.contract.Sequence
      [
        js2n.record.DependentFields
          {
            license-agreement = [ "license" ],
            license-version = [ "license" ],
          },
        std.contract.any_of
          [
            std.contract.Sequence
              [
                std.contract.any_of
                  [
                    js2n.Null,
                    Bool,
                    Number,
                    String,
                    js2n.record.Record
                      {
                        additional = 'Some Dyn,
                        patterns = {},
                        properties =
                          {
                              type =
                                std.contract.Sequence
                                    [
                                      std.enum.TagOrString,
                                      [| 'snapd, 'kernel, 'base |]
                                    ],
                            },
                        required = {},
                      },
                    Array Dyn
                  ],
                std.contract.any_of
                  [
                    js2n.Null,
                    Bool,
                    Number,
                    String,
                    js2n.record.Required [ "type" ],
                    Array Dyn
                  ],
                std.contract.not
                  (std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      js2n.record.Required [ "base" ],
                      Array Dyn
                    ])
              ],
            std.contract.Sequence
              [
                std.contract.any_of
                  [
                    js2n.Null,
                    Bool,
                    Number,
                    String,
                    js2n.record.Record
                      {
                        additional = 'Some Dyn,
                        patterns = {},
                        properties =
                          {
                              type =
                                std.contract.Sequence
                                    [
                                      std.enum.TagOrString,
                                      [| 'gadget, 'app |]
                                    ],
                            },
                        required = {},
                      },
                    Array Dyn
                  ],
                std.contract.any_of
                  [
                    js2n.Null,
                    Bool,
                    Number,
                    String,
                    js2n.record.Required [ "base" ],
                    Array Dyn
                  ]
              ],
            std.contract.Sequence
              [
                js2n.record.Record
                  {
                    additional = 'Some Dyn,
                    patterns = {},
                    properties =
                      {
                          base =
                            std.contract.Sequence
                                [ std.enum.TagOrString, [| 'bare |] ],
                        },
                    required = {},
                  },
                js2n.record.Required [ "build-base" ]
              ]
          ],
        std.contract.any_of
          [
            js2n.record.Required [ "description", "summary", "version" ],
            js2n.record.Required [ "adopt-info" ]
          ],
        {
          adopt-info
            | String
            | doc "name of the part that provides source files that will be parsed to extract snap metadata information"
            | optional,
          apps
            | {
              _ | std.contract.Sequence
                [
                  js2n.record.DependentFields
                    {
                      activates-on = [ "daemon" ],
                      after = [ "daemon" ],
                      before = [ "daemon" ],
                      bus-name = [ "daemon" ],
                      install-mode = [ "daemon" ],
                      post-stop-command = [ "daemon" ],
                      refresh-mode = [ "daemon" ],
                      reload-command = [ "daemon" ],
                      restart-condition = [ "daemon" ],
                      restart-delay = [ "daemon" ],
                      start-timeout = [ "daemon" ],
                      stop-command = [ "daemon" ],
                      stop-mode = [ "daemon" ],
                      stop-timeout = [ "daemon" ],
                      timer = [ "daemon" ],
                      watchdog-timeout = [ "daemon" ],
                    },
                  {
                    activates-on
                      | js2n.array.UniqueItems
                      | Array String
                      | doc "dbus interface slots this service activates on"
                      | optional,
                    adapter
                      | std.enum.TagOrString
                      | [| 'full, 'legacy, 'none |]
                      | doc "What kind of wrapper to generate for the given command"
                      | optional,
                    after
                      | js2n.array.UniqueItems
                      | Array String
                      | doc "List of applications that are ordered to be started after the current one"
                      | optional,
                    aliases
                      | js2n.array.UniqueItems
                      | Array (
                        js2n.string.Matches "^[a-zA-Z0-9][-_.a-zA-Z0-9]*$"
                      )
                      | optional,
                    autostart
                      | js2n.string.Matches "^[A-Za-z0-9. _#:$-]+\\.desktop$"
                      | doc "Name of the desktop file placed by the application in $SNAP_USER_DATA/.config/autostart to indicate that application should be started with the user's desktop session."
                      | optional,
                    before
                      | js2n.array.UniqueItems
                      | Array String
                      | doc "List of applications that are ordered to be started before the current one"
                      | optional,
                    bus-name
                      | js2n.string.Matches "^[A-Za-z0-9/. _#:$-]*$"
                      | doc "D-Bus name this service is reachable as"
                      | optional,
                    command | String | doc "command executed to run the binary",
                    command-chain
                      | Array (js2n.string.Matches "^[A-Za-z0-9/._#:$-]*$")
                      | optional,
                    common-id
                      | String
                      | doc "common identifier across multiple packaging formats"
                      | optional,
                    completer
                      | String
                      | doc "bash completion script relative to the prime directory"
                      | optional,
                    daemon
                      | std.enum.TagOrString
                      | [| 'dbus, 'notify, 'oneshot, 'forking, 'simple |]
                      | doc "signals that the app is a service."
                      | optional,
                    desktop
                      | String
                      | doc "path to a desktop file representing the app, relative to the prime directory"
                      | optional,
                    environment
                      | refs."definitions.environment"
                      | doc "environment entries for the specific app."
                      | optional,
                    extensions
                      | js2n.array.UniqueItems
                      | Array (
                        std.contract.Sequence
                          [
                            std.enum.TagOrString,
                            [|
                              'ros2-humble-desktop,
                              'ros2-humble-ros-core,
                              'ros2-humble-ros-base,
                              'ros2-humble,
                              'ros2-foxy-desktop,
                              'ros2-foxy-ros-core,
                              'ros2-foxy-ros-base,
                              'ros2-foxy,
                              'ros1-noetic-ros-core,
                              'ros1-noetic-ros-base,
                              'ros1-noetic-robot,
                              'ros1-noetic-perception,
                              'ros1-noetic-desktop,
                              'ros1-noetic,
                              'kde-neon-6,
                              'kde-neon,
                              'gnome-3-38,
                              'gnome-3-34,
                              'gnome-3-28,
                              'gnome,
                              'flutter-master,
                              'flutter-dev,
                              'flutter-beta,
                              'flutter-stable,
                              'env-injector
                            |]
                          ]
                      )
                      | optional,
                    install-mode
                      | std.enum.TagOrString
                      | [| 'disable, 'enable |]
                      | optional,
                    passthrough
                      | { _ | Dyn }
                      | doc "properties to be passed into snap.yaml as-is"
                      | optional,
                    plugs | js2n.array.UniqueItems | Array String | optional,
                    post-stop-command
                      | String
                      | doc "command executed after stopping a service"
                      | optional,
                    refresh-mode
                      | std.enum.TagOrString
                      | [| 'ignore-running, 'restart, 'endure |]
                      | doc "controls if the app should be restarted at all"
                      | optional,
                    reload-command
                      | String
                      | doc "Command to use to ask the service to reload its configuration."
                      | optional,
                    restart-condition
                      | std.enum.TagOrString
                      | [|
                        'never,
                        'always,
                        'on-watchdog,
                        'on-abort,
                        'on-abnormal,
                        'on-failure,
                        'on-success
                      |]
                      | optional,
                    restart-delay
                      | js2n.string.Matches "^[0-9]+(ns|us|ms|s|m)*$"
                      | doc "Delay between service restarts - <n>ns | <n>us | <n>ms | <n>s | <n>m. Defaults to unset. See the systemd.service manual on RestartSec for details."
                      | optional,
                    slots | js2n.array.UniqueItems | Array String | optional,
                    sockets
                      | {
                        _ | {
                          listen-stream
                            | std.contract.any_of
                              [
                                std.contract.Sequence
                                  [
                                    std.number.Integer,
                                    js2n.number.Maximum 65535,
                                    js2n.number.Minimum 1
                                  ],
                                String
                              ],
                          socket-mode | std.number.Integer | optional,
                        }
                      }
                      | js2n.record.FieldsMatch "^[a-z][a-z0-9_-]*$"
                      | optional,
                    start-timeout
                      | js2n.string.Matches "^[0-9]+(ns|us|ms|s|m)*$"
                      | doc "Optional time to wait for daemon to start - <n>ns | <n>us | <n>ms | <n>s | <n>m"
                      | optional,
                    stop-command
                      | String
                      | doc "command executed to stop a service"
                      | optional,
                    stop-mode
                      | std.enum.TagOrString
                      | [|
                        'sigint-all,
                        'sigint,
                        'sigusr2-all,
                        'sigusr2,
                        'sigusr1-all,
                        'sigusr1,
                        'sighup-all,
                        'sighup,
                        'sigterm-all,
                        'sigterm
                      |]
                      | doc "controls how the daemon should be stopped"
                      | optional,
                    stop-timeout
                      | js2n.string.Matches "^[0-9]+(ns|us|ms|s|m)*$"
                      | doc "Optional time to wait for daemon to stop - <n>ns | <n>us | <n>ms | <n>s | <n>m"
                      | optional,
                    timer
                      | String
                      | doc "The service is activated by a timer, app must be a daemon. (systemd.time calendar event string)"
                      | optional,
                    watchdog-timeout
                      | js2n.string.Matches "^[0-9]+(ns|us|ms|s|m)*$"
                      | doc "Service watchdog timeout - <n>ns | <n>us | <n>ms | <n>s | <n>m"
                      | optional,
                  }
                ]
            }
            | js2n.record.FieldsMatch "^[a-zA-Z0-9](?:-?[a-zA-Z0-9])*$"
            | optional,
          architectures
            | js2n.array.MinItems 1
            | js2n.array.UniqueItems
            | Array (
              std.contract.any_of
                [
                  String,
                  {
                    build-on
                      | std.contract.any_of
                        [
                          String,
                          std.contract.Sequence
                            [ js2n.array.MinItems 1, js2n.array.UniqueItems ]
                        ],
                    run-on
                      | std.contract.any_of
                        [
                          String,
                          std.contract.Sequence
                            [ js2n.array.MinItems 1, js2n.array.UniqueItems ]
                        ]
                      | optional,
                  }
                ]
            )
            | doc "architectures on which to build, and on which the resulting snap runs"
            | optional,
          assumes
            | js2n.array.MinItems 1
            | js2n.array.UniqueItems
            | js2n.array.Items [ String ] js2n.Always
            | doc "featureset the snap requires in order to work."
            | optional,
          base | String | doc "the base snap to use" | optional,
          build-base
            | String
            | doc "force a build environment based on base to create a snap"
            | optional,
          build-packages
            | refs."definitions.grammar-array"
            | Array Dyn
            | doc "top level build packages."
            | optional,
          compression
            | std.enum.TagOrString
            | [| 'xz, 'lzo |]
            | doc "compression to use for snap archive - default is otherwise determined by 'snap pack'"
            | optional,
          confinement
            | std.enum.TagOrString
            | [| 'strict, 'devmode, 'classic |]
            | doc "the type of confinement supported by the snap"
            | optional,
          contact
            | std.contract.any_of
              [
                std.contract.Sequence
                  [
                    js2n.array.MinItems 1,
                    js2n.array.UniqueItems,
                    js2n.array.Items [ String ] js2n.Always
                  ],
                String
              ]
            | optional,
          description
            | js2n.string.Matches ".+"
            | doc "long description of the package"
            | optional,
          donation
            | std.contract.any_of
              [
                std.contract.Sequence
                  [
                    js2n.array.MinItems 1,
                    js2n.array.UniqueItems,
                    js2n.array.Items [ String ] js2n.Always
                  ],
                String
              ]
            | optional,
          environment
            | refs."definitions.environment"
            | doc "environment entries for the snap as a whole"
            | optional,
          epoch
            | std.contract.any_of
              [ js2n.Null, Bool, Number, String, { _ | Dyn }, Array Dyn ]
            | doc "the snap epoch, used to specify upgrade paths"
            | optional,
          frameworks
            | js2n.array.MinItems 1
            | js2n.array.UniqueItems
            | js2n.array.Items [ String ] js2n.Always
            | optional,
          grade
            | std.enum.TagOrString
            | [| 'devel, 'stable |]
            | doc "the quality grade of the snap"
            | optional,
          hooks
            | {
              _ | {
                command-chain
                  | Array (js2n.string.Matches "^[A-Za-z0-9/._#:$-]*$")
                  | optional,
                environment
                  | refs."definitions.environment"
                  | doc "environment entries for this hook"
                  | optional,
                passthrough
                  | { _ | Dyn }
                  | doc "properties to be passed into snap.yaml as-is"
                  | optional,
                plugs | js2n.array.UniqueItems | Array String | optional,
              }
            }
            | js2n.record.FieldsMatch "^[a-z](?:-?[a-z0-9])*$"
            | optional,
          icon
            | String
            | doc "path to a 512x512 icon representing the package."
            | optional,
          issues
            | std.contract.any_of
              [
                std.contract.Sequence
                  [
                    js2n.array.MinItems 1,
                    js2n.array.UniqueItems,
                    js2n.array.Items [ String ] js2n.Always
                  ],
                String
              ]
            | optional,
          layout
            | { _ | Dyn }
            | doc "layout property to be passed into the snap.yaml as-is"
            | optional,
          license | String | doc "the license the package holds" | optional,
          name
            | js2n.string.MaxLength 40
            | js2n.string.Matches "^[a-z0-9-]*[a-z][a-z0-9-]*$"
            | js2n.string.Matches "^[^-]"
            | js2n.string.Matches "[^-]$"
            | std.contract.not
              (std.contract.any_of
                [
                  js2n.Null,
                  Bool,
                  Number,
                  js2n.string.Matches "--",
                  { _ | Dyn },
                  Array Dyn
                ])
            | doc "name of the snap package",
          package-repositories
            | js2n.array.MinItems 0
            | js2n.array.UniqueItems
            | js2n.array.Items
              [
                js2n.OneOf
                  [ refs."definitions.apt-deb", refs."definitions.apt-ppa" ]
              ] js2n.Always
            | doc "additional repository configuration."
            | optional,
          parts
            | js2n.record.MinProperties 1
            | {
              _ | js2n.Nullable
                (std.contract.Sequence
                  [
                    js2n.record.MinProperties 1,
                    {
                      after | js2n.array.UniqueItems | Array String | optional,
                      build-attributes
                        | js2n.array.UniqueItems
                        | Array (
                          std.contract.Sequence
                            [
                              std.enum.TagOrString,
                              [|
                                'keep-execstack,
                                'debug,
                                'no-install,
                                'no-patchelf,
                                'enable-patchelf,
                                'core22-step-dependencies
                              |]
                            ]
                        )
                        | optional,
                      build-environment
                        | refs."definitions.build-environment-grammar"
                        | Array Dyn
                        | optional,
                      build-packages
                        | refs."definitions.grammar-array"
                        | Array Dyn
                        | optional,
                      build-snaps
                        | refs."definitions.grammar-array"
                        | Array Dyn
                        | optional,
                      disable-parallel | Bool | optional,
                      filesets | { _ | Array Dyn } | optional,
                      organize | { _ | js2n.string.MinLength 1 } | optional,
                      override-build | String | optional,
                      override-prime | String | optional,
                      override-pull | String | optional,
                      override-stage | String | optional,
                      parse-info
                        | js2n.array.UniqueItems
                        | Array String
                        | optional,
                      plugin | String | doc "plugin name",
                      prime | js2n.array.UniqueItems | Array String | optional,
                      source | refs."definitions.grammar-string" | optional,
                      source-branch | String | optional,
                      source-checksum | String | optional,
                      source-commit | String | optional,
                      source-depth | std.number.Integer | optional,
                      source-subdir | String | optional,
                      source-submodules
                        | js2n.array.MinItems 0
                        | js2n.array.UniqueItems
                        | Array String
                        | optional,
                      source-tag | String | optional,
                      source-type
                        | std.enum.TagOrString
                        | [|
                          'local,
                          '"7z",
                          'rpm,
                          'deb,
                          'zip,
                          'tar,
                          'svn,
                          'subversion,
                          'mercurial,
                          'hg,
                          'git,
                          'bzr
                        |]
                        | optional,
                      stage | js2n.array.UniqueItems | Array String | optional,
                      stage-packages
                        | refs."definitions.grammar-array"
                        | Array Dyn
                        | optional,
                      stage-snaps
                        | refs."definitions.grammar-array"
                        | Array Dyn
                        | optional,
                      ..
                    }
                  ])
            }
            | js2n.record.FieldsMatch "^(?!plugins$)[a-z0-9][a-z0-9+-]*$",
          passthrough
            | { _ | Dyn }
            | doc "properties to be passed into snap.yaml as-is"
            | optional,
          plugs | { _ | Dyn } | optional,
          slots | { _ | Dyn } | optional,
          source-code | String | optional,
          summary
            | js2n.string.MaxLength 78
            | doc "one line summary for the package"
            | optional,
          system-usernames
            | {
              snap_aziotdu
                | std.contract.any_of
                  [
                    refs."definitions.system-username-scope",
                    { scope | refs."definitions.system-username-scope", }
                  ]
                | optional,
              snap_aziotedge
                | std.contract.any_of
                  [
                    refs."definitions.system-username-scope",
                    { scope | refs."definitions.system-username-scope", }
                  ]
                | optional,
              snap_daemon
                | std.contract.any_of
                  [
                    refs."definitions.system-username-scope",
                    { scope | refs."definitions.system-username-scope", }
                  ]
                | optional,
              snap_microk8s
                | std.contract.any_of
                  [
                    refs."definitions.system-username-scope",
                    { scope | refs."definitions.system-username-scope", }
                  ]
                | optional,
            }
            | doc "system username"
            | optional,
          title
            | js2n.string.MaxLength 40
            | doc "title for the snap"
            | optional,
          type
            | std.enum.TagOrString
            | [| 'snapd, 'kernel, 'gadget, 'base, 'app |]
            | doc "the snap type, the implicit type is 'app'"
            | optional,
          ua-services
            | js2n.array.MinItems 1
            | js2n.array.UniqueItems
            | js2n.array.Items [ String ] js2n.Always
            | doc "UA services to enable."
            | optional,
          version
            | js2n.string.MaxLength 32
            | js2n.string.Matches
              "^[a-zA-Z0-9](?:[a-zA-Z0-9:.+~-]*[a-zA-Z0-9+~])?$"
            | doc "package version"
            | optional,
          version-script
            | String
            | doc "a script that echoes the version to set."
            | optional,
          website | String | optional,
        }
      ]