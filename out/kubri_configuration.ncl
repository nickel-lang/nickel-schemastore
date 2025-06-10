# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      apk
        | {
          disabled | Bool | optional,
          folder | String | optional,
          key-name | String | optional,
        }
        | optional,
      appinstaller
        | {
          automatic-background-task | Bool | optional,
          disabled | Bool | optional,
          folder | String | optional,
          force-update-from-any-version | Bool | optional,
          on-launch
            | {
              hours-between-update-checks
                | std.number.Integer
                | js2n.number.Maximum 255
                | js2n.number.Minimum 0
                | optional,
              show-prompt | Bool | optional,
              update-blocks-activation | Bool | optional,
            }
            | optional,
        }
        | optional,
      apt
        | {
          compress
            | Array (
              std.contract.Sequence
                [
                  std.enum.TagOrString,
                  [| 'zstd, 'lz4, 'lzma, 'xz, 'bzip2, 'gzip, 'none |]
                ]
            )
            | optional,
          disabled | Bool | optional,
          folder | String | optional,
        }
        | optional,
      arch
        | {
          disabled | Bool | optional,
          folder | String | optional,
          repo-name | String,
        }
        | optional,
      description | String | optional,
      prerelease | Bool | optional,
      source
        | js2n.OneOf
          [
            js2n.record.Record
              {
                additional = 'None,
                patterns = {},
                properties =
                  {
                      bucket = String,
                      folder = String,
                      type = js2n.Const "azureblob",
                      url = String,
                    },
                required = { bucket = true, },
              },
            js2n.record.Record
              {
                additional = 'None,
                patterns = {},
                properties =
                  {
                      bucket = String,
                      folder = String,
                      type = js2n.Const "gcs",
                      url = String,
                    },
                required = { bucket = true, },
              },
            js2n.record.Record
              {
                additional = 'None,
                patterns = {},
                properties =
                  {
                      bucket = String,
                      endpoint = String,
                      folder = String,
                      region = String,
                      type = js2n.Const "s3",
                      url = String,
                    },
                required = { bucket = true, },
              },
            js2n.record.Record
              {
                additional = 'None,
                patterns = {},
                properties =
                  { path = String, type = js2n.Const "file", url = String, },
                required = { path = true, },
              },
            js2n.record.Record
              {
                additional = 'None,
                patterns = {},
                properties =
                  {
                      owner = String,
                      repo = String,
                      type = js2n.Const "github",
                    },
                required = { owner = true, repo = true, },
              },
            js2n.record.Record
              {
                additional = 'None,
                patterns = {},
                properties =
                  {
                      owner = String,
                      repo = String,
                      type = js2n.Const "gitlab",
                      url = String,
                    },
                required = { owner = true, repo = true, },
              },
            js2n.record.Record
              {
                additional = 'None,
                patterns = {},
                properties =
                  {
                      path = String,
                      type = js2n.Const "local",
                      version = String,
                    },
                required = { path = true, version = true, },
              }
          ],
      sparkle
        | {
          description | String | optional,
          detect-os | { _ | String } | optional,
          disabled | Bool | optional,
          filename | String | optional,
          folder | String | optional,
          params
            | Array
              {
                critical-update | Bool | optional,
                critical-update-below-version | String | optional,
                ignore-skipped-upgrades-below-version | String | optional,
                installer-arguments | String | optional,
                minimum-autoupdate-version | String | optional,
                minimum-system-version | String | optional,
                os
                  | std.enum.TagOrString
                  | [| 'windows-x64, 'windows-x86, 'windows, 'macos |]
                  | optional,
                version | String | optional,
              }
            | optional,
          title | String | optional,
        }
        | optional,
      target
        | js2n.OneOf
          [
            js2n.record.Record
              {
                additional = 'None,
                patterns = {},
                properties =
                  {
                      bucket = String,
                      folder = String,
                      type = js2n.Const "azureblob",
                      url = String,
                    },
                required = { bucket = true, },
              },
            js2n.record.Record
              {
                additional = 'None,
                patterns = {},
                properties =
                  {
                      bucket = String,
                      folder = String,
                      type = js2n.Const "gcs",
                      url = String,
                    },
                required = { bucket = true, },
              },
            js2n.record.Record
              {
                additional = 'None,
                patterns = {},
                properties =
                  {
                      bucket = String,
                      endpoint = String,
                      folder = String,
                      region = String,
                      type = js2n.Const "s3",
                      url = String,
                    },
                required = { bucket = true, },
              },
            js2n.record.Record
              {
                additional = 'None,
                patterns = {},
                properties =
                  { path = String, type = js2n.Const "file", url = String, },
                required = { path = true, },
              },
            js2n.record.Record
              {
                additional = 'None,
                patterns = {},
                properties =
                  {
                      branch = String,
                      folder = String,
                      owner = String,
                      repo = String,
                      type = js2n.Const "github",
                    },
                required = { owner = true, repo = true, },
              }
          ],
      title | String | optional,
      upload-packages | Bool | optional,
      version | String | optional,
      yum
        | { disabled | Bool | optional, folder | String | optional, }
        | optional,
    }