# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.content" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                commandLineArgs
                  | String
                  | doc "The arguments to pass to the command."
                  | optional,
                environmentVariables
                  | { _ | String }
                  | doc "Set the environment variables as key/value pairs."
                  | optional,
                launchBrowser
                  | Bool
                  | doc "Set to true if the browser should be launched."
                  | optional,
                launchUrl
                  | String
                  | doc "The relative URL to launch in the browser."
                  | optional,
                name
                  | js2n.string.MinLength 1
                  | doc "The name of the debug profile"
                  | optional,
                sdkVersion
                  | String
                  | doc "Sets the version of the SDK."
                  | optional,
                workingDirectory
                  | String
                  | doc "Sets the working directory of the command."
                  | optional,
                ..
              },
              Array Dyn
            ],
      "definitions.profile" =
        std.contract.Sequence
            [
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
                                { executablePath = js2n.string.MinLength 1, },
                              required = {},
                            },
                          Array Dyn
                        ],
                      std.contract.not
                        (std.contract.any_of
                          [
                            js2n.Null,
                            Bool,
                            Number,
                            String,
                            js2n.record.Required [ "commandName" ],
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
                                { commandName = js2n.string.MinLength 1, },
                              required = {},
                            },
                          Array Dyn
                        ],
                      std.contract.not
                        (std.contract.any_of
                          [
                            js2n.Null,
                            Bool,
                            Number,
                            String,
                            js2n.record.Required [ "executablePath" ],
                            Array Dyn
                          ])
                    ]
                ],
              refs."definitions.content",
              js2n.record.Required [ "name" ]
            ],
    }
    in
  {
      profiles
        | Array (
          std.contract.Sequence [ refs."definitions.profile", { _ | Dyn } ]
        )
        | doc "A list of debug profiles"
        | optional,
      ..
    }