# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.dateYYYYMMDD" =
        js2n.string.Matches "^[0-9]{4}-[0-9]{2}-[0-9]{2}$",
      "definitions.product" =
        {
            channel-version
              | js2n.string.Matches "^[0-9]+\\.[0-9]+$"
              | doc "The version of the product, e.g '5.0' or '1.1'",
            eol-date
              | js2n.Nullable
                (std.contract.Sequence
                  [ refs."definitions.dateYYYYMMDD", String ])
              | doc "The end-of-life (EOL) date for this Product when it is considered to be out of support. The value may be `null` if the EOL date is undetermined, e.g. when a product is still a prerelease."
              | optional,
            latest-release
              | refs."definitions.releaseVersion"
              | String
              | doc "The version of the latest release",
            latest-release-date
              | refs."definitions.dateYYYYMMDD"
              | String
              | doc "The date of the latest release of this product.",
            latest-runtime
              | refs."definitions.releaseVersion"
              | String
              | doc "The version of the runtime included in the latest release",
            latest-sdk
              | refs."definitions.releaseVersion"
              | String
              | doc "The version of the SDK included in the latest release. This is usually the SDK with the highest feature band. A ProductRelease may include multiple SDKs across different feature bands, all of which carry the same runtime version.",
            product | String | doc "The name of the product.",
            release-type
              | refs."definitions.releaseType"
              | String
              | doc "The type of Product release indicating whether the release is Standard Term Support (sts) or Long Term Support (lts).",
            "releases.json"
              | String
              | doc "The URL pointing to the releases.json file that contains information about all the releases associated with this Product.",
            security
              | Bool
              | doc "`true` if the latest release of this product includes a security update, `false` otherwise.",
            support-phase
              | refs."definitions.supportPhase"
              | String
              | doc "The support phase of the Product.",
            "supported-os.json"
              | String
              | doc "The URL pointing to the supported-os.json file that contains information about the operating systems supported by this Product."
              | optional,
          },
      "definitions.releaseType" =
        std.contract.Sequence [ std.enum.TagOrString, [| 'lts, 'sts |] ],
      "definitions.releaseVersion" =
        js2n.string.Matches
            "^(0|[1-9]\\d*)\\.(0|[1-9]\\d*)\\.(0|[1-9]\\d*)(?:-((?:0|[1-9]\\d*|\\d*[a-zA-Z-][0-9a-zA-Z-]*)(?:\\.(?:0|[1-9]\\d*|\\d*[a-zA-Z-][0-9a-zA-Z-]*))*))?(?:\\+([0-9a-zA-Z-]+(?:\\.[0-9a-zA-Z-]+)*))?$",
      "definitions.supportPhase" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [| 'eol, 'maintenance, 'active, 'go-live, 'preview |]
            ],
    }
    in
  {
      releases-index
        | Array refs."definitions.product"
        | doc "A collection of all released products",
    }