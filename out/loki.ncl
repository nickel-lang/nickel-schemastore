# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.alibabacloud_storage_config" =
        {
            access_key_id
              | String
              | doc "alibabacloud Access Key ID"
              | optional,
            bucket | String | doc "Name of OSS bucket." | optional,
            endpoint | String | doc "oss Endpoint to connect to." | optional,
            secret_access_key
              | String
              | doc "alibabacloud Secret Access Key"
              | optional,
            ..
          },
      "definitions.analytics" =
        {
            reporting_enabled
              | Bool
              | doc "Enable anonymous usage reporting."
              | optional,
            usage_stats_url
              | String
              | doc "URL to which reports are sent"
              | optional,
            ..
          },
      "definitions.attributes_config" =
        {
            action
              | String
              | doc "Configures action to take on matching attributes. It allows one of [structured_metadata, drop] for all attribute types. It additionally allows index_label action for resource attributes"
              | optional,
            attributes
              | js2n.Nullable (Array String)
              | doc "List of attributes to configure how to store them or drop them altogether"
              | optional,
            regex
              | String
              | doc "Regex to choose attributes to configure how to store them or drop them altogether"
              | optional,
            ..
          },
      "definitions.aws_storage_config" =
        {
            access_key_id | String | doc "AWS Access Key ID" | optional,
            backoff_config
              | {
                max_period
                  | String
                  | doc "Maximum backoff time when s3 get Object"
                  | optional,
                max_retries
                  | std.number.Integer
                  | doc "Maximum number of times to retry when s3 get Object. Default: 5."
                  | optional,
                min_period
                  | String
                  | doc "Minimum backoff time when s3 get Object"
                  | optional,
                ..
              }
              | doc "Configures back off when S3 get Object."
              | optional,
            bucketnames
              | String
              | doc "Comma separated list of bucket names to evenly distribute chunks over. Overrides any buckets specified in s3.url flag"
              | optional,
            dynamodb
              | {
                api_limit
                  | Number
                  | doc "DynamoDB table management requests per second limit. Default: 2."
                  | optional,
                backoff_config
                  | {
                    max_period | String | doc "Maximum backoff time" | optional,
                    max_retries
                      | std.number.Integer
                      | doc "Maximum number of times to retry an operation. Default: 20."
                      | optional,
                    min_period | String | doc "Minimum backoff time" | optional,
                    ..
                  }
                  | doc ""
                  | optional,
                chunk_gang_size
                  | std.number.Integer
                  | doc "Number of chunks to group together to parallelise fetches (zero to disable). Default: 10."
                  | optional,
                chunk_get_max_parallelism
                  | std.number.Integer
                  | doc "Max number of chunk-get operations to start in parallel. Default: 32."
                  | optional,
                dynamodb_url
                  | String
                  | doc "DynamoDB endpoint URL with escaped Key and Secret encoded. If only region is specified as a host, proper endpoint will be deduced. Use inmemory:///<table-name> to use a mock in-memory implementation."
                  | optional,
                kms_key_id
                  | String
                  | doc "KMS key used for encrypting DynamoDB items.  DynamoDB will use an Amazon owned KMS key if not provided."
                  | optional,
                metrics
                  | {
                    ignore_throttle_below
                      | Number
                      | doc "Ignore throttling below this level (rate per second). Default: 1."
                      | optional,
                    queue_length_query
                      | String
                      | doc "query to fetch ingester queue length"
                      | optional,
                    read_error_query
                      | String
                      | doc "query to fetch read errors per table"
                      | optional,
                    read_usage_query
                      | String
                      | doc "query to fetch read capacity usage per table"
                      | optional,
                    scale_up_factor
                      | Number
                      | doc "Scale up capacity by this multiple. Default: 1.3."
                      | optional,
                    target_queue_length
                      | std.number.Integer
                      | doc "Queue length above which we will scale up capacity. Default: 100000."
                      | optional,
                    url
                      | String
                      | doc "Use metrics-based autoscaling, via this query URL"
                      | optional,
                    write_throttle_query
                      | String
                      | doc "query to fetch throttle rates per table"
                      | optional,
                    write_usage_query
                      | String
                      | doc "query to fetch write capacity usage per table"
                      | optional,
                    ..
                  }
                  | doc ""
                  | optional,
                throttle_limit
                  | Number
                  | doc "DynamoDB rate cap to back off when throttled. Default: 10."
                  | optional,
                ..
              }
              | doc "Deprecated: Configures storing indexes in DynamoDB."
              | optional,
            endpoint | String | doc "S3 Endpoint to connect to." | optional,
            http_config
              | {
                ca_file
                  | String
                  | doc "Path to the trusted CA file that signed the SSL certificate of the S3 endpoint."
                  | optional,
                idle_conn_timeout
                  | String
                  | doc "The maximum amount of time an idle connection will be held open."
                  | optional,
                insecure_skip_verify
                  | Bool
                  | doc "Set to true to skip verifying the certificate chain and hostname."
                  | optional,
                response_header_timeout
                  | String
                  | doc "If non-zero, specifies the amount of time to wait for a server's response headers after fully writing the request."
                  | optional,
                timeout
                  | String
                  | doc "Timeout specifies a time limit for requests made by s3 Client."
                  | optional,
                ..
              }
              | doc ""
              | optional,
            insecure | Bool | doc "Disable https on s3 connection." | optional,
            region | String | doc "AWS region to use." | optional,
            s3
              | String
              | doc "S3 endpoint URL with escaped Key and Secret encoded. If only region is specified as a host, proper endpoint will be deduced. Use inmemory:///<bucket-name> to use a mock in-memory implementation."
              | optional,
            s3forcepathstyle
              | Bool
              | doc "Set this to `true` to force the request to use path-style addressing."
              | optional,
            secret_access_key | String | doc "AWS Secret Access Key" | optional,
            session_token | String | doc "AWS Session Token" | optional,
            signature_version
              | String
              | doc "The signature version to use for authenticating against S3. Supported values are: v4."
              | optional,
            sse
              | {
                kms_encryption_context
                  | String
                  | doc "KMS Encryption Context used for object encryption. It expects JSON formatted string."
                  | optional,
                kms_key_id
                  | String
                  | doc "KMS Key ID used to encrypt objects in S3"
                  | optional,
                type
                  | String
                  | doc "Enable AWS Server Side Encryption. Supported values: SSE-KMS, SSE-S3."
                  | optional,
                ..
              }
              | doc ""
              | optional,
            storage_class
              | String
              | doc "The S3 storage class which objects will use. Supported values are: GLACIER, DEEP_ARCHIVE, GLACIER_IR, INTELLIGENT_TIERING, ONEZONE_IA, OUTPOSTS, REDUCED_REDUNDANCY, STANDARD, STANDARD_IA."
              | optional,
            ..
          },
      "definitions.azure_storage_config" =
        {
            account_key | String | doc "Azure storage account key." | optional,
            account_name
              | String
              | doc "Azure storage account name."
              | optional,
            chunk_delimiter
              | String
              | doc "Chunk delimiter for blob ID to be used"
              | optional,
            client_id
              | String
              | doc "Azure Service Principal ID(GUID)."
              | optional,
            client_secret
              | String
              | doc "Azure Service Principal secret key."
              | optional,
            connection_string
              | String
              | doc "If `connection-string` is set, the values of `account-name` and `endpoint-suffix` values will not be used. Use this method over `account-key` if you need to authenticate via a SAS token. Or if you use the Azurite emulator."
              | optional,
            container_name
              | String
              | doc "Name of the storage account blob container used to store chunks. This container must be created before running cortex."
              | optional,
            download_buffer_size
              | std.number.Integer
              | doc "Preallocated buffer size for downloads. Default: 512000."
              | optional,
            endpoint_suffix
              | String
              | doc "Azure storage endpoint suffix without schema. The storage account name will be prefixed to this value to create the FQDN."
              | optional,
            environment
              | String
              | doc "Azure Cloud environment. Supported values are: AzureGlobal, AzureChinaCloud, AzureGermanCloud, AzureUSGovernment."
              | optional,
            max_retries
              | std.number.Integer
              | doc "Number of retries for a request which times out. Default: 5."
              | optional,
            max_retry_delay
              | String
              | doc "Maximum time to wait before retrying a request."
              | optional,
            min_retry_delay
              | String
              | doc "Minimum time to wait before retrying a request."
              | optional,
            request_timeout
              | String
              | doc "Timeout for requests made against azure blob storage."
              | optional,
            tenant_id
              | String
              | doc "Azure Tenant ID is used to authenticate through Azure OAuth."
              | optional,
            upload_buffer_count
              | std.number.Integer
              | doc "Number of buffers used to used to upload a chunk. Default: 1."
              | optional,
            upload_buffer_size
              | std.number.Integer
              | doc "Preallocated buffer size for uploads. Default: 256000."
              | optional,
            use_federated_token
              | Bool
              | doc "Use Federated Token to authenticate to the Azure storage account."
              | optional,
            use_managed_identity
              | Bool
              | doc "Use Managed Identity to authenticate to the Azure storage account."
              | optional,
            use_service_principal
              | Bool
              | doc "Use Service Principal to authenticate through Azure OAuth."
              | optional,
            user_assigned_id
              | String
              | doc "User assigned identity ID to authenticate to the Azure storage account."
              | optional,
            ..
          },
      "definitions.bloom_compactor" =
        {
            compaction_interval
              | String
              | doc "Interval at which to re-run the compaction operation."
              | optional,
            compaction_retries
              | std.number.Integer
              | doc "Number of retries to perform when compaction fails. Default: 3."
              | optional,
            compaction_retries_max_backoff
              | String
              | doc "Maximum backoff time between retries."
              | optional,
            compaction_retries_min_backoff
              | String
              | doc "Minimum backoff time between retries."
              | optional,
            enabled
              | Bool
              | doc "Flag to enable or disable the usage of the bloom-compactor component."
              | optional,
            max_compaction_parallelism
              | std.number.Integer
              | doc "Maximum number of tables to compact in parallel. While increasing this value, please make sure compactor has enough disk space allocated to be able to store and compact as many tables. Default: 1."
              | optional,
            max_table_offset
              | std.number.Integer
              | doc "Oldest day-table offset (from today, inclusive) to compact. This can be used to lower cost by not trying to compact older data which doesn't change. This can be optimized by aligning it with the maximum `reject_old_samples_max_age` setting of any tenant. Default: 2."
              | optional,
            min_table_offset
              | std.number.Integer
              | doc "Newest day-table offset (from today, inclusive) to compact. Increase to lower cost by not re-writing data to object storage too frequently since recent data changes more often at the cost of not having blooms available as quickly. Default: 1."
              | optional,
            retention
              | {
                enabled | Bool | doc "Enable bloom retention." | optional,
                max_lookback_days
                  | std.number.Integer
                  | doc "Max lookback days for retention. Default: 365."
                  | optional,
                ..
              }
              | doc ""
              | optional,
            ring
              | {
                heartbeat_period
                  | String
                  | doc "Period at which to heartbeat to the ring. 0 = disabled."
                  | optional,
                heartbeat_timeout
                  | String
                  | doc "The heartbeat timeout after which compactors are considered unhealthy within the ring. 0 = never (timeout disabled)."
                  | optional,
                instance_addr
                  | String
                  | doc "IP address to advertise in the ring."
                  | optional,
                instance_availability_zone
                  | String
                  | doc "The availability zone where this instance is running. Required if zone-awareness is enabled."
                  | optional,
                instance_enable_ipv6
                  | Bool
                  | doc "Enable using a IPv6 instance address."
                  | optional,
                instance_id
                  | String
                  | doc "Instance ID to register in the ring."
                  | optional,
                instance_interface_names
                  | js2n.Nullable (Array String)
                  | doc "Name of network interface to read address from."
                  | optional,
                instance_port
                  | std.number.Integer
                  | doc "Port to advertise in the ring (defaults to server.grpc-listen-port). Default: 0."
                  | optional,
                kvstore
                  | {
                    consul
                      | refs."definitions.consul"
                      | { _ | Dyn }
                      | doc "Configuration for a Consul client. Only applies if the selected kvstore is consul."
                      | optional,
                    etcd
                      | refs."definitions.etcd"
                      | { _ | Dyn }
                      | doc "Configuration for an ETCD v3 client. Only applies if the selected kvstore is etcd."
                      | optional,
                    multi
                      | {
                        mirror_enabled
                          | Bool
                          | doc "Mirror writes to secondary store."
                          | optional,
                        mirror_timeout
                          | String
                          | doc "Timeout for storing value to secondary store."
                          | optional,
                        primary
                          | String
                          | doc "Primary backend storage used by multi-client."
                          | optional,
                        secondary
                          | String
                          | doc "Secondary backend storage used by multi-client."
                          | optional,
                        ..
                      }
                      | doc ""
                      | optional,
                    prefix
                      | String
                      | doc "The prefix for the keys in the store. Should end with a /."
                      | optional,
                    store
                      | String
                      | doc "Backend storage to use for the ring. Supported values are: consul, etcd, inmemory, memberlist, multi."
                      | optional,
                    ..
                  }
                  | doc ""
                  | optional,
                num_tokens
                  | std.number.Integer
                  | doc "Number of tokens to use in the ring per compactor. Higher number of tokens will result in more and smaller files (metas and blocks.). Default: 10."
                  | optional,
                replication_factor | js2n.Always | optional,
                tokens_file_path
                  | String
                  | doc "File path where tokens are stored. If empty, tokens are not stored at shutdown and restored at startup."
                  | optional,
                zone_awareness_enabled
                  | Bool
                  | doc "True to enable zone-awareness and replicate blocks across different availability zones."
                  | optional,
                ..
              }
              | doc "Defines the ring to be used by the bloom-compactor servers. In case this isn't configured, this block supports inheriting configuration from the common ring section."
              | optional,
            worker_parallelism
              | std.number.Integer
              | doc "Number of workers to run in parallel for compaction. Default: 1."
              | optional,
            ..
          },
      "definitions.bloom_gateway" =
        {
            block_query_concurrency
              | std.number.Integer
              | doc "Number of blocks processed concurrently on a single worker. Usually set to 2x number of CPU cores. Default: 8."
              | optional,
            client
              | {
                addresses
                  | String
                  | doc "Comma separated addresses list in DNS Service Discovery format: https://grafana.com/docs/mimir/latest/configure/about-dns-service-discovery/#supported-discovery-modes"
                  | optional,
                cache_results
                  | Bool
                  | doc "Flag to control whether to cache bloom gateway client requests/responses."
                  | optional,
                grpc_client_config
                  | refs."definitions.grpc_client"
                  | { _ | Dyn }
                  | doc "The grpc_client block configures the gRPC client used to communicate between a client and server component in Loki."
                  | optional,
                pool_config
                  | {
                    check_interval
                      | String
                      | doc "How frequently to clean up clients for servers that have gone away or are unhealthy."
                      | optional,
                    enable_health_check
                      | Bool
                      | doc "Run a health check on each server during periodic cleanup."
                      | optional,
                    health_check_timeout
                      | String
                      | doc "Timeout for the health check if health check is enabled."
                      | optional,
                    ..
                  }
                  | doc "Configures the behavior of the connection pool."
                  | optional,
                results_cache
                  | {
                    cache
                      | refs."definitions.cache_config"
                      | { _ | Dyn }
                      | doc "The cache_config block configures the cache backend for a specific Loki component."
                      | optional,
                    compression
                      | String
                      | doc "Use compression in cache. The default is an empty value '', which disables compression. Supported values are: 'snappy' and ''."
                      | optional,
                    ..
                  }
                  | doc ""
                  | optional,
                ..
              }
              | doc ""
              | optional,
            enabled
              | Bool
              | doc "Flag to enable or disable the bloom gateway component globally."
              | optional,
            max_outstanding_per_tenant
              | std.number.Integer
              | doc "Maximum number of outstanding tasks per tenant. Default: 1024."
              | optional,
            num_multiplex_tasks
              | std.number.Integer
              | doc "How many tasks are multiplexed at once. Default: 512."
              | optional,
            worker_concurrency
              | std.number.Integer
              | doc "Number of workers to use for filtering chunks concurrently. Usually set to 1x number of CPU cores. Default: 4."
              | optional,
            ..
          },
      "definitions.bos_storage_config" =
        {
            access_key_id
              | String
              | doc "Baidu Cloud Engine (BCE) Access Key ID."
              | optional,
            bucket_name | String | doc "Name of BOS bucket." | optional,
            endpoint | String | doc "BOS endpoint to connect to." | optional,
            secret_access_key
              | String
              | doc "Baidu Cloud Engine (BCE) Secret Access Key."
              | optional,
            ..
          },
      "definitions.cache_config" =
        {
            background
              | {
                writeback_buffer
                  | std.number.Integer
                  | doc "How many key batches to buffer for background write-back. Default is large to prefer size based limiting. Default: 500000."
                  | optional,
                writeback_goroutines
                  | std.number.Integer
                  | doc "At what concurrency to write back to cache. Default: 1."
                  | optional,
                writeback_size_limit
                  | String
                  | doc "Size limit in bytes for background write-back. Default: 500MB."
                  | optional,
                ..
              }
              | doc ""
              | optional,
            default_validity
              | String
              | doc "The default validity of entries for caches unless overridden."
              | optional,
            embedded_cache
              | {
                enabled
                  | Bool
                  | doc "Whether embedded cache is enabled."
                  | optional,
                max_size_items
                  | std.number.Integer
                  | doc "Maximum number of entries in the cache. Default: 0."
                  | optional,
                max_size_mb
                  | std.number.Integer
                  | doc "Maximum memory size of the cache in MB. Default: 100."
                  | optional,
                ttl
                  | String
                  | doc "The time to live for items in the cache before they get purged."
                  | optional,
                ..
              }
              | doc ""
              | optional,
            memcached
              | {
                batch_size
                  | std.number.Integer
                  | doc "How many keys to fetch in each batch. Default: 4."
                  | optional,
                expiration
                  | String
                  | doc "How long keys stay in the memcache."
                  | optional,
                parallelism
                  | std.number.Integer
                  | doc "Maximum active requests to memcache. Default: 5."
                  | optional,
                ..
              }
              | doc ""
              | optional,
            memcached_client
              | {
                addresses
                  | String
                  | doc "Comma separated addresses list in DNS Service Discovery format: https://grafana.com/docs/mimir/latest/configure/about-dns-service-discovery/#supported-discovery-modes"
                  | optional,
                circuit_breaker_consecutive_failures
                  | std.number.Integer
                  | doc "Trip circuit-breaker after this number of consecutive dial failures (if zero then circuit-breaker is disabled). Default: 10."
                  | optional,
                circuit_breaker_interval
                  | String
                  | doc "Reset circuit-breaker counts after this long (if zero then never reset)."
                  | optional,
                circuit_breaker_timeout
                  | String
                  | doc "Duration circuit-breaker remains open after tripping (if zero then 60 seconds is used)."
                  | optional,
                consistent_hash
                  | Bool
                  | doc "Use consistent hashing to distribute to memcache servers."
                  | optional,
                host
                  | String
                  | doc "Hostname for memcached service to use. If empty and if addresses is unset, no memcached will be used."
                  | optional,
                max_idle_conns
                  | std.number.Integer
                  | doc "Maximum number of idle connections in pool. Default: 16."
                  | optional,
                max_item_size
                  | std.number.Integer
                  | doc "The maximum size of an item stored in memcached. Bigger items are not stored. If set to 0, no maximum size is enforced. Default: 0."
                  | optional,
                service
                  | String
                  | doc "SRV service used to discover memcache servers."
                  | optional,
                timeout
                  | String
                  | doc "Maximum time to wait before giving up on memcached requests."
                  | optional,
                tls_ca_path
                  | String
                  | doc "Path to the CA certificates to validate server certificate against. If not set, the host's root CA certificates are used."
                  | optional,
                tls_cert_path
                  | String
                  | doc "Path to the client certificate, which will be used for authenticating with the server. Also requires the key path to be configured."
                  | optional,
                tls_cipher_suites
                  | String
                  | doc m%"
                    Override the default cipher suite list (separated by commas). Allowed values:
                    
                    Secure Ciphers:
                    - TLS_AES_128_GCM_SHA256
                    - TLS_AES_256_GCM_SHA384
                    - TLS_CHACHA20_POLY1305_SHA256
                    - TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA
                    - TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA
                    - TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA
                    - TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA
                    - TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256
                    - TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384
                    - TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
                    - TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
                    - TLS_ECDHE_RSA_WITH_CHACHA20_POLY1305_SHA256
                    - TLS_ECDHE_ECDSA_WITH_CHACHA20_POLY1305_SHA256
                    
                    Insecure Ciphers:
                    - TLS_RSA_WITH_RC4_128_SHA
                    - TLS_RSA_WITH_3DES_EDE_CBC_SHA
                    - TLS_RSA_WITH_AES_128_CBC_SHA
                    - TLS_RSA_WITH_AES_256_CBC_SHA
                    - TLS_RSA_WITH_AES_128_CBC_SHA256
                    - TLS_RSA_WITH_AES_128_GCM_SHA256
                    - TLS_RSA_WITH_AES_256_GCM_SHA384
                    - TLS_ECDHE_ECDSA_WITH_RC4_128_SHA
                    - TLS_ECDHE_RSA_WITH_RC4_128_SHA
                    - TLS_ECDHE_RSA_WITH_3DES_EDE_CBC_SHA
                    - TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA256
                    - TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256
                    
                  "%
                  | optional,
                tls_enabled
                  | Bool
                  | doc "Enable connecting to Memcached with TLS."
                  | optional,
                tls_insecure_skip_verify
                  | Bool
                  | doc "Skip validating server certificate."
                  | optional,
                tls_key_path
                  | String
                  | doc "Path to the key for the client certificate. Also requires the client certificate to be configured."
                  | optional,
                tls_min_version
                  | String
                  | doc "Override the default minimum TLS version. Allowed values: VersionTLS10, VersionTLS11, VersionTLS12, VersionTLS13"
                  | optional,
                tls_server_name
                  | String
                  | doc "Override the expected name on the server certificate."
                  | optional,
                update_interval
                  | String
                  | doc "Period with which to poll DNS for memcache servers."
                  | optional,
                ..
              }
              | doc ""
              | optional,
            redis
              | {
                db
                  | std.number.Integer
                  | doc "Database index. Default: 0."
                  | optional,
                endpoint
                  | String
                  | doc "Redis Server or Cluster configuration endpoint to use for caching. A comma-separated list of endpoints for Redis Cluster or Redis Sentinel. If empty, no redis will be used."
                  | optional,
                expiration
                  | String
                  | doc "How long keys stay in the redis."
                  | optional,
                idle_timeout
                  | String
                  | doc "Close connections after remaining idle for this duration. If the value is zero, then idle connections are not closed."
                  | optional,
                master_name
                  | String
                  | doc "Redis Sentinel master name. An empty string for Redis Server or Redis Cluster."
                  | optional,
                max_connection_age
                  | String
                  | doc "Close connections older than this duration. If the value is zero, then the pool does not close connections based on age."
                  | optional,
                password
                  | String
                  | doc "Password to use when connecting to redis."
                  | optional,
                pool_size
                  | std.number.Integer
                  | doc "Maximum number of connections in the pool. Default: 0."
                  | optional,
                route_randomly
                  | Bool
                  | doc "By default, the Redis client only reads from the master node. Enabling this option can lower pressure on the master node by randomly routing read-only commands to the master and any available replicas."
                  | optional,
                timeout
                  | String
                  | doc "Maximum time to wait before giving up on redis requests."
                  | optional,
                tls_enabled
                  | Bool
                  | doc "Enable connecting to redis with TLS."
                  | optional,
                tls_insecure_skip_verify
                  | Bool
                  | doc "Skip validating server certificate."
                  | optional,
                username
                  | String
                  | doc "Username to use when connecting to redis."
                  | optional,
                ..
              }
              | doc ""
              | optional,
            ..
          },
      "definitions.chunk_store_config" =
        {
            cache_lookups_older_than
              | String
              | doc "Cache index entries older than this period. 0 to disable."
              | optional,
            chunk_cache_config
              | refs."definitions.cache_config"
              | { _ | Dyn }
              | doc "The cache_config block configures the cache backend for a specific Loki component."
              | optional,
            chunk_cache_config_l2
              | refs."definitions.cache_config"
              | { _ | Dyn }
              | doc "The cache_config block configures the cache backend for a specific Loki component."
              | optional,
            l2_chunk_cache_handoff
              | String
              | doc "Chunks will be handed off to the L2 cache after this duration. 0 to disable L2 cache."
              | optional,
            write_dedupe_cache_config
              | refs."definitions.cache_config"
              | { _ | Dyn }
              | doc m%"
                Write dedupe cache is deprecated along with legacy index types (aws, aws-dynamo, bigtable, bigtable-hashed, cassandra, gcp, gcp-columnkey, grpc-store).
                Consider using TSDB index which does not require a write dedupe cache.
              "%
              | optional,
            ..
          },
      "definitions.common" =
        {
            compactor_address
              | String
              | doc "the http address of the compactor in the form http://host:port"
              | optional,
            compactor_grpc_address
              | String
              | doc "the grpc address of the compactor in the form host:port"
              | optional,
            instance_addr | String | optional,
            instance_interface_names | js2n.Nullable (Array String) | optional,
            path_prefix | String | optional,
            persist_tokens | Bool | optional,
            replication_factor | std.number.Integer | optional,
            ring
              | {
                heartbeat_period
                  | String
                  | doc "Period at which to heartbeat to the ring. 0 = disabled."
                  | optional,
                heartbeat_timeout
                  | String
                  | doc "The heartbeat timeout after which compactors are considered unhealthy within the ring. 0 = never (timeout disabled)."
                  | optional,
                instance_addr
                  | String
                  | doc "IP address to advertise in the ring."
                  | optional,
                instance_availability_zone
                  | String
                  | doc "The availability zone where this instance is running. Required if zone-awareness is enabled."
                  | optional,
                instance_enable_ipv6
                  | Bool
                  | doc "Enable using a IPv6 instance address."
                  | optional,
                instance_id
                  | String
                  | doc "Instance ID to register in the ring."
                  | optional,
                instance_interface_names
                  | js2n.Nullable (Array String)
                  | doc "Name of network interface to read address from."
                  | optional,
                instance_port
                  | std.number.Integer
                  | doc "Port to advertise in the ring (defaults to server.grpc-listen-port). Default: 0."
                  | optional,
                kvstore
                  | {
                    consul
                      | refs."definitions.consul"
                      | { _ | Dyn }
                      | doc "Configuration for a Consul client. Only applies if the selected kvstore is consul."
                      | optional,
                    etcd
                      | refs."definitions.etcd"
                      | { _ | Dyn }
                      | doc "Configuration for an ETCD v3 client. Only applies if the selected kvstore is etcd."
                      | optional,
                    multi
                      | {
                        mirror_enabled
                          | Bool
                          | doc "Mirror writes to secondary store."
                          | optional,
                        mirror_timeout
                          | String
                          | doc "Timeout for storing value to secondary store."
                          | optional,
                        primary
                          | String
                          | doc "Primary backend storage used by multi-client."
                          | optional,
                        secondary
                          | String
                          | doc "Secondary backend storage used by multi-client."
                          | optional,
                        ..
                      }
                      | doc ""
                      | optional,
                    prefix
                      | String
                      | doc "The prefix for the keys in the store. Should end with a /."
                      | optional,
                    store
                      | String
                      | doc "Backend storage to use for the ring. Supported values are: consul, etcd, inmemory, memberlist, multi."
                      | optional,
                    ..
                  }
                  | doc ""
                  | optional,
                num_tokens
                  | std.number.Integer
                  | doc "Number of tokens to own in the ring. Default: 128."
                  | optional,
                replication_factor
                  | std.number.Integer
                  | doc "Factor for data replication. Default: 3."
                  | optional,
                tokens_file_path
                  | String
                  | doc "File path where tokens are stored. If empty, tokens are not stored at shutdown and restored at startup."
                  | optional,
                zone_awareness_enabled
                  | Bool
                  | doc "True to enable zone-awareness and replicate blocks across different availability zones."
                  | optional,
                ..
              }
              | doc ""
              | optional,
            storage
              | {
                alibabacloud
                  | refs."definitions.alibabacloud_storage_config"
                  | { _ | Dyn }
                  | doc "The alibabacloud_storage_config block configures the connection to Alibaba Cloud Storage object storage backend."
                  | optional,
                azure
                  | refs."definitions.azure_storage_config"
                  | { _ | Dyn }
                  | doc "The azure_storage_config block configures the connection to Azure object storage backend."
                  | optional,
                bos
                  | refs."definitions.bos_storage_config"
                  | { _ | Dyn }
                  | doc "The bos_storage_config block configures the connection to Baidu Object Storage (BOS) object storage backend."
                  | optional,
                congestion_control
                  | {
                    controller
                      | {
                        aimd
                          | {
                            backoff_factor
                              | Number
                              | doc "AIMD backoff factor when upstream service is throttled to decrease number of requests sent per second (default: 0.5). Default: 0.5."
                              | optional,
                            start
                              | std.number.Integer
                              | doc "AIMD starting throughput window size: how many requests can be sent per second (default: 2000). Default: 2000."
                              | optional,
                            upper_bound
                              | std.number.Integer
                              | doc "AIMD maximum throughput window size: upper limit of requests sent per second (default: 10000). Default: 10000."
                              | optional,
                            ..
                          }
                          | doc ""
                          | optional,
                        strategy
                          | String
                          | doc "Congestion control strategy to use (default: none, options: 'aimd')."
                          | optional,
                        ..
                      }
                      | doc ""
                      | optional,
                    enabled
                      | Bool
                      | doc "Use storage congestion control (default: disabled)."
                      | optional,
                    hedging
                      | {
                        config
                          | {
                            at | String | optional,
                            max_per_second | std.number.Integer | optional,
                            up_to | std.number.Integer | optional,
                            ..
                          }
                          | doc ""
                          | optional,
                        strategy
                          | String
                          | doc "Congestion control hedge strategy to use (default: none, options: 'limited')."
                          | optional,
                        ..
                      }
                      | doc ""
                      | optional,
                    retry
                      | {
                        limit
                          | std.number.Integer
                          | doc "Maximum number of retries allowed. Default: 2."
                          | optional,
                        strategy
                          | String
                          | doc "Congestion control retry strategy to use (default: none, options: 'limited')."
                          | optional,
                        ..
                      }
                      | doc ""
                      | optional,
                    ..
                  }
                  | doc ""
                  | optional,
                cos
                  | refs."definitions.cos_storage_config"
                  | { _ | Dyn }
                  | doc "The cos_storage_config block configures the connection to IBM Cloud Object Storage (COS) backend."
                  | optional,
                filesystem
                  | {
                    chunks_directory
                      | String
                      | doc "Directory to store chunks in."
                      | optional,
                    rules_directory
                      | String
                      | doc "Directory to store rules in."
                      | optional,
                    ..
                  }
                  | doc ""
                  | optional,
                gcs
                  | refs."definitions.gcs_storage_config"
                  | { _ | Dyn }
                  | doc "The gcs_storage_config block configures the connection to Google Cloud Storage object storage backend."
                  | optional,
                hedging
                  | {
                    at
                      | String
                      | doc "If set to a non-zero value a second request will be issued at the provided duration. Default is 0 (disabled)"
                      | optional,
                    max_per_second
                      | std.number.Integer
                      | doc "The maximum of hedge requests allowed per seconds. Default: 5."
                      | optional,
                    up_to
                      | std.number.Integer
                      | doc "The maximum of hedge requests allowed. Default: 2."
                      | optional,
                    ..
                  }
                  | doc ""
                  | optional,
                s3
                  | refs."definitions.s3_storage_config"
                  | { _ | Dyn }
                  | doc "The s3_storage_config block configures the connection to Amazon S3 object storage backend."
                  | optional,
                swift
                  | refs."definitions.swift_storage_config"
                  | { _ | Dyn }
                  | doc "The swift_storage_config block configures the connection to OpenStack Object Storage (Swift) object storage backend."
                  | optional,
                ..
              }
              | doc ""
              | optional,
            ..
          },
      "definitions.compactor" =
        {
            apply_retention_interval
              | String
              | doc "Interval at which to apply/enforce retention. 0 means run at same interval as compaction. If non-zero, it should always be a multiple of compaction interval."
              | optional,
            compaction_interval
              | String
              | doc "Interval at which to re-run the compaction operation."
              | optional,
            compactor_ring
              | {
                heartbeat_period
                  | String
                  | doc "Period at which to heartbeat to the ring. 0 = disabled."
                  | optional,
                heartbeat_timeout
                  | String
                  | doc "The heartbeat timeout after which compactors are considered unhealthy within the ring. 0 = never (timeout disabled)."
                  | optional,
                instance_addr
                  | String
                  | doc "IP address to advertise in the ring."
                  | optional,
                instance_availability_zone
                  | String
                  | doc "The availability zone where this instance is running. Required if zone-awareness is enabled."
                  | optional,
                instance_enable_ipv6
                  | Bool
                  | doc "Enable using a IPv6 instance address."
                  | optional,
                instance_id
                  | String
                  | doc "Instance ID to register in the ring."
                  | optional,
                instance_interface_names
                  | js2n.Nullable (Array String)
                  | doc "Name of network interface to read address from."
                  | optional,
                instance_port
                  | std.number.Integer
                  | doc "Port to advertise in the ring (defaults to server.grpc-listen-port). Default: 0."
                  | optional,
                kvstore
                  | {
                    consul
                      | refs."definitions.consul"
                      | { _ | Dyn }
                      | doc "Configuration for a Consul client. Only applies if the selected kvstore is consul."
                      | optional,
                    etcd
                      | refs."definitions.etcd"
                      | { _ | Dyn }
                      | doc "Configuration for an ETCD v3 client. Only applies if the selected kvstore is etcd."
                      | optional,
                    multi
                      | {
                        mirror_enabled
                          | Bool
                          | doc "Mirror writes to secondary store."
                          | optional,
                        mirror_timeout
                          | String
                          | doc "Timeout for storing value to secondary store."
                          | optional,
                        primary
                          | String
                          | doc "Primary backend storage used by multi-client."
                          | optional,
                        secondary
                          | String
                          | doc "Secondary backend storage used by multi-client."
                          | optional,
                        ..
                      }
                      | doc ""
                      | optional,
                    prefix
                      | String
                      | doc "The prefix for the keys in the store. Should end with a /."
                      | optional,
                    store
                      | String
                      | doc "Backend storage to use for the ring. Supported values are: consul, etcd, inmemory, memberlist, multi."
                      | optional,
                    ..
                  }
                  | doc ""
                  | optional,
                num_tokens | js2n.Always | optional,
                replication_factor | js2n.Always | optional,
                tokens_file_path
                  | String
                  | doc "File path where tokens are stored. If empty, tokens are not stored at shutdown and restored at startup."
                  | optional,
                zone_awareness_enabled
                  | Bool
                  | doc "True to enable zone-awareness and replicate blocks across different availability zones."
                  | optional,
                ..
              }
              | doc "The hash ring configuration used by compactors to elect a single instance for running compactions. The CLI flags prefix for this block config is: compactor.ring"
              | optional,
            delete_batch_size
              | std.number.Integer
              | doc "The max number of delete requests to run per compaction cycle. Default: 70."
              | optional,
            delete_max_interval
              | String
              | doc "Constrain the size of any single delete request with line filters. When a delete request > delete_max_interval is input, the request is sharded into smaller requests of no more than delete_max_interval"
              | optional,
            delete_request_cancel_period
              | String
              | doc "Allow cancellation of delete request until duration after they are created. Data would be deleted only after delete requests have been older than this duration. Ideally this should be set to at least 24h."
              | optional,
            delete_request_store
              | String
              | doc "Store used for managing delete requests."
              | optional,
            delete_request_store_key_prefix
              | String
              | doc "Path prefix for storing delete requests."
              | optional,
            max_compaction_parallelism
              | std.number.Integer
              | doc "Maximum number of tables to compact in parallel. While increasing this value, please make sure compactor has enough disk space allocated to be able to store and compact as many tables. Default: 1."
              | optional,
            retention_delete_delay
              | String
              | doc "Delay after which chunks will be fully deleted during retention."
              | optional,
            retention_delete_worker_count
              | std.number.Integer
              | doc "The total amount of worker to use to delete chunks. Default: 150."
              | optional,
            retention_enabled
              | Bool
              | doc "Activate custom (per-stream,per-tenant) retention."
              | optional,
            retention_table_timeout
              | String
              | doc "The maximum amount of time to spend running retention and deletion on any given table in the index."
              | optional,
            skip_latest_n_tables
              | std.number.Integer
              | doc "Do not compact N latest tables. Together with -compactor.run-once and -compactor.tables-to-compact, this is useful when clearing compactor backlogs. Default: 0."
              | optional,
            tables_to_compact
              | std.number.Integer
              | doc "Number of tables that compactor will try to compact. Newer tables are chosen when this is less than the number of tables available. Default: 0."
              | optional,
            upload_parallelism
              | std.number.Integer
              | doc "Number of upload/remove operations to execute in parallel when finalizing a compaction. NOTE: This setting is per compaction operation, which can be executed in parallel. The upper bound on the number of concurrent uploads is upload_parallelism * max_compaction_parallelism. Default: 10."
              | optional,
            working_directory
              | String
              | doc "Directory where files can be downloaded for compaction."
              | optional,
            ..
          },
      "definitions.consul" =
        {
            acl_token
              | String
              | doc "ACL Token used to interact with Consul."
              | optional,
            cas_retry_delay
              | String
              | doc "Maximum duration to wait before retrying a Compare And Swap (CAS) operation."
              | optional,
            consistent_reads
              | Bool
              | doc "Enable consistent reads to Consul."
              | optional,
            host | String | doc "Hostname and port of Consul." | optional,
            http_client_timeout
              | String
              | doc "HTTP timeout when talking to Consul"
              | optional,
            watch_burst_size
              | std.number.Integer
              | doc "Burst size used in rate limit. Values less than 1 are treated as 1. Default: 1."
              | optional,
            watch_rate_limit
              | Number
              | doc "Rate limit when watching key or prefix in Consul, in requests per second. 0 disables the rate limit. Default: 1."
              | optional,
            ..
          },
      "definitions.cos_storage_config" =
        {
            access_key_id | String | doc "COS HMAC Access Key ID." | optional,
            api_key | String | doc "IAM API key to access COS." | optional,
            auth_endpoint
              | String
              | doc "IAM Auth Endpoint for authentication."
              | optional,
            backoff_config
              | {
                max_period
                  | String
                  | doc "Maximum backoff time when cos get Object."
                  | optional,
                max_retries
                  | std.number.Integer
                  | doc "Maximum number of times to retry when cos get Object. Default: 5."
                  | optional,
                min_period
                  | String
                  | doc "Minimum backoff time when cos get Object."
                  | optional,
                ..
              }
              | doc "Configures back off when cos get Object."
              | optional,
            bucketnames
              | String
              | doc "Comma separated list of bucket names to evenly distribute chunks over."
              | optional,
            cr_token_file_path
              | String
              | doc "Compute resource token file path."
              | optional,
            endpoint | String | doc "COS Endpoint to connect to." | optional,
            forcepathstyle
              | Bool
              | doc "Set this to `true` to force the request to use path-style addressing."
              | optional,
            http_config
              | {
                idle_conn_timeout
                  | String
                  | doc "The maximum amount of time an idle connection will be held open."
                  | optional,
                response_header_timeout
                  | String
                  | doc "If non-zero, specifies the amount of time to wait for a server's response headers after fully writing the request."
                  | optional,
                ..
              }
              | doc ""
              | optional,
            region | String | doc "COS region to use." | optional,
            secret_access_key
              | String
              | doc "COS HMAC Secret Access Key."
              | optional,
            service_instance_id
              | String
              | doc "COS service instance id to use."
              | optional,
            trusted_profile_id
              | String
              | doc "ID of the trusted profile."
              | optional,
            trusted_profile_name
              | String
              | doc "Name of the trusted profile."
              | optional,
            ..
          },
      "definitions.distributor" =
        {
            otlp_config
              | {
                default_resource_attributes_as_index_labels
                  | js2n.Nullable (Array String)
                  | doc "List of default otlp resource attributes to be picked as index labels"
                  | optional,
                ..
              }
              | doc ""
              | optional,
            rate_store
              | {
                debug
                  | Bool
                  | doc "If enabled, detailed logs and spans will be emitted."
                  | optional,
                ingester_request_timeout
                  | String
                  | doc "Timeout for communication between distributors and any given ingester when updating rates"
                  | optional,
                max_request_parallelism
                  | std.number.Integer
                  | doc "The max number of concurrent requests to make to ingester stream apis. Default: 200."
                  | optional,
                stream_rate_update_interval
                  | String
                  | doc "The interval on which distributors will update current stream rates from ingesters"
                  | optional,
                ..
              }
              | doc ""
              | optional,
            ring
              | {
                heartbeat_period
                  | String
                  | doc "Period at which to heartbeat to the ring. 0 = disabled."
                  | optional,
                heartbeat_timeout
                  | String
                  | doc "The heartbeat timeout after which distributors are considered unhealthy within the ring. 0 = never (timeout disabled)."
                  | optional,
                instance_interface_names
                  | js2n.Nullable (Array String)
                  | doc "Name of network interface to read address from."
                  | optional,
                kvstore
                  | {
                    consul
                      | refs."definitions.consul"
                      | { _ | Dyn }
                      | doc "Configuration for a Consul client. Only applies if the selected kvstore is consul."
                      | optional,
                    etcd
                      | refs."definitions.etcd"
                      | { _ | Dyn }
                      | doc "Configuration for an ETCD v3 client. Only applies if the selected kvstore is etcd."
                      | optional,
                    multi
                      | {
                        mirror_enabled
                          | Bool
                          | doc "Mirror writes to secondary store."
                          | optional,
                        mirror_timeout
                          | String
                          | doc "Timeout for storing value to secondary store."
                          | optional,
                        primary
                          | String
                          | doc "Primary backend storage used by multi-client."
                          | optional,
                        secondary
                          | String
                          | doc "Secondary backend storage used by multi-client."
                          | optional,
                        ..
                      }
                      | doc ""
                      | optional,
                    prefix
                      | String
                      | doc "The prefix for the keys in the store. Should end with a /."
                      | optional,
                    store
                      | String
                      | doc "Backend storage to use for the ring. Supported values are: consul, etcd, inmemory, memberlist, multi."
                      | optional,
                    ..
                  }
                  | doc ""
                  | optional,
                ..
              }
              | doc ""
              | optional,
            write_failures_logging
              | {
                add_insights_label
                  | Bool
                  | doc "Whether a insight=true key should be logged or not. Default: false."
                  | optional,
                rate
                  | String
                  | doc "Log volume allowed (per second). Default: 1KB. Default: 1KB."
                  | optional,
                ..
              }
              | doc "Customize the logging of write failures."
              | optional,
            ..
          },
      "definitions.etcd" =
        {
            dial_timeout
              | String
              | doc "The dial timeout for the etcd connection."
              | optional,
            endpoints
              | js2n.Nullable (Array String)
              | doc "The etcd endpoints to connect to."
              | optional,
            max_retries
              | std.number.Integer
              | doc "The maximum number of retries to do for failed ops. Default: 10."
              | optional,
            password | String | doc "Etcd password." | optional,
            tls_ca_path
              | String
              | doc "Path to the CA certificates to validate server certificate against. If not set, the host's root CA certificates are used."
              | optional,
            tls_cert_path
              | String
              | doc "Path to the client certificate, which will be used for authenticating with the server. Also requires the key path to be configured."
              | optional,
            tls_cipher_suites
              | String
              | doc m%"
                Override the default cipher suite list (separated by commas). Allowed values:
                
                Secure Ciphers:
                - TLS_AES_128_GCM_SHA256
                - TLS_AES_256_GCM_SHA384
                - TLS_CHACHA20_POLY1305_SHA256
                - TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA
                - TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA
                - TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA
                - TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA
                - TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256
                - TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384
                - TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
                - TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
                - TLS_ECDHE_RSA_WITH_CHACHA20_POLY1305_SHA256
                - TLS_ECDHE_ECDSA_WITH_CHACHA20_POLY1305_SHA256
                
                Insecure Ciphers:
                - TLS_RSA_WITH_RC4_128_SHA
                - TLS_RSA_WITH_3DES_EDE_CBC_SHA
                - TLS_RSA_WITH_AES_128_CBC_SHA
                - TLS_RSA_WITH_AES_256_CBC_SHA
                - TLS_RSA_WITH_AES_128_CBC_SHA256
                - TLS_RSA_WITH_AES_128_GCM_SHA256
                - TLS_RSA_WITH_AES_256_GCM_SHA384
                - TLS_ECDHE_ECDSA_WITH_RC4_128_SHA
                - TLS_ECDHE_RSA_WITH_RC4_128_SHA
                - TLS_ECDHE_RSA_WITH_3DES_EDE_CBC_SHA
                - TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA256
                - TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256
                
              "%
              | optional,
            tls_enabled | Bool | doc "Enable TLS." | optional,
            tls_insecure_skip_verify
              | Bool
              | doc "Skip validating server certificate."
              | optional,
            tls_key_path
              | String
              | doc "Path to the key for the client certificate. Also requires the client certificate to be configured."
              | optional,
            tls_min_version
              | String
              | doc "Override the default minimum TLS version. Allowed values: VersionTLS10, VersionTLS11, VersionTLS12, VersionTLS13"
              | optional,
            tls_server_name
              | String
              | doc "Override the expected name on the server certificate."
              | optional,
            username | String | doc "Etcd username." | optional,
            ..
          },
      "definitions.frontend" =
        {
            compress_responses
              | Bool
              | doc "Compress HTTP responses."
              | optional,
            downstream_url | String | doc "URL of downstream Loki." | optional,
            encoding
              | String
              | doc "Defines the encoding for requests to and responses from the scheduler and querier. Can be 'json' or 'protobuf' (defaults to 'json')."
              | optional,
            graceful_shutdown_timeout
              | String
              | doc "Time to wait for inflight requests to finish before forcefully shutting down. This needs to be aligned with the query timeout and the graceful termination period of the process orchestrator."
              | optional,
            grpc_client_config
              | refs."definitions.grpc_client"
              | { _ | Dyn }
              | doc "The grpc_client block configures the gRPC client used to communicate between a client and server component in Loki."
              | optional,
            instance_interface_names
              | js2n.Nullable (Array String)
              | doc "Name of network interface to read address from. This address is sent to query-scheduler and querier, which uses it to send the query response back to query-frontend."
              | optional,
            log_queries_longer_than
              | String
              | doc "Log queries that are slower than the specified duration. Set to 0 to disable. Set to < 0 to enable on all queries."
              | optional,
            log_query_request_headers
              | String
              | doc "Comma-separated list of request header names to include in query logs. Applies to both query stats and slow queries logs."
              | optional,
            max_body_size
              | std.number.Integer
              | doc "Max body size for downstream prometheus. Default: 10485760."
              | optional,
            max_outstanding_per_tenant
              | std.number.Integer
              | doc "Maximum number of outstanding requests per tenant per frontend; requests beyond this error with HTTP 429. Default: 2048."
              | optional,
            querier_forget_delay
              | String
              | doc "In the event a tenant is repeatedly sending queries that lead the querier to crash or be killed due to an out-of-memory error, the crashed querier will be disconnected from the query frontend and a new querier will be immediately assigned to the tenant’s shard. This invalidates the assumption that shuffle sharding can be used to reduce the impact on tenants. This option mitigates the impact by configuring a delay between when a querier disconnects because of a crash and when the crashed querier is actually removed from the tenant's shard."
              | optional,
            query_stats_enabled
              | Bool
              | doc "True to enable query statistics tracking. When enabled, a message with some statistics is logged for every query."
              | optional,
            scheduler_address
              | String
              | doc "DNS hostname used for finding query-schedulers."
              | optional,
            scheduler_dns_lookup_period
              | String
              | doc "How often to resolve the scheduler-address, in order to look for new query-scheduler instances. Also used to determine how often to poll the scheduler-ring for addresses if the scheduler-ring is configured."
              | optional,
            scheduler_worker_concurrency
              | std.number.Integer
              | doc "Number of concurrent workers forwarding queries to single query-scheduler. Default: 5."
              | optional,
            tail_proxy_url
              | String
              | doc "URL of querier for tail proxy."
              | optional,
            tail_tls_config
              | refs."definitions.tls_config"
              | { _ | Dyn }
              | doc "The TLS configuration."
              | optional,
            ..
          },
      "definitions.frontend_worker" =
        {
            dns_lookup_duration
              | String
              | doc "How often to query DNS for query-frontend or query-scheduler address. Also used to determine how often to poll the scheduler-ring for addresses if the scheduler-ring is configured."
              | optional,
            frontend_address
              | String
              | doc "Address of query frontend service, in host:port format. If -querier.scheduler-address is set as well, querier will use scheduler instead. Only one of -querier.frontend-address or -querier.scheduler-address can be set. If neither is set, queries are only received via HTTP endpoint."
              | optional,
            grpc_client_config
              | refs."definitions.grpc_client"
              | { _ | Dyn }
              | doc "The grpc_client block configures the gRPC client used to communicate between a client and server component in Loki."
              | optional,
            id
              | String
              | doc "Querier ID, sent to frontend service to identify requests from the same querier. Defaults to hostname."
              | optional,
            scheduler_address
              | String
              | doc "Hostname (and port) of scheduler that querier will periodically resolve, connect to and receive queries from. Only one of -querier.frontend-address or -querier.scheduler-address can be set. If neither is set, queries are only received via HTTP endpoint."
              | optional,
            ..
          },
      "definitions.gcs_storage_config" =
        {
            bucket_name
              | String
              | doc "Name of GCS bucket. Please refer to https://cloud.google.com/docs/authentication/production for more information about how to configure authentication."
              | optional,
            chunk_buffer_size
              | std.number.Integer
              | doc "The size of the buffer that GCS client for each PUT request. 0 to disable buffering. Default: 0."
              | optional,
            enable_http2 | Bool | doc "Enable HTTP2 connections." | optional,
            enable_opencensus
              | Bool
              | doc "Enable OpenCensus (OC) instrumentation for all requests."
              | optional,
            enable_retries
              | Bool
              | doc "Enable automatic retries of failed idempotent requests."
              | optional,
            request_timeout
              | String
              | doc "The duration after which the requests to GCS should be timed out."
              | optional,
            service_account
              | String
              | doc "Service account key content in JSON format, refer to https://cloud.google.com/iam/docs/creating-managing-service-account-keys for creation."
              | optional,
            ..
          },
      "definitions.grpc_client" =
        {
            backoff_config
              | {
                max_period
                  | String
                  | doc "Maximum delay when backing off."
                  | optional,
                max_retries
                  | std.number.Integer
                  | doc "Number of times to backoff and retry before failing. Default: 10."
                  | optional,
                min_period
                  | String
                  | doc "Minimum delay when backing off."
                  | optional,
                ..
              }
              | doc ""
              | optional,
            backoff_on_ratelimits
              | Bool
              | doc "Enable backoff and retry when we hit rate limits."
              | optional,
            connect_backoff_base_delay
              | String
              | doc "Initial backoff delay after first connection failure. Only relevant if ConnectTimeout > 0."
              | optional,
            connect_backoff_max_delay
              | String
              | doc "Maximum backoff delay when establishing a connection. Only relevant if ConnectTimeout > 0."
              | optional,
            connect_timeout
              | String
              | doc "The maximum amount of time to establish a connection. A value of 0 means default gRPC client connect timeout and backoff."
              | optional,
            grpc_compression
              | String
              | doc "Use compression when sending messages. Supported values are: 'gzip', 'snappy' and '' (disable compression)"
              | optional,
            initial_connection_window_size
              | String
              | doc "Initial connection window size. Values less than the default are not supported and are ignored. Setting this to a value other than the default disables the BDP estimator. Default: 63KiB1023B."
              | optional,
            initial_stream_window_size
              | String
              | doc "Initial stream window size. Values less than the default are not supported and are ignored. Setting this to a value other than the default disables the BDP estimator. Default: 63KiB1023B."
              | optional,
            max_recv_msg_size
              | std.number.Integer
              | doc "gRPC client max receive message size (bytes). Default: 104857600."
              | optional,
            max_send_msg_size
              | std.number.Integer
              | doc "gRPC client max send message size (bytes). Default: 104857600."
              | optional,
            rate_limit
              | Number
              | doc "Rate limit for gRPC client; 0 means disabled. Default: 0."
              | optional,
            rate_limit_burst
              | std.number.Integer
              | doc "Rate limit burst for gRPC client. Default: 0."
              | optional,
            tls_ca_path
              | String
              | doc "Path to the CA certificates to validate server certificate against. If not set, the host's root CA certificates are used."
              | optional,
            tls_cert_path
              | String
              | doc "Path to the client certificate, which will be used for authenticating with the server. Also requires the key path to be configured."
              | optional,
            tls_cipher_suites
              | String
              | doc m%"
                Override the default cipher suite list (separated by commas). Allowed values:
                
                Secure Ciphers:
                - TLS_AES_128_GCM_SHA256
                - TLS_AES_256_GCM_SHA384
                - TLS_CHACHA20_POLY1305_SHA256
                - TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA
                - TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA
                - TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA
                - TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA
                - TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256
                - TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384
                - TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
                - TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
                - TLS_ECDHE_RSA_WITH_CHACHA20_POLY1305_SHA256
                - TLS_ECDHE_ECDSA_WITH_CHACHA20_POLY1305_SHA256
                
                Insecure Ciphers:
                - TLS_RSA_WITH_RC4_128_SHA
                - TLS_RSA_WITH_3DES_EDE_CBC_SHA
                - TLS_RSA_WITH_AES_128_CBC_SHA
                - TLS_RSA_WITH_AES_256_CBC_SHA
                - TLS_RSA_WITH_AES_128_CBC_SHA256
                - TLS_RSA_WITH_AES_128_GCM_SHA256
                - TLS_RSA_WITH_AES_256_GCM_SHA384
                - TLS_ECDHE_ECDSA_WITH_RC4_128_SHA
                - TLS_ECDHE_RSA_WITH_RC4_128_SHA
                - TLS_ECDHE_RSA_WITH_3DES_EDE_CBC_SHA
                - TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA256
                - TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256
                
              "%
              | optional,
            tls_enabled
              | Bool
              | doc "Enable TLS in the gRPC client. This flag needs to be enabled when any other TLS flag is set. If set to false, insecure connection to gRPC server will be used."
              | optional,
            tls_insecure_skip_verify
              | Bool
              | doc "Skip validating server certificate."
              | optional,
            tls_key_path
              | String
              | doc "Path to the key for the client certificate. Also requires the client certificate to be configured."
              | optional,
            tls_min_version
              | String
              | doc "Override the default minimum TLS version. Allowed values: VersionTLS10, VersionTLS11, VersionTLS12, VersionTLS13"
              | optional,
            tls_server_name
              | String
              | doc "Override the expected name on the server certificate."
              | optional,
            ..
          },
      "definitions.index_gateway" =
        {
            mode
              | String
              | doc m%"
                Defines in which mode the index gateway server will operate (default to 'simple'). It supports two modes:
                - 'simple': an index gateway server instance is responsible for handling, storing and returning requests for all indices for all tenants.
                - 'ring': an index gateway server instance is responsible for a subset of tenants instead of all tenants.
              "%
              | optional,
            ring
              | {
                heartbeat_period
                  | String
                  | doc "Period at which to heartbeat to the ring. 0 = disabled."
                  | optional,
                heartbeat_timeout
                  | String
                  | doc "The heartbeat timeout after which compactors are considered unhealthy within the ring. 0 = never (timeout disabled)."
                  | optional,
                instance_addr
                  | String
                  | doc "IP address to advertise in the ring."
                  | optional,
                instance_availability_zone
                  | String
                  | doc "The availability zone where this instance is running. Required if zone-awareness is enabled."
                  | optional,
                instance_enable_ipv6
                  | Bool
                  | doc "Enable using a IPv6 instance address."
                  | optional,
                instance_id
                  | String
                  | doc "Instance ID to register in the ring."
                  | optional,
                instance_interface_names
                  | js2n.Nullable (Array String)
                  | doc "Name of network interface to read address from."
                  | optional,
                instance_port
                  | std.number.Integer
                  | doc "Port to advertise in the ring (defaults to server.grpc-listen-port). Default: 0."
                  | optional,
                kvstore
                  | {
                    consul
                      | refs."definitions.consul"
                      | { _ | Dyn }
                      | doc "Configuration for a Consul client. Only applies if the selected kvstore is consul."
                      | optional,
                    etcd
                      | refs."definitions.etcd"
                      | { _ | Dyn }
                      | doc "Configuration for an ETCD v3 client. Only applies if the selected kvstore is etcd."
                      | optional,
                    multi
                      | {
                        mirror_enabled
                          | Bool
                          | doc "Mirror writes to secondary store."
                          | optional,
                        mirror_timeout
                          | String
                          | doc "Timeout for storing value to secondary store."
                          | optional,
                        primary
                          | String
                          | doc "Primary backend storage used by multi-client."
                          | optional,
                        secondary
                          | String
                          | doc "Secondary backend storage used by multi-client."
                          | optional,
                        ..
                      }
                      | doc ""
                      | optional,
                    prefix
                      | String
                      | doc "The prefix for the keys in the store. Should end with a /."
                      | optional,
                    store
                      | String
                      | doc "Backend storage to use for the ring. Supported values are: consul, etcd, inmemory, memberlist, multi."
                      | optional,
                    ..
                  }
                  | doc ""
                  | optional,
                num_tokens | js2n.Always | optional,
                replication_factor
                  | std.number.Integer
                  | doc "Deprecated: How many index gateway instances are assigned to each tenant. Use -index-gateway.shard-size instead. The shard size is also a per-tenant setting. Default: 3."
                  | optional,
                tokens_file_path
                  | String
                  | doc "File path where tokens are stored. If empty, tokens are not stored at shutdown and restored at startup."
                  | optional,
                zone_awareness_enabled
                  | Bool
                  | doc "True to enable zone-awareness and replicate blocks across different availability zones."
                  | optional,
                ..
              }
              | doc "Defines the ring to be used by the index gateway servers and clients in case the servers are configured to run in 'ring' mode. In case this isn't configured, this block supports inheriting configuration from the common ring section."
              | optional,
            ..
          },
      "definitions.ingester" =
        {
            autoforget_unhealthy
              | Bool
              | doc "Forget about ingesters having heartbeat timestamps older than `ring.kvstore.heartbeat_timeout`. This is equivalent to clicking on the `/ring` `forget` button in the UI: the ingester is removed from the ring. This is a useful setting when you are sure that an unhealthy node won't return. An example is when not using stateful sets or the equivalent. Use `memberlist.rejoin_interval` > 0 to handle network partition cases when using a memberlist."
              | optional,
            chunk_block_size
              | std.number.Integer
              | doc "The targeted _uncompressed_ size in bytes of a chunk block When this threshold is exceeded the head block will be cut and compressed inside the chunk. Default: 262144."
              | optional,
            chunk_encoding
              | String
              | doc "The algorithm to use for compressing chunk. (none, gzip, lz4-64k, snappy, lz4-256k, lz4-1M, lz4, flate, zstd)"
              | optional,
            chunk_idle_period
              | String
              | doc "How long chunks should sit in-memory with no updates before being flushed if they don't hit the max block size. This means that half-empty chunks will still be flushed after a certain period as long as they receive no further activity."
              | optional,
            chunk_retain_period
              | String
              | doc "How long chunks should be retained in-memory after they've been flushed."
              | optional,
            chunk_target_size
              | std.number.Integer
              | doc "A target _compressed_ size in bytes for chunks. This is a desired size not an exact size, chunks may be slightly bigger or significantly smaller if they get flushed for other reasons (e.g. chunk_idle_period). A value of 0 creates chunks with a fixed 10 blocks, a non zero value will create chunks with a variable number of blocks to meet the target size. Default: 1572864."
              | optional,
            concurrent_flushes
              | std.number.Integer
              | doc "How many flushes can happen concurrently from each stream. Default: 32."
              | optional,
            flush_check_period
              | String
              | doc "How often should the ingester see if there are any blocks to flush. The first flush check is delayed by a random time up to 0.8x the flush check period. Additionally, there is +/- 1% jitter added to the interval."
              | optional,
            flush_op_timeout
              | String
              | doc "The timeout before a flush is cancelled."
              | optional,
            index_shards
              | std.number.Integer
              | doc "Shard factor used in the ingesters for the in process reverse index. This MUST be evenly divisible by ALL schema shard factors or Loki will not start. Default: 32."
              | optional,
            lifecycler
              | {
                address
                  | String
                  | doc "IP address to advertise in the ring."
                  | optional,
                availability_zone
                  | String
                  | doc "The availability zone where this instance is running."
                  | optional,
                enable_inet6
                  | Bool
                  | doc "Enable IPv6 support. Required to make use of IP addresses from IPv6 interfaces."
                  | optional,
                final_sleep
                  | String
                  | doc "Duration to sleep for before exiting, to ensure metrics are scraped."
                  | optional,
                heartbeat_period
                  | String
                  | doc "Period at which to heartbeat to consul. 0 = disabled."
                  | optional,
                heartbeat_timeout
                  | String
                  | doc "Heartbeat timeout after which instance is assumed to be unhealthy. 0 = disabled."
                  | optional,
                id | String | doc "ID to register in the ring." | optional,
                interface_names
                  | js2n.Nullable (Array String)
                  | doc "Name of network interface to read address from."
                  | optional,
                join_after
                  | String
                  | doc "Period to wait for a claim from another member; will join automatically after this."
                  | optional,
                min_ready_duration
                  | String
                  | doc "Minimum duration to wait after the internal readiness checks have passed but before succeeding the readiness endpoint. This is used to slowdown deployment controllers (eg. Kubernetes) after an instance is ready and before they proceed with a rolling update, to give the rest of the cluster instances enough time to receive ring updates."
                  | optional,
                num_tokens
                  | std.number.Integer
                  | doc "Number of tokens for each ingester. Default: 128."
                  | optional,
                observe_period
                  | String
                  | doc "Observe tokens after generating to resolve collisions. Useful when using gossiping ring."
                  | optional,
                port
                  | std.number.Integer
                  | doc "port to advertise in consul (defaults to server.grpc-listen-port). Default: 0."
                  | optional,
                readiness_check_ring_health
                  | Bool
                  | doc "When enabled the readiness probe succeeds only after all instances are ACTIVE and healthy in the ring, otherwise only the instance itself is checked. This option should be disabled if in your cluster multiple instances can be rolled out simultaneously, otherwise rolling updates may be slowed down."
                  | optional,
                ring
                  | {
                    excluded_zones
                      | String
                      | doc "Comma-separated list of zones to exclude from the ring. Instances in excluded zones will be filtered out from the ring."
                      | optional,
                    heartbeat_timeout
                      | String
                      | doc "The heartbeat timeout after which ingesters are skipped for reads/writes. 0 = never (timeout disabled)."
                      | optional,
                    kvstore
                      | {
                        consul
                          | refs."definitions.consul"
                          | { _ | Dyn }
                          | doc "Configuration for a Consul client. Only applies if the selected kvstore is consul."
                          | optional,
                        etcd
                          | refs."definitions.etcd"
                          | { _ | Dyn }
                          | doc "Configuration for an ETCD v3 client. Only applies if the selected kvstore is etcd."
                          | optional,
                        multi
                          | {
                            mirror_enabled
                              | Bool
                              | doc "Mirror writes to secondary store."
                              | optional,
                            mirror_timeout
                              | String
                              | doc "Timeout for storing value to secondary store."
                              | optional,
                            primary
                              | String
                              | doc "Primary backend storage used by multi-client."
                              | optional,
                            secondary
                              | String
                              | doc "Secondary backend storage used by multi-client."
                              | optional,
                            ..
                          }
                          | doc ""
                          | optional,
                        prefix
                          | String
                          | doc "The prefix for the keys in the store. Should end with a /."
                          | optional,
                        store
                          | String
                          | doc "Backend storage to use for the ring. Supported values are: consul, etcd, inmemory, memberlist, multi."
                          | optional,
                        ..
                      }
                      | doc ""
                      | optional,
                    replication_factor
                      | std.number.Integer
                      | doc "The number of ingesters to write to and read from. Default: 3."
                      | optional,
                    zone_awareness_enabled
                      | Bool
                      | doc "True to enable the zone-awareness and replicate ingested samples across different availability zones."
                      | optional,
                    ..
                  }
                  | doc ""
                  | optional,
                tokens_file_path
                  | String
                  | doc "File path where tokens are stored. If empty, tokens are not stored at shutdown and restored at startup."
                  | optional,
                unregister_on_shutdown
                  | Bool
                  | doc "Unregister from the ring upon clean shutdown. It can be useful to disable for rolling restarts with consistent naming in conjunction with -distributor.extend-writes=false."
                  | optional,
                ..
              }
              | doc "Configures how the lifecycle of the ingester will operate and where it will register for discovery."
              | optional,
            max_chunk_age
              | String
              | doc "The maximum duration of a timeseries chunk in memory. If a timeseries runs for longer than this, the current chunk will be flushed to the store and a new chunk created."
              | optional,
            max_dropped_streams
              | std.number.Integer
              | doc "Maximum number of dropped streams to keep in memory during tailing. Default: 10."
              | optional,
            max_returned_stream_errors
              | std.number.Integer
              | doc "The maximum number of errors a stream will report to the user when a push fails. 0 to make unlimited. Default: 10."
              | optional,
            query_store_max_look_back_period
              | String
              | doc "How far back should an ingester be allowed to query the store for data, for use only with boltdb-shipper/tsdb index and filesystem object store. -1 for infinite."
              | optional,
            shutdown_marker_path
              | String
              | doc "Path where the shutdown marker file is stored. If not set and common.path_prefix is set then common.path_prefix will be used."
              | optional,
            sync_min_utilization
              | Number
              | doc "Minimum utilization of chunk when doing synchronization. Default: 0.1."
              | optional,
            sync_period
              | String
              | doc "Parameters used to synchronize ingesters to cut chunks at the same moment. Sync period is used to roll over incoming entry to a new chunk. If chunk's utilization isn't high enough (eg. less than 50% when sync_min_utilization is set to 0.5), then this chunk rollover doesn't happen."
              | optional,
            wal
              | {
                checkpoint_duration
                  | String
                  | doc "Interval at which checkpoints should be created."
                  | optional,
                dir
                  | String
                  | doc "Directory where the WAL data is stored and/or recovered from."
                  | optional,
                enabled
                  | Bool
                  | doc "Enable writing of ingested data into WAL."
                  | optional,
                flush_on_shutdown
                  | Bool
                  | doc "When WAL is enabled, should chunks be flushed to long-term storage on shutdown."
                  | optional,
                replay_memory_ceiling
                  | String
                  | doc "Maximum memory size the WAL may use during replay. After hitting this, it will flush data to storage before continuing. A unit suffix (KB, MB, GB) may be applied. Default: 4GB."
                  | optional,
                ..
              }
              | doc "The ingester WAL (Write Ahead Log) records incoming logs and stores them on the local file systems in order to guarantee persistence of acknowledged data in the event of a process crash."
              | optional,
            ..
          },
      "definitions.ingester_client" =
        {
            grpc_client_config
              | refs."definitions.grpc_client"
              | { _ | Dyn }
              | doc "Configures how the gRPC connection to ingesters work as a client."
              | optional,
            pool_config
              | {
                client_cleanup_period
                  | String
                  | doc "How frequently to clean up clients for ingesters that have gone away."
                  | optional,
                health_check_ingesters
                  | Bool
                  | doc "Run a health check on each ingester client during periodic cleanup."
                  | optional,
                remote_timeout
                  | String
                  | doc "How quickly a dead client will be removed after it has been detected to disappear. Set this to a value to allow time for a secondary health check to recover the missing client."
                  | optional,
                ..
              }
              | doc "Configures how connections are pooled."
              | optional,
            remote_timeout
              | String
              | doc "The remote request timeout on the client side."
              | optional,
            ..
          },
      "definitions.limits_config" =
        {
            allow_deletes
              | Bool
              | doc "Deprecated: Use deletion_mode per tenant configuration instead."
              | optional,
            allow_structured_metadata
              | Bool
              | doc "Allow user to send structured metadata in push payload."
              | optional,
            blocked_queries | js2n.Nullable (Array ({ _ | Dyn })) | optional,
            bloom_block_encoding
              | String
              | doc "Experimental. Compression algorithm for bloom block pages."
              | optional,
            bloom_compactor_enable_compaction
              | Bool
              | doc "Experimental. Whether to compact chunks into bloom filters."
              | optional,
            bloom_compactor_max_block_size
              | String
              | doc "Experimental. The maximum bloom block size. A value of 0 sets an unlimited size. Default is 200MB. The actual block size might exceed this limit since blooms will be added to blocks until the block exceeds the maximum block size. Default: 200MB."
              | optional,
            bloom_compactor_max_bloom_size
              | String
              | doc "Experimental. The maximum bloom size per log stream. A log stream whose generated bloom filter exceeds this size will be discarded. A value of 0 sets an unlimited size. Default is 128MB. Default: 128MB."
              | optional,
            bloom_compactor_shard_size
              | std.number.Integer
              | doc "Experimental. The shard size defines how many bloom compactors should be used by a tenant when computing blooms. If it's set to 0, shuffle sharding is disabled. Default: 0."
              | optional,
            bloom_false_positive_rate
              | Number
              | doc "Experimental. Scalable Bloom Filter desired false-positive rate. Default: 0.01."
              | optional,
            bloom_gateway_cache_key_interval
              | String
              | doc "Experimental. Interval for computing the cache key in the Bloom Gateway."
              | optional,
            bloom_gateway_enable_filtering
              | Bool
              | doc "Experimental. Whether to use the bloom gateway component in the read path to filter chunks."
              | optional,
            bloom_gateway_shard_size
              | std.number.Integer
              | doc "Experimental. The shard size defines how many bloom gateways should be used by a tenant for querying. Default: 0."
              | optional,
            bloom_ngram_length
              | std.number.Integer
              | doc "Experimental. Length of the n-grams created when computing blooms from log lines. Default: 4."
              | optional,
            bloom_ngram_skip
              | std.number.Integer
              | doc "Experimental. Skip factor for the n-grams created when computing blooms from log lines. Default: 1."
              | optional,
            cardinality_limit
              | std.number.Integer
              | doc "Cardinality limit for index queries. Default: 100000."
              | optional,
            creation_grace_period
              | String
              | doc "Duration which table will be created/deleted before/after it's needed; we won't accept sample from before this time."
              | optional,
            deletion_mode
              | String
              | doc "Deletion mode. Can be one of 'disabled', 'filter-only', or 'filter-and-delete'. When set to 'filter-only' or 'filter-and-delete', and if retention_enabled is true, then the log entry deletion API endpoints are available."
              | optional,
            discover_log_levels
              | Bool
              | doc "Discover and add log levels during ingestion, if not present already. Levels would be added to Structured Metadata with name 'level' and one of the values from 'debug', 'info', 'warn', 'error', 'critical', 'fatal'."
              | optional,
            discover_service_name
              | js2n.Nullable (Array String)
              | doc "If no service_name label exists, Loki maps a single label from the configured list to service_name. If none of the configured labels exist in the stream, label is set to unknown_service. Empty list disables setting the label."
              | optional,
            increment_duplicate_timestamp
              | Bool
              | doc "Alter the log line timestamp during ingestion when the timestamp is the same as the previous entry for the same stream. When enabled, if a log line in a push request has the same timestamp as the previous line for the same stream, one nanosecond is added to the log line. This will preserve the received order of log lines with the exact same timestamp when they are queried, by slightly altering their stored timestamp. NOTE: This is imperfect, because Loki accepts out of order writes, and another push request for the same stream could contain duplicate timestamps to existing entries and they will not be incremented."
              | optional,
            index_gateway_shard_size
              | std.number.Integer
              | doc "The shard size defines how many index gateways should be used by a tenant for querying. If the global shard factor is 0, the global shard factor is set to the deprecated -replication-factor for backwards compatibility reasons. Default: 0."
              | optional,
            ingestion_burst_size_mb
              | Number
              | doc "Per-user allowed ingestion burst size (in sample size). Units in MB. The burst size refers to the per-distributor local rate limiter even in the case of the 'global' strategy, and should be set at least to the maximum logs size expected in a single push request. Default: 6."
              | optional,
            ingestion_rate_mb
              | Number
              | doc "Per-user ingestion rate limit in sample size per second. Units in MB. Default: 4."
              | optional,
            ingestion_rate_strategy
              | String
              | doc m%"
                Whether the ingestion rate limit should be applied individually to each distributor instance (local), or evenly shared across the cluster (global). The ingestion rate strategy cannot be overridden on a per-tenant basis.
                - local: enforces the limit on a per distributor basis. The actual effective rate limit will be N times higher, where N is the number of distributor replicas.
                - global: enforces the limit globally, configuring a per-distributor local rate limiter as 'ingestion_rate / N', where N is the number of distributor replicas (it's automatically adjusted if the number of replicas change). The global strategy requires the distributors to form their own ring, which is used to keep track of the current number of healthy distributor replicas.
              "%
              | optional,
            max_cache_freshness_per_query
              | String
              | doc "Most recent allowed cacheable result per-tenant, to prevent caching very recent results that might still be in flux."
              | optional,
            max_chunks_per_query
              | std.number.Integer
              | doc "Maximum number of chunks that can be fetched in a single query. Default: 2000000."
              | optional,
            max_concurrent_tail_requests
              | std.number.Integer
              | doc "Maximum number of concurrent tail requests. Default: 10."
              | optional,
            max_entries_limit_per_query
              | std.number.Integer
              | doc "Maximum number of log entries that will be returned for a query. Default: 5000."
              | optional,
            max_global_streams_per_user
              | std.number.Integer
              | doc "Maximum number of active streams per user, across the cluster. 0 to disable. When the global limit is enabled, each ingester is configured with a dynamic local limit based on the replication factor and the current number of healthy ingesters, and is kept updated whenever the number of ingesters change. Default: 5000."
              | optional,
            max_label_name_length
              | std.number.Integer
              | doc "Maximum length accepted for label names. Default: 1024."
              | optional,
            max_label_names_per_series
              | std.number.Integer
              | doc "Maximum number of label names per series. Default: 15."
              | optional,
            max_label_value_length
              | std.number.Integer
              | doc "Maximum length accepted for label value. This setting also applies to the metric name. Default: 2048."
              | optional,
            max_line_size
              | String
              | doc "Maximum line size on ingestion path. Example: 256kb. Any log line exceeding this limit will be discarded unless `distributor.max-line-size-truncate` is set which in case it is truncated instead of discarding it completely. There is no limit when unset or set to 0. Default: 256KB."
              | optional,
            max_line_size_truncate
              | Bool
              | doc "Whether to truncate lines that exceed max_line_size."
              | optional,
            max_metadata_cache_freshness
              | String
              | doc "Do not cache metadata request if the end time is within the frontend.max-metadata-cache-freshness window. Set this to 0 to apply no such limits. Defaults to 24h."
              | optional,
            max_querier_bytes_read
              | String
              | doc "Max number of bytes a query can fetch after splitting and sharding. Enforced in log and metric queries only when TSDB is used. The default value of 0 disables this limit. Default: 150GB."
              | optional,
            max_queriers_per_tenant
              | std.number.Integer
              | doc "Maximum number of queriers that can handle requests for a single tenant. If set to 0 or value higher than number of available queriers, *all* queriers will handle requests for the tenant. Each frontend (or query-scheduler, if used) will select the same set of queriers for the same tenant (given that all queriers are connected to all frontends / query-schedulers). This option only works with queriers connecting to the query-frontend / query-scheduler, not when using downstream URL. Default: 0."
              | optional,
            max_query_bytes_read
              | String
              | doc "Max number of bytes a query can fetch. Enforced in log and metric queries only when TSDB is used. The default value of 0 disables this limit. Default: 0B."
              | optional,
            max_query_capacity
              | Number
              | doc "How much of the available query capacity (\"querier\" components in distributed mode, \"read\" components in SSD mode) can be used by a single tenant. Allowed values are 0.0 to 1.0. For example, setting this to 0.5 would allow a tenant to use half of the available queriers for processing the query workload. If set to 0, query capacity is determined by frontend.max-queriers-per-tenant. When both frontend.max-queriers-per-tenant and frontend.max-query-capacity are configured, smaller value of the resulting querier replica count is considered: min(frontend.max-queriers-per-tenant, ceil(querier_replicas * frontend.max-query-capacity)). *All* queriers will handle requests for the tenant if neither limits are applied. This option only works with queriers connecting to the query-frontend / query-scheduler, not when using downstream URL. Use this feature in a multi-tenant setup where you need to limit query capacity for certain tenants. Default: 0."
              | optional,
            max_query_length
              | String
              | doc "The limit to length of chunk store queries. 0 to disable."
              | optional,
            max_query_lookback
              | String
              | doc "Limit how far back in time series data and metadata can be queried, up until lookback duration ago. This limit is enforced in the query frontend, the querier and the ruler. If the requested time range is outside the allowed range, the request will not fail, but will be modified to only query data within the allowed time range. The default value of 0 does not set a limit."
              | optional,
            max_query_parallelism
              | std.number.Integer
              | doc "Maximum number of queries that will be scheduled in parallel by the frontend. Default: 32."
              | optional,
            max_query_range
              | String
              | doc "Limit the length of the [range] inside a range query. Default is 0 or unlimited"
              | optional,
            max_query_series
              | std.number.Integer
              | doc "Limit the maximum of unique series that is returned by a metric query. When the limit is reached an error is returned. Default: 500."
              | optional,
            max_stats_cache_freshness
              | String
              | doc "Do not cache requests with an end time that falls within Now minus this duration. 0 disables this feature (default)."
              | optional,
            max_streams_matchers_per_query
              | std.number.Integer
              | doc "Maximum number of stream matchers per query. Default: 1000."
              | optional,
            max_streams_per_user
              | std.number.Integer
              | doc "Maximum number of active streams per user, per ingester. 0 to disable. Default: 0."
              | optional,
            max_structured_metadata_entries_count
              | std.number.Integer
              | doc "Maximum number of structured metadata entries per log line. Default: 128."
              | optional,
            max_structured_metadata_size
              | String
              | doc "Maximum size accepted for structured metadata per log line. Default: 64KB."
              | optional,
            min_sharding_lookback
              | String
              | doc "Limit queries that can be sharded. Queries within the time range of now and now minus this sharding lookback are not sharded. The default value of 0s disables the lookback, causing sharding of all queries at all times."
              | optional,
            minimum_labels_number
              | std.number.Integer
              | doc "Minimum number of label matchers a query should contain."
              | optional,
            otlp_config
              | {
                log_attributes
                  | js2n.Nullable
                    (Array (
                      std.contract.Sequence
                        [ refs."definitions.attributes_config", { _ | Dyn } ]
                    ))
                  | doc "Configuration for log attributes to store them as Structured Metadata or drop them altogether"
                  | optional,
                resource_attributes
                  | {
                    attributes_config
                      | js2n.Nullable
                        (Array (
                          std.contract.Sequence
                            [
                              refs."definitions.attributes_config",
                              { _ | Dyn }
                            ]
                        ))
                      | optional,
                    ignore_defaults
                      | Bool
                      | doc "Configure whether to ignore the default list of resource attributes set in 'distributor.otlp.default_resource_attributes_as_index_labels' to be stored as index labels and only use the given resource attributes config"
                      | optional,
                    ..
                  }
                  | doc "Configuration for resource attributes to store them as index labels or Structured Metadata or drop them altogether"
                  | optional,
                scope_attributes
                  | js2n.Nullable
                    (Array (
                      std.contract.Sequence
                        [ refs."definitions.attributes_config", { _ | Dyn } ]
                    ))
                  | doc "Configuration for scope attributes to store them as Structured Metadata or drop them altogether"
                  | optional,
                ..
              }
              | doc "OTLP log ingestion configurations"
              | optional,
            per_stream_rate_limit
              | String
              | doc "Maximum byte rate per second per stream, also expressible in human readable forms (1MB, 256KB, etc). Default: 3MB."
              | optional,
            per_stream_rate_limit_burst
              | String
              | doc "Maximum burst bytes per stream, also expressible in human readable forms (1MB, 256KB, etc). This is how far above the rate limit a stream can 'burst' before the stream is limited. Default: 15MB."
              | optional,
            per_tenant_override_config
              | String
              | doc "Feature renamed to 'runtime configuration', flag deprecated in favor of -runtime-config.file (runtime_config.file in YAML)."
              | optional,
            per_tenant_override_period
              | String
              | doc "Feature renamed to 'runtime configuration'; flag deprecated in favor of -runtime-config.reload-period (runtime_config.period in YAML)."
              | optional,
            query_ready_index_num_days
              | std.number.Integer
              | doc "Number of days of index to be kept always downloaded for queries. Applies only to per user index in boltdb-shipper index store. 0 to disable. Default: 0."
              | optional,
            query_timeout
              | String
              | doc "Timeout when querying backends (ingesters or storage) during the execution of a query request. When a specific per-tenant timeout is used, the global timeout is ignored."
              | optional,
            recent_metadata_query_window
              | String
              | doc m%"
                Experimental. Metadata query window inside which `split_recent_metadata_queries_by_interval` gets applied, portion of the metadata request that falls in this window is split using `split_recent_metadata_queries_by_interval`. The value 0 disables using a different split interval for recent metadata queries.
                
                This is added to improve cacheability of recent metadata queries. Query split interval also determines the interval used in cache key. The default split interval of 24h is useful for caching long queries, each cache key holding 1 day's results. But metadata queries are often shorter than 24h, to cache them effectively we need a smaller split interval. `recent_metadata_query_window` along with `split_recent_metadata_queries_by_interval` help configure a shorter split interval for recent metadata queries.
              "%
              | optional,
            reject_old_samples
              | Bool
              | doc "Whether or not old samples will be rejected."
              | optional,
            reject_old_samples_max_age
              | String
              | doc "Maximum accepted sample age before rejecting."
              | optional,
            required_labels
              | js2n.Nullable (Array String)
              | doc "Define a list of required selector labels."
              | optional,
            retention_period
              | String
              | doc "Retention period to apply to stored data, only applies if retention_enabled is true in the compactor config. As of version 2.8.0, a zero value of 0 or 0s disables retention. In previous releases, Loki did not properly honor a zero value to disable retention and a really large value should be used instead."
              | optional,
            retention_stream
              | js2n.Nullable (Array ({ _ | Dyn }))
              | doc m%"
                Per-stream retention to apply, if the retention is enable on the compactor side.
                Example:
                 retention_stream:
                 - selector: '{namespace="dev"}'
                 priority: 1
                 period: 24h
                - selector: '{container="nginx"}'
                 priority: 1
                 period: 744h
                Selector is a Prometheus labels matchers that will apply the 'period' retention only if the stream is matching. In case multiple stream are matching, the highest priority will be picked. If no rule is matched the 'retention_period' is used.
              "%
              | optional,
            ruler_max_rule_groups_per_tenant
              | std.number.Integer
              | doc "Maximum number of rule groups per-tenant. 0 to disable. Default: 0."
              | optional,
            ruler_max_rules_per_rule_group
              | std.number.Integer
              | doc "Maximum number of rules per rule group per-tenant. 0 to disable. Default: 0."
              | optional,
            ruler_remote_evaluation_max_response_size
              | std.number.Integer
              | doc "Maximum size (in bytes) of the allowable response size from a remote rule evaluation. Set to 0 to allow any response size (default)."
              | optional,
            ruler_remote_evaluation_timeout
              | String
              | doc "Timeout for a remote rule evaluation. Defaults to the value of 'querier.query-timeout'."
              | optional,
            ruler_remote_write_config
              | {
                _ | std.contract.Sequence
                  [
                    refs."definitions.ruler.properties.remote_write",
                    { _ | Dyn }
                  ]
              }
              | doc "Configures global and per-tenant limits for remote write clients. A map with remote client id as key."
              | optional,
            ruler_remote_write_disabled
              | Bool
              | doc "Disable recording rules remote-write."
              | optional,
            ruler_remote_write_headers
              | { _ | Dyn }
              | doc "Deprecated: Use 'ruler_remote_write_config' instead. Custom HTTP headers to be sent along with each remote write request. Be aware that headers that are set by Loki itself can't be overwritten."
              | optional,
            ruler_remote_write_queue_batch_send_deadline
              | String
              | doc "Deprecated: Use 'ruler_remote_write_config' instead. Maximum time a sample will wait in buffer."
              | optional,
            ruler_remote_write_queue_capacity
              | std.number.Integer
              | doc "Deprecated: Use 'ruler_remote_write_config' instead. Number of samples to buffer per shard before we block reading of more samples from the WAL. It is recommended to have enough capacity in each shard to buffer several requests to keep throughput up while processing occasional slow remote requests."
              | optional,
            ruler_remote_write_queue_max_backoff
              | String
              | doc "Deprecated: Use 'ruler_remote_write_config' instead. Maximum retry delay."
              | optional,
            ruler_remote_write_queue_max_samples_per_send
              | std.number.Integer
              | doc "Deprecated: Use 'ruler_remote_write_config' instead. Maximum number of samples per send."
              | optional,
            ruler_remote_write_queue_max_shards
              | std.number.Integer
              | doc "Deprecated: Use 'ruler_remote_write_config' instead. Maximum number of shards, i.e. amount of concurrency."
              | optional,
            ruler_remote_write_queue_min_backoff
              | String
              | doc "Deprecated: Use 'ruler_remote_write_config' instead. Initial retry delay. Gets doubled for every retry."
              | optional,
            ruler_remote_write_queue_min_shards
              | std.number.Integer
              | doc "Deprecated: Use 'ruler_remote_write_config' instead. Minimum number of shards, i.e. amount of concurrency."
              | optional,
            ruler_remote_write_queue_retry_on_ratelimit
              | Bool
              | doc "Deprecated: Use 'ruler_remote_write_config' instead. Retry upon receiving a 429 status code from the remote-write storage. This is experimental and might change in the future."
              | optional,
            ruler_remote_write_relabel_configs
              | js2n.Nullable (Array ({ _ | Dyn }))
              | doc "Deprecated: Use 'ruler_remote_write_config' instead. List of remote write relabel configurations."
              | optional,
            ruler_remote_write_sigv4_config
              | {
                access_key | String | optional,
                profile | String | optional,
                region | String | optional,
                role_arn | String | optional,
                secret_key | String | optional,
                ..
              }
              | doc "Deprecated: Use 'ruler_remote_write_config' instead. Configures AWS's Signature Verification 4 signing process to sign every remote write request."
              | optional,
            ruler_remote_write_timeout
              | String
              | doc "Deprecated: Use 'ruler_remote_write_config' instead. Timeout for requests to the remote write endpoint."
              | optional,
            ruler_remote_write_url
              | String
              | doc "Deprecated: Use 'ruler_remote_write_config' instead. The URL of the endpoint to send samples to."
              | optional,
            ruler_tenant_shard_size
              | std.number.Integer
              | doc "The default tenant's shard size when shuffle-sharding is enabled in the ruler. When this setting is specified in the per-tenant overrides, a value of 0 disables shuffle sharding for the tenant. Default: 0."
              | optional,
            shard_streams
              | {
                desired_rate | std.number.Integer | optional,
                enabled | Bool | optional,
                logging_enabled | Bool | optional,
                ..
              }
              | doc ""
              | optional,
            split_ingester_queries_by_interval
              | String
              | doc "Interval to use for time-based splitting when a request is within the `query_ingesters_within` window; defaults to `split-queries-by-interval` by setting to 0."
              | optional,
            split_instant_metric_queries_by_interval
              | String
              | doc "Split instant metric queries by a time interval and execute in parallel. The value 0 disables splitting instant metric queries by time. This also determines how cache keys are chosen when instant metric query result caching is enabled."
              | optional,
            split_metadata_queries_by_interval
              | String
              | doc "Split metadata queries by a time interval and execute in parallel. The value 0 disables splitting metadata queries by time. This also determines how cache keys are chosen when label/series result caching is enabled."
              | optional,
            split_queries_by_interval
              | String
              | doc "Split queries by a time interval and execute in parallel. The value 0 disables splitting by time. This also determines how cache keys are chosen when result caching is enabled."
              | optional,
            split_recent_metadata_queries_by_interval
              | String
              | doc "Experimental. Split interval to use for the portion of metadata request that falls within `recent_metadata_query_window`. Rest of the request which is outside the window still uses `split_metadata_queries_by_interval`. If set to 0, the entire request defaults to using a split interval of `split_metadata_queries_by_interval.`."
              | optional,
            tsdb_max_bytes_per_shard
              | String
              | doc "Target maximum number of bytes assigned to a single sharded query. Also expressible in human readable forms (1GB, etc). Note: This is a _target_ and not an absolute limit. The actual limit can be higher, but the query planner will try to build shards up to this limit. Default: 600MB."
              | optional,
            tsdb_max_query_parallelism
              | std.number.Integer
              | doc "Maximum number of queries will be scheduled in parallel by the frontend for TSDB schemas. Default: 128."
              | optional,
            tsdb_sharding_strategy
              | String
              | doc "sharding strategy to use in query planning. Suggested to use bounded once all nodes can recognize it."
              | optional,
            unordered_writes
              | Bool
              | doc "Deprecated. When true, out-of-order writes are accepted."
              | optional,
            volume_enabled
              | Bool
              | doc "Enable log-volume endpoints."
              | optional,
            volume_max_series
              | std.number.Integer
              | doc "The maximum number of aggregated series in a log-volume response. Default: 1000."
              | optional,
            ..
          },
      "definitions.local_storage_config" =
        {
            directory | String | doc "Directory to store chunks in." | optional,
            ..
          },
      "definitions.memberlist" =
        {
            abort_if_cluster_join_fails
              | Bool
              | doc "If this node fails to join memberlist cluster, abort."
              | optional,
            advertise_addr
              | String
              | doc "Gossip address to advertise to other members in the cluster. Used for NAT traversal."
              | optional,
            advertise_port
              | std.number.Integer
              | doc "Gossip port to advertise to other members in the cluster. Used for NAT traversal. Default: 7946."
              | optional,
            bind_addr
              | js2n.Nullable (Array String)
              | doc "IP address to listen on for gossip messages. Multiple addresses may be specified. Defaults to 0.0.0.0"
              | optional,
            bind_port
              | std.number.Integer
              | doc "Port to listen on for gossip messages. Default: 7946."
              | optional,
            cluster_label
              | String
              | doc "The cluster label is an optional string to include in outbound packets and gossip streams. Other members in the memberlist cluster will discard any message whose label doesn't match the configured one, unless the 'cluster-label-verification-disabled' configuration option is set to true."
              | optional,
            cluster_label_verification_disabled
              | Bool
              | doc "When true, memberlist doesn't verify that inbound packets and gossip streams have the cluster label matching the configured one. This verification should be disabled while rolling out the change to the configured cluster label in a live memberlist cluster."
              | optional,
            compression_enabled
              | Bool
              | doc "Enable message compression. This can be used to reduce bandwidth usage at the cost of slightly more CPU utilization."
              | optional,
            dead_node_reclaim_time
              | String
              | doc "How soon can dead node's name be reclaimed with new address. 0 to disable."
              | optional,
            gossip_interval | String | doc "How often to gossip." | optional,
            gossip_nodes
              | std.number.Integer
              | doc "How many nodes to gossip to. Default: 3."
              | optional,
            gossip_to_dead_nodes_time
              | String
              | doc "How long to keep gossiping to dead nodes, to give them chance to refute their death."
              | optional,
            join_members
              | js2n.Nullable (Array String)
              | doc "Other cluster members to join. Can be specified multiple times. It can be an IP, hostname or an entry specified in the DNS Service Discovery format."
              | optional,
            leave_timeout
              | String
              | doc "Timeout for leaving memberlist cluster."
              | optional,
            left_ingesters_timeout
              | String
              | doc "How long to keep LEFT ingesters in the ring."
              | optional,
            max_join_backoff
              | String
              | doc "Max backoff duration to join other cluster members."
              | optional,
            max_join_retries
              | std.number.Integer
              | doc "Max number of retries to join other cluster members. Default: 10."
              | optional,
            message_history_buffer_bytes
              | std.number.Integer
              | doc "How much space to use for keeping received and sent messages in memory for troubleshooting (two buffers). 0 to disable. Default: 0."
              | optional,
            min_join_backoff
              | String
              | doc "Min backoff duration to join other cluster members."
              | optional,
            node_name
              | String
              | doc "Name of the node in memberlist cluster. Defaults to hostname."
              | optional,
            packet_dial_timeout
              | String
              | doc "Timeout used when connecting to other nodes to send packet."
              | optional,
            packet_write_timeout
              | String
              | doc "Timeout for writing 'packet' data."
              | optional,
            pull_push_interval
              | String
              | doc "How often to use pull/push sync."
              | optional,
            randomize_node_name
              | Bool
              | doc "Add random suffix to the node name."
              | optional,
            rejoin_interval
              | String
              | doc "If not 0, how often to rejoin the cluster. Occasional rejoin can help to fix the cluster split issue, and is harmless otherwise. For example when using only few components as a seed nodes (via -memberlist.join), then it's recommended to use rejoin. If -memberlist.join points to dynamic service that resolves to all gossiping nodes (eg. Kubernetes headless service), then rejoin is not needed."
              | optional,
            retransmit_factor
              | std.number.Integer
              | doc "Multiplication factor used when sending out messages (factor * log(N+1)). Default: 4."
              | optional,
            stream_timeout
              | String
              | doc "The timeout for establishing a connection with a remote node, and for read/write operations."
              | optional,
            tls_ca_path
              | String
              | doc "Path to the CA certificates to validate server certificate against. If not set, the host's root CA certificates are used."
              | optional,
            tls_cert_path
              | String
              | doc "Path to the client certificate, which will be used for authenticating with the server. Also requires the key path to be configured."
              | optional,
            tls_cipher_suites
              | String
              | doc m%"
                Override the default cipher suite list (separated by commas). Allowed values:
                
                Secure Ciphers:
                - TLS_AES_128_GCM_SHA256
                - TLS_AES_256_GCM_SHA384
                - TLS_CHACHA20_POLY1305_SHA256
                - TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA
                - TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA
                - TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA
                - TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA
                - TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256
                - TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384
                - TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
                - TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
                - TLS_ECDHE_RSA_WITH_CHACHA20_POLY1305_SHA256
                - TLS_ECDHE_ECDSA_WITH_CHACHA20_POLY1305_SHA256
                
                Insecure Ciphers:
                - TLS_RSA_WITH_RC4_128_SHA
                - TLS_RSA_WITH_3DES_EDE_CBC_SHA
                - TLS_RSA_WITH_AES_128_CBC_SHA
                - TLS_RSA_WITH_AES_256_CBC_SHA
                - TLS_RSA_WITH_AES_128_CBC_SHA256
                - TLS_RSA_WITH_AES_128_GCM_SHA256
                - TLS_RSA_WITH_AES_256_GCM_SHA384
                - TLS_ECDHE_ECDSA_WITH_RC4_128_SHA
                - TLS_ECDHE_RSA_WITH_RC4_128_SHA
                - TLS_ECDHE_RSA_WITH_3DES_EDE_CBC_SHA
                - TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA256
                - TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256
                
              "%
              | optional,
            tls_enabled
              | Bool
              | doc "Enable TLS on the memberlist transport layer."
              | optional,
            tls_insecure_skip_verify
              | Bool
              | doc "Skip validating server certificate."
              | optional,
            tls_key_path
              | String
              | doc "Path to the key for the client certificate. Also requires the client certificate to be configured."
              | optional,
            tls_min_version
              | String
              | doc "Override the default minimum TLS version. Allowed values: VersionTLS10, VersionTLS11, VersionTLS12, VersionTLS13"
              | optional,
            tls_server_name
              | String
              | doc "Override the expected name on the server certificate."
              | optional,
            ..
          },
      "definitions.named_stores_config" =
        {
            alibabacloud
              | {
                _ | std.contract.Sequence
                  [
                    refs."definitions.alibabacloud_storage_config",
                    { _ | Dyn }
                  ]
              }
              | optional,
            aws
              | {
                _ | std.contract.Sequence
                  [ refs."definitions.aws_storage_config", { _ | Dyn } ]
              }
              | optional,
            azure
              | {
                _ | std.contract.Sequence
                  [ refs."definitions.azure_storage_config", { _ | Dyn } ]
              }
              | optional,
            bos
              | {
                _ | std.contract.Sequence
                  [ refs."definitions.bos_storage_config", { _ | Dyn } ]
              }
              | optional,
            cos
              | {
                _ | std.contract.Sequence
                  [ refs."definitions.cos_storage_config", { _ | Dyn } ]
              }
              | optional,
            filesystem
              | {
                _ | std.contract.Sequence
                  [ refs."definitions.local_storage_config", { _ | Dyn } ]
              }
              | optional,
            gcs
              | {
                _ | std.contract.Sequence
                  [ refs."definitions.gcs_storage_config", { _ | Dyn } ]
              }
              | optional,
            swift
              | {
                _ | std.contract.Sequence
                  [ refs."definitions.swift_storage_config", { _ | Dyn } ]
              }
              | optional,
            ..
          },
      "definitions.operational_config" =
        {
            limited_log_push_errors
              | Bool
              | doc "Log push errors with a rate limited logger, will show client push errors without overly spamming logs."
              | optional,
            log_push_request
              | Bool
              | doc "Log every push request (very verbose, recommend to enable via runtime config only)."
              | optional,
            log_push_request_streams
              | Bool
              | doc "Log every stream in a push request (very verbose, recommend to enable via runtime config only)."
              | optional,
            log_stream_creation
              | Bool
              | doc "Log every new stream created by a push request (very verbose, recommend to enable via runtime config only)."
              | optional,
            ..
          },
      "definitions.period_config" =
        {
            chunks
              | {
                period | String | doc "Table period." | optional,
                prefix
                  | String
                  | doc "Table prefix for all period tables."
                  | optional,
                tags
                  | { _ | String }
                  | doc "A map to be added to all managed tables."
                  | optional,
                ..
              }
              | doc "Configured how the chunks are updated and stored."
              | optional,
            from
              | String
              | doc "The date of the first day that index buckets should be created. Use a date in the past if this is your only period_config, otherwise use a date when you want the schema to switch over. In YYYY-MM-DD format, for example: 2018-04-15."
              | optional,
            index
              | {
                path_prefix
                  | String
                  | doc "Path prefix for index tables. Prefix always needs to end with a path delimiter '/', except when the prefix is empty."
                  | optional,
                period | String | doc "Table period." | optional,
                prefix
                  | String
                  | doc "Table prefix for all period tables."
                  | optional,
                tags
                  | { _ | String }
                  | doc "A map to be added to all managed tables."
                  | optional,
                ..
              }
              | doc "Configures how the index is updated and stored."
              | optional,
            object_store
              | String
              | doc "Which store to use for the chunks. Either aws (alias s3), azure, gcs, alibabacloud, bos, cos, swift, filesystem, or a named_store (refer to named_stores_config). Following stores are deprecated: aws-dynamo, gcp, gcp-columnkey, bigtable, bigtable-hashed, cassandra, grpc."
              | optional,
            row_shards
              | std.number.Integer
              | doc "How many shards will be created. Only used if schema is v10 or greater. Default: 16."
              | optional,
            schema
              | String
              | doc "The schema version to use, current recommended schema is v13."
              | optional,
            store
              | String
              | doc "store and object_store below affect which <storage_config> key is used. Which index to use. Either tsdb or boltdb-shipper. Following stores are deprecated: aws, aws-dynamo, gcp, gcp-columnkey, bigtable, bigtable-hashed, cassandra, grpc."
              | optional,
            ..
          },
      "definitions.querier" =
        {
            engine
              | {
                max_look_back_period
                  | String
                  | doc "The maximum amount of time to look back for log lines. Used only for instant log queries."
                  | optional,
                ..
              }
              | doc ""
              | optional,
            extra_query_delay
              | String
              | doc "Time to wait before sending more than the minimum successful query requests."
              | optional,
            max_concurrent
              | std.number.Integer
              | doc "The maximum number of queries that can be simultaneously processed by the querier. Default: 4."
              | optional,
            multi_tenant_queries_enabled
              | Bool
              | doc "When true, allow queries to span multiple tenants."
              | optional,
            per_request_limits_enabled
              | Bool
              | doc "When true, querier limits sent via a header are enforced."
              | optional,
            query_ingester_only
              | Bool
              | doc "When true, queriers only query the ingesters, and not stored data. This is useful when the object store is unavailable."
              | optional,
            query_ingesters_within
              | String
              | doc "Maximum lookback beyond which queries are not sent to ingester. 0 means all queries are sent to ingester."
              | optional,
            query_store_only
              | Bool
              | doc "Only query the store, and not attempt any ingesters. This is useful for running a standalone querier pool operating only against stored data."
              | optional,
            tail_max_duration
              | String
              | doc "Maximum duration for which the live tailing requests are served."
              | optional,
            ..
          },
      "definitions.query_range" =
        {
            align_queries_with_step
              | Bool
              | doc "Mutate incoming queries to align their start and end with their step."
              | optional,
            cache_index_stats_results
              | Bool
              | doc "Cache index stats query results."
              | optional,
            cache_instant_metric_results
              | Bool
              | doc "Cache instant metric query results."
              | optional,
            cache_label_results
              | Bool
              | doc "Cache label query results."
              | optional,
            cache_results | Bool | doc "Cache query results." | optional,
            cache_series_results
              | Bool
              | doc "Cache series query results."
              | optional,
            cache_volume_results
              | Bool
              | doc "Cache volume query results."
              | optional,
            index_stats_results_cache
              | {
                cache
                  | refs."definitions.cache_config"
                  | { _ | Dyn }
                  | doc "The cache_config block configures the cache backend for a specific Loki component."
                  | optional,
                compression
                  | String
                  | doc "Use compression in cache. The default is an empty value '', which disables compression. Supported values are: 'snappy' and ''."
                  | optional,
                ..
              }
              | doc "If a cache config is not specified and cache_index_stats_results is true, the config for the results cache is used."
              | optional,
            instant_metric_query_split_align
              | Bool
              | doc "Whether to align the splits of instant metric query with splitByInterval and query's exec time. Useful when instant_metric_cache is enabled"
              | optional,
            instant_metric_results_cache
              | {
                cache
                  | refs."definitions.cache_config"
                  | { _ | Dyn }
                  | doc "The cache_config block configures the cache backend for a specific Loki component."
                  | optional,
                compression
                  | String
                  | doc "Use compression in cache. The default is an empty value '', which disables compression. Supported values are: 'snappy' and ''."
                  | optional,
                ..
              }
              | doc "If a cache config is not specified and cache_instant_metric_results is true, the config for the results cache is used."
              | optional,
            label_results_cache
              | {
                cache
                  | refs."definitions.cache_config"
                  | { _ | Dyn }
                  | doc "The cache_config block configures the cache backend for a specific Loki component."
                  | optional,
                compression
                  | String
                  | doc "Use compression in cache. The default is an empty value '', which disables compression. Supported values are: 'snappy' and ''."
                  | optional,
                ..
              }
              | doc "If label_results_cache is not configured and cache_label_results is true, the config for the results cache is used."
              | optional,
            max_retries
              | std.number.Integer
              | doc "Maximum number of retries for a single request; beyond this, the downstream error is returned. Default: 5."
              | optional,
            parallelise_shardable_queries
              | Bool
              | doc "Perform query parallelisations based on storage sharding configuration and query ASTs. This feature is supported only by the chunks storage engine."
              | optional,
            results_cache
              | {
                cache
                  | refs."definitions.cache_config"
                  | { _ | Dyn }
                  | doc "The cache_config block configures the cache backend for a specific Loki component."
                  | optional,
                compression
                  | String
                  | doc "Use compression in cache. The default is an empty value '', which disables compression. Supported values are: 'snappy' and ''."
                  | optional,
                ..
              }
              | doc ""
              | optional,
            series_results_cache
              | {
                cache
                  | refs."definitions.cache_config"
                  | { _ | Dyn }
                  | doc "The cache_config block configures the cache backend for a specific Loki component."
                  | optional,
                compression
                  | String
                  | doc "Use compression in cache. The default is an empty value '', which disables compression. Supported values are: 'snappy' and ''."
                  | optional,
                ..
              }
              | doc "If series_results_cache is not configured and cache_series_results is true, the config for the results cache is used."
              | optional,
            shard_aggregations
              | String
              | doc "A comma-separated list of LogQL vector and range aggregations that should be sharded"
              | optional,
            volume_results_cache
              | {
                cache
                  | refs."definitions.cache_config"
                  | { _ | Dyn }
                  | doc "The cache_config block configures the cache backend for a specific Loki component."
                  | optional,
                compression
                  | String
                  | doc "Use compression in cache. The default is an empty value '', which disables compression. Supported values are: 'snappy' and ''."
                  | optional,
                ..
              }
              | doc "If a cache config is not specified and cache_volume_results is true, the config for the results cache is used."
              | optional,
            ..
          },
      "definitions.query_scheduler" =
        {
            grpc_client_config
              | refs."definitions.grpc_client"
              | { _ | Dyn }
              | doc "This configures the gRPC client used to report errors back to the query-frontend."
              | optional,
            max_outstanding_requests_per_tenant
              | std.number.Integer
              | doc "Maximum number of outstanding requests per tenant per query-scheduler. In-flight requests above this limit will fail with HTTP response status code 429. Default: 32000."
              | optional,
            max_queue_hierarchy_levels
              | std.number.Integer
              | doc "Maximum number of levels of nesting of hierarchical queues. 0 means that hierarchical queues are disabled. Default: 3."
              | optional,
            querier_forget_delay
              | String
              | doc "If a querier disconnects without sending notification about graceful shutdown, the query-scheduler will keep the querier in the tenant's shard until the forget delay has passed. This feature is useful to reduce the blast radius when shuffle-sharding is enabled."
              | optional,
            scheduler_ring
              | {
                heartbeat_period
                  | String
                  | doc "Period at which to heartbeat to the ring. 0 = disabled."
                  | optional,
                heartbeat_timeout
                  | String
                  | doc "The heartbeat timeout after which compactors are considered unhealthy within the ring. 0 = never (timeout disabled)."
                  | optional,
                instance_addr
                  | String
                  | doc "IP address to advertise in the ring."
                  | optional,
                instance_availability_zone
                  | String
                  | doc "The availability zone where this instance is running. Required if zone-awareness is enabled."
                  | optional,
                instance_enable_ipv6
                  | Bool
                  | doc "Enable using a IPv6 instance address."
                  | optional,
                instance_id
                  | String
                  | doc "Instance ID to register in the ring."
                  | optional,
                instance_interface_names
                  | js2n.Nullable (Array String)
                  | doc "Name of network interface to read address from."
                  | optional,
                instance_port
                  | std.number.Integer
                  | doc "Port to advertise in the ring (defaults to server.grpc-listen-port). Default: 0."
                  | optional,
                kvstore
                  | {
                    consul
                      | refs."definitions.consul"
                      | { _ | Dyn }
                      | doc "Configuration for a Consul client. Only applies if the selected kvstore is consul."
                      | optional,
                    etcd
                      | refs."definitions.etcd"
                      | { _ | Dyn }
                      | doc "Configuration for an ETCD v3 client. Only applies if the selected kvstore is etcd."
                      | optional,
                    multi
                      | {
                        mirror_enabled
                          | Bool
                          | doc "Mirror writes to secondary store."
                          | optional,
                        mirror_timeout
                          | String
                          | doc "Timeout for storing value to secondary store."
                          | optional,
                        primary
                          | String
                          | doc "Primary backend storage used by multi-client."
                          | optional,
                        secondary
                          | String
                          | doc "Secondary backend storage used by multi-client."
                          | optional,
                        ..
                      }
                      | doc ""
                      | optional,
                    prefix
                      | String
                      | doc "The prefix for the keys in the store. Should end with a /."
                      | optional,
                    store
                      | String
                      | doc "Backend storage to use for the ring. Supported values are: consul, etcd, inmemory, memberlist, multi."
                      | optional,
                    ..
                  }
                  | doc ""
                  | optional,
                num_tokens | js2n.Always | optional,
                replication_factor | js2n.Always | optional,
                tokens_file_path
                  | String
                  | doc "File path where tokens are stored. If empty, tokens are not stored at shutdown and restored at startup."
                  | optional,
                zone_awareness_enabled
                  | Bool
                  | doc "True to enable zone-awareness and replicate blocks across different availability zones."
                  | optional,
                ..
              }
              | doc "The hash ring configuration. This option is required only if use_scheduler_ring is true."
              | optional,
            use_scheduler_ring
              | Bool
              | doc "Set to true to have the query schedulers create and place themselves in a ring. If no frontend_address or scheduler_address are present anywhere else in the configuration, Loki will toggle this value to true."
              | optional,
            ..
          },
      "definitions.ruler" =
        {
            alert_relabel_configs
              | js2n.Nullable (Array ({ _ | Dyn }))
              | doc "List of alert relabel configs."
              | optional,
            alertmanager_client
              | {
                basic_auth_password
                  | String
                  | doc "HTTP Basic authentication password. It overrides the password set in the URL (if any)."
                  | optional,
                basic_auth_username
                  | String
                  | doc "HTTP Basic authentication username. It overrides the username set in the URL (if any)."
                  | optional,
                credentials
                  | String
                  | doc "HTTP Header authorization credentials."
                  | optional,
                credentials_file
                  | String
                  | doc "HTTP Header authorization credentials file."
                  | optional,
                tls_ca_path
                  | String
                  | doc "Path to the CA certificates to validate server certificate against. If not set, the host's root CA certificates are used."
                  | optional,
                tls_cert_path
                  | String
                  | doc "Path to the client certificate, which will be used for authenticating with the server. Also requires the key path to be configured."
                  | optional,
                tls_cipher_suites
                  | String
                  | doc m%"
                    Override the default cipher suite list (separated by commas). Allowed values:
                    
                    Secure Ciphers:
                    - TLS_AES_128_GCM_SHA256
                    - TLS_AES_256_GCM_SHA384
                    - TLS_CHACHA20_POLY1305_SHA256
                    - TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA
                    - TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA
                    - TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA
                    - TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA
                    - TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256
                    - TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384
                    - TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
                    - TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
                    - TLS_ECDHE_RSA_WITH_CHACHA20_POLY1305_SHA256
                    - TLS_ECDHE_ECDSA_WITH_CHACHA20_POLY1305_SHA256
                    
                    Insecure Ciphers:
                    - TLS_RSA_WITH_RC4_128_SHA
                    - TLS_RSA_WITH_3DES_EDE_CBC_SHA
                    - TLS_RSA_WITH_AES_128_CBC_SHA
                    - TLS_RSA_WITH_AES_256_CBC_SHA
                    - TLS_RSA_WITH_AES_128_CBC_SHA256
                    - TLS_RSA_WITH_AES_128_GCM_SHA256
                    - TLS_RSA_WITH_AES_256_GCM_SHA384
                    - TLS_ECDHE_ECDSA_WITH_RC4_128_SHA
                    - TLS_ECDHE_RSA_WITH_RC4_128_SHA
                    - TLS_ECDHE_RSA_WITH_3DES_EDE_CBC_SHA
                    - TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA256
                    - TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256
                    
                  "%
                  | optional,
                tls_insecure_skip_verify
                  | Bool
                  | doc "Skip validating server certificate."
                  | optional,
                tls_key_path
                  | String
                  | doc "Path to the key for the client certificate. Also requires the client certificate to be configured."
                  | optional,
                tls_min_version
                  | String
                  | doc "Override the default minimum TLS version. Allowed values: VersionTLS10, VersionTLS11, VersionTLS12, VersionTLS13"
                  | optional,
                tls_server_name
                  | String
                  | doc "Override the expected name on the server certificate."
                  | optional,
                type
                  | String
                  | doc "HTTP Header authorization type (default: Bearer)."
                  | optional,
                ..
              }
              | doc ""
              | optional,
            alertmanager_refresh_interval
              | String
              | doc "How long to wait between refreshing DNS resolutions of Alertmanager hosts."
              | optional,
            alertmanager_url
              | String
              | doc "Comma-separated list of Alertmanager URLs to send notifications to. Each Alertmanager URL is treated as a separate group in the configuration. Multiple Alertmanagers in HA per group can be supported by using DNS resolution via '-ruler.alertmanager-discovery'."
              | optional,
            datasource_uid
              | String
              | doc "Datasource UID for the dashboard."
              | optional,
            disable_rule_group_label
              | Bool
              | doc "Disable the rule_group label on exported metrics."
              | optional,
            disabled_tenants
              | String
              | doc "Comma separated list of tenants whose rules this ruler cannot evaluate. If specified, a ruler that would normally pick the specified tenant(s) for processing will ignore them instead. Subject to sharding."
              | optional,
            enable_alertmanager_discovery
              | Bool
              | doc "Use DNS SRV records to discover Alertmanager hosts."
              | optional,
            enable_alertmanager_v2
              | Bool
              | doc "If enabled requests to Alertmanager will utilize the V2 API."
              | optional,
            enable_api | Bool | doc "Enable the ruler API." | optional,
            enable_sharding
              | Bool
              | doc "Distribute rule evaluation using ring backend."
              | optional,
            enabled_tenants
              | String
              | doc "Comma separated list of tenants whose rules this ruler can evaluate. If specified, only these tenants will be handled by ruler, otherwise this ruler can process rules from all tenants. Subject to sharding."
              | optional,
            evaluation
              | {
                max_jitter
                  | String
                  | doc "Upper bound of random duration to wait before rule evaluation to avoid contention during concurrent execution of rules. Jitter is calculated consistently for a given rule. Set 0 to disable (default)."
                  | optional,
                mode
                  | String
                  | doc "The evaluation mode for the ruler. Can be either 'local' or 'remote'. If set to 'local', the ruler will evaluate rules locally. If set to 'remote', the ruler will evaluate rules remotely. If unset, the ruler will evaluate rules locally."
                  | optional,
                query_frontend
                  | {
                    address
                      | String
                      | doc "GRPC listen address of the query-frontend(s). Must be a DNS address (prefixed with dns:///) to enable client side load balancing."
                      | optional,
                    tls_ca_path
                      | String
                      | doc "Path to the CA certificates to validate server certificate against. If not set, the host's root CA certificates are used."
                      | optional,
                    tls_cert_path
                      | String
                      | doc "Path to the client certificate, which will be used for authenticating with the server. Also requires the key path to be configured."
                      | optional,
                    tls_cipher_suites
                      | String
                      | doc m%"
                        Override the default cipher suite list (separated by commas). Allowed values:
                        
                        Secure Ciphers:
                        - TLS_AES_128_GCM_SHA256
                        - TLS_AES_256_GCM_SHA384
                        - TLS_CHACHA20_POLY1305_SHA256
                        - TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA
                        - TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA
                        - TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA
                        - TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA
                        - TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256
                        - TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384
                        - TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
                        - TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
                        - TLS_ECDHE_RSA_WITH_CHACHA20_POLY1305_SHA256
                        - TLS_ECDHE_ECDSA_WITH_CHACHA20_POLY1305_SHA256
                        
                        Insecure Ciphers:
                        - TLS_RSA_WITH_RC4_128_SHA
                        - TLS_RSA_WITH_3DES_EDE_CBC_SHA
                        - TLS_RSA_WITH_AES_128_CBC_SHA
                        - TLS_RSA_WITH_AES_256_CBC_SHA
                        - TLS_RSA_WITH_AES_128_CBC_SHA256
                        - TLS_RSA_WITH_AES_128_GCM_SHA256
                        - TLS_RSA_WITH_AES_256_GCM_SHA384
                        - TLS_ECDHE_ECDSA_WITH_RC4_128_SHA
                        - TLS_ECDHE_RSA_WITH_RC4_128_SHA
                        - TLS_ECDHE_RSA_WITH_3DES_EDE_CBC_SHA
                        - TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA256
                        - TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256
                        
                      "%
                      | optional,
                    tls_enabled
                      | Bool
                      | doc "Set to true if query-frontend connection requires TLS."
                      | optional,
                    tls_insecure_skip_verify
                      | Bool
                      | doc "Skip validating server certificate."
                      | optional,
                    tls_key_path
                      | String
                      | doc "Path to the key for the client certificate. Also requires the client certificate to be configured."
                      | optional,
                    tls_min_version
                      | String
                      | doc "Override the default minimum TLS version. Allowed values: VersionTLS10, VersionTLS11, VersionTLS12, VersionTLS13"
                      | optional,
                    tls_server_name
                      | String
                      | doc "Override the expected name on the server certificate."
                      | optional,
                    ..
                  }
                  | doc ""
                  | optional,
                ..
              }
              | doc "Configuration for rule evaluation."
              | optional,
            evaluation_interval
              | String
              | doc "How frequently to evaluate rules."
              | optional,
            external_labels
              | js2n.Nullable (Array String)
              | doc "Labels to add to all alerts."
              | optional,
            external_url
              | String
              | doc "Base URL of the Grafana instance."
              | optional,
            flush_period
              | String
              | doc "Period with which to attempt to flush rule groups."
              | optional,
            for_grace_period
              | String
              | doc "Minimum duration between alert and restored \"for\" state. This is maintained only for alerts with configured \"for\" time greater than the grace period."
              | optional,
            for_outage_tolerance
              | String
              | doc "Max time to tolerate outage for restoring \"for\" state of alert."
              | optional,
            notification_queue_capacity
              | std.number.Integer
              | doc "Capacity of the queue for notifications to be sent to the Alertmanager. Default: 10000."
              | optional,
            notification_timeout
              | String
              | doc "HTTP timeout duration when sending notifications to the Alertmanager."
              | optional,
            poll_interval
              | String
              | doc "How frequently to poll for rule changes."
              | optional,
            query_stats_enabled
              | Bool
              | doc "Report the wall time for ruler queries to complete as a per user metric and as an info level log message."
              | optional,
            remote_write
              | {
                add_org_id_header
                  | Bool
                  | doc "Add X-Scope-OrgID header in remote write requests."
                  | optional,
                client
                  | refs."definitions.ruler.properties.remote_write"
                  | { _ | Dyn }
                  | doc "Deprecated: Use 'clients' instead. Configure remote write client."
                  | optional,
                clients
                  | {
                    _ | std.contract.Sequence
                      [
                        refs."definitions.ruler.properties.remote_write",
                        { _ | Dyn }
                      ]
                  }
                  | doc "Configure remote write clients. A map with remote client id as key."
                  | optional,
                config_refresh_period
                  | String
                  | doc "Minimum period to wait between refreshing remote-write reconfigurations. This should be greater than or equivalent to -limits.per-user-override-period."
                  | optional,
                enabled
                  | Bool
                  | doc "Enable remote-write functionality."
                  | optional,
                ..
              }
              | doc "Remote-write configuration to send rule samples to a Prometheus remote-write endpoint."
              | optional,
            resend_delay
              | String
              | doc "Minimum amount of time to wait before resending an alert to Alertmanager."
              | optional,
            ring
              | {
                heartbeat_period
                  | String
                  | doc "Interval between heartbeats sent to the ring. 0 = disabled."
                  | optional,
                heartbeat_timeout
                  | String
                  | doc "The heartbeat timeout after which ruler ring members are considered unhealthy within the ring. 0 = never (timeout disabled)."
                  | optional,
                instance_interface_names
                  | js2n.Nullable (Array String)
                  | doc "Name of network interface to read addresses from."
                  | optional,
                kvstore
                  | {
                    consul
                      | refs."definitions.consul"
                      | { _ | Dyn }
                      | doc "Configuration for a Consul client. Only applies if the selected kvstore is consul."
                      | optional,
                    etcd
                      | refs."definitions.etcd"
                      | { _ | Dyn }
                      | doc "Configuration for an ETCD v3 client. Only applies if the selected kvstore is etcd."
                      | optional,
                    multi
                      | {
                        mirror_enabled
                          | Bool
                          | doc "Mirror writes to secondary store."
                          | optional,
                        mirror_timeout
                          | String
                          | doc "Timeout for storing value to secondary store."
                          | optional,
                        primary
                          | String
                          | doc "Primary backend storage used by multi-client."
                          | optional,
                        secondary
                          | String
                          | doc "Secondary backend storage used by multi-client."
                          | optional,
                        ..
                      }
                      | doc ""
                      | optional,
                    prefix
                      | String
                      | doc "The prefix for the keys in the store. Should end with a /."
                      | optional,
                    store
                      | String
                      | doc "Backend storage to use for the ring. Supported values are: consul, etcd, inmemory, memberlist, multi."
                      | optional,
                    ..
                  }
                  | doc ""
                  | optional,
                num_tokens
                  | std.number.Integer
                  | doc "The number of tokens the lifecycler will generate and put into the ring if it joined without transferring tokens from another lifecycler. Default: 128."
                  | optional,
                ..
              }
              | doc "Ring used by Loki ruler. The CLI flags prefix for this block configuration is 'ruler.ring'."
              | optional,
            rule_path
              | String
              | doc "File path to store temporary rule files."
              | optional,
            ruler_client
              | refs."definitions.grpc_client"
              | { _ | Dyn }
              | doc "The grpc_client block configures the gRPC client used to communicate between a client and server component in Loki."
              | optional,
            search_pending_for
              | String
              | doc "Time to spend searching for a pending ruler when shutting down."
              | optional,
            sharding_algo
              | String
              | doc "The sharding algorithm to use for deciding how rules & groups are sharded. Supported values are: by-group, by-rule."
              | optional,
            sharding_strategy
              | String
              | doc "The sharding strategy to use. Supported values are: default, shuffle-sharding."
              | optional,
            storage
              | {
                alibabacloud
                  | refs."definitions.alibabacloud_storage_config"
                  | { _ | Dyn }
                  | doc "Configures backend rule storage for AlibabaCloud Object Storage (OSS)."
                  | optional,
                azure
                  | refs."definitions.azure_storage_config"
                  | { _ | Dyn }
                  | doc "Configures backend rule storage for Azure."
                  | optional,
                bos
                  | refs."definitions.bos_storage_config"
                  | { _ | Dyn }
                  | doc "Configures backend rule storage for Baidu Object Storage (BOS)."
                  | optional,
                cos
                  | refs."definitions.cos_storage_config"
                  | { _ | Dyn }
                  | doc "Configures backend rule storage for IBM Cloud Object Storage (COS)."
                  | optional,
                gcs
                  | refs."definitions.gcs_storage_config"
                  | { _ | Dyn }
                  | doc "Configures backend rule storage for GCS."
                  | optional,
                local
                  | {
                    directory
                      | String
                      | doc "Directory to scan for rules"
                      | optional,
                    ..
                  }
                  | doc "Configures backend rule storage for a local file system directory."
                  | optional,
                s3
                  | refs."definitions.s3_storage_config"
                  | { _ | Dyn }
                  | doc "Configures backend rule storage for S3."
                  | optional,
                swift
                  | refs."definitions.swift_storage_config"
                  | { _ | Dyn }
                  | doc "Configures backend rule storage for Swift."
                  | optional,
                type
                  | String
                  | doc "Method to use for backend rule storage (configdb, azure, gcs, s3, swift, local, bos, cos)"
                  | optional,
                ..
              }
              | doc "Deprecated: Use -ruler-storage. CLI flags and their respective YAML config options instead."
              | optional,
            wal
              | {
                dir
                  | String
                  | doc "The directory in which to write tenant WAL files. Each tenant will have its own directory one level below this directory."
                  | optional,
                max_age
                  | String
                  | doc "Maximum age that samples must exist in the WAL before being truncated."
                  | optional,
                min_age
                  | String
                  | doc "Minimum age that samples must exist in the WAL before being truncated."
                  | optional,
                truncate_frequency
                  | String
                  | doc "Frequency with which to run the WAL truncation process."
                  | optional,
                ..
              }
              | doc ""
              | optional,
            wal_cleaner
              | {
                min_age
                  | String
                  | doc "The minimum age of a WAL to consider for cleaning."
                  | optional,
                period
                  | String
                  | doc "How often to run the WAL cleaner. 0 = disabled."
                  | optional,
                ..
              }
              | doc ""
              | optional,
            ..
          },
      "definitions.ruler.properties.remote_write" =
        {
            add_org_id_header
              | Bool
              | doc "Add X-Scope-OrgID header in remote write requests."
              | optional,
            client
              | js2n.Always
              | { _ | Dyn }
              | doc "Deprecated: Use 'clients' instead. Configure remote write client."
              | optional,
            clients
              | { _ | std.contract.Sequence [ js2n.Always, { _ | Dyn } ] }
              | doc "Configure remote write clients. A map with remote client id as key."
              | optional,
            config_refresh_period
              | String
              | doc "Minimum period to wait between refreshing remote-write reconfigurations. This should be greater than or equivalent to -limits.per-user-override-period."
              | optional,
            enabled
              | Bool
              | doc "Enable remote-write functionality."
              | optional,
            ..
          },
      "definitions.runtime_config" =
        {
            file
              | String
              | doc "Comma separated list of yaml files with the configuration that can be updated at runtime. Runtime config files will be merged from left to right."
              | optional,
            period
              | String
              | doc "How often to check runtime config files."
              | optional,
            ..
          },
      "definitions.s3_storage_config" =
        {
            access_key_id | String | doc "AWS Access Key ID" | optional,
            backoff_config
              | {
                max_period
                  | String
                  | doc "Maximum backoff time when s3 get Object"
                  | optional,
                max_retries
                  | std.number.Integer
                  | doc "Maximum number of times to retry when s3 get Object. Default: 5."
                  | optional,
                min_period
                  | String
                  | doc "Minimum backoff time when s3 get Object"
                  | optional,
                ..
              }
              | doc "Configures back off when S3 get Object."
              | optional,
            bucketnames
              | String
              | doc "Comma separated list of bucket names to evenly distribute chunks over. Overrides any buckets specified in s3.url flag"
              | optional,
            endpoint | String | doc "S3 Endpoint to connect to." | optional,
            http_config
              | {
                ca_file
                  | String
                  | doc "Path to the trusted CA file that signed the SSL certificate of the S3 endpoint."
                  | optional,
                idle_conn_timeout
                  | String
                  | doc "The maximum amount of time an idle connection will be held open."
                  | optional,
                insecure_skip_verify
                  | Bool
                  | doc "Set to true to skip verifying the certificate chain and hostname."
                  | optional,
                response_header_timeout
                  | String
                  | doc "If non-zero, specifies the amount of time to wait for a server's response headers after fully writing the request."
                  | optional,
                timeout
                  | String
                  | doc "Timeout specifies a time limit for requests made by s3 Client."
                  | optional,
                ..
              }
              | doc ""
              | optional,
            insecure | Bool | doc "Disable https on s3 connection." | optional,
            region | String | doc "AWS region to use." | optional,
            s3
              | String
              | doc "S3 endpoint URL with escaped Key and Secret encoded. If only region is specified as a host, proper endpoint will be deduced. Use inmemory:///<bucket-name> to use a mock in-memory implementation."
              | optional,
            s3forcepathstyle
              | Bool
              | doc "Set this to `true` to force the request to use path-style addressing."
              | optional,
            secret_access_key | String | doc "AWS Secret Access Key" | optional,
            session_token | String | doc "AWS Session Token" | optional,
            signature_version
              | String
              | doc "The signature version to use for authenticating against S3. Supported values are: v4."
              | optional,
            sse
              | {
                kms_encryption_context
                  | String
                  | doc "KMS Encryption Context used for object encryption. It expects JSON formatted string."
                  | optional,
                kms_key_id
                  | String
                  | doc "KMS Key ID used to encrypt objects in S3"
                  | optional,
                type
                  | String
                  | doc "Enable AWS Server Side Encryption. Supported values: SSE-KMS, SSE-S3."
                  | optional,
                ..
              }
              | doc ""
              | optional,
            storage_class
              | String
              | doc "The S3 storage class which objects will use. Supported values are: GLACIER, DEEP_ARCHIVE, GLACIER_IR, INTELLIGENT_TIERING, ONEZONE_IA, OUTPOSTS, REDUCED_REDUNDANCY, STANDARD, STANDARD_IA."
              | optional,
            ..
          },
      "definitions.schema_config" =
        {
            configs
              | js2n.Nullable
                (Array (
                  std.contract.Sequence
                    [ refs."definitions.period_config", { _ | Dyn } ]
                ))
              | optional,
            ..
          },
      "definitions.server" =
        {
            graceful_shutdown_timeout
              | String
              | doc "Timeout for graceful shutdowns"
              | optional,
            grpc_listen_address
              | String
              | doc "gRPC server listen address."
              | optional,
            grpc_listen_conn_limit
              | std.number.Integer
              | doc "Maximum number of simultaneous grpc connections, <=0 to disable. Default: 0."
              | optional,
            grpc_listen_network
              | String
              | doc "gRPC server listen network"
              | optional,
            grpc_listen_port
              | std.number.Integer
              | doc "gRPC server listen port. Default: 9095."
              | optional,
            grpc_server_keepalive_time
              | String
              | doc "Duration after which a keepalive probe is sent in case of no activity over the connection., Default: 2h"
              | optional,
            grpc_server_keepalive_timeout
              | String
              | doc "After having pinged for keepalive check, the duration after which an idle connection should be closed, Default: 20s"
              | optional,
            grpc_server_max_concurrent_streams
              | std.number.Integer
              | doc "Limit on the number of concurrent streams for gRPC calls per client connection (0 = unlimited). Default: 100."
              | optional,
            grpc_server_max_connection_age
              | String
              | doc "The duration for the maximum amount of time a connection may exist before it will be closed. Default: infinity"
              | optional,
            grpc_server_max_connection_age_grace
              | String
              | doc "An additive period after max-connection-age after which the connection will be forcibly closed. Default: infinity"
              | optional,
            grpc_server_max_connection_idle
              | String
              | doc "The duration after which an idle connection should be closed. Default: infinity"
              | optional,
            grpc_server_max_recv_msg_size
              | std.number.Integer
              | doc "Limit on the size of a gRPC message this server can receive (bytes). Default: 4194304."
              | optional,
            grpc_server_max_send_msg_size
              | std.number.Integer
              | doc "Limit on the size of a gRPC message this server can send (bytes). Default: 4194304."
              | optional,
            grpc_server_min_time_between_pings
              | String
              | doc "Minimum amount of time a client should wait before sending a keepalive ping. If client sends keepalive ping more often, server will send GOAWAY and close the connection."
              | optional,
            grpc_server_num_workers
              | std.number.Integer
              | doc "If non-zero, configures the amount of GRPC server workers used to serve the requests. Default: 0."
              | optional,
            grpc_server_ping_without_stream_allowed
              | Bool
              | doc "If true, server allows keepalive pings even when there are no active streams(RPCs). If false, and client sends ping when there are no active streams, server will send GOAWAY and close the connection."
              | optional,
            grpc_tls_config
              | {
                cert
                  | String
                  | doc "Server TLS certificate. This configuration parameter is YAML only."
                  | optional,
                cert_file
                  | String
                  | doc "GRPC TLS server cert path."
                  | optional,
                client_auth_type
                  | String
                  | doc "GRPC TLS Client Auth type."
                  | optional,
                client_ca
                  | String
                  | doc "Root certificate authority used to verify client certificates. This configuration parameter is YAML only."
                  | optional,
                client_ca_file
                  | String
                  | doc "GRPC TLS Client CA path."
                  | optional,
                key
                  | String
                  | doc "Server TLS key. This configuration parameter is YAML only."
                  | optional,
                key_file | String | doc "GRPC TLS server key path." | optional,
                ..
              }
              | doc ""
              | optional,
            http_listen_address
              | String
              | doc "HTTP server listen address."
              | optional,
            http_listen_conn_limit
              | std.number.Integer
              | doc "Maximum number of simultaneous http connections, <=0 to disable. Default: 0."
              | optional,
            http_listen_network
              | String
              | doc "HTTP server listen network, default tcp"
              | optional,
            http_listen_port
              | std.number.Integer
              | doc "HTTP server listen port. Default: 3100."
              | optional,
            http_log_closed_connections_without_response_enabled
              | Bool
              | doc "Log closed connections that did not receive any response, most likely because client didn't send any request within timeout."
              | optional,
            http_path_prefix
              | String
              | doc "Base path to serve all API routes from (e.g. /v1/)"
              | optional,
            http_server_idle_timeout
              | String
              | doc "Idle timeout for HTTP server"
              | optional,
            http_server_read_header_timeout
              | String
              | doc "Read timeout for HTTP request headers. If set to 0, value of -server.http-read-timeout is used."
              | optional,
            http_server_read_timeout
              | String
              | doc "Read timeout for entire HTTP request, including headers and body."
              | optional,
            http_server_write_timeout
              | String
              | doc "Write timeout for HTTP server"
              | optional,
            http_tls_config
              | {
                cert
                  | String
                  | doc "Server TLS certificate. This configuration parameter is YAML only."
                  | optional,
                cert_file | String | doc "HTTP server cert path." | optional,
                client_auth_type
                  | String
                  | doc "HTTP TLS Client Auth type."
                  | optional,
                client_ca
                  | String
                  | doc "Root certificate authority used to verify client certificates. This configuration parameter is YAML only."
                  | optional,
                client_ca_file
                  | String
                  | doc "HTTP TLS Client CA path."
                  | optional,
                key
                  | String
                  | doc "Server TLS key. This configuration parameter is YAML only."
                  | optional,
                key_file | String | doc "HTTP server key path." | optional,
                ..
              }
              | doc ""
              | optional,
            log_format
              | String
              | doc "Output log messages in the given format. Valid formats: [logfmt, json]"
              | optional,
            log_level
              | String
              | doc "Only log messages with the given severity or above. Valid levels: [debug, info, warn, error]"
              | optional,
            log_request_at_info_level_enabled
              | Bool
              | doc "Optionally log requests at info level instead of debug level. Applies to request headers as well if server.log-request-headers is enabled."
              | optional,
            log_request_exclude_headers_list
              | String
              | doc "Comma separated list of headers to exclude from logging. Only used if server.log-request-headers is true."
              | optional,
            log_request_headers
              | Bool
              | doc "Optionally log request headers."
              | optional,
            log_source_ips_enabled
              | Bool
              | doc "Optionally log the source IPs."
              | optional,
            log_source_ips_header
              | String
              | doc "Header field storing the source IPs. Only used if server.log-source-ips-enabled is true. If not set the default Forwarded, X-Real-IP and X-Forwarded-For headers are used"
              | optional,
            log_source_ips_regex
              | String
              | doc "Regex for matching the source IPs. Only used if server.log-source-ips-enabled is true. If not set the default Forwarded, X-Real-IP and X-Forwarded-For headers are used"
              | optional,
            register_instrumentation
              | Bool
              | doc "Register the instrumentation handlers (/metrics etc)."
              | optional,
            report_grpc_codes_in_instrumentation_label_enabled
              | Bool
              | doc "If set to true, gRPC statuses will be reported in instrumentation labels with their string representations. Otherwise, they will be reported as \"error\"."
              | optional,
            tls_cipher_suites
              | String
              | doc "Comma-separated list of cipher suites to use. If blank, the default Go cipher suites is used."
              | optional,
            tls_min_version
              | String
              | doc "Minimum TLS version to use. Allowed values: VersionTLS10, VersionTLS11, VersionTLS12, VersionTLS13. If blank, the Go TLS minimum version is used."
              | optional,
            ..
          },
      "definitions.storage_config" =
        {
            alibabacloud
              | refs."definitions.alibabacloud_storage_config"
              | { _ | Dyn }
              | doc "The alibabacloud_storage_config block configures the connection to Alibaba Cloud Storage object storage backend."
              | optional,
            aws
              | refs."definitions.aws_storage_config"
              | { _ | Dyn }
              | doc "The aws_storage_config block configures the connection to dynamoDB and S3 object storage. Either one of them or both can be configured."
              | optional,
            azure
              | refs."definitions.azure_storage_config"
              | { _ | Dyn }
              | doc "The azure_storage_config block configures the connection to Azure object storage backend."
              | optional,
            bigtable
              | {
                grpc_client_config
                  | refs."definitions.grpc_client"
                  | { _ | Dyn }
                  | doc "The grpc_client block configures the gRPC client used to communicate between a client and server component in Loki."
                  | optional,
                instance
                  | String
                  | doc "Bigtable instance ID. Please refer to https://cloud.google.com/docs/authentication/production for more information about how to configure authentication."
                  | optional,
                project | String | doc "Bigtable project ID." | optional,
                table_cache_enabled
                  | Bool
                  | doc "If enabled, once a tables info is fetched, it is cached."
                  | optional,
                table_cache_expiration
                  | String
                  | doc "Duration to cache tables before checking again."
                  | optional,
                ..
              }
              | doc "Deprecated: Configures storing indexes in Bigtable. Required fields only required when bigtable is defined in config."
              | optional,
            bloom_shipper
              | {
                blocks_cache
                  | {
                    hard_limit
                      | String
                      | doc "Cache for bloom blocks. Hard limit of the cache in bytes. Exceeding this limit will block execution until soft limit is deceeded. Default: 64GiB."
                      | optional,
                    soft_limit
                      | String
                      | doc "Cache for bloom blocks. Soft limit of the cache in bytes. Exceeding this limit will trigger evictions of least recently used items in the background. Default: 32GiB."
                      | optional,
                    ttl
                      | String
                      | doc "Cache for bloom blocks. The time to live for items in the cache before they get purged."
                      | optional,
                    ..
                  }
                  | doc ""
                  | optional,
                download_parallelism
                  | std.number.Integer
                  | doc "The amount of maximum concurrent bloom blocks downloads. Usually set to 2x number of CPU cores. Default: 8."
                  | optional,
                max_query_page_size
                  | String
                  | doc "Maximum size of bloom pages that should be queried. Larger pages than this limit are skipped when querying blooms to limit memory usage. Default: 64MiB."
                  | optional,
                metas_cache
                  | refs."definitions.cache_config"
                  | { _ | Dyn }
                  | doc "The cache_config block configures the cache backend for a specific Loki component."
                  | optional,
                working_directory
                  | String
                  | doc "Working directory to store downloaded bloom blocks. Supports multiple directories, separated by comma."
                  | optional,
                ..
              }
              | doc "Experimental: Configures the bloom shipper component, which contains the store abstraction to fetch bloom filters from and put them to object storage."
              | optional,
            boltdb
              | {
                directory
                  | String
                  | doc "Location of BoltDB index files."
                  | optional,
                ..
              }
              | doc "Deprecated: Configures storing index in BoltDB. Required fields only required when boltdb is present in the configuration."
              | optional,
            boltdb_shipper
              | {
                active_index_directory
                  | String
                  | doc "Directory where ingesters would write index files which would then be uploaded by shipper to configured storage"
                  | optional,
                build_per_tenant_index
                  | Bool
                  | doc "Build per tenant index files"
                  | optional,
                cache_location
                  | String
                  | doc "Cache location for restoring index files from storage for queries"
                  | optional,
                cache_ttl
                  | String
                  | doc "TTL for index files restored in cache for queries"
                  | optional,
                index_gateway_client
                  | {
                    grpc_client_config
                      | refs."definitions.grpc_client"
                      | { _ | Dyn }
                      | doc "The grpc_client block configures the gRPC client used to communicate between a client and server component in Loki."
                      | optional,
                    log_gateway_requests
                      | Bool
                      | doc "Whether requests sent to the gateway should be logged or not."
                      | optional,
                    server_address
                      | String
                      | doc "Hostname or IP of the Index Gateway gRPC server running in simple mode. Can also be prefixed with dns+, dnssrv+, or dnssrvnoa+ to resolve a DNS A record with multiple IP's, a DNS SRV record with a followup A record lookup, or a DNS SRV record without a followup A record lookup, respectively."
                      | optional,
                    ..
                  }
                  | doc ""
                  | optional,
                ingesterdbretainperiod | String | optional,
                ingestername | String | optional,
                mode | String | optional,
                query_ready_num_days
                  | std.number.Integer
                  | doc "Number of days of common index to be kept downloaded for queries. For per tenant index query readiness, use limits overrides config. Default: 0."
                  | optional,
                resync_interval
                  | String
                  | doc "Resync downloaded files with the storage"
                  | optional,
                ..
              }
              | doc "Configures storing index in an Object Store (GCS/S3/Azure/Swift/COS/Filesystem) in the form of boltdb files. Required fields only required when boltdb-shipper is defined in config."
              | optional,
            bos
              | refs."definitions.bos_storage_config"
              | { _ | Dyn }
              | doc "The bos_storage_config block configures the connection to Baidu Object Storage (BOS) object storage backend."
              | optional,
            cassandra
              | {
                CA_path
                  | String
                  | doc "Path to certificate file to verify the peer."
                  | optional,
                SSL
                  | Bool
                  | doc "Use SSL when connecting to cassandra instances."
                  | optional,
                addresses
                  | String
                  | doc "Comma-separated hostnames or IPs of Cassandra instances."
                  | optional,
                auth
                  | Bool
                  | doc "Enable password authentication when connecting to cassandra."
                  | optional,
                connect_timeout
                  | String
                  | doc "Initial connection timeout, used during initial dial to server."
                  | optional,
                consistency
                  | String
                  | doc "Consistency level for Cassandra."
                  | optional,
                convict_hosts_on_failure
                  | Bool
                  | doc "Convict hosts of being down on failure."
                  | optional,
                custom_authenticators
                  | js2n.Nullable (Array String)
                  | doc "If set, when authenticating with cassandra a custom authenticator will be expected during the handshake. This flag can be set multiple times."
                  | optional,
                disable_initial_host_lookup
                  | Bool
                  | doc "Instruct the cassandra driver to not attempt to get host info from the system.peers table."
                  | optional,
                host_selection_policy
                  | String
                  | doc "Policy for selecting Cassandra host. Supported values are: round-robin, token-aware."
                  | optional,
                host_verification
                  | Bool
                  | doc "Require SSL certificate validation."
                  | optional,
                keyspace
                  | String
                  | doc "Keyspace to use in Cassandra."
                  | optional,
                max_retries
                  | std.number.Integer
                  | doc "Number of retries to perform on a request. Set to 0 to disable retries. Default: 0."
                  | optional,
                num_connections
                  | std.number.Integer
                  | doc "Number of TCP connections per host. Default: 2."
                  | optional,
                password
                  | String
                  | doc "Password to use when connecting to cassandra."
                  | optional,
                password_file
                  | String
                  | doc "File containing password to use when connecting to cassandra."
                  | optional,
                port
                  | std.number.Integer
                  | doc "Port that Cassandra is running on. Default: 9042."
                  | optional,
                query_concurrency
                  | std.number.Integer
                  | doc "Limit number of concurrent queries to Cassandra. Set to 0 to disable the limit. Default: 0."
                  | optional,
                reconnect_interval
                  | String
                  | doc "Interval to retry connecting to cassandra nodes marked as DOWN."
                  | optional,
                replication_factor
                  | std.number.Integer
                  | doc "Replication factor to use in Cassandra. Default: 3."
                  | optional,
                retry_max_backoff
                  | String
                  | doc "Maximum time to wait before retrying a failed request."
                  | optional,
                retry_min_backoff
                  | String
                  | doc "Minimum time to wait before retrying a failed request."
                  | optional,
                table_options
                  | String
                  | doc "Table options used to create index or chunk tables. This value is used as plain text in the table `WITH` like this, \"CREATE TABLE <generated_by_cortex> (...) WITH <cassandra.table-options>\". For details, see https://cortexmetrics.io/docs/production/cassandra. By default it will use the default table options of your Cassandra cluster."
                  | optional,
                timeout
                  | String
                  | doc "Timeout when connecting to cassandra."
                  | optional,
                tls_cert_path
                  | String
                  | doc "Path to certificate file used by TLS."
                  | optional,
                tls_key_path
                  | String
                  | doc "Path to private key file used by TLS."
                  | optional,
                username
                  | String
                  | doc "Username to use when connecting to cassandra."
                  | optional,
                ..
              }
              | doc "Deprecated: Configures storing chunks and/or the index in Cassandra."
              | optional,
            congestion_control
              | {
                controller
                  | {
                    aimd
                      | {
                        backoff_factor
                          | Number
                          | doc "AIMD backoff factor when upstream service is throttled to decrease number of requests sent per second (default: 0.5). Default: 0.5."
                          | optional,
                        start
                          | std.number.Integer
                          | doc "AIMD starting throughput window size: how many requests can be sent per second (default: 2000). Default: 2000."
                          | optional,
                        upper_bound
                          | std.number.Integer
                          | doc "AIMD maximum throughput window size: upper limit of requests sent per second (default: 10000). Default: 10000."
                          | optional,
                        ..
                      }
                      | doc ""
                      | optional,
                    strategy
                      | String
                      | doc "Congestion control strategy to use (default: none, options: 'aimd')."
                      | optional,
                    ..
                  }
                  | doc ""
                  | optional,
                enabled
                  | Bool
                  | doc "Use storage congestion control (default: disabled)."
                  | optional,
                hedging
                  | {
                    config
                      | {
                        at | String | optional,
                        max_per_second | std.number.Integer | optional,
                        up_to | std.number.Integer | optional,
                        ..
                      }
                      | doc ""
                      | optional,
                    strategy
                      | String
                      | doc "Congestion control hedge strategy to use (default: none, options: 'limited')."
                      | optional,
                    ..
                  }
                  | doc ""
                  | optional,
                retry
                  | {
                    limit
                      | std.number.Integer
                      | doc "Maximum number of retries allowed. Default: 2."
                      | optional,
                    strategy
                      | String
                      | doc "Congestion control retry strategy to use (default: none, options: 'limited')."
                      | optional,
                    ..
                  }
                  | doc ""
                  | optional,
                ..
              }
              | doc ""
              | optional,
            cos
              | refs."definitions.cos_storage_config"
              | { _ | Dyn }
              | doc "The cos_storage_config block configures the connection to IBM Cloud Object Storage (COS) backend."
              | optional,
            disable_broad_index_queries
              | Bool
              | doc "Disable broad index queries which results in reduced cache usage and faster query performance at the expense of somewhat higher QPS on the index store."
              | optional,
            filesystem
              | refs."definitions.local_storage_config"
              | { _ | Dyn }
              | doc "Configures storing the chunks on the local file system. Required fields only required when filesystem is present in the configuration."
              | optional,
            gcs
              | refs."definitions.gcs_storage_config"
              | { _ | Dyn }
              | doc "Configures storing chunks in GCS. Required fields only required when gcs is defined in config."
              | optional,
            grpc_store
              | {
                server_address
                  | String
                  | doc "Hostname or IP of the gRPC store instance."
                  | optional,
                ..
              }
              | doc "Deprecated:"
              | optional,
            hedging
              | {
                at
                  | String
                  | doc "If set to a non-zero value a second request will be issued at the provided duration. Default is 0 (disabled)"
                  | optional,
                max_per_second
                  | std.number.Integer
                  | doc "The maximum of hedge requests allowed per seconds. Default: 5."
                  | optional,
                up_to
                  | std.number.Integer
                  | doc "The maximum of hedge requests allowed. Default: 2."
                  | optional,
                ..
              }
              | doc ""
              | optional,
            index_cache_validity
              | String
              | doc "Cache validity for active index entries. Should be no higher than -ingester.max-chunk-idle."
              | optional,
            index_queries_cache_config
              | refs."definitions.cache_config"
              | { _ | Dyn }
              | doc "The cache_config block configures the cache backend for a specific Loki component."
              | optional,
            max_chunk_batch_size
              | std.number.Integer
              | doc "The maximum number of chunks to fetch per batch. Default: 50."
              | optional,
            max_parallel_get_chunk
              | std.number.Integer
              | doc "Maximum number of parallel chunk reads. Default: 150."
              | optional,
            named_stores
              | refs."definitions.named_stores_config"
              | { _ | Dyn }
              | doc m%"
                Configures additional object stores for a given storage provider.
                Supported stores: aws, azure, bos, filesystem, gcs, swift.
                Example:
                storage_config:
                  named_stores:
                    aws:
                      store-1:
                        endpoint: s3://foo-bucket
                        region: us-west1
                Named store from this example can be used by setting object_store to store-1 in period_config.
              "%
              | optional,
            object_prefix
              | String
              | doc "Experimental. Sets a constant prefix for all keys inserted into object storage. Example: loki/"
              | optional,
            swift
              | refs."definitions.swift_storage_config"
              | { _ | Dyn }
              | doc "The swift_storage_config block configures the connection to OpenStack Object Storage (Swift) object storage backend."
              | optional,
            tsdb_shipper
              | {
                active_index_directory
                  | String
                  | doc "Directory where ingesters would write index files which would then be uploaded by shipper to configured storage"
                  | optional,
                cache_location
                  | String
                  | doc "Cache location for restoring index files from storage for queries"
                  | optional,
                cache_ttl
                  | String
                  | doc "TTL for index files restored in cache for queries"
                  | optional,
                index_gateway_client
                  | {
                    grpc_client_config
                      | refs."definitions.grpc_client"
                      | { _ | Dyn }
                      | doc "The grpc_client block configures the gRPC client used to communicate between a client and server component in Loki."
                      | optional,
                    log_gateway_requests
                      | Bool
                      | doc "Whether requests sent to the gateway should be logged or not."
                      | optional,
                    server_address
                      | String
                      | doc "Hostname or IP of the Index Gateway gRPC server running in simple mode. Can also be prefixed with dns+, dnssrv+, or dnssrvnoa+ to resolve a DNS A record with multiple IP's, a DNS SRV record with a followup A record lookup, or a DNS SRV record without a followup A record lookup, respectively."
                      | optional,
                    ..
                  }
                  | doc ""
                  | optional,
                ingesterdbretainperiod | String | optional,
                ingestername | String | optional,
                mode | String | optional,
                query_ready_num_days
                  | std.number.Integer
                  | doc "Number of days of common index to be kept downloaded for queries. For per tenant index query readiness, use limits overrides config. Default: 0."
                  | optional,
                resync_interval
                  | String
                  | doc "Resync downloaded files with the storage"
                  | optional,
                ..
              }
              | doc "Configures storing index in an Object Store (GCS/S3/Azure/Swift/COS/Filesystem) in a prometheus TSDB-like format. Required fields only required when TSDB is defined in config."
              | optional,
            ..
          },
      "definitions.swift_storage_config" =
        {
            auth_url
              | String
              | doc "OpenStack Swift authentication URL"
              | optional,
            auth_version
              | std.number.Integer
              | doc "OpenStack Swift authentication API version. 0 to autodetect. Default: 0."
              | optional,
            connect_timeout
              | String
              | doc "Time after which a connection attempt is aborted."
              | optional,
            container_name
              | String
              | doc "Name of the OpenStack Swift container to put chunks in."
              | optional,
            domain_id
              | String
              | doc "OpenStack Swift user's domain ID."
              | optional,
            domain_name
              | String
              | doc "OpenStack Swift user's domain name."
              | optional,
            internal
              | Bool
              | doc "Set this to true to use the internal OpenStack Swift endpoint URL"
              | optional,
            max_retries
              | std.number.Integer
              | doc "Max retries on requests error. Default: 3."
              | optional,
            password | String | doc "OpenStack Swift API key." | optional,
            project_domain_id
              | String
              | doc "ID of the OpenStack Swift project's domain (v3 auth only), only needed if it differs the from user domain."
              | optional,
            project_domain_name
              | String
              | doc "Name of the OpenStack Swift project's domain (v3 auth only), only needed if it differs from the user domain."
              | optional,
            project_id
              | String
              | doc "OpenStack Swift project ID (v2,v3 auth only)."
              | optional,
            project_name
              | String
              | doc "OpenStack Swift project name (v2,v3 auth only)."
              | optional,
            region_name
              | String
              | doc "OpenStack Swift Region to use (v2,v3 auth only)."
              | optional,
            request_timeout
              | String
              | doc "Time after which an idle request is aborted. The timeout watchdog is reset each time some data is received, so the timeout triggers after X time no data is received on a request."
              | optional,
            user_domain_id
              | String
              | doc "OpenStack Swift user's domain ID."
              | optional,
            user_domain_name
              | String
              | doc "OpenStack Swift user's domain name."
              | optional,
            user_id | String | doc "OpenStack Swift user ID." | optional,
            username | String | doc "OpenStack Swift username." | optional,
            ..
          },
      "definitions.table_manager" =
        {
            chunk_tables_provisioning
              | {
                enable_inactive_throughput_on_demand_mode
                  | Bool
                  | doc "Enables on demand throughput provisioning for the storage provider (if supported). Applies only to tables which are not autoscaled. Supported by DynamoDB"
                  | optional,
                enable_ondemand_throughput_mode
                  | Bool
                  | doc "Enables on demand throughput provisioning for the storage provider (if supported). Applies only to tables which are not autoscaled. Supported by DynamoDB"
                  | optional,
                inactive_read_scale
                  | {
                    enabled
                      | Bool
                      | doc "Should we enable autoscale for the table."
                      | optional,
                    in_cooldown
                      | std.number.Integer
                      | doc "DynamoDB minimum seconds between each autoscale down. Default: 1800."
                      | optional,
                    max_capacity
                      | std.number.Integer
                      | doc "DynamoDB maximum provision capacity. Default: 6000."
                      | optional,
                    min_capacity
                      | std.number.Integer
                      | doc "DynamoDB minimum provision capacity. Default: 3000."
                      | optional,
                    out_cooldown
                      | std.number.Integer
                      | doc "DynamoDB minimum seconds between each autoscale up. Default: 1800."
                      | optional,
                    role_arn
                      | String
                      | doc "AWS AutoScaling role ARN"
                      | optional,
                    target
                      | Number
                      | doc "DynamoDB target ratio of consumed capacity to provisioned capacity. Default: 80."
                      | optional,
                    ..
                  }
                  | doc ""
                  | optional,
                inactive_read_scale_lastn
                  | std.number.Integer
                  | doc "Number of last inactive tables to enable read autoscale. Default: 4."
                  | optional,
                inactive_read_throughput
                  | std.number.Integer
                  | doc "Table read throughput for inactive tables. Supported by DynamoDB. Default: 300."
                  | optional,
                inactive_write_scale
                  | {
                    enabled
                      | Bool
                      | doc "Should we enable autoscale for the table."
                      | optional,
                    in_cooldown
                      | std.number.Integer
                      | doc "DynamoDB minimum seconds between each autoscale down. Default: 1800."
                      | optional,
                    max_capacity
                      | std.number.Integer
                      | doc "DynamoDB maximum provision capacity. Default: 6000."
                      | optional,
                    min_capacity
                      | std.number.Integer
                      | doc "DynamoDB minimum provision capacity. Default: 3000."
                      | optional,
                    out_cooldown
                      | std.number.Integer
                      | doc "DynamoDB minimum seconds between each autoscale up. Default: 1800."
                      | optional,
                    role_arn
                      | String
                      | doc "AWS AutoScaling role ARN"
                      | optional,
                    target
                      | Number
                      | doc "DynamoDB target ratio of consumed capacity to provisioned capacity. Default: 80."
                      | optional,
                    ..
                  }
                  | doc ""
                  | optional,
                inactive_write_scale_lastn
                  | std.number.Integer
                  | doc "Number of last inactive tables to enable write autoscale. Default: 4."
                  | optional,
                inactive_write_throughput
                  | std.number.Integer
                  | doc "Table write throughput for inactive tables. Supported by DynamoDB. Default: 1."
                  | optional,
                provisioned_read_throughput
                  | std.number.Integer
                  | doc "Table default read throughput. Supported by DynamoDB. Default: 300."
                  | optional,
                provisioned_write_throughput
                  | std.number.Integer
                  | doc "Table default write throughput. Supported by DynamoDB. Default: 1000."
                  | optional,
                read_scale
                  | {
                    enabled
                      | Bool
                      | doc "Should we enable autoscale for the table."
                      | optional,
                    in_cooldown
                      | std.number.Integer
                      | doc "DynamoDB minimum seconds between each autoscale down. Default: 1800."
                      | optional,
                    max_capacity
                      | std.number.Integer
                      | doc "DynamoDB maximum provision capacity. Default: 6000."
                      | optional,
                    min_capacity
                      | std.number.Integer
                      | doc "DynamoDB minimum provision capacity. Default: 3000."
                      | optional,
                    out_cooldown
                      | std.number.Integer
                      | doc "DynamoDB minimum seconds between each autoscale up. Default: 1800."
                      | optional,
                    role_arn
                      | String
                      | doc "AWS AutoScaling role ARN"
                      | optional,
                    target
                      | Number
                      | doc "DynamoDB target ratio of consumed capacity to provisioned capacity. Default: 80."
                      | optional,
                    ..
                  }
                  | doc ""
                  | optional,
                write_scale
                  | {
                    enabled
                      | Bool
                      | doc "Should we enable autoscale for the table."
                      | optional,
                    in_cooldown
                      | std.number.Integer
                      | doc "DynamoDB minimum seconds between each autoscale down. Default: 1800."
                      | optional,
                    max_capacity
                      | std.number.Integer
                      | doc "DynamoDB maximum provision capacity. Default: 6000."
                      | optional,
                    min_capacity
                      | std.number.Integer
                      | doc "DynamoDB minimum provision capacity. Default: 3000."
                      | optional,
                    out_cooldown
                      | std.number.Integer
                      | doc "DynamoDB minimum seconds between each autoscale up. Default: 1800."
                      | optional,
                    role_arn
                      | String
                      | doc "AWS AutoScaling role ARN"
                      | optional,
                    target
                      | Number
                      | doc "DynamoDB target ratio of consumed capacity to provisioned capacity. Default: 80."
                      | optional,
                    ..
                  }
                  | doc ""
                  | optional,
                ..
              }
              | doc ""
              | optional,
            creation_grace_period
              | String
              | doc "Periodic tables grace period (duration which table will be created/deleted before/after it's needed)."
              | optional,
            index_tables_provisioning
              | {
                enable_inactive_throughput_on_demand_mode
                  | Bool
                  | doc "Enables on demand throughput provisioning for the storage provider (if supported). Applies only to tables which are not autoscaled. Supported by DynamoDB"
                  | optional,
                enable_ondemand_throughput_mode
                  | Bool
                  | doc "Enables on demand throughput provisioning for the storage provider (if supported). Applies only to tables which are not autoscaled. Supported by DynamoDB"
                  | optional,
                inactive_read_scale
                  | {
                    enabled
                      | Bool
                      | doc "Should we enable autoscale for the table."
                      | optional,
                    in_cooldown
                      | std.number.Integer
                      | doc "DynamoDB minimum seconds between each autoscale down. Default: 1800."
                      | optional,
                    max_capacity
                      | std.number.Integer
                      | doc "DynamoDB maximum provision capacity. Default: 6000."
                      | optional,
                    min_capacity
                      | std.number.Integer
                      | doc "DynamoDB minimum provision capacity. Default: 3000."
                      | optional,
                    out_cooldown
                      | std.number.Integer
                      | doc "DynamoDB minimum seconds between each autoscale up. Default: 1800."
                      | optional,
                    role_arn
                      | String
                      | doc "AWS AutoScaling role ARN"
                      | optional,
                    target
                      | Number
                      | doc "DynamoDB target ratio of consumed capacity to provisioned capacity. Default: 80."
                      | optional,
                    ..
                  }
                  | doc ""
                  | optional,
                inactive_read_scale_lastn
                  | std.number.Integer
                  | doc "Number of last inactive tables to enable read autoscale. Default: 4."
                  | optional,
                inactive_read_throughput
                  | std.number.Integer
                  | doc "Table read throughput for inactive tables. Supported by DynamoDB. Default: 300."
                  | optional,
                inactive_write_scale
                  | {
                    enabled
                      | Bool
                      | doc "Should we enable autoscale for the table."
                      | optional,
                    in_cooldown
                      | std.number.Integer
                      | doc "DynamoDB minimum seconds between each autoscale down. Default: 1800."
                      | optional,
                    max_capacity
                      | std.number.Integer
                      | doc "DynamoDB maximum provision capacity. Default: 6000."
                      | optional,
                    min_capacity
                      | std.number.Integer
                      | doc "DynamoDB minimum provision capacity. Default: 3000."
                      | optional,
                    out_cooldown
                      | std.number.Integer
                      | doc "DynamoDB minimum seconds between each autoscale up. Default: 1800."
                      | optional,
                    role_arn
                      | String
                      | doc "AWS AutoScaling role ARN"
                      | optional,
                    target
                      | Number
                      | doc "DynamoDB target ratio of consumed capacity to provisioned capacity. Default: 80."
                      | optional,
                    ..
                  }
                  | doc ""
                  | optional,
                inactive_write_scale_lastn
                  | std.number.Integer
                  | doc "Number of last inactive tables to enable write autoscale. Default: 4."
                  | optional,
                inactive_write_throughput
                  | std.number.Integer
                  | doc "Table write throughput for inactive tables. Supported by DynamoDB. Default: 1."
                  | optional,
                provisioned_read_throughput
                  | std.number.Integer
                  | doc "Table default read throughput. Supported by DynamoDB. Default: 300."
                  | optional,
                provisioned_write_throughput
                  | std.number.Integer
                  | doc "Table default write throughput. Supported by DynamoDB. Default: 1000."
                  | optional,
                read_scale
                  | {
                    enabled
                      | Bool
                      | doc "Should we enable autoscale for the table."
                      | optional,
                    in_cooldown
                      | std.number.Integer
                      | doc "DynamoDB minimum seconds between each autoscale down. Default: 1800."
                      | optional,
                    max_capacity
                      | std.number.Integer
                      | doc "DynamoDB maximum provision capacity. Default: 6000."
                      | optional,
                    min_capacity
                      | std.number.Integer
                      | doc "DynamoDB minimum provision capacity. Default: 3000."
                      | optional,
                    out_cooldown
                      | std.number.Integer
                      | doc "DynamoDB minimum seconds between each autoscale up. Default: 1800."
                      | optional,
                    role_arn
                      | String
                      | doc "AWS AutoScaling role ARN"
                      | optional,
                    target
                      | Number
                      | doc "DynamoDB target ratio of consumed capacity to provisioned capacity. Default: 80."
                      | optional,
                    ..
                  }
                  | doc ""
                  | optional,
                write_scale
                  | {
                    enabled
                      | Bool
                      | doc "Should we enable autoscale for the table."
                      | optional,
                    in_cooldown
                      | std.number.Integer
                      | doc "DynamoDB minimum seconds between each autoscale down. Default: 1800."
                      | optional,
                    max_capacity
                      | std.number.Integer
                      | doc "DynamoDB maximum provision capacity. Default: 6000."
                      | optional,
                    min_capacity
                      | std.number.Integer
                      | doc "DynamoDB minimum provision capacity. Default: 3000."
                      | optional,
                    out_cooldown
                      | std.number.Integer
                      | doc "DynamoDB minimum seconds between each autoscale up. Default: 1800."
                      | optional,
                    role_arn
                      | String
                      | doc "AWS AutoScaling role ARN"
                      | optional,
                    target
                      | Number
                      | doc "DynamoDB target ratio of consumed capacity to provisioned capacity. Default: 80."
                      | optional,
                    ..
                  }
                  | doc ""
                  | optional,
                ..
              }
              | doc ""
              | optional,
            poll_interval
              | String
              | doc "How frequently to poll backend to learn our capacity."
              | optional,
            retention_deletes_enabled
              | Bool
              | doc "If true, enables retention deletes of DB tables"
              | optional,
            retention_period
              | String
              | doc "Tables older than this retention period are deleted. Must be either 0 (disabled) or a multiple of 24h. When enabled, be aware this setting is destructive to data!"
              | optional,
            throughput_updates_disabled
              | Bool
              | doc "If true, disable all changes to DB capacity"
              | optional,
            ..
          },
      "definitions.tls_config" =
        {
            tls_ca_path
              | String
              | doc "Path to the CA certificates to validate server certificate against. If not set, the host's root CA certificates are used."
              | optional,
            tls_cert_path
              | String
              | doc "Path to the client certificate, which will be used for authenticating with the server. Also requires the key path to be configured."
              | optional,
            tls_cipher_suites
              | String
              | doc m%"
                Override the default cipher suite list (separated by commas). Allowed values:
                
                Secure Ciphers:
                - TLS_AES_128_GCM_SHA256
                - TLS_AES_256_GCM_SHA384
                - TLS_CHACHA20_POLY1305_SHA256
                - TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA
                - TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA
                - TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA
                - TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA
                - TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256
                - TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384
                - TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
                - TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
                - TLS_ECDHE_RSA_WITH_CHACHA20_POLY1305_SHA256
                - TLS_ECDHE_ECDSA_WITH_CHACHA20_POLY1305_SHA256
                
                Insecure Ciphers:
                - TLS_RSA_WITH_RC4_128_SHA
                - TLS_RSA_WITH_3DES_EDE_CBC_SHA
                - TLS_RSA_WITH_AES_128_CBC_SHA
                - TLS_RSA_WITH_AES_256_CBC_SHA
                - TLS_RSA_WITH_AES_128_CBC_SHA256
                - TLS_RSA_WITH_AES_128_GCM_SHA256
                - TLS_RSA_WITH_AES_256_GCM_SHA384
                - TLS_ECDHE_ECDSA_WITH_RC4_128_SHA
                - TLS_ECDHE_RSA_WITH_RC4_128_SHA
                - TLS_ECDHE_RSA_WITH_3DES_EDE_CBC_SHA
                - TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA256
                - TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256
                
              "%
              | optional,
            tls_insecure_skip_verify
              | Bool
              | doc "Skip validating server certificate."
              | optional,
            tls_key_path
              | String
              | doc "Path to the key for the client certificate. Also requires the client certificate to be configured."
              | optional,
            tls_min_version
              | String
              | doc "Override the default minimum TLS version. Allowed values: VersionTLS10, VersionTLS11, VersionTLS12, VersionTLS13"
              | optional,
            tls_server_name
              | String
              | doc "Override the expected name on the server certificate."
              | optional,
            ..
          },
      "definitions.tracing" =
        {
            enabled | Bool | doc "Set to false to disable tracing." | optional,
            ..
          },
    }
    in
  js2n.Nullable
      {
        analytics
          | refs."definitions.analytics"
          | doc "Configuration for analytics."
          | optional,
        auth_enabled
          | Bool
          | doc "Enables authentication through the X-Scope-OrgID header, which must be present if true. If false, the OrgID will always be set to 'fake'."
          | optional,
        ballast_bytes
          | std.number.Integer
          | doc "The amount of virtual memory in bytes to reserve as ballast in order to optimize garbage collection. Larger ballasts result in fewer garbage collection passes, reducing CPU overhead at the cost of heap size. The ballast will not consume physical memory, because it is never read from. It will, however, distort metrics, because it is counted as live memory. Default: 0."
          | optional,
        bloom_compactor
          | refs."definitions.bloom_compactor"
          | doc "Experimental: The bloom_compactor block configures the Loki bloom compactor server, responsible for compacting stream indexes into bloom filters and merging them as bloom blocks."
          | optional,
        bloom_gateway
          | refs."definitions.bloom_gateway"
          | doc "Experimental: The bloom_gateway block configures the Loki bloom gateway server, responsible for serving queries for filtering chunks based on filter expressions."
          | optional,
        chunk_store_config
          | refs."definitions.chunk_store_config"
          | doc "The chunk_store_config block configures how chunks will be cached and how long to wait before saving them to the backing store."
          | optional,
        common
          | refs."definitions.common"
          | doc "Common configuration to be shared between multiple modules. If a more specific configuration is given in other sections, the related configuration within this section will be ignored."
          | optional,
        compactor
          | refs."definitions.compactor"
          | doc "The compactor block configures the compactor component, which compacts index shards for performance."
          | optional,
        compactor_grpc_client
          | {
            backoff_config
              | {
                max_period
                  | String
                  | doc "Maximum delay when backing off."
                  | optional,
                max_retries
                  | std.number.Integer
                  | doc "Number of times to backoff and retry before failing. Default: 10."
                  | optional,
                min_period
                  | String
                  | doc "Minimum delay when backing off."
                  | optional,
                ..
              }
              | doc ""
              | optional,
            backoff_on_ratelimits
              | Bool
              | doc "Enable backoff and retry when we hit rate limits."
              | optional,
            connect_backoff_base_delay
              | String
              | doc "Initial backoff delay after first connection failure. Only relevant if ConnectTimeout > 0."
              | optional,
            connect_backoff_max_delay
              | String
              | doc "Maximum backoff delay when establishing a connection. Only relevant if ConnectTimeout > 0."
              | optional,
            connect_timeout
              | String
              | doc "The maximum amount of time to establish a connection. A value of 0 means default gRPC client connect timeout and backoff."
              | optional,
            grpc_compression
              | String
              | doc "Use compression when sending messages. Supported values are: 'gzip', 'snappy' and '' (disable compression)"
              | optional,
            initial_connection_window_size
              | String
              | doc "Initial connection window size. Values less than the default are not supported and are ignored. Setting this to a value other than the default disables the BDP estimator. Default: 63KiB1023B."
              | optional,
            initial_stream_window_size
              | String
              | doc "Initial stream window size. Values less than the default are not supported and are ignored. Setting this to a value other than the default disables the BDP estimator. Default: 63KiB1023B."
              | optional,
            max_recv_msg_size
              | std.number.Integer
              | doc "gRPC client max receive message size (bytes). Default: 104857600."
              | optional,
            max_send_msg_size
              | std.number.Integer
              | doc "gRPC client max send message size (bytes). Default: 104857600."
              | optional,
            rate_limit
              | Number
              | doc "Rate limit for gRPC client; 0 means disabled. Default: 0."
              | optional,
            rate_limit_burst
              | std.number.Integer
              | doc "Rate limit burst for gRPC client. Default: 0."
              | optional,
            tls_ca_path
              | String
              | doc "Path to the CA certificates to validate server certificate against. If not set, the host's root CA certificates are used."
              | optional,
            tls_cert_path
              | String
              | doc "Path to the client certificate, which will be used for authenticating with the server. Also requires the key path to be configured."
              | optional,
            tls_cipher_suites
              | String
              | doc m%"
                Override the default cipher suite list (separated by commas). Allowed values:
                
                Secure Ciphers:
                - TLS_AES_128_GCM_SHA256
                - TLS_AES_256_GCM_SHA384
                - TLS_CHACHA20_POLY1305_SHA256
                - TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA
                - TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA
                - TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA
                - TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA
                - TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256
                - TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384
                - TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
                - TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
                - TLS_ECDHE_RSA_WITH_CHACHA20_POLY1305_SHA256
                - TLS_ECDHE_ECDSA_WITH_CHACHA20_POLY1305_SHA256
                
                Insecure Ciphers:
                - TLS_RSA_WITH_RC4_128_SHA
                - TLS_RSA_WITH_3DES_EDE_CBC_SHA
                - TLS_RSA_WITH_AES_128_CBC_SHA
                - TLS_RSA_WITH_AES_256_CBC_SHA
                - TLS_RSA_WITH_AES_128_CBC_SHA256
                - TLS_RSA_WITH_AES_128_GCM_SHA256
                - TLS_RSA_WITH_AES_256_GCM_SHA384
                - TLS_ECDHE_ECDSA_WITH_RC4_128_SHA
                - TLS_ECDHE_RSA_WITH_RC4_128_SHA
                - TLS_ECDHE_RSA_WITH_3DES_EDE_CBC_SHA
                - TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA256
                - TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256
                
              "%
              | optional,
            tls_enabled
              | Bool
              | doc "Enable TLS in the gRPC client. This flag needs to be enabled when any other TLS flag is set. If set to false, insecure connection to gRPC server will be used."
              | optional,
            tls_insecure_skip_verify
              | Bool
              | doc "Skip validating server certificate."
              | optional,
            tls_key_path
              | String
              | doc "Path to the key for the client certificate. Also requires the client certificate to be configured."
              | optional,
            tls_min_version
              | String
              | doc "Override the default minimum TLS version. Allowed values: VersionTLS10, VersionTLS11, VersionTLS12, VersionTLS13"
              | optional,
            tls_server_name
              | String
              | doc "Override the expected name on the server certificate."
              | optional,
            ..
          }
          | doc ""
          | optional,
        distributor
          | refs."definitions.distributor"
          | doc "Configures the distributor."
          | optional,
        frontend
          | refs."definitions.frontend"
          | doc "The frontend block configures the Loki query-frontend."
          | optional,
        frontend_worker
          | refs."definitions.frontend_worker"
          | doc "The frontend_worker configures the worker - running within the Loki querier - picking up and executing queries enqueued by the query-frontend."
          | optional,
        index_gateway
          | refs."definitions.index_gateway"
          | doc "The index_gateway block configures the Loki index gateway server, responsible for serving index queries without the need to constantly interact with the object store."
          | optional,
        ingester
          | refs."definitions.ingester"
          | doc "The ingester block configures the ingester and how the ingester will register itself to a key value store."
          | optional,
        ingester_client
          | refs."definitions.ingester_client"
          | doc "The ingester_client block configures how the distributor will connect to ingesters. Only appropriate when running all components, the distributor, or the querier."
          | optional,
        limits_config
          | refs."definitions.limits_config"
          | doc "The limits_config block configures global and per-tenant limits in Loki. The values here can be overridden in the `overrides` section of the runtime_config file"
          | optional,
        memberlist
          | refs."definitions.memberlist"
          | doc m%"
            Configuration for memberlist client. Only applies if the selected kvstore is memberlist.
            
            When a memberlist config with at least 1 join_members is defined, kvstore of type memberlist is automatically selected for all the components that require a ring unless otherwise specified in the component's configuration section.
          "%
          | optional,
        metrics_namespace
          | String
          | doc "Namespace of the metrics that in previous releases had cortex as namespace. This setting is deprecated and will be removed in the next minor release."
          | optional,
        operational_config
          | refs."definitions.operational_config"
          | doc "These are values which allow you to control aspects of Loki's operation, most commonly used for controlling types of higher verbosity logging, the values here can be overridden in the `configs` section of the `runtime_config` file."
          | optional,
        pattern_ingester
          | {
            client_config
              | {
                grpc_client_config
                  | refs."definitions.grpc_client"
                  | doc "Configures how the gRPC connection to ingesters work as a client."
                  | optional,
                pool_config
                  | {
                    client_cleanup_period
                      | String
                      | doc "How frequently to clean up clients for ingesters that have gone away."
                      | optional,
                    health_check_ingesters
                      | Bool
                      | doc "Run a health check on each ingester client during periodic cleanup."
                      | optional,
                    remote_timeout
                      | String
                      | doc "Timeout for the health check."
                      | optional,
                    ..
                  }
                  | doc "Configures how connections are pooled."
                  | optional,
                remote_timeout
                  | String
                  | doc "The remote request timeout on the client side."
                  | optional,
                ..
              }
              | doc "Configures how the pattern ingester will connect to the ingesters."
              | optional,
            concurrent_flushes
              | std.number.Integer
              | doc "How many flushes can happen concurrently from each stream. Default: 32."
              | optional,
            enabled
              | Bool
              | doc "Whether the pattern ingester is enabled."
              | optional,
            flush_check_period
              | String
              | doc "How often should the ingester see if there are any blocks to flush. The first flush check is delayed by a random time up to 0.8x the flush check period. Additionally, there is +/- 1% jitter added to the interval."
              | optional,
            lifecycler
              | {
                address
                  | String
                  | doc "IP address to advertise in the ring."
                  | optional,
                availability_zone
                  | String
                  | doc "The availability zone where this instance is running."
                  | optional,
                enable_inet6
                  | Bool
                  | doc "Enable IPv6 support. Required to make use of IP addresses from IPv6 interfaces."
                  | optional,
                final_sleep
                  | String
                  | doc "Duration to sleep for before exiting, to ensure metrics are scraped."
                  | optional,
                heartbeat_period
                  | String
                  | doc "Period at which to heartbeat to consul. 0 = disabled."
                  | optional,
                heartbeat_timeout
                  | String
                  | doc "Heartbeat timeout after which instance is assumed to be unhealthy. 0 = disabled."
                  | optional,
                id | String | doc "ID to register in the ring." | optional,
                interface_names
                  | js2n.Nullable (Array String)
                  | doc "Name of network interface to read address from."
                  | optional,
                join_after
                  | String
                  | doc "Period to wait for a claim from another member; will join automatically after this."
                  | optional,
                min_ready_duration
                  | String
                  | doc "Minimum duration to wait after the internal readiness checks have passed but before succeeding the readiness endpoint. This is used to slowdown deployment controllers (eg. Kubernetes) after an instance is ready and before they proceed with a rolling update, to give the rest of the cluster instances enough time to receive ring updates."
                  | optional,
                num_tokens
                  | std.number.Integer
                  | doc "Number of tokens for each ingester. Default: 128."
                  | optional,
                observe_period
                  | String
                  | doc "Observe tokens after generating to resolve collisions. Useful when using gossiping ring."
                  | optional,
                port
                  | std.number.Integer
                  | doc "port to advertise in consul (defaults to server.grpc-listen-port). Default: 0."
                  | optional,
                readiness_check_ring_health
                  | Bool
                  | doc "When enabled the readiness probe succeeds only after all instances are ACTIVE and healthy in the ring, otherwise only the instance itself is checked. This option should be disabled if in your cluster multiple instances can be rolled out simultaneously, otherwise rolling updates may be slowed down."
                  | optional,
                ring
                  | {
                    excluded_zones
                      | String
                      | doc "Comma-separated list of zones to exclude from the ring. Instances in excluded zones will be filtered out from the ring."
                      | optional,
                    heartbeat_timeout
                      | String
                      | doc "The heartbeat timeout after which ingesters are skipped for reads/writes. 0 = never (timeout disabled)."
                      | optional,
                    kvstore
                      | {
                        consul
                          | refs."definitions.consul"
                          | doc "Configuration for a Consul client. Only applies if the selected kvstore is consul."
                          | optional,
                        etcd
                          | refs."definitions.etcd"
                          | doc "Configuration for an ETCD v3 client. Only applies if the selected kvstore is etcd."
                          | optional,
                        multi
                          | {
                            mirror_enabled
                              | Bool
                              | doc "Mirror writes to secondary store."
                              | optional,
                            mirror_timeout
                              | String
                              | doc "Timeout for storing value to secondary store."
                              | optional,
                            primary
                              | String
                              | doc "Primary backend storage used by multi-client."
                              | optional,
                            secondary
                              | String
                              | doc "Secondary backend storage used by multi-client."
                              | optional,
                            ..
                          }
                          | doc ""
                          | optional,
                        prefix
                          | String
                          | doc "The prefix for the keys in the store. Should end with a /."
                          | optional,
                        store
                          | String
                          | doc "Backend storage to use for the ring. Supported values are: consul, etcd, inmemory, memberlist, multi."
                          | optional,
                        ..
                      }
                      | doc ""
                      | optional,
                    replication_factor
                      | std.number.Integer
                      | doc "The number of ingesters to write to and read from. Default: 1."
                      | optional,
                    zone_awareness_enabled
                      | Bool
                      | doc "True to enable the zone-awareness and replicate ingested samples across different availability zones."
                      | optional,
                    ..
                  }
                  | doc ""
                  | optional,
                tokens_file_path
                  | String
                  | doc "File path where tokens are stored. If empty, tokens are not stored at shutdown and restored at startup."
                  | optional,
                unregister_on_shutdown
                  | Bool
                  | doc "Unregister from the ring upon clean shutdown. It can be useful to disable for rolling restarts with consistent naming in conjunction with -distributor.extend-writes=false."
                  | optional,
                ..
              }
              | doc "Configures how the lifecycle of the pattern ingester will operate and where it will register for discovery."
              | optional,
            ..
          }
          | doc ""
          | optional,
        querier
          | refs."definitions.querier"
          | doc "Configures the querier. Only appropriate when running all modules or just the querier."
          | optional,
        query_range
          | refs."definitions.query_range"
          | doc "The query_range block configures the query splitting and caching in the Loki query-frontend."
          | optional,
        query_scheduler
          | refs."definitions.query_scheduler"
          | doc "The query_scheduler block configures the Loki query scheduler. When configured it separates the tenant query queues from the query-frontend."
          | optional,
        ruler
          | refs."definitions.ruler"
          | doc "The ruler block configures the Loki ruler."
          | optional,
        runtime_config
          | refs."definitions.runtime_config"
          | doc "Configuration for 'runtime config' module, responsible for reloading runtime configuration file."
          | optional,
        schema_config
          | refs."definitions.schema_config"
          | doc "Configures the chunk index schema and where it is stored."
          | optional,
        server
          | refs."definitions.server"
          | doc "Configures the server of the launched module(s)."
          | optional,
        shutdown_delay
          | String
          | doc "How long to wait between SIGTERM and shutdown. After receiving SIGTERM, Loki will report 503 Service Unavailable status via /ready endpoint."
          | optional,
        storage_config
          | refs."definitions.storage_config"
          | doc "The storage_config block configures one of many possible stores for both the index and chunks. Which configuration to be picked should be defined in schema_config block."
          | optional,
        table_manager
          | refs."definitions.table_manager"
          | doc "The table_manager block configures the table manager for retention."
          | optional,
        target
          | String
          | doc "A comma-separated list of components to run. The default value 'all' runs Loki in single binary mode. The value 'read' is an alias to run only read-path related components such as the querier and query-frontend, but all in the same process. The value 'write' is an alias to run only write-path related components such as the distributor and compactor, but all in the same process. Supported values: all, compactor, distributor, ingester, querier, query-scheduler, ingester-querier, query-frontend, index-gateway, ruler, table-manager, read, write. A full list of available targets can be printed when running Loki with the '-list-targets' command line flag."
          | optional,
        tracing
          | refs."definitions.tracing"
          | doc "Configuration for tracing."
          | optional,
      }