# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.dependency" =
        js2n.string.Matches "^[a-z0-9_]+:[a-z0-9_]+( \\(.+\\))?$",
      "definitions.machine_name" = js2n.string.Matches "^[a-z0-9_]+$",
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
                  properties = { type = js2n.Const "module", },
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
                configure | String | optional,
                dependencies | Array refs."definitions.dependency" | optional,
                test_dependencies
                  | Array refs."definitions.dependency"
                  | optional,
                ..
              },
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
                  properties = { type = js2n.Const "theme", },
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
                "base theme" | std.contract.any_of [ Bool, String ] | optional,
                ckeditor_stylesheets | Array String | optional,
                engine | String | optional,
                features | js2n.array.UniqueItems | Array String | optional,
                libraries
                  | Array (js2n.string.Matches "^[a-z0-9_]+/[a-z0-9_\\-.]+$")
                  | optional,
                libraries-extend | { _ | Array Dyn } | optional,
                libraries-override
                  | { _ | std.contract.any_of [ Bool, { _ | Dyn }, String ] }
                  | optional,
                logo | String | optional,
                regions | { _ | String } | optional,
                regions_hidden | js2n.array.UniqueItems | optional,
                screenshot | String | optional,
                stylesheets-remove
                  | js2n.array.UniqueItems
                  | Array String
                  | optional,
                ..
              },
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
                  properties = { type = js2n.Const "profile", },
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
                dependencies
                  | js2n.array.UniqueItems
                  | Array refs."definitions.machine_name"
                  | optional,
                distribution
                  | {
                    install
                      | {
                        theme | refs."definitions.machine_name" | optional,
                        ..
                      }
                      | optional,
                    langcode | String | optional,
                    name | String | optional,
                    ..
                  }
                  | optional,
                install
                  | js2n.array.UniqueItems
                  | Array refs."definitions.dependency"
                  | optional,
                theme
                  | js2n.array.UniqueItems
                  | Array refs."definitions.machine_name"
                  | optional,
                ..
              },
              Array Dyn
            ]) js2n.Always,
        {
          core | js2n.string.Matches "^\\d+\\.x$" | optional,
          core_version_requirement | String,
          datestamp | std.number.Integer | optional,
          description | String | optional,
          hidden | Bool | optional,
          name | String,
          package | String | optional,
          php
            | std.contract.any_of
              [ js2n.string.Matches "^\\d+\\.\\d+(\\.\\d+)$", Number ]
            | optional,
          project | String | optional,
          type
            | std.enum.TagOrString
            | [| 'theme_engine, 'profile, 'theme, 'module |],
          version | String | optional,
          ..
        }
      ]