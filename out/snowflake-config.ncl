# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.Features" =
        {
            enable_separate_authentication_policy_id
              | Bool
              | doc "When this access is enabled, specified users can access Snowflake CLI but not the other Snowflake drivers."
              | optional,
          },
      "definitions.Logs" =
        {
            level
              | std.enum.TagOrString
              | [| 'error, 'warning, 'info, 'debug |]
              | doc "The level of logs to output"
              | optional,
            path
              | String
              | doc "specifies the absolute path to save the log files. The format of the path varies based on your operating system. If not specified, the command creates a logs directory in the default config.toml file location."
              | optional,
            save_logs | Bool | doc "Whether to save logs to a file" | optional,
          },
      "definitions.SnowflakeConnection" =
        {
            account
              | String
              | doc "The Snowflake account identifier"
              | optional,
            authenticator
              | std.enum.TagOrString
              | [|
                'username_password_mfa,
                'snowflake,
                'snowflake_jwt,
                'programmatic_access_token,
                'oauth,
                'no_auth,
                'id_token,
                'externalbrowser
              |]
              | doc "The name of the Snowflake authenticator to use"
              | optional,
            database
              | String
              | doc "The name of the Snowflake database to connect to"
              | optional,
            password
              | String
              | doc "The password for authentication with Snowflake"
              | optional,
            private_key_file
              | String
              | doc "The path to the private key file for the Snowflake JWT Authentication"
              | optional,
            private_key_file_pwd
              | String
              | doc "The password for the private key file for the Snowflake JWT Authentication"
              | optional,
            private_key_passphrase
              | String
              | doc "The passphrase for the private key file for the Snowflake Key Pair Authentication"
              | optional,
            private_key_path
              | String
              | doc "The path to the private key file for the Snowflake Key Pair Authentication"
              | optional,
            role
              | String
              | doc "The name of the Snowflake role to use"
              | optional,
            schema
              | String
              | doc "The name of the database schema to use"
              | optional,
            token_file_path
              | String
              | doc "The path to the token file for the Snowflake OAuth Authentication"
              | optional,
            user
              | String
              | doc "The username to authenticate with Snowflake"
              | optional,
            warehouse
              | String
              | doc "The name of the Snowflake warehouse to use for queries"
              | optional,
            ..
          },
    }
    in
  std.contract.Sequence
      [
        js2n.record.MinProperties 1,
        {
          cli
            | {
              features | refs."definitions.Features" | optional,
              logs | refs."definitions.Logs" | optional,
            }
            | optional,
          connections
            | js2n.record.MinProperties 1
            | { _ | refs."definitions.SnowflakeConnection" }
            | optional,
          default_connection_name
            | String
            | doc "The default connection to use"
            | optional,
        }
      ]