# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.excludeFileFilter" = Array String,
      "definitions.fileFilter" =
        {
            exclude
              | refs."definitions.excludeFileFilter"
              | Array Dyn
              | optional,
            include | Array String | optional,
          },
      "definitions.supportedProgrammingLanguage" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [|
                'kotlin,
                'typescript,
                'swift,
                'solidity,
                'script,
                'scala,
                'ruby,
                'python,
                'php,
                'perl,
                'objectivec,
                'javascript,
                'java,
                'groovy,
                'go,
                'cpp,
                'csharp
              |]
            ],
    }
    in
  {
      component_depth | std.number.Integer | optional,
      exclude | refs."definitions.excludeFileFilter" | optional,
      languages
        | Array (
          std.contract.any_of
            [
              refs."definitions.supportedProgrammingLanguage",
              {
                name
                  | refs."definitions.supportedProgrammingLanguage"
                  | optional,
                production | refs."definitions.fileFilter" | optional,
                test | refs."definitions.fileFilter" | optional,
              }
            ]
        )
        | optional,
    }