# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      access
        | std.enum.TagOrString
        | [| 'public, 'restricted |]
        | doc "Determines whether Changesets should publish packages to the registry publicly or to a restricted scope."
        | optional,
      baseBranch
        | String
        | doc "Determines the branch that Changesets uses when finding what packages have changed."
        | optional,
      bumpVersionsWithWorkspaceProtocolOnly
        | Bool
        | doc "Determines whether Changesets should only bump dependency ranges that use workspace protocol of packages that are part of the workspace."
        | optional,
      changedFilePatterns
        | Array String
        | doc "Glob patterns for changed files that should determining the package as changed."
        | optional,
      changelog
        | std.contract.any_of
          [
            std.contract.Sequence
              [
                js2n.array.MaxItems 2,
                js2n.array.MinItems 1,
                js2n.array.Items
                  [
                    String,
                    std.contract.any_of
                      [
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        { _ | Dyn },
                        Array Dyn
                      ]
                  ] js2n.Always
              ],
            js2n.Enum [ false ],
            String
          ]
        | doc "The configuration for changelog generators."
        | optional,
      commit
        | std.contract.any_of
          [
            std.contract.Sequence
              [
                js2n.array.MaxItems 2,
                js2n.array.MinItems 1,
                js2n.array.Items
                  [
                    String,
                    std.contract.any_of
                      [
                        js2n.Null,
                        Bool,
                        Number,
                        String,
                        { _ | Dyn },
                        Array Dyn
                      ]
                  ] js2n.Always
              ],
            Bool,
            String
          ]
        | doc "Determines whether Changesets should commit the results of the add and version command."
        | optional,
      fixed
        | Array (Array String)
        | doc "Packages that should always be released together with the same version."
        | optional,
      ignore
        | Array String
        | doc "Packages that should not be released."
        | optional,
      linked
        | Array (Array String)
        | doc "Packages that should be linked together so when they are being released, they will be released at the same version."
        | optional,
      prettier
        | Bool
        | doc "When false, Changesets won't format with Prettier"
        | optional,
      privatePackages
        | std.contract.any_of
          [
            { tag | Bool | optional, version | Bool | optional, .. },
            std.contract.Equal false
          ]
        | optional,
      snapshot
        | {
          prereleaseTemplate
            | js2n.string.MinLength 1
            | doc "A template for the prerelease (suffix) part of the generated snapshot version. The template can use the following variable patterns: {commit}, {tag}, {datetime}, {timestamp}."
            | optional,
          useCalculatedVersion
            | Bool
            | doc "It can be used to make generated snapshot versions use the calculated version (based on the changeset files) as a base version, instead of 0.0.0"
            | optional,
          ..
        }
        | optional,
      updateInternalDependencies
        | std.enum.TagOrString
        | [| 'minor, 'patch |]
        | doc "The minimum bump type to trigger automatic update of internal dependencies that are part of the same release."
        | optional,
      ..
    }