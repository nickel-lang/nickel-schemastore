# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.classification" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [| 'UnrelatedCode, 'LibraryCode, 'MyCode |]
            ],
      "definitions.includes" = Array (js2n.string.MinLength 1),
    }
    in
  {
      Eval
        | refs."definitions.classification"
        | doc "Script that is executed by passing a string to the host-provided eval function."
        | optional,
      Function
        | refs."definitions.classification"
        | doc "Script that is executed by passing a string to the 'Function' constructor."
        | optional,
      Libraries
        | refs."definitions.includes"
        | doc "An array of urls or files that are classified as 'LibraryCode'."
        | optional,
      MyCode
        | refs."definitions.includes"
        | doc "An array of urls or files that are classified as 'MyCode'."
        | optional,
      ScriptBlock
        | refs."definitions.classification"
        | doc "Script that is executed by passing a string to the 'setTimeout', 'setImmediate', or 'setInterval' functions."
        | optional,
      Unrelated
        | refs."definitions.includes"
        | doc "An array of urls or files that are classified as 'UnrelatedCode'."
        | optional,
      ..
    }