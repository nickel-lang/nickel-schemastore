# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  js2n.record.Record
      {
        additional = 'Some Dyn,
        patterns =
          {
              "^_" =
                std.contract.any_of
                    [ js2n.Null, Bool, Number, String, {  .. }, Array Dyn ],
            },
        properties =
          {
              authors = Array (std.contract.any_of [ String, { _ | Dyn } ]),
              dependencies = { _ | String },
              description = js2n.string.MaxLength 140,
              devDependencies = { _ | String },
              exportsOverride =
                { _ | { _ | std.contract.any_of [ String, Array Dyn ] } },
              homepage = String,
              ignore = std.contract.any_of [ String, Array Dyn ],
              keywords = Array (js2n.string.MaxLength 50),
              license =
                std.contract.any_of [ js2n.string.MaxLength 140, Array Dyn ],
              main = std.contract.any_of [ String, Array Dyn ],
              moduleType =
                std.contract.any_of
                    [
                      String,
                      Array (
                        std.contract.Sequence
                          [
                            std.enum.TagOrString,
                            [| 'yui, 'node, 'globals, 'es6, 'amd |]
                          ]
                      )
                    ],
              name =
                std.contract.Sequence
                    [ js2n.string.MaxLength 50, js2n.string.MinLength 1 ],
              private = Bool,
              repository =
                {
                    type | std.enum.TagOrString | [| 'git |] | optional,
                    url | String | optional,
                    ..
                  },
              resolutions = { _ | Dyn },
              version = String,
            },
        required = { name = true, },
      }