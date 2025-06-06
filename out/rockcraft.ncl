# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      adopt-info | js2n.Nullable String | optional,
      base
        | std.enum.TagOrString
        | [| '"ubuntu@24.04", '"ubuntu@22.04", '"ubuntu@20.04", 'bare |],
      build-base
        | js2n.Nullable
          (std.contract.Sequence
            [
              std.enum.TagOrString,
              [| 'devel, '"ubuntu@24.04", '"ubuntu@22.04", '"ubuntu@20.04" |]
            ])
        | optional,
      checks
        | js2n.Nullable
          ({
            _ | std.contract.any_of
              [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
          })
        | optional,
      contact
        | std.contract.any_of
          [
            String,
            std.contract.Sequence [ js2n.array.UniqueItems, Array String ],
            js2n.Null
          ]
        | optional,
      description | String,
      entrypoint-service | js2n.Nullable String | optional,
      environment | js2n.Nullable ({ _ | String }) | optional,
      issues
        | std.contract.any_of
          [
            String,
            std.contract.Sequence [ js2n.array.UniqueItems, Array String ],
            js2n.Null
          ]
        | optional,
      license | js2n.Nullable String | optional,
      name
        | js2n.string.MinLength 1
        | doc m%"
          Valid names for rocks. It matches the accepted values for pebble layer files:
          
          - must start with a lowercase letter [a-z]
          - must contain only lowercase letters [a-z], numbers [0-9] or hyphens
          - must not end with a hyphen, and must not contain two or more consecutive hyphens
          
        "%,
      package-repositories | js2n.Nullable (Array {  .. }) | optional,
      parts
        | {
          _ | std.contract.any_of
            [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
        },
      platforms
        | js2n.record.Record
          {
            additional =
              'Some
                  (js2n.OneOf
                    [
                      js2n.Null,
                      std.contract.any_of
                        [
                          js2n.Null,
                          Bool,
                          { _ | Dyn },
                          Array Dyn,
                          Number,
                          String
                        ]
                    ]),
            patterns =
              {
                  "(amd64|arm64|armhf|i386|ppc64el|riscv64|s390x)" =
                    js2n.Nullable
                        {
                          build-for
                            | std.contract.any_of [ String, Array String ]
                            | optional,
                          build-on
                            | std.contract.any_of [ String, Array String ],
                          ..
                        },
                },
            properties = {},
            required = {},
          },
      run-user | js2n.Nullable (std.contract.Equal "_daemon_") | optional,
      services
        | js2n.Nullable
          ({
            _ | std.contract.any_of
              [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
          })
        | optional,
      source-code | js2n.Nullable (js2n.string.MinLength 1) | optional,
      summary | String,
      title
        | js2n.Nullable
          (std.contract.Sequence
            [ js2n.string.MaxLength 40, js2n.string.MinLength 2 ])
        | optional,
      version | js2n.Nullable (js2n.string.MaxLength 32) | optional,
    }