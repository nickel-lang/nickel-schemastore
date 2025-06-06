# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      environmentDefinitions
        | {
          conan
            | Array
              {
                name | String | doc "The name of the Conan remote",
                service
                  | String
                  | doc "The reference to the infrastructure service to use",
                url | String | doc "The URL of the Conan remote" | optional,
                verifySsl
                  | std.contract.any_of [ Bool, String ]
                  | doc "Whether to verify SSL certificates"
                  | optional,
                ..
              }
            | optional,
          maven
            | Array
              {
                credentialsTypes
                  | Array (
                    std.contract.any_of
                      [
                        js2n.Null,
                        Bool,
                        { _ | Dyn },
                        Array Dyn,
                        Number,
                        String
                      ]
                  )
                  | doc "The credential types for this Maven repository"
                  | optional,
                id
                  | String
                  | doc "The ID of the Maven repository as defined in settings.xml",
                service
                  | String
                  | doc "The reference to the infrastructure service to use",
                ..
              }
            | optional,
          npm
            | Array
              {
                authMode | String | doc "The authentication mode" | optional,
                email
                  | String
                  | doc "The email address to use for authentication"
                  | optional,
                scope
                  | String
                  | doc "The scope for the NPM registry"
                  | optional,
                service
                  | String
                  | doc "The reference to the infrastructure service to use",
                ..
              }
            | optional,
          nuget
            | Array
              {
                authMode | String | doc "The authentication mode" | optional,
                service
                  | String
                  | doc "The reference to the infrastructure service to use",
                sourceName | String | doc "The name of the NuGet source",
                sourcePath | String | doc "The path to the NuGet source",
                sourceProtocolVersion
                  | String
                  | doc "The protocol version of the NuGet source"
                  | optional,
                ..
              }
            | optional,
          yarn
            | Array
              {
                alwaysAuth
                  | std.contract.any_of [ Bool, String ]
                  | doc "Whether to always send authentication"
                  | optional,
                authMode | String | doc "The authentication mode" | optional,
                service
                  | String
                  | doc "The reference to the infrastructure service to use",
                ..
              }
            | optional,
          ..
        }
        | doc "Package manager specific configuration"
        | optional,
      environmentVariables
        | Array (
          std.contract.Sequence
            [
              js2n.OneOf
                [
                  std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      js2n.record.Required [ "secretName" ],
                      Array Dyn
                    ],
                  std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      String,
                      js2n.record.Required [ "value" ],
                      Array Dyn
                    ]
                ],
              {
                name | String | doc "The name of the environment variable",
                secretName
                  | String
                  | doc "The reference to the secret's name from which the value is obtained"
                  | optional,
                value
                  | String
                  | doc "The direct value of the environment variable"
                  | optional,
                ..
              }
            ]
        )
        | doc "Environment variables required for this repository's environment"
        | optional,
      infrastructureServices
        | Array
          {
            credentialsTypes
              | Array (
                std.contract.any_of
                  [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
              )
              | doc "The credential types for this infrastructure service"
              | optional,
            description
              | String
              | doc "Optional description for this infrastructure service"
              | optional,
            name | String | doc "The name of this infrastructure service",
            passwordSecret
              | String
              | doc "The reference to the secret containing the password for this service",
            url | String | doc "The URL of this infrastructure service",
            usernameSecret
              | String
              | doc "The reference to the secret containing the username for this service",
            ..
          }
        | doc "Infrastructure services required for this repository's environment"
        | optional,
      strict
        | Bool
        | doc "If true, sematic errors are treated as fatal."
        | optional,
      ..
    }