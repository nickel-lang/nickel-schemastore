# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.customMode" =
        {
            customInstructions
              | String
              | doc "Additional behavioral guidelines for the mode. Supports markdown formatting for structured instructions."
              | optional,
            groups
              | Array refs."definitions.permission"
              | doc "Allowed toolsets and file access permissions for this mode"
              | optional,
            name
              | js2n.string.MaxLength 100
              | js2n.string.MinLength 1
              | doc "Display name for the mode in the Roo Coder UI. Can include spaces, capitalization, and emojis.",
            roleDefinition
              | js2n.string.MinLength 10
              | doc "Core identity and expertise of the mode. The first sentence becomes the default mode summary.",
            slug
              | js2n.string.MaxLength 50
              | js2n.string.MinLength 1
              | js2n.string.Matches "^[a-z0-9-]+$"
              | doc "Unique internal identifier for the mode. Must contain only lowercase letters, numbers, and hyphens.",
            whenToUse
              | String
              | doc "Guidance for when to use this mode. Used by the Orchestrator mode and for mode switching suggestions."
              | optional,
          },
      "definitions.permission" =
        std.contract.any_of
            [
              std.contract.Sequence
                [
                  std.enum.TagOrString,
                  [| 'mcp, 'command, 'browser, 'edit, 'read |]
                ],
              {
                allowedPaths
                  | Array String
                  | doc "Regex patterns for allowed file paths. If specified, only files matching these patterns can be edited."
                  | optional,
                disallowedPaths
                  | Array String
                  | doc "Regex patterns for disallowed file paths. Files matching these patterns cannot be edited even if they match allowedPaths."
                  | optional,
                type
                  | std.contract.Equal "edit"
                  | doc "Must be 'edit' for path-restricted edit permissions",
              }
            ],
    }
    in
  {
      customModes
        | js2n.array.MinItems 1
        | Array refs."definitions.customMode"
        | doc "Array of custom mode definitions",
    }