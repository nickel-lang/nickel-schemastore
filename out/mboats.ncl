# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.MBOATS" =
        {
            appId
              | js2n.string.Matches "^[\\w]{5,7}$"
              | doc "5-7 letter capitalized abbreviated word representing the application",
            appName | String | doc "Application Name",
            awsec2
              | refs."definitions.MBOATS.definitions.AWSEC2"
              | { _ | Dyn }
              | optional,
            awss3
              | refs."definitions.MBOATS.definitions.AWSS3"
              | { _ | Dyn }
              | optional,
            clientParallelism
              | std.enum.TagOrString
              | [| 'interleaved, 'stacked |]
              | optional,
            clients
              | std.enum.TagOrString
              | [| 'edge, 'firefox, 'chrome |]
              | optional,
            elementFindTimeout
              | std.number.Integer
              | js2n.number.Maximum 15
              | js2n.number.Minimum 3
              | optional,
            email
              | refs."definitions.MBOATS.definitions.Email"
              | { _ | Dyn }
              | optional,
            headless | Bool | optional,
            invocationCount
              | std.number.Integer
              | js2n.number.Maximum 5
              | js2n.number.Minimum 1
              | optional,
            mode
              | std.enum.TagOrString
              | [| 'remote, 'local |]
              | doc "The mode of test execution."
              | optional,
            mongodb
              | refs."definitions.MBOATS.definitions.MongoDB"
              | { _ | Dyn }
              | optional,
            networkLogs
              | refs."definitions.MBOATS.definitions.NetworkLogs"
              | { _ | Dyn }
              | optional,
            pageLoadTimeout
              | std.number.Integer
              | js2n.number.Maximum 120000
              | js2n.number.Minimum 30000
              | optional,
            runnerParallelism
              | std.enum.TagOrString
              | [| 'scenario, 'feature |]
              | optional,
            soundfx | Bool | optional,
            threadCount
              | std.number.Integer
              | js2n.number.Maximum 5
              | js2n.number.Minimum 1
              | optional,
            threadbare
              | refs."definitions.MBOATS.definitions.Threadbare"
              | { _ | Dyn }
              | optional,
            video
              | refs."definitions.MBOATS.definitions.Video"
              | { _ | Dyn }
              | optional,
          },
      "definitions.MBOATS.definitions.AWSEC2" =
        { publicName | String, serverPort | std.number.Integer, },
      "definitions.MBOATS.definitions.AWSS3" =
        {
            accessKeyId | String,
            bucket | String,
            enabled | Bool,
            identityPoolId | String,
            region | String,
            secretAccessKey | String,
          },
      "definitions.MBOATS.definitions.Email" =
        {
            auth
              | refs."definitions.MBOATS.definitions.Email.definitions.Auth"
              | { _ | Dyn },
            invitationLinkRegex | String,
            oktaTokenRegex | String,
          },
      "definitions.MBOATS.definitions.Email.definitions.Auth" =
        {
            "$clientId" | String,
            "$clientSecret" | String,
            "$refreshToken" | String,
            "$refreshUrl" | String,
          },
      "definitions.MBOATS.definitions.MongoDB" =
        {
            collection
              | refs."definitions.MBOATS.definitions.MongoDB.definitions.Collection"
              | { _ | Dyn },
            connectionString | String,
            database | String,
            enabled | Bool,
            password | String,
            username | String,
          },
      "definitions.MBOATS.definitions.MongoDB.definitions.Collection" =
        { report | String, },
      "definitions.MBOATS.definitions.NetworkLogs" =
        {
            enabled | Bool,
            request
              | refs."definitions.MBOATS.definitions.NetworkLogs.definitions.Request"
              | { _ | Dyn },
            response
              | refs."definitions.MBOATS.definitions.NetworkLogs.definitions.Request"
              | { _ | Dyn },
          },
      "definitions.MBOATS.definitions.NetworkLogs.definitions.Request" =
        { body | Bool, cookies | Bool, headers | Bool, },
      "definitions.MBOATS.definitions.Threadbare" = { server | js2n.Null, },
      "definitions.MBOATS.definitions.Video" =
        {
            enabled | Bool,
            format | String,
            location | String,
            prefix | String,
          },
    }
    in
  refs."definitions.MBOATS"