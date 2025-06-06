# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "properties.customizations.properties.endpointCustomizations.anyOf.0.anyOf.1.additionalProperties.properties.get" =
        {
            operationId | String | optional,
            pagination
              | {
                inputFields
                  | Array
                    {
                      "in" | std.contract.Equal "query",
                      name | String,
                      type | std.enum.TagOrString | [| 'offset, 'limit |],
                    },
                resultsArray | { defaultPageSize | Number, results | String, },
                type | std.contract.Equal "limitOffset",
              }
              | optional,
            scopes | { _ | Array String } | optional,
            streaming | Bool | optional,
          },
      "properties.customizations.properties.hookDependencies.items" =
        {
            groupId
              | String
              | doc "The groupId of the hook dependency"
              | optional,
            name | String | doc "The name of the hook dependency",
            version | String | doc "The version of the hook dependency",
          },
      "properties.languageOptions.properties.csharp.properties.authors" =
        Array { email | String | optional, name | String, },
      "properties.languageOptions.properties.csharp.properties.githubRepoName" =
        String,
      "properties.languageOptions.properties.csharp.properties.homepage" =
        String,
      "properties.languageOptions.properties.csharp.properties.hookDependencies" =
        Array (
            std.contract.Sequence
              [
                refs."properties.customizations.properties.hookDependencies.items",
                { _ | Dyn }
              ]
          ),
      "properties.languageOptions.properties.csharp.properties.ignoreFiles" =
        Array String,
      "properties.languageOptions.properties.csharp.properties.liblabVersion" =
        js2n.string.Matches "^(\\d+)$",
      "properties.languageOptions.properties.csharp.properties.renameIllegalModelProperties" =
        Bool,
      "properties.languageOptions.properties.csharp.properties.sdkVersion" =
        String,
      "properties.languageOptions.properties.csharp.properties.targetBranch" =
        js2n.string.MinLength 2,
      "properties.languageOptions.properties.go.properties.additionalConstructorParameters" =
        Array
            {
              example
                | String
                | doc "An example value for the variable"
                | optional,
              name | String | doc "The name of the variable",
            },
      "properties.languageOptions.properties.typescript" =
        {
            additionalConstructorParameters
              | refs."properties.languageOptions.properties.go.properties.additionalConstructorParameters"
              | Array Dyn
              | doc "Additional variables to include in the constructor and access in the hooks"
              | optional,
            authors
              | refs."properties.languageOptions.properties.csharp.properties.authors"
              | Array Dyn
              | optional,
            bundle | Bool | doc "Should the SDKs be bundled?" | optional,
            denoteCommon
              | Bool
              | doc "Should the SDK mark common models with the `Common` postfix? (Useful when conflicts occur)"
              | optional,
            exportClassDefault
              | Bool
              | doc "Should the SDK export the main class as default?"
              | optional,
            generateEnumAs
              | std.enum.TagOrString
              | [| 'enum, 'union |]
              | optional,
            githubRepoName
              | refs."properties.languageOptions.properties.csharp.properties.githubRepoName"
              | String
              | optional,
            homepage
              | refs."properties.languageOptions.properties.csharp.properties.homepage"
              | String
              | optional,
            hookDependencies
              | refs."properties.languageOptions.properties.csharp.properties.hookDependencies"
              | Array Dyn
              | optional,
            httpClient
              | std.enum.TagOrString
              | [| 'https, 'fetch, 'axios |]
              | doc "The HTTP client to use"
              | optional,
            ignoreFiles
              | refs."properties.languageOptions.properties.csharp.properties.ignoreFiles"
              | Array Dyn
              | optional,
            liblabVersion
              | refs."properties.languageOptions.properties.csharp.properties.liblabVersion"
              | String
              | doc "The version of the liblab SDK Generator"
              | optional,
            namingStrategy
              | std.enum.TagOrString
              | [| 'originalPropertyNames, '"default" |]
              | optional,
            npmName
              | String
              | doc "The NPM package name to publish to"
              | optional,
            npmOrg
              | String
              | doc "The NPM organization to publish to"
              | optional,
            renameIllegalModelProperties
              | refs."properties.languageOptions.properties.csharp.properties.renameIllegalModelProperties"
              | Bool
              | optional,
            sdkVersion
              | refs."properties.languageOptions.properties.csharp.properties.sdkVersion"
              | String
              | optional,
            targetBranch
              | refs."properties.languageOptions.properties.csharp.properties.targetBranch"
              | String
              | optional,
          },
    }
    in
  {
      apiName | String | doc "name of your API" | optional,
      apiVersion | String | doc "version of your API" | optional,
      auth
        | Array (
          std.contract.Sequence
            [
              std.enum.TagOrString,
              [| 'oauth, 'custom, 'bearer, 'basic, 'apikey |]
            ]
        )
        | optional,
      baseUrl
        | js2n.string.MinLength 1
        | doc "The Base URL of your SDK"
        | optional,
      createDocs
        | Bool
        | doc m%"
          Should developer documentation be generated?
           docs are supported for: java, python and typescript
        "%
        | optional,
      customizations
        | {
          authentication
            | {
              access
                | {
                  prefix
                    | String
                    | doc "The prefix to use for the access authentication"
                    | optional,
                }
                | optional,
              apiKey
                | {
                  header
                    | String
                    | doc "The header to use for the api key authentication"
                    | optional,
                }
                | optional,
              basic | { enabled | Bool, } | optional,
              custom
                | {
                  prefix
                    | String
                    | doc "The prefix to use for the custom authentication"
                    | optional,
                }
                | optional,
              oauth
                | {
                  basic
                    | Bool
                    | doc "Use basic authentication for the oauth token"
                    | optional,
                  enabled | Bool | doc "Enable oauth authentication" | optional,
                  securityScheme
                    | {
                      definition
                        | {  .. }
                        | doc "The security scheme definition for the oauth.",
                      name
                        | String
                        | doc "The name of the security scheme for the oauth",
                    }
                    | doc "The security scheme definition for the oauth"
                    | optional,
                  tokenEndpoint
                    | {
                      definition
                        | {  .. }
                        | doc "The definition of the token endpoint",
                      method
                        | std.enum.TagOrString
                        | [| 'post, 'get |]
                        | doc "The method to use for the oauth token endpoint"
                        | optional,
                      path
                        | String
                        | doc "The path to use for the oauth token endpoint. This is used to retrieve the oauth token from the server",
                    }
                    | optional,
                }
                | optional,
            }
            | optional,
          buildAllModels
            | Bool
            | doc "Should unreferenced models be built?"
            | optional,
          devContainer
            | Bool
            | doc "Should example dev container files be generated?"
            | optional,
          documentation
            | {
              enhancedApiSpec
                | {
                  customOutputName
                    | String
                    | doc "Name of the output file, will default to enhancedApiSpec.json"
                    | optional,
                }
                | optional,
              snippets
                | {
                  format
                    | std.enum.TagOrString
                    | [| 'json, 'md |]
                    | doc "The format of the documentation code snippets"
                    | optional,
                }
                | optional,
            }
            | optional,
          endpointCustomizations
            | std.contract.any_of
              [
                std.contract.not js2n.Always,
                js2n.record.Record
                  {
                    additional =
                      'Some
                          (js2n.record.Record
                            {
                              additional = 'Some js2n.Always,
                              patterns = {},
                              properties =
                                {
                                    delete =
                                      refs."properties.customizations.properties.endpointCustomizations.anyOf.0.anyOf.1.additionalProperties.properties.get",
                                    get =
                                      js2n.record.Record
                                          {
                                            additional = 'None,
                                            patterns = {},
                                            properties =
                                              {
                                                  operationId = String,
                                                  pagination =
                                                    js2n.record.Record
                                                        {
                                                          additional = 'None,
                                                          patterns = {},
                                                          properties =
                                                            {
                                                                inputFields =
                                                                  js2n.array.ArrayOf
                                                                      (js2n.record.Record
                                                                        {
                                                                          additional =
                                                                            'None,
                                                                          patterns =
                                                                            {},
                                                                          properties =
                                                                            {
                                                                                "in" =
                                                                                  js2n.Const
                                                                                      "query",
                                                                                name =
                                                                                  String,
                                                                                type =
                                                                                  std.contract.Sequence
                                                                                      [
                                                                                        std.enum.TagOrString,
                                                                                        [|
                                                                                          'offset,
                                                                                          'limit
                                                                                        |]
                                                                                      ],
                                                                              },
                                                                          required =
                                                                            {
                                                                                "in" =
                                                                                  true,
                                                                                name =
                                                                                  true,
                                                                                type =
                                                                                  true,
                                                                              },
                                                                        }),
                                                                resultsArray =
                                                                  js2n.record.Record
                                                                      {
                                                                        additional =
                                                                          'None,
                                                                        patterns =
                                                                          {},
                                                                        properties =
                                                                          {
                                                                              defaultPageSize =
                                                                                Number,
                                                                              results =
                                                                                String,
                                                                            },
                                                                        required =
                                                                          {
                                                                              defaultPageSize =
                                                                                true,
                                                                              results =
                                                                                true,
                                                                            },
                                                                      },
                                                                type =
                                                                  js2n.Const
                                                                      "limitOffset",
                                                              },
                                                          required =
                                                            {
                                                                inputFields =
                                                                  true,
                                                                resultsArray =
                                                                  true,
                                                                type = true,
                                                              },
                                                        },
                                                  scopes =
                                                    js2n.record.Record
                                                        {
                                                          additional =
                                                            'Some
                                                                (js2n.array.ArrayOf
                                                                  String),
                                                          patterns = {},
                                                          properties = {},
                                                          required = {},
                                                        },
                                                  streaming = Bool,
                                                },
                                            required = {},
                                          },
                                    patch =
                                      refs."properties.customizations.properties.endpointCustomizations.anyOf.0.anyOf.1.additionalProperties.properties.get",
                                    post =
                                      refs."properties.customizations.properties.endpointCustomizations.anyOf.0.anyOf.1.additionalProperties.properties.get",
                                    put =
                                      refs."properties.customizations.properties.endpointCustomizations.anyOf.0.anyOf.1.additionalProperties.properties.get",
                                  },
                              required = {},
                            }),
                    patterns = {},
                    properties = {},
                    required = {},
                  },
                js2n.string.Matches "^[\\w./\\\\-]+$",
                String
              ]
            | doc "Customizations for specific endpoints"
            | optional,
          environmentVariables
            | Array
              {
                description
                  | String
                  | doc "A description of the environment variable",
                name | String | doc "The name of the environment variable",
              }
            | optional,
          environments
            | Array
              {
                name | String | doc "The name of the environment",
                url | String | doc "The URL of the environment",
              }
            | optional,
          generateEnv
            | Bool
            | doc "Should example .env files be generated?"
            | optional,
          hookDependencies
            | Array
              {
                groupId
                  | String
                  | doc "The groupId of the hook dependency"
                  | optional,
                name | String | doc "The name of the hook dependency",
                version | String | doc "The version of the hook dependency",
              }
            | optional,
          includeOptionalSnippetParameters
            | Bool
            | doc "toggles whether optional parameters are included in code snippets in generated SDK documentation."
            | optional,
          inferServiceNames
            | Bool
            | doc "Should the SDKs infer service names?"
            | optional,
          injectedModels
            | Array String
            | doc "A list of all custom models paths"
            | optional,
          license
            | {
              type
                | std.enum.TagOrString
                | [| 'CUSTOM, 'NONE, 'APACHE, 'GPL3, 'MIT |]
                | doc "What license should the SDKs be covered under?"
                | optional,
              url | String | doc "URL for a CUSTOM license" | optional,
            }
            | doc "Optional configuration for licensing the SDKs"
            | optional,
          readme
            | {
              apiDescription
                | String
                | doc "Overwrites the SDK README description"
                | optional,
            }
            | optional,
          refreshToken
            | {
              bearerKey | String | doc "The key to use for the bearer token",
              endpoint
                | String
                | doc "The endpoint to use for refreshing the token",
              refreshKey | String | doc "The key to use for the refresh token",
            }
            | doc "The parameters for the refresh token system"
            | optional,
          responseHeaders
            | Bool
            | doc "Should the SDKs return a response with both the data and headers?"
            | optional,
          retry
            | {
              backOffFactor
                | js2n.number.ExclusiveMinimum 0
                | doc "What is the exponent base used to calulate wait times?"
                | optional,
              enabled
                | Bool
                | doc "Should the SDKs include retry behavior?"
                | optional,
              httpCodesToRetry
                | Array (
                  std.contract.Sequence
                    [
                      std.number.Integer,
                      js2n.number.Maximum 599,
                      js2n.number.Minimum 200
                    ]
                )
                | doc "What HTTP codes should the SDKs retry on?"
                | optional,
              httpMethodsToRetry
                | Array (
                  std.contract.Sequence
                    [
                      std.enum.TagOrString,
                      [|
                        'TRACE,
                        'CONNECT,
                        'OPTIONS,
                        'HEAD,
                        'PATCH,
                        'DELETE,
                        'PUT,
                        'POST,
                        'GET
                      |]
                    ]
                )
                | doc "What HTTP methods should the SDKs retry on?"
                | optional,
              maxAttempts
                | Number
                | doc "How many attempts should the SDKs make before giving up?"
                | optional,
              maxDelay
                | js2n.number.Minimum 0
                | doc "What is the maximum time between attempts in milliseconds?"
                | optional,
              retryDelay
                | Number
                | doc "How long should the SDKs wait between attempts in milliseconds?",
              retryDelayJitter
                | js2n.number.Minimum 0
                | doc "What is the maximum random jitter applied to wait times in milliseconds?"
                | optional,
            }
            | doc "Retry functionality customization"
            | optional,
        }
        | doc "Customizations to SDKs"
        | optional,
      docs
        | Array (
          std.contract.Sequence
            [ std.enum.TagOrString, [| 'enhancedApiSpec, 'snippets, 'api |] ]
        )
        | doc "Should API documentation or code snippets be generated?"
        | optional,
      integrations
        | {
          enhancedApiSpec
            | {
              githubRepoName
                | refs."properties.languageOptions.properties.csharp.properties.githubRepoName",
              mintlify
                | {
                  codeSamplesLanguages
                    | Array String
                    | doc "Selecting the languages to enhance and include in the mintlify integration. The selected languages will override the languages shown in the mintlify UI."
                    | optional,
                }
                | optional,
              provider
                | std.enum.TagOrString
                | [| 'readmeIO, 'redocly, 'mintlify |]
                | doc "Selecting the provider will enable the liblab service to generate the required files for your integration provider",
              readmeIO | { openapiPath | String | optional, } | optional,
              redocly | { openapiPath | String | optional, } | optional,
              targetBranch
                | refs."properties.languageOptions.properties.csharp.properties.targetBranch"
                | doc "The target to branch off from when opening a PR, if not specified will default to main branch"
                | optional,
            }
            | doc "API documentation integration object"
            | optional,
        }
        | optional,
      languageOptions
        | {
          csharp
            | {
              authors
                | Array { email | String | optional, name | String, }
                | doc "The list of authors who contribute to the SDK (In TypeScript the first is the only one displayed)"
                | optional,
              githubRepoName
                | String
                | doc "The name of the Github Repo that will be Pull Requested to"
                | optional,
              homepage | String | optional,
              hookDependencies
                | Array
                  refs."properties.customizations.properties.hookDependencies.items"
                | optional,
              ignoreFiles
                | Array String
                | doc "List of files that shouldn't be produced by liblab, used for when you want to keep specific files safe from changes"
                | optional,
              liblabVersion
                | js2n.string.Matches "^(\\d+)$"
                | doc "The version of the liblab SDK Generator"
                | optional,
              packageId
                | String
                | doc "The PackageId of your C# SDK. It identifies your NuGet package."
                | optional,
              renameIllegalModelProperties
                | Bool
                | doc "renames all model properties with illegal names, during the SDK generation"
                | optional,
              sdkVersion | String | doc "The version of the SDK" | optional,
              targetBranch
                | js2n.string.MinLength 2
                | doc "The target to branch off from when opening a PR, if not specified will default to main branch"
                | optional,
            }
            | doc "C# specific options"
            | optional,
          go
            | {
              additionalConstructorParameters
                | Array
                  {
                    example
                      | String
                      | doc "An example value for the variable"
                      | optional,
                    name | String | doc "The name of the variable",
                  }
                | doc "Additional variables to include in the constructor and access in the hooks"
                | optional,
              authors
                | refs."properties.languageOptions.properties.csharp.properties.authors"
                | optional,
              githubRepoName
                | refs."properties.languageOptions.properties.csharp.properties.githubRepoName"
                | optional,
              goModuleName | String | doc "The name of the go module",
              homepage
                | refs."properties.languageOptions.properties.csharp.properties.homepage"
                | optional,
              hookDependencies
                | refs."properties.languageOptions.properties.csharp.properties.hookDependencies"
                | optional,
              ignoreFiles
                | refs."properties.languageOptions.properties.csharp.properties.ignoreFiles"
                | optional,
              liblabVersion
                | refs."properties.languageOptions.properties.csharp.properties.liblabVersion"
                | optional,
              renameIllegalModelProperties
                | refs."properties.languageOptions.properties.csharp.properties.renameIllegalModelProperties"
                | optional,
              sdkVersion
                | refs."properties.languageOptions.properties.csharp.properties.sdkVersion"
                | optional,
              targetBranch
                | refs."properties.languageOptions.properties.csharp.properties.targetBranch"
                | optional,
            }
            | doc "go specific options"
            | optional,
          java
            | {
              additionalConstructorParameters
                | refs."properties.languageOptions.properties.go.properties.additionalConstructorParameters"
                | doc "Additional variables to include in the constructor and access in the hooks"
                | optional,
              artifactId
                | String
                | doc "The artifactId of the Java package"
                | optional,
              authors
                | refs."properties.languageOptions.properties.csharp.properties.authors"
                | optional,
              developers
                | Array
                  {
                    email | String | doc "The email of the developer",
                    name | String | doc "The name of the developer",
                    organization
                      | String
                      | doc "The organization of the developer",
                    organizationUrl
                      | String
                      | doc "The organization URL of the developer. It is acceptable to link to your profile on GitHub or other forges, if you do no have a website.",
                  }
                | doc "The developers' information to add to pom.xml for project association"
                | optional,
              githubRepoName
                | refs."properties.languageOptions.properties.csharp.properties.githubRepoName"
                | optional,
              groupId
                | String
                | doc "The groupId of the Java package"
                | optional,
              homepage
                | refs."properties.languageOptions.properties.csharp.properties.homepage"
                | optional,
              hookDependencies
                | refs."properties.languageOptions.properties.csharp.properties.hookDependencies"
                | optional,
              ignoreFiles
                | refs."properties.languageOptions.properties.csharp.properties.ignoreFiles"
                | optional,
              includeKotlinSnippets
                | Bool
                | doc "Include Kotlin snippets and documentation in the generated SDK"
                | optional,
              liblabVersion
                | refs."properties.languageOptions.properties.csharp.properties.liblabVersion"
                | doc "The version of the liblab SDK Generator"
                | optional,
              packageName
                | String
                | doc "The name of the Java package"
                | optional,
              renameIllegalModelProperties
                | refs."properties.languageOptions.properties.csharp.properties.renameIllegalModelProperties"
                | optional,
              sdkVersion
                | refs."properties.languageOptions.properties.csharp.properties.sdkVersion"
                | optional,
              targetBranch
                | refs."properties.languageOptions.properties.csharp.properties.targetBranch"
                | optional,
            }
            | doc "Java specific options"
            | optional,
          mcp
            | refs."properties.languageOptions.properties.typescript"
            | doc "TypeScript specific options"
            | optional,
          php
            | {
              additionalConstructorParameters
                | refs."properties.languageOptions.properties.go.properties.additionalConstructorParameters"
                | doc "Additional variables to include in the constructor and access in the hooks"
                | optional,
              authors
                | refs."properties.languageOptions.properties.csharp.properties.authors"
                | optional,
              githubRepoName
                | refs."properties.languageOptions.properties.csharp.properties.githubRepoName"
                | optional,
              homepage
                | refs."properties.languageOptions.properties.csharp.properties.homepage"
                | optional,
              hookDependencies
                | refs."properties.languageOptions.properties.csharp.properties.hookDependencies"
                | optional,
              ignoreFiles
                | refs."properties.languageOptions.properties.csharp.properties.ignoreFiles"
                | optional,
              liblabVersion
                | refs."properties.languageOptions.properties.csharp.properties.liblabVersion"
                | optional,
              packageName
                | js2n.string.Matches
                  "^[\\da-z]([._-]?[\\da-z]+)*\\/[\\da-z](([._]|-{1,2})?[\\da-z]+)*$"
                | doc "The name of the composer package"
                | optional,
              renameIllegalModelProperties
                | refs."properties.languageOptions.properties.csharp.properties.renameIllegalModelProperties"
                | optional,
              sdkVersion
                | refs."properties.languageOptions.properties.csharp.properties.sdkVersion"
                | optional,
              targetBranch
                | refs."properties.languageOptions.properties.csharp.properties.targetBranch"
                | optional,
            }
            | doc "PHP specific options"
            | optional,
          python
            | {
              additionalConstructorParameters
                | refs."properties.languageOptions.properties.go.properties.additionalConstructorParameters"
                | doc "Additional variables to include in the constructor and access in the hooks"
                | optional,
              alwaysInitializeOptionals | Bool | optional,
              authors
                | refs."properties.languageOptions.properties.csharp.properties.authors"
                | optional,
              classifiers | Array String | optional,
              enforceRequestValidation
                | Bool
                | doc "Should the Python SDK enforce request validation?"
                | optional,
              githubRepoName
                | refs."properties.languageOptions.properties.csharp.properties.githubRepoName"
                | optional,
              homepage
                | refs."properties.languageOptions.properties.csharp.properties.homepage"
                | optional,
              hookDependencies
                | refs."properties.languageOptions.properties.csharp.properties.hookDependencies"
                | optional,
              ignoreFiles
                | refs."properties.languageOptions.properties.csharp.properties.ignoreFiles"
                | optional,
              liblabVersion
                | refs."properties.languageOptions.properties.csharp.properties.liblabVersion"
                | optional,
              projectUrls
                | js2n.record.PropertyNames
                  (std.contract.any_of
                    [
                      js2n.Null,
                      Bool,
                      Number,
                      js2n.string.MinLength 1,
                      { _ | Dyn },
                      Array Dyn
                    ])
                | { _ | String }
                | optional,
              pypiPackageName
                | String
                | doc "The name of the Python project"
                | optional,
              renameIllegalModelProperties
                | refs."properties.languageOptions.properties.csharp.properties.renameIllegalModelProperties"
                | optional,
              sdkVersion
                | refs."properties.languageOptions.properties.csharp.properties.sdkVersion"
                | optional,
              strictVersion
                | Bool
                | doc "Should the version be strict?"
                | optional,
              targetBranch
                | refs."properties.languageOptions.properties.csharp.properties.targetBranch"
                | optional,
            }
            | doc "Python specific options"
            | optional,
          swift
            | {
              authors
                | refs."properties.languageOptions.properties.csharp.properties.authors"
                | optional,
              githubRepoName
                | refs."properties.languageOptions.properties.csharp.properties.githubRepoName"
                | optional,
              homepage
                | refs."properties.languageOptions.properties.csharp.properties.homepage"
                | optional,
              hookDependencies
                | refs."properties.languageOptions.properties.csharp.properties.hookDependencies"
                | optional,
              ignoreFiles
                | refs."properties.languageOptions.properties.csharp.properties.ignoreFiles"
                | optional,
              liblabVersion
                | refs."properties.languageOptions.properties.csharp.properties.liblabVersion"
                | optional,
              renameIllegalModelProperties
                | refs."properties.languageOptions.properties.csharp.properties.renameIllegalModelProperties"
                | optional,
              sdkVersion
                | refs."properties.languageOptions.properties.csharp.properties.sdkVersion"
                | optional,
              targetBranch
                | refs."properties.languageOptions.properties.csharp.properties.targetBranch"
                | optional,
            }
            | doc "Swift specific options"
            | optional,
          terraform
            | {
              authors
                | refs."properties.languageOptions.properties.csharp.properties.authors"
                | optional,
              githubRepoName
                | refs."properties.languageOptions.properties.csharp.properties.githubRepoName"
                | optional,
              hideComputedDiff
                | Bool
                | doc "Should the terraform provider hide computed diff? Default is false"
                | optional,
              homepage
                | refs."properties.languageOptions.properties.csharp.properties.homepage"
                | optional,
              hookDependencies
                | refs."properties.languageOptions.properties.csharp.properties.hookDependencies"
                | optional,
              ignoreFiles
                | refs."properties.languageOptions.properties.csharp.properties.ignoreFiles"
                | optional,
              liblabVersion
                | refs."properties.languageOptions.properties.csharp.properties.liblabVersion"
                | optional,
              mockAcceptance
                | Bool
                | doc "Should the terraform provider mock acceptance tests? Default is true"
                | optional,
              providerGoModuleName
                | String
                | doc "The name of the go module used in the terraform provider module",
              providerName
                | String
                | doc "The name of the terraform provider module",
              providerSchemaConfig
                | {
                  addressKey | String | optional,
                  authTokenKey | String | optional,
                }
                | optional,
              providerVersion
                | String
                | doc "The version of the terraform provider module",
              renameIllegalModelProperties
                | refs."properties.languageOptions.properties.csharp.properties.renameIllegalModelProperties"
                | optional,
              sdkVersion
                | refs."properties.languageOptions.properties.csharp.properties.sdkVersion"
                | optional,
              targetBranch
                | refs."properties.languageOptions.properties.csharp.properties.targetBranch"
                | optional,
            }
            | doc "terraform provider specific options"
            | optional,
          typescript
            | {
              additionalConstructorParameters
                | refs."properties.languageOptions.properties.go.properties.additionalConstructorParameters"
                | doc "Additional variables to include in the constructor and access in the hooks"
                | optional,
              authors
                | refs."properties.languageOptions.properties.csharp.properties.authors"
                | optional,
              bundle | Bool | doc "Should the SDKs be bundled?" | optional,
              denoteCommon
                | Bool
                | doc "Should the SDK mark common models with the `Common` postfix? (Useful when conflicts occur)"
                | optional,
              exportClassDefault
                | Bool
                | doc "Should the SDK export the main class as default?"
                | optional,
              generateEnumAs
                | std.enum.TagOrString
                | [| 'enum, 'union |]
                | optional,
              githubRepoName
                | refs."properties.languageOptions.properties.csharp.properties.githubRepoName"
                | optional,
              homepage
                | refs."properties.languageOptions.properties.csharp.properties.homepage"
                | optional,
              hookDependencies
                | refs."properties.languageOptions.properties.csharp.properties.hookDependencies"
                | optional,
              httpClient
                | std.enum.TagOrString
                | [| 'https, 'fetch, 'axios |]
                | doc "The HTTP client to use"
                | optional,
              ignoreFiles
                | refs."properties.languageOptions.properties.csharp.properties.ignoreFiles"
                | optional,
              liblabVersion
                | refs."properties.languageOptions.properties.csharp.properties.liblabVersion"
                | doc "The version of the liblab SDK Generator"
                | optional,
              namingStrategy
                | std.enum.TagOrString
                | [| 'originalPropertyNames, '"default" |]
                | optional,
              npmName
                | String
                | doc "The NPM package name to publish to"
                | optional,
              npmOrg
                | String
                | doc "The NPM organization to publish to"
                | optional,
              renameIllegalModelProperties
                | refs."properties.languageOptions.properties.csharp.properties.renameIllegalModelProperties"
                | optional,
              sdkVersion
                | refs."properties.languageOptions.properties.csharp.properties.sdkVersion"
                | optional,
              targetBranch
                | refs."properties.languageOptions.properties.csharp.properties.targetBranch"
                | optional,
            }
            | doc "TypeScript specific options"
            | optional,
        }
        | doc "Language specific options"
        | optional,
      languages
        | Array (
          std.contract.Sequence
            [
              std.enum.TagOrString,
              [|
                'mcp,
                'php,
                'swift,
                'terraform,
                'go,
                'csharp,
                'typescript,
                'python,
                'java
              |]
            ]
        )
        | doc "The list of languages you want to generate SDKs for",
      liblabVersion
        | refs."properties.languageOptions.properties.csharp.properties.liblabVersion"
        | doc "The version of the liblab SDK Generator"
        | optional,
      mcp
        | {
          generate | Bool | doc "Should mcp server be generated?" | optional,
        }
        | doc "MCP server options"
        | optional,
      publishing
        | { githubOrg | String | doc "The GitHub organization to publish to", }
        | doc "Publishing options"
        | optional,
      sdkName | js2n.string.MinLength 1 | doc "The name of your SDK" | optional,
      specFilePath
        | js2n.string.MinLength 1
        | doc "A local relative path to your specification file or a publicly reachable URL to the spec file",
      validationsToIgnore
        | Array
          {
            code | String | doc "The rule code to ignore",
            path
              | Array (std.contract.any_of [ Number, String ])
              | doc "Path that should be ignored"
              | optional,
          }
        | optional,
      workflows
        | {
          outputName
            | String
            | doc "The desired output name for the workflow"
            | optional,
          path
            | String
            | doc "A local relative path to your arrazo specification file or a publicly reachable URL to the arrazo spec file",
        }
        | doc "The workflow configuration"
        | optional,
    }