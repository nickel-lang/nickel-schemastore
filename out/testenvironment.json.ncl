# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.config" =
        std.contract.Sequence
            [
              std.contract.any_of
                [
                  js2n.Null,
                  Bool,
                  Number,
                  String,
                  std.contract.Sequence
                    [
                      {
                        localRoot
                          | String
                          | doc "Path on the local machine (either absolute or relative to the solution directory) which is projected into the remote environment. If not specified, this will default to the repo root within the context of a git repo (on VS 17.1 and above). Outside a git repo, this would default to the solution directory."
                          | optional,
                        name
                          | js2n.string.MinLength 1
                          | doc "User-friendly environment name that will appear in the TestExplorer list. It must be unique within a testEnvironments.json file.",
                        ..
                      },
                      js2n.record.Required [ "type" ]
                    ],
                  Array Dyn
                ],
              js2n.OneOf
                [
                  refs."definitions.docker",
                  refs."definitions.wsl",
                  refs."definitions.ssh",
                  refs."definitions.remote"
                ]
            ],
      "definitions.docker" =
        std.contract.Sequence
            [
              std.contract.any_of
                [
                  js2n.Null,
                  Bool,
                  Number,
                  String,
                  {
                    type | std.enum.TagOrString | [| 'docker |] | optional,
                    ..
                  },
                  Array Dyn
                ],
              js2n.OneOf
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
                          properties = { dockerImage = String, },
                          required = { dockerImage = true, },
                        },
                      Array Dyn
                    ],
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
                          properties = { dockerFile = String, },
                          required = { dockerFile = true, },
                        },
                      Array Dyn
                    ]
                ]
            ],
      "definitions.remote" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                remoteUri
                  | String
                  | doc "A uri that specifies the connection to the remote machine. e.g. tcp://hostname:2358",
                type | std.enum.TagOrString | [| 'remote |] | optional,
                ..
              },
              Array Dyn
            ],
      "definitions.ssh" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                remoteUri
                  | String
                  | doc "A uri that specifies the connection to the remote machine. e.g. ssh://user@hostname:22",
                type | std.enum.TagOrString | [| 'ssh |] | optional,
                ..
              },
              Array Dyn
            ],
      "definitions.wsl" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              String,
              {
                type | std.enum.TagOrString | [| 'wsl |] | optional,
                wslDistribution
                  | String
                  | doc "Name of the local WSL distribution in which to run the test environment.",
                ..
              },
              Array Dyn
            ],
    }
    in
  {
      environments | Array refs."definitions.config" | optional,
      version | String | optional,
      ..
    }