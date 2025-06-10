# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  Array (
      js2n.OneOf
        [
          js2n.record.Record
            {
              additional = 'None,
              patterns = {},
              properties =
                {
                    description = String,
                    plugins =
                      js2n.record.Record
                          {
                            additional = 'Some Dyn,
                            patterns = { ".*" = String, },
                            properties = {},
                            required = {},
                          },
                    type = js2n.Const "project",
                    version =
                      js2n.string.Matches
                          "^([0-9]+)\\.([0-9]+)\\.([0-9]+)(?:-([0-9A-Za-z-]+(?:\\.[0-9A-Za-z-]+)*))?(?:\\+[0-9A-Za-z-]+)?$",
                  },
              required = { type = true, },
            },
          js2n.record.Record
            {
              additional = 'Some Dyn,
              patterns = {},
              properties =
                {
                    dependsOn =
                      std.contract.Sequence
                          [ js2n.array.UniqueItems, js2n.array.ArrayOf String ],
                    name = js2n.string.Matches "^[\\w-]+$",
                    type = js2n.Const "xcode-tools",
                  },
              required = { type = true, },
            },
          js2n.record.Record
            {
              additional = 'None,
              patterns = {},
              properties =
                {
                    declarationsOnly = Bool,
                    dependsOn =
                      std.contract.Sequence
                          [ js2n.array.UniqueItems, js2n.array.ArrayOf String ],
                    name = js2n.string.Matches "^[\\w-]+$",
                    path = String,
                    paths = js2n.array.ArrayOf String,
                    prepend = Bool,
                    type = js2n.Const "path",
                  },
              required = { type = true, },
            },
          js2n.record.Record
            {
              additional = 'None,
              patterns = {},
              properties =
                {
                    alias = js2n.string.Matches "^[^ 	\n/\\$`=|&;()<>'\"]*$",
                    dependsOn =
                      std.contract.Sequence
                          [ js2n.array.UniqueItems, js2n.array.ArrayOf String ],
                    name = js2n.string.Matches "^[\\w-]+$",
                    type = js2n.Const "alias",
                    value = String,
                  },
              required = { alias = true, type = true, },
            },
          js2n.record.Record
            {
              additional = 'None,
              patterns = {},
              properties =
                {
                    casks = js2n.array.ArrayOf String,
                    dependsOn =
                      std.contract.Sequence
                          [ js2n.array.UniqueItems, js2n.array.ArrayOf String ],
                    directory = String,
                    formulae = js2n.array.ArrayOf String,
                    name = js2n.string.Matches "^[\\w-]+$",
                    onlyPlanUserInstalled = Bool,
                    skipAlreadyInstalledCasks = Bool,
                    taps = js2n.array.ArrayOf String,
                    type = js2n.Const "homebrew",
                  },
              required = { type = true, },
            },
          js2n.record.Record
            {
              additional = 'None,
              patterns = {},
              properties =
                {
                    dependsOn =
                      std.contract.Sequence
                          [ js2n.array.UniqueItems, js2n.array.ArrayOf String ],
                    global = String,
                    name = js2n.string.Matches "^[\\w-]+$",
                    pythonVersions = js2n.array.ArrayOf String,
                    type = js2n.Const "pyenv",
                  },
              required = { type = true, },
            },
          js2n.record.Record
            {
              additional = 'None,
              patterns = {},
              properties =
                {
                    dependsOn =
                      std.contract.Sequence
                          [ js2n.array.UniqueItems, js2n.array.ArrayOf String ],
                    name = js2n.string.Matches "^[\\w-]+$",
                    type = js2n.Const "git-lfs",
                  },
              required = { type = true, },
            },
          js2n.record.Record
            {
              additional = 'None,
              patterns = {},
              properties =
                {
                    dependsOn =
                      std.contract.Sequence
                          [ js2n.array.UniqueItems, js2n.array.ArrayOf String ],
                    name = js2n.string.Matches "^[\\w-]+$",
                    type = js2n.Const "aws-cli",
                  },
              required = { type = true, },
            },
          js2n.record.Record
            {
              additional = 'None,
              patterns = {},
              properties =
                {
                    awsAccessKeyId = String,
                    awsSecretAccessKey = String,
                    csvCredentials = String,
                    dependsOn =
                      std.contract.Sequence
                          [ js2n.array.UniqueItems, js2n.array.ArrayOf String ],
                    metadataServiceNumAttempts = String,
                    metadataServiceTimeout = String,
                    name = js2n.string.Matches "^[\\w-]+$",
                    output = String,
                    profile = String,
                    region = String,
                    type = js2n.Const "aws-profile",
                  },
              required = { type = true, },
            },
          js2n.record.Record
            {
              additional = 'None,
              patterns = {},
              properties =
                {
                    dependsOn =
                      std.contract.Sequence
                          [ js2n.array.UniqueItems, js2n.array.ArrayOf String ],
                    directory = String,
                    name = js2n.string.Matches "^[\\w-]+$",
                    type = js2n.Const "terraform",
                    version = String,
                  },
              required = { type = true, },
            },
          js2n.record.Record
            {
              additional = 'None,
              patterns = {},
              properties =
                {
                    dependsOn =
                      std.contract.Sequence
                          [ js2n.array.UniqueItems, js2n.array.ArrayOf String ],
                    global = String,
                    name = js2n.string.Matches "^[\\w-]+$",
                    nodeVersions = js2n.array.ArrayOf String,
                    type = js2n.Const "nvm",
                  },
              required = { type = true, },
            },
          js2n.record.Record
            {
              additional = 'None,
              patterns = {},
              properties =
                {
                    add = js2n.array.ArrayOf String,
                    dependsOn =
                      std.contract.Sequence
                          [ js2n.array.UniqueItems, js2n.array.ArrayOf String ],
                    global = String,
                    name = js2n.string.Matches "^[\\w-]+$",
                    type = js2n.Const "jenv",
                  },
              required = { type = true, },
            },
          js2n.record.Record
            {
              additional = 'None,
              patterns = {},
              properties =
                {
                    dependsOn =
                      std.contract.Sequence
                          [ js2n.array.UniqueItems, js2n.array.ArrayOf String ],
                    name = js2n.string.Matches "^[\\w-]+$",
                    type = js2n.Const "pgcli",
                  },
              required = { type = true, },
            },
          js2n.record.Record
            {
              additional = 'None,
              patterns = {},
              properties =
                {
                    dependsOn =
                      std.contract.Sequence
                          [ js2n.array.UniqueItems, js2n.array.ArrayOf String ],
                    directory = String,
                    name = js2n.string.Matches "^[\\w-]+$",
                    type = js2n.Const "vscode",
                  },
              required = { type = true, },
            },
          js2n.record.Record
            {
              additional = 'None,
              patterns = {},
              properties =
                {
                    autoVerifySSH = Bool,
                    dependsOn =
                      std.contract.Sequence
                          [ js2n.array.UniqueItems, js2n.array.ArrayOf String ],
                    directory = String,
                    name = js2n.string.Matches "^[\\w-]+$",
                    parentDirectory = String,
                    repository = String,
                    type = js2n.Const "git-repository",
                  },
              required = { type = true, },
            },
          js2n.record.Record
            {
              additional = 'None,
              patterns = {},
              properties =
                {
                    dependsOn =
                      std.contract.Sequence
                          [ js2n.array.UniqueItems, js2n.array.ArrayOf String ],
                    directory = String,
                    name = js2n.string.Matches "^[\\w-]+$",
                    type = js2n.Const "android-studio",
                    version = String,
                  },
              required = { type = true, },
            },
          js2n.record.Record
            {
              additional = 'None,
              patterns = {},
              properties =
                {
                    dependsOn =
                      std.contract.Sequence
                          [ js2n.array.UniqueItems, js2n.array.ArrayOf String ],
                    name = js2n.string.Matches "^[\\w-]+$",
                    plugins = js2n.array.ArrayOf String,
                    type = js2n.Const "asdf",
                  },
              required = { type = true, },
            },
          js2n.record.Record
            {
              additional = 'None,
              patterns = {},
              properties =
                {
                    dependsOn =
                      std.contract.Sequence
                          [ js2n.array.UniqueItems, js2n.array.ArrayOf String ],
                    gitUrl = String,
                    name = js2n.string.Matches "^[\\w-]+$",
                    plugin = String,
                    type = js2n.Const "asdf-plugin",
                    versions = js2n.array.ArrayOf String,
                  },
              required = { plugin = true, type = true, },
            },
          js2n.record.Record
            {
              additional = 'None,
              patterns = {},
              properties =
                {
                    dependsOn =
                      std.contract.Sequence
                          [ js2n.array.UniqueItems, js2n.array.ArrayOf String ],
                    name = js2n.string.Matches "^[\\w-]+$",
                    plugin = String,
                    type = js2n.Const "asdf-global",
                    version = String,
                  },
              required = { plugin = true, type = true, version = true, },
            },
          js2n.record.Record
            {
              additional = 'None,
              patterns = {},
              properties =
                {
                    dependsOn =
                      std.contract.Sequence
                          [ js2n.array.UniqueItems, js2n.array.ArrayOf String ],
                    directories = js2n.array.ArrayOf String,
                    directory = String,
                    name = js2n.string.Matches "^[\\w-]+$",
                    plugin = String,
                    type = js2n.Const "asdf-local",
                    version = String,
                  },
              required = { plugin = true, type = true, version = true, },
            },
          js2n.record.Record
            {
              additional = 'None,
              patterns = {},
              properties =
                {
                    dependsOn =
                      std.contract.Sequence
                          [ js2n.array.UniqueItems, js2n.array.ArrayOf String ],
                    directory = String,
                    name = js2n.string.Matches "^[\\w-]+$",
                    plugin = String,
                    type = js2n.Const "asdf-install",
                    versions = js2n.array.ArrayOf String,
                  },
              required = { type = true, },
            },
          js2n.record.Record
            {
              additional = 'None,
              patterns = {},
              properties =
                {
                    bits = Number,
                    comment = String,
                    dependsOn =
                      std.contract.Sequence
                          [ js2n.array.UniqueItems, js2n.array.ArrayOf String ],
                    fileName = String,
                    folder = String,
                    keyType =
                      std.contract.Sequence
                          [
                            std.enum.TagOrString,
                            [| 'rsa, 'ed25519-sk, 'ed25519, 'ecdsa-sk, 'ecdsa |]
                          ],
                    name = js2n.string.Matches "^[\\w-]+$",
                    passphrase = String,
                    type = js2n.Const "ssh-key",
                  },
              required = { passphrase = true, type = true, },
            },
          js2n.record.Record
            {
              additional = 'None,
              patterns = {},
              properties =
                {
                    dependsOn =
                      std.contract.Sequence
                          [ js2n.array.UniqueItems, js2n.array.ArrayOf String ],
                    hosts =
                      js2n.array.ArrayOf
                          (js2n.record.Record
                            {
                              additional = 'Some Dyn,
                              patterns = {},
                              properties =
                                {
                                    AddKeysToAgent = Bool,
                                    Compression = Bool,
                                    Host = String,
                                    IdentityFile = String,
                                    IgnoreUnknown = String,
                                    LogLevel = String,
                                    Match = String,
                                    PasswordAuthentication = Bool,
                                    Port = Number,
                                    PreferredAuthentications = String,
                                    UseKeychain = Bool,
                                    User = String,
                                  },
                              required = {},
                            }),
                    name = js2n.string.Matches "^[\\w-]+$",
                    type = js2n.Const "ssh-config",
                  },
              required = { hosts = true, type = true, },
            },
          js2n.record.Record
            {
              additional = 'None,
              patterns = {},
              properties =
                {
                    appleUseKeychain = Bool,
                    dependsOn =
                      std.contract.Sequence
                          [ js2n.array.UniqueItems, js2n.array.ArrayOf String ],
                    name = js2n.string.Matches "^[\\w-]+$",
                    path = String,
                    type = js2n.Const "ssh-add",
                  },
              required = { path = true, type = true, },
            },
          js2n.record.Record
            {
              additional = 'None,
              patterns = {},
              properties =
                {
                    action = String,
                    condition = String,
                    cwd = String,
                    dependsOn =
                      std.contract.Sequence
                          [ js2n.array.UniqueItems, js2n.array.ArrayOf String ],
                    name = js2n.string.Matches "^[\\w-]+$",
                    type = js2n.Const "action",
                  },
              required = { action = true, type = true, },
            },
          js2n.record.Record
            {
              additional = 'None,
              patterns = {},
              properties =
                {
                    contents = String,
                    dependsOn =
                      std.contract.Sequence
                          [ js2n.array.UniqueItems, js2n.array.ArrayOf String ],
                    name = js2n.string.Matches "^[\\w-]+$",
                    onlyCreate = Bool,
                    path = String,
                    type = js2n.Const "file",
                  },
              required = { contents = true, path = true, type = true, },
            },
          js2n.record.Record
            {
              additional = 'None,
              patterns = {},
              properties =
                {
                    dependsOn =
                      std.contract.Sequence
                          [ js2n.array.UniqueItems, js2n.array.ArrayOf String ],
                    name = js2n.string.Matches "^[\\w-]+$",
                    type = js2n.Const "virtualenv",
                  },
              required = { type = true, },
            },
          js2n.record.Record
            {
              additional = 'None,
              patterns = {},
              properties =
                {
                    automaticallyInstallRequirementsTxt = Bool,
                    cwd = String,
                    dependsOn =
                      std.contract.Sequence
                          [ js2n.array.UniqueItems, js2n.array.ArrayOf String ],
                    dest = String,
                    name = js2n.string.Matches "^[\\w-]+$",
                    noVcsIgnore = Bool,
                    python = String,
                    symlinks = Bool,
                    systemSitePackages = Bool,
                    type = js2n.Const "virtualenv-project",
                  },
              required = { dest = true, type = true, },
            },
          js2n.record.Record
            {
              additional = 'None,
              patterns = {},
              properties =
                {
                    dependsOn =
                      std.contract.Sequence
                          [ js2n.array.UniqueItems, js2n.array.ArrayOf String ],
                    globalEnvNodeVersion = String,
                    name = js2n.string.Matches "^[\\w-]+$",
                    type = js2n.Const "pnpm",
                    version = String,
                  },
              required = { type = true, },
            },
          js2n.record.Record
            {
              additional = 'Some Dyn,
              patterns = {},
              properties =
                {
                    dependsOn =
                      std.contract.Sequence
                          [ js2n.array.UniqueItems, js2n.array.ArrayOf String ],
                    name = js2n.string.Matches "^[\\w-]+$",
                    type = js2n.Const "wait-github-ssh-key",
                  },
              required = { type = true, },
            },
          js2n.record.Record
            {
              additional = 'None,
              patterns = {},
              properties =
                {
                    automaticallyInstallRequirementsTxt = Bool,
                    clear = Bool,
                    copies = Bool,
                    cwd = String,
                    dependsOn =
                      std.contract.Sequence
                          [ js2n.array.UniqueItems, js2n.array.ArrayOf String ],
                    envDir = String,
                    name = js2n.string.Matches "^[\\w-]+$",
                    prompt = String,
                    symlinks = Bool,
                    systemSitePackages = Bool,
                    type = js2n.Const "venv-project",
                    upgrade = Bool,
                    upgradeDeps = Bool,
                    withoutPip = Bool,
                  },
              required = { envDir = true, type = true, },
            },
          js2n.record.Record
            {
              additional = 'None,
              patterns = {},
              properties =
                {
                    dependsOn =
                      std.contract.Sequence
                          [ js2n.array.UniqueItems, js2n.array.ArrayOf String ],
                    install =
                      js2n.array.ArrayOf
                          (std.contract.any_of
                            [
                              String,
                              js2n.record.Record
                                {
                                  additional = 'Some Dyn,
                                  patterns = {},
                                  properties =
                                    { name = String, version = String, },
                                  required = { name = true, },
                                }
                            ]),
                    name = js2n.string.Matches "^[\\w-]+$",
                    type = js2n.Const "pip",
                    virtualEnv = String,
                  },
              required = { install = true, type = true, },
            },
          js2n.record.Record
            {
              additional = 'None,
              patterns = {},
              properties =
                {
                    cwd = String,
                    dependsOn =
                      std.contract.Sequence
                          [ js2n.array.UniqueItems, js2n.array.ArrayOf String ],
                    name = js2n.string.Matches "^[\\w-]+$",
                    requirementFiles = js2n.array.ArrayOf String,
                    type = js2n.Const "pip-sync",
                    virtualEnv = String,
                  },
              required = { requirementFiles = true, type = true, },
            }
        ]
    )