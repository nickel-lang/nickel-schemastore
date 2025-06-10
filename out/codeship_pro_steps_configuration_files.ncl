# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.ExternalStep" =
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
                          { type = js2n.Nullable (js2n.Const "run"), },
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
                    std.contract.Sequence
                      [
                        {
                          image_name | js2n.Null | optional,
                          image_tag | js2n.Null | optional,
                          registry | js2n.Null | optional,
                          steps | js2n.Null | optional,
                          ..
                        },
                        js2n.record.Required [ "command" ]
                      ],
                    Array Dyn
                  ])
                (js2n.IfThenElse
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
                          properties = { type = js2n.Const "push", },
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
                      std.contract.Sequence
                        [
                          {
                            command | js2n.Null | optional,
                            steps | js2n.Null | optional,
                            ..
                          },
                          js2n.record.Required [ "image_name", "registry" ]
                        ],
                      Array Dyn
                    ])
                  (js2n.IfThenElse
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
                                  type =
                                    std.contract.any_of
                                        [
                                          js2n.Const "serial",
                                          js2n.Const "parallel",
                                          js2n.Const "manual"
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
                        std.contract.Sequence
                          [
                            {
                              command | js2n.Null | optional,
                              image_name | js2n.Null | optional,
                              image_tag | js2n.Null | optional,
                              registry | js2n.Null | optional,
                              ..
                            },
                            js2n.record.Required [ "steps" ]
                          ],
                        Array Dyn
                      ]) js2n.Always)),
              {
                command
                  | String
                  | doc "The command to be run in this step. Required with and can only be used with the 'run' type or no specified type"
                  | optional,
                dockercfg_service
                  | String
                  | doc "The name of a service defined in codeship-services.yml that provides the Docker configuration. Optional."
                  | optional,
                encrypted_dockercfg_path
                  | String
                  | doc "The location of a Docker configuration file encrypted by Jet to be used with this step. Optional."
                  | optional,
                exclude
                  | String
                  | doc "A pattern matching tags or branches on which this step should NOT be run. Defaults to empty."
                  | optional,
                image_name
                  | String
                  | doc "The image name this push step should push to. Required with and only used by the push step"
                  | optional,
                image_tag
                  | String
                  | doc "The image tag this push step should push to. See https://docs.cloudbees.com/docs/cloudbees-codeship/latest/pro-builds-and-configuration/steps#_push_steps for details. Only used by the push step"
                  | optional,
                name
                  | String
                  | doc "The name of the step. Can be omitted."
                  | optional,
                on_fail
                  | Array (std.contract.Sequence [ js2n.Always, { _ | Dyn } ])
                  | doc "An optional list of steps to run if this step fails."
                  | optional,
                registry
                  | String
                  | doc "The image registry this push step should push to. For Docker Hub, use https://registry-1.docker.io. Required with and only used by the push step"
                  | optional,
                service
                  | String
                  | doc "The service name defined in codeship-services.yml this step will run on"
                  | optional,
                services
                  | Array String
                  | doc "A list of service names defined in codeship-services.yml that will be used for this step."
                  | optional,
                steps
                  | Array (std.contract.Sequence [ js2n.Always, { _ | Dyn } ])
                  | doc "A list of steps to run within this step or on_fail group. Cannot be used with 'run', 'push', or 'load' steps"
                  | optional,
                tag
                  | String
                  | doc "A pattern matching tags or branches this step and any of its children should be run against. Defaults to always running."
                  | optional,
                type
                  | js2n.Enum
                    [
                      null,
                      "run",
                      "serial",
                      "push",
                      "parallel",
                      "load",
                      "manual"
                    ]
                  | String
                  | doc "The type of the step. If omitted, defaults to 'run'"
                  | optional,
              }
            ],
    }
    in
  Array (std.contract.Sequence [ refs."definitions.ExternalStep", { _ | Dyn } ])