# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.clientPyGeneratorConfig" =
        {
            generator
              | std.contract.Equal "client_py"
              | doc "See: <https://metatype.dev/docs/reference/metagen#client_py>."
              | optional,
            ..
          },
      "definitions.clientRsGeneratorConfig" =
        std.contract.Sequence
            [
              refs."definitions.rustGeneratorConfigBase",
              {
                generator
                  | std.contract.Equal "client_rs"
                  | doc "See: <https://metatype.dev/docs/reference/metagen#client_rs>."
                  | optional,
                ..
              }
            ],
      "definitions.clientTsGeneratorConfig" =
        {
            generator
              | std.contract.Equal "client_ts"
              | doc "See: <https://metatype.dev/docs/reference/metagen#client_ts>."
              | optional,
            ..
          },
      "definitions.fdkPyGeneratorConfig" =
        {
            exclude_client
              | Bool
              | doc "Whether to generate metagen client code."
              | optional,
            generator
              | std.contract.Equal "fdk_py"
              | doc "See: <https://metatype.dev/docs/reference/metagen#fdk_py>."
              | optional,
            ..
          },
      "definitions.fdkRsGeneratorConfig" =
        std.contract.Sequence
            [
              refs."definitions.rustGeneratorConfigBase",
              {
                exclude_client
                  | Bool
                  | doc "Whether to generate metagen client code."
                  | optional,
                generator
                  | std.contract.Equal "fdk_rs"
                  | doc "See: <https://metatype.dev/docs/reference/metagen#fdk_rs>."
                  | optional,
                stubbed_runtimes | Array String | optional,
                ..
              }
            ],
      "definitions.fdkSubGeneratorConfig" =
        { generator | std.contract.Equal "fdk_substantial" | optional, .. },
      "definitions.fdkTsGeneratorConfig" =
        {
            exclude_client
              | Bool
              | doc "Whether to generate metagen client code."
              | optional,
            generator
              | std.contract.Equal "fdk_ts"
              | doc "See: <https://metatype.dev/docs/reference/metagen#fdk_ts>."
              | optional,
            stubbed_runtimes | Array String | optional,
            ..
          },
      "definitions.generatorConfig" =
        std.contract.Sequence
            [
              refs."definitions.generatorConfigBase",
              js2n.OneOf
                [
                  std.contract.Sequence
                    [ refs."definitions.clientTsGeneratorConfig", { _ | Dyn } ],
                  std.contract.Sequence
                    [ refs."definitions.clientPyGeneratorConfig", { _ | Dyn } ],
                  std.contract.Sequence
                    [ refs."definitions.clientRsGeneratorConfig", { _ | Dyn } ],
                  std.contract.Sequence
                    [ refs."definitions.fdkTsGeneratorConfig", { _ | Dyn } ],
                  std.contract.Sequence
                    [ refs."definitions.fdkPyGeneratorConfig", { _ | Dyn } ],
                  std.contract.Sequence
                    [ refs."definitions.fdkRsGeneratorConfig", { _ | Dyn } ],
                  std.contract.Sequence
                    [ refs."definitions.fdkSubGeneratorConfig", { _ | Dyn } ]
                ],
              { _ | Dyn }
            ],
      "definitions.generatorConfigBase" =
        {
            path
              | String
              | doc "The directory for the generated files."
              | optional,
            template_dir
              | String
              | doc "The directory containing template files."
              | optional,
            typegraph_name
              | String
              | doc "The name of the typegraph."
              | optional,
            typegraph_path
              | String
              | doc "The target typegraph file path."
              | optional,
            ..
          },
      "definitions.path" = std.contract.any_of [ String, Array String ],
      "definitions.rustGeneratorConfigBase" =
        {
            crate_name | String | doc "Generated crate name." | optional,
            skip_cargo_toml
              | Bool
              | doc "Whether to skip generating the `Cargo.toml` file."
              | optional,
            skip_lib_rs
              | Bool
              | doc "Whether to skip generating the `lib.rs` file."
              | optional,
            ..
          },
      "definitions.typegraphLoaderConfig" =
        {
            exclude
              | refs."definitions.path"
              | doc "A pattern or array of patterns to exclude."
              | optional,
            include
              | refs."definitions.path"
              | doc "A pattern or array of patterns to include."
              | optional,
          },
    }
    in
  {
      metagen
        | {
          targets
            | {
              _ | Array (
                std.contract.Sequence
                  [ refs."definitions.generatorConfig", { _ | Dyn } ]
              )
            }
            | doc "Code generation target configurations."
            | optional,
        }
        | doc "Metagen configurations. See: <https://metatype.dev/docs/reference/metagen>."
        | optional,
      typegates
        | {
          _ | {
            env
              | { _ | String }
              | doc "Environment variables for the typegate."
              | optional,
            password
              | String
              | doc "Administrator password for the typegate."
              | optional,
            prefix | String | doc "A prefix for typegraphs." | optional,
            secrets
              | { _ | { _ | String } }
              | doc "Secrets used for configuring runtimes within the typegraphs. See: <https://metatype.dev/docs/reference/meta-cli/configuration-file#named-secrets>."
              | optional,
            url
              | String
              | doc "The base URL of the typegate server, example: <http://localhost:7890>."
              | optional,
            username
              | String
              | doc "Administrator username for the typegate."
              | optional,
          }
        }
        | doc "Configuration for typegate nodes. See: <https://metatype.dev/docs/reference/meta-cli/configuration-file#typegate-configuration>."
        | optional,
      typegraphs
        | {
          javascript
            | refs."definitions.typegraphLoaderConfig"
            | doc "Configuration for JavaScript typegraphs."
            | optional,
          materializers
            | {
              prisma
                | {
                  migrations_path
                    | String
                    | doc "The directory for storing Prisma migration files."
                    | optional,
                }
                | doc "Prisma materializer configuration."
                | optional,
            }
            | doc "Materializer configurations for typegraphs."
            | optional,
          python
            | refs."definitions.typegraphLoaderConfig"
            | doc "Configuration for Python typegraphs."
            | optional,
          typescript
            | refs."definitions.typegraphLoaderConfig"
            | doc "Configuration for TypeScript typegraphs."
            | optional,
        }
        | doc "Typegraph deployment configurations. See: <https://metatype.dev/docs/reference/typegraph>."
        | optional,
    }