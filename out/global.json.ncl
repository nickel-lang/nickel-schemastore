# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {}
    in
  {
      sdk
        | {
          allowPrerelease | Bool | optional,
          rollForward
            | std.enum.TagOrString
            | [|
              'disable,
              'latestMajor,
              'latestMinor,
              'latestFeature,
              'latestPatch,
              'major,
              'minor,
              'feature,
              'patch
            |]
            | doc "The roll-forward policy when selecting an SDK version, either as a fallback to accommodate missing a specific SDK version or as a directive to use a later version."
            | optional,
          version
            | js2n.string.Matches
              "^(?<major>0|[1-9]\\d*)\\.(?<minor>0|[1-9]\\d*)\\.(?<patch>0|[1-9]\\d*)(?:-(?<prerelease>(?:0|[1-9]\\d*|\\d*[a-zA-Z-][0-9a-zA-Z-]*)(?:\\.(?:0|[1-9]\\d*|\\d*[a-zA-Z-][0-9a-zA-Z-]*))*))?(?:\\+(?<buildmetadata>[0-9a-zA-Z-]+(?:\\.[0-9a-zA-Z-]+)*))?$"
            | doc "The version of the SDK to use."
            | optional,
          ..
        }
        | doc "Specify information about the SDK."
        | optional,
      ..
    }