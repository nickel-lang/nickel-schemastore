# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
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
        js2n.record.Record
          {
            additional = 'Some refs."definitions.SnowflakeConnection",
            patterns = {},
            properties =
              { "default" = refs."definitions.SnowflakeConnection", },
            required = {},
          }
      ]