# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.Add" =
        {
            checksum | js2n.Nullable String | optional,
            chmod
              | std.contract.any_of [ js2n.Null, Number, String ]
              | optional,
            chown
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [ refs."definitions.User", { _ | Dyn } ],
                  js2n.Null,
                  js2n.Null
                ]
              | optional,
            files
              | js2n.Nullable refs."definitions.VecPatch%3CResource%3E"
              | optional,
            link | js2n.Nullable Bool | optional,
            target | js2n.Nullable String | optional,
            ..
          },
      "definitions.AddGitRepo" =
        {
            chmod
              | std.contract.any_of [ js2n.Null, Number, String ]
              | optional,
            chown
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [ refs."definitions.User", { _ | Dyn } ],
                  js2n.Null,
                  js2n.Null
                ]
              | optional,
            exclude
              | js2n.Nullable refs."definitions.VecPatch%3CString%3E"
              | optional,
            keepGitDir | js2n.Nullable Bool | optional,
            link | js2n.Nullable Bool | optional,
            repo | js2n.Nullable String | optional,
            target | js2n.Nullable String | optional,
            ..
          },
      "definitions.Bind" =
        std.contract.any_of
            [
              refs."definitions.FromContext",
              js2n.record.Record
                {
                  additional = 'Some Dyn,
                  patterns = {},
                  properties =
                    {
                        readwrite = js2n.Nullable Bool,
                        source = js2n.Nullable String,
                        target = js2n.Nullable String,
                      },
                  required = {},
                }
            ],
      "definitions.Cache" =
        std.contract.any_of
            [
              refs."definitions.FromContext",
              js2n.record.Record
                {
                  additional = 'Some Dyn,
                  patterns = {},
                  properties =
                    {
                        chmod =
                          std.contract.any_of [ js2n.Null, Number, String ],
                        chown =
                          std.contract.any_of
                              [
                                std.contract.Sequence
                                  [ refs."definitions.User", { _ | Dyn } ],
                                js2n.Null,
                                js2n.Null
                              ],
                        id = js2n.Nullable String,
                        readonly = js2n.Nullable Bool,
                        sharing =
                          std.contract.any_of
                              [
                                std.contract.Sequence
                                  [ refs."definitions.CacheSharing", String ],
                                js2n.Null,
                                js2n.Null
                              ],
                        source = js2n.Nullable String,
                        target = js2n.Nullable String,
                      },
                  required = {},
                }
            ],
      "definitions.CacheSharing" =
        std.contract.Sequence
            [ std.enum.TagOrString, [| 'locked, 'private, 'shared |] ],
      "definitions.Copy" =
        std.contract.any_of
            [
              refs."definitions.FromContext",
              js2n.record.Record
                {
                  additional = 'Some Dyn,
                  patterns = {},
                  properties =
                    {
                        chmod =
                          std.contract.any_of [ js2n.Null, Number, String ],
                        chown =
                          std.contract.any_of
                              [
                                std.contract.Sequence
                                  [ refs."definitions.User", { _ | Dyn } ],
                                js2n.Null,
                                js2n.Null
                              ],
                        exclude =
                          js2n.Nullable refs."definitions.VecPatch%3CString%3E",
                        link = js2n.Nullable Bool,
                        parents = js2n.Nullable Bool,
                        paths =
                          js2n.Nullable refs."definitions.VecPatch%3CString%3E",
                        target = js2n.Nullable String,
                      },
                  required = {},
                }
            ],
      "definitions.CopyContent" =
        {
            chmod
              | std.contract.any_of [ js2n.Null, Number, String ]
              | optional,
            chown
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [ refs."definitions.User", { _ | Dyn } ],
                  js2n.Null,
                  js2n.Null
                ]
              | optional,
            content | js2n.Nullable String | optional,
            link | js2n.Nullable Bool | optional,
            substitute | js2n.Nullable Bool | optional,
            target | js2n.Nullable String | optional,
          },
      "definitions.CopyResourcePatch" =
        std.contract.any_of
            [
              refs."definitions.Copy",
              std.contract.Sequence
                [ refs."definitions.CopyContent", { _ | Dyn } ],
              std.contract.Sequence
                [ refs."definitions.AddGitRepo", { _ | Dyn } ],
              std.contract.Sequence [ refs."definitions.Add", { _ | Dyn } ],
              std.contract.Sequence
                [ refs."definitions.UnknownPatch", { _ | Dyn } ]
            ],
      "definitions.FromContext" =
        js2n.OneOf
            [
              js2n.record.Record
                {
                  additional = 'Some Dyn,
                  patterns = {},
                  properties =
                    {
                        fromImage =
                          refs."definitions.ParsableStruct%3CImageName%3E",
                      },
                  required = { fromImage = true, },
                },
              js2n.record.Record
                {
                  additional = 'Some Dyn,
                  patterns = {},
                  properties = { fromBuilder = String, },
                  required = { fromBuilder = true, },
                },
              js2n.record.Record
                {
                  additional = 'Some Dyn,
                  patterns = {},
                  properties = { fromContext = js2n.Nullable String, },
                  required = { fromContext = true, },
                }
            ],
      "definitions.HashMapDeepPatch%3CString,%20Stage%3E" =
        js2n.record.Record
            {
              additional = 'Some Dyn,
              patterns = { "^.+$" = js2n.Nullable refs."definitions.Stage", },
              properties = {},
              required = {},
            },
      "definitions.HashMapPatch%3CString,%20String%3E" =
        js2n.record.Record
            {
              additional = 'Some Dyn,
              patterns = { "^.+$" = js2n.Nullable String, },
              properties = {},
              required = {},
            },
      "definitions.Healthcheck" =
        {
            cmd | js2n.Nullable String | optional,
            interval | js2n.Nullable String | optional,
            retries
              | js2n.Nullable
                (std.contract.Sequence
                  [ std.number.Integer, js2n.number.Minimum 0 ])
              | optional,
            start | js2n.Nullable String | optional,
            timeout | js2n.Nullable String | optional,
            ..
          },
      "definitions.ImageName" =
        std.contract.Sequence
            [
              js2n.OneOf
                [
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties = { tag = String, },
                      required = { tag = true, },
                    },
                  js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = {},
                      properties = { digest = String, },
                      required = { digest = true, },
                    }
                ],
              {
                host | js2n.Nullable String | optional,
                path | js2n.Nullable String | optional,
                port
                  | js2n.Nullable
                    (std.contract.Sequence
                      [ std.number.Integer, js2n.number.Minimum 0 ])
                  | optional,
                ..
              }
            ],
      "definitions.NestedMapValue_for_String" =
        std.contract.any_of
            [
              String,
              std.contract.Sequence
                [ refs."definitions.NestedMap_for_String", { _ | Dyn } ],
              js2n.Null
            ],
      "definitions.NestedMap_for_String" =
        { _ | refs."definitions.NestedMapValue_for_String" },
      "definitions.OneOrMany%3CResource%3E" =
        std.contract.any_of
            [
              std.contract.Sequence [ refs."definitions.Resource", String ],
              Array (
                std.contract.Sequence [ refs."definitions.Resource", String ]
              )
            ],
      "definitions.ParsableStruct%3CBind%3E" =
        js2n.OneOf [ refs."definitions.Bind", String ],
      "definitions.ParsableStruct%3CCache%3E" =
        js2n.OneOf [ refs."definitions.Cache", String ],
      "definitions.ParsableStruct%3CCopyResourcePatch%3E" =
        js2n.OneOf [ refs."definitions.CopyResourcePatch", String ],
      "definitions.ParsableStruct%3CImageName%3E" =
        std.contract.any_of
            [
              std.contract.Sequence
                [ refs."definitions.ImageName", { _ | Dyn } ],
              String
            ],
      "definitions.ParsableStruct%3CPort%3E" =
        std.contract.any_of
            [
              std.contract.Sequence [ refs."definitions.Port", { _ | Dyn } ],
              String
            ],
      "definitions.ParsableStruct%3CUser%3E" =
        std.contract.any_of
            [
              std.contract.Sequence [ refs."definitions.User", { _ | Dyn } ],
              String
            ],
      "definitions.Port" =
        {
            port
              | js2n.Nullable
                (std.contract.Sequence
                  [ std.number.Integer, js2n.number.Minimum 0 ])
              | optional,
            protocol
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [ refs."definitions.PortProtocol", String ],
                  js2n.Null,
                  js2n.Null
                ]
              | optional,
            ..
          },
      "definitions.PortProtocol" =
        std.contract.Sequence [ std.enum.TagOrString, [| 'udp, 'tcp |] ],
      "definitions.Resource" = String,
      "definitions.Run" =
        {
            bind
              | js2n.Nullable
                refs."definitions.VecDeepPatch%3CParsableStruct%3CBind%3E%3E"
              | optional,
            cache
              | js2n.Nullable
                refs."definitions.VecDeepPatch%3CParsableStruct%3CCache%3E%3E"
              | optional,
            run
              | js2n.Nullable refs."definitions.VecPatch%3CString%3E"
              | optional,
            ..
          },
      "definitions.Stage" =
        std.contract.any_of
            [
              refs."definitions.FromContext",
              js2n.record.Record
                {
                  additional = 'Some Dyn,
                  patterns = {},
                  properties =
                    {
                        arg =
                          js2n.Nullable
                              (std.contract.Sequence
                                [
                                  refs."definitions.HashMapPatch%3CString,%20String%3E",
                                  { _ | Dyn }
                                ]),
                        bind =
                          js2n.Nullable
                              refs."definitions.VecDeepPatch%3CParsableStruct%3CBind%3E%3E",
                        cache =
                          js2n.Nullable
                              refs."definitions.VecDeepPatch%3CParsableStruct%3CCache%3E%3E",
                        copy =
                          js2n.Nullable
                              refs."definitions.VecDeepPatch%3CParsableStruct%3CCopyResourcePatch%3E%3E",
                        env =
                          js2n.Nullable
                              (std.contract.Sequence
                                [
                                  refs."definitions.HashMapPatch%3CString,%20String%3E",
                                  { _ | Dyn }
                                ]),
                        root =
                          std.contract.any_of
                              [
                                std.contract.Sequence
                                  [ refs."definitions.Run", { _ | Dyn } ],
                                js2n.Null,
                                js2n.Null
                              ],
                        run =
                          js2n.Nullable refs."definitions.VecPatch%3CString%3E",
                        user =
                          std.contract.any_of
                              [
                                refs."definitions.ParsableStruct%3CUser%3E",
                                js2n.Null,
                                js2n.Null
                              ],
                        workdir = js2n.Nullable String,
                      },
                  required = {},
                }
            ],
      "definitions.UnknownPatch" =
        {
            chmod
              | std.contract.any_of [ js2n.Null, Number, String ]
              | optional,
            chown
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [ refs."definitions.User", { _ | Dyn } ],
                  js2n.Null,
                  js2n.Null
                ]
              | optional,
            exclude
              | js2n.Nullable refs."definitions.VecPatch%3CString%3E"
              | optional,
            link | js2n.Nullable Bool | optional,
            target | js2n.Nullable String | optional,
            ..
          },
      "definitions.User" =
        {
            group | js2n.Nullable String | optional,
            user | js2n.Nullable String | optional,
            ..
          },
      "definitions.VecDeepPatch%3CParsableStruct%3CBind%3E%3E" =
        js2n.OneOf
            [
              refs."definitions.ParsableStruct%3CBind%3E",
              js2n.array.ArrayOf refs."definitions.ParsableStruct%3CBind%3E",
              js2n.record.Record
                {
                  additional = 'Some Dyn,
                  patterns =
                    {
                        "^\\+$" =
                          js2n.array.ArrayOf
                              refs."definitions.ParsableStruct%3CBind%3E",
                        "^\\+\\d+$" =
                          js2n.array.ArrayOf
                              refs."definitions.ParsableStruct%3CBind%3E",
                        "^\\d+$" = refs."definitions.ParsableStruct%3CBind%3E",
                        "^\\d+<$" = refs."definitions.ParsableStruct%3CBind%3E",
                        "^\\d+\\+$" =
                          js2n.array.ArrayOf
                              refs."definitions.ParsableStruct%3CBind%3E",
                        "_" =
                          js2n.array.ArrayOf
                              refs."definitions.ParsableStruct%3CBind%3E",
                      },
                  properties = {},
                  required = {},
                }
            ],
      "definitions.VecDeepPatch%3CParsableStruct%3CCache%3E%3E" =
        js2n.OneOf
            [
              refs."definitions.ParsableStruct%3CCache%3E",
              js2n.array.ArrayOf refs."definitions.ParsableStruct%3CCache%3E",
              js2n.record.Record
                {
                  additional = 'Some Dyn,
                  patterns =
                    {
                        "^\\+$" =
                          js2n.array.ArrayOf
                              refs."definitions.ParsableStruct%3CCache%3E",
                        "^\\+\\d+$" =
                          js2n.array.ArrayOf
                              refs."definitions.ParsableStruct%3CCache%3E",
                        "^\\d+$" = refs."definitions.ParsableStruct%3CCache%3E",
                        "^\\d+<$" =
                          refs."definitions.ParsableStruct%3CCache%3E",
                        "^\\d+\\+$" =
                          js2n.array.ArrayOf
                              refs."definitions.ParsableStruct%3CCache%3E",
                        "_" =
                          js2n.array.ArrayOf
                              refs."definitions.ParsableStruct%3CCache%3E",
                      },
                  properties = {},
                  required = {},
                }
            ],
      "definitions.VecDeepPatch%3CParsableStruct%3CCopyResourcePatch%3E%3E" =
        js2n.OneOf
            [
              refs."definitions.ParsableStruct%3CCopyResourcePatch%3E",
              js2n.array.ArrayOf
                refs."definitions.ParsableStruct%3CCopyResourcePatch%3E",
              js2n.record.Record
                {
                  additional = 'Some Dyn,
                  patterns =
                    {
                        "^\\+$" =
                          js2n.array.ArrayOf
                              refs."definitions.ParsableStruct%3CCopyResourcePatch%3E",
                        "^\\+\\d+$" =
                          js2n.array.ArrayOf
                              refs."definitions.ParsableStruct%3CCopyResourcePatch%3E",
                        "^\\d+$" =
                          refs."definitions.ParsableStruct%3CCopyResourcePatch%3E",
                        "^\\d+<$" =
                          refs."definitions.ParsableStruct%3CCopyResourcePatch%3E",
                        "^\\d+\\+$" =
                          js2n.array.ArrayOf
                              refs."definitions.ParsableStruct%3CCopyResourcePatch%3E",
                        "_" =
                          js2n.array.ArrayOf
                              refs."definitions.ParsableStruct%3CCopyResourcePatch%3E",
                      },
                  properties = {},
                  required = {},
                }
            ],
      "definitions.VecDeepPatch%3CParsableStruct%3CPort%3E%3E" =
        js2n.OneOf
            [
              refs."definitions.ParsableStruct%3CPort%3E",
              js2n.array.ArrayOf refs."definitions.ParsableStruct%3CPort%3E",
              js2n.record.Record
                {
                  additional = 'Some Dyn,
                  patterns =
                    {
                        "^\\+$" =
                          js2n.array.ArrayOf
                              refs."definitions.ParsableStruct%3CPort%3E",
                        "^\\+\\d+$" =
                          js2n.array.ArrayOf
                              refs."definitions.ParsableStruct%3CPort%3E",
                        "^\\d+$" = refs."definitions.ParsableStruct%3CPort%3E",
                        "^\\d+<$" = refs."definitions.ParsableStruct%3CPort%3E",
                        "^\\d+\\+$" =
                          js2n.array.ArrayOf
                              refs."definitions.ParsableStruct%3CPort%3E",
                        "_" =
                          js2n.array.ArrayOf
                              refs."definitions.ParsableStruct%3CPort%3E",
                      },
                  properties = {},
                  required = {},
                }
            ],
      "definitions.VecPatch%3CResource%3E" =
        std.contract.any_of
            [
              std.contract.Sequence [ refs."definitions.Resource", String ],
              Array (
                std.contract.Sequence [ refs."definitions.Resource", String ]
              ),
              js2n.record.Record
                {
                  additional = 'Some Dyn,
                  patterns =
                    {
                        "^\\+$" =
                          Array (
                              std.contract.Sequence
                                [ refs."definitions.Resource", String ]
                            ),
                        "^\\+\\d+$" =
                          Array (
                              std.contract.Sequence
                                [ refs."definitions.Resource", String ]
                            ),
                        "^\\d+$" =
                          std.contract.Sequence
                              [ refs."definitions.Resource", String ],
                        "^\\d+\\+$" =
                          Array (
                              std.contract.Sequence
                                [ refs."definitions.Resource", String ]
                            ),
                        "_" =
                          Array (
                              std.contract.Sequence
                                [ refs."definitions.Resource", String ]
                            ),
                      },
                  properties = {},
                  required = {},
                }
            ],
      "definitions.VecPatch%3CString%3E" =
        std.contract.any_of
            [
              String,
              Array String,
              js2n.record.Record
                {
                  additional = 'Some Dyn,
                  patterns =
                    {
                        "^\\+$" = Array String,
                        "^\\+\\d+$" = Array String,
                        "^\\d+$" = String,
                        "^\\d+\\+$" = Array String,
                        "_" = Array String,
                      },
                  properties = {},
                  required = {},
                }
            ],
    }
    in
  std.contract.any_of
      [
        refs."definitions.FromContext",
        js2n.record.Record
          {
            additional = 'Some Dyn,
            patterns = {},
            properties =
              {
                  arg =
                    js2n.Nullable
                        refs."definitions.HashMapPatch%3CString,%20String%3E",
                  bind =
                    js2n.Nullable
                        refs."definitions.VecDeepPatch%3CParsableStruct%3CBind%3E%3E",
                  builders =
                    js2n.Nullable
                        refs."definitions.HashMapDeepPatch%3CString,%20Stage%3E",
                  cache =
                    js2n.Nullable
                        refs."definitions.VecDeepPatch%3CParsableStruct%3CCache%3E%3E",
                  cmd = js2n.Nullable refs."definitions.VecPatch%3CString%3E",
                  context =
                    js2n.Nullable refs."definitions.VecPatch%3CString%3E",
                  copy =
                    js2n.Nullable
                        refs."definitions.VecDeepPatch%3CParsableStruct%3CCopyResourcePatch%3E%3E",
                  entrypoint =
                    js2n.Nullable refs."definitions.VecPatch%3CString%3E",
                  env =
                    js2n.Nullable
                        refs."definitions.HashMapPatch%3CString,%20String%3E",
                  expose =
                    js2n.Nullable
                        refs."definitions.VecDeepPatch%3CParsableStruct%3CPort%3E%3E",
                  extend = refs."definitions.OneOrMany%3CResource%3E",
                  healthcheck =
                    std.contract.any_of
                        [
                          refs."definitions.Healthcheck",
                          js2n.Null,
                          js2n.Null
                        ],
                  ignore =
                    js2n.Nullable refs."definitions.VecPatch%3CString%3E",
                  label = js2n.Nullable refs."definitions.NestedMap_for_String",
                  root =
                    std.contract.any_of
                        [ refs."definitions.Run", js2n.Null, js2n.Null ],
                  run = js2n.Nullable refs."definitions.VecPatch%3CString%3E",
                  user =
                    std.contract.any_of
                        [
                          refs."definitions.ParsableStruct%3CUser%3E",
                          js2n.Null,
                          js2n.Null
                        ],
                  volume =
                    js2n.Nullable refs."definitions.VecPatch%3CString%3E",
                  workdir = js2n.Nullable String,
                },
            required = {},
          }
      ]