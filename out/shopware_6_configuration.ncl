# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.admin_worker" =
        {
            enable_admin_worker | Bool | optional,
            enable_notification_worker | Bool | optional,
            enable_queue_stats_worker | Bool | optional,
            poll_interval | std.number.Integer | optional,
            transports | Array String | optional,
          },
      "definitions.api" =
        {
            access_token_ttl | String | optional,
            api_browser
              | refs."definitions.api_browser"
              | { _ | Dyn }
              | optional,
            max_limit | js2n.Nullable std.number.Integer | optional,
            rate_limiter
              | refs."definitions.rate_limiter"
              | { _ | Dyn }
              | optional,
            refresh_token_ttl | String | optional,
            store | refs."definitions.api_store" | { _ | Dyn } | optional,
          },
      "definitions.api_browser" = { auth_required | Bool | optional, },
      "definitions.api_store" =
        {
            context_lifetime | String | optional,
            max_limit | js2n.Nullable std.number.Integer | optional,
          },
      "definitions.auto_update" = { enabled | Bool | optional, },
      "definitions.cache" =
        {
            cache_compression
              | Bool
              | doc "Controls the cache compression before the storage"
              | optional,
            cache_compression_method
              | std.enum.TagOrString
              | [| 'zstd, 'gzip |]
              | doc "Controls the cache compression method"
              | optional,
            invalidation
              | refs."definitions.cache_invalidation"
              | { _ | Dyn }
              | optional,
            redis_prefix | String | optional,
            tagging | refs."definitions.cache_tags" | { _ | Dyn } | optional,
          },
      "definitions.cache_invalidation" =
        {
            category_route
              | refs."definitions.cache_invalidation_states"
              | Array Dyn
              | optional,
            count | std.number.Integer | optional,
            country_route
              | refs."definitions.cache_invalidation_states"
              | Array Dyn
              | optional,
            country_state_route
              | refs."definitions.cache_invalidation_states"
              | Array Dyn
              | optional,
            currency_route
              | refs."definitions.cache_invalidation_states"
              | Array Dyn
              | optional,
            delay | std.number.Integer | optional,
            delay_options
              | {
                connection | String | optional,
                dsn | String | optional,
                storage
                  | std.enum.TagOrString
                  | [| 'mysql, 'redis, 'cache |]
                  | optional,
              }
              | optional,
            http_cache
              | refs."definitions.cache_invalidation_states"
              | Array Dyn
              | optional,
            landing_page_route
              | refs."definitions.cache_invalidation_states"
              | Array Dyn
              | optional,
            language_route
              | refs."definitions.cache_invalidation_states"
              | Array Dyn
              | optional,
            navigation_route
              | refs."definitions.cache_invalidation_states"
              | Array Dyn
              | optional,
            payment_method_route
              | refs."definitions.cache_invalidation_states"
              | Array Dyn
              | optional,
            product_cross_selling_route
              | refs."definitions.cache_invalidation_states"
              | Array Dyn
              | optional,
            product_detail_route
              | refs."definitions.cache_invalidation_states"
              | Array Dyn
              | optional,
            product_listing_route
              | refs."definitions.cache_invalidation_states"
              | Array Dyn
              | optional,
            product_review_route
              | refs."definitions.cache_invalidation_states"
              | Array Dyn
              | optional,
            product_search_route
              | refs."definitions.cache_invalidation_states"
              | Array Dyn
              | optional,
            product_suggest_route
              | refs."definitions.cache_invalidation_states"
              | Array Dyn
              | optional,
            salutation_route
              | refs."definitions.cache_invalidation_states"
              | Array Dyn
              | optional,
            shipping_method_route
              | refs."definitions.cache_invalidation_states"
              | Array Dyn
              | optional,
            sitemap_route
              | refs."definitions.cache_invalidation_states"
              | Array Dyn
              | optional,
          },
      "definitions.cache_invalidation_states" =
        Array (
            std.contract.Sequence
              [ std.enum.TagOrString, [| 'cart-filled, 'logged-in |] ]
          ),
      "definitions.cache_tags" =
        {
            each_config
              | Bool
              | doc "If enabled, each config will be cached with a unique tag. This allows to invalidate a single config. If disabled, the whole page will be invalidated on each config change."
              | optional,
            each_snippet
              | Bool
              | doc "If enabled, each snippet will be cached with a unique tag. This allows to invalidate a single snippet. If disabled, the whole page will be invalidated on each snippet change."
              | optional,
            each_theme_config
              | Bool
              | doc "If enabled, each theme config will be cached with a unique tag. This allows to invalidate a single theme config. If disabled, the whole page will be invalidated on each theme config change."
              | optional,
          },
      "definitions.cart" =
        {
            compress
              | Bool
              | doc "All carts, which stored in redis, are compressed via gzcompress. This option is only available if redis is used."
              | optional,
            compression_method
              | std.enum.TagOrString
              | [| 'zstd, 'gzip |]
              | doc "Controls the cache compression method"
              | optional,
            expire_days | std.number.Integer | optional,
            storage
              | {
                config
                  | { connection | String | optional, dsn | String | optional, }
                  | optional,
                type | std.enum.TagOrString | [| 'redis, 'mysql |] | optional,
              }
              | optional,
          },
      "definitions.cdn" =
        {
            fastly
              | {
                api_key | String | optional,
                max_parallel_invalidations | std.number.Integer | optional,
                soft_purge | std.enum.TagOrString | [| '"0", '"1" |] | optional,
              }
              | optional,
            strategy | String | optional,
            url | String | optional,
          },
      "definitions.dal" =
        {
            batch_size | std.number.Integer | optional,
            max_rule_prices | std.number.Integer | optional,
            versioning
              | { expire_days | std.number.Integer | optional, }
              | optional,
          },
      "definitions.deployment" =
        {
            blue_green | Bool | optional,
            cluster_setup | Bool | optional,
            runtime_extension_management | Bool | optional,
          },
      "definitions.dompdf" = { options | {  .. } | optional, },
      "definitions.elasticsearch" =
        {
            administration
              | {
                enabled | Bool | doc "Admin Elasticsearch Enabled" | optional,
                hosts | String | doc "Admin Elasticsearch Hosts" | optional,
                index_prefix
                  | String
                  | doc "Admin Elasticsearch Index Prefix"
                  | optional,
                refresh_indices
                  | Bool
                  | doc "Admin Elasticsearch Refresh Indices"
                  | optional,
              }
              | optional,
            analysis | { _ | Dyn } | optional,
            dynamic_templates | Array Dyn | optional,
            enabled
              | std.contract.any_of [ Bool, String ]
              | doc "Enable Elasticsearch Searching"
              | optional,
            hosts | String | doc "Elasticsearch Hosts" | optional,
            index_prefix | String | doc "Elasticsearch Index Prefix" | optional,
            index_settings
              | {
                "mapping.nested_fields.limit" | std.number.Integer | optional,
                "mapping.nested_objects.limit" | std.number.Integer | optional,
                "mapping.total_fields.limit" | std.number.Integer | optional,
                number_of_replicas
                  | js2n.Nullable std.number.Integer
                  | optional,
                number_of_shards | js2n.Nullable std.number.Integer | optional,
                ..
              }
              | optional,
            indexing_batch_size
              | std.contract.any_of [ std.number.Integer, String ]
              | doc "Elasticsearch Batch Size"
              | optional,
            indexing_enabled
              | std.contract.any_of [ Bool, String ]
              | doc "Enable Elasticsearch Indexing"
              | optional,
            product
              | {
                custom_fields_mapping | js2n.Nullable ({ _ | Dyn }) | optional,
              }
              | optional,
            ssl
              | {
                cert_key_path | std.contract.any_of [ Bool, String ] | optional,
                cert_path | std.contract.any_of [ Bool, String ] | optional,
                sigV4
                  | {
                    credentials_provider
                      | {
                        key_id
                          | std.contract.any_of [ Bool, String ]
                          | optional,
                        secret_key
                          | std.contract.any_of [ Bool, String ]
                          | optional,
                      }
                      | optional,
                    enabled | Bool | optional,
                    region | std.contract.any_of [ Bool, String ] | optional,
                    service | std.contract.any_of [ Bool, String ] | optional,
                  }
                  | optional,
                verify_server_cert | Bool | optional,
              }
              | optional,
            throw_exception
              | std.contract.any_of [ Bool, String ]
              | doc "Throw exception when Elasticsearch queries failing"
              | optional,
          },
      "definitions.feature_toggle" = { enable | Bool | optional, },
      "definitions.file_system_type" = js2n.Nullable {  .. },
      "definitions.filesystem" =
        {
            allowed_extensions | Array String | optional,
            asset
              | refs."definitions.file_system_type"
              | js2n.Nullable ({ _ | Dyn })
              | optional,
            private
              | refs."definitions.file_system_type"
              | js2n.Nullable ({ _ | Dyn })
              | optional,
            private_allowed_extensions | Array String | optional,
            private_local_download_strategy
              | std.enum.TagOrString
              | [| 'x-accel, 'x-sendfile, 'php |]
              | optional,
            private_local_path_prefix
              | String
              | doc "Path prefix to be prepended to the path when using a local download strategy"
              | optional,
            public
              | refs."definitions.file_system_type"
              | js2n.Nullable ({ _ | Dyn })
              | optional,
            sitemap
              | refs."definitions.file_system_type"
              | js2n.Nullable ({ _ | Dyn })
              | optional,
            temp
              | refs."definitions.file_system_type"
              | js2n.Nullable ({ _ | Dyn })
              | optional,
            theme
              | refs."definitions.file_system_type"
              | js2n.Nullable ({ _ | Dyn })
              | optional,
          },
      "definitions.framework" =
        {
            cache
              | {
                app | String | optional,
                default_redis_provider | String | optional,
                system | String | optional,
                ..
              }
              | optional,
            lock | String | optional,
            session
              | {
                cookie_lifetime
                  | std.number.Integer
                  | doc "The cookie lifetime of the session"
                  | optional,
                handler_id | String | optional,
                name | String | doc "The cookie name of the session" | optional,
                storage_factory_id | String | optional,
                ..
              }
              | optional,
            trusted_headers
              | Array (
                std.contract.Sequence
                  [
                    std.enum.TagOrString,
                    [|
                      'x-forwarded-prefix,
                      'x-forwarded-port,
                      'x-forwarded-proto,
                      'x-forwarded-host,
                      'x-forwarded-for
                    |]
                  ]
              )
              | optional,
            trusted_proxies
              | String
              | doc "A list of IP ranges to be considered as proxies and trust the headers"
              | optional,
            ..
          },
      "definitions.html_sanitizer" =
        {
            cache_dir | String | optional,
            cache_enabled | Bool | optional,
            enabled | Bool | optional,
            fields
              | Array
                { name | String | optional, sets | Array String | optional, }
              | optional,
            sets
              | Array
                {
                  attributes | Array String | optional,
                  custom_attributes
                    | Array
                      {
                        attributes | Array String | optional,
                        tags | Array String | optional,
                        ..
                      }
                    | optional,
                  name | String | optional,
                  options | Array ({ _ | Dyn }) | optional,
                  tags | Array String | optional,
                }
              | optional,
          },
      "definitions.http_cache" =
        {
            ignored_url_parameters | Array String | optional,
            reverse_proxy
              | {
                ban_headers | js2n.Nullable ({ _ | Dyn }) | optional,
                ban_method | String | optional,
                enabled | Bool | optional,
                fastly
                  | {
                    api_key | String | optional,
                    enabled | Bool | optional,
                    instance_tag | String | optional,
                    service_id | String | optional,
                    soft_purge
                      | std.enum.TagOrString
                      | [| '"0", '"1" |]
                      | optional,
                  }
                  | optional,
                hosts | Array String | optional,
                max_parallel_invalidations | std.number.Integer | optional,
                purge_all
                  | js2n.Nullable
                    {
                      ban_headers | js2n.Nullable ({ _ | Dyn }) | optional,
                      ban_method | String | optional,
                      urls | Array String | optional,
                    }
                  | optional,
                redis_url | String | optional,
                use_varnish_xkey | Bool | optional,
              }
              | optional,
            stale_if_error | js2n.Nullable std.number.Integer | optional,
            stale_while_revalidate
              | js2n.Nullable std.number.Integer
              | optional,
          },
      "definitions.increment" =
        std.contract.Sequence
            [
              js2n.record.Record
                {
                  additional = 'Some js2n.Always,
                  patterns =
                    {
                        "^.*$" =
                          std.contract.Sequence
                              [
                                refs."definitions.increment_config",
                                { _ | Dyn }
                              ],
                      },
                  properties = {},
                  required = {},
                },
              js2n.record.Required [ "message_queue", "user_activity" ]
            ],
      "definitions.increment_config" =
        std.contract.Sequence
            [
              js2n.IfThenElse
                (std.contract.any_of
                  [
                    js2n.Null,
                    Bool,
                    Number,
                    String,
                    js2n.record.Record
                      {
                        additional = 'Some Dyn,
                        patterns = {},
                        properties = { type = js2n.Const "redis", },
                        required = {},
                      },
                    Array Dyn
                  ])
                (std.contract.any_of
                  [
                    js2n.Null,
                    Bool,
                    Number,
                    String,
                    {
                      config
                        | js2n.OneOf
                          [
                            std.contract.any_of
                              [
                                js2n.Null,
                                Bool,
                                Number,
                                String,
                                js2n.record.Required [ "url" ],
                                Array Dyn
                              ],
                            std.contract.any_of
                              [
                                js2n.Null,
                                Bool,
                                Number,
                                String,
                                js2n.record.Required [ "connection" ],
                                Array Dyn
                              ]
                          ]
                        | {
                          connection | String | optional,
                          url | String | optional,
                        },
                      ..
                    },
                    Array Dyn
                  ]) js2n.Always,
              { type | std.enum.TagOrString | [| 'array, 'redis, 'mysql |], .. }
            ],
      "definitions.logger" =
        {
            enforce_throw_exception | Bool | optional,
            error_code_log_levels | { _ | String } | optional,
            exclude_events | Array String | optional,
            exclude_exception | Array String | optional,
            file_rotation_count | std.number.Integer | optional,
          },
      "definitions.mail" =
        {
            max_body_length | std.number.Integer | optional,
            update_mail_variables_on_send | Bool | optional,
          },
      "definitions.media" =
        {
            enable_url_upload_feature | Bool | optional,
            enable_url_validation | Bool | optional,
            remote_thumbnails
              | { enable | Bool | optional, pattern | String | optional, }
              | optional,
            url_upload_max_size | String | optional,
          },
      "definitions.messenger" =
        {
            enforce_message_size | Bool | optional,
            routing_overwrite
              | js2n.array.UniqueItems
              | Array String
              | optional,
            stats
              | js2n.Nullable
                {
                  enabled | Bool | optional,
                  time_span | std.number.Integer | optional,
                }
              | optional,
          },
      "definitions.number_range" =
        {
            config
              | { connection | String | optional, dsn | String | optional, }
              | optional,
            increment_storage
              | std.contract.any_of
                [
                  std.contract.Sequence
                    [ std.enum.TagOrString, [| 'redis, 'mysql |] ],
                  String
                ]
              | doc "The storage engine used for the increments. Note that you need to configure also `config.dsn` if you want to use the `redis` storage."
              | optional,
          },
      "definitions.parameters" = {  .. },
      "definitions.product_stream" = { indexing | Bool | optional, },
      "definitions.profiler" =
        {
            integrations
              | js2n.array.UniqueItems
              | Array (
                std.contract.any_of
                  [
                    std.contract.Sequence
                      [
                        std.enum.TagOrString,
                        [| 'Tideways, 'Datadog, 'Symfony |]
                      ],
                    String
                  ]
              )
              | optional,
          },
      "definitions.rate_limiter" =
        {
            cart_add_line_item_from
              | refs."definitions.rate_limiter_config"
              | { _ | Dyn }
              | optional,
            contact_form
              | refs."definitions.rate_limiter_config"
              | { _ | Dyn }
              | optional,
            guest_login
              | refs."definitions.rate_limiter_config"
              | { _ | Dyn }
              | optional,
            login
              | refs."definitions.rate_limiter_config"
              | { _ | Dyn }
              | optional,
            newsletter_form
              | refs."definitions.rate_limiter_config"
              | { _ | Dyn }
              | optional,
            notification
              | refs."definitions.rate_limiter_config"
              | { _ | Dyn }
              | optional,
            oauth
              | refs."definitions.rate_limiter_config"
              | { _ | Dyn }
              | optional,
            reset_password
              | refs."definitions.rate_limiter_config"
              | { _ | Dyn }
              | optional,
            user_recovery
              | refs."definitions.rate_limiter_config"
              | { _ | Dyn }
              | optional,
            ..
          },
      "definitions.rate_limiter_config" =
        {
            enabled | Bool | optional,
            limits | std.contract.any_of [ { _ | Dyn }, Array Dyn ] | optional,
            policy | String | optional,
            reset | String | optional,
            ..
          },
      "definitions.redis" =
        { connections | { _ | { dsn | String | optional, } } | optional, },
      "definitions.root" =
        {
            elasticsearch
              | refs."definitions.elasticsearch"
              | { _ | Dyn }
              | optional,
            framework | refs."definitions.framework" | { _ | Dyn } | optional,
            parameters | refs."definitions.parameters" | { _ | Dyn } | optional,
            shopware | refs."definitions.shopware" | { _ | Dyn } | optional,
            storefront | refs."definitions.storefront" | { _ | Dyn } | optional,
            ..
          },
      "definitions.sales_channel_context" =
        { expire_days | std.number.Integer | optional, },
      "definitions.shopware" =
        {
            admin_worker
              | refs."definitions.admin_worker"
              | { _ | Dyn }
              | optional,
            api | refs."definitions.api" | { _ | Dyn } | optional,
            auto_update
              | refs."definitions.auto_update"
              | { _ | Dyn }
              | optional,
            cache | refs."definitions.cache" | { _ | Dyn } | optional,
            cart | refs."definitions.cart" | { _ | Dyn } | optional,
            cdn | refs."definitions.cdn" | { _ | Dyn } | optional,
            dal | refs."definitions.dal" | { _ | Dyn } | optional,
            deployment | refs."definitions.deployment" | { _ | Dyn } | optional,
            dompdf | refs."definitions.dompdf" | { _ | Dyn } | optional,
            feature_toggle
              | refs."definitions.feature_toggle"
              | { _ | Dyn }
              | optional,
            filesystem | refs."definitions.filesystem" | { _ | Dyn } | optional,
            html_sanitizer
              | refs."definitions.html_sanitizer"
              | { _ | Dyn }
              | optional,
            http_cache | refs."definitions.http_cache" | { _ | Dyn } | optional,
            increment | refs."definitions.increment" | { _ | Dyn } | optional,
            logger | refs."definitions.logger" | { _ | Dyn } | optional,
            mail | refs."definitions.mail" | { _ | Dyn } | optional,
            media | refs."definitions.media" | { _ | Dyn } | optional,
            messenger | refs."definitions.messenger" | { _ | Dyn } | optional,
            number_range
              | refs."definitions.number_range"
              | { _ | Dyn }
              | optional,
            product_stream
              | refs."definitions.product_stream"
              | { _ | Dyn }
              | optional,
            profiler | refs."definitions.profiler" | { _ | Dyn } | optional,
            redis | refs."definitions.redis" | { _ | Dyn } | optional,
            sales_channel_context
              | refs."definitions.sales_channel_context"
              | { _ | Dyn }
              | optional,
            sitemap | refs."definitions.sitemap" | { _ | Dyn } | optional,
            staging | refs."definitions.staging" | { _ | Dyn } | optional,
            stock | refs."definitions.stock" | { _ | Dyn } | optional,
            store | refs."definitions.shopware_store" | { _ | Dyn } | optional,
            system_config | { _ | Dyn } | optional,
            twig | refs."definitions.twig" | { _ | Dyn } | optional,
            usage_data | refs."definitions.usage_data" | { _ | Dyn } | optional,
          },
      "definitions.shopware_store" = { frw | Bool | optional, },
      "definitions.sitemap" =
        {
            batchsize | std.number.Integer | optional,
            custom_urls | js2n.Null | optional,
            excluded_urls | js2n.Null | optional,
          },
      "definitions.staging" =
        {
            administration | { show_banner | Bool | optional, } | optional,
            elasticsearch
              | { check_for_existence | Bool | optional, }
              | optional,
            mailing | { disable_delivery | Bool | optional, } | optional,
            sales_channel
              | {
                domain_rewrite
                  | Array
                    {
                      "match" | String | optional,
                      replace | String | optional,
                      type
                        | std.enum.TagOrString
                        | [| 'prefix, 'regex, 'equal |]
                        | optional,
                    }
                  | optional,
              }
              | optional,
            storefront | { show_banner | Bool | optional, } | optional,
          },
      "definitions.stock" = { enable_stock_management | Bool | optional, },
      "definitions.storefront" =
        {
            theme
              | {
                available_theme_provider | String | optional,
                config_loader_id | String | optional,
                theme_path_builder_id | String | optional,
              }
              | optional,
          },
      "definitions.twig" =
        {
            allowed_php_functions
              | js2n.array.UniqueItems
              | Array String
              | optional,
          },
      "definitions.usage_data" =
        {
            gateway
              | {
                base_uri | String | optional,
                batch_size | std.number.Integer | optional,
                dispatch_enabled | Bool | optional,
              }
              | optional,
          },
    }
    in
  refs."definitions.root"