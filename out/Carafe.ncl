# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  std.contract.Sequence
      [
        {
          config
            | {
              _ | std.contract.Sequence
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
                            properties = { source = js2n.Const "config", },
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
                        js2n.record.Required [ "value" ],
                        Array Dyn
                      ]) js2n.Always,
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
                            properties = { source = js2n.Const "libraries", },
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
                        js2n.record.Required [ "path" ],
                        Array Dyn
                      ]) js2n.Always,
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
                                  type =
                                    std.contract.Sequence
                                        [
                                          std.enum.TagOrString,
                                          [| 'popup, 'dropdown |]
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
                        js2n.record.Required [ "possibleValues" ],
                        Array Dyn
                      ]) js2n.Always,
                  {
                    category | String | optional,
                    help | String | optional,
                    label | String | optional,
                    path | js2n.string.Matches "^(/[^/ ]*)+/?$" | optional,
                    possibleValues | Array Dyn | optional,
                    sort | Number | optional,
                    source
                      | std.enum.TagOrString
                      | [| 'libraries, 'data, 'config |],
                    type
                      | std.enum.TagOrString
                      | [|
                        'popup,
                        'dropdown,
                        'fmpScriptName,
                        'fmpFileName,
                        'verticalAlign,
                        'textAlign,
                        'padding,
                        'color,
                        'jsSnippet,
                        'htmlSnippet,
                        'cssSnippet,
                        'largeText,
                        'text,
                        'number,
                        'jsonObject,
                        'jsonArray,
                        'boolean
                      |],
                    value
                      | std.contract.any_of
                        [
                          Bool,
                          std.number.Integer,
                          String,
                          { _ | Dyn },
                          Array Dyn
                        ]
                      | optional,
                    ..
                  }
                ]
            },
          data | {  .. },
          libraries | {  .. } | optional,
          preview | String,
          template | js2n.string.MinLength 1,
          ..
        },
        {
          about | js2n.string.MinLength 1,
          bookend | js2n.string.MinLength 2,
          category | js2n.string.MinLength 1,
          creator | js2n.string.MinLength 1,
          creatorAcknowlegements | String | optional,
          description | js2n.string.MinLength 1,
          id | String,
          jsApiMethods
            | { _ | { about | String, parameters | Array Dyn, .. } }
            | optional,
          minimumFileMakerVersion | Number | optional,
          name | js2n.string.MinLength 1,
          offlineCompatible | Bool,
          parentBundle
            | {
              creator | js2n.string.MinLength 1,
              name | js2n.string.MinLength 1,
              version | js2n.string.Matches "^((\\d+)\\.(\\d+)\\.(\\d+)?)$",
              ..
            }
            | optional,
          previewType | std.enum.TagOrString | [| 'png, 'jpg |] | optional,
          references | { _ | String },
          urlLocation | String | optional,
          vendors | { _ | { _ | Dyn } } | optional,
          version | js2n.string.Matches "^((\\d+)\\.(\\d+)\\.(\\d+)?)$",
          windowsTested | Bool,
          ..
        }
      ]