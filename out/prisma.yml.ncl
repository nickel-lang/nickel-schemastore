# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.subscription" =
        {
            query | String,
            webhook
              | std.contract.any_of
                [
                  String,
                  { headers | { _ | Dyn } | optional, url | String, .. }
                ],
            ..
          },
    }
    in
  std.contract.any_of
      [
        js2n.Null,
        Bool,
        Number,
        String,
        {
          custom
            | { _ | Dyn }
            | doc m%"
              Fields to use in variable interpolations via `${self:custom.field}`
              https://v1.prisma.io/docs/1.34/prisma-cli-and-configuration/prisma-yml-5cy7/#reference
            "%
            | optional,
          databaseType
            | std.enum.TagOrString
            | [| 'document, 'relational |]
            | doc m%"
              A relational or document database
              https://v1.prisma.io/docs/1.34/prisma-cli-and-configuration/prisma-yml-5cy7/#reference
            "%
            | optional,
          datamodel
            | std.contract.any_of
              [
                String,
                std.contract.Sequence [ js2n.array.UniqueItems, Array String ]
              ]
            | doc m%"
              Type definitions for database models, relations, enums and other types
              https://v1.prisma.io/docs/1.34/prisma-cli-and-configuration/prisma-yml-5cy7/#reference
            "%,
          disableAuth
            | Bool
            | doc m%"
              Disable authentication for the current API endpoint
              https://v1.prisma.io/docs/1.34/prisma-cli-and-configuration/prisma-yml-5cy7/#reference
            "%
            | optional,
          endpoint
            | String
            | doc m%"
              An endpoint the service will be reachable at
              https://v1.prisma.io/docs/1.34/prisma-cli-and-configuration/prisma-yml-5cy7/#reference
            "%
            | optional,
          generate
            | Array
              {
                generator
                  | std.enum.TagOrString
                  | [|
                    'graphql-schema,
                    'go-client,
                    'flow-client,
                    'typescript-client,
                    'javascript-client
                  |]
                  | doc m%"
                    A client name
                    https://v1.prisma.io/docs/1.34/prisma-cli-and-configuration/prisma-yml-5cy7/#reference
                  "%
                  | optional,
                output
                  | js2n.string.MinLength 1
                  | doc m%"
                    An output path
                    https://v1.prisma.io/docs/1.34/prisma-cli-and-configuration/prisma-yml-5cy7/#reference
                  "%
                  | optional,
                ..
              }
            | doc m%"
              How and where generate client
              https://v1.prisma.io/docs/1.34/prisma-cli-and-configuration/prisma-yml-5cy7/#reference
            "%
            | optional,
          hooks
            | { _ | Dyn }
            | doc m%"
              Hooks
              https://v1.prisma.io/docs/1.34/prisma-cli-and-configuration/prisma-yml-5cy7/#reference
            "%
            | optional,
          secret
            | String
            | doc m%"
              A secure secret for the current API endpoint
              https://v1.prisma.io/docs/1.34/prisma-cli-and-configuration/prisma-yml-5cy7/#reference
            "%
            | optional,
          seed
            | {
              "import"
                | String
                | doc "Commands to run while seeding a service for the current API endpoint"
                | optional,
              run
                | String
                | doc "Instructions to run while seeding a service for the current API endpoint"
                | optional,
              ..
            }
            | doc m%"
              A database seed
              https://v1.prisma.io/docs/1.34/prisma-cli-and-configuration/prisma-yml-5cy7/#reference
            "%
            | optional,
          subscriptions
            | { _ | refs."definitions.subscription" }
            | doc m%"
              Server-side subscriptions
              https://v1.prisma.io/docs/1.34/prisma-cli-and-configuration/prisma-yml-5cy7/#reference
            "%
            | optional,
        },
        Array Dyn
      ]