# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.dependencyManagement" =
        {
            additionalProperties | js2n.Never | optional,
            resolutions | Array { path | String | optional, } | optional,
            ..
          },
      "definitions.metadata" =
        {
            additionalProperties | js2n.Never | optional,
            name
              | js2n.string.MaxLength 80
              | js2n.string.MinLength 3
              | js2n.string.Matches "^(?:@[0-9a-z-_.]+\\/)?[a-z][0-9a-z-_.]*$"
              | doc "Identifier for the workspace configuration. Workspaces named 'default' will be used automatically by UI5 Tooling",
            ..
          },
    }
    in
  {
      additionalProperties | js2n.Never | optional,
      dependencyManagement | refs."definitions.dependencyManagement",
      metadata | refs."definitions.metadata",
      specVersion | std.enum.TagOrString | [| '"workspace/1.0" |],
      ..
    }