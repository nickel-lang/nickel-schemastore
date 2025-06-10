# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.jetbrainsProduct" =
        {
            plugins
              | Array String
              | doc "List of plugins which should be installed for users of this workspace. From the JetBrains Marketplace page, find a page of the required plugin, select 'Versions' tab, click any version to copy pluginId (short name such as org.rust.lang) of the plugin you want to install."
              | optional,
            prebuilds
              | {
                version
                  | std.enum.TagOrString
                  | [| 'both, 'latest, 'stable |]
                  | doc "Whether only stable, latest or both versions should be warmed up. Default is stable only."
                  | optional,
              }
              | doc "Enable warming up of JetBrains backend in prebuilds."
              | optional,
            vmoptions
              | String
              | doc "Configure JVM options, for instance '-Xmx=4096m'."
              | optional,
          },
    }
    in
  {
      additionalRepositories
        | Array
          {
            checkoutLocation
              | String
              | doc "Path to where the repository should be checked out relative to `/workspace`. Defaults to the simple repository name."
              | optional,
            url
              | String
              | doc "The url of the git repository to clone. Supports any context URLs.",
          }
        | doc "List of additional repositories that are part of this project."
        | optional,
      checkoutLocation
        | String
        | doc "Path to where the repository should be checked out relative to `/workspace`. Defaults to the simple repository name."
        | optional,
      coreDump
        | {
          enabled | Bool | optional,
          hardLimit
            | Number
            | doc "the hard limit acts as a ceiling for the soft limit. For more details please check https://man7.org/linux/man-pages/man2/getrlimit.2.html"
            | optional,
          softLimit
            | Number
            | doc "upper limit on the size of the core dump file that will be produced if it receives a core dump signal"
            | optional,
        }
        | doc "Configure the default action of certain signals is to cause a process to terminate and produce a core dump file, a file containing an image of the process's memory at the time of termination. Disabled by default."
        | optional,
      env
        | { _ | String }
        | doc "Environment variables to set on the workspace."
        | optional,
      experimentalNetwork
        | Bool
        | doc "Experimental network configuration in workspaces (deprecated). Enabled by default"
        | optional,
      gitConfig
        | { _ | String }
        | doc "Git config values should be provided in pairs. E.g. `core.autocrlf: input`. See https://git-scm.com/docs/git-config#_values."
        | optional,
      github
        | {
          prebuilds
            | std.contract.any_of
              [
                Bool,
                {
                  addBadge
                    | Bool
                    | doc "Add a Review in Gitpod badge to pull requests. Defaults to true."
                    | optional,
                  addCheck
                    | js2n.Enum [ true, false, "prevent-merge-on-error" ]
                    | doc "Add a commit check to pull requests. Set to 'fail-on-error' if you want broken prebuilds to block merging. Defaults to true."
                    | optional,
                  addLabel
                    | std.contract.any_of [ Bool, String ]
                    | doc "Add a label to a PR when it's prebuilt. Set to true to use the default label (prebuilt-in-gitpod) or set to a string to use a different label name. This is a beta feature and may be unreliable. Defaults to false."
                    | optional,
                  branches
                    | Bool
                    | doc "Enable prebuilds for all branches. Defaults to false."
                    | optional,
                  master
                    | Bool
                    | doc "Enable prebuilds for the default branch (typically master). Defaults to true."
                    | optional,
                  pullRequests
                    | Bool
                    | doc "Enable prebuilds for pull-requests from the original repo. Defaults to true."
                    | optional,
                  pullRequestsFromForks
                    | Bool
                    | doc "Enable prebuilds for pull-requests from any repo (e.g. from forks). Defaults to false."
                    | optional,
                  ..
                }
              ]
            | doc "Set to true to enable workspace prebuilds, false to disable them. Defaults to true. (deprecated)"
            | optional,
        }
        | doc "Configures Gitpod's GitHub app (deprecated)"
        | optional,
      image
        | std.contract.any_of
          [
            String,
            {
              context
                | String
                | doc "Relative path to the context path (optional). Should only be set if you need to copy files into the image."
                | optional,
              file | String | doc "Relative path to a docker file.",
            }
          ]
        | doc "The Docker image to run your workspace in."
        | optional,
      jetbrains
        | {
          clion
            | refs."definitions.jetbrainsProduct"
            | doc "Configure CLion integration"
            | optional,
          goland
            | refs."definitions.jetbrainsProduct"
            | doc "Configure GoLand integration"
            | optional,
          intellij
            | refs."definitions.jetbrainsProduct"
            | doc "Configure IntelliJ integration"
            | optional,
          phpstorm
            | refs."definitions.jetbrainsProduct"
            | doc "Configure PhpStorm integration"
            | optional,
          plugins
            | Array String
            | doc "List of plugins which should be installed for all JetBrains product for users of this workspace. From the JetBrains Marketplace page, find a page of the required plugin, select 'Versions' tab, click any version to copy pluginId (short name such as org.rust.lang) of the plugin you want to install."
            | optional,
          pycharm
            | refs."definitions.jetbrainsProduct"
            | doc "Configure PyCharm integration"
            | optional,
          rider
            | refs."definitions.jetbrainsProduct"
            | doc "Configure Rider integration"
            | optional,
          rubymine
            | refs."definitions.jetbrainsProduct"
            | doc "Configure RubyMine integration"
            | optional,
          rustrover
            | refs."definitions.jetbrainsProduct"
            | doc "Configure RustRover integration"
            | optional,
          webstorm
            | refs."definitions.jetbrainsProduct"
            | doc "Configure WebStorm integration"
            | optional,
        }
        | doc "Configure JetBrains integration"
        | optional,
      mainConfiguration
        | String
        | doc "The main repository, containing the dev environment configuration."
        | optional,
      ports
        | Array
          {
            description
              | String
              | doc "A description to identify what is this port used for."
              | optional,
            name | String | doc "Port name." | optional,
            onOpen
              | std.enum.TagOrString
              | [|
                'ignore-completely,
                'ignore,
                'notify,
                'open-preview,
                'open-browser
              |]
              | doc "What to do when a service on this port was detected. 'notify' (default) will show a notification asking the user what to do. 'open-browser' will open a new browser tab. 'open-preview' will open in the preview on the right of the IDE. 'ignore' will do nothing. 'ignore-completely' will do nothing and prevent port forwarding."
              | optional,
            port
              | std.contract.any_of
                [ Number, js2n.string.Matches "^\\d+[:-]\\d+$" ]
              | doc "The port number (e.g. 1337) or range (e.g. 3000-3999) to expose.",
            protocol
              | std.enum.TagOrString
              | [| 'https, 'http |]
              | doc "The protocol of workspace port."
              | optional,
            visibility
              | std.enum.TagOrString
              | [| 'public, 'private |]
              | doc "Whether the port visibility should be private or public. 'private' (default) will only allow users with workspace access to access the port. 'public' will allow everyone with the port URL to access the port."
              | optional,
          }
        | doc "List of exposed ports."
        | optional,
      tasks
        | Array
          {
            before
              | String
              | doc "A shell command to run before `init` and the main `command`. This command is executed on every start and is expected to terminate. If it fails, the following commands will not be executed."
              | optional,
            command
              | String
              | doc "The main shell command to run after `before` and `init`. This command is executed last on every start and doesn't have to terminate."
              | optional,
            env | { _ | Dyn } | doc "Environment variables to set." | optional,
            init
              | String
              | doc "A shell command to run between `before` and the main `command`. This command is executed only on after initializing a workspace with a fresh clone, but not on restarts and snapshots. This command is expected to terminate. If it fails, the `command` property will not be executed."
              | optional,
            name
              | String
              | doc "Name of the task. Shown on the tab of the opened terminal."
              | optional,
            openIn
              | std.enum.TagOrString
              | [| 'right, 'left, 'main, 'bottom |]
              | doc "The panel/area where to open the terminal. Default is 'bottom' panel."
              | optional,
            openMode
              | std.enum.TagOrString
              | [| 'tab-after, 'tab-before, 'split-right, 'split-left |]
              | doc "The opening mode. Default is 'tab-after'."
              | optional,
            prebuild
              | String
              | doc "A shell command to run after `before`. This command is executed only on during workspace prebuilds. This command is expected to terminate. If it fails, the workspace build fails."
              | optional,
          }
        | doc "List of tasks to run on start. Each task will open a terminal in the IDE."
        | optional,
      vscode
        | {
          extensions
            | Array String
            | doc "List of extensions which should be installed for users of this workspace. The identifier of an extension is always '${publisher}.${name}'. For example: 'vscode.csharp'."
            | optional,
        }
        | doc "Configure VS Code integration"
        | optional,
      workspaceLocation
        | String
        | doc "Path to where the IDE's workspace should be opened. Supports vscode's `*.code-workspace` files."
        | optional,
    }