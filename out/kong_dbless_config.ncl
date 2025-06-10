# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.ACLGroup" =
        {
            consumer | refs."definitions.Consumer" | { _ | Dyn } | optional,
            created_at | std.number.Integer | optional,
            group | String,
            id | String | optional,
            tags | Array String | optional,
          },
      "definitions.ActiveHealthcheck" =
        {
            concurrency | std.number.Integer | optional,
            healthy | refs."definitions.Healthy" | { _ | Dyn } | optional,
            http_path | String | optional,
            https_sni | String | optional,
            https_verify_certificate | Bool | optional,
            timeout | std.number.Integer | optional,
            type | String | optional,
            unhealthy | refs."definitions.Unhealthy" | { _ | Dyn } | optional,
          },
      "definitions.BasicAuth" =
        {
            consumer | refs."definitions.Consumer" | { _ | Dyn } | optional,
            created_at | std.number.Integer | optional,
            id | String | optional,
            password | String,
            tags | Array String | optional,
            username | String,
          },
      "definitions.CACertificate" =
        {
            cert | String | optional,
            cert_digest | String | optional,
            created_at | std.number.Integer | optional,
            id | String | optional,
            tags | Array String | optional,
          },
      "definitions.CIDRPort" =
        { ip | String | optional, port | std.number.Integer | optional, },
      "definitions.Certificate" =
        {
            cert | String | optional,
            cert_alt | String | optional,
            created_at | std.number.Integer | optional,
            id | String | optional,
            key | String | optional,
            key_alt | String | optional,
            snis | Array String | optional,
            tags | Array String | optional,
          },
      "definitions.Consumer" =
        {
            created_at | std.number.Integer | optional,
            custom_id | String | optional,
            id | String | optional,
            tags | Array String | optional,
            username | String | optional,
          },
      "definitions.ConsumerGroup" =
        {
            created_at | std.number.Integer | optional,
            id | String | optional,
            name | String | optional,
            tags | Array String | optional,
          },
      "definitions.ConsumerGroupPlugin" =
        {
            config | {  .. } | optional,
            consumer_group
              | refs."definitions.ConsumerGroup"
              | { _ | Dyn }
              | optional,
            created_at | std.number.Integer | optional,
            id | String | optional,
            name | String | optional,
          },
      "definitions.FCACertificate" =
        {
            cert | String,
            cert_digest | String | optional,
            created_at | std.number.Integer | optional,
            id | String | optional,
            tags | Array String | optional,
          },
      "definitions.FCertificate" =
        {
            cert | String,
            created_at | std.number.Integer | optional,
            id | String,
            key | String,
            snis | Array { name | String | optional, .. } | optional,
            tags | Array String | optional,
          },
      "definitions.FConsumer" =
        std.contract.Sequence
            [
              std.contract.any_of
                [
                  js2n.record.Required [ "username" ],
                  js2n.record.Required [ "id" ]
                ],
              {
                acls
                  | Array (
                    std.contract.Sequence
                      [ refs."definitions.ACLGroup", { _ | Dyn } ]
                  )
                  | optional,
                basicauth_credentials
                  | Array (
                    std.contract.Sequence
                      [ refs."definitions.BasicAuth", { _ | Dyn } ]
                  )
                  | optional,
                created_at | std.number.Integer | optional,
                custom_id | String | optional,
                groups
                  | Array (
                    std.contract.Sequence
                      [ refs."definitions.ConsumerGroup", { _ | Dyn } ]
                  )
                  | optional,
                hmacauth_credentials
                  | Array (
                    std.contract.Sequence
                      [ refs."definitions.HMACAuth", { _ | Dyn } ]
                  )
                  | optional,
                id | String | optional,
                jwt_secrets
                  | Array (
                    std.contract.Sequence
                      [ refs."definitions.JWTAuth", { _ | Dyn } ]
                  )
                  | optional,
                keyauth_credentials
                  | Array (
                    std.contract.Sequence
                      [ refs."definitions.KeyAuth", { _ | Dyn } ]
                  )
                  | optional,
                mtls_auth_credentials
                  | Array (
                    std.contract.Sequence
                      [ refs."definitions.MTLSAuth", { _ | Dyn } ]
                  )
                  | optional,
                oauth2_credentials
                  | Array (
                    std.contract.Sequence
                      [ refs."definitions.Oauth2Credential", { _ | Dyn } ]
                  )
                  | optional,
                plugins
                  | Array (
                    std.contract.Sequence
                      [ refs."definitions.FPlugin", { _ | Dyn } ]
                  )
                  | optional,
                tags | Array String | optional,
                username | String | optional,
              }
            ],
      "definitions.FConsumerGroupObject" =
        {
            consumers
              | Array (
                std.contract.Sequence
                  [ refs."definitions.Consumer", { _ | Dyn } ]
              )
              | optional,
            created_at | std.number.Integer | optional,
            id | String | optional,
            name | String | optional,
            plugins
              | Array (
                std.contract.Sequence
                  [ refs."definitions.ConsumerGroupPlugin", { _ | Dyn } ]
              )
              | optional,
            tags | Array String | optional,
          },
      "definitions.FDocument" =
        {
            id | String | optional,
            path | String | optional,
            published | Bool | optional,
          },
      "definitions.FPlugin" =
        {
            _config | String | optional,
            config | {  .. } | optional,
            consumer | String | optional,
            created_at | std.number.Integer | optional,
            enabled | Bool | optional,
            id | String | optional,
            name | String,
            ordering
              | refs."definitions.PluginOrdering"
              | { _ | Dyn }
              | optional,
            protocols | Array String | optional,
            route | String | optional,
            run_on | String | optional,
            service | String | optional,
            tags | Array String | optional,
          },
      "definitions.FRBACEndpointPermission" =
        {
            actions | Array String | optional,
            comment | String | optional,
            created_at | std.number.Integer | optional,
            endpoint | String,
            negative | Bool | optional,
            role | refs."definitions.RBACRole" | { _ | Dyn } | optional,
            workspace | String,
          },
      "definitions.FRBACRole" =
        {
            comment | String | optional,
            created_at | std.number.Integer | optional,
            endpoint_permissions
              | Array (
                std.contract.Sequence
                  [ refs."definitions.FRBACEndpointPermission", { _ | Dyn } ]
              )
              | optional,
            id | String | optional,
            is_default | Bool | optional,
            name | String,
          },
      "definitions.FRoute" =
        std.contract.Sequence
            [
              std.contract.any_of
                [
                  js2n.record.Required [ "name" ],
                  js2n.record.Required [ "id" ]
                ],
              {
                created_at | std.number.Integer | optional,
                destinations
                  | Array (
                    std.contract.Sequence
                      [ refs."definitions.CIDRPort", { _ | Dyn } ]
                  )
                  | optional,
                expression | String | optional,
                headers
                  | js2n.record.Record
                    {
                      additional = 'Some Dyn,
                      patterns = { ".*" = Array String, },
                      properties = {},
                      required = {},
                    }
                  | optional,
                hosts | Array String | optional,
                https_redirect_status_code | std.number.Integer | optional,
                id | String | optional,
                methods | Array String | optional,
                name | String | optional,
                path_handling | String | optional,
                paths | Array String | optional,
                plugins
                  | Array (
                    std.contract.Sequence
                      [ refs."definitions.FPlugin", { _ | Dyn } ]
                  )
                  | optional,
                preserve_host | Bool | optional,
                "priority" | std.number.Integer | optional,
                protocols | Array String | optional,
                regex_priority | std.number.Integer | optional,
                request_buffering | Bool | optional,
                response_buffering | Bool | optional,
                service | refs."definitions.Service" | { _ | Dyn } | optional,
                snis | Array String | optional,
                sources
                  | Array (
                    std.contract.Sequence
                      [ refs."definitions.CIDRPort", { _ | Dyn } ]
                  )
                  | optional,
                strip_path | Bool | optional,
                tags | Array String | optional,
                updated_at | std.number.Integer | optional,
              }
            ],
      "definitions.FService" =
        std.contract.Sequence
            [
              std.contract.any_of
                [
                  js2n.record.Required [ "name" ],
                  js2n.record.Required [ "id" ]
                ],
              {
                ca_certificates | Array String | optional,
                client_certificate | String | optional,
                connect_timeout | std.number.Integer | optional,
                created_at | std.number.Integer | optional,
                enabled | Bool | optional,
                host | String | optional,
                id | String | optional,
                name | String | optional,
                path | String | optional,
                plugins
                  | Array (
                    std.contract.Sequence
                      [ refs."definitions.FPlugin", { _ | Dyn } ]
                  )
                  | optional,
                port | std.number.Integer | optional,
                protocol | String | optional,
                read_timeout | std.number.Integer | optional,
                retries | std.number.Integer | optional,
                routes
                  | Array (
                    std.contract.Sequence
                      [ refs."definitions.FRoute", { _ | Dyn } ]
                  )
                  | optional,
                tags | Array String | optional,
                tls_verify | Bool | optional,
                tls_verify_depth | std.number.Integer | optional,
                updated_at | std.number.Integer | optional,
                url | String | optional,
                write_timeout | std.number.Integer | optional,
              }
            ],
      "definitions.FServicePackage" =
        {
            description | String | optional,
            document | refs."definitions.FDocument" | { _ | Dyn } | optional,
            id | String | optional,
            name | String,
            versions
              | Array (
                std.contract.Sequence
                  [ refs."definitions.FServiceVersion", { _ | Dyn } ]
              )
              | optional,
          },
      "definitions.FServiceVersion" =
        {
            document | refs."definitions.FDocument" | { _ | Dyn } | optional,
            id | String | optional,
            implementation
              | refs."definitions.Implementation"
              | { _ | Dyn }
              | optional,
            version | String,
          },
      "definitions.FTarget" =
        {
            created_at | Number | optional,
            id | String | optional,
            tags | Array String | optional,
            target | String,
            upstream | refs."definitions.Upstream" | { _ | Dyn } | optional,
            weight | std.number.Integer | optional,
          },
      "definitions.FUpstream" =
        {
            algorithm | String | optional,
            client_certificate
              | refs."definitions.Certificate"
              | { _ | Dyn }
              | optional,
            created_at | std.number.Integer | optional,
            hash_fallback | String | optional,
            hash_fallback_header | String | optional,
            hash_fallback_query_arg | String | optional,
            hash_fallback_uri_capture | String | optional,
            hash_on | String | optional,
            hash_on_cookie | String | optional,
            hash_on_cookie_path | String | optional,
            hash_on_header | String | optional,
            hash_on_query_arg | String | optional,
            hash_on_uri_capture | String | optional,
            healthchecks
              | refs."definitions.Healthcheck"
              | { _ | Dyn }
              | optional,
            host_header | String | optional,
            id | String | optional,
            name | String,
            slots | std.number.Integer | optional,
            tags | Array String | optional,
            targets
              | Array (
                std.contract.Sequence
                  [ refs."definitions.FTarget", { _ | Dyn } ]
              )
              | optional,
          },
      "definitions.FVault" =
        {
            config | {  .. } | optional,
            created_at | std.number.Integer | optional,
            description | String | optional,
            id | String | optional,
            name | String | optional,
            prefix | String | optional,
            tags | Array String | optional,
            updated_at | std.number.Integer | optional,
          },
      "definitions.HMACAuth" =
        {
            consumer | refs."definitions.Consumer" | { _ | Dyn } | optional,
            created_at | std.number.Integer | optional,
            id | String | optional,
            secret | String,
            tags | Array String | optional,
            username | String,
          },
      "definitions.Healthcheck" =
        {
            active
              | refs."definitions.ActiveHealthcheck"
              | { _ | Dyn }
              | optional,
            passive
              | refs."definitions.PassiveHealthcheck"
              | { _ | Dyn }
              | optional,
            threshold | Number | optional,
          },
      "definitions.Healthy" =
        {
            http_statuses | Array std.number.Integer | optional,
            interval | std.number.Integer | optional,
            successes | std.number.Integer | optional,
          },
      "definitions.Implementation" =
        { kong | refs."definitions.Kong" | { _ | Dyn }, type | String, },
      "definitions.Info" =
        {
            defaults | refs."definitions.KongDefaults" | { _ | Dyn } | optional,
            select_tags | Array String | optional,
          },
      "definitions.JWTAuth" =
        {
            algorithm | String,
            consumer | refs."definitions.Consumer" | { _ | Dyn } | optional,
            created_at | std.number.Integer | optional,
            id | String | optional,
            key | String,
            rsa_public_key | String | optional,
            secret | String,
            tags | Array String | optional,
          },
      "definitions.KeyAuth" =
        {
            consumer | refs."definitions.Consumer" | { _ | Dyn } | optional,
            created_at | std.number.Integer | optional,
            id | String | optional,
            key | String,
            tags | Array String | optional,
            ttl | std.number.Integer | optional,
          },
      "definitions.Kong" =
        { service | refs."definitions.FService" | { _ | Dyn } | optional, },
      "definitions.KongDefaults" =
        {
            route | refs."definitions.Route" | { _ | Dyn } | optional,
            service | refs."definitions.Service" | { _ | Dyn } | optional,
            target | refs."definitions.Target" | { _ | Dyn } | optional,
            upstream | refs."definitions.Upstream" | { _ | Dyn } | optional,
          },
      "definitions.Konnect" =
        {
            control_plane_name | String | optional,
            runtime_group_name | String | optional,
          },
      "definitions.MTLSAuth" =
        {
            ca_certificate
              | refs."definitions.CACertificate"
              | { _ | Dyn }
              | optional,
            consumer | refs."definitions.Consumer" | { _ | Dyn } | optional,
            created_at | std.number.Integer | optional,
            id | String,
            subject_name | String,
            tags | Array String | optional,
          },
      "definitions.Oauth2Credential" =
        {
            client_id | String,
            client_secret | String,
            client_type | String | optional,
            consumer | refs."definitions.Consumer" | { _ | Dyn } | optional,
            created_at | std.number.Integer | optional,
            hash_secret | Bool | optional,
            id | String | optional,
            name | String,
            redirect_uris | Array String | optional,
            tags | Array String | optional,
          },
      "definitions.PassiveHealthcheck" =
        {
            healthy | refs."definitions.Healthy" | { _ | Dyn } | optional,
            type | String | optional,
            unhealthy | refs."definitions.Unhealthy" | { _ | Dyn } | optional,
          },
      "definitions.PluginOrdering" =
        {
            after
              | js2n.record.Record
                {
                  additional = 'Some Dyn,
                  patterns = { ".*" = Array String, },
                  properties = {},
                  required = {},
                }
              | optional,
            before
              | js2n.record.Record
                {
                  additional = 'Some Dyn,
                  patterns = { ".*" = Array String, },
                  properties = {},
                  required = {},
                }
              | optional,
          },
      "definitions.RBACRole" =
        {
            comment | String | optional,
            created_at | std.number.Integer | optional,
            id | String | optional,
            is_default | Bool | optional,
            name | String | optional,
          },
      "definitions.Route" =
        {
            created_at | std.number.Integer | optional,
            destinations
              | Array (
                std.contract.Sequence
                  [ refs."definitions.CIDRPort", { _ | Dyn } ]
              )
              | optional,
            expression | String | optional,
            headers
              | js2n.record.Record
                {
                  additional = 'Some Dyn,
                  patterns = { ".*" = Array String, },
                  properties = {},
                  required = {},
                }
              | optional,
            hosts | Array String | optional,
            https_redirect_status_code | std.number.Integer | optional,
            id | String | optional,
            methods | Array String | optional,
            name | String | optional,
            path_handling | String | optional,
            paths | Array String | optional,
            preserve_host | Bool | optional,
            "priority" | std.number.Integer | optional,
            protocols | Array String | optional,
            regex_priority | std.number.Integer | optional,
            request_buffering | Bool | optional,
            response_buffering | Bool | optional,
            service | refs."definitions.Service" | { _ | Dyn } | optional,
            snis | Array String | optional,
            sources
              | Array (
                std.contract.Sequence
                  [ refs."definitions.CIDRPort", { _ | Dyn } ]
              )
              | optional,
            strip_path | Bool | optional,
            tags | Array String | optional,
            updated_at | std.number.Integer | optional,
          },
      "definitions.Service" =
        {
            ca_certificates | Array String | optional,
            client_certificate
              | refs."definitions.Certificate"
              | { _ | Dyn }
              | optional,
            connect_timeout | std.number.Integer | optional,
            created_at | std.number.Integer | optional,
            enabled | Bool | optional,
            host | String | optional,
            id | String | optional,
            name | String | optional,
            path | String | optional,
            port | std.number.Integer | optional,
            protocol | String | optional,
            read_timeout | std.number.Integer | optional,
            retries | std.number.Integer | optional,
            tags | Array String | optional,
            tls_verify | Bool | optional,
            tls_verify_depth | std.number.Integer | optional,
            updated_at | std.number.Integer | optional,
            url | String | optional,
            write_timeout | std.number.Integer | optional,
          },
      "definitions.Target" =
        {
            created_at | Number | optional,
            id | String | optional,
            tags | Array String | optional,
            target | String | optional,
            upstream | refs."definitions.Upstream" | { _ | Dyn } | optional,
            weight | std.number.Integer | optional,
          },
      "definitions.Unhealthy" =
        {
            http_failures | std.number.Integer | optional,
            http_statuses | Array std.number.Integer | optional,
            interval | std.number.Integer | optional,
            tcp_failures | std.number.Integer | optional,
            timeouts | std.number.Integer | optional,
          },
      "definitions.Upstream" =
        {
            algorithm | String | optional,
            client_certificate
              | refs."definitions.Certificate"
              | { _ | Dyn }
              | optional,
            created_at | std.number.Integer | optional,
            hash_fallback | String | optional,
            hash_fallback_header | String | optional,
            hash_fallback_query_arg | String | optional,
            hash_fallback_uri_capture | String | optional,
            hash_on | String | optional,
            hash_on_cookie | String | optional,
            hash_on_cookie_path | String | optional,
            hash_on_header | String | optional,
            hash_on_query_arg | String | optional,
            hash_on_uri_capture | String | optional,
            healthchecks
              | refs."definitions.Healthcheck"
              | { _ | Dyn }
              | optional,
            host_header | String | optional,
            id | String | optional,
            name | String | optional,
            slots | std.number.Integer | optional,
            tags | Array String | optional,
          },
    }
    in
  {
      _format_version | String | optional,
      _info | refs."definitions.Info" | optional,
      _konnect | refs."definitions.Konnect" | optional,
      _plugin_configs
        | js2n.record.Record
          {
            additional = 'Some Dyn,
            patterns = { ".*" = {  .. }, },
            properties = {},
            required = {},
          }
        | optional,
      _transform | Bool | optional,
      _workspace | String | optional,
      ca_certificates | Array refs."definitions.FCACertificate" | optional,
      certificates | Array refs."definitions.FCertificate" | optional,
      consumer_groups
        | Array refs."definitions.FConsumerGroupObject"
        | optional,
      consumers
        | Array (
          std.contract.Sequence [ refs."definitions.FConsumer", { _ | Dyn } ]
        )
        | optional,
      plugins | Array refs."definitions.FPlugin" | optional,
      rbac_roles | Array refs."definitions.FRBACRole" | optional,
      routes
        | Array (
          std.contract.Sequence [ refs."definitions.FRoute", { _ | Dyn } ]
        )
        | optional,
      service_packages | Array refs."definitions.FServicePackage" | optional,
      services
        | Array (
          std.contract.Sequence [ refs."definitions.FService", { _ | Dyn } ]
        )
        | optional,
      upstreams | Array refs."definitions.FUpstream" | optional,
      vaults | Array refs."definitions.FVault" | optional,
    }