# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.DocumentPointer" =
        std.contract.any_of [ Array String, String ],
      "definitions.IExtensions" = {  .. },
      "definitions.IGraphQLProject" =
        {
            documents
              | refs."definitions.DocumentPointer"
              | std.contract.any_of [ Array Dyn, String ]
              | optional,
            exclude
              | refs."definitions.WithList%3Cstring%3E"
              | std.contract.any_of [ Array Dyn, String ]
              | optional,
            extensions
              | refs."definitions.IExtensions"
              | { _ | Dyn }
              | optional,
            include
              | refs."definitions.WithList%3Cstring%3E"
              | std.contract.any_of [ Array Dyn, String ]
              | optional,
            schema
              | refs."definitions.SchemaPointer"
              | std.contract.any_of [ { _ | Dyn }, Array Dyn, String ],
            ..
          },
      "definitions.IGraphQLProjectLegacy" =
        {
            excludes | Array String | optional,
            extensions
              | refs."definitions.IExtensions"
              | { _ | Dyn }
              | optional,
            includes | Array String | optional,
            schemaPath | String,
            ..
          },
      "definitions.IGraphQLProjects" =
        {
            projects
              | {
                _ | std.contract.any_of
                  [
                    std.contract.Sequence
                      [ refs."definitions.IGraphQLProject", { _ | Dyn } ],
                    std.contract.Sequence
                      [ refs."definitions.IGraphQLProjectLegacy", { _ | Dyn } ]
                  ]
              },
            ..
          },
      "definitions.SchemaPointer" =
        std.contract.any_of
            [
              { _ | { headers | { _ | String }, .. } },
              Array (
                std.contract.any_of
                  [ { _ | { headers | { _ | String }, .. } }, String ]
              ),
              String
            ],
      "definitions.WithList%3Cstring%3E" =
        std.contract.any_of [ Array String, String ],
    }
    in
  std.contract.any_of
      [
        refs."definitions.IGraphQLProjects",
        refs."definitions.IGraphQLProject",
        refs."definitions.IGraphQLProjectLegacy"
      ]