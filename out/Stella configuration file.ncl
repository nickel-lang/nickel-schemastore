# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.Script" =
        {
            command
              | std.contract.any_of [ String, Array String ]
              | doc "The command(s) to execute on the terminal. It can be either a single string or a list of strings.",
            name
              | String
              | doc "Name of the script. This name is used in stella run command.",
            shell
              | Bool
              | doc "Whether to execute these commands within a shell.",
            url | String | doc "The optional URL to listen at browser.",
          },
      "definitions.Stella" =
        {
            browser
              | std.enum.TagOrString
              | [| 'safari, 'edge, 'firefox, 'chrome |]
              | doc "The browser to be used.",
            browser_wait_interval
              | Number
              | doc "The interval in milliseconds to wait to refresh browser window after executing command(s) on the terminal.",
            include_only
              | Array String
              | doc "gitignore style include-only patterns.",
            poll_interval
              | Number
              | doc "The interval in milliseconds to check for file changes.",
            scripts
              | Array (
                std.contract.Sequence [ refs."definitions.Script", { _ | Dyn } ]
              )
              | doc "List of user-defined scripts. Similar to npm scripts.",
          },
    }
    in
  refs."definitions.Stella"