# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.Capture" = { as | String, json | String, },
      "definitions.Category" = { id | std.number.Integer, name | String, },
      "definitions.Config" =
        {
            environments | refs."definitions.Environments" | { _ | Dyn },
            http | refs."definitions.HTTP" | { _ | Dyn },
            phases
              | Array (
                std.contract.Sequence
                  [ refs."definitions.ConfigPhase", { _ | Dyn } ]
              ),
            plugins | refs."definitions.Plugins" | { _ | Dyn },
            processor | String,
            target | String,
            tls | refs."definitions.TLS" | { _ | Dyn },
          },
      "definitions.ConfigPhase" =
        {
            arrivalRate | std.number.Integer,
            duration | std.number.Integer,
            name | String,
          },
      "definitions.Delete" =
        {
            expect
              | Array (
                std.contract.Sequence
                  [ refs."definitions.ExpectElement", { _ | Dyn } ]
              ),
            headers | refs."definitions.DeleteHeaders" | { _ | Dyn },
            name | String,
            url | String,
          },
      "definitions.DeleteHeaders" =
        { accept | String, api_key | String, contentType | String, },
      "definitions.Dev" =
        {
            phases
              | Array (
                std.contract.Sequence
                  [ refs."definitions.DevPhase", { _ | Dyn } ]
              ),
            target | String,
          },
      "definitions.DevPhase" =
        { arrivalRate | std.number.Integer, duration | std.number.Integer, },
      "definitions.Environments" =
        {
            dev | refs."definitions.Dev" | { _ | Dyn },
            qa | refs."definitions.Dev" | { _ | Dyn },
          },
      "definitions.Event" =
        {
            "priority" | String,
            send | Bool,
            status | String,
            tags | Array String,
            title | String,
          },
      "definitions.ExpectElement" = { statusCode | std.number.Integer, },
      "definitions.Flow" =
        {
            delete | refs."definitions.Delete" | { _ | Dyn } | optional,
            function | String | optional,
            get | refs."definitions.Get" | { _ | Dyn } | optional,
            post | refs."definitions.Post" | { _ | Dyn } | optional,
          },
      "definitions.Get" =
        {
            expect
              | Array (
                std.contract.Sequence
                  [ refs."definitions.ExpectElement", { _ | Dyn } ]
              ),
            headers | refs."definitions.GetHeaders" | { _ | Dyn },
            name | String,
            qs | refs."definitions.Qs" | { _ | Dyn } | optional,
            url | String,
          },
      "definitions.GetHeaders" =
        { accept | String, contentType | String | optional, },
      "definitions.HTTP" = { timeout | std.number.Integer, },
      "definitions.JSON" =
        {
            category | refs."definitions.Category" | { _ | Dyn } | optional,
            email | String | optional,
            firstName | String | optional,
            id | std.number.Integer,
            lastName | String | optional,
            name | String | optional,
            password | String | optional,
            phone | String | optional,
            photoUrls | Array String | optional,
            status | String | optional,
            tags
              | Array (
                std.contract.Sequence
                  [ refs."definitions.Category", { _ | Dyn } ]
              )
              | optional,
            userStatus | std.number.Integer | optional,
            username | String | optional,
          },
      "definitions.MetricsByEndpoint" = { useOnlyRequestNames | Bool, },
      "definitions.Plugins" =
        {
            expect | refs."definitions.PluginsExpect" | { _ | Dyn },
            metrics-by-endpoint
              | refs."definitions.MetricsByEndpoint"
              | { _ | Dyn },
            publish-metrics
              | Array (
                std.contract.Sequence
                  [ refs."definitions.PublishMetric", { _ | Dyn } ]
              ),
          },
      "definitions.PluginsExpect" = { outputFormat | String, },
      "definitions.Post" =
        {
            capture
              | Array (
                std.contract.Sequence
                  [ refs."definitions.Capture", { _ | Dyn } ]
              )
              | optional,
            expect
              | Array (
                std.contract.Sequence
                  [ refs."definitions.ExpectElement", { _ | Dyn } ]
              ),
            headers | refs."definitions.PostHeaders" | { _ | Dyn },
            json | refs."definitions.JSON" | { _ | Dyn },
            name | String,
            url | String,
          },
      "definitions.PostHeaders" = { Content-Type | String, accept | String, },
      "definitions.PublishMetric" =
        {
            event | refs."definitions.Event" | { _ | Dyn },
            host | String,
            port | String,
            prefix | String,
            tags | Array String,
            type | String,
          },
      "definitions.Qs" = { password | String, username | String, },
      "definitions.Scenario" =
        {
            flow
              | Array (
                std.contract.Sequence [ refs."definitions.Flow", { _ | Dyn } ]
              ),
          },
      "definitions.TLS" = { rejectUnauthorized | Bool, },
      "definitions.Welcome9" =
        {
            config | refs."definitions.Config" | { _ | Dyn } | optional,
            scenarios
              | Array (
                std.contract.Sequence
                  [ refs."definitions.Scenario", { _ | Dyn } ]
              )
              | optional,
            ..
          },
    }
    in
  refs."definitions.Welcome9"