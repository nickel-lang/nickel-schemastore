# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "properties.ignored.items" =
        std.contract.Sequence
            [
              js2n.OneOf
                [
                  js2n.Const "DL3000",
                  js2n.Const "DL3001",
                  js2n.Const "DL3002",
                  js2n.Const "DL3003",
                  js2n.Const "DL3004",
                  js2n.Const "DL3006",
                  js2n.Const "DL3007",
                  js2n.Const "DL3008",
                  js2n.Const "DL3009",
                  js2n.Const "DL3010",
                  js2n.Const "DL3011",
                  js2n.Const "DL3012",
                  js2n.Const "DL3013",
                  js2n.Const "DL3014",
                  js2n.Const "DL3015",
                  js2n.Const "DL3016",
                  js2n.Const "DL3018",
                  js2n.Const "DL3019",
                  js2n.Const "DL3020",
                  js2n.Const "DL3021",
                  js2n.Const "DL3022",
                  js2n.Const "DL3023",
                  js2n.Const "DL3024",
                  js2n.Const "DL3025",
                  js2n.Const "DL3026",
                  js2n.Const "DL3027",
                  js2n.Const "DL3028",
                  js2n.Const "DL3029",
                  js2n.Const "DL3030",
                  js2n.Const "DL3032",
                  js2n.Const "DL3033",
                  js2n.Const "DL3034",
                  js2n.Const "DL3035",
                  js2n.Const "DL3036",
                  js2n.Const "DL3037",
                  js2n.Const "DL3038",
                  js2n.Const "DL3040",
                  js2n.Const "DL3041",
                  js2n.Const "DL3042",
                  js2n.Const "DL3043",
                  js2n.Const "DL3044",
                  js2n.Const "DL3045",
                  js2n.Const "DL3046",
                  js2n.Const "DL3047",
                  js2n.Const "DL3048",
                  js2n.Const "DL3049",
                  js2n.Const "DL3050",
                  js2n.Const "DL3051",
                  js2n.Const "DL3052",
                  js2n.Const "DL3053",
                  js2n.Const "DL3054",
                  js2n.Const "DL3055",
                  js2n.Const "DL3056",
                  js2n.Const "DL3057",
                  js2n.Const "DL3058",
                  js2n.Const "DL3059",
                  js2n.Const "DL3060",
                  js2n.Const "DL4000",
                  js2n.Const "DL4001",
                  js2n.Const "DL4003",
                  js2n.Const "DL4004",
                  js2n.Const "DL4005",
                  js2n.Const "DL4006",
                  js2n.Const "SC1000",
                  js2n.Const "SC1001",
                  js2n.Const "SC1007",
                  js2n.Const "SC1010",
                  js2n.Const "SC1018",
                  js2n.Const "SC1035",
                  js2n.Const "SC1045",
                  js2n.Const "SC1065",
                  js2n.Const "SC1066",
                  js2n.Const "SC1068",
                  js2n.Const "SC1077",
                  js2n.Const "SC1078",
                  js2n.Const "SC1079",
                  js2n.Const "SC1081",
                  js2n.Const "SC1083",
                  js2n.Const "SC1086",
                  js2n.Const "SC1087",
                  js2n.Const "SC1095",
                  js2n.Const "SC1097",
                  js2n.Const "SC1098",
                  js2n.Const "SC1099",
                  js2n.Const "SC2002",
                  js2n.Const "SC2015",
                  js2n.Const "SC2026",
                  js2n.Const "SC2028",
                  js2n.Const "SC2035",
                  js2n.Const "SC2039",
                  js2n.Const "SC2046",
                  js2n.Const "SC2086",
                  js2n.Const "SC2140",
                  js2n.Const "SC2154",
                  js2n.Const "SC2155",
                  js2n.Const "SC2164",
                  js2n.Const "SC3046"
                ],
              String
            ],
    }
    in
  {
      disable-ignore-pragma
        | Bool
        | doc "Disable inline ignore pragmas `# hadolint ignore=DLxxxx`"
        | optional,
      failure-threshold
        | js2n.OneOf
          [
            js2n.Const "error",
            js2n.Const "warning",
            js2n.Const "info",
            js2n.Const "style",
            js2n.Const "ignore",
            js2n.Const "none"
          ]
        | String
        | doc "A threshold controlling how severe a rule violation must be before the return code indicates failure."
        | optional,
      format
        | std.enum.TagOrString
        | [|
          'codacy,
          'gnu,
          'gitlab_codeclimate,
          'codeclimate,
          'checkstyle,
          'json,
          'tty
        |]
        | doc "Output format"
        | optional,
      ignored
        | Array (
          std.contract.Sequence
            [
              js2n.OneOf
                [
                  js2n.Const "DL3000",
                  js2n.Const "DL3001",
                  js2n.Const "DL3002",
                  js2n.Const "DL3003",
                  js2n.Const "DL3004",
                  js2n.Const "DL3006",
                  js2n.Const "DL3007",
                  js2n.Const "DL3008",
                  js2n.Const "DL3009",
                  js2n.Const "DL3010",
                  js2n.Const "DL3011",
                  js2n.Const "DL3012",
                  js2n.Const "DL3013",
                  js2n.Const "DL3014",
                  js2n.Const "DL3015",
                  js2n.Const "DL3016",
                  js2n.Const "DL3018",
                  js2n.Const "DL3019",
                  js2n.Const "DL3020",
                  js2n.Const "DL3021",
                  js2n.Const "DL3022",
                  js2n.Const "DL3023",
                  js2n.Const "DL3024",
                  js2n.Const "DL3025",
                  js2n.Const "DL3026",
                  js2n.Const "DL3027",
                  js2n.Const "DL3028",
                  js2n.Const "DL3029",
                  js2n.Const "DL3030",
                  js2n.Const "DL3032",
                  js2n.Const "DL3033",
                  js2n.Const "DL3034",
                  js2n.Const "DL3035",
                  js2n.Const "DL3036",
                  js2n.Const "DL3037",
                  js2n.Const "DL3038",
                  js2n.Const "DL3040",
                  js2n.Const "DL3041",
                  js2n.Const "DL3042",
                  js2n.Const "DL3043",
                  js2n.Const "DL3044",
                  js2n.Const "DL3045",
                  js2n.Const "DL3046",
                  js2n.Const "DL3047",
                  js2n.Const "DL3048",
                  js2n.Const "DL3049",
                  js2n.Const "DL3050",
                  js2n.Const "DL3051",
                  js2n.Const "DL3052",
                  js2n.Const "DL3053",
                  js2n.Const "DL3054",
                  js2n.Const "DL3055",
                  js2n.Const "DL3056",
                  js2n.Const "DL3057",
                  js2n.Const "DL3058",
                  js2n.Const "DL3059",
                  js2n.Const "DL3060",
                  js2n.Const "DL4000",
                  js2n.Const "DL4001",
                  js2n.Const "DL4003",
                  js2n.Const "DL4004",
                  js2n.Const "DL4005",
                  js2n.Const "DL4006",
                  js2n.Const "SC1000",
                  js2n.Const "SC1001",
                  js2n.Const "SC1007",
                  js2n.Const "SC1010",
                  js2n.Const "SC1018",
                  js2n.Const "SC1035",
                  js2n.Const "SC1045",
                  js2n.Const "SC1065",
                  js2n.Const "SC1066",
                  js2n.Const "SC1068",
                  js2n.Const "SC1077",
                  js2n.Const "SC1078",
                  js2n.Const "SC1079",
                  js2n.Const "SC1081",
                  js2n.Const "SC1083",
                  js2n.Const "SC1086",
                  js2n.Const "SC1087",
                  js2n.Const "SC1095",
                  js2n.Const "SC1097",
                  js2n.Const "SC1098",
                  js2n.Const "SC1099",
                  js2n.Const "SC2002",
                  js2n.Const "SC2015",
                  js2n.Const "SC2026",
                  js2n.Const "SC2028",
                  js2n.Const "SC2035",
                  js2n.Const "SC2039",
                  js2n.Const "SC2046",
                  js2n.Const "SC2086",
                  js2n.Const "SC2140",
                  js2n.Const "SC2154",
                  js2n.Const "SC2155",
                  js2n.Const "SC2164",
                  js2n.Const "SC3046"
                ],
              String
            ]
        )
        | doc "A list of rules to be ignored"
        | optional,
      label-schema
        | {  .. }
        | doc "A label-schema. See https://github.com/hadolint/hadolint#linting-labels for reference."
        | optional,
      no-color | Bool | doc "Don't colorize output." | optional,
      no-fail
        | Bool
        | doc "Don't exit with a failure status code when any rule is violated."
        | optional,
      override
        | {
          error
            | Array (
              std.contract.Sequence [ refs."properties.ignored.items", String ]
            )
            | doc "A list of rules to be treated with \"error\" severity"
            | optional,
          info
            | Array (
              std.contract.Sequence [ refs."properties.ignored.items", String ]
            )
            | doc "A list of rules to be treated with \"info\" severity"
            | optional,
          style
            | Array (
              std.contract.Sequence [ refs."properties.ignored.items", String ]
            )
            | doc "A list of rules to be treated with \"style\" severity"
            | optional,
          warning
            | Array (
              std.contract.Sequence [ refs."properties.ignored.items", String ]
            )
            | doc "A list of rules to be treated with \"warning\" severity"
            | optional,
        }
        | optional,
      strict-labels
        | Bool
        | doc "Strictly adhere to label-schem, don't allow additional labels."
        | optional,
      trustedRegistries
        | Array String
        | doc "A list of trusted registries. Ex: docker.io"
        | optional,
    }