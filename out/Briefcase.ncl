# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.awsBoto3" =
        std.contract.Sequence
            [
              refs."definitions.resource",
              {
                key_id
                  | refs."definitions.property"
                  | std.contract.any_of [ { _ | Dyn }, String ]
                  | doc "AWS Access Key ID"
                  | optional,
                region_name
                  | refs."definitions.property"
                  | std.contract.any_of [ { _ | Dyn }, String ]
                  | doc "Region name"
                  | optional,
                ..
              }
            ],
      "definitions.azureTenantId" =
        {
            tenantid
              | refs."definitions.property"
              | std.contract.any_of [ { _ | Dyn }, String ]
              | doc "Azure tenant id (a GUID)"
              | optional,
            ..
          },
      "definitions.property" =
        std.contract.any_of
            [
              String,
              {
                key
                  | String
                  | doc "Overrides the key to lookup the value for the property."
                  | optional,
                ..
              }
            ],
      "definitions.resource" =
        {
            credentialprovider
              | String
              | doc "Name of the credential provider to be used."
              | optional,
            metadata
              | { _ | Dyn }
              | doc "Allows to attach user-definied metadata to resources"
              | optional,
            name | String | doc "The name of this resource" | optional,
            secret
              | refs."definitions.property"
              | std.contract.any_of [ { _ | Dyn }, String ]
              | optional,
            ..
          },
    }
    in
  {
      amazon
        | {
          comprehend
            | Array (
              std.contract.Sequence [ refs."definitions.awsBoto3", { _ | Dyn } ]
            )
            | optional,
          rekognition
            | Array (
              std.contract.Sequence [ refs."definitions.awsBoto3", { _ | Dyn } ]
            )
            | optional,
          ..
        }
        | doc "Amazon Web Services (AWS)"
        | optional,
      azure
        | {
          auth
            | {
              devicecode
                | Array (
                  std.contract.Sequence
                    [
                      refs."definitions.resource",
                      refs."definitions.azureTenantId",
                      {
                        name
                          | std.contract.any_of
                            [
                              js2n.Null,
                              Bool,
                              Number,
                              String,
                              { _ | Dyn },
                              Array Dyn
                            ]
                          | optional,
                        ..
                      }
                    ]
                )
                | doc "Azure Device Code authentication"
                | optional,
              managedserviceidentity
                | Array refs."definitions.resource"
                | doc "Azure Managed Service Idenity"
                | optional,
              serviceprincipal
                | Array (
                  std.contract.Sequence
                    [
                      refs."definitions.resource",
                      refs."definitions.azureTenantId",
                      {
                        clientid
                          | refs."definitions.property"
                          | doc "TODO The client id (a guid)"
                          | optional,
                        name
                          | std.contract.any_of
                            [
                              js2n.Null,
                              Bool,
                              Number,
                              String,
                              { _ | Dyn },
                              Array Dyn
                            ]
                          | optional,
                        ..
                      }
                    ]
                )
                | doc "Azure Service Princiapl"
                | optional,
              ..
            }
            | doc "Azure authentication services"
            | optional,
          cognitiveservice
            | {
              anomalydetection
                | Array (
                  std.contract.Sequence
                    [
                      refs."definitions.resource",
                      {
                        url
                          | refs."definitions.property"
                          | doc "End point URL for Azure Cognitive Service"
                          | optional,
                        ..
                      }
                    ]
                )
                | doc "Azure Cognitive Service Anomaly Detection"
                | optional,
              contentmoderator
                | Array (
                  std.contract.Sequence
                    [
                      refs."definitions.resource",
                      {
                        url
                          | refs."definitions.property"
                          | doc "End point URL for Azure Cognitive Service"
                          | optional,
                        ..
                      }
                    ]
                )
                | doc "Azure Cognitive Service Content Moderator"
                | optional,
              face
                | Array (
                  std.contract.Sequence
                    [
                      refs."definitions.resource",
                      {
                        url
                          | refs."definitions.property"
                          | doc "End point URL for Azure Cognitive Service"
                          | optional,
                        ..
                      }
                    ]
                )
                | doc "Azure Cognitive Service Face"
                | optional,
              spellcheck
                | Array (
                  std.contract.Sequence
                    [
                      refs."definitions.resource",
                      {
                        url
                          | refs."definitions.property"
                          | doc "End point URL for Azure Cognitive Service"
                          | optional,
                        ..
                      }
                    ]
                )
                | doc "Azure Cognitive Service Spell Checker"
                | optional,
              textanalytics
                | Array (
                  std.contract.Sequence
                    [
                      refs."definitions.resource",
                      {
                        url
                          | refs."definitions.property"
                          | doc "End point URL for Azure Cognitive Service"
                          | optional,
                        ..
                      }
                    ]
                )
                | doc "Azure Cognitive Service Text Analytics"
                | optional,
              vision
                | Array (
                  std.contract.Sequence
                    [
                      refs."definitions.resource",
                      {
                        url
                          | refs."definitions.property"
                          | doc "End point URL for Azure Cognitive Service"
                          | optional,
                        ..
                      }
                    ]
                )
                | doc "Azure Cognitive Service Vision"
                | optional,
              ..
            }
            | doc "Azure Cognitive Services"
            | optional,
          keyvault
            | Array (
              std.contract.Sequence
                [
                  refs."definitions.resource",
                  refs."definitions.azureTenantId",
                  {
                    credential
                      | refs."definitions.property"
                      | doc "Name of credential resource. E.g. device code or service principal resource"
                      | optional,
                    dnsname
                      | refs."definitions.property"
                      | doc "DNS for the Azure KeyVault instance"
                      | optional,
                    name
                      | std.contract.any_of
                        [
                          js2n.Null,
                          Bool,
                          Number,
                          String,
                          { _ | Dyn },
                          Array Dyn
                        ]
                      | optional,
                    ..
                  }
                ]
            )
            | doc "Azure KeyVaults"
            | optional,
          storage
            | {
              account
                | Array (
                  std.contract.Sequence
                    [
                      refs."definitions.resource",
                      {
                        accountkey
                          | refs."definitions.property"
                          | doc "Azure blob account key"
                          | optional,
                        accountname
                          | refs."definitions.property"
                          | doc "Azure blob account name"
                          | optional,
                        secrettype
                          | std.enum.TagOrString
                          | [| 'sas, 'key |]
                          | refs."definitions.property"
                          | doc "Is the secret a key or SAS token"
                          | optional,
                        ..
                      }
                    ]
                )
                | doc "Azure Storage Account"
                | optional,
              blob
                | Array (
                  std.contract.Sequence
                    [
                      refs."definitions.resource",
                      {
                        account
                          | refs."definitions.property"
                          | doc "Name of Azure Storage account resource object"
                          | optional,
                        containername
                          | refs."definitions.property"
                          | doc "Name of container"
                          | optional,
                        path
                          | refs."definitions.property"
                          | doc "Path to blob"
                          | optional,
                        url
                          | refs."definitions.property"
                          | doc "URL to Azure blob"
                          | optional,
                        ..
                      }
                    ]
                )
                | doc "Azure Blob Storage"
                | optional,
              ..
            }
            | doc "Azure Storage Services"
            | optional,
          subscription
            | Array (
              std.contract.Sequence
                [
                  refs."definitions.resource",
                  {
                    id
                      | refs."definitions.property"
                      | doc "Azure subscription id (e.g. guids)"
                      | optional,
                    ids
                      | Array String
                      | doc "List of Azure subscription ids (e.g. guids)"
                      | optional,
                    ..
                  }
                ]
            )
            | doc "Azure Subscription"
            | optional,
          ..
        }
        | doc "Azure services"
        | optional,
      clarifai
        | {
          moderation
            | Array refs."definitions.resource"
            | doc "Clarifai Moderation image SDK"
            | optional,
          ..
        }
        | doc "ClarifAI Services"
        | optional,
      google
        | {
          language
            | Array refs."definitions.resource"
            | doc "Google NER service"
            | optional,
          video
            | Array refs."definitions.resource"
            | doc "Google video intelligence for content moderation annotation"
            | optional,
          vision
            | Array refs."definitions.resource"
            | doc "Google Face Detect SDK"
            | optional,
          ..
        }
        | doc "Google Cloud Platform services"
        | optional,
      python
        | std.contract.any_of
          [
            js2n.Null,
            Bool,
            Number,
            String,
            {
              dotenv
                | refs."definitions.resource"
                | doc ".env file Credential Provider"
                | optional,
              env
                | refs."definitions.resource"
                | doc "Environment variable Credential Provider"
                | optional,
              jupyterlabCredentialProvider
                | refs."definitions.resource"
                | doc "JupyterLab Credential Provider"
                | optional,
              keyring
                | Array (
                  std.contract.Sequence
                    [
                      refs."definitions.resource",
                      {
                        service_name
                          | refs."definitions.property"
                          | doc "Service name used when calling get_password"
                          | optional,
                        ..
                      }
                    ]
                )
                | doc "Python KeyRing Credential Provider (https://pypi.org/project/keyring)"
                | optional,
              sqlalchemy
                | Array (
                  std.contract.Sequence
                    [
                      refs."definitions.resource",
                      {
                        database
                          | refs."definitions.property"
                          | doc "The database name."
                          | optional,
                        drivername
                          | refs."definitions.property"
                          | doc "the name of the database backend. This name will correspond to a module in sqlalchemy/databases or a third party plug-in."
                          | optional,
                        host
                          | refs."definitions.property"
                          | doc "The name of the host."
                          | optional,
                        port
                          | refs."definitions.property"
                          | doc "The port number."
                          | optional,
                        query
                          | refs."definitions.property"
                          | doc "A dictionary of options to be passed to the dialect and/or the DBAPI upon connect."
                          | optional,
                        url
                          | refs."definitions.property"
                          | doc "drivername://username:password@host/path?query"
                          | optional,
                        username
                          | refs."definitions.property"
                          | doc "The user name."
                          | optional,
                        ..
                      }
                    ]
                )
                | doc "Python SQL Alchemy (https://www.sqlalchemy.org/)"
                | optional,
              ..
            },
            Array Dyn
          ]
        | doc "Python specific resources"
        | optional,
      ..
    }