# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.expressionSyntax" =
        js2n.string.Matches "^\\$\\{\\{(.|[\r\n])*\\}\\}$",
      "definitions.outputs" =
        std.contract.Sequence
            [
              {
                _ | {
                  description
                    | String
                    | doc "A string description of the output parameter.",
                }
              },
              js2n.record.FieldsMatch "^[_a-zA-Z][a-zA-Z0-9_-]*$"
            ],
      "definitions.outputs-composite" =
        std.contract.Sequence
            [
              {
                _ | {
                  description
                    | String
                    | doc "A string description of the output parameter.",
                  value
                    | String
                    | doc "The value that the output parameter will be mapped to. You can set this to a string or an expression with context. For example, you can use the steps context to set the value of an output to the output value of a step.",
                }
              },
              js2n.record.FieldsMatch "^[_a-zA-Z][a-zA-Z0-9_-]*$"
            ],
      "definitions.post-if" = String,
      "definitions.pre-if" = String,
      "definitions.runs-composite" =
        {
            steps
              | Array (
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
                            js2n.record.Required [ "run", "shell" ],
                            Array Dyn
                          ],
                        std.contract.any_of
                          [
                            js2n.Null,
                            Bool,
                            Number,
                            String,
                            js2n.record.Required [ "uses" ],
                            Array Dyn
                          ]
                      ],
                    {
                      continue-on-error
                        | std.contract.any_of
                          [
                            Bool,
                            std.contract.Sequence
                              [ refs."definitions.expressionSyntax", String ]
                          ]
                        | doc "Prevents a job from failing when a step fails. Set to true to allow a job to pass when this step fails."
                        | optional,
                      env
                        | std.contract.any_of
                          [
                            {
                              _ | std.contract.any_of [ Bool, Number, String ]
                            },
                            std.contract.Sequence
                              [
                                refs."definitions.stringContainingExpressionSyntax",
                                String
                              ]
                          ]
                        | doc "Sets a map of environment variables for only that step."
                        | optional,
                      id
                        | String
                        | doc "A unique identifier for the step. You can use the `id` to reference the step in contexts."
                        | optional,
                      "if"
                        | String
                        | doc m%"
                          You can use the if conditional to prevent a step from running unless a condition is met. You can use any supported context and expression to create a conditional.
                          Expressions in an if conditional do not require the ${{ }} syntax. For more information, see https://help.github.com/en/articles/contexts-and-expression-syntax-for-github-actions.
                        "%
                        | optional,
                      name
                        | String
                        | doc "The name of the composite run step."
                        | optional,
                      run
                        | String
                        | doc "The command you want to run. This can be inline or a script in your action repository."
                        | optional,
                      shell
                        | std.contract.any_of
                          [
                            String,
                            std.contract.Sequence
                              [
                                std.enum.TagOrString,
                                [|
                                  'powershell,
                                  'cmd,
                                  'sh,
                                  'python,
                                  'pwsh,
                                  'bash
                                |]
                              ]
                          ]
                        | doc "The shell where you want to run the command."
                        | optional,
                      uses
                        | String
                        | doc "Selects an action to run as part of a step in your job."
                        | optional,
                      with
                        | { _ | Dyn }
                        | doc "A map of the input parameters defined by the action. Each input parameter is a key/value pair. Input parameters are set as environment variables. The variable is prefixed with INPUT_ and converted to upper case."
                        | optional,
                      working-directory
                        | String
                        | doc "Specifies the working directory where the command is run."
                        | optional,
                    }
                  ]
              )
              | doc "The run steps that you plan to run in this action.",
            using
              | std.contract.Equal "composite"
              | doc "To use a composite run steps action, set this to 'composite'.",
          },
      "definitions.runs-docker" =
        {
            args
              | Array String
              | doc m%"
                An array of strings that define the inputs for a Docker container. Inputs can include hardcoded strings. GitHub passes the `args` to the container's `ENTRYPOINT` when the container starts up.
                The `args` are used in place of the `CMD` instruction in a `Dockerfile`. If you use `CMD` in your `Dockerfile`, use the guidelines ordered by preference:
                - Document required arguments in the action's README and omit them from the `CMD` instruction.
                - Use defaults that allow using the action without specifying any `args`.
                - If the action exposes a `--help` flag, or something similar, use that to make your action self-documenting.
              "%
              | optional,
            entrypoint
              | String
              | doc "Overrides the Docker `ENTRYPOINT` in the `Dockerfile`, or sets it if one wasn't already specified. Use `entrypoint` when the `Dockerfile` does not specify an `ENTRYPOINT` or you want to override the `ENTRYPOINT` instruction. If you omit `entrypoint`, the commands you specify in the Docker `ENTRYPOINT` instruction will execute. The Docker `ENTRYPOINT instruction has a *shell* form and *exec* form. The Docker `ENTRYPOINT` documentation recommends using the *exec* form of the `ENTRYPOINT` instruction."
              | optional,
            env
              | std.contract.any_of
                [
                  { _ | std.contract.any_of [ Bool, Number, String ] },
                  std.contract.Sequence
                    [
                      refs."definitions.stringContainingExpressionSyntax",
                      String
                    ]
                ]
              | doc "Specifies a key/value map of environment variables to set in the container environment."
              | optional,
            image
              | String
              | doc "The Docker image to use as the container to run the action. The value can be the Docker base image name, a local `Dockerfile` in your repository, or a public image in Docker Hub or another registry. To reference a `Dockerfile` local to your repository, use a path relative to your action metadata file. The `docker` application will execute this file.",
            post-entrypoint
              | String
              | doc "Allows you to run a cleanup script once the `runs.entrypoint` action has completed. GitHub Actions uses `docker run` to launch this action. Because GitHub Actions runs the script inside a new container using the same base image, the runtime state is different from the main `entrypoint` container. You can access any state you need in either the workspace, `HOME`, or as a `STATE_` variable. The `post-entrypoint:` action always runs by default but you can override this using `post-if`."
              | optional,
            post-if | refs."definitions.post-if" | String | optional,
            pre-entrypoint
              | String
              | doc "Allows you to run a script before the `entrypoint` action begins. For example, you can use `pre-entrypoint:` to run a prerequisite setup script. GitHub Actions uses `docker run` to launch this action, and runs the script inside a new container that uses the same base image. This means that the runtime state is different from the main `entrypoint` container, and any states you require must be accessed in either the workspace, `HOME`, or as a `STATE_` variable. The `pre-entrypoint:` action always runs by default but you can override this using `pre-if`."
              | optional,
            pre-if | refs."definitions.pre-if" | String | optional,
            using
              | std.contract.Equal "docker"
              | doc "You must set this value to 'docker'.",
          },
      "definitions.runs-javascript" =
        {
            main
              | String
              | doc "The file that contains your action code. The application specified in `using` executes this file.",
            post
              | String
              | doc "Allows you to run a script at the end of a job, once the `main:` action has completed. For example, you can use `post:` to terminate certain processes or remove unneeded files. The application specified with the `using` syntax will execute this file. The `post:` action always runs by default but you can override this using `post-if`."
              | optional,
            post-if | refs."definitions.post-if" | String | optional,
            pre
              | String
              | doc "Allows you to run a script at the start of a job, before the `main:` action begins. For example, you can use `pre:` to run a prerequisite setup script. The application specified with the `using` syntax will execute this file. The `pre:` action always runs by default but you can override this using `pre-if`."
              | optional,
            pre-if | refs."definitions.pre-if" | String | optional,
            using
              | std.enum.TagOrString
              | [| 'node20, 'node16, 'node12 |]
              | doc "The application used to execute the code specified in `main`.",
          },
      "definitions.stringContainingExpressionSyntax" =
        js2n.string.Matches "^.*\\$\\{\\{(.|[\r\n])*\\}\\}.*$",
    }
    in
  std.contract.Sequence
      [
        js2n.IfThenElse
          (std.contract.any_of
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
                        runs =
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
                                      { using = js2n.Const "composite", },
                                    required = {},
                                  },
                                Array Dyn
                              ],
                      },
                  required = {},
                },
              Array Dyn
            ])
          (std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              { outputs | refs."definitions.outputs-composite" | optional, .. },
              Array Dyn
            ])
          (std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              { outputs | refs."definitions.outputs" | optional, .. },
              Array Dyn
            ]),
        {
          author | String | doc "The name of the action's author." | optional,
          branding
            | {
              color
                | std.enum.TagOrString
                | [|
                  'gray-dark,
                  'purple,
                  'red,
                  'orange,
                  'green,
                  'blue,
                  'yellow,
                  'black,
                  'white
                |]
                | doc "The background color of the badge."
                | optional,
              icon
                | std.enum.TagOrString
                | [|
                  'zoom-out,
                  'zoom-in,
                  'zap,
                  'zap-off,
                  'x,
                  'x-square,
                  'x-circle,
                  'wind,
                  'wifi,
                  'wifi-off,
                  'watch,
                  'volume,
                  'volume-x,
                  'volume-2,
                  'volume-1,
                  'voicemail,
                  'video,
                  'video-off,
                  'users,
                  'user,
                  'user-x,
                  'user-plus,
                  'user-minus,
                  'user-check,
                  'upload,
                  'upload-cloud,
                  'unlock,
                  'underline,
                  'umbrella,
                  'type,
                  'tv,
                  'truck,
                  'triangle,
                  'trending-up,
                  'trending-down,
                  'trash,
                  'trash-2,
                  'toggle-right,
                  'toggle-left,
                  'thumbs-up,
                  'thumbs-down,
                  'thermometer,
                  'terminal,
                  'target,
                  'tag,
                  'tablet,
                  'table,
                  'sunset,
                  'sunrise,
                  'sun,
                  'stop-circle,
                  'star,
                  'square,
                  'speaker,
                  'smartphone,
                  'sliders,
                  'slash,
                  'skip-forward,
                  'skip-back,
                  'sidebar,
                  'shuffle,
                  'shopping-cart,
                  'shopping-bag,
                  'shield,
                  'shield-off,
                  'share,
                  'share-2,
                  'settings,
                  'server,
                  'send,
                  'search,
                  'scissors,
                  'save,
                  'rss,
                  'rotate-cw,
                  'rotate-ccw,
                  'rewind,
                  'repeat,
                  'refresh-cw,
                  'refresh-ccw,
                  'radio,
                  'printer,
                  'power,
                  'pocket,
                  'plus,
                  'plus-square,
                  'plus-circle,
                  'play,
                  'play-circle,
                  'pie-chart,
                  'phone,
                  'phone-outgoing,
                  'phone-off,
                  'phone-missed,
                  'phone-incoming,
                  'phone-forwarded,
                  'phone-call,
                  'percent,
                  'pause,
                  'pause-circle,
                  'paperclip,
                  'package,
                  'octagon,
                  'navigation,
                  'navigation-2,
                  'music,
                  'move,
                  'more-vertical,
                  'more-horizontal,
                  'moon,
                  'monitor,
                  'minus,
                  'minus-square,
                  'minus-circle,
                  'minimize,
                  'minimize-2,
                  'mic,
                  'mic-off,
                  'message-square,
                  'message-circle,
                  'menu,
                  'maximize,
                  'maximize-2,
                  'map,
                  'map-pin,
                  'mail,
                  'log-out,
                  'log-in,
                  'lock,
                  'loader,
                  'list,
                  'link,
                  'link-2,
                  'life-buoy,
                  'layout,
                  'layers,
                  'italic,
                  'info,
                  'inbox,
                  'image,
                  'home,
                  'help-circle,
                  'heart,
                  'headphones,
                  'hash,
                  'hard-drive,
                  'grid,
                  'globe,
                  'git-pull-request,
                  'git-merge,
                  'git-commit,
                  'git-branch,
                  'gift,
                  'folder,
                  'folder-plus,
                  'folder-minus,
                  'flag,
                  'filter,
                  'film,
                  'file,
                  'file-text,
                  'file-plus,
                  'file-minus,
                  'feather,
                  'fast-forward,
                  'eye,
                  'eye-off,
                  'external-link,
                  'edit,
                  'edit-3,
                  'edit-2,
                  'droplet,
                  'download,
                  'download-cloud,
                  'dollar-sign,
                  'disc,
                  'delete,
                  'database,
                  'crosshair,
                  'crop,
                  'credit-card,
                  'cpu,
                  'corner-up-right,
                  'corner-up-left,
                  'corner-right-up,
                  'corner-right-down,
                  'corner-left-up,
                  'corner-left-down,
                  'corner-down-right,
                  'corner-down-left,
                  'copy,
                  'compass,
                  'command,
                  'code,
                  'cloud,
                  'cloud-snow,
                  'cloud-rain,
                  'cloud-off,
                  'cloud-lightning,
                  'cloud-drizzle,
                  'clock,
                  'clipboard,
                  'circle,
                  'chevrons-up,
                  'chevrons-right,
                  'chevrons-left,
                  'chevrons-down,
                  'chevron-up,
                  'chevron-right,
                  'chevron-left,
                  'chevron-down,
                  'check,
                  'check-square,
                  'check-circle,
                  'cast,
                  'camera,
                  'camera-off,
                  'calendar,
                  'briefcase,
                  'box,
                  'bookmark,
                  'book,
                  'book-open,
                  'bold,
                  'bluetooth,
                  'bell,
                  'bell-off,
                  'battery,
                  'battery-charging,
                  'bar-chart,
                  'bar-chart-2,
                  'award,
                  'at-sign,
                  'arrow-up,
                  'arrow-up-right,
                  'arrow-up-left,
                  'arrow-up-circle,
                  'arrow-right,
                  'arrow-right-circle,
                  'arrow-left,
                  'arrow-left-circle,
                  'arrow-down,
                  'arrow-down-right,
                  'arrow-down-left,
                  'arrow-down-circle,
                  'archive,
                  'aperture,
                  'anchor,
                  'align-right,
                  'align-left,
                  'align-justify,
                  'align-center,
                  'alert-triangle,
                  'alert-octagon,
                  'alert-circle,
                  'airplay,
                  'activity
                |]
                | doc "The name of the Feather icon to use."
                | optional,
            }
            | doc "You can use a color and Feather icon to create a badge to personalize and distinguish your action. Badges are shown next to your action name in GitHub Marketplace."
            | optional,
          description | String | doc "A short description of the action.",
          inputs
            | {
              _ | {
                "default"
                  | String
                  | doc "A string representing the default value. The default value is used when an input parameter isn't specified in a workflow file."
                  | optional,
                deprecationMessage
                  | String
                  | doc "A string shown to users using the deprecated input."
                  | optional,
                description
                  | String
                  | doc "A string description of the input parameter.",
                required
                  | Bool
                  | doc "A boolean to indicate whether the action requires the input parameter. Set to `true` when the parameter is required."
                  | optional,
              }
            }
            | js2n.record.FieldsMatch "^[_a-zA-Z][a-zA-Z0-9_-]*$"
            | doc "Input parameters allow you to specify data that the action expects to use during runtime. GitHub stores input parameters as environment variables. Input ids with uppercase letters are converted to lowercase during runtime. We recommended using lowercase input ids."
            | optional,
          name
            | String
            | doc "The name of your action. GitHub displays the `name` in the Actions tab to help visually identify actions in each job.",
          outputs
            | std.contract.any_of
              [ js2n.Null, Bool, Number, String, { _ | Dyn }, Array Dyn ]
            | optional,
          runs
            | js2n.OneOf
              [
                refs."definitions.runs-javascript",
                refs."definitions.runs-composite",
                refs."definitions.runs-docker"
              ],
        }
      ]