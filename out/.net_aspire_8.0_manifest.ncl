# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.args" = Array String,
      "definitions.bindMounts" =
        Array
            {
              readOnly
                | Bool
                | doc "Flag indicating whether the mount is read-only.",
              source
                | String
                | doc "The source path on the host which is mounted into the container.",
              target
                | String
                | doc "The target within the container where the volume is mounted.",
            },
      "definitions.bindings" =
        {
            _ | {
              external
                | Bool
                | doc "A flag indicating whether this binding is exposed externally when deployed."
                | optional,
              port
                | Number
                | doc "The port that the workload (e.g. container) is exposed as to other resources and externally."
                | optional,
              protocol
                | std.enum.TagOrString
                | [| 'udp, 'tcp |]
                | doc "The protocol used for this binding (only 'tcp' or 'udp' are valid).",
              scheme
                | std.enum.TagOrString
                | [| 'udp, 'tcp, 'https, 'http |]
                | doc "The scheme used in URIs for this binding.",
              targetPort
                | Number
                | doc "The port that the workload (e.g. container) is listening on."
                | optional,
              transport
                | std.enum.TagOrString
                | [| 'tcp, 'http2, 'http |]
                | doc "Additional information describing the transport (e.g. HTTP/2).",
            }
          },
      "definitions.build" =
        {
            args
              | { _ | String }
              | doc "A list of build arguments which are used during container build."
              | optional,
            context
              | String
              | doc "The path to the context directory for the container build. Can be relative of absolute. If relative it is relative to the location of the manifest file.",
            dockerfile
              | String
              | doc "The path to the Dockerfile. Can be relative or absolute. If relative it is relative to the manifest file.",
            secrets
              | {
                _ | std.contract.Sequence
                  [
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
                                properties =
                                  { type = js2n.Const "env", value = String, },
                                required = { type = true, value = true, },
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
                                properties =
                                  {
                                      source = String,
                                      type = js2n.Const "file",
                                    },
                                required = { source = true, type = true, },
                              },
                            Array Dyn
                          ]
                      ],
                    js2n.record.Required [ "type" ]
                  ]
              }
              | doc "A list of build arguments which are used during container build."
              | optional,
          },
      "definitions.buildArgs" = { _ | String },
      "definitions.connectionString" = String,
      "definitions.env" = { _ | String },
      "definitions.resource.azure.bicep.v0" =
        {
            connectionString
              | refs."definitions.connectionString"
              | String
              | optional,
            params
              | {
                _ | std.contract.any_of
                  [ Bool, { _ | Dyn }, Array Dyn, Number, String ]
              }
              | doc "A list of parameters which are passed to Azure deployment."
              | optional,
            path
              | String
              | doc "Path to the Bicep file to be used for deployment.",
            type | std.contract.Equal "azure.bicep.v0" | optional,
          },
      "definitions.resource.azure.bicep.v1" =
        std.contract.Sequence
            [
              refs."definitions.resource.azure.bicep.v0",
              {
                scope
                  | {
                    resourceGroup
                      | String
                      | doc "The name of the resource group to deploy the resource to."
                      | optional,
                    ..
                  }
                  | optional,
                type | std.contract.Equal "azure.bicep.v1" | optional,
                ..
              }
            ],
      "definitions.value" = String,
      "definitions.volumes" =
        Array
            {
              name | String | doc "The name of the volume.",
              readOnly
                | Bool
                | doc "Flag indicating whether the mount is read-only.",
              target
                | String
                | doc "The target within the container where the volume is mounted.",
            },
    }
    in
  {
      resources
        | {
          _ | std.contract.Sequence
            [
              js2n.OneOf
                [
                  js2n.record.Record
                    {
                      additional = 'None,
                      patterns = {},
                      properties =
                        {
                            bindings = refs."definitions.bindings",
                            buildArgs = refs."definitions.buildArgs",
                            context = String,
                            env = refs."definitions.env",
                            path = String,
                            type = js2n.Const "dockerfile.v0",
                          },
                      required = { context = true, path = true, type = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'None,
                      patterns = {},
                      properties =
                        {
                            args = refs."definitions.args",
                            bindMounts = refs."definitions.bindMounts",
                            bindings = refs."definitions.bindings",
                            build = js2n.Never,
                            connectionString =
                              refs."definitions.connectionString",
                            entrypoint = String,
                            env = refs."definitions.env",
                            image = String,
                            type = js2n.Const "container.v0",
                            volumes = refs."definitions.volumes",
                          },
                      required = { image = true, type = true, },
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
                              js2n.record.Required [ "build", "type" ],
                              Array Dyn
                            ],
                          std.contract.any_of
                            [
                              js2n.Null,
                              Bool,
                              Number,
                              String,
                              js2n.record.Required [ "image", "type" ],
                              Array Dyn
                            ]
                        ],
                      js2n.record.Record
                        {
                          additional = 'None,
                          patterns = {},
                          properties =
                            {
                                args = refs."definitions.args",
                                bindMounts = refs."definitions.bindMounts",
                                bindings = refs."definitions.bindings",
                                build = refs."definitions.build",
                                connectionString =
                                  refs."definitions.connectionString",
                                deployment =
                                  js2n.OneOf
                                      [
                                        refs."definitions.resource.azure.bicep.v0",
                                        std.contract.Sequence
                                          [
                                            refs."definitions.resource.azure.bicep.v1",
                                            { _ | Dyn }
                                          ]
                                      ],
                                entrypoint = String,
                                env = refs."definitions.env",
                                image = String,
                                type = js2n.Const "container.v1",
                                volumes = refs."definitions.volumes",
                              },
                          required = {},
                        }
                    ],
                  js2n.record.Record
                    {
                      additional = 'None,
                      patterns = {},
                      properties =
                        {
                            args = refs."definitions.args",
                            bindings = refs."definitions.bindings",
                            env = refs."definitions.env",
                            path = String,
                            type = js2n.Const "project.v0",
                          },
                      required = { path = true, type = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'None,
                      patterns = {},
                      properties =
                        {
                            args = refs."definitions.args",
                            bindings = refs."definitions.bindings",
                            deployment =
                              js2n.OneOf
                                  [
                                    refs."definitions.resource.azure.bicep.v0",
                                    std.contract.Sequence
                                      [
                                        refs."definitions.resource.azure.bicep.v1",
                                        { _ | Dyn }
                                      ]
                                  ],
                            env = refs."definitions.env",
                            path = String,
                            type = js2n.Const "project.v1",
                          },
                      required = { path = true, type = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'None,
                      patterns = {},
                      properties =
                        {
                            args = refs."definitions.args",
                            bindings = refs."definitions.bindings",
                            command = String,
                            env = refs."definitions.env",
                            type = js2n.Const "executable.v0",
                            workingDirectory = String,
                          },
                      required =
                        {
                            command = true,
                            type = true,
                            workingDirectory = true,
                          },
                    },
                  js2n.record.Record
                    {
                      additional = 'None,
                      patterns = {},
                      properties =
                        {
                            connectionString =
                              refs."definitions.connectionString",
                            type = js2n.Const "value.v0",
                          },
                      required = { connectionString = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'None,
                      patterns = {},
                      properties =
                        {
                            connectionString =
                              refs."definitions.connectionString",
                            inputs =
                              js2n.record.Record
                                  {
                                    additional =
                                      'Some
                                          (js2n.record.Record
                                            {
                                              additional = 'None,
                                              patterns = {},
                                              properties =
                                                {
                                                    "default" =
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
                                                                    js2n.record.Record
                                                                      {
                                                                        additional =
                                                                          'Some
                                                                              Dyn,
                                                                        patterns =
                                                                          {},
                                                                        properties =
                                                                          {
                                                                              additionalProperties =
                                                                                js2n.Never,
                                                                              generate =
                                                                                js2n.record.Record
                                                                                    {
                                                                                      additional =
                                                                                        'Some
                                                                                            Dyn,
                                                                                      patterns =
                                                                                        {},
                                                                                      properties =
                                                                                        {
                                                                                            lower =
                                                                                              Bool,
                                                                                            minLength =
                                                                                              Number,
                                                                                            minLower =
                                                                                              Number,
                                                                                            minNumeric =
                                                                                              Number,
                                                                                            minSpecial =
                                                                                              Number,
                                                                                            minUpper =
                                                                                              Number,
                                                                                            numeric =
                                                                                              Bool,
                                                                                            special =
                                                                                              Bool,
                                                                                            upper =
                                                                                              Bool,
                                                                                          },
                                                                                      required =
                                                                                        {
                                                                                            minLength =
                                                                                              true,
                                                                                          },
                                                                                    },
                                                                            },
                                                                        required =
                                                                          {
                                                                              generate =
                                                                                true,
                                                                            },
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
                                                                        additional =
                                                                          'Some
                                                                              Dyn,
                                                                        patterns =
                                                                          {},
                                                                        properties =
                                                                          {
                                                                              value =
                                                                                String,
                                                                            },
                                                                        required =
                                                                          {
                                                                              value =
                                                                                true,
                                                                            },
                                                                      },
                                                                    Array Dyn
                                                                  ]
                                                              ],
                                                            { _ | Dyn }
                                                          ],
                                                    secret = Bool,
                                                    type =
                                                      std.contract.Sequence
                                                          [
                                                            std.enum.TagOrString,
                                                            [| 'string |]
                                                          ],
                                                  },
                                              required = { type = true, },
                                            }),
                                    patterns = {},
                                    properties = {},
                                    required = {},
                                  },
                            type = js2n.Const "parameter.v0",
                            value = refs."definitions.value",
                          },
                      required = { inputs = true, value = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'None,
                      patterns = {},
                      properties =
                        {
                            dapr =
                              js2n.record.Record
                                  {
                                    additional = 'None,
                                    patterns = {},
                                    properties =
                                      {
                                          appId = String,
                                          application = String,
                                          components =
                                            js2n.array.ArrayOf String,
                                        },
                                    required =
                                      {
                                          appId = true,
                                          application = true,
                                          components = true,
                                        },
                                  },
                            type = js2n.Const "dapr.v0",
                          },
                      required = { dapr = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'None,
                      patterns = {},
                      properties =
                        {
                            daprComponent =
                              js2n.record.Record
                                  {
                                    additional = 'None,
                                    patterns = {},
                                    properties = { type = String, },
                                    required = {},
                                  },
                            type = js2n.Const "dapr.component.v0",
                          },
                      required = { daprComponent = true, },
                    },
                  refs."definitions.resource.azure.bicep.v0",
                  std.contract.Sequence
                    [ refs."definitions.resource.azure.bicep.v1", { _ | Dyn } ],
                  js2n.record.Record
                    {
                      additional = 'None,
                      patterns = {},
                      properties =
                        {
                            references =
                              js2n.array.ArrayOf
                                  (js2n.record.Record
                                    {
                                      additional = 'None,
                                      patterns = {},
                                      properties =
                                        { target-resource = String, },
                                      required = {},
                                    }),
                            stack-name = String,
                            type = js2n.Const "aws.cloudformation.stack.v0",
                          },
                      required = { stack-name = true, type = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'None,
                      patterns = {},
                      properties =
                        {
                            references =
                              js2n.array.ArrayOf
                                  (js2n.record.Record
                                    {
                                      additional = 'None,
                                      patterns = {},
                                      properties =
                                        { target-resource = String, },
                                      required = {},
                                    }),
                            stack-name = String,
                            template-path = String,
                            type = js2n.Const "aws.cloudformation.template.v0",
                          },
                      required =
                        {
                            stack-name = true,
                            template-path = true,
                            type = true,
                          },
                    },
                  std.contract.Sequence
                    [
                      std.contract.not
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
                                        std.contract.Sequence
                                            [
                                              std.enum.TagOrString,
                                              [|
                                                '"dapr.v0",
                                                '"dapr.component.v0",
                                                '"aws.cloudformation.stack.v0",
                                                '"aws.cloudformation.template.v0",
                                                '"azure.bicep.v1",
                                                '"azure.bicep.v0",
                                                '"executable.v0",
                                                '"value.v0",
                                                '"project.v1",
                                                '"project.v0",
                                                '"dockerfile.v0",
                                                '"container.v1",
                                                '"container.v0",
                                                '"parameter.v0"
                                              |]
                                            ],
                                    },
                                required = {},
                              },
                            Array Dyn
                          ]),
                      js2n.record.Record
                        {
                          additional = 'Some Dyn,
                          patterns = {},
                          properties = { type = String, },
                          required = { type = true, },
                        }
                    ]
                ],
              { type | String, .. }
            ]
        }
        | doc "Contains the set of resources deployable as part of this manifest. Each property is a distinct resource.",
      ..
    }