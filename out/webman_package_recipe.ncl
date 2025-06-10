# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  std.contract.Sequence
      [
        std.contract.any_of
          [
            std.contract.Sequence
              [
                js2n.record.Record
                  {
                    additional = 'Some Dyn,
                    patterns = {},
                    properties =
                      { latest_strategy = js2n.Const "github-release", },
                    required = {},
                  },
                js2n.record.Required [ "git_repo", "git_user" ]
              ],
            std.contract.Sequence
              [
                js2n.record.Record
                  {
                    additional = 'Some Dyn,
                    patterns = {},
                    properties =
                      { latest_strategy = js2n.Const "arch-linux-community", },
                    required = {},
                  },
                js2n.record.Required [ "arch_linux_pkg_name" ]
              ],
            std.contract.Sequence
              [
                js2n.record.Record
                  {
                    additional = 'Some Dyn,
                    patterns = {},
                    properties =
                      { latest_strategy = js2n.Const "gitea-release", },
                    required = {},
                  },
                js2n.record.Required [ "git_repo", "git_user", "gitea_url" ]
              ]
          ],
        {
          about | String | doc "Package description",
          allow_prerelease | Bool | doc "Allow pre-releases" | optional,
          arch_linux_pkg_name
            | String
            | doc "Arch Linux package name"
            | optional,
          arch_map
            | {
              "386" | String | optional,
              amd64 | String | optional,
              arm | String | optional,
              arm64 | String | optional,
              mips | String | optional,
              mips64 | String | optional,
              mips64le | String | optional,
              mipsle | String | optional,
              ppc64 | String | optional,
              ppc64le | String | optional,
              riscv64 | String | optional,
              s390x | String | optional,
              wasm | String | optional,
            }
            | doc "Architecture mappings",
          base_download_url | String | doc "Base URL for downloading",
          filename_format | String | doc "Filename format",
          force_latest | Bool | doc "Force latest release" | optional,
          git_repo | String | doc "Git repository" | optional,
          git_user | String | doc "Git username" | optional,
          gitea_url | String | doc "Gitea URL" | optional,
          ignore
            | Array
              {
                arch
                  | std.contract.any_of
                    [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ],
                os
                  | std.contract.any_of
                    [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ],
              }
            | doc "Ignore mappings"
            | optional,
          info_url
            | String
            | doc "URL for information/documentation"
            | optional,
          install_note
            | String
            | doc "Installation notes for this package"
            | optional,
          latest_strategy
            | std.enum.TagOrString
            | [| 'gitea-release, 'arch-linux-community, 'github-release |]
            | doc "Strategy for resolving latest release",
          os_map
            | {
              linux
                | std.contract.any_of
                  [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
                | optional,
              macos
                | std.contract.any_of
                  [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
                | optional,
              win
                | std.contract.any_of
                  [ js2n.Null, Bool, { _ | Dyn }, Array Dyn, Number, String ]
                | optional,
            }
            | doc "OS mappings",
          releases_url | String | doc "URL for releases" | optional,
          remove_note
            | String
            | doc "Removal notes for this package"
            | optional,
          source_url | String | doc "Source URL" | optional,
          tagline | String | doc "Package tagline",
          version_format | String | doc "Version format" | optional,
        }
      ]