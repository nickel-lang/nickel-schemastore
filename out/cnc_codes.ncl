# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      "$schema" | String | doc "Link to this schema" | optional,
      codes
        | js2n.record.MinProperties 1
        | js2n.record.Record
          {
            additional = 'Some Dyn,
            patterns =
              {
                  "^G|^M" =
                    {
                        category
                          | std.enum.TagOrString
                          | [|
                            'mcode,
                            'other,
                            'canned,
                            'compensation,
                            'coordinate,
                            'motion
                          |]
                          | doc "Category for the code",
                        desc
                          | js2n.string.MinLength 3
                          | doc "A longer description with markdown formatting"
                          | optional,
                        modal
                          | Bool
                          | doc "Modal / Non-Modal (boolean)"
                          | optional,
                        parameters
                          | std.contract.any_of
                            [
                              js2n.Null,
                              Bool,
                              { _ | Dyn },
                              Array Dyn,
                              Number,
                              String
                            ]
                          | optional,
                        shortDesc
                          | js2n.string.MinLength 3
                          | doc "A short description of the code",
                      },
                  additionalProperties = js2n.Never,
                },
            properties = {},
            required = {},
          }
        | doc "Individual G/M Codes"
        | optional,
      description | String | doc "Description of the JSON Reference",
      keywords
        | Array String
        | doc "An Array of string keywords describing the JSON Reference (Optional)"
        | optional,
      machineType
        | std.enum.TagOrString
        | [| 'swiss, 'printer, 'laser, 'lathe, 'mill, 'edm |]
        | doc "The type of CNC machine",
      title | String | doc "Descriptive title of the JSON Reference",
      type
        | std.enum.TagOrString
        | [| 'mcode, 'gcode |]
        | doc "The type of code (G or M)",
      variant
        | {
          name
            | js2n.string.MaxLength 8
            | js2n.string.MinLength 3
            | js2n.string.Matches "[a-z0-9]"
            | optional,
          remove | js2n.array.UniqueItems | Array String | optional,
          ..
        }
        | doc "Defined if G/M Codes are for specific MTB/3DP Variant. (Must be lower case, 3-8 characters)"
        | optional,
    }