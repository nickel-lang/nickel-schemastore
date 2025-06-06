# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.Actor" =
        std.contract.Sequence
            [
              std.contract.any_of
                [
                  std.contract.Sequence
                    [ refs."definitions.Build", { _ | Dyn } ],
                  std.contract.Sequence
                    [ refs."definitions.Build2", { _ | Dyn } ]
                ],
              { tags | { _ | String } | optional, .. }
            ],
      "definitions.Build" =
        {
            build_args
              | { _ | String }
              | doc "Build arguments to pass to the build."
              | optional,
            build_path
              | String
              | doc "Directory to build the Docker image from."
              | optional,
            build_target | String | doc "Build target to upload." | optional,
            dockerfile | String | doc "Dockerfile to build." | optional,
            image | String | doc "Existing image tag to upload." | optional,
            unstable
              | refs."definitions.Unstable"
              | { _ | Dyn }
              | doc "Unstable features."
              | optional,
          },
      "definitions.Build2" =
        {
            script | String,
            unstable | refs."definitions.Unstable2" | { _ | Dyn } | optional,
            ..
          },
      "definitions.BuildMethod" =
        js2n.OneOf
            [
              std.contract.Sequence [ std.enum.TagOrString, [| 'buildx |] ],
              std.contract.Sequence [ std.enum.TagOrString, [| 'native |] ]
            ],
      "definitions.BundleKind" =
        js2n.OneOf
            [
              std.contract.Sequence
                [ std.enum.TagOrString, [| 'docker_image |] ],
              std.contract.Sequence [ std.enum.TagOrString, [| 'oci_bundle |] ]
            ],
      "definitions.Compression" =
        js2n.OneOf
            [
              std.contract.Sequence [ std.enum.TagOrString, [| 'none |] ],
              std.contract.Sequence [ std.enum.TagOrString, [| 'lz4 |] ]
            ],
      "definitions.Function" =
        std.contract.Sequence
            [
              std.contract.any_of
                [
                  std.contract.Sequence
                    [ refs."definitions.Build", { _ | Dyn } ],
                  std.contract.Sequence
                    [ refs."definitions.Build2", { _ | Dyn } ]
                ],
              {
                networking
                  | refs."definitions.FunctionNetworking"
                  | { _ | Dyn }
                  | optional,
                path | String | optional,
                resources
                  | refs."definitions.Resources"
                  | { _ | Dyn }
                  | optional,
                route_subpaths | Bool | optional,
                strip_prefix | Bool | optional,
                tags | { _ | String } | optional,
                ..
              }
            ],
      "definitions.FunctionNetworking" =
        {
            internal_port
              | std.number.Integer
              | js2n.number.Minimum 0
              | optional,
            ..
          },
      "definitions.Resources" =
        {
            cpu | std.number.Integer | js2n.number.Minimum 0,
            memory | std.number.Integer | js2n.number.Minimum 0,
            ..
          },
      "definitions.Unstable" =
        {
            allow_root | Bool | optional,
            build_method | refs."definitions.BuildMethod" | optional,
            bundle | refs."definitions.BundleKind" | optional,
            compression | refs."definitions.Compression" | optional,
          },
      "definitions.Unstable2" =
        {
            analyze_result | Bool | optional,
            compression | refs."definitions.Compression" | optional,
            dump_build | Bool | optional,
            esbuild_log_level | String | optional,
            minify | Bool | optional,
            no_bundler | Bool | optional,
          },
    }
    in
  {
      actors
        | {
          _ | std.contract.Sequence [ refs."definitions.Actor", { _ | Dyn } ]
        }
        | optional,
      containers
        | {
          _ | std.contract.Sequence [ refs."definitions.Actor", { _ | Dyn } ]
        }
        | optional,
      functions
        | {
          _ | std.contract.Sequence [ refs."definitions.Function", { _ | Dyn } ]
        }
        | optional,
    }