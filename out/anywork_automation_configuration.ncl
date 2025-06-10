# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.buildId" = Number,
      "definitions.disable" = Bool,
      "definitions.generateId" = Number,
      "definitions.version" =
        std.contract.any_of
            [
              js2n.Null,
              Bool,
              Number,
              js2n.string.Matches
                "^[\\^~]?(0|[1-9]\\d*)\\.(0|[1-9]\\d*)\\.(0|[1-9]\\d*)(?:-((?:0|[1-9]\\d*|\\d*[a-zA-Z-][0-9a-zA-Z-]*)(?:\\.(?:0|[1-9]\\d*|\\d*[a-zA-Z-][0-9a-zA-Z-]*))*))?(?:\\+([0-9a-zA-Z-]+(?:\\.[0-9a-zA-Z-]+)*))?$",
              { _ | Dyn },
              Array Dyn
            ],
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
                  properties = { ctype = js2n.Const "swagger-codegen", },
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
              {
                swagger-codegen
                  | {
                    schemas
                      | Array
                        {
                          actions
                            | js2n.array.UniqueItems
                            | Array (
                              std.contract.any_of
                                [
                                  js2n.record.Record
                                    {
                                      additional = 'None,
                                      patterns = {},
                                      properties =
                                        {
                                            disable =
                                              refs."definitions.disable",
                                            id = Number,
                                            sourceUrl =
                                              js2n.string.Matches
                                                  "http[s]?:\\/\\/.*\\/swagger\\.json",
                                            type = js2n.Const "download",
                                          },
                                      required =
                                        {
                                            id = true,
                                            sourceUrl = true,
                                            type = true,
                                          },
                                    },
                                  js2n.record.Record
                                    {
                                      additional = 'Some js2n.Always,
                                      patterns = {},
                                      properties =
                                        {
                                            disable =
                                              refs."definitions.disable",
                                            downloadId = Number,
                                            id = Number,
                                            ngVersion =
                                              refs."definitions.version",
                                            type = js2n.Const "generate",
                                          },
                                      required =
                                        {
                                            downloadId = true,
                                            id = true,
                                            ngVersion = true,
                                            type = true,
                                          },
                                    },
                                  js2n.record.Record
                                    {
                                      additional = 'None,
                                      patterns = {},
                                      properties =
                                        {
                                            disable =
                                              refs."definitions.disable",
                                            generateId =
                                              refs."definitions.generateId",
                                            type = js2n.Const "correction",
                                          },
                                      required =
                                        { generateId = true, type = true, },
                                    },
                                  js2n.record.Record
                                    {
                                      additional = 'None,
                                      patterns = {},
                                      properties =
                                        {
                                            disable =
                                              refs."definitions.disable",
                                            generateId =
                                              refs."definitions.generateId",
                                            id = Number,
                                            type = js2n.Const "build",
                                            typescriptVersion =
                                              refs."definitions.version",
                                          },
                                      required =
                                        {
                                            generateId = true,
                                            id = true,
                                            type = true,
                                            typescriptVersion = true,
                                          },
                                    },
                                  js2n.record.Record
                                    {
                                      additional = 'None,
                                      patterns = {},
                                      properties =
                                        {
                                            buildId =
                                              refs."definitions.buildId",
                                            disable =
                                              refs."definitions.disable",
                                            id = Number,
                                            registryUrl =
                                              js2n.string.Matches
                                                  "http[s]?://.*",
                                            token = String,
                                            type = js2n.Const "publish",
                                          },
                                      required =
                                        {
                                            id = true,
                                            registryUrl = true,
                                            token = true,
                                            type = true,
                                          },
                                    },
                                  js2n.record.Record
                                    {
                                      additional = 'None,
                                      patterns = {},
                                      properties =
                                        {
                                            disable =
                                              refs."definitions.disable",
                                            publishId = Number,
                                            targetPath = String,
                                            type = js2n.Const "install",
                                          },
                                      required =
                                        {
                                            publishId = true,
                                            targetPath = true,
                                            type = true,
                                          },
                                    }
                                ]
                            )
                            | doc "Determines the actions should be applied over this schema.",
                          disable
                            | Bool
                            | doc "Disables all actions over this schema."
                            | optional,
                          name
                            | js2n.string.Matches "[a-zA-Z]+"
                            | doc "Name of schema. This will be used to generate codes, only `[a-zA-Z]+` is accepted.",
                        }
                      | doc "List of schemas (microservices) to generate it's libraries.",
                  }
                  | doc "swagger-codegen Configuration",
                ..
              },
              Array Dyn
            ]) js2n.Always,
        {
          ctype
            | String
            | doc "type of configuration, means who will use this configuration.",
          cversion
            | std.number.Integer
            | doc "Version of configuration. The reader will parse configuration based on this.",
          ..
        }
      ]