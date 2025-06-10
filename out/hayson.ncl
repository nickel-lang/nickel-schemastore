# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.coord" =
        {
            _kind | std.enum.TagOrString | [| 'coord |],
            lat | Number,
            lng | Number,
          },
      "definitions.date" =
        { _kind | std.enum.TagOrString | [| 'date |], val | String, },
      "definitions.dateTime" =
        {
            _kind | std.enum.TagOrString | [| 'dateTime |],
            tz | js2n.string.MinLength 1 | optional,
            val
              | js2n.string.Matches
                "^(-?(?:[1-9][0-9]*)?[0-9]{4})-(1[0-2]|0[1-9])-(3[01]|0[1-9]|[12][0-9])T(2[0-3]|[01][0-9]):([0-5][0-9]):([0-5][0-9])(\\.[0-9]+)?(Z|[-+](2[0-3]|[01][0-9]):[0-5][0-9])?$",
          },
      "definitions.dict" =
        js2n.record.Record
            {
              additional = 'None,
              patterns = { "^[a-z][0-9a-zA-Z_]*" = refs."definitions.hval", },
              properties =
                {
                    _kind =
                      std.contract.Sequence
                          [ std.enum.TagOrString, [| 'dict |] ],
                  },
              required = {},
            },
      "definitions.grid" =
        {
            _kind | std.enum.TagOrString | [| 'grid |],
            cols
              | Array (
                std.contract.Sequence
                  [ refs."definitions.gridColumn", { _ | Dyn } ]
              )
              | optional,
            meta | refs."definitions.gridMeta" | { _ | Dyn },
            rows
              | Array (
                std.contract.Sequence [ refs."definitions.dict", { _ | Dyn } ]
              )
              | optional,
          },
      "definitions.gridColumn" =
        {
            meta | refs."definitions.dict" | { _ | Dyn } | optional,
            name | String,
          },
      "definitions.gridMeta" =
        std.contract.Sequence
            [
              refs."definitions.dict",
              { ver | std.enum.TagOrString | [| '"3.0" |], .. }
            ],
      "definitions.hval" =
        js2n.OneOf
            [
              String,
              Number,
              Bool,
              std.contract.Sequence [ refs."definitions.marker", { _ | Dyn } ],
              std.contract.Sequence [ refs."definitions.remove", { _ | Dyn } ],
              std.contract.Sequence [ refs."definitions.na", { _ | Dyn } ],
              std.contract.Sequence [ refs."definitions.number", { _ | Dyn } ],
              std.contract.Sequence
                [ refs."definitions.numberSpecial", { _ | Dyn } ],
              std.contract.Sequence [ refs."definitions.symbol", { _ | Dyn } ],
              std.contract.Sequence [ refs."definitions.ref", { _ | Dyn } ],
              std.contract.Sequence [ refs."definitions.uri", { _ | Dyn } ],
              std.contract.Sequence [ refs."definitions.date", { _ | Dyn } ],
              std.contract.Sequence [ refs."definitions.time", { _ | Dyn } ],
              std.contract.Sequence
                [ refs."definitions.dateTime", { _ | Dyn } ],
              std.contract.Sequence [ refs."definitions.dict", { _ | Dyn } ],
              std.contract.Sequence [ refs."definitions.list", Array Dyn ],
              std.contract.Sequence [ refs."definitions.grid", { _ | Dyn } ],
              std.contract.Sequence [ refs."definitions.coord", { _ | Dyn } ],
              std.contract.Sequence [ refs."definitions.xstr", { _ | Dyn } ]
            ],
      "definitions.list" = Array refs."definitions.hval",
      "definitions.marker" = { _kind | std.enum.TagOrString | [| 'marker |], },
      "definitions.na" = { _kind | std.enum.TagOrString | [| 'na |], },
      "definitions.number" =
        {
            _kind | std.enum.TagOrString | [| 'number |],
            unit
              | js2n.string.Matches "^([a-zA-Z%_/$]|[\\x80-\\xFFFF])+$"
              | optional,
            val | Number,
          },
      "definitions.numberSpecial" =
        {
            _kind | std.enum.TagOrString | [| 'number |],
            val | std.enum.TagOrString | [| 'NaN, '"-INF", 'INF |],
          },
      "definitions.ref" =
        {
            _kind | std.enum.TagOrString | [| 'ref |],
            dis | String | optional,
            val | js2n.string.Matches "^[0-9a-zA-Z_:\\-.~]+$",
          },
      "definitions.remove" = { _kind | std.enum.TagOrString | [| 'remove |], },
      "definitions.symbol" =
        {
            _kind | std.enum.TagOrString | [| 'symbol |],
            val | js2n.string.Matches "^[0-9a-zA-Z_:\\-.~]+$",
          },
      "definitions.time" =
        {
            _kind | std.enum.TagOrString | [| 'time |],
            val
              | js2n.string.Matches
                "^(2[0-3]|[01][0-9]):([0-5][0-9]):([0-5][0-9])(\\.[0-9]+)?$",
          },
      "definitions.uri" =
        { _kind | std.enum.TagOrString | [| 'uri |], val | String, },
      "definitions.xstr" =
        {
            _kind | std.enum.TagOrString | [| 'xstr |],
            type | js2n.string.Matches "^[A-Z][a-zA-Z0-9_]*$",
            val | String,
          },
    }
    in
  refs."definitions.hval"