# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.CGManifest" =
        {
            registrations
              | Array (
                std.contract.Sequence
                  [ refs."definitions.Registration", { _ | Dyn } ]
              ),
            version | std.number.Integer,
            ..
          },
      "definitions.Cargo" =
        {
            cargo | { name | String, version | String, .. },
            type | std.enum.TagOrString | [| 'cargo |],
            ..
          },
      "definitions.Component" =
        std.contract.Sequence
            [
              js2n.OneOf
                [
                  std.contract.Sequence
                    [ refs."definitions.Cargo", { _ | Dyn } ],
                  std.contract.Sequence [ refs."definitions.Git", { _ | Dyn } ],
                  std.contract.Sequence [ refs."definitions.Go", { _ | Dyn } ],
                  std.contract.Sequence
                    [ refs."definitions.Linux", { _ | Dyn } ],
                  std.contract.Sequence
                    [ refs."definitions.Maven", { _ | Dyn } ],
                  std.contract.Sequence [ refs."definitions.Npm", { _ | Dyn } ],
                  std.contract.Sequence
                    [ refs."definitions.NuGet", { _ | Dyn } ],
                  std.contract.Sequence
                    [ refs."definitions.Other", { _ | Dyn } ],
                  std.contract.Sequence [ refs."definitions.Pip", { _ | Dyn } ],
                  std.contract.Sequence [ refs."definitions.Pod", { _ | Dyn } ],
                  std.contract.Sequence
                    [ refs."definitions.RubyGems", { _ | Dyn } ],
                  std.contract.Sequence
                    [ refs."definitions.VCPKG", { _ | Dyn } ]
                ],
              { _ | Dyn }
            ],
      "definitions.Git" =
        {
            git | { commitHash | String, repositoryUrl | String, .. },
            type | std.enum.TagOrString | [| 'git |],
            ..
          },
      "definitions.Go" =
        {
            go | { name | String, version | String, .. },
            type | std.enum.TagOrString | [| 'go |],
            ..
          },
      "definitions.Linux" =
        {
            linux
              | {
                distribution | String,
                key-URL | String | optional,
                name | String,
                pool-URL | String | optional,
                release | String,
                version | String,
                ..
              },
            type | std.enum.TagOrString | [| 'linux |],
            ..
          },
      "definitions.Maven" =
        {
            maven
              | { artifactId | String, groupId | String, version | String, .. },
            type | std.enum.TagOrString | [| 'maven |],
            ..
          },
      "definitions.Npm" =
        {
            npm | { name | String, version | String, .. },
            type | std.enum.TagOrString | [| 'npm |],
            ..
          },
      "definitions.NuGet" =
        {
            nuget | { name | String, version | String, .. },
            type | std.enum.TagOrString | [| 'nuget |],
            ..
          },
      "definitions.Other" =
        {
            other
              | {
                downloadUrl | String,
                hash | String,
                name | String,
                version | String,
                ..
              },
            type | std.enum.TagOrString | [| 'other |],
            ..
          },
      "definitions.Pip" =
        {
            pip | { name | String, version | String, .. },
            type | std.enum.TagOrString | [| 'pip |],
            ..
          },
      "definitions.Pod" =
        {
            pod | { name | String, version | String, .. },
            type | std.enum.TagOrString | [| 'pod |],
            ..
          },
      "definitions.Registration" =
        {
            component | refs."definitions.Component" | { _ | Dyn },
            dependencyRoots
              | Array (
                std.contract.Sequence
                  [ refs."definitions.Component", { _ | Dyn } ]
              )
              | optional,
            developmentDependency | Bool | optional,
            ..
          },
      "definitions.RubyGems" =
        {
            rubygems | { name | String, version | String, .. },
            type | std.enum.TagOrString | [| 'rubygems |],
            ..
          },
      "definitions.VCPKG" =
        {
            type | std.enum.TagOrString | [| 'vcpkg |],
            vcpkg
              | {
                description | String | optional,
                downloadLocation | String | optional,
                name | String,
                portVersion | std.number.Integer | optional,
                spdxId | String,
                triplet | String | optional,
                version | String | optional,
                ..
              },
            ..
          },
    }
    in
  refs."definitions.CGManifest"